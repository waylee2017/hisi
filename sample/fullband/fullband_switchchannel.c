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

typedef struct
{
    HI_HANDLE hAvplay;
	HI_U32 u32AvplayStatus;
}Avplay_Status_S;


HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

#ifndef BOARD_TYPE_fpga
#define DEFAULT_DVB_PORT 0
#else
#define DEFAULT_DVB_PORT 1
#endif

#define MAX_AVPLAY_NUM 2
#define MAX_DMX_NUM 2
#define MAX_TUNER_NUM 2
#define MAX_PORT_NUM 2

static HI_HANDLE 	g_CurAvplayHnd = HI_INVALID_HANDLE;
static HI_HANDLE			g_AnotherAvplayHnd = HI_INVALID_HANDLE;
static HI_U32 		g_CurProgIdx = -1;
static HI_U32 		g_CurPrePlayProgIdx = -1;
static HI_U32 		g_TotalProgNum = -1;
static Avplay_Status_S		g_stAvplayStatus[MAX_AVPLAY_NUM];
//
static HI_HANDLE phWin;

HI_S32 Get_AvplayStatus(HI_HANDLE hAvplay,HI_U32 *pAvplayStatus)
{
	HI_S32 s32Ret;
	HI_U32 i;

	for(i=0;i<MAX_AVPLAY_NUM;i++)
	{
		if(g_stAvplayStatus[i].hAvplay == hAvplay)
		{
			break;
		}
	}
	if(i>=MAX_AVPLAY_NUM)
	{
		printf("hAvplay is not right!Can't find it!\n");
		return HI_FAILURE;
	}
		
	*pAvplayStatus = g_stAvplayStatus[i].u32AvplayStatus;
	return HI_SUCCESS;
}

HI_S32 Set_AvplayStatus(HI_HANDLE hAvplay,HI_U32 AvplayStatus)
{
	HI_S32 s32Ret;
	HI_U32 i;

	for(i=0;i<MAX_AVPLAY_NUM;i++)
	{
		if(g_stAvplayStatus[i].hAvplay == hAvplay)
		{
			break;
		}
	}
	
	if(i>=MAX_AVPLAY_NUM)
	{
		printf("hAvplay is not right!Can't find it!\n");
		return HI_FAILURE;
	}
		
	g_stAvplayStatus[i].u32AvplayStatus = AvplayStatus;
	
	return HI_SUCCESS;

}

HI_S32 AVPlay_PlayProg(HI_HANDLE hAvplay,PMT_COMPACT_TBL *pProgTbl,HI_U32 ProgNum,HI_BOOL bAudPlay,HI_BOOL bPrePlay)
{
    HI_U32                  VidPid;
    HI_U32                  AudPid;
    HI_U32                  PcrPid;
    HI_UNF_VCODEC_TYPE_E    enVidType;
    HI_U32                  u32AudType;
	HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    HI_S32                  Ret;
	
    ProgNum = ProgNum % pProgTbl->prog_num;
    if (pProgTbl->proginfo[ProgNum].VElementNum > 0 )
    {
        VidPid = pProgTbl->proginfo[ProgNum].VElementPid;
        enVidType = pProgTbl->proginfo[ProgNum].VideoType;
    }
    else
    {
        VidPid = INVALID_TSPID;
        enVidType = HI_UNF_VCODEC_TYPE_BUTT;
    }

    if (pProgTbl->proginfo[ProgNum].AElementNum > 0)
    {
        AudPid  = pProgTbl->proginfo[ProgNum].AElementPid;
        u32AudType = pProgTbl->proginfo[ProgNum].AudioType;
    }
    else
    {
        AudPid = INVALID_TSPID;
        u32AudType = 0xffffffff;
    }
	Ret = HI_UNF_AVPLAY_GetStatusInfo(hAvplay,&stStatusInfo);
  
    if (VidPid != INVALID_TSPID)
    {	
		Ret = HIADP_AVPlay_SetVdecAttr(hAvplay,enVidType,HI_UNF_VCODEC_MODE_NORMAL);
        if(HI_UNF_AVPLAY_STATUS_STOP == stStatusInfo.enRunStatus)
        {
                Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID,&VidPid);
        }

		if(bPrePlay == HI_FALSE)
		{
	        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
	        if (Ret != HI_SUCCESS)
	        {
	            printf("call VID HI_UNF_AVPLAY_Start failed.\n");
	            return Ret;
	        }
		}
		else
		{
			Ret = HI_UNF_AVPLAY_PreStart(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
	        if (Ret != HI_SUCCESS)
	        {
	            printf("call  VID HI_UNF_AVPLAY_PreStart failed.\n");
	            return Ret;
	        }
		}
    }

    if (HI_TRUE == bAudPlay && AudPid != INVALID_TSPID)
    {
		Ret  = HIADP_AVPlay_SetAdecAttr(hAvplay, u32AudType, HD_DEC_MODE_RAWPCM, 1);
        if(HI_UNF_AVPLAY_STATUS_STOP == stStatusInfo.enRunStatus)
        {
            Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &AudPid);
        }

		if(bPrePlay == HI_FALSE)
		{
	        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	        if (Ret != HI_SUCCESS)
	        {
	            printf("call  AUD HI_UNF_AVPLAY_Start failed.\n");
	            return Ret;
	        }
		}
		else
		{
			Ret = HI_UNF_AVPLAY_PreStart(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	        if (Ret != HI_SUCCESS)
	        {
	            printf("call AUD HI_UNF_AVPLAY_PreStart failed.\n");
	            return Ret;
	        }
		}
    }

    return HI_SUCCESS;
}


static  HI_S32 DVB_PlayProg(HI_U32 u32ProgNum)
{
    HI_HANDLE           hWin = phWin;
	HI_HANDLE			hAvplay;
	HI_U32 				u32AvplayIdx;
	HI_U32				DmxID;
	HI_S32 				s32Ret;
	HI_UNF_AVPLAY_STOP_OPT_S    Stop;
	HI_U32 				AvplayStatus;
	HI_U32 u32ProgIdx;	

	u32ProgIdx = u32ProgNum % g_TotalProgNum;
    if ( u32ProgIdx == g_CurProgIdx)
    {
        return HI_SUCCESS;
    }

	if(g_CurProgIdx == -1)
	{
		HI_UNF_VO_AttachWindow(phWin, g_CurAvplayHnd);
	    HI_UNF_VO_SetWindowEnable(phWin,HI_TRUE);
		HI_UNF_SND_Attach(HI_UNF_SND_0, g_CurAvplayHnd,HI_UNF_SND_MIX_TYPE_MASTER, 100);
		
		s32Ret = AVPlay_PlayProg(g_CurAvplayHnd, g_pProgTbl, u32ProgIdx, HI_TRUE, HI_FALSE);
		if(s32Ret != HI_SUCCESS)
		{
			sample_printf("Call AVPlay_PlayProg Failed.\n");
			return HI_FAILURE;
		}
		g_CurProgIdx = u32ProgIdx;
		Set_AvplayStatus(g_CurAvplayHnd,1);
		
		s32Ret = AVPlay_PlayProg(g_AnotherAvplayHnd, g_pProgTbl, u32ProgIdx+1, HI_TRUE, HI_TRUE);
		if(s32Ret != HI_SUCCESS)
		{
			sample_printf("Call AVPlay_PlayProg Failed.\n");
			return HI_FAILURE;
		}
		g_CurPrePlayProgIdx = (u32ProgIdx+1) % g_TotalProgNum;
		Set_AvplayStatus(g_AnotherAvplayHnd,2);

		return HI_SUCCESS;
	}

	Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    s32Ret = HI_UNF_AVPLAY_Stop(g_CurAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (HI_SUCCESS != s32Ret)
    {
        printf("call HI_UNF_AVPLAY_Stop failed.\n");
        return s32Ret;
    }
	printf("@@@@@@g_CurAvplayHnd:%#x\n",g_CurAvplayHnd);
	HI_UNF_SND_Detach(HI_UNF_SND_0, g_CurAvplayHnd);
 	HI_UNF_VO_SetWindowEnable(phWin,HI_FALSE);
	HI_UNF_VO_DetachWindow(phWin, g_CurAvplayHnd);

	HI_UNF_AVPLAY_ChnClose(g_CurAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

	if(g_CurPrePlayProgIdx != u32ProgIdx)
	{
		printf("=============\n");
		Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
	    Stop.u32TimeoutMs = 0;
	    s32Ret = HI_UNF_AVPLAY_Stop(g_AnotherAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
	    if (HI_SUCCESS != s32Ret)
	    {
	        printf("call HI_UNF_AVPLAY_Stop failed.\n");
	        return s32Ret;
	    }
	}
	
	HI_UNF_VO_AttachWindow(phWin, g_AnotherAvplayHnd);
    HI_UNF_VO_SetWindowEnable(phWin,HI_TRUE);
	HI_UNF_SND_Attach(HI_UNF_SND_0, g_AnotherAvplayHnd,HI_UNF_SND_MIX_TYPE_MASTER, 100);
	s32Ret = AVPlay_PlayProg(g_AnotherAvplayHnd, g_pProgTbl, u32ProgIdx, HI_TRUE, HI_FALSE);
	if(s32Ret != HI_SUCCESS)
	{
		sample_printf("Call AVPlay_PlayProg Failed.\n");
		return HI_FAILURE;
	}
	HI_UNF_AVPLAY_ChnOpen(g_CurAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD,HI_NULL);
	
	s32Ret = AVPlay_PlayProg(g_CurAvplayHnd, g_pProgTbl, u32ProgIdx+1, HI_TRUE, HI_TRUE);
	if(s32Ret != HI_SUCCESS)
	{
		sample_printf("Call AVPlay_PlayProg Failed.\n");
		return HI_FAILURE;
	}
	
	hAvplay = g_AnotherAvplayHnd;
	g_AnotherAvplayHnd = g_CurAvplayHnd;
	g_CurAvplayHnd	= hAvplay;

	g_CurProgIdx = u32ProgIdx;
	g_CurPrePlayProgIdx = (u32ProgIdx+1) % g_TotalProgNum;
		
    return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;
    HI_HANDLE               hAvplay[MAX_AVPLAY_NUM];
    HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
    HI_UNF_SYNC_ATTR_S          SyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;
    HI_CHAR                 InputCmd[32];
    HI_U32                  i,ProgNum;

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
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
    }
    else if(3 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = 64;
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
    }
    else if(2 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = 6875;
        g_TunerQam   = 64;
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
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

	phWin = hWin;

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(0,DEFAULT_DVB_PORT);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }
	
	Ret |= HI_UNF_DMX_AttachTSPort(1,DEFAULT_DVB_PORT);
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
	g_TotalProgNum = g_pProgTbl->prog_num;

    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }

	for(i=0;i<MAX_AVPLAY_NUM;i++)
	{
	    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
		AvplayAttr.u32DemuxId = i;
	    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay[i]);
	    if (Ret != HI_SUCCESS)
	    {
	        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
	        goto AVPLAY_DEINIT;
	    }

		g_stAvplayStatus[i].hAvplay = hAvplay[i];
		g_stAvplayStatus[i].u32AvplayStatus = 0;

	    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
	    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	    if (HI_SUCCESS != Ret)
	    {
	        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
	        goto CHN_CLOSE;
	    }

		Ret = HI_UNF_AVPLAY_GetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
	    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
	    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
	    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
	    SyncAttr.bQuickOutput = HI_FALSE;
	    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
	    if (Ret != HI_SUCCESS)
	    {
	        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
	        goto CHN_CLOSE; 
	    }
	}
	
	g_CurAvplayHnd = hAvplay[0];
	g_AnotherAvplayHnd = hAvplay[1];

    ProgNum = 0;
	Ret = DVB_PlayProg(ProgNum);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call DVB_PlayProg failed.\n");
        goto AVPLAY_STOP;
    }

    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

    	ProgNum = atoi(InputCmd);

    	if(ProgNum == 0)
    	    ProgNum = 1;

		Ret = DVB_PlayProg11(ProgNum);
		if (Ret != HI_SUCCESS)
		{
			sample_printf("call SwitchProgfailed!\n");
			break;
		}
    }

AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(g_CurAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
	HI_UNF_AVPLAY_Stop(g_AnotherAvplayHnd, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, g_CurAvplayHnd);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, g_CurAvplayHnd);

CHN_CLOSE:
	HI_UNF_AVPLAY_ChnClose(hAvplay[1], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    HI_UNF_AVPLAY_ChnClose(hAvplay[0], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
	
	HI_UNF_AVPLAY_Destroy(g_CurAvplayHnd);
    HI_UNF_AVPLAY_Destroy(g_AnotherAvplayHnd);
AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();
	
TUNER_DEINIT:
    HIADP_Tuner_DeInit();
	
DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(0);
	HI_UNF_DMX_DetachTSPort(1);
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


