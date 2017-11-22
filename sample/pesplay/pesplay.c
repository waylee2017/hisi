/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <string.h>
#include <pthread.h>
#include <fcntl.h>

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
//#include "HA.AUDIO.TRUEHDPASSTHROUGH.decode.h"
#include "HA.AUDIO.DTSHD.decode.h"

#include "hi_adp_audio.h"
#include "hi_adp_mpi.h"
#include "hi_adp_hdmi.h"
#include "hi_unf_pes.h"
#include "hi_unf_avplay.h"
#if defined(DOLBYPLUS_HACODEC_SUPPORT)
#include "HA.AUDIO.DOLBYPLUS.decode.h"
#endif

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

#define AVPLAY_AUDIO_BUFF_SIZE    (2 * 1024 * 1024)
#define AVPLAY_VIDEO_BUFF_SIZE    (9 * 1024 * 1024)

FILE              *g_pPEsFile = HI_NULL;
static pthread_t   g_EsThd;
static HI_BOOL     g_StopThread = HI_FALSE;

static HI_VOID PESTthread(HI_VOID *arg)
{
    HI_HANDLE         PESHandle;
    HI_U32            Readlen;
    HI_S32            Ret;
    HI_BOOL           bPESBufAvailable = HI_FALSE;
    HI_U32            RequireSize = 0;
    HI_U32            RewindFlag  = HI_FALSE;
    HI_UNF_STREAM_BUF_S stPESData;

    PESHandle = *((HI_HANDLE *)arg);
    sample_printf("args:0x%x, PESHandle:0x%x\n", (HI_U32)arg, (HI_U32)PESHandle);

    RequireSize = 20*1024;

    while (!g_StopThread)
    {
        Ret = HI_UNF_PES_GetBuffer(PESHandle, RequireSize, &stPESData);
        if (HI_SUCCESS == Ret)
        {
            bPESBufAvailable = HI_TRUE;

            if(RewindFlag == HI_TRUE)
            {
                //Just input a empty data to avoid rewind effect!
                Readlen = RequireSize;
                memset(stPESData.pu8Data, 0, RequireSize);
                RewindFlag = HI_FALSE;
            }
            else
            {
                Readlen = fread(stPESData.pu8Data, sizeof(HI_S8), RequireSize, g_pPEsFile);
                //printf("PsBuf:0x%x, pu8Data[0,1,2,3]:0x%02x%02x%02x%02x\n", stPESData.pu8Data, stPESData.pu8Data[0], stPESData.pu8Data[1], stPESData.pu8Data[2], stPESData.pu8Data[3]);
            }

            //Judge and inject PES Data
            if (Readlen > 0)
            {
                if(Readlen != RequireSize)
                {
                    sample_printf("infor: Maybe come to end to Read PES file 0x%x, 0x%x\n", Readlen, RequireSize);
                }
                Ret = HI_UNF_PES_PutBuffer(PESHandle, Readlen);
                if (Ret != HI_SUCCESS )
                {
                    sample_printf("call HI_UNF_PES_PutPESBuffer failed.\n");
                }
            }
            else if(Readlen <= 0)
            {
                sample_printf("read file error!\n");
                RewindFlag = HI_TRUE;
                rewind(g_pPEsFile);
                continue;
            }
        }
        else
        {
            bPESBufAvailable = HI_FALSE;
        }

        /* wait for buffer */
        if (HI_FALSE == bPESBufAvailable)
        {
            //printf("****Full*****\n");
            usleep(1000 * 10);
        }
    }
    return;
}

HI_S32 TsPlayer_EvnetHandler(HI_HANDLE handle, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 para)
{
    return HI_SUCCESS;
}

static HI_S32 Pes_Open(HI_U32 enVideoCodec, HI_U32 u32AdecTypeCodec, HI_HANDLE *ohAVHandle, HI_HANDLE *ohWin)
{
    HI_S32                      ret = HI_SUCCESS;
    HI_UNF_AVPLAY_ATTR_S        stAttr;
    HI_UNF_SYNC_ATTR_S          SyncAttr;
    
    HI_HANDLE                   AVPlayHandle;
    HI_HANDLE                   hWin;
    
    // 2. Create AVPlayer
    ret = HI_UNF_AVPLAY_GetDefaultConfig(&stAttr, HI_UNF_AVPLAY_STREAM_TYPE_ES);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_GetDefaultConfig failed.\n");
        return HI_FAILURE;
    }
    //Get Param from Hiplayer
    stAttr.stStreamAttr.u32AudBufSize = AVPLAY_AUDIO_BUFF_SIZE;
    stAttr.stStreamAttr.u32VidBufSize = AVPLAY_VIDEO_BUFF_SIZE;

    ret  = HI_UNF_AVPLAY_Create(&stAttr, &AVPlayHandle);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        return HI_FAILURE;
    }

    // 3. Register Callback Func
    ret |= HI_UNF_AVPLAY_RegisterEvent(AVPlayHandle, HI_UNF_AVPLAY_EVENT_STOP, TsPlayer_EvnetHandler);
    ret |= HI_UNF_AVPLAY_RegisterEvent(AVPlayHandle, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, TsPlayer_EvnetHandler);
    ret |= HI_UNF_AVPLAY_RegisterEvent(AVPlayHandle, HI_UNF_AVPLAY_EVENT_NEW_AUD_FRAME, TsPlayer_EvnetHandler);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_RegisterEvent failed.\n");
        return HI_FAILURE;
    }
    
    // 4. Set Sync mode
    ret = HI_UNF_AVPLAY_GetAttr(AVPlayHandle, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_GetAttr failed.\n");
        return HI_FAILURE;
    }
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    //SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    ret = HI_UNF_AVPLAY_SetAttr(AVPlayHandle, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        return HI_FAILURE;
    }
    
    if(u32AdecTypeCodec != 0)
    {
        // 5. Start Audio Play
        ret = HI_UNF_AVPLAY_ChnOpen(AVPlayHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if(ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            return HI_FAILURE;
        }
        
        ret = HI_UNF_SND_Attach(HI_UNF_SND_0, AVPlayHandle, HI_UNF_SND_MIX_TYPE_MASTER, 100);
        if (ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            return HI_FAILURE;
        }
        
        ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, HI_UNF_TRACK_MODE_DOUBLE_MONO);
        if (ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_SND_SetTrackMode failed.\n");
            return HI_FAILURE;
        }

        ret = HIADP_AVPlay_SetAdecAttr(AVPlayHandle, u32AdecTypeCodec, HD_DEC_MODE_RAWPCM, 0);
        if (ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            return HI_FAILURE;
        }
        ret = HI_UNF_AVPLAY_Start(AVPlayHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
        if(ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            return HI_FAILURE;
        }
    }

    // 6. VO window create
    ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);

    // 8. Start Video Play
    ret = HI_UNF_AVPLAY_ChnOpen(AVPlayHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        return HI_FAILURE;
    }

    ret = HI_UNF_VO_AttachWindow(hWin, AVPlayHandle);
    if (ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        return HI_FAILURE;
    }

    ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        return HI_FAILURE;
    }

    ret = HIADP_AVPlay_SetVdecAttr(AVPlayHandle,enVideoCodec,HI_UNF_VCODEC_MODE_NORMAL);
    if (ret != HI_SUCCESS)
    {
        sample_printf("call HIADP_AVPlay_SetVdecAttr failed.\n");
        return HI_FAILURE;
    }

    ret = HI_UNF_AVPLAY_Start(AVPlayHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Start failed.\n");
        return HI_FAILURE;
    }

    *ohAVHandle = AVPlayHandle;
    *ohWin      = hWin;
    return HI_SUCCESS;
}

static HI_S32 Pes_Close(HI_HANDLE hAVHandle, HI_HANDLE hWin)
{
    HI_S32                    ret = HI_SUCCESS;
    HI_UNF_AVPLAY_STOP_OPT_S  Stop;

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    ret |= HI_UNF_AVPLAY_Stop(hAVHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD|HI_UNF_AVPLAY_MEDIA_CHAN_VID, &Stop);

    ret |= HI_UNF_SND_Detach(HI_UNF_SND_0, hAVHandle);        
    ret |= HI_UNF_AVPLAY_ChnClose(hAVHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    ret |= HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
    ret |= HI_UNF_VO_DetachWindow(hWin, hAVHandle);
    ret |= HI_UNF_AVPLAY_ChnClose(hAVHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    HI_UNF_VO_DestroyWindow(hWin);

    ret |= HI_UNF_AVPLAY_Destroy(hAVHandle);

    return HI_SUCCESS;
}

static HI_S32 Pes_Pause(HI_HANDLE hAVHandle)
{
    HI_S32                    ret = HI_SUCCESS;

    HI_INFO_PES("Info: Pes_Pause\n");

    ret = HI_UNF_AVPLAY_Pause(hAVHandle, NULL);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call Pes_Pause failed.\n");
        return HI_FAILURE;
    }

    return ret;
}

static HI_S32 Pes_Resume(HI_HANDLE hAVHandle)
{
    HI_S32                    ret = HI_SUCCESS;
    HI_UNF_VCODEC_ATTR_S  struVdecAttr;

    HI_INFO_PES("Info: Pes_Resume\n");

    ret |= HI_UNF_AVPLAY_GetAttr(hAVHandle, HI_UNF_AVPLAY_ATTR_ID_VDEC, &struVdecAttr);
    struVdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    ret |= HI_UNF_AVPLAY_SetAttr(hAVHandle, HI_UNF_AVPLAY_ATTR_ID_VDEC, &struVdecAttr);

    HI_UNF_AVPLAY_Resume(hAVHandle, NULL);
    if(ret != HI_SUCCESS)
    {
        sample_printf("call Pes_Resume failed.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 Pes_TPlay(HI_HANDLE hAVHandle)
{
    HI_S32                    ret = HI_SUCCESS;
    HI_UNF_VCODEC_ATTR_S  struVdecAttr;

    HI_INFO_PES("Info: Pes_TPlay\n");

    ret |= HI_UNF_AVPLAY_GetAttr(hAVHandle, HI_UNF_AVPLAY_ATTR_ID_VDEC, &struVdecAttr);
    struVdecAttr.enMode = HI_UNF_VCODEC_MODE_I;
    ret |= HI_UNF_AVPLAY_SetAttr(hAVHandle, HI_UNF_AVPLAY_ATTR_ID_VDEC, &struVdecAttr);

    return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                      Ret;
    HI_UNF_VCODEC_TYPE_E        VdecType = HI_UNF_VCODEC_TYPE_BUTT;
    HI_U32                      AdecType = 0x00;
    HI_CHAR                     InputCmd[32];
    HI_UNF_ENC_FMT_E            enFormat = HI_UNF_ENC_FMT_1080i_50;    
    HI_UNF_PES_OPEN_S           stOpenParam ={0};
    HI_HANDLE                   PEShandle = 0, hAVPlay = 0, hWin = 0;
    HI_UNF_DISP_BG_COLOR_S      BgColor;
    
    HI_U32                      u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_UNKNOW;
    HI_U32                      u32PES_AudioType= HI_UNF_PES_STREAM_TYPE_AUDIO_UNKNOW;

    if (argc < 4)
    {
        printf(" usage: sample_pesplay pesfile vtype atype [vo_format] \n");
        printf(" vtype: mpeg2/mpeg4/h263/sor/h264/null\n");
        printf(" atype: aac/mp3/pcm/ddp(ac3/eac3)/dts/null\n");
        printf(" vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");

        return 0;
    }
    //Get Video Type
    if (!strcasecmp("mpeg2", argv[2]))
    {
        VdecType = HI_UNF_VCODEC_TYPE_MPEG2;
        u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_MPEG2;
    }
    else if (!strcasecmp("mpeg4", argv[2]))
    {
        VdecType = HI_UNF_VCODEC_TYPE_MPEG4;
        u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_MPEG4;
    }
    else if (!strcasecmp("h264", argv[2]))
    {
        VdecType = HI_UNF_VCODEC_TYPE_H264;
        u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_H264;
    }
    else if (!strcasecmp("h263", argv[2]))
    {
        VdecType = HI_UNF_VCODEC_TYPE_H263;
        u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_H263;
    }
    else if (!strcasecmp("sor", argv[2]))
    {
        VdecType = HI_UNF_VCODEC_TYPE_SORENSON;
        u32PESVideoType = HI_UNF_PES_STREAM_TYPE_VIDEO_H263;
    }
    else
    {
        //VdecType = HI_UNF_VCODEC_TYPE_BUTT;
        VdecType = 0;
    }
    //Get Audio type
    if (!strcasecmp("aac", argv[3]))
    {
        AdecType = HA_AUDIO_ID_AAC;
        u32PES_AudioType = HI_UNF_PES_STREAM_TYPE_AUDIO_AAC;
    }
    else if (!strcasecmp("mp3", argv[3]))
    {
        AdecType = HA_AUDIO_ID_MP3;
        u32PES_AudioType = HI_UNF_PES_STREAM_TYPE_AUDIO_MP3;
    }
    else if (!strcasecmp("dts", argv[3]))
    {
        AdecType = HA_AUDIO_ID_DTSHD;
        u32PES_AudioType = HI_UNF_PES_STREAM_TYPE_AUDIO_DTS;
    }
    else if (!strcasecmp("pcm", argv[3]))
    {
        AdecType = HA_AUDIO_ID_PCM;
        u32PES_AudioType = HI_UNF_PES_STREAM_TYPE_AUDIO_PCM;
    }
#if defined (DOLBYPLUS_HACODEC_SUPPORT)
    else if (!strcasecmp("ddp", argv[3]))
    {
        AdecType = HA_AUDIO_ID_DOLBY_PLUS;
        u32PES_AudioType = HI_UNF_PES_STREAM_TYPE_AUDIO_DDPLUS;
    }
#endif
    else
    {
        AdecType = 0x00;
    }

    enFormat = (HI_UNF_ENC_FMT_E)HIADP_Disp_StrToFmt(argv[4]);

    g_pPEsFile = fopen(argv[1], "rb");
    if (!g_pPEsFile)
    {
        sample_printf("open file %s error!\n", argv[1]);
        return -1;
    }

    HI_SYS_Init();
    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(enFormat);
    if (Ret != HI_SUCCESS)
    {
        printf("call DispInit failed.\n");
        goto DISP_DEINIT;
    }

    if(VdecType != HI_UNF_VCODEC_TYPE_BUTT)
    {
        BgColor.u8Red   = 0;
        BgColor.u8Green = 200;
        BgColor.u8Blue  = 200;
        HI_UNF_DISP_SetBgColor(HI_UNF_DISP_HD0, &BgColor);
        
        Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HIADP_VO_Init failed.\n");
            goto DISP_DEINIT;
        }
    }

    if (AdecType != 0x00)
    {
        Ret = HIADP_Snd_Init();
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call SndInit failed.\n");
            goto SND_DEINIT;
        }

        Ret = HIADP_AVPlay_RegADecLib();
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_RegisterAcodecLib failed.\n");
            goto SND_DEINIT;
        }
    }
    
    Pes_Open(VdecType, AdecType, &hAVPlay, &hWin);
    
    /* Open PES handle */
    stOpenParam.hAVPlay           = hAVPlay;
    stOpenParam.u32VdecType       = u32PESVideoType;
    stOpenParam.u32AudioType      = u32PES_AudioType;
    stOpenParam.u32PESBufferSize  = 2 * 1024 * 1024; // Allocate 2MBytes
    stOpenParam.enPESParseType  = HI_UNF_PES_PARSE_TYPE_REGULAR;
    //stOpenParam.enPESParseType  = HI_UNF_PES_PARSE_TYPE_ADJUST;
    stOpenParam.bIsDVD          = HI_FALSE;
    Ret = HI_UNF_PES_Open(&stOpenParam, &PEShandle);
    sample_printf("PEShandle:0x%x\n", PEShandle);

    g_StopThread = HI_FALSE;
    pthread_create(&g_EsThd, HI_NULL, (HI_VOID *)PESTthread, (HI_VOID *)&PEShandle);

    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

        if('r' == InputCmd[0] || 'R' == InputCmd[0])
        {
            Pes_Resume(hAVPlay);
        }
        if ('p' == InputCmd[0] || 'P' == InputCmd[0])
        {
            Pes_Pause(hAVPlay);
        }
        if ('t' == InputCmd[0] || 'T' == InputCmd[0])
        {
            Pes_TPlay(hAVPlay);
        }
    }

    g_StopThread = HI_TRUE;
    pthread_join(g_EsThd, HI_NULL);
    
    HI_UNF_PES_Close(PEShandle);    
    Pes_Close(hAVPlay, hWin);
    sample_printf("come to pes close\n");

    HI_UNF_AVPLAY_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

DISP_DEINIT:
    HIADP_VO_DeInit();
    HIADP_Disp_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();
    fclose(g_pPEsFile);
    g_pPEsFile = HI_NULL;

    return 0;
}

/*------------------------------------END---------------------------------------------*/
