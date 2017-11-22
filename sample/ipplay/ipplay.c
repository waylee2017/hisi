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
#include "hi_adp_hdmi.h"
#include "hi_adp_mpi.h"

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

static pthread_t   g_SocketThd;
static HI_CHAR            *g_pMultiAddr;
static HI_U16             g_UdpPort;

static HI_BOOL     g_StopSocketThread = HI_FALSE;
static HI_HANDLE          g_hIpTsBuf;
static PMT_COMPACT_TBL    *g_pIpProgTbl = HI_NULL;

static HI_VOID SocketThread(HI_VOID *args)
{
    HI_S32              SocketFd;
    struct sockaddr_in  ServerAddr;
    in_addr_t           IpAddr;
    struct ip_mreq      Mreq;
    HI_U32              AddrLen;

    HI_UNF_STREAM_BUF_S     StreamBuf;
    HI_U32              ReadLen;
    HI_U32              GetBufCount=0;
    HI_U32              ReceiveCount=0;
    HI_S32              Ret;

    SocketFd = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP);
    if (SocketFd < 0)
	{
		sample_printf("create socket error [%d].\n", errno);
		return;
	}

    ServerAddr.sin_family = AF_INET;
	ServerAddr.sin_addr.s_addr = htonl(INADDR_ANY);
	ServerAddr.sin_port = htons(g_UdpPort);

    if (bind(SocketFd,(struct sockaddr *)(&ServerAddr),sizeof(struct sockaddr_in)) < 0)
	{
		sample_printf("socket bind error [%d].\n", errno);
		close(SocketFd);
		return;
	}

    IpAddr = inet_addr(g_pMultiAddr);
	if (IpAddr)
	{
		Mreq.imr_multiaddr.s_addr = IpAddr;
		Mreq.imr_interface.s_addr = htonl(INADDR_ANY);
		if (setsockopt(SocketFd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &Mreq, sizeof(struct ip_mreq)))
		{
			sample_printf("Socket setsockopt ADD_MEMBERSHIP error [%d].\n", errno);
			close(SocketFd);
			return;
		}
	}

    AddrLen = sizeof(ServerAddr);

    while (!g_StopSocketThread)
    {
        Ret = HI_UNF_DMX_GetTSBuffer(g_hIpTsBuf, 188*50, &StreamBuf, 0);
        if (Ret != HI_SUCCESS)
		{
            GetBufCount++;
            if(GetBufCount >= 10)
            {
                sample_printf("########## TS come too fast! #########, Ret=%d\n", Ret);
        	    GetBufCount=0;
            }

            usleep(10000) ;
			continue;
		}
		GetBufCount=0;

        ReadLen = recvfrom(SocketFd, StreamBuf.pu8Data, StreamBuf.u32Size, 0,
		                   (struct sockaddr *)&ServerAddr, &AddrLen);
		if (ReadLen <= 0)
		{
		    ReceiveCount++;
		    if (ReceiveCount >= 50)
		    {
			    sample_printf("########## TS come too slow or net error! #########\n");
			    ReceiveCount = 0;
		    }
		}
        else
		{
            ReceiveCount = 0;
			Ret = HI_UNF_DMX_PutTSBuffer(g_hIpTsBuf, ReadLen);
		    if (Ret != HI_SUCCESS )
            {
                sample_printf("call HI_UNF_DMX_PutTSBuffer failed.\n");
            }
		}
    }

    close(SocketFd);
    return;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;
    HI_U32                  u32DmxId = 4;

#if defined(CHIP_TYPE_hi3716mv330)
	HI_UNF_DMX_PORT_E       enPort = HI_UNF_DMX_PORT_3_RAM;
#else
    HI_UNF_DMX_PORT_E       enPort = HI_UNF_DMX_PORT_6_RAM;
#endif
    HI_HANDLE               hAvplay;
    HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
    HI_UNF_SYNC_ATTR_S          SyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;
    HI_CHAR                 InputCmd[32];
    HI_U32                  ProgNum;
    HI_UNF_ENC_FMT_E   enFormat = HI_UNF_ENC_FMT_1080i_50;

    if (argc >= 4)
    {
    	enFormat = (HI_UNF_ENC_FMT_E)HIADP_Disp_StrToFmt(argv[3]);
    }
    else if(argc == 3)	
    {
#ifndef CHIP_TYPE_hi3110ev500
        enFormat = HI_UNF_ENC_FMT_1080i_50;
#else
        enFormat = HI_UNF_ENC_FMT_PAL;
#endif
    }
    else 
    {
        printf("Usage: sample_ipplay MultiAddr UdpPort [vo_format]\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50|PAL|NTSC\n"
	       "Example:./sample_ipplay 224.0.0.1 1234 1080i_50\n");	        
        return 0;
    }

    g_pMultiAddr = argv[1];
    g_UdpPort = atoi(argv[2]);

    HI_SYS_Init();
    Ret = HIADP_Snd_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SndInit failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(enFormat);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call DispInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HIADP_VO_Init failed\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(u32DmxId,enPort);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call VoInit failed.\n");
        goto VO_DEINIT;
    }
    
    Ret = HI_UNF_DMX_CreateTSBuffer(enPort, 0x200000, &g_hIpTsBuf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_CreateTSBuffer failed.\n");
        goto DMX_DEINIT;
    }
    
    Ret = HIADP_AVPlay_RegADecLib();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HIADP_AVPlay_RegADecLib failed.\n");
        goto TSBUF_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto TSBUF_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    AvplayAttr.u32DemuxId = u32DmxId;
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto AVPLAY_DESTROY;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto AVCHN_CLOSE;
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
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETATCH;
    }

    g_StopSocketThread = HI_FALSE;
    pthread_create(&g_SocketThd, HI_NULL, (HI_VOID *)SocketThread, HI_NULL);

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(u32DmxId, &g_pIpProgTbl);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed.\n");
        goto THD_STOP;
    }

    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pIpProgTbl,0,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto PSISI_FREE;
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
		Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pIpProgTbl,ProgNum,HI_TRUE);
		if (Ret != HI_SUCCESS)
		{
			sample_printf("call SwitchProgfailed!\n");
			break;
		}
    }

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (Ret != HI_SUCCESS )
    {
        sample_printf("call HI_UNF_AVPLAY_Stop failed.\n");
    }
PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pIpProgTbl);
    HIADP_Search_DeInit();

THD_STOP:
    g_StopSocketThread = HI_TRUE;
    pthread_join(g_SocketThd, HI_NULL);

SND_DETATCH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);
    
WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);
    
AVCHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

AVPLAY_DESTROY:
    HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

TSBUF_DESTROY:
    HI_UNF_DMX_DestroyTSBuffer(g_hIpTsBuf);
    
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

    return 0;
}


