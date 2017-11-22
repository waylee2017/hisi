/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mplayer.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : w58735
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_mpi_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "hi_adp.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif
#define TEST_ARGS_SPLIT " "
HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;

#ifndef CHIP_TYPE_hi3110ev500
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;


HI_HANDLE g_hAvplay;
#ifndef BOARD_TYPE_fpga
#define DEFAULT_DVB_PORT 0
#else
#define DEFAULT_DVB_PORT 1
#endif

typedef struct
{
    HI_HANDLE   ChanDmxHandle;
    HI_BOOL     ThreadRunFlag;
} PesThreadInfo;

static HI_VOID GetPesExtDataThread(HI_VOID *args)
{
    int i = 0;
	PesThreadInfo *pstPesThreadInfo = (PesThreadInfo *)args;

    while (pstPesThreadInfo->ThreadRunFlag)
    {
        HI_MPI_PES_EXT_DATA_S stPesExtData;
        memset(&stPesExtData, 0x0, sizeof(stPesExtData));
        if(HI_SUCCESS == HI_MPI_DMX_GetPesExtData(pstPesThreadInfo->ChanDmxHandle, &stPesExtData))
        {
            if (HI_MPI_DMX_PES_EXT1_DATA_TYPE & stPesExtData.ePesExtDataType)
            {
                sample_printf("the length of extension1 is %d\n", stPesExtData.u16PesExt1DataLen);
                for (i=0;i<stPesExtData.u16PesExt1DataLen;i++)
                {
                    sample_printf("%d ", stPesExtData.au8PesExt1Data[i]);
                }
                sample_printf("\n");
            }
            if (HI_MPI_DMX_PES_EXT2_DATA_TYPE & stPesExtData.ePesExtDataType)
            {
                sample_printf("the length of extension2 is %d\n", stPesExtData.u16PesExt2DataLen);
            }

            if (HI_MPI_DMX_PES_EXT_DATA_TYPE_BUTT == stPesExtData.ePesExtDataType)
            {
                sample_printf("didn't find any extension data!\n");
            }
        }
        else
        {
            sample_printf("call GetPesExtDataThread error!\n");
        }
        
    	usleep(300000);
    }
	return;
}

HI_S32 avplay_event_process(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 u32Para)
{
	if(enEvent == HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME)
	{
		HI_UNF_VO_FRAMEINFO_S           VdecFrame;
		
		memcpy(&VdecFrame,(HI_UNF_VO_FRAMEINFO_S*)u32Para,sizeof(HI_UNF_VO_FRAMEINFO_S));

	//	printf("new frame source width %d,height %d\n",VdecFrame.u32Width,VdecFrame.u32Height);
	}
	return 0;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;
    HI_HANDLE               hAvplay;
    HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
    HI_UNF_SYNC_ATTR_S          SyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;
    HI_CHAR                 InputCmd[32];
    HI_U32                  ProgNum;
    pthread_t               PesExtDataThread;
    PesThreadInfo           stpesThreadInfo = {0};

    if (5 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = strtol(argv[3],NULL,0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[4]);
    }
    else if (4 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = strtol(argv[3],NULL,0);
    }
    else if(3 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = 64;
    }
    else if(2 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = 6875;
        g_TunerQam   = 64;
    }
    else
    {
        printf("Usage: sample_dvbplay freq [srate] [qamtype] [vo_format]\n"
               "       qamtype:16|32|[64]|128|256|512\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        printf("Example:./sample_dvbplay 610 6875 64 1080i_50\n");
        return HI_FAILURE;
    }

    HI_SYS_Init();
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(0,DEFAULT_DVB_PORT);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_Tuner_Connect(TUNER_USE,g_TunerFreq,g_TunerSrate,g_TunerQam);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }
	g_hAvplay = hAvplay;
    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_SND_Attach failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.bQuickOutput = HI_FALSE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

	Ret = HI_UNF_AVPLAY_RegisterEvent(hAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, avplay_event_process);
	if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_RegisterEvent failed.\n");
        goto SND_DETACH;
    }
    ProgNum = 0;
    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }
    
    Ret = HI_UNF_AVPLAY_GetDmxVidChnHandle(hAvplay, &stpesThreadInfo.ChanDmxHandle);
	if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_GetDmxVidChnHandle failed.\n");
        goto AVPLAY_STOP;
    }
    stpesThreadInfo.ThreadRunFlag = HI_TRUE;
    pthread_create(&PesExtDataThread, HI_NULL, (HI_VOID *)GetPesExtDataThread, (void*)&stpesThreadInfo);
    
    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

		 if ('c' == InputCmd[0])
        {
        	HI_U32 u32X,u32Y,u32Width,u32Height;
			HI_UNF_WINDOW_ATTR_S stWinAttr;
			HI_CHAR outrect[30] ={0};
            sample_printf("Please set window width and height ! for example 0 0 720 576\n");
			fgets(outrect, 30, stdin);
			sample_printf("outrect:%s\n",outrect);
			Ret = sscanf(outrect, "%d" TEST_ARGS_SPLIT "%d"TEST_ARGS_SPLIT "%d"TEST_ARGS_SPLIT "%d", &u32X, &u32Y,&u32Width,&u32Height);
			if(0)
			{
				sample_printf("input error!\n");
				continue;
			}
			printf("u32X:%d,u32Y:%d,u32Width:%d,u32Height:%d!\n",u32X,u32Y,u32Width,u32Height);
			Ret = HI_UNF_VO_GetWindowAttr(hWin, &stWinAttr);
			if(Ret)
			{
				sample_printf("HI_UNF_VO_GetWindowAttr failed!\n");
				continue;
			}
			stWinAttr.stOutputRect.s32X = u32X;
			stWinAttr.stOutputRect.s32Y = u32Y;
			stWinAttr.stOutputRect.s32Width = u32Width;
			stWinAttr.stOutputRect.s32Height = u32Height;
			Ret = HI_UNF_VO_SetWindowAttr(hWin, &stWinAttr);
			if(Ret)
			{
				sample_printf("HI_UNF_VO_GetWindowAttr failed!\n");
				continue;
			}
			
            continue;
        }

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

    	ProgNum = atoi(InputCmd);

    	if(ProgNum == 0)
    	    ProgNum = 1;

		Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum-1,HI_TRUE);
		if (Ret != HI_SUCCESS)
		{
			sample_printf("call SwitchProgfailed!\n");
			break;
		}
    }
	HI_UNF_AVPLAY_UnRegisterEvent(hAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME);
	stpesThreadInfo.ThreadRunFlag = HI_FALSE;
    (HI_VOID)pthread_join(PesExtDataThread, HI_NULL);
	
AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);

CHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();

TUNER_DEINIT:
    HIADP_Tuner_DeInit();

DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(0);
    HI_UNF_DMX_DeInit();

VO_DEINIT:
    HI_UNF_VO_DestroyWindow(hWin);
    HIADP_VO_DeInit();

DISP_DEINIT:
    HIADP_Disp_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}


