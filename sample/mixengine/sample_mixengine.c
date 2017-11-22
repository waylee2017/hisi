/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : sample_mixengine.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/03/15
  Description   :
  History       :
  1.Date        : 2008/03/15
    Author      : Hi3560MPP
    Modification: Created file
******************************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <pthread.h>
#include <errno.h>

#include "hi_type.h"
#include "hi_debug.h"

//#include "hi_unf_sio.h"
#include "hi_unf_sound.h"
#include "hi_adp_audio.h"
#include "hi_audio_codec.h"

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_demux.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "hi_adp_mpi.h"

//#include "HA.AUDIO.TRUEHDPASSTHROUGH.decode.h"
#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

typedef struct himyMixer_State_S
{
    HI_U32              portIdx;
    HI_UNF_MIXER_ATTR_S stMixerAttr;
    pthread_t           MixerThd;
    HI_BOOL             StopThread;
    HI_HANDLE           hMixer;
    FILE               *pAudMixFile;
    HI_U32              SampleRate;
    HI_U32              Channels;
} myMixer_State_S;

#define HI_SND_MIXER_NUMBER 8
static myMixer_State_S stMixer[HI_SND_MIXER_NUMBER];

/*****************************************SOUND common interface************************************/
static HI_S32 MIXENGINE_Snd_Init(HI_VOID)
{
    HI_S32 Ret;
    HI_UNF_SND_INTERFACE_S SndIntf;
    HI_UNF_SND_ATTR_S stAttr;

    Ret = HI_UNF_SND_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_GetOpenAttr(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_GetOpenAttr failed.\n");
        return Ret;
    }

    stAttr.u32SlaveOutputBufSize = 1024 * 16; /* in order to increase the reaction of stop/start, the buf cannot too big*/
    stAttr.bMixerEngineSupport = HI_TRUE;     /* MixerEngine Support */
    Ret = HI_UNF_SND_SetOpenAttr(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_GetOpenAttr failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_Open(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_Open failed.\n");
        return Ret;
    }

    SndIntf.enInterface = HI_UNF_SND_INTERFACE_I2S;
    SndIntf.bEnable = HI_TRUE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_SetInterface failed.\n");
        HI_UNF_SND_Close(HI_UNF_SND_0);
        HI_UNF_SND_DeInit();
        return Ret;
    }
    SndIntf.enInterface = HI_UNF_SND_INTERFACE_SPDIF;
    SndIntf.bEnable = HI_TRUE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_SetInterface failed.\n");
        HI_UNF_SND_Close(HI_UNF_SND_0);
        HI_UNF_SND_DeInit();
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 MIXENGINE_Snd_DeInit(HI_VOID)
{
    HI_S32 Ret;
    HI_UNF_SND_INTERFACE_S SndIntf;
    SndIntf.enInterface = HI_UNF_SND_INTERFACE_I2S;
    SndIntf.bEnable = HI_FALSE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_SND_SetInterface failed.\n");
        return Ret;
    }
    SndIntf.enInterface = HI_UNF_SND_INTERFACE_SPDIF;
    SndIntf.bEnable = HI_FALSE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_SND_SetInterface failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_Close(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_DeInit();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 MixerThread(HI_VOID *args)
{
    HI_S16 PmcBuf[4096];
    HI_S32 nRet, Readlen;
    HI_UNF_AO_FRAMEINFO_S stAOFrame;
    HI_BOOL Interleaved = HI_TRUE;
    HI_S32 BitPerSample = 16;
    HI_S32 PcmSamplesPerFrame = 1024;
    myMixer_State_S *pstMixer;

    pstMixer = (myMixer_State_S*)args;

    {
      //  HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
        //stTrackAttr.u32OutputBufSize = 16*1024;
        nRet = HI_UNF_SND_Mixer_Open(HI_UNF_SND_0, &pstMixer->hMixer, &pstMixer->stMixerAttr);
        if (HI_SUCCESS != nRet)
        {
            sample_printf("HI_MPI_HIAO_Mixer_Open err:0x%x\n", nRet);
            return nRet;
        }
    }
  //  Frame = 0;
    stAOFrame.s32BitPerSample = BitPerSample;
    stAOFrame.u32Channels   = pstMixer->Channels;
    stAOFrame.bInterleaved  = Interleaved;
    stAOFrame.u32SampleRate = (HI_U32)(pstMixer->SampleRate);
    stAOFrame.u32PtsMs = 0xffffffff;
    stAOFrame.ps32BitsBuffer = HI_NULL;
    stAOFrame.u32BitsBytesPerFrame = 0;
    stAOFrame.u32FrameIndex = 0;
    stAOFrame.u32PcmSamplesPerFrame = PcmSamplesPerFrame;
    stAOFrame.ps32PcmBuffer = (HI_S32*)(PmcBuf);

    while (HI_TRUE != pstMixer->StopThread)
    {
        HI_S32 Need, SendPending;
        Need = PcmSamplesPerFrame * pstMixer->Channels * sizeof(HI_S16);

        SendPending = 0;
        //while (1)
        while (HI_TRUE != pstMixer->StopThread)
        {
            if (!SendPending)
            {
                Readlen = fread(PmcBuf, sizeof(HI_U8), Need, pstMixer->pAudMixFile);
                if (Readlen != Need)
                {
                    sample_printf("mixer(%d)reach end of mix file\n", pstMixer->portIdx);
                    rewind(pstMixer->pAudMixFile);
                    continue;
                }
            }

            nRet = HI_UNF_SND_Mixer_SendData(pstMixer->hMixer, &stAOFrame);
            if (HI_SUCCESS == nRet)
            {
                break;
            }
            else if (HI_FAILURE == nRet)
            {
                sample_printf("HI_UNF_SND_Mixer_SendData err:0x%x\n", nRet);
                return nRet;
            }
            else
            {
                usleep(1000);
                SendPending = 1;

                //continue;
            }
        }

#if 0
        Frame++;
        if ((Frame % 1024 == 0))
        {
            sample_printf("frame =%d send Bytes=%d\n", Frame, Need);
        }
#endif

    }

    nRet = HI_UNF_SND_Mixer_Close(pstMixer->hMixer);
    if (HI_SUCCESS != nRet)
    {
        sample_printf("HI_MPI_HIAO_Mixer_Close err:0x%x\n", nRet);
        return nRet;
    }

    sample_printf("mixer(%d) exit\n", pstMixer->portIdx);

    return HI_SUCCESS;
}

HI_S32 main(int argc, char *argv[])
{
    HI_U32 portIdx;
    HI_CHAR InputCmd[32];
    HI_S32 MixNumber;
    HI_S32 Ret;

    if (argc < 5)
    {
        sample_printf("Usage:    ./sample_mixengine inputfile0 trackweight0 samplerate0 inchannels0 inputfile1 trackweight1 samplerate1 inchannels1\n");
        sample_printf("examples:\n");
        sample_printf("          ./sample_mixengine inputfile0 100 48000 2 inputfile1 100 44100 1\n");
        return HI_FAILURE;
    }

    HI_SYS_Init();
   // HI_SYS_PreAV(NULL);
    Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_720P_50);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call DispInit failed.\n");
        HI_SYS_DeInit();
        return HI_FAILURE;
    }
    MIXENGINE_Snd_Init();

    MixNumber  = argc - 1;
    MixNumber /= 4;
    for (portIdx = 0; portIdx < MixNumber; portIdx++)
    {
        stMixer[portIdx].pAudMixFile = fopen(argv[4 * portIdx + 0 + 1], "rb");
        stMixer[portIdx].stMixerAttr.u32MixerWeight = atoi(argv[4 * portIdx + 1 + 1]);
        stMixer[portIdx].SampleRate = atoi(argv[4 * portIdx + 2 + 1]);
        stMixer[portIdx].Channels = atoi(argv[4 * portIdx + 3 + 1]);
        if (!stMixer[portIdx].pAudMixFile)
        {
            sample_printf("open file %s error!\n", argv[portIdx + 1]);
            return -1;
        }

        stMixer[portIdx].portIdx = portIdx;
        stMixer[portIdx].StopThread = HI_FALSE;
        stMixer[portIdx].stMixerAttr.u32MixerBufSize = 1024 * 128;
        stMixer[portIdx].MixerThd = (pthread_t)NULL;
        sample_printf("\n create mixer(%d) weight(%d), sampleRate(%d) ch(%d)\n", portIdx,
               stMixer[portIdx].stMixerAttr.u32MixerWeight, stMixer[portIdx].SampleRate, stMixer[portIdx].Channels);

        pthread_create(&(stMixer[portIdx].MixerThd), (const pthread_attr_t *)HI_NULL, (HI_VOID *)MixerThread,
                       (HI_VOID *)(&stMixer[portIdx]));
    }

    while (1)
    {
        sample_printf("\n please input the q to quit!input s(stop)/p(pause)/r(start)/f(flush)0~7 to control mixer,such as s0/r0/p0/r0\n");
        fgets(InputCmd, 30, stdin);
        portIdx = (HI_U32)((InputCmd[1] - 0x30));
        if (portIdx >= HI_SND_MIXER_NUMBER)
        {
            portIdx = HI_SND_MIXER_NUMBER - 1;
        }

        if ('q' == InputCmd[0])
        {
            sample_printf("prepare to quit!\n");
            for (portIdx = 0; portIdx < MixNumber; portIdx++)
            {
                stMixer[portIdx].StopThread = 0;
            }

            break;
        }
        if ('s' == InputCmd[0])
        {
            HI_UNF_SND_Mixer_Stop(stMixer[portIdx].hMixer);
            sample_printf("stop mixer(%d)!\n", portIdx);
        }
        if ('p' == InputCmd[0])
        {
            HI_UNF_SND_Mixer_Pause(stMixer[portIdx].hMixer);
            sample_printf("pause mixer(%d)!\n", portIdx);
        }
        if ('f' == InputCmd[0])
        {
            HI_UNF_SND_Mixer_Flush(stMixer[portIdx].hMixer);
            sample_printf("flush mixer(%d)!\n", portIdx);
        }
        if ('r' == InputCmd[0])
        {
            HI_UNF_SND_Mixer_Start(stMixer[portIdx].hMixer);
            sample_printf("start mixer(%d)!\n", portIdx);
        }
        if ('g' == InputCmd[0])
        {
            HI_UNF_MIXER_STATUSINFO_S stStatus;
            HI_UNF_SND_Mixer_GetStatus(stMixer[portIdx].hMixer, &stStatus);
            sample_printf("MixerID(%d)!\n", stStatus.u32MixerID);
            sample_printf("u32Working(%d)!\n", stStatus.u32Working);
            sample_printf("u32BufferSize(%d)!\n", stStatus.u32BufferSize);
            sample_printf("u32BufferByteLeft(%d)!\n", stStatus.u32BufferByteLeft);
            sample_printf("bDataNotEnough(%d)!\n", stStatus.bDataNotEnough);
            sample_printf("u32BufDurationMs(%d)!\n", stStatus.u32BufDurationMs);
        }
        if ('a' == InputCmd[0])
        {
            static HI_U32 u32AvcStatus = 0;
            u32AvcStatus++;
            if (u32AvcStatus & 1)
            {
                sample_printf("Set SmartVolume On\n");
                Ret = HI_UNF_SND_SetSmartVolume(HI_UNF_SND_0, HI_TRUE);
            }
            else
            {
                sample_printf("Set SmartVolume Off\n");
                Ret = HI_UNF_SND_SetSmartVolume(HI_UNF_SND_0, HI_FALSE);
            }
            if (HI_SUCCESS != Ret)
                sample_printf("HI_UNF_SND_SetSmartVolume f %d\n", Ret);
        }
        if ('l' == InputCmd[0])
        {
            HI_UNF_SND_AVC_ATTR_S stAvcAttr;
            Ret = HI_UNF_SND_GetAvcAttr(HI_UNF_SND_0, &stAvcAttr);

            sample_printf("thresholdlevel:%d\n",stAvcAttr.s32ThresholdLevel);
            sample_printf("gain:%d\n",stAvcAttr.s32Gain);
            sample_printf("limiterlevel:%d\n",stAvcAttr.s32LimiterLevel);
            sample_printf("attack time:%d\n",stAvcAttr.u32AttackTime);
            sample_printf("release time:%d\n",stAvcAttr.u32ReleaseTime);

            stAvcAttr.s32Gain = 15;

            Ret = HI_UNF_SND_SetAvcAttr(HI_UNF_SND_0, &stAvcAttr);
            if (HI_SUCCESS == Ret)
            {
                sample_printf("HI_UNF_SND_SetAvcAttr1 success\n");
            }

            Ret = HI_UNF_SND_GetAvcAttr(HI_UNF_SND_0, &stAvcAttr);

            sample_printf("gain:%d\n",stAvcAttr.s32Gain);

        }
    }

    for (portIdx = 0; portIdx < MixNumber; portIdx++)
    {
        stMixer[portIdx].StopThread = HI_TRUE;
        pthread_join(stMixer[portIdx].MixerThd, NULL);
        fclose(stMixer[portIdx].pAudMixFile);
    }

    MIXENGINE_Snd_DeInit();
    HIADP_Disp_DeInit();
    HI_SYS_DeInit();

    return 0;
}
