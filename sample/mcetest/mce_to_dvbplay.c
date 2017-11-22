/******************************************************************************

  Copyright (C), 2001-2015, Hisilicon Tech. Co., Ltd.

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
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_unf_mce.h"
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
#include "hi_go.h"
#include "hi_adp.h"

HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;

#ifndef CHIP_TYPE_hi3110ev500
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

//#define __HI_GO__

#ifndef BOARD_TYPE_fpga
#define DEFAULT_DVB_PORT 0
#else
#define DEFAULT_DVB_PORT 1
#endif


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
    HI_U32  u32Playtime;

#ifdef __HI_GO__
    HIGO_LAYER_INFO_S stLayerInfoHD;
    HI_HANDLE hLayerHD,hLayerSurfaceHD;
#endif
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
    
    HI_SYS_GetPlayTime(& u32Playtime);
    sample_printf("u32Playtime = %d\n",u32Playtime);
    
	HI_SYS_PreAV(NULL);
#if 0
    sample_printf("lc new HI_SYS_PreAV 1\n");
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP1;
    HI_SYS_PreAV(&PreParm); 
#endif	
	sample_printf("continue to do setup\n"); 
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }
    
	sample_printf("before HIADP_Disp_Init\n"); 
    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    } 
	sample_printf("before HIADP_VO_Init\n"); 
    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);//HI_UNF_VO_DEV_MODE_MOSAIC);//HI_UNF_VO_DEV_MODE_NORMAL);
	sample_printf("before HIADP_VO_CreatWin\n"); 
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    } 

    Ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
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

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL); 

    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    sample_printf("before HI_UNF_VO_AttachWindow\n"); //sleep(2);
    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }   
    sample_printf("after HI_UNF_VO_AttachWindow\n"); //sleep(5); 
    sample_printf("7 enable window\n"); 
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }
#if 0

    sample_printf("lc before new HI_SYS_PreAV step2\n");//sleep(1);
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP2;
    PreParm.StepParam1 = hWin;
    sample_printf("Step 2, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    
    sample_printf("lc before new HI_SYS_PreAV step3\n");//sleep(1);
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP3;
    PreParm.StepParam1 = hWin;
    sample_printf("Step 3, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    sample_printf("8 now to show new window data\n");

    sample_printf("lc before new HI_SYS_PreAV step4\n");
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP4;
    PreParm.StepParam1 = hWin;
    sample_printf("Step 4, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    sample_printf("quit MCE all\n");
#else

	HI_UNF_MCE_STOPPARM_S FastPlayStopParm;
	FastPlayStopParm.enStopMode = HI_UNF_MCE_STOPMODE_STILL;
	FastPlayStopParm.hNewWin = hWin;
	FastPlayStopParm.u32PlayCount = 0;
	FastPlayStopParm.u32PlayTime = 15;

	Ret = HI_UNF_MCE_Stop(&FastPlayStopParm);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_MCE_Stop failed.\n");
        goto WIN_DETACH;
    }

	
#endif


#ifdef __HI_GO__
    sample_printf("init higo\n");
    /** initial higo */
    Ret = HI_GO_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("HI_GO_Init error\n");
    }

    /** create graphic layer  */    
    //Ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfoSD);
#ifndef CHIP_TYPE_hi3110ev500
    stLayerInfoHD.CanvasWidth = 1280;
    stLayerInfoHD.CanvasHeight = 720;
    stLayerInfoHD.DisplayWidth = 1280;
    stLayerInfoHD.DisplayHeight = 720;
    stLayerInfoHD.ScreenWidth = 1920;
    stLayerInfoHD.ScreenHeight = 1080;
    stLayerInfoHD.PixelFormat = HIGO_PF_8888;
    stLayerInfoHD.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfoHD.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfoHD.LayerID = HIGO_LAYER_HD_0;
#else
	stLayerInfoHD.CanvasWidth = 720;
    stLayerInfoHD.CanvasHeight = 576;
    stLayerInfoHD.DisplayWidth = 720;
    stLayerInfoHD.DisplayHeight = 576;
    stLayerInfoHD.ScreenWidth = 720;
    stLayerInfoHD.ScreenHeight = 576;
    stLayerInfoHD.PixelFormat = HIGO_PF_1555;
    stLayerInfoHD.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfoHD.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfoHD.LayerID = HIGO_LAYER_SD_0;
#endif    
    Ret = HI_GO_CreateLayer(&stLayerInfoHD,&hLayerHD);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("HI_GO_CreateLayer error\n");
    }
       
    /** get the graphic layer Surface */
    Ret = HI_GO_GetLayerSurface (hLayerHD,&hLayerSurfaceHD); 
    if (HI_SUCCESS != Ret)  
    {
        sample_printf("HI_GO_GetLayerSurface error\n");
    }

    /** draw a empty rectangle on the Surface*/
    Ret = HI_GO_FillRect(hLayerSurfaceHD,NULL,0x00000000,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("HI_GO_FillRect error\n");
    }
#endif

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

    Ret |= HI_UNF_DMX_AttachTSPort(0,0);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto PSISI_FREE;
    }

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
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

    ProgNum = 0;
    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            sample_printf("prepare to quit!\n");
            break;
        }
        if ((InputCmd[0] < '0') || (InputCmd[0] > '9'))
        {
            continue;
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

#ifdef __HI_GO__
     /** destroy graphic layer */
    Ret = HI_GO_DestroyLayer(hLayerHD);
    Ret = HI_GO_Deinit();
#endif

DISP_DEINIT:
    HIADP_Disp_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}


