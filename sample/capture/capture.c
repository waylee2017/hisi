/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

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

#include "hi_go.h"

HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;

static HI_HANDLE s_hHigoLayer = HI_NULL;
static HI_HANDLE s_hHigoLayerSurface = HI_NULL;

/*copy the last frame to surface*/
/*CNcomment: 将最后一帧拷贝到surface上的位置*/
static HI_RECT s_stSurfaceRect = {0,0,640,360};

static HI_RECT_S s_stWindowOutRect = {640,360,640,360};  /*position of video output*//*CNcomment:视频输出位置*/

static HI_S32 HigoCreatSurface()
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo ;

    /*resource init*//*CNcomment:资源初始化 */
    ret  = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        printf("-->Init failed ret = 0x%x line %d \n",ret,__LINE__);
        return HI_FAILURE;
    }
    #ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
    #else
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
    #endif
    if (HI_SUCCESS != ret)
    {
        printf("-->HI_GO_GetLayerDefaultParam failed ret = 0x%x line %d \n",ret,__LINE__);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    /*create layer and get the handle*//*CNcomment:创建图层并获取句柄 */
    #ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.LayerID =  HIGO_LAYER_SD_0;
    #else
    stLayerInfo.LayerID =  HIGO_LAYER_HD_0;
    #endif
    ret = HI_GO_CreateLayer(&stLayerInfo, &s_hHigoLayer);
    if (HI_SUCCESS != ret)
    {
        printf("-->HI_GO_CreateLayer failed ret = 0x%x line %d \n",ret,__LINE__);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    /*get layer surface*//*CNcomment:获取图层的surface*/
    ret = HI_GO_GetLayerSurface(s_hHigoLayer, &s_hHigoLayerSurface);
    if (HI_SUCCESS != ret)
    {
        printf("-->HI_GO_GetLayerSurface failed ret = 0x%x line %d \n",ret,__LINE__);
        HI_GO_DestroyLayer(s_hHigoLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    HI_GO_SetSurfaceAlpha(s_hHigoLayerSurface,128);
    HI_GO_SetLayerAlpha(s_hHigoLayer, 128);
    return HI_SUCCESS;
}

static HI_S32 HigoDestroySurface()
{
    #if 0
    if (NULL != s_hHigoLayerSurface)
    {
        HI_GO_FreeSurface(s_hHigoLayerSurface);
        s_hHigoLayerSurface = HI_NULL;
    }
    #endif

    if (s_hHigoLayer)
    {
        HI_GO_DestroyLayer(s_hHigoLayer);
        s_hHigoLayer = HI_NULL;
    }
    HI_GO_Deinit();

    return HI_SUCCESS;
}

HI_S32 CaptureProc(HI_HANDLE hAvplay,HI_HANDLE hWin,HI_BOOL bSave)
{
    HI_UNF_CAPTURE_PICTURE_S stCapturePicture;
    HIGO_SURINFO_S stSurInfo;
    HI_HANDLE hSrcSurface;
    HIGO_BLTOPT2_S stblt;
    HI_PIXELDATA pData;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;
    HI_S32 Ret = HI_FAILURE;


    printf("-----------CaptureToSurface begin-----------------!\n");
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    Stop.u32TimeoutMs = 0;
    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

    Ret = HI_UNF_VO_CapturePicture(hWin, &stCapturePicture);
    if (HI_SUCCESS!= Ret)
    {
        usleep(1000*50);
        Ret = HI_UNF_VO_CapturePicture(hWin, &stCapturePicture);
    }
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_UNF_VO_CapturePicture failed\n");
        return HI_FAILURE;
    }

    //printf("\n stCapturePicture.u32TopYStartAddr =0x%x \n",stCapturePicture.u32TopYStartAddr);
    //printf("\n stCapturePicture.u32TopCStartAddr =0x%x \n",stCapturePicture.u32TopCStartAddr);
    //printf("\n stCapturePicture.u32Stride =0x%x \n",stCapturePicture.u32Stride);

    memset(&stSurInfo,0,sizeof(stSurInfo));
    stSurInfo.Width = stCapturePicture.u32Width;
    stSurInfo.Height = stCapturePicture.u32Height;
    stSurInfo.PixelFormat = HIGO_PF_YUV420;
    stSurInfo.pPhyAddr[0] = (HI_CHAR*)stCapturePicture.u32TopYStartAddr;
    stSurInfo.pPhyAddr[1] = (HI_CHAR*)stCapturePicture.u32TopCStartAddr;
    stSurInfo.Pitch[0] = stCapturePicture.u32Stride;
    stSurInfo.Pitch[1] = stCapturePicture.u32Stride;
    stSurInfo.pVirAddr[0] = (HI_CHAR*)stCapturePicture.u32TopYStartAddr;
    stSurInfo.pVirAddr[1] = (HI_CHAR*)stCapturePicture.u32TopCStartAddr;

    Ret= HI_GO_CreateSurfaceFromMem(&stSurInfo, &hSrcSurface);
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_GO_CreateSurfaceFromMem failed\n");
        return HI_FAILURE;
    }

    /*save the last frame as bmp picture*/
    /*CNcomment:将最后一帧保存为bmp图片*/
    if(HI_TRUE == bSave)  
    {
        HIGO_ENC_ATTR_S stAttr;
        #define CAPTURE_PIC_PATH    "./capture.bmp"

        stAttr.ExpectType = HIGO_IMGTYPE_BMP;
        stAttr.QualityLevel = 99;

        printf("\n Encoder to capture.bmp begin\n");

        Ret= HI_GO_InitEncoder();
        if (HI_SUCCESS!= Ret)
        {
            printf("\n HI_GO_InitEncoder failed\n");
        }
        Ret= HI_GO_EncodeToFile(hSrcSurface , CAPTURE_PIC_PATH, &stAttr);
        if (HI_SUCCESS!= Ret)
        {
            printf("\n HI_GO_EncodeToFile failed Ret=0x%x\n",Ret);
        }
        Ret= HI_GO_DeinitEncoder();
        if (HI_SUCCESS!= Ret)
        {
            printf("\n HI_GO_DeinitEncoder failed\n");
        }
        printf("\n Encoder to capture.bmp end\n");

    }

    memset(&stblt,0,sizeof(stblt));
    Ret = HI_GO_StretchBlit(hSrcSurface,HI_NULL,s_hHigoLayerSurface,&s_stSurfaceRect,&stblt);
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_GO_StretchBlit failed\n");
        HI_GO_FreeSurface(hSrcSurface);
        return HI_FAILURE;
    }

    Ret = HI_GO_LockSurface(s_hHigoLayerSurface, pData,HI_TRUE);
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_GO_LockSurface failed\n");
        HI_GO_FreeSurface(hSrcSurface);
        return HI_FAILURE;
    }

    Ret = HI_GO_RefreshLayer(s_hHigoLayer, HI_NULL);
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_GO_FreeSurface failed\n");
        HI_GO_FreeSurface(hSrcSurface);
        return HI_FAILURE;
    }

    Ret = HI_GO_FreeSurface(hSrcSurface);
    if (HI_SUCCESS!= Ret)
    {
        printf("\n HI_GO_FreeSurface failed\n");
        return HI_FAILURE;
    } 
         
    HI_UNF_VO_CapturePictureRelease(hWin, &stCapturePicture);
    printf("-----------CaptureToSurface end-----------------!\n");
    printf("please input key to resume play !\n");
    return Ret;

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
    else
    {
        printf("Usage: sample_capture freq srate [qamtype] [vo_format]\n"
               "       qamtype:16|32|[64]|128|256|512 defaut[64]\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50  default HI_UNF_ENC_FMT_1080i_50\n");
        printf("Example:./sample_capture 610 6875 64 1080i_50\n");
        return HI_FAILURE;
    }

    HI_SYS_Init();
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(&s_stWindowOutRect,&hWin);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(0,0);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_Tuner_Connect(TUNER_USE,g_TunerFreq,g_TunerSrate,g_TunerQam);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
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
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.bQuickOutput = HI_FALSE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto WIN_DETACH;
    }

    ProgNum = 0;
    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

    Ret = HigoCreatSurface();
    if (Ret != HI_SUCCESS)
    {
        printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }
    while(1)
    {
        printf("please input the q to quit!\n");
        printf("please input the c to capture!\n");
        printf("please input the f to capture and save as capture.bmp!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }
        if ('c' == InputCmd[0])
        {
            printf("prepare to capture!\n");
            CaptureProc(hAvplay,hWin,HI_FALSE);
            continue;

        }
        if ('f' == InputCmd[0])
        {
            printf("prepare to capture and save as capture.bmp !\n");
            CaptureProc(hAvplay,hWin,HI_TRUE);
            continue;

        }
        ProgNum = atoi(InputCmd);
        Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
        if (Ret != HI_SUCCESS)
        {
            printf("call SwitchProgfailed!\n");
            break;
        }
    }

    HigoDestroySurface();

AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

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


