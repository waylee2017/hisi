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

#include <sys/time.h>
#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_adp_mpi.h"
#include "hi_adp_audio.h"
#include "hi_adp_search.h"
#include "hi_adp_tuner.h"

#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "hi_adp.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"

#include "hi_go.h"
#include "hi_go_decoder.h"

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

#define AVPLAY_NUM  1

static pthread_t   g_TdeThd;
HI_BOOL     g_bStopTdeThread = HI_FALSE;

static HI_CHAR *aszFileName = "12.jpg";
PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

static pthread_t   g_SocketThd;
static HI_BOOL g_StopSocketThread;

HI_CHAR            *g_pMultiAddr;
HI_U16             g_UdpPort;
HI_HANDLE          g_TsBuf;

HI_VOID SocketThread(HI_VOID *args)
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
       // if (HI_TRUE == g_struModeCtx.bRunMode1)
        Ret = HI_UNF_DMX_GetTSBuffer(g_TsBuf, 188*50, &StreamBuf, 0);
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

        ReadLen = recvfrom(SocketFd, StreamBuf.pu8Data, 1316, 0,
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
            Ret = HI_UNF_DMX_PutTSBuffer(g_TsBuf, ReadLen);
            if (Ret != HI_SUCCESS )
            {
                sample_printf("call HI_UNF_DMX_PutTSBuffer failed.\n");
            }
        }
    }

    close(SocketFd);

    return;
}

HI_VOID TdeThread(HI_VOID *args)
{
    HI_S32 ret;
    HI_HANDLE hDecSurface, hLayer, hLayerSurface;
    HI_RECT stRect;
    HI_RECT stRect2;
    HIGO_LAYER_INFO_S stLayerInfo ;
    HIGO_BLTOPT_S stBltOpt = {0};
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
    HIGO_DEC_ATTR_S stSrcDesc;
    HI_HANDLE hDecoder;
    HI_U8 u8Alpha;
    HI_U32 u32RunTimes = 0;
    struct timeval pretv;
    struct timeval curtv;

    /**initial resource*/
    ret  = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return ;
    }
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return ;
    }

    stLayerInfo.PixelFormat = HIGO_PF_8888;

    stLayerInfo.CanvasWidth = 1920;
    stLayerInfo.CanvasHeight = 1080;
    stLayerInfo.ScreenWidth = 1920;
    stLayerInfo.ScreenHeight = 1080;
#if 0    
    stLayerInfo.DisplayWidth = 1920;
    stLayerInfo.DisplayHeight = 1080;
#endif    
    /**create the graphic layer and get the handler */
    ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return ;
    }
    HI_GO_GetLayerAlpha(hLayer, &u8Alpha);
    sample_printf("alpha = %d\n", u8Alpha);
    u8Alpha = 0x80;
    HI_GO_SetLayerAlpha(hLayer, u8Alpha);
    ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return ;
    }


    stRect.x =0;
    stRect.y = 0;
    stRect.w = stLayerInfo.ScreenWidth;
    stRect.h = stLayerInfo.ScreenHeight;
    
    stRect2 = stRect;

    sample_printf("w:%d, h:%d\n", stRect.w, stRect.h);
    stBltOpt.EnableScale = HI_TRUE;

    /** clean the graphic layer Surface */
    HI_GO_FillRect(hLayerSurface, NULL, 0xff0000ff, HIGO_COMPOPT_NONE);

    /**decoding*/

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = aszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        return ;
    }

    /** decode it to Surface */
    ret  = HI_GO_DecImgData(hDecoder, 0, NULL, &hDecSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    gettimeofday(&pretv, HI_NULL);
    sample_printf("now sec : %d\n", (HI_U32)pretv.tv_sec);

    while(g_bStopTdeThread != HI_TRUE)
    {  
        u32RunTimes ++;
        /** Blit it to graphic layer Surface */
        ret = HI_GO_Blit(hDecSurface, &stRect2, hLayerSurface, &stRect, &stBltOpt);
        /** fresh display*/
        HI_GO_RefreshLayer(hLayer, &stRect2);
        
        stRect.x +=2 ;
        if(stRect.x > 200)
        {
            stRect.x = 0;
        }

        gettimeofday(&curtv, HI_NULL);
        if((curtv.tv_sec - pretv.tv_sec) >= 10)
        {
            sample_printf("PicFps:%d\n", u32RunTimes/10);
            u32RunTimes = 0;
            stRect.x = 0;
            pretv = curtv;
        }

        usleep(60000);
    }

    /**  free Surface */
    HI_GO_FreeSurface(hDecSurface);
    
    HI_GO_Deinit();
    return ;
}

HI_VOID Destroy_AVPLAY_Resource(HI_HANDLE *hWin, HI_HANDLE *hAvplay)
{
    HI_S32  i;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;

    for(i = 0 ; i < AVPLAY_NUM;i++)
    {
        Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
        Stop.u32TimeoutMs = 0;
        if ( 0 == i )
        {
            HI_UNF_AVPLAY_Stop(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);            
            HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay[i]);
        }
        else
        {
            HI_UNF_AVPLAY_Stop(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID, &Stop);            
        }
        HI_UNF_VO_SetWindowEnable(hWin[i],HI_FALSE);    
        HI_UNF_VO_DetachWindow(hWin[i], hAvplay[i]);
        if( 0 == i)
        {
            HI_UNF_AVPLAY_ChnClose(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);            
        }
        else
        {
            HI_UNF_AVPLAY_ChnClose(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID);            
        }

        HI_UNF_AVPLAY_Destroy(hAvplay[i]);         
    }
}

HI_S32 Create_AVPLAY_Resource(HI_HANDLE *hWin, HI_HANDLE *hAvplay)
{
    HI_S32   Ret,i;
    HI_UNF_AVPLAY_ATTR_S     AvplayAttr;
    HI_UNF_SYNC_ATTR_S       SyncAttr;
    HI_UNF_AVPLAY_OPEN_OPT_S stVidOpenOpt;
    HI_BOOL                  bAudPlay[AVPLAY_NUM];

    for(i = 0;i < AVPLAY_NUM;i++)
    {
        sample_printf("===============avplay[%d]===============\n",i);
        HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
        AvplayAttr.stStreamAttr.u32VidBufSize = 0x200000;
        Ret = HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay[i]);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
            goto Destroy_AVPLAY;
        }
    
        stVidOpenOpt.enDecType = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
        stVidOpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
        stVidOpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
        Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stVidOpenOpt);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            goto Destroy_AVPLAY;
        }
    
        Ret = HI_UNF_VO_AttachWindow(hWin[i], hAvplay[i]);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
            goto Destroy_AVPLAY;
        }
        Ret = HI_UNF_VO_SetWindowEnable(hWin[i], HI_TRUE);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
            goto Destroy_AVPLAY;
        }
        
        bAudPlay[i] = HI_FALSE;
        if (0 == i)
        {
            bAudPlay[i] = HI_TRUE;
            Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
            Ret |= HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay[i], HI_UNF_SND_MIX_TYPE_MASTER, 100);
            if (Ret != HI_SUCCESS)
            {
                sample_printf("call HI_SND_Attach failed.\n");
                goto Destroy_AVPLAY;
            }
        }
        
        Ret = HI_UNF_AVPLAY_GetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
        SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
            goto Destroy_AVPLAY;
        }
    
        Ret = HIADP_AVPlay_PlayProg(hAvplay[i], g_pProgTbl, i,bAudPlay[i]);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HIADP_AVPlay_SwitchProg failed\n");
            goto Destroy_AVPLAY;
        }
    } 

    return HI_SUCCESS;

Destroy_AVPLAY:
    Destroy_AVPLAY_Resource(hWin, hAvplay);
    return Ret;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                   Ret = 0,i = 0;
    HI_S32                   runtime = -1;
    HI_HANDLE                hWin[AVPLAY_NUM];
    HI_HANDLE                hAvplay[AVPLAY_NUM];
    HI_RECT_S                stWinRect;
    struct timeval           presystime;
    struct timeval           cursystime;

    if (2 < argc)
    {
        g_pMultiAddr = argv[1];
        g_UdpPort = atoi(argv[2]);

        if (3 < argc)
        {
            runtime = strtol(argv[3],NULL,0);
            if ((runtime != -1) && (runtime < 0))
            {
                sample_printf("input parm error \n");
                return HI_FAILURE;
            }
        }

        if (4 < argc)
        {  
            aszFileName = argv[4];
        }
    }
    else
    {
        sample_printf("Usage: sample_ip_training MultiAddr UdpPort [runtime] [file]\n");
        sample_printf("\t[runtime]: unit second            default: -1 means without limit\t\n");
        sample_printf("\t[file]:default: 12.jpg\n");
        sample_printf("Example:./sample_ip_training 224.0.0.1 1234\n");
        sample_printf("Example:./sample_ip_training 224.0.0.1 1234 10\n");
        sample_printf("Example:./sample_ip_training 224.0.0.1 1234 10 12.jpg\n");     

        return HI_FAILURE;
    }

    HI_SYS_Init();

    Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_1080P_60);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto DISP_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        goto SND_DEINIT;
    }
	
    stWinRect.s32Width = 1920 ;
    stWinRect.s32Height = 1080 ;
    stWinRect.s32X = 0;
    stWinRect.s32Y = 0;

    Ret = HIADP_VO_CreatWin(&stWinRect,&hWin[i]);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call WinInit failed.\n");
        goto VO_DEINIT;
    }
    
    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(0,HI_UNF_DMX_PORT_3_RAM);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }
    
    Ret = HI_UNF_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_3_RAM, 0x200000, &g_TsBuf);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_CreateTSBuffer failed.\n");
        goto DMX_DEINIT;
    }
    
    g_StopSocketThread = HI_FALSE;    
    pthread_create(&g_SocketThd, HI_NULL, (HI_VOID *)SocketThread, HI_NULL);
    
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
    
    Ret = Create_AVPLAY_Resource(hWin,hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto AVPLAY_DEINT;
    }

    pthread_create(&g_TdeThd, HI_NULL, (HI_VOID *)TdeThread, HI_NULL);

    HI_UNF_VO_SetAlpha(HI_UNF_VO_HD0, 0x80);
    HI_UNF_VO_SetAlpha(HI_UNF_VO_SD0, 0x80);

    gettimeofday(&presystime, HI_NULL);
    if (runtime == 0xffffffff)
    {
         sample_printf("you have choose run this without limit\n");            
    }

    while(1)
    {
       usleep(100 * 1000);
       
       if (runtime == 0xffffffff)
       {
            continue;            
       }
       else
       {
           gettimeofday(&cursystime, HI_NULL);
           if((cursystime.tv_sec - presystime.tv_sec) >= runtime)
           {
               sample_printf("-----stop training \n");
               break;
           }
       }
    }

    g_bStopTdeThread=HI_TRUE;
    pthread_join(g_TdeThd,NULL);
    Destroy_AVPLAY_Resource(hWin, hAvplay);

AVPLAY_DEINT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();

    g_StopSocketThread = HI_TRUE;

    pthread_join(g_SocketThd, HI_NULL);
    HI_UNF_DMX_DestroyTSBuffer(g_TsBuf);

DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(3);
    HI_UNF_DMX_DeInit();

VO_DEINIT:
    for ( i = 0 ; i < AVPLAY_NUM ; i++ )
    {
        HI_UNF_VO_DestroyWindow(hWin[i]);        
    }
    HIADP_VO_DeInit();


SND_DEINIT:
    HIADP_Snd_DeInit();
 
DISP_DEINIT:
     HIADP_Disp_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}


