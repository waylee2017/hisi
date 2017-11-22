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
#include "hi_unf_ecs.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_mpi.h"
#include "hi_go.h"
#include "hi_go_decoder.h"

#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"

FILE               *g_pTsFile = HI_NULL;
static pthread_t g_TsThd;
static pthread_mutex_t g_TsMutex;
static HI_BOOL g_bStopTsThread = HI_FALSE;
static HI_UNF_HDMI_ID_E enTest_Hdmi_ID = HI_UNF_HDMI_ID_0;
HI_HANDLE g_TsBuf;
PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

#define  PLAY_DMX_ID 0


typedef enum hi_SRUCTURE_3D_E
{
    STRUCTURE_3D_TOP_AND_BOTTOM = 0,
    STRUCTURE_3D_SIDE_BY_SIDE,
    STRUCTURE_3D_BUTT,
} STRUCTURE_3D_E;

static STRUCTURE_3D_E stringTo3dStructure(HI_CHAR *ps3dStructure)
{
    HI_S32 i;
    HI_CHAR *p3dStrString[STRUCTURE_3D_BUTT + 1] = {"tb", "ss", "BUTT"};

    STRUCTURE_3D_E stcReturn = STRUCTURE_3D_BUTT;

    if (HI_NULL == ps3dStructure)
    {
        return STRUCTURE_3D_BUTT;
    }

    for (i = 0; i < STRUCTURE_3D_BUTT; i++)
    {
        if (strcasestr(ps3dStructure, p3dStrString[i]))
        {
            stcReturn = i;
            break;
        }
    }

    if (i >= HI_UNF_ENC_FMT_BUTT)
    {
        i = STRUCTURE_3D_SIDE_BY_SIDE;
        stcReturn = i;
        printf("\n!!! Can NOT match format, set structure to is '%s'/%d.\n\n", p3dStrString[i], i);
    }
    else
    {
        printf("\n!!! The structure is '%s'/%d.\n\n", p3dStrString[i], i);
    }

    return stcReturn;
}

HI_VOID TsThread(HI_VOID *args)
{
    HI_UNF_STREAM_BUF_S StreamBuf;
    HI_U32 Readlen;
    HI_S32 Ret;

    while (!g_bStopTsThread)
    {
        pthread_mutex_lock(&g_TsMutex);
        Ret = HI_UNF_DMX_GetTSBuffer(g_TsBuf, 188 * 50, &StreamBuf, 1000);
        if (Ret != HI_SUCCESS)
        {
            pthread_mutex_unlock(&g_TsMutex);
            continue;
        }

        Readlen = fread(StreamBuf.pu8Data, sizeof(HI_S8), 188 * 50, g_pTsFile);
        if (Readlen <= 0)
        {
            printf("read ts file end and rewind!\n");
            rewind(g_pTsFile);
            pthread_mutex_unlock(&g_TsMutex);
            continue;
        }

        Ret = HI_UNF_DMX_PutTSBuffer(g_TsBuf, Readlen);
        if (Ret != HI_SUCCESS)
        {
            printf("call HI_UNF_DMX_PutTSBuffer failed.\n");
        }

        pthread_mutex_unlock(&g_TsMutex);
    }

    Ret = HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DMX_ResetTSBuffer failed.\n");
    }

    return;
}

HI_S32 main(HI_S32 argc, HI_CHAR *argv[])
{
    HI_S32 Ret;
    HI_HANDLE hWin;
    HI_HANDLE hAvplay;
    HI_HANDLE hDecSurface, hLayer, hLayerSurface, hDecoder;
    HI_UNF_AVPLAY_ATTR_S AvplayAttr;
    HI_UNF_SYNC_ATTR_S SyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;
    HI_CHAR InputCmd[32];
    STRUCTURE_3D_E en3dStructure;
    HI_UNF_ENC_FMT_E enFormat = HI_UNF_ENC_FMT_1080i_50;
    HI_U32 ProgNum;
    HI_UNF_HDMI_ATTR_S HdmiAttr;
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_RECT stRect;
    HIGO_BLTOPT_S stBltOpt = {0};
    HIGO_DEC_ATTR_S stSrcDesc;
    HI_U8 u8Alpha;
    HI_CHAR *aszFileName = "./osd.jpg";
	HIGO_ENCPICFRM_E enPirFrm = HIGO_ENCPICFRM_STEREO_SIDEBYSIDE_HALF;

    if (4 == argc)
    {
        enFormat = (HI_UNF_ENC_FMT_E)HIADP_Disp_StrToFmt(argv[3]);
        en3dStructure = stringTo3dStructure(argv[2]);
    }
    else if (3 == argc)
    {
        enFormat = HI_UNF_ENC_FMT_1080i_50;
        en3dStructure = stringTo3dStructure(argv[2]);
    }
    else
    {
        printf("Usage: sample_3d_video file [3D structure] [vo_format]\n"
               "       3D structure: tb--top and bottom, ss--side by side\n"
               "       vo_format: 1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        printf("Example:./sample_3d ./test.ts tb 1080i_50\n");
		printf("Default output in 3D format, press s to switch 3D and 2D.\n");
        return 0;
    }

    g_pTsFile = fopen(argv[1], "rb");
    if (!g_pTsFile)
    {
        printf("open file %s error!\n", argv[1]);
        return HI_FAILURE;
    }

    Ret = HI_GO_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_GO_Init failed.\n");
        return HI_FAILURE;
    }

    HI_SYS_Init();
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call SndInit failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(enFormat);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Disp_Init failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HI_UNF_HDMI_GetAttr(enTest_Hdmi_ID, &HdmiAttr);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_HDMI_GetAttr failed.\n");
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_HDMI_SetAVMute(enTest_Hdmi_ID, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_HDMI_SetAVMute failed.\n");
        goto DISP_DEINIT;
    }

    HdmiAttr.b3DEnable = HI_TRUE;

    switch (en3dStructure)
    {
    case STRUCTURE_3D_TOP_AND_BOTTOM:
        HdmiAttr.u83DParam = 6;
        break;
    case STRUCTURE_3D_SIDE_BY_SIDE:
        HdmiAttr.u83DParam = 8;
        break;
    default:
        break;
    }

    Ret = HI_UNF_HDMI_SetAttr(enTest_Hdmi_ID, &HdmiAttr);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_HDMI_SetAttr failed.\n");
        goto SND_DEINIT;
    }

    Ret = HI_UNF_HDMI_SetAVMute(enTest_Hdmi_ID, HI_FALSE);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_HDMI_SetAVMute failed.\n");
        goto SND_DEINIT;
    }

    Ret  = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL, &hWin);
    if (HI_SUCCESS != Ret)
    {
        printf("call VoInit failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_GO_GetLayerDefaultParam failed.\n");
        goto DISP_DEINIT;
    }

    stLayerInfo.PixelFormat  = HIGO_PF_8888;
    stLayerInfo.ScreenWidth  = 1920;
    stLayerInfo.ScreenHeight = 1080;
	//stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;

    Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_GO_CreateLayer failed.\n");
        goto DISP_DEINIT;
    }

    switch (en3dStructure)
    {
    case STRUCTURE_3D_TOP_AND_BOTTOM:
        enPirFrm = HIGO_ENCPICFRM_STEREO_TOPANDBOTTOM;
        break;
    case STRUCTURE_3D_SIDE_BY_SIDE:
        enPirFrm = HIGO_ENCPICFRM_STEREO_SIDEBYSIDE_HALF;
        break;
    default:
        break;
    }

	Ret = HI_GO_SetEncPicFrm(hLayer, enPirFrm);
	if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_SetEncPicFrm failed.\n");
        goto HIGO_DESTROY;
    }

    Ret = HI_GO_GetLayerAlpha(hLayer, &u8Alpha);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_GO_GetLayerAlpha failed.\n");
        goto HIGO_DESTROY;
    }

    u8Alpha = 200;
    Ret = HI_GO_SetLayerAlpha(hLayer, u8Alpha);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_GO_SetLayerAlpha failed.\n");
        goto HIGO_DESTROY;
    }

    Ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_GetLayerSurface failed.\n");
        goto HIGO_DESTROY;
    }

    stRect.x = stRect.y = 0;
    stRect.w = stLayerInfo.DisplayWidth;
    stRect.h = stLayerInfo.DisplayHeight;
    stBltOpt.EnableScale = HI_TRUE;

    /** clean the graphic layer Surface */
    Ret = HI_GO_FillRect(hLayerSurface, NULL, 0xff0000ff, HIGO_COMPOPT_NONE);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_FillRect failed.\n");
        goto HIGO_DESTROY;
    }

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = aszFileName;
    Ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_CreateDecoder failed.\n");
        goto HIGO_DESTROY;
    }

    /** decode it to Surface */
    Ret = HI_GO_DecImgData(hDecoder, 0, NULL, &hDecSurface);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_DecImgData failed.\n");
        goto HIGO_DESTROY;
    }

    Ret = HI_GO_DestroyDecoder(hDecoder);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_DestroyDecoder failed.\n");
        goto HIGO_DESTROY;
    }

    /** Blit it to graphic layer Surface */
    Ret = HI_GO_Blit(hDecSurface, NULL, hLayerSurface, &stRect, &stBltOpt);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_Blit failed.\n");
        goto HIGO_DESTROY;
    }

    /** fresh display*/
    Ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_RefreshLayer failed.\n");
        goto HIGO_DESTROY;
    }

    stRect.x = (stRect.x + stRect.w) % stLayerInfo.DisplayWidth;
    if (0 == stRect.x)
    {
        stRect.y = (stRect.y + stRect.h) % stLayerInfo.DisplayHeight;
    }

    /**  free Surface */
    Ret = HI_GO_FreeSurface(hDecSurface);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_GO_FreeSurface failed.\n");
        goto HIGO_DESTROY;
    }

    /** free the memory which saving the file name */
    usleep(200 * 1000);
    Ret = HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_OSD_0, HI_LAYER_ZORDER_MOVETOP);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_DISP_SetLayerZorder failed.\n");
        goto HIGO_DESTROY;
    }

    Ret  = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(PLAY_DMX_ID, HI_UNF_DMX_PORT_3_RAM);
    if (HI_SUCCESS != Ret)
    {
        printf("call VoInit failed.\n");
        goto VO_DEINIT;
    }

    Ret = HI_UNF_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_3_RAM, 0x200000, &g_TsBuf);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DMX_CreateTSBuffer failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    if (HI_SUCCESS != Ret)
    {
        printf("call RegADecLib failed.\n");
        goto TSBUF_FREE;
    }

    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    AvplayAttr.u32DemuxId = PLAY_DMX_ID;
    AvplayAttr.stStreamAttr.u32VidBufSize = (9 * 1024 * 1024);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto AVPLAY_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto VCHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_VO_AttachWindow failed:%#x.\n", Ret);
    }

    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_SND_Attach failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    pthread_mutex_init(&g_TsMutex, NULL);
    g_bStopTsThread = HI_FALSE;
    pthread_create(&g_TsThd, HI_NULL, (HI_VOID *)TsThread, HI_NULL);

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(PLAY_DMX_ID, &g_pProgTbl);
    if (Ret != HI_SUCCESS)
    {
        printf("call HIADP_Search_GetAllPmt failed.\n");
        goto PSISI_FREE;
    }

#if 0
    printf("select channel number to start play\n");
    memset(InputCmd, 0, 30);
    fgets(InputCmd, 30, stdin);
    ProgNum = atoi(InputCmd);
#endif

    ProgNum = 0;

    pthread_mutex_lock(&g_TsMutex);
    rewind(g_pTsFile);
    HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
    pthread_mutex_unlock(&g_TsMutex);
    Ret = HIADP_AVPlay_PlayProg(hAvplay, g_pProgTbl, ProgNum, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

    while (1)
    {
        static HI_U32 u32TplaySpeed = 2;
        printf("please input 'q' to quit!\n");
        memset(InputCmd, 0, 30);
        fgets(InputCmd, 30, stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

        if ('t' == InputCmd[0])
        {
            HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpt;
            printf("%dx tplay\n", u32TplaySpeed);
            stTplayOpt.u32TplaySpeed = u32TplaySpeed;
            HI_UNF_AVPLAY_SetDecodeMode(hAvplay, HI_UNF_VCODEC_MODE_I);
            HI_UNF_AVPLAY_Tplay(hAvplay, &stTplayOpt);
            u32TplaySpeed = (32 == u32TplaySpeed * 2) ? (2) : (u32TplaySpeed * 2);
            continue;
        }

        if ('r' == InputCmd[0])
        {
            printf("resume\n");
            HI_UNF_AVPLAY_SetDecodeMode(hAvplay, HI_UNF_VCODEC_MODE_NORMAL);
            HI_UNF_AVPLAY_Resume(hAvplay, HI_NULL);
            u32TplaySpeed = 2;
            continue;
        }

        if ('g' == InputCmd[0])
        {
            HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
            HI_UNF_AVPLAY_GetStatusInfo(hAvplay, &stStatusInfo);
            printf("localtime %u playtime %u\n", stStatusInfo.stSyncStatus.u32LocalTime,
                   stStatusInfo.stSyncStatus.u32PlayTime);
            continue;
        }

        if ('s' == InputCmd[0])
        {
            Ret = HI_UNF_HDMI_GetAttr(enTest_Hdmi_ID, &HdmiAttr);
            if (HI_SUCCESS != Ret)
            {
                printf("call HI_UNF_HDMI_GetAttr failed.\n");
                goto SND_DEINIT;
            }

            if (HI_TRUE == HdmiAttr.b3DEnable)
            {
                HdmiAttr.b3DEnable = HI_FALSE;
            }
            else
            {
                HdmiAttr.b3DEnable = HI_TRUE;

                switch (en3dStructure)
                {
                case STRUCTURE_3D_TOP_AND_BOTTOM:
                    HdmiAttr.u83DParam = 6;
                    break;
                case STRUCTURE_3D_SIDE_BY_SIDE:
                    HdmiAttr.u83DParam = 8;
                    break;
                default:
                    break;
                }
            }

            Ret = HI_UNF_HDMI_SetAttr(enTest_Hdmi_ID, &HdmiAttr);
            if (HI_SUCCESS != Ret)
            {
                printf("call HI_UNF_HDMI_SetAttr failed.\n");
                goto SND_DEINIT;
            }

        }

        ProgNum = atoi(InputCmd);
        if (ProgNum == 0)
        {
            ProgNum = 1;
        }

        pthread_mutex_lock(&g_TsMutex);
        rewind(g_pTsFile);
        HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
        pthread_mutex_unlock(&g_TsMutex);
        Ret = HIADP_AVPlay_PlayProg(hAvplay, g_pProgTbl, ProgNum - 1, HI_TRUE);
        if (Ret != HI_SUCCESS)
        {
            printf("call SwitchProgfailed!\n");
            break;
        }
    }

AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

PSISI_FREE:
    HIADP_Search_DeInit();

    g_bStopTsThread = HI_TRUE;
    pthread_join(g_TsThd, HI_NULL);
    pthread_mutex_destroy(&g_TsMutex);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
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

HIGO_DESTROY:
	HI_GO_DestroyLayer(hLayer);

DISP_DEINIT:
    HIADP_Disp_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();
	HI_GO_Deinit();

    fclose(g_pTsFile);
    g_pTsFile = HI_NULL;

    return Ret;
}
