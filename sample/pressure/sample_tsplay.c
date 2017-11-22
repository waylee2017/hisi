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
#include <sys/time.h>
#include <sys/times.h>
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
#include "hi_unf_ecs.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_mpi.h"

#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

//#define FAST_FORWARD_MODE

FILE               *g_pTsFile = HI_NULL;
static pthread_t   g_TsThd;
static pthread_mutex_t g_TsMutex;
static HI_BOOL     g_bStopTsThread = HI_FALSE;
HI_HANDLE          g_TsBuf;
PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

#define  PLAY_DMX_ID  0

#ifdef FAST_FORWARD_MODE
HI_S32 g_s32ByteToJump = 0;

HI_S32 g_s32Filebps = 40*1024*1024;

HI_S32 sample_drop_stream_at_ff(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 u32Para)
{
    HI_U32 jumpTimeSec;
    
    if (enEvent !=  HI_UNF_AVPLAY_EVENT_JUMP_STREAM)
    {
        // not the event we want...., maybe errro, ignore
        return HI_SUCCESS;
    }

    jumpTimeSec = u32Para/1000;
    sample_printf("EVENT_JUMP_STREAM, jump %d second.\n", jumpTimeSec);
    if (0 == jumpTimeSec)
    {
        // too small, ignore
        return HI_SUCCESS;
    }

    g_s32ByteToJump = jumpTimeSec * g_s32Filebps / 8;

    return HI_SUCCESS;
}

HI_VOID* TimeTthread(HI_VOID *args)
{
    HI_HANDLE         hAvplay = (HI_HANDLE)args;
    HI_S32 startTime = times(HI_NULL) * 10;
    while (!g_bStopTsThread)
    {
        HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
	    HI_UNF_AVPLAY_GetStatusInfo(hAvplay,&stStatusInfo);
	    
		sample_printf("RealTime:%ld, localtime:%x playtime:%u\n",
		    times(HI_NULL) * 10 - startTime,
    		stStatusInfo.stSyncStatus.u32LocalTime,
    		stStatusInfo.stSyncStatus.u32PlayTime);
      /*  */
		usleep(300*1000);
    }
    
    return NULL;
}
#endif

HI_VOID TsTthread(HI_VOID *args)
{
    HI_UNF_STREAM_BUF_S   StreamBuf;
    HI_U32                Readlen;
    HI_S32                Ret;

    while (!g_bStopTsThread)
    {
        pthread_mutex_lock(&g_TsMutex);
        Ret = HI_UNF_DMX_GetTSBuffer(g_TsBuf, 188*50, &StreamBuf, 1000);
        if (Ret != HI_SUCCESS )
        {
            pthread_mutex_unlock(&g_TsMutex);
            usleep(10*1000);
            continue;
        }
#ifdef FAST_FORWARD_MODE
        if (g_s32ByteToJump) /* shuold jump stream */
        {   
            fseek(g_pTsFile, g_s32ByteToJump, SEEK_CUR);
            g_s32ByteToJump = 0;
        }
#endif        
        Readlen = fread(StreamBuf.pu8Data, sizeof(HI_S8), 188*50, g_pTsFile);
        if(Readlen <= 0)
        {
            //sample_printf("read ts file end and rewind!\n");
            rewind(g_pTsFile);
            pthread_mutex_unlock(&g_TsMutex);

#ifdef FAST_FORWARD_MODE	
           	break;
#else
            continue;
#endif           	
           
        }

        Ret = HI_UNF_DMX_PutTSBuffer(g_TsBuf, Readlen);
        if (Ret != HI_SUCCESS )
        {
            sample_printf("call HI_UNF_DMX_PutTSBuffer failed.\n");
        }
        pthread_mutex_unlock(&g_TsMutex);
    }

    Ret = HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
    if (Ret != HI_SUCCESS )
    {
        sample_printf("call HI_UNF_DMX_ResetTSBuffer failed.\n");
    }

    return;
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
    HI_UNF_ENC_FMT_E   enFormat = HI_UNF_ENC_FMT_1080i_50;
    HI_U32             ProgNum;

    if (3 == argc)
    {
        enFormat = (HI_UNF_ENC_FMT_E)HIADP_Disp_StrToFmt(argv[2]);
    }
    else if (2 == argc)
    {
#ifndef CHIP_TYPE_hi3110ev500
        enFormat = HI_UNF_ENC_FMT_1080i_50;
#else
	enFormat = HI_UNF_ENC_FMT_PAL;
#endif
    }
    else
    {
        printf("Usage: sample_tsplay file [vo_format]\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50|PAL|NTSC\n");
        printf("Example:./sample_tsplay ./test.ts 1080i_50\n");
        return 0;
    }

    g_pTsFile = fopen(argv[1], "rb");
    if (!g_pTsFile)
	{
        sample_printf("open file %s error!\n", argv[1]);
		return -1;
	}

    HI_SYS_Init();
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call SndInit failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(enFormat);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_Init failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call VoInit failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(PLAY_DMX_ID,HI_UNF_DMX_PORT_3_RAM);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call VoInit failed.\n");
        goto VO_DEINIT;
    }

    Ret = HI_UNF_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_3_RAM, 0x200000, &g_TsBuf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_CreateTSBuffer failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call RegADecLib failed.\n");
        goto TSBUF_FREE;
    }

    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
	AvplayAttr.u32DemuxId = PLAY_DMX_ID;
    AvplayAttr.stStreamAttr.u32VidBufSize = (3*1024*1024);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }
    
#ifdef FAST_FORWARD_MODE
    HI_UNF_AVPLAY_RegisterEvent(hAvplay, HI_UNF_AVPLAY_EVENT_JUMP_STREAM, sample_drop_stream_at_ff);
#endif    
	Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto AVPLAY_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto VCHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed:%#x.\n",Ret);
    }
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (Ret != HI_SUCCESS)
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
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    pthread_mutex_init(&g_TsMutex,NULL);
    g_bStopTsThread = HI_FALSE;
    pthread_create(&g_TsThd, HI_NULL, (HI_VOID *)TsTthread, HI_NULL);
#ifdef FAST_FORWARD_MODE
    pthread_create(&g_TimeThd, HI_NULL, (HI_VOID *)TimeTthread, (void *)hAvplay);
#endif

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(PLAY_DMX_ID, &g_pProgTbl);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed.\n");
        goto PSISI_FREE;
    }

#if 0
    sample_printf("select channel number to start play\n");
    memset(InputCmd, 0, 30);
    fgets(InputCmd, 30, stdin);
    ProgNum = atoi(InputCmd);
#endif
    ProgNum = 0;

    pthread_mutex_lock(&g_TsMutex);
    rewind(g_pTsFile);
    HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
    pthread_mutex_unlock(&g_TsMutex);
    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;;
    }

    while(1)
    {
        sleep(1);
        continue;
		static HI_U32 u32TplaySpeed = 2;
        printf("please input 'q' to quit!\n");
        memset(InputCmd, 0, 30);
        fgets(InputCmd, 30, stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }
#ifdef FAST_FORWARD_MODE
        if ('t' == InputCmd[0]) 
		{
			HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpt;
			sample_printf("%dx tplay\n",u32TplaySpeed);
			stTplayOpt.u32TplaySpeed = u32TplaySpeed;
			HI_UNF_AVPLAY_SetPlayerFFMode(hAvplay, HI_TRUE, u32TplaySpeed);
			HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
    		u32TplaySpeed = (64 == u32TplaySpeed * 2) ? (2) : (u32TplaySpeed * 2) ;
			continue;
		}

		if ('r' == InputCmd[0])
		{
			sample_printf("resume\n");
		    HI_UNF_AVPLAY_SetDecodeMode(hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
			HI_UNF_AVPLAY_Resume(hAvplay,HI_NULL);
			HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
			u32TplaySpeed = 2;
			continue;
		}

		if ('g' == InputCmd[0])
		{
		    HI_BOOL empty = HI_FALSE;
			HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;

			HI_UNF_AVPLAY_IsBuffEmpty(hAvplay, &empty);
		    HI_UNF_AVPLAY_GetStatusInfo(hAvplay,&stStatusInfo);
			sample_printf("localtime %u playtime %u\n",stStatusInfo.stSyncStatus.u32LocalTime,stStatusInfo.stSyncStatus.u32PlayTime);
			sample_printf("buf v %u buf A %u, empty:%d\n",
			stStatusInfo.stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime,
			stStatusInfo.stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime, empty);
			continue;
		}
#else
        if ('t' == InputCmd[0])
		{
			HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpt;
			printf("%dx tplay\n",u32TplaySpeed);
			stTplayOpt.u32TplaySpeed = u32TplaySpeed;
		    HI_UNF_AVPLAY_SetDecodeMode(hAvplay, HI_UNF_VCODEC_MODE_I);
			HI_UNF_AVPLAY_Tplay(hAvplay,&stTplayOpt);
    		u32TplaySpeed = (32 == u32TplaySpeed * 2) ? (2) : (u32TplaySpeed * 2) ;
			continue;
		}

		if ('r' == InputCmd[0])
		{
			printf("resume\n");
		    HI_UNF_AVPLAY_SetDecodeMode(hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
			HI_UNF_AVPLAY_Resume(hAvplay,HI_NULL);
			u32TplaySpeed = 2;
			continue;
		}

		if ('g' == InputCmd[0])
		{
			HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
		    HI_UNF_AVPLAY_GetStatusInfo(hAvplay,&stStatusInfo);
			printf("localtime %u playtime %u\n",stStatusInfo.stSyncStatus.u32LocalTime,stStatusInfo.stSyncStatus.u32PlayTime);
			continue;
		}
#endif
		ProgNum = atoi(InputCmd);
        if (ProgNum == 0)
            ProgNum = 1;

        pthread_mutex_lock(&g_TsMutex);
        rewind(g_pTsFile);
        HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
        pthread_mutex_unlock(&g_TsMutex);
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

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    g_pProgTbl = HI_NULL;
    HIADP_Search_DeInit();

    g_bStopTsThread = HI_TRUE;
    pthread_join(g_TsThd, HI_NULL);
    pthread_mutex_destroy(&g_TsMutex);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);

    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

VCHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);

AVPLAY_DESTROY:
    HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

TSBUF_FREE:
    HI_UNF_DMX_DestroyTSBuffer(g_TsBuf);

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

    fclose(g_pTsFile);
    g_pTsFile = HI_NULL;

    return Ret;
}


