/**
\file  
\brief   mce change to I frame decode sample
\copyright Shenzhen Hisilicon Co., Ltd.
\date 2008-2018
\version draft
\author x57522
\date 2010-8-31
*/

/***************************** Macro Definition ******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "hi_type.h"
#include "hi_unf_avplay.h"
#include "hi_unf_demux.h"
#include "hi_unf_sound.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#include "hi_unf_disp.h"
#include "hi_go.h"
#include "hi_adp.h"

#ifndef CHIP_TYPE_hi3110ev500
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif
/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/
HI_S32 prepare_Iframe(HI_CHAR *pFileName,HI_S32 Protocol,HI_UNF_AVPLAY_I_FRAME_S *pIFrame)
{
    HI_S32 Ret;
    HI_S32 IFrameFd,ReadLen;
    struct stat FileStat;

    switch (Protocol)
    {
        case 0 :
            pIFrame->enType = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
        case 1 :
            pIFrame->enType = HI_UNF_VCODEC_TYPE_MPEG4;
            break;
        case 2 :
            pIFrame->enType = HI_UNF_VCODEC_TYPE_AVS;
            break;
        case 3 :
            pIFrame->enType = HI_UNF_VCODEC_TYPE_H264;
            break;
        default:
            sample_printf("unsupported protocol\n");
            return HI_FAILURE;
    }

    Ret = stat(pFileName,&FileStat);
    if (HI_SUCCESS != Ret || 0 == FileStat.st_size)
    {
        perror("stat");
        return HI_FAILURE;
    }
    pIFrame->u32BufSize = FileStat.st_size;
    
    pIFrame->pu8Addr = (HI_U8*)malloc(pIFrame->u32BufSize);
    if (HI_NULL == pIFrame->pu8Addr)
    {
        perror("malloc");
        return HI_FAILURE;
    }

    IFrameFd = open(pFileName,O_RDONLY);
    if (HI_NULL == IFrameFd)
    {
        perror("open");
        free(pIFrame->pu8Addr);
        pIFrame->pu8Addr = HI_NULL;
        return HI_FAILURE;
    }

    ReadLen = read(IFrameFd,pIFrame->pu8Addr,pIFrame->u32BufSize);
    if (ReadLen < pIFrame->u32BufSize)    
    {
        perror("read");
        close(IFrameFd);
        free(pIFrame->pu8Addr);
        pIFrame->pu8Addr = HI_NULL;
        return HI_FAILURE;
    }

    close(IFrameFd);    
    return HI_SUCCESS;
}

HI_VOID release_Iframe(HI_UNF_AVPLAY_I_FRAME_S *pIFrame)
{
    if (HI_NULL != pIFrame->pu8Addr)
    {
        free(pIFrame->pu8Addr);
        pIFrame->pu8Addr = HI_NULL;
    }
    pIFrame->u32BufSize = 0;
}

HI_S32  prepare_avplay(HI_HANDLE *phAvplay,HI_HANDLE *phWin)
{
    HI_S32 Ret;
    HI_HANDLE hWin,hAvplay;
    HI_UNF_AVPLAY_ATTR_S AvplayAttr;
    HI_UNF_SYNC_ATTR_S   SyncAttr;

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        return HI_FAILURE;
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
    Ret |= HI_UNF_DMX_AttachTSPort(0,0);
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
        goto DMX_DEINIT;
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
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    *phAvplay = hAvplay;
    *phWin = hWin;
    return HI_SUCCESS;

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
    return Ret; 
}

HI_S32  release_avplay(HI_HANDLE hAvplay,HI_HANDLE hWin)
{
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);    
    HI_UNF_VO_DetachWindow(hWin, hAvplay);
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    HI_UNF_AVPLAY_Destroy(hAvplay);
    HI_UNF_AVPLAY_DeInit();
    HI_UNF_DMX_DetachTSPort(0);
    HI_UNF_DMX_DeInit();
    HI_UNF_VO_DestroyWindow(hWin);
    HIADP_VO_DeInit();
    HIADP_Disp_DeInit();
    HIADP_Snd_DeInit();
    return HI_SUCCESS;
}

HI_S32  prepare_higo(HI_HANDLE *phLayer)
{
    HI_S32 Ret;
    HIGO_LAYER_INFO_S stLayerInfo ;
    HI_HANDLE hLayer;
    
    Ret  = HI_GO_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_GO_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }
	
#ifndef CHIP_TYPE_hi3110ev500
    HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
    stLayerInfo.LayerID =  HIGO_LAYER_HD_0;
    stLayerInfo.ScreenWidth = 1280;
    stLayerInfo.CanvasHeight = 720;
#else
	HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
    stLayerInfo.LayerID =  HIGO_LAYER_SD_0;
    stLayerInfo.ScreenWidth = 720;
    stLayerInfo.CanvasHeight = 576;
#endif
    Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("-->HI_GO_CreateLayer failed Ret = 0x%x line %d \n",Ret,__LINE__);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    *phLayer = hLayer;

    Ret = HI_GO_SetLayerAlpha(hLayer,0);                
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_GO_SetLayerAlpha failed\n");
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


HI_S32  process_picture(HI_HANDLE hLayer,HI_UNF_CAPTURE_PICTURE_S *pCapPic,HI_BOOL bSave)
{
    HI_S32 Ret;
    HI_HANDLE hLayerSurface,hMemSurface;
    HIGO_SURINFO_S    stSurInfo;
    HIGO_BLTOPT2_S    stBltOpt;
#if 0
    sample_printf("=======IFrame Picture Info=============\n"
            "u32TopYStartAddr:%x\n"
            "u32TopCStartAddr:%x\n"
            "u32BottomYStartAddr:%x\n"
            "u32BottomCStartAddr:%x\n"
            "u32Width:%d\n"
            "u32Height:%d\n"
            "u32Stride:%d\n"
            "enVideoFormat:%d\n"
            "enFieldMode:%d\n"
            "enSampleType:%d\n",
            pCapPic->u32TopYStartAddr,
            pCapPic->u32TopCStartAddr,
            pCapPic->u32BottomYStartAddr,
            pCapPic->u32BottomCStartAddr,
            pCapPic->u32Width,
            pCapPic->u32Height,
            pCapPic->u32Stride,
            pCapPic->enVideoFormat,
            pCapPic->enFieldMode,
            pCapPic->enSampleType);
#endif
    memset(&stSurInfo,0,sizeof(stSurInfo));
    stSurInfo.Width = pCapPic->u32Width;
    stSurInfo.Height = pCapPic->u32Height;
    stSurInfo.PixelFormat = HIGO_PF_YUV420;
    stSurInfo.pPhyAddr[0] = (HI_CHAR*)pCapPic->u32TopYStartAddr;
    stSurInfo.pPhyAddr[1] = (HI_CHAR*)pCapPic->u32TopCStartAddr;
    stSurInfo.Pitch[0] = pCapPic->u32Stride;
    stSurInfo.Pitch[1] = pCapPic->u32Stride;
    stSurInfo.pVirAddr[0] = (HI_CHAR*)pCapPic->u32TopYStartAddr;
    stSurInfo.pVirAddr[1] = (HI_CHAR*)pCapPic->u32TopCStartAddr;

    Ret= HI_GO_CreateSurfaceFromMem(&stSurInfo, &hMemSurface);
    if (HI_SUCCESS!= Ret)
    {
        sample_printf("\n HI_GO_CreateSurfaceFromMem failed\n");
        return HI_FAILURE;
    }

    if(HI_TRUE == bSave)  /*save to jpeg picture with last frame*/
    {
        HIGO_ENC_ATTR_S stAttr;
        #define CAPTURE_PIC_PATH    "./capture.jpg"

        stAttr.ExpectType = HIGO_IMGTYPE_JPEG;
        stAttr.QualityLevel = 99;

        Ret= HI_GO_InitEncoder();
        if (HI_SUCCESS!= Ret)
        {
            sample_printf("\n HI_GO_InitEncoder failed\n");
        }
        Ret= HI_GO_EncodeToFile(hMemSurface , CAPTURE_PIC_PATH, &stAttr);
        if (HI_SUCCESS!= Ret)
        {
            sample_printf("\n HI_GO_EncodeToFile failed Ret=0x%x\n",Ret);
        }
        Ret= HI_GO_DeinitEncoder();
        if (HI_SUCCESS!= Ret)
        {
            sample_printf("\n HI_GO_DeinitEncoder failed\n");
        }
        sample_printf("\n save to capture.jpeg end\n");
    }
        
    Ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("-->HI_GO_GetLayerSurface failed Ret = 0x%x line %d \n",Ret,__LINE__);
        goto OUT;
    }
  
    memset(&stBltOpt,0,sizeof(HIGO_BLTOPT2_S));
    Ret = HI_GO_StretchBlit(hMemSurface,HI_NULL,hLayerSurface,HI_NULL,&stBltOpt);
    if (HI_SUCCESS!= Ret)
    {
        sample_printf("\n HI_GO_StretchBlit failed\n");
        goto OUT;
    }

    Ret = HI_GO_RefreshLayer(hLayer, HI_NULL);
    if (HI_SUCCESS!= Ret)
    {
        sample_printf("\n HI_GO_FreeSurface failed\n");
        HI_GO_DestroyLayer(hLayer);
        goto OUT;
    }

OUT:
    Ret |= HI_GO_FreeSurface(hMemSurface);
    if (HI_SUCCESS!= Ret)
    {
        sample_printf("\n HI_GO_FreeSurface failed\n");
    }

    return Ret;
}

HI_S32 resume_osd(HI_HANDLE hLayer)
{
    HI_S32 Ret;
    HI_HANDLE hLayerSurface;

    Ret = HI_GO_SetLayerAlpha(hLayer,0);                
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_GO_SetLayerAlpha failed\n");
        return HI_FAILURE;
    }

    Ret = HI_GO_GetLayerSurface(hLayer,&hLayerSurface);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_GO_GetLayerSurface failed:%#x\n",Ret);
        return HI_FAILURE;
    }
    
    Ret = HI_GO_FillRect(hLayerSurface,HI_NULL,0xFFFFFF,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_GO_FillRect failed:%#x\n",Ret);
        return HI_FAILURE;
    }
    
    Ret = HI_GO_RefreshLayer(hLayer,HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}

HI_S32  release_higo(HI_HANDLE hLayer)
{
    HI_GO_DestroyLayer(hLayer);
    HI_GO_Deinit();
    return HI_SUCCESS;    
}

HI_S32 process_Iframe(HI_HANDLE hAvplay,HI_UNF_AVPLAY_I_FRAME_S *pIframe,HI_HANDLE hLayer,HI_S32 ProcType)
{
    HI_S32 Ret;

    if (0 == ProcType)
    {
        Ret = HI_UNF_AVPLAY_DecodeIFrame(hAvplay,pIframe,HI_NULL);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call DecodeIFrame failed\n");
            return HI_FAILURE;
        }
    }
    else 
    {
        sample_printf("do not support\n");
    }

    return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc,HI_CHAR** argv)
{
    HI_S32         Ret;
    HI_HANDLE      hWindow,hAvplay,hLayer;
    HI_S32         Protocol,ProcType;
    HI_CHAR       *pFileName;
    HI_UNF_AVPLAY_I_FRAME_S stIFrame;
    HI_UNF_AVPLAY_STOP_OPT_S stStopOpt;
    HI_CHAR        InputCmd[32];
    HI_U32         u32Playtime;
    HI_SYS_PREAV_PARAM_S PreParm;

    if (argc < 3)
    {
        printf("usage:%s file protocol vo_format\n",argv[0]);
        printf("protocol 0-mpeg2 1-mpeg4 2-avs 3-h264\n");
        printf("vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        return HI_FAILURE;
    }

    pFileName = argv[1];
    Protocol = atoi(argv[2]);
    g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[3]);
    ProcType = 0;//Only display onto video


    HI_SYS_Init();
    HI_SYS_GetPlayTime(& u32Playtime);
    sample_printf("u32Playtime = %d\n",u32Playtime);
    
	//HI_SYS_PreAV(NULL);
    sample_printf("lc new HI_SYS_PreAV 1\n");
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP1;
    HI_SYS_PreAV(&PreParm); 
	sample_printf("continue to do setup\n"); 
	    
    Ret = prepare_Iframe(pFileName,Protocol,&stIFrame);
    if (HI_SUCCESS != Ret)
    {
        HI_SYS_DeInit();
        return HI_FAILURE;
    }

    Ret = prepare_avplay(&hAvplay,&hWindow);
    if (HI_SUCCESS != Ret)
    {
        goto OUT0;
    }

    sample_printf("lc before new HI_SYS_PreAV step2\n");//sleep(1);
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP2;
    PreParm.StepParam1 = hWindow;
    sample_printf("Step 2, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    
    sample_printf("lc before new HI_SYS_PreAV step3\n");//sleep(1);
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP3;
    PreParm.StepParam1 = hWindow;
    sample_printf("Step 3, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    sample_printf("8 now to show new window data\n");

    sample_printf("lc before new HI_SYS_PreAV step4\n");
    memset(&PreParm, 0, sizeof(HI_SYS_PREAV_PARAM_S));
    PreParm.enOption = HI_UNF_PREAV_STEP4;
    PreParm.StepParam1 = hWindow;
    sample_printf("Step 4, PreParm.StepParam1:0x%x\n", PreParm.StepParam1);
    HI_SYS_PreAV(&PreParm);
    sample_printf("quit MCE all\n");
    
    Ret = prepare_higo(&hLayer);
    if (HI_SUCCESS != Ret)
    {
        goto OUT1;
    }

    stStopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    stStopOpt.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &stStopOpt);
    Ret = process_Iframe(hAvplay,&stIFrame,hLayer,ProcType);
    if (HI_SUCCESS != Ret)
    {
        goto OUT2;
    }
    printf("please input the q to quit!\n");
    while(1)
    {
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }
    }

OUT2:
    release_higo(hLayer);
OUT1:
    release_avplay(hAvplay,hWindow);
OUT0:
    release_Iframe(&stIFrame);
    
    HI_SYS_DeInit();
    return Ret;
}

