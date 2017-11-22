























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : optm_vo.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/21
  Last Modified :
  Description   : header file for video output control
  Function List :
  History       :
  1.Date        :
  Author        : g45208
  Modification  : Created file
******************************************************************************/
#include "optm_disp.h"
#include "optm_p_disp.h"
#include "optm_vo.h"
#include "optm_p_vo.h"
//#include "mpi_priv_vdec.h"
#include "drv_vdec_ext.h"

#include "drv_sync_ext.h"

#include "optm_debug.h"
//#include "hi_tde_ext.h"
//#include "hi_drv_tde.h"
#include "drv_tde_ext.h"

//#include "sync_drv.h"
#include "optm_vo_virtual.h"
#include "optm_hifb.h"
#include "optm_regintf.h"
#include "linux/list.h"
//#include "common_sys.h"
#include <linux/string.h>
#include "hi_drv_module.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_

#ifndef DEBUG_VO_VIRTUAL
#define DEBUG_VO_VIRTUAL(fmt...)    \
do{\
    DEBUG_PRINTK("\n [%s,%s]: %d ", __FILE__,__FUNCTION__, __LINE__);\
    DEBUG_PRINTK(fmt);\
} while(0)

#define DEBUG_VIDEO_FRAMEINFO(fmt...) \
do{\
    DEBUG_PRINTK("\n [%s]: %d ", __FUNCTION__, __LINE__);\
    DEBUG_PRINTK(fmt);\
} while(0)
#endif

#endif
/**************************************************************
 *          definitions of global variables                   *
 **************************************************************/
/* register times of OPTM main equipment */
extern HI_S32 g_s32OptmHalInitFlag;
//extern HI_VO_VIPARAM_S *g_VoViPara;

/*********************TDE functions****************************************/
FN_TDE_Open     pfnTdeOpen = HI_NULL;
FN_TDE_Close        pfnTdeClose = HI_NULL;
FN_TDE_BeginJob         pfnTdeBeginJob = HI_NULL;
FN_TDE_EndJob           pfnTdeEndJob = HI_NULL;
FN_TDE_CancelJob        pfnTdeCancelJob = HI_NULL;
FN_TDE_QuickCopy        pfnTdeQuickCopy = HI_NULL;

/*============ equipment ===============*/
/* open times of VO main equipment open */
HI_U32 g_OptmVoInitTime = 0;

/* mode of VO equipment */
HI_UNF_VO_DEV_MODE_E g_enVoDevMode;

/* type of mosaic mode */
HI_VO_MOSAIC_TYPE_E g_enVoMosaicType;
/* VO  channel :0 vsd, 1 vhd */
OPTM_VO_S g_stVoLayer[HI_UNF_VO_BUTT];


OPTM_SHADOW_WIN_S    g_stShadow;
OPTM_MIRACAST_WIN_S  g_miracast;

OPTM_OFL_TASK_MNG_S  g_stOflTaskMng;
OPTM_MOSAIC_WIN_S    g_stMasicWin;

#if 0
// buffer size flag for mosaic mode
#define OPTM_MOSAIC_BUFFER_MIN_SIZE       0  // 1920x1080
#define OPTM_MOSAIC_BUFFER_SIZE_DEFAULT   OPTM_MOSAIC_BUFFER_MIN_SIZE
#define OPTM_MOSAIC_BUFFER_SIZE_2048x1200 1  // 2048x1200
#define OPTM_MOSAIC_BUFFER_MAX_SIZE       OPTM_MOSAIC_BUFFER_SIZE_2048x1200

HI_S32 g_s32MosaciBufSizeFlag = OPTM_MOSAIC_BUFFER_SIZE_DEFAULT;
#endif

/*============ public templates ===============*/
/* VO ZME coefficients  */
OPTM_VZME_COEF_S g_stVzmeCoef;

struct workqueue_struct *Window_Reset = NULL;

extern OPTM_DISP_S g_stDispChn[HI_UNF_DISP_BUTT];

extern HI_BOOL g_VoSuspend;
DETECT_STAT_S   stDieInfoLast;


/**************************************************************
 *            definitions of macro functional units           *
 **************************************************************/

/*  get DISP channel handle */
#define D_DISP_GET_HANDLE(enDisp, pOptmDispCh) \
do{                             \
    pOptmDispCh = &(g_stDispChn[(HI_S32)enDisp]);\
}while(0)

/*  check null pointer */
#define D_VO_CHECK_PTR(ptr) \
do {if (HI_NULL == ptr){    \
        HI_ERR_VO("Error, an Null pointer.\n");\
        return HI_ERR_VO_NULL_PTR;           \
    }                                          \
} while (0)

/*  check whether VO equipment is open or not */
#define D_VO_CHECK_DEVICE_OPEN() \
do {                         \
    if (g_OptmVoInitTime < 1)\
    {                        \
        HI_ERR_VO("VO is not open.\n");  \
        return HI_ERR_VO_NO_INIT;   \
    }                               \
} while (0)

/*  check validity of VO Layer */
#define D_VO_CHECK_CHANNEL(enVoId) \
do {                               \
    if (enVoId >= HI_UNF_VO_BUTT)      \
    {                              \
        HI_ERR_VO("VO Layer is not exist.\n"); \
        return HI_ERR_VO_INVALID_PARA;\
    }                             \
} while (0)


/*  get VO Layer handle  */
#define D_VO_GET_HANDLE(enVo, pstVo) \
do{                                  \
    D_VO_CHECK_CHANNEL(enVo);        \
    pstVo = &(g_stVoLayer[(HI_S32)enVo]); \
}while(0)

/*  get WINDOW HANDLE */
#define D_VO_GET_WIN_HANDLE(hWin, pstWin) \
do{                         \
    HI_UNF_VO_E enVo;     \
    OPTM_VO_S *pstVo; \
    HI_U32 hWinTmp, WinId;     \
    if( ((HI_U32)hWin >> 16) != (HI_U32)HI_ID_VO){\
        HI_ERR_VO("VO invilad win handle.\n"); \
        return HI_ERR_VO_WIN_NOT_EXIST;}       \
    hWinTmp = hWin & 0xffffL;                     \
    enVo = (HI_UNF_VO_E)((HI_U32)hWinTmp >> 8); \
    WinId = (HI_U32)hWinTmp & 0xffL;        \
    D_VO_GET_HANDLE(enVo, pstVo);        \
    if (pstVo->bOpened != HI_TRUE){      \
        HI_ERR_VO("VO layer is not opened.\n"); \
        return HI_ERR_VO_WIN_NOT_EXIST;}        \
    if (WinId >= OPTM_VO_MAX_WIN_CHANNEL)       \
    {                                           \
        HI_ERR_VO("VO window is not exist.\n"); \
        return HI_ERR_VO_WIN_NOT_EXIST;         \
    }                                           \
    if (pstVo->stWin[WinId].bOpened != HI_TRUE) \
    {                                           \
        HI_ERR_VO("VO window is not OPEN.\n");  \
        return HI_ERR_VO_WIN_NOT_EXIST;         \
    }                                           \
    pstWin = &(pstVo->stWin[WinId]);            \
}while(0)



/**************************************************************
 *                definitions of basic functions              *
 **************************************************************/

/*  check validity of output window */
#if 0
HI_S32 VoCheckRect(HI_RECT_S *pstRect)
{
    if (   (pstRect->s32X < OPTM_RECT_MIN_X)
        || (pstRect->s32X > OPTM_RECT_MAX_X)
        || (pstRect->s32Y < OPTM_RECT_MIN_Y)
        || (pstRect->s32Y > OPTM_RECT_MAX_Y)
        || (pstRect->s32Width < OPTM_RECT_MIN_W)
        || (pstRect->s32Width > OPTM_RECT_MAX_W)
        || (pstRect->s32Height < OPTM_RECT_MIN_H)
        || (pstRect->s32Height > OPTM_RECT_MAX_H) )
    {
       return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/*  check validity of window, with no use temporarily */
HI_S32 VoCheckRect2(HI_RECT_S *pstBaseRect, HI_RECT_S *pstDstRect)
{

    if (pstDstRect->s32X >= (pstBaseRect->s32Width - OPTM_RECT_MIN_W))
    {
        return HI_FAILURE;
    }
    if ( (pstDstRect->s32X+pstDstRect->s32Width) > (pstBaseRect->s32Width+pstBaseRect->s32X))
    {
        return HI_FAILURE;
    }

    if (pstDstRect->s32Y >= (pstBaseRect->s32Height- OPTM_RECT_MIN_H))
    {
        return HI_FAILURE;
    }
    if ( (pstDstRect->s32Y+pstDstRect->s32Height) > (pstBaseRect->s32Height+pstBaseRect->s32Y))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
#endif



/**************************************************************
 *                declarations of inner functions             *
 **************************************************************/

HI_VOID VOISR_PIPIsr(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_MosaicTaskStart(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_MosaicTaskFinish(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_MosaicPlay(HI_U32 u32Param0, HI_U32 u32Param1);

HI_S32 VOInitMscWin(OPTM_MOSAIC_WIN_S *pstMosaic, HI_S32 w, HI_S32 h);
HI_S32 VODeInitMscWin(OPTM_MOSAIC_WIN_S *pstMosaic);

static HI_S32  VODeInitWindow(OPTM_WIN_S *pstWin);
static HI_S32 VOISR_TdeCopy(HI_UNF_VO_FRAMEINFO_S *pDst,
                            HI_UNF_VO_FRAMEINFO_S *pSrc,
                            HI_U32 *pFinishFlag, HI_BOOL bBlock, HI_U32 Timeout);
static OPTM_FRAME_S *VOISR_PutOneFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pstNewFrame);

static HI_S32 VOISR_FrameParse(OPTM_FRAME_S *pstNextFrame, FRAME_SOURCE_E enFrameSrc,OPTM_WIN_S *pstMainWin);
//HI_VOID OPTM_M_FrameRateDetect(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrameOptm);
HI_VOID OPTM_M_FrameRateRevise(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrameOptm);

static HI_VOID OPTM_M_CorrectProgInfo(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrameOptm);
//static HI_U32 OPTM_M_CorrectFrameRate(HI_U32 u32FrameRate);
static HI_S32 VOISR_SetFrameDisplayTime(OPTM_FRAME_S *pstFrame, OPTM_ALG_FRC_CTRL_S *pstFrc);

#ifndef MINI_SYS_SURPORT
//signed int VO_Destroy_And_SwitchFromCast(HI_BOOL force_flag,HI_HANDLE  cast_handle);
#endif

/***********************************************************************************
* Function:      VO_Init / VO_DeInit
* Description:   initialize / de-initialize VO equipment
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VOInitLayer(HI_UNF_VO_E enVo)
{
    OPTM_VO_S *pstVo;
    HI_S32 i;

    D_VO_GET_HANDLE(enVo, pstVo);

    pstVo->bOpened = HI_FALSE;
    pstVo->bEnable = HI_FALSE;

    pstVo->enUnfVo = enVo;
    pstVo->bOffLineModeEn = HI_FALSE;

    if (enVo == HI_UNF_VO_HD0)
    {
        unsigned int pcs;
        pstVo->enDispLayer = HI_UNF_DISP_LAYER_VIDEO_0;


        pstVo->enVoHalId[2] = HAL_DISP_LAYER_VIDEO4;
        pstVo->s32HalVoNUmber = 3;


        pstVo->enVoHalId[0] = HAL_DISP_LAYER_VIDEO1;
        pstVo->enVoHalId[1] = HAL_DISP_LAYER_VIDEO2;

        pstVo->enUnfDisp    = HI_UNF_DISP_HD0;
        pstVo->enDispHalId  = HAL_DISP_CHANNEL_DHD;

        DISP_GetColorSpace(HAL_DISP_CHANNEL_DHD, &pcs);
        if ( pcs == OPTM_CS_eRGB)
        {
            pstVo->enSrcCS   = OPTM_CS_eXvYCC_709;
            pstVo->enDstCS   = OPTM_CS_eRGB;
        }
        else
        {
            pstVo->enSrcCS   = OPTM_CS_eXvYCC_709;
            pstVo->enDstCS   = OPTM_CS_eXvYCC_709;
        }


        OPTM_M_VO_InitAttr(HAL_DISP_LAYER_VIDEO1);
        OPTM_M_VO_SetCscMode(HAL_DISP_LAYER_VIDEO1, pstVo->enSrcCS, pstVo->enDstCS);

        pstVo->bAlgFlag = (1 << HI_ALG_TYPE_ACC) + (1 << HI_ALG_TYPE_ACM);


    }
    else if (enVo == HI_UNF_VO_SD0)
    {
        pstVo->enDispLayer = HI_UNF_DISP_LAYER_VIDEO_0;
        pstVo->s32HalVoNUmber = 1;
        pstVo->enVoHalId[0] = HAL_DISP_LAYER_VIDEO3;
        pstVo->enVoHalId[1] = HAL_DISP_LAYER_BUTT;
        pstVo->enVoHalId[2] = HAL_DISP_LAYER_BUTT;

        pstVo->enUnfDisp    = HI_UNF_DISP_SD0;
        pstVo->enDispHalId  = HAL_DISP_CHANNEL_DSD;

        pstVo->enSrcCS   = OPTM_CS_eXvYCC_601;
        pstVo->enDstCS   = OPTM_CS_eXvYCC_601;

        OPTM_M_VO_InitAttr(HAL_DISP_LAYER_VIDEO3);
        OPTM_M_VO_SetCscMode(HAL_DISP_LAYER_VIDEO3, pstVo->enSrcCS, pstVo->enDstCS);
        pstVo->bAlgFlag = 0;
    }

    pstVo->u32Alpha = 255;
    pstVo->unUpFlag.u32Value = 0;

    pstVo->s32ActWinNum    = 0;
    pstVo->s32NewActWinNum = 0;
    pstVo->bWbc1FillBlack = HI_FALSE;
    pstVo->u32Wbc1FillNum = OPTM_VO_WBC1_NUM;
    for (i=0; i<OPTM_VO_WBC1_NUM; i++)
    {
        pstVo->u32Wbc1FillAddr[i] = 0;
    }
    pstVo->bWbc1FillTask = HI_FALSE;

    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    pstVo->s32NewMainWinNum = 0;
    pstVo->s32MainWinNum = 0;
    pstVo->s32WbcWinIndex = -1;
#endif

    /*------ set default property ---------*/
    for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        pstVo->stWin[i].bOpened = HI_FALSE;
        pstVo->stMainWin[i].bOpened = HI_FALSE;
        pstVo->ahNewMainWin[i] = HI_NULL;
        pstVo->ahMainWin[i] = HI_NULL;
    }
    return HI_SUCCESS;
}

HI_S32 VODeInitLayer(HI_UNF_VO_E enVo)
{
    OPTM_VO_S *pstVo;
    HI_S32 i;

    D_VO_GET_HANDLE(enVo, pstVo);

    /*------ set default  property ---------*/
    for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        if (pstVo->stWin[i].bOpened != HI_FALSE)
        {
            VODeInitWindow(&(pstVo->stWin[i]));
        }
    }
    for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        if (pstVo->stMainWin[i].bOpened != HI_FALSE)
        {
            VODeInitMainWindow(&(pstVo->stMainWin[i]));
        }
    }
    return HI_SUCCESS;
}


extern FN_SYNC_VidProc pfnSyncVidProc;
extern FN_SYNC_VerifyHandle pfnSyncVfy;

HI_S32  VO_GetExportSymbol(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;
    TDE_EXPORT_FUNC_S *pTDEFunc = HI_NULL;

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_TDE, (HI_VOID**)&pTDEFunc);

    if ((pTDEFunc == HI_NULL) || (HI_SUCCESS != s32Ret))
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeOpen != HI_NULL)
        pfnTdeOpen = pTDEFunc->pfnTdeOpen;
    else
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeClose != HI_NULL)
        pfnTdeClose = pTDEFunc->pfnTdeClose;
    else
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeBeginJob != HI_NULL)
        pfnTdeBeginJob = pTDEFunc->pfnTdeBeginJob;
    else
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeEndJob != HI_NULL)
        pfnTdeEndJob = pTDEFunc->pfnTdeEndJob;
    else
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeCancelJob != HI_NULL)
        pfnTdeCancelJob = pTDEFunc->pfnTdeCancelJob;
    else
        goto _VO_GetPfnFailed;

    if (pTDEFunc->pfnTdeQuickCopy != HI_NULL)
        pfnTdeQuickCopy = pTDEFunc->pfnTdeQuickCopy;
    else
        goto _VO_GetPfnFailed;

    {
            SYNC_EXPORT_FUNC_S *pstSyncFunc = HI_NULL;

            s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_SYNC, (HI_VOID**)&pstSyncFunc);

            if (pstSyncFunc && (HI_SUCCESS == s32Ret))
            {
                if (pstSyncFunc->pfnSYNC_VidProc && pstSyncFunc->pfnSYNC_VerifyHandle)
                {
                    pfnSyncVidProc = pstSyncFunc->pfnSYNC_VidProc;
                    pfnSyncVfy       = pstSyncFunc->pfnSYNC_VerifyHandle;
                }
                else
                {
                    HI_ERR_VO("Vo Get sync function failed!\n");
                    return HI_FAILURE;
                }
            }
            else
            {
                HI_ERR_VO("Vo Get sync function failed!\n");
                return HI_FAILURE;
            }
        }


    return HI_SUCCESS;

_VO_GetPfnFailed:
    /*********************TDE functions****************************************/
    pfnTdeOpen = HI_NULL;
    pfnTdeClose = HI_NULL;
    pfnTdeBeginJob = HI_NULL;
    pfnTdeEndJob = HI_NULL;
    pfnTdeCancelJob = HI_NULL;
    pfnTdeQuickCopy = HI_NULL;

    return HI_FAILURE;
}

HI_S32 VO_Init(HI_VOID)
{
    //    OPTM_M_VO_ATTR_S stVoAttr;

    if (g_s32OptmHalInitFlag < 1)
    {
        HI_ERR_VO("DISP has not been Inited!\n");
        return HI_FAILURE;
    }

    if (g_OptmVoInitTime > 0)
    {
        HI_INFO_VO("VO has been Inited!\n");
        return HI_SUCCESS;
    }

    if (HI_FAILURE == VO_GetExportSymbol())
    {
        HI_ERR_VO("you should insert tde.ko firse\n");
        return HI_FAILURE;
    }

    if(pfnTdeOpen() != HI_SUCCESS)
    {
        HI_ERR_VO("VO Open tde failed!\n");
        return HI_FAILURE;
    }

    /*  create public components */
    /*  create coefficients table of ZME */
    if (OPTM_AA_InitVzmeCoef(&g_stVzmeCoef) != HI_SUCCESS)
    {
        HI_ERR_VO("VO malloc zme coef buf failed.\n");
        pfnTdeClose();
        return HI_FAILURE;
    }

    /*  create black frame */
    if (OPTM_CreateBlackFrame() != HI_SUCCESS)
    {
        HI_ERR_VO("VO malloc bf buf failed.\n");
        OPTM_AA_DeInitVzmeCoef(&g_stVzmeCoef);
        pfnTdeClose();
        return HI_FAILURE;
    }

#ifdef HI_DISP_ACC_SUPPORT
    /*  initialize ACC */
    if (OPTM_AA_AccCoefInit() != HI_SUCCESS)
    {
        HI_ERR_VO("VO malloc ACC buf failed.\n");
        OPTM_DestroyBlackFrame();
        OPTM_AA_DeInitVzmeCoef(&g_stVzmeCoef);
        pfnTdeClose();
        return HI_FAILURE;
    }
#endif

    /*
    // initialize VHD Module
    OPTM_M_VO_InitAttr(HAL_DISP_LAYER_VIDEO1);
    OPTM_M_VO_GetAttr(HAL_DISP_LAYER_VIDEO1, &stVoAttr);
    OPTM_M_VO_SetAttr(HAL_DISP_LAYER_VIDEO1, &stVoAttr);

    // initialize VAD Module
    OPTM_M_VO_InitAttr(HAL_DISP_LAYER_VIDEO2);
    OPTM_M_VO_GetAttr(HAL_DISP_LAYER_VIDEO2, &stVoAttr);
    OPTM_M_VO_SetAttr(HAL_DISP_LAYER_VIDEO2, &stVoAttr);


    // initialize VSD Module
    OPTM_M_VO_InitAttr(HAL_DISP_LAYER_VIDEO3);
    OPTM_M_VO_GetAttr(HAL_DISP_LAYER_VIDEO3, &stVoAttr);
    OPTM_M_VO_SetAttr(HAL_DISP_LAYER_VIDEO3, &stVoAttr);
     */

    /*  set equipment 0 */
    memset((HI_VOID *)&(g_stVoLayer[0]), 0, sizeof(OPTM_VO_S) * (HI_U32)HI_UNF_VO_BUTT);
    //memset((HI_VOID *)&g_stShadow, 0, sizeof(OPTM_SHADOW_WIN_S));
    //memset((HI_VOID *)&g_stMasicWin, 0, sizeof(OPTM_MOSAIC_WIN_S));

    /*  initialize Layer */
    VOInitLayer(HI_UNF_VO_HD0);
#ifndef HI_VDP_ONLY_SD_SUPPORT
    VOInitLayer(HI_UNF_VO_SD0);
#endif

    g_OptmVoInitTime = 1;
    g_enVoDevMode = HI_UNF_VO_DEV_MODE_NORMAL;
    g_enVoMosaicType = HI_VO_MOSAIC_TYPE_NORMAL;
    Window_Reset = create_workqueue("Window_Reset");

    HI_INFO_VO("VO device init.\n");

    return HI_SUCCESS;
}

HI_S32 VO_DeInit(HI_VOID)
{
    if (g_OptmVoInitTime < 1)
    {
        HI_INFO_VO("VO has been Deinit.\n");
        return HI_SUCCESS;
    }

    VO_Close(HI_UNF_VO_HD0);
    VO_Close(HI_UNF_VO_SD0);

    /* de-initialize Layer */
    VODeInitLayer(HI_UNF_VO_HD0);
    VODeInitLayer(HI_UNF_VO_SD0);

    /* destroy public components */

#ifdef HI_DISP_ACC_SUPPORT
    /* release acc buf */
    OPTM_AA_AccCoefDeInit();
#endif

    /* release black frame */
    OPTM_DestroyBlackFrame();

    /* release coefficients table of ZME */
    OPTM_AA_DeInitVzmeCoef(&g_stVzmeCoef);

    pfnTdeClose();

    g_OptmVoInitTime = 0;

    if (Window_Reset != NULL)
        destroy_workqueue(Window_Reset);
    HI_INFO_VO("VO device deinit.\n");

    return HI_SUCCESS;
}


HI_VOID VOISR_ReadDieInfo(HI_U32 u32Param0, HI_U32 u32Param1)
{
    S_VOU_V400_REGS_TYPE *pVoReg_Die = (S_VOU_V400_REGS_TYPE *)u32Param0;
    HI_U32 ii;
    DETECT_STAT_S *pstDutOut = &stDieInfoLast;

    pstDutOut->frmITDiff = RegRead(&(pVoReg_Die->VHDPDFRMITDIFF.u32));

    pstDutOut->frmHstBin.HISTOGRAM_BIN_1 = RegRead(&(pVoReg_Die->VHDPDHISTBIN[0].u32));
    pstDutOut->frmHstBin.HISTOGRAM_BIN_2 = RegRead(&(pVoReg_Die->VHDPDHISTBIN[1].u32));
    pstDutOut->frmHstBin.HISTOGRAM_BIN_3 = RegRead(&(pVoReg_Die->VHDPDHISTBIN[2].u32));
    pstDutOut->frmHstBin.HISTOGRAM_BIN_4 = RegRead(&(pVoReg_Die->VHDPDHISTBIN[3].u32));
    //DEBUG_PRINTK("BIN_2=%d\n", pstDutOut->frmHstBin.HISTOGRAM_BIN_2);

    pstDutOut->frmPcc.PCC_BWD  = RegRead(&(pVoReg_Die->VHDPDPCCBWD.u32));
    pstDutOut->frmPcc.PCC_FWD  = RegRead(&(pVoReg_Die->VHDPDPCCFWD.u32));
    pstDutOut->frmPcc.PCC_FFWD = RegRead(&(pVoReg_Die->VHDPDPCCFFWD.u32));
    pstDutOut->frmPcc.PCC_CRSS = RegRead(&(pVoReg_Die->VHDPDPCCCRSS.u32));
    pstDutOut->frmPcc.PCC_BWD_TKR = RegRead(&(pVoReg_Die->VHDPDPCCBWDTKR.u32));
    pstDutOut->frmPcc.PCC_FWD_TKR = RegRead(&(pVoReg_Die->VHDPDPCCFWDTKR.u32));
    for (ii = 0; ii < 9; ii++)
    {
        pstDutOut->frmPcc.PCCBLK_BWD[ii] = RegRead(&(pVoReg_Die->VHDPDPCCBLKBWD[ii].u32));
        pstDutOut->frmPcc.PCCBLK_FWD[ii] = RegRead(&(pVoReg_Die->VHDPDPCCBLKFWD[ii].u32));
    }

    pstDutOut->frmUm.match_UM = RegRead(&(pVoReg_Die->VHDPDUMMATCH0.u32));
    pstDutOut->frmUm.nonmatch_UM = RegRead(&(pVoReg_Die->VHDPDUMNOMATCH0.u32));
    pstDutOut->frmUm.match_UM2 = RegRead(&(pVoReg_Die->VHDPDUMMATCH1.u32));
    pstDutOut->frmUm.nonmatch_UM2 = RegRead(&(pVoReg_Die->VHDPDUMNOMATCH1.u32));

    pstDutOut->lasiStat.lasiCnt14 = RegRead(&(pVoReg_Die->VHDPDLASICNT14.u32));
    pstDutOut->lasiStat.lasiCnt32 = RegRead(&(pVoReg_Die->VHDPDLASICNT32.u32));
    pstDutOut->lasiStat.lasiCnt34 = RegRead(&(pVoReg_Die->VHDPDLASICNT34.u32));

    pstDutOut->SceneChangeInfo.iCHD = RegRead(&(pVoReg_Die->VHDPDICHDCNT.u32));
    for (ii = 0; ii < 16; ii++)
    {
        pstDutOut->StillBlkInfo.BlkSad[ii] = RegRead(&(pVoReg_Die->VHDPDSTLBLKSAD[ii].u32));
    }
}

HI_S32 VOInitWbc0(OPTM_SHADOW_WIN_S *pShadow, HI_VO_MOSAIC_TYPE_E MosaicType);
HI_VOID VODeInitWbc0(OPTM_SHADOW_WIN_S *pShadow);
extern S_VOU_V400_REGS_TYPE *pVoReg;
/***********************************************************************************
 * Function:      VO_Open / VO_Close
 * Description:    open /  close  video  layer
 * Data Accessed:
 * Data Updated:
 * Input:         enVo -- video  layer ID
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_Open(HI_UNF_VO_E enVo)
{
    OPTM_DISP_S          *pOptmDisp;
    OPTM_M_DISP_INFO_S   OptmDispInfo;
    OPTM_VO_S            *pstVo;
    HI_S32               nRet;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_HANDLE(enVo, pstVo);

    if(HI_TRUE == pstVo->bOpened)
    {
        return HI_SUCCESS;
    }

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);

    /* If the disp, in which vo is located, is the isogeny target,
     * vo is not allowed to be opened
     */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        HI_ERR_VO("Disp of vo is DstDisp.\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    OPTM_M_GetDispInfo(pstVo->enDispHalId, &OptmDispInfo);
    pstVo->stDispInfo = OptmDispInfo;

    if (HI_FAILURE == VO_GetExportSymbol())
    {
        HI_ERR_VO("you should insert tde.ko firse\n");
        return HI_FAILURE;
    }
    if(HI_UNF_VO_HD0 == enVo)
    {
#if 0
        if (HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode)
        {
            HI_UNF_DISP_INTF_TYPE_E enIntfType;
            OPTM_DISP_LCD_FMT_E enEncFmt;
            HI_S32 w, h;

            pstVo->bOffLineModeEn = HI_TRUE;
            pstVo->bBeBusy        = HI_FALSE;

            // check current interface type and lcd format
            if (HAL_DISP_CHANNEL_DSD == pstVo->enDispHalId)
                nRet = DISP_GetIntfType(HI_UNF_DISP_SD0, &enIntfType);
            else
                nRet = DISP_GetIntfType(HI_UNF_DISP_HD0, &enIntfType);

            if (  (nRet == HI_SUCCESS) && (HI_UNF_DISP_INTF_TYPE_LCD == enIntfType))
            {
                // if mosaic buffer size is too small for current display format, return failure.
                if (OPTM_MOSAIC_BUFFER_SIZE_DEFAULT == g_s32MosaciBufSizeFlag)
                {
                    enEncFmt = OPTM_DISP_LCD_FMT_BUTT;

                    if (HAL_DISP_CHANNEL_DSD == pstVo->enDispHalId)
                        nRet = DISP_GetLcdFormat(HI_UNF_DISP_SD0, &enEncFmt);
                    else
                        nRet = DISP_GetLcdFormat(HI_UNF_DISP_HD0, &enEncFmt);

                    if (     (enEncFmt == OPTM_DISP_LCD_FMT_VESA_1600X1200_60HZ)
                            || (enEncFmt == OPTM_DISP_LCD_FMT_VESA_1920X1200_60HZ)
                            || (enEncFmt == OPTM_DISP_LCD_FMT_VESA_2048X1152_60HZ)
                       )
                    {
                        HI_ERR_VO("VO masic buffer size (set in bootargs) is too small for current VGA fmt %d.\n", OptmDispInfo.enLcdFmt);
                        return HI_ERR_VO_INVALID_OPT;
                    }
                }
            }

            if (OPTM_MOSAIC_BUFFER_SIZE_2048x1200 == g_s32MosaciBufSizeFlag)
            {
                w = 2048;
                h = 1200;
            }
            else
            {
                w = 1920;
                h = 1080;
            }

            /*  initialize MOSAIC window and buffer */
            nRet = VOInitMscWin(&g_stMasicWin, w, h);
            if (nRet != HI_SUCCESS)
            {
                return HI_FAILURE;
            }

            /* set VHD offline mode */
            OPTM_M_VO_SetOffLine(HAL_DISP_LAYER_VIDEO1, HI_TRUE);

            /*  close ACC function */
            //OPTM_M_VO_SetCapAcc(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

            /* In offline mode, write back 422 data, with COPY mode to make sure that
             * special bit stream can pass through.
             */
            OPTM_M_VO_SetFirMode(HAL_DISP_LAYER_VIDEO1, HAL_IFIRMODE_COPY);

            pstVo->pstWbcBuf = &(g_stMasicWin.stWbcBuf);

#ifdef OPTM_VIDEO_MIXER_ENABLE
            /* in offline mode, only VAD */
            OPTM_M_SetVmLayer(HAL_DISP_LAYER_VIDEO2, HAL_DISP_LAYER_VIDEO2, HAL_DISP_LAYER_VIDEO2);
#endif

            // DEBUG_VO_VIRTUAL("pstWbcBuf : %x\n",pstVo->pstWbcBuf );
            /* w00136937 */
#if 1
            if (g_enVoMosaicType == HI_VO_MOSAIC_TYPE_STANDALONE)
            {
                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_OFLTASK,
                        VOISR_WBC1ProcessStart_standalone, (HI_U32)pstVo, (HI_U32)(&g_stMasicWin));
                HI_ASSERT(nRet!=HI_FAILURE);

                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_VTEINT, OPTM_M_VTEINT_ORDER_OFLTASK,
                        VOISR_WBC1ProcessTaskFinish_standalone, (HI_U32)pstVo, (HI_U32)(&g_stShadow));
                HI_ASSERT(nRet!=HI_FAILURE);

                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VAD, VOISR_MosaicPlay_standalone, (HI_U32)(&g_stMasicWin), 0);
                HI_ASSERT(nRet!=HI_FAILURE);

            }
            else
            {
                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_OFLTASK,
                        VOISR_WBC1ProcessStart, (HI_U32)pstVo, 0);
                HI_ASSERT(nRet!=HI_FAILURE);

                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_VTEINT, OPTM_M_VTEINT_ORDER_OFLTASK,
                        VOISR_WBC1ProcessTaskFinish, (HI_U32)pstVo, 0);
                HI_ASSERT(nRet!=HI_FAILURE);

                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VAD, VOISR_MosaicPlay, (HI_U32)(&g_stMasicWin), 0);
                HI_ASSERT(nRet!=HI_FAILURE);
            }

#else
            pstVo->pstMosaicWin = &g_stMasicWin;
            nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_OFLTASK,
                    VOISR_MosaicTaskStart, (HI_U32)pstVo, 0);
            HI_ASSERT(nRet!=HI_FAILURE);

            nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_VTEINT, OPTM_M_VTEINT_ORDER_OFLTASK,
                    VOISR_MosaicTaskFinish, (HI_U32)pstVo, 0);
            HI_ASSERT(nRet!=HI_FAILURE);

            nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VAD, VOISR_MosaicPlay, (HI_U32)(&g_stMasicWin), 0);
            HI_ASSERT(nRet!=HI_FAILURE);
#endif

            /* In mosaic mode, write-back data is already BT709, VAD needs no CSC transformation  */

            /*  close ACM function of VAD  */

            /* As for operation of accessing DDR, since the ARM priority is lower than TDE,
             * when TDE is busy, execution time of program in ARM will be longer.
             * The execution time of VOU interrupt service program will be elongated from 200 um to 3-4 ms,
             * causing errors of field order of interlaced output.
             * Thus, putting start position of VOU interrupt to the beginning of valid region,
             * the corresponding delaytime will change from zero to the time of one interrupt interval,
             * but MOSAIC mode is the same.
             *
             * 20110709 delete by g45208, mosaic use 3 fb, so vtthd1 setting for mosaic mode
             * is same as normal mode.
             */
            //OPTM_M_SetVtthPosiFlagAndEffect(HAL_DISP_CHANNEL_DHD, 1, 0);

            /* if we use standalone mode, we will reinit wbc0 ,add by t00177539*/
            if ((pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
                    && (HI_VO_MOSAIC_TYPE_STANDALONE == g_enVoMosaicType))
            {
                VODeInitWbc0(&g_stShadow);
                VOInitWbc0(&g_stShadow, g_enVoMosaicType);
                OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO);
                nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO, VOISR_ShadowIsr_standalone, (HI_U32)(&g_stShadow), (HI_U32)(&g_stMasicWin));
                HI_ASSERT(nRet!=HI_FAILURE);
                nRet = OPTM_WBC1FB_Create(&(g_stShadow.stWbcBuf_standalone), HI_UNF_FORMAT_YUV_PACKAGE_UYVY, 720, 576, OPTM_VO_WBC1_NUM);
                HI_ASSERT(nRet!=HI_FAILURE);
            }
        }
        else
#endif
        {
            pstVo->bOffLineModeEn = HI_FALSE;

            /*  set vhd online mode */
            OPTM_M_VO_SetOffLine(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

            /*  in online mode, employ 8-rank filtering mode */

            OPTM_M_VO_SetFirMode(HAL_DISP_LAYER_VIDEO1, HAL_IFIRMODE_6TAPFIR);

#ifdef OPTM_VIDEO_MIXER_ENABLE
            /*  in offline mode, only VAD */
            OPTM_M_SetVmLayer(HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1);
#endif

            nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VO, VOISR_PIPIsr, (HI_U32)enVo, 0);
            nRet |= OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD3, OPTM_M_HDVTTHD3_DIE_READ,
                    VOISR_ReadDieInfo, (HI_U32)(pVoReg), HI_UNF_DISP_HD0);
            HI_ASSERT(nRet!=HI_FAILURE);

            /* in normal mode, VAD needs CSC transformation  */

            /*  open VAD ACM function */


            /* in normal mode, VED needs CSC transformation  */
            //OPTM_M_VO_SetCscEnable(HAL_DISP_LAYER_VIDEO4, HI_TRUE);

            /*  open VED ACM function */
            //OPTM_M_VO_SetCapAcm(HAL_DISP_LAYER_VIDEO4, HI_FALSE);

            /* As for operation of accessing DDR, since the ARM priority is lower than TDE,
             * when TDE is busy, execution time of program in ARM will be longer.
             * The execution time of VOU interrupt service program will be elongated from 200 um to 3-4 ms,
             * causing errors of field order of interlaced output.
             * Thus, putting start position of VOU interrupt to the beginning of valid region,
             * the corresponding delaytime will change from zero to the time of one interrupt interval.
             *
             * 20110709 delete by g45208, mosaic use 3 fb, so vtthd1 setting for mosaic mode
             * is same as normal mode.
             */
            //OPTM_M_SetVtthPosiFlagAndEffect(HAL_DISP_CHANNEL_DHD, 1, 1);
        }
    }
#ifndef HI_VDP_ONLY_SD_SUPPORT
    else
    {
        if (g_stShadow.bOpened != HI_FALSE)
        {
            HI_ERR_VO("VIDEO_SD is attached, can't open again!\n");
            return HI_FAILURE;
        }
        else
        {
            HI_ERR_VO("VIDEO_SD is not attached, which is not support!\n");
            return HI_FAILURE;
        }

/*
        nRet = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO, VOISR_PIPIsr, (HI_U32)enVo, 0);
        nRet |= OPTM_M_INT_Registe(HAL_DISP_INTMSK_DSDVTTHD3, OPTM_M_SDVTTHD3_DIE_READ,
                    VOISR_ReadDieInfo, (HI_U32)(pVoReg), HI_UNF_DISP_SD0);
        HI_ASSERT(nRet!=HI_FAILURE);
*/
    }
#endif
    pstVo->bOpened = HI_TRUE;

    /*  default enable after OPEN */
    nRet = VO_SetLayerEnable(enVo, HI_TRUE);
    HI_ASSERT(nRet!=HI_FAILURE);

    return HI_SUCCESS;
}

HI_S32 VO_Close(HI_UNF_VO_E enVo)
{
    OPTM_VO_S     *pstVo;
    OPTM_DISP_S  *pOptmDisp;

    D_VO_CHECK_DEVICE_OPEN();

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVo);

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);
    if (pstVo->bOpened != HI_TRUE)
    {
        return HI_SUCCESS;
    }

    VO_SetLayerEnable(enVo, HI_FALSE);

    if(HI_UNF_VO_HD0 == enVo)
    {
#if 0
        if (HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode)
        {
            g_stMasicWin.bEnable = HI_FALSE;
            msleep(50);

            OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VAD);

            OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_OFLTASK);
            OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_VTEINT, OPTM_M_VTEINT_ORDER_OFLTASK);

            OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

            /*  initialize MOSAIC window and buffer */
            VODeInitMscWin(&g_stMasicWin);
            if ((pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
                    && (HI_VO_MOSAIC_TYPE_STANDALONE == g_enVoMosaicType))
            {
                OPTM_WBC1FB_Destroy(&(g_stShadow.stWbcBuf_standalone));
            }
        }
        else
#endif
        {
            msleep(50);
            OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

            OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_VO);
        }

        /*  set vhd online mode */
        OPTM_M_VO_SetOffLine(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

        pstVo->bOffLineModeEn = HI_FALSE;
    }
#ifndef HI_VDP_ONLY_SD_SUPPORT
    else
    {
        if (g_stShadow.bOpened != HI_FALSE)
        {
            HI_ERR_VO("VIDEO_SD is attached, can't open again!\n");
            return HI_FAILURE;
        }

        msleep(50);

        OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO);
    }
#endif
    pstVo->bOpened = HI_FALSE;

    return HI_SUCCESS;
}

/***********************************************************************************
 * Function:      VO_SetLayerEnable / VO_GetLayerEnable
 * Description:   set/query enable status of video layer
 * Data Accessed:
 * Data Updated:
 * Input:         hVo -- video  layer  handle
 *                bEnable-- target status
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetLayerEnable(HI_UNF_VO_E enVo, HI_BOOL bEnable)
{
    OPTM_VO_S *pstVo;

    D_VO_CHECK_DEVICE_OPEN();

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVo);

    if (bEnable == pstVo->bEnable)
    {
        return HI_SUCCESS;
    }
#if 0
    if (   (HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode)
            && (HI_UNF_VO_HD0 == enVo))
    {
        g_stMasicWin.bEnable = bEnable;
    }
#endif
    /* it may have problems. definitions are necessary */
    pstVo->bEnable = bEnable;

    return HI_SUCCESS;
}

HI_S32 VO_GetLayerEnable(HI_UNF_VO_E enVo, HI_BOOL *pbEnable)
{
    OPTM_VO_S *pstVo;

    //D_VO_CHECK_DEVICE_OPEN();
    if (g_OptmVoInitTime < 1)\
    {                        \
        return HI_ERR_VO_NO_INIT;   \
    }

    D_VO_CHECK_PTR(pbEnable);

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVo);

    *pbEnable = pstVo->bEnable;

    return HI_SUCCESS;
}

HI_S32 VO_SetLayerMask(HI_UNF_VO_E enVo, HI_BOOL bMasked)
{
    OPTM_VO_S *pstVo;

    //D_VO_CHECK_DEVICE_OPEN();
    if (g_OptmVoInitTime < 1)
    {
        //HI_ERR_VO("VO is not open.\n");
        return HI_ERR_VO_NO_INIT;
    }

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVo);

    if (bMasked == pstVo->bMasked)
    {
        return HI_SUCCESS;
    }

    if (HI_UNF_VO_HD0 == enVo)
    {
        if (HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode)
        {
            g_stMasicWin.bMasked = bMasked;
            if (HI_FALSE == bMasked)
            {
                pstVo->bWbc1FillBlack = HI_TRUE;
            }
        }
        g_stShadow.stWbc.bMasked = bMasked;
        g_stShadow.bMasked       = bMasked;

        pstVo->bMasked = bMasked;
    }
    else if (HI_UNF_VO_SD0 == enVo)
    {
        pstVo->bMasked = bMasked;
    }

    //DEBUG_PRINTK("\n@%d>>", bMasked);

    return HI_SUCCESS;
}


/***********************************************************************************
 * Function:      VO_SetAlpha / VO_GetAlpha
 * Description:   set / query video layer alpha
 * Data Accessed:
 * Data Updated:
 * Input:         hVo -- video layer handle
 *                u32Alhpa-- target alpha
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetAlpha(HI_UNF_VO_E enVo, HI_U32 u32Alpha)
{
    OPTM_DISP_S   *pOptmDisp;
    OPTM_VO_S     *pstVo;

    D_VO_CHECK_DEVICE_OPEN();

    if (u32Alpha > 255)
    {
        HI_ERR_VO("VO u32Alpha is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVo);

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);


    pstVo->u32Alpha = u32Alpha;

    if (HI_UNF_VO_HD0 == enVo)
    {
        OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO1, u32Alpha);
        OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO1, u32Alpha);


        /* If the disp, in which vo is located, is the isogeny source,
         * set alpha of the target. 
         */
#if 0
        if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
        {
#if 0
            if (!g_stShadow.bWbcMode)
            {
                OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
                OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
            }
#else
            OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
            OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
#endif
        }
#endif
    }
    else
    {
        OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
        OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO3, u32Alpha);
    }

    return HI_SUCCESS;
}

HI_S32 VO_GetAlpha(HI_UNF_VO_E enVo, HI_U32 *pu32Alpha)
{
    OPTM_DISP_S   *pOptmDisp;
    OPTM_VO_S     *pstVoCh;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pu32Alpha);

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVoCh);

    D_DISP_GET_HANDLE(pstVoCh->enUnfDisp, pOptmDisp);

    /* If the disp, in which vo is located, is the isogeny target,
     * vo is not allowed to operate
     */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        HI_ERR_VO("Disp of vo is DstDisp.\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    *pu32Alpha = pstVoCh->u32Alpha;

    return HI_SUCCESS;
}


/***********************************************************************************
 * Function:      VO_SetRect / VO_GetRect
 * Description:   set / query video layer output window
 * Data Accessed:
 * Data Updated:
 * Input:         hVo -- video  layer  handle
 *                pstRect-- output  window
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect)
{
    HI_ERR_VO("VO SetRect is not supported in this version.\n"); \
    return HI_ERR_VO_INVALID_OPT;
#if 0
    if (g_enVoDevMode != HI_UNF_VO_DEV_MODE_MOSAIC)
    {
        HI_ERR_VO("VO Rect is set in mosaic mode.\n"); \
            return HI_ERR_VO_INVALID_OPT;
    }
    OPTM_DISP_S   *pOptmDisp;
    OPTM_VO_S     *pstVoCh;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstRect);


    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVoCh);

    D_DISP_GET_HANDLE(pstVoCh->enUnfDisp, pOptmDisp);

    /* If the disp, in which vo is located, is the isogeny target,
     * vo is not allowed to be set
     */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        HI_ERR_VO("Disp of vo is DstDisp.\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    if (VoCheckRect(pstRect) != HI_SUCCESS)
    {
        HI_ERR_VO("VO Rect is invalid.\n"); \
            return HI_ERR_VO_INVALID_PARA;
    }

    pstVoCh->stOutRect = *pstRect;

    if (HI_UNF_VO_HD0 == enVo)
    {
        g_stMasicWin.stAttr.stOutputRect= *pstRect;
        g_stMasicWin.unAttrUp.Bits.OutRect = 1;
        //DTS2011041800974 add 20110422
        // mosaic model when the coordinate of ouput window change
        //save disp information and output window
        OPTM_M_GetDispInfo(g_stMasicWin.enDispHalId, &(g_stMasicWin.stDispInfoInited));
        g_stMasicWin.stOutputRectInited = *pstRect;
    }

    return HI_SUCCESS;
#endif
}

HI_S32 VO_GetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect)
{
    OPTM_DISP_S   *pOptmDisp;
    OPTM_VO_S     *pstVoCh;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstRect);

    if (g_enVoDevMode != HI_UNF_VO_DEV_MODE_MOSAIC)
    {
        HI_ERR_VO("VO Rect is set in mosaic mode.\n"); \
            return HI_ERR_VO_INVALID_OPT;
    }

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVoCh);

    D_DISP_GET_HANDLE(pstVoCh->enUnfDisp, pOptmDisp);

    /* If the disp, in which vo is located, is the isogeny target,
     * vo is not allowed to operate
     */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        HI_ERR_VO("Disp of vo is DstDisp.\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    *pstRect = pstVoCh->stOutRect;

    return HI_SUCCESS;
}

HI_S32 VO_GetAttrForProc(HI_UNF_VO_E enVo, HI_VO_PROC_ATTR_S *pVoAttr)
{
    OPTM_VO_S *pstVoCh;
    OPTM_M_VO_ATTR_S stAttr = {0};

    (HI_VOID)OPTM_M_VO_GetAttr(HAL_DISP_LAYER_VIDEO1, &stAttr);

    D_VO_CHECK_DEVICE_OPEN();

    /*  get VO handle  */
    D_VO_GET_HANDLE(enVo, pstVoCh);

    memset((HI_U8*)pVoAttr, 0, sizeof(HI_VO_PROC_ATTR_S));

    if ((HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode) && (HI_VO_MOSAIC_TYPE_STANDALONE == g_enVoMosaicType))
        pVoAttr->enVoDevMode = HI_UNF_VO_DEV_MODE_STANDALONE;
    else
        pVoAttr->enVoDevMode = g_enVoDevMode;

    pVoAttr->bEnable = pstVoCh->bEnable;
    pVoAttr->Alpha = pstVoCh->u32Alpha;
    pVoAttr->ActWinNum = pstVoCh->s32NewMainWinNum;

    if ( ((HI_UNF_VO_DEV_MODE_MOSAIC == pVoAttr->enVoDevMode)
                ||(HI_UNF_VO_DEV_MODE_STANDALONE == pVoAttr->enVoDevMode))
            &&(HI_UNF_VO_HD0 == enVo))
    {
        pVoAttr->u32Wbc1Unload     = pstVoCh->u32WbcUnload;
        pVoAttr->u32MosaicAcquire  = g_stMasicWin.stWbcBuf.Acquire;
        pVoAttr->u32MosaicAcquired = g_stMasicWin.stWbcBuf.Acquired;
        pVoAttr->u32MosaicRelease  = g_stMasicWin.stWbcBuf.Release;
        pVoAttr->u32MosaicReleased = g_stMasicWin.stWbcBuf.Released;
        pVoAttr->u32MosaicUnload   = g_stMasicWin.stWbcBuf.Unload;
    }

    pVoAttr->bAlgFlag = pstVoCh->bAlgFlag;
    memcpy(&(pVoAttr->Sharpen_info), &(stAttr.Sharpen_info), sizeof(stAttr.Sharpen_info));
    pVoAttr->s32AccRatio = stAttr.s32AccRatio;
    return HI_SUCCESS;
}

/***********************************************************************************
 * Function:      VO_CreateWindow / VO_DestroyWindow
 * Description:   set / query  window
 * Data Accessed:
 * Data Updated:
 * Input:         phWin -- window  handle
 *                pstWinAttr-- window property coefficients
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
static HI_VOID VoReviseWinRect(HI_RECT_S *pstDstRect)
{
    /*  modify horizontal coefficients */
    pstDstRect->s32X &= 0xfffffffeL;
    if (pstDstRect->s32X < OPTM_RECT_MIN_X)
    {
        pstDstRect->s32X = OPTM_RECT_MIN_X;
    }
    if (pstDstRect->s32X > OPTM_RECT_MAX_X)
    {
        pstDstRect->s32X = OPTM_RECT_MAX_X;
    }

    pstDstRect->s32Width &= 0xfffffffeL;
    if (pstDstRect->s32Width < OPTM_RECT_MIN_W)
    {
        pstDstRect->s32Width = OPTM_RECT_MIN_W;
    }
    if ( (pstDstRect->s32X+pstDstRect->s32Width) > OPTM_RECT_MAX_W)
    {
        pstDstRect->s32Width = OPTM_RECT_MAX_W - pstDstRect->s32X;
    }

    /*  modify vertical coefficients */
    pstDstRect->s32Y &= 0xfffffffcL;
    if (pstDstRect->s32Y < OPTM_RECT_MIN_Y)
    {
        pstDstRect->s32Y = OPTM_RECT_MIN_Y;
    }
    if (pstDstRect->s32Y > OPTM_RECT_MAX_Y)
    {
        pstDstRect->s32Y = OPTM_RECT_MAX_Y;
    }

    pstDstRect->s32Height &= 0xfffffffcL;
    if (pstDstRect->s32Height < OPTM_RECT_MIN_H)
    {
        pstDstRect->s32Height = OPTM_RECT_MIN_H;
    }
    if ( (pstDstRect->s32Y+pstDstRect->s32Height) > OPTM_RECT_MAX_H)
    {
        pstDstRect->s32Height = OPTM_RECT_MAX_H - pstDstRect->s32Y;
    }

    return;
}

static HI_S32 VOCheckWinAttr(HI_UNF_WINDOW_ATTR_S *pstWinAttr)
{
    if (pstWinAttr->enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("Vo invalid LayerId.\n");
        return HI_FAILURE;
    }

    /* do basic modifications to rect */
    VoReviseWinRect(&(pstWinAttr->stInputRect));
    VoReviseWinRect(&(pstWinAttr->stOutputRect));

    /* check the validity of W/H ratio */
    if (pstWinAttr->enAspectRatio >= HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_VO("Vo WinRatio error.\n");
        return HI_FAILURE;
    }

    /*  check the validity of W/H ratio transformation way */
    if (pstWinAttr->enAspectCvrs >= HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_VO("Vo Cvrs error.\n");
        return HI_FAILURE;
    }

    if (pstWinAttr->bVirtual)
    {
        if (pstWinAttr->enVideoFormat >= HI_UNF_FORMAT_YUV_BUTT)
        {
            HI_ERR_VO("para phWindow->enVideoFormat is invalid.\n");
            return HI_ERR_VO_INVALID_PARA;
        }

        if (pstWinAttr->enVideoFormat < HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
        {
            HI_ERR_VO("para phWindow->enVideoFormat is invalid.\n");
            return HI_ERR_VO_INVALID_PARA;
        }
    }

    return HI_SUCCESS;
}

void debug_list_value(void)
{
    #if 0
    screenshare_list_node_S  *list_node = NULL, *tmp_node = NULL;
    return;

    DEBUG_PRINTK("-----debug begin!\n");


    DEBUG_PRINTK("1########free list value:\n");
    /*we should free all the node resource through vmalloc.*/
    list_for_each_entry_safe(list_node, tmp_node, &g_miracast.free_list, listnode)
    {
        //printk("idx:%d, adr:%x, status:%d\n", list_node->mirror_frame.u32Index,list_node->mirror_frame.u32BufPhyAddr,list_node->usedflag);
        DEBUG_PRINTK("%d:%d  ", list_node->mirror_frame.u32Index, list_node->usedflag);
    }

    DEBUG_PRINTK("\n2########full list value:\n");
    /*we should free all the node resource through vmalloc.*/
    list_for_each_entry_safe(list_node, tmp_node, &g_miracast.full_list, listnode)
    {
        //printk("idx:%d, adr:%x, status:%d\n", list_node->mirror_frame.u32Index,list_node->mirror_frame.u32BufPhyAddr,list_node->usedflag);
        DEBUG_PRINTK("%d:%d  ", list_node->mirror_frame.u32Index, list_node->usedflag);
    }

    DEBUG_PRINTK("\n-----debug end!\n");
#endif
    return ;
}

static HI_S32 VOGetIdleWindow(OPTM_VO_S *pstVo, HI_S32 *ps32WinId)
{
    HI_S32 i;

    if (pstVo->enUnfVo == HI_UNF_VO_HD0)
    {
        if (HI_UNF_VO_DEV_MODE_NORMAL == g_enVoDevMode)
        {
#ifndef HI_VO_SINGLE_VIDEO_SUPPORT
            if (pstVo->s32NewMainWinNum >= 2)
            {
                return HI_FAILURE;
            }
#else

            if (pstVo->stWin[OPTM_VO_MCE_WIN_ID -1].bIsMCE)
            {
                if (pstVo->s32NewMainWinNum >= 2)
                {
                    return HI_FAILURE;
                }
            }
            else if (pstVo->s32NewMainWinNum >= 1 )
            {
                return HI_FAILURE;
            }
#endif
        }
    }
    else if (  (pstVo->enUnfVo == HI_UNF_VO_SD0)
            &&(pstVo->s32NewMainWinNum >= 1))
    {
        return HI_FAILURE;
    }

    /*  get an idle window  */
    for(i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        if (pstVo->stWin[i].bOpened != HI_TRUE)
        {
            break;
        }
    }

    if (i >= OPTM_VO_MAX_WIN_CHANNEL)
    {
        return HI_FAILURE;
    }

    *ps32WinId = i;

    return HI_SUCCESS;
}

static HI_S32 VOInitWindow(OPTM_VO_S *pstVo, HI_S32 s32WinId, HI_UNF_WINDOW_ATTR_S *pstWinAttr)
{
    OPTM_WIN_S            *pstWin;
    //HI_S32 s32Ret;

    pstWin = &(pstVo->stWin[s32WinId]);

    memset(pstWin, 0, sizeof(OPTM_WIN_S));

    pstWin->s32WindowId = s32WinId;

    pstWin->bOpened = HI_TRUE;
    pstWin->bEnable = HI_FALSE;

    pstWin->bReset = HI_FALSE;
    pstWin->enReset = HI_UNF_WINDOW_FREEZE_MODE_LAST;

    pstWin->bStepMode = HI_FALSE;
    pstWin->bStepPlay = HI_FALSE;

    pstWin->bFreeze = HI_FALSE;
    pstWin->enFreeze = HI_UNF_WINDOW_FREEZE_MODE_LAST;
    pstWin->pstFrzFrame = HI_NULL;

    pstWin->hVoHandle = (HI_HANDLE)pstVo;
    pstWin->hSrc  = HI_INVALID_HANDLE;
    pstWin->hSync  = HI_INVALID_HANDLE;


    pstWin->enLayerHalId = pstVo->enVoHalId[0];      /* video channel ID */

    /*  zoom coefficients are equipment public */
    pstWin->pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    /*  record win property */
    pstWin->stAttr = *pstWinAttr;
    pstWin->unAttrUp.u32Value = 0xfL;

    pstWin->enDispHalId = pstVo->enDispHalId;

    /*  initialize detection information */
    pstWin->stDetInfo.s32TopFirst = -1;

    /*  set information, once only */
    pstWin->WinModCfg.pstDie = &(pstWin->stDie);
    pstWin->WinModCfg.pstZmeCoefAddr = pstWin->pstZmeCoefAddr;
    memset(&(pstWin->stLastFrame), 0, sizeof(OPTM_FRAME_S));

    pstWin->enSrcCS   = OPTM_CS_eXvYCC_709;
    pstWin->enDstCS   = pstVo->enDstCS;

    //DTS2011041800974 add 20110422
    //save initialization of disp information and output window
    OPTM_M_GetDispInfo(pstVo->enDispHalId, &pstWin->stDispInfoInited);
    pstWin->stOutRecInited = pstWinAttr->stOutputRect;
    INIT_LIST_HEAD(&(pstWin->stCapMMZHead));
    pstWin->captureCnt = 0;
    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    pstWin->s32SlaveIndex = 0;
    pstWin->s32MainIndex = 0;
    pstWin->u32FrameCnt = 0;
#if 0
    if(HI_TRUE  == pstWinAttr->bVirtual)
    {
        s32Ret = OPTM_WBC1FB_Create(&pstWin->stVirtualWbcWin, pstWinAttr->enVideoFormat, pstWinAttr->stOutputRect.s32Width, pstWinAttr->stOutputRect.s32Height, 4);
        if (s32Ret != HI_SUCCESS)
        {
            DEBUG_VO_VIRTUAL("OPTM_WBC1FB_Create error!\n");
            return HI_FAILURE;
        }
    }
#endif
#endif
    return HI_SUCCESS;
}

static HI_S32 VODeInitWindow(OPTM_WIN_S *pstWin)
{
    /*  release remained images */
    //VOISR_FlushFrame(pstWin);

    VODetachWindow(pstWin);
    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
#if 0
    if(HI_TRUE == pstWin->bIsVirtual)
    {
        DEBUG_PRINTK("OPTM_WBC1FB_Destroy !\n");
        OPTM_WBC1FB_Destroy(&pstWin->stVirtualWbcWin);
    }
#endif
#endif
    /*  release Reset frame resources */
    //OPTM_DestroystillFrame(&(pstWin->stResetFrame));

    /*  initialize FRC module */
    //OPTM_ALG_DeInit(&(pstWin->stAlgFrc));

    /*  release DIE module resources */
    //OPTM_AA_DeInitDieModule(&(pstWin->stDie));

    return HI_SUCCESS;
}

HI_S32 VO_CreateWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin)
{
    OPTM_VO_S            *pstVoCh;
    HI_S32               WinId;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_CHECK_PTR(pstWinAttr);
    D_VO_CHECK_PTR(phWin);

    if (VOCheckWinAttr(pstWinAttr) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo invalid win attr.\n");
        return HI_FAILURE;
    }

    /*  get VO handle */
    D_VO_GET_HANDLE(pstWinAttr->enVo, pstVoCh);
    if (pstVoCh->bOpened != HI_TRUE)
    {
        HI_ERR_VO("Vo layer not open.\n");
        return HI_FAILURE;
    }

    // add for VDIEO_SD
    if (   (HI_UNF_VO_SD0 == pstWinAttr->enVo)
            &&(HI_TRUE == pstWinAttr->bVirtual) )
    {
        HI_ERR_VO("Vo SD layer does not support virtural window.\n");
        return HI_FAILURE;
    }

    // add for VDIEO_HD offline mode
    if (   (pstVoCh->bOffLineModeEn != HI_TRUE)
            &&(HI_TRUE == pstWinAttr->bVirtual) )
    {
        HI_ERR_VO("Vo HD layer does not support virtural window at online mode.\n");
        return HI_FAILURE;
    }

    /*  get an idle window */
    if(VOGetIdleWindow(pstVoCh, &WinId) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo has no free windows.\n");
        return HI_FAILURE;
    }

    if (VOInitWindow(pstVoCh, WinId, pstWinAttr) != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    if(HI_TRUE == pstWinAttr->bVirtual && HI_UNF_VO_HD0 == pstWinAttr->enVo)
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_TRUE);
    }
    else
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_FALSE);
    }
#endif

    *phWin = (HI_HANDLE)((((HI_U32)HI_ID_VO) << 16)
            |((HI_U32)(pstWinAttr->enVo) << 8)
            | WinId);

    return HI_SUCCESS;
}
HI_S32 VO_CreateMCEWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin)
{
    OPTM_VO_S            *pstVoCh;
    HI_S32               WinId;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_CHECK_PTR(pstWinAttr);
    D_VO_CHECK_PTR(phWin);

    if (VOCheckWinAttr(pstWinAttr) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo invalid win attr.\n");
        return HI_FAILURE;
    }

    /*  get VO handle */
    D_VO_GET_HANDLE(pstWinAttr->enVo, pstVoCh);
    if (pstVoCh->bOpened != HI_TRUE)
    {
        HI_ERR_VO("Vo layer not open.\n");
        return HI_FAILURE;
    }

    // add for VDIEO_SD
    if (HI_TRUE == pstWinAttr->bVirtual)
    {
        HI_ERR_VO("Vo  does not support virtural window.\n");
        return HI_FAILURE;
    }

    // add for VDIEO_HD offline mode
    if ((pstVoCh->bOffLineModeEn != HI_TRUE)
         &&(HI_TRUE == pstWinAttr->bVirtual) )
    {
        HI_ERR_VO("Vo HD layer does not support virtural window at online mode.\n");
        return HI_FAILURE;
    }

    /*  get an idle window */
    WinId = OPTM_VO_MCE_WIN_ID -1;

    if (VOInitWindow(pstVoCh, WinId, pstWinAttr) != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    VoSetWindowVirtual(pstVoCh,WinId,HI_FALSE);
    pstVoCh->stWin[WinId].bIsMCE = HI_TRUE;

    *phWin = (HI_HANDLE)((((HI_U32)HI_ID_VO) << 16)
                        |((HI_U32)(pstWinAttr->enVo) << 8)
                        | WinId);

    return HI_SUCCESS;
}

HI_S32 VO_DestroyWindow(HI_HANDLE hWin)
{
    OPTM_WIN_S *pstWin;
    OPTM_VO_S *pstVo;
    OPTM_WIN_S* pstMainWin;
    HI_VO_MMZ_S     *pstCapMmz = HI_NULL, *n;
    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);
    pstMainWin = pstWin->hMainWin;

    /*  we should not use list_for_each_entry, because del lit node will coredump*/
    list_for_each_entry_safe(pstCapMmz, n, &pstWin->stCapMMZHead, list){

        if ((pstCapMmz->enMemType == HI_UNF_CAPTURE_DRIVER_ALLOC)
                && (pstCapMmz->stMMZBuf.u32StartPhyAddr != 0)){
            HI_DRV_MMZ_Release(&(pstCapMmz->stMMZBuf));
        }

        list_del(&(pstCapMmz->list));
        kfree(pstCapMmz);
    }

    VO_SetWindowEnable(hWin,HI_FALSE);
    VoDettachWindowsSlave(pstWin);
    pstWin->bOpened = HI_FALSE;
    pstWin->bIsMCE = HI_FALSE;
    VODeInitWindow(pstWin);
    if(NULL != pstMainWin)
    {
        if( 0 == pstMainWin->s32SlaveNewNum)
        {
            msleep(50);
            VODeInitMainWindow(pstMainWin);
        }
    }
#if 0
    if(pstMainWin->s32SlaveNum == 0)
    {
        pstMainWin->bEnable = HI_FALSE;
        msleep(50);
        VODeInitMainWindow(pstWin->hMainWin);
    }
#endif
    /* destroy window again */

    return HI_SUCCESS;
}

HI_S32 VO_CreateAttachWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin)
{
#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
    OPTM_VO_S            *pstVoCh;
    HI_S32               WinId;
    OPTM_WIN_S           *pstWin;
    HI_S32               Ret;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_CHECK_PTR(pstWinAttr);
    D_VO_CHECK_PTR(phWin);

    if (VOCheckWinAttr(pstWinAttr) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo invalid win attr.\n");
        return HI_FAILURE;
    }

    /*  get VO handle */
    D_VO_GET_HANDLE(pstWinAttr->enVo, pstVoCh);
    if (pstVoCh->bOpened != HI_TRUE)
    {
        HI_ERR_VO("Vo layer not open.\n");
        return HI_FAILURE;
    }

    /*  get an idle window */
    if(VOGetIdleWindow(pstVoCh, &WinId) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo has no free windows.\n");
        return HI_FAILURE;
    }

    if (VOInitWindow(pstVoCh, WinId, pstWinAttr) != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    if(HI_TRUE == pstWinAttr->bVirtual && HI_UNF_VO_HD0 == pstWinAttr->enVo)
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_TRUE);
    }
    else
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_FALSE);
    }
#endif

    *phWin = (HI_HANDLE)((((HI_U32)HI_ID_VO) << 16)
            |((HI_U32)(pstWinAttr->enVo) << 8)
            | WinId);

    pstWin = &(pstVoCh->stWin[WinId]);

    pstWin->hSrc =   HI_INVALID_HANDLE;
    pstWin->s32UserId = 0;
    pstWin->pfGetImage = HI_NULL;
    pstWin->pfPutImage = HI_NULL;
    pstWin->hSync =    HI_INVALID_HANDLE;;
    pstWin->enModId = HI_ID_BUTT;

    Ret = VoAttachWindowsSlave(pstWin);
    if (Ret != HI_SUCCESS)
    {
        pstWin->bOpened = HI_FALSE;
        VODeInitWindow(pstWin);
        return Ret;
    }

    return HI_SUCCESS;
#else
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}

HI_S32 VO_CreateReleaseWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin)
{
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
    OPTM_VO_S            *pstVoCh;
    HI_S32               WinId;
    OPTM_WIN_S           *pstWin;
    HI_S32               Ret;
    VDEC_EXPORT_FUNC_S *pVDECFunc = HI_NULL;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_CHECK_PTR(pstWinAttr);
    D_VO_CHECK_PTR(phWin);


    if (VOCheckWinAttr(pstWinAttr) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo invalid win attr.\n");
        return HI_FAILURE;
    }

    /*  get VO handle */
    D_VO_GET_HANDLE(pstWinAttr->enVo, pstVoCh);
    if (pstVoCh->bOpened != HI_TRUE)
    {
        HI_ERR_VO("Vo layer not open.\n");
        return HI_FAILURE;
    }

   Ret = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pVDECFunc);

   if ((!pVDECFunc) || (HI_SUCCESS !=  Ret))
   {
       HI_ERR_VO("Get Vdec function failed!\n");
       return HI_FAILURE;
   }
   else if (!pVDECFunc->pfnVDEC_RecvFrm  || !pVDECFunc->pfnVDEC_RlsFrm)
   {
        HI_ERR_VO("Get Vdec function failed!\n");
        return HI_FAILURE;
   }

    /*  get an idle window */
    if(VOGetIdleWindow(pstVoCh, &WinId) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo has no free windows.\n");
        return HI_FAILURE;
    }

    if (VOInitWindow(pstVoCh, WinId, pstWinAttr) != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    if(HI_TRUE == pstWinAttr->bVirtual && HI_UNF_VO_HD0 == pstWinAttr->enVo)
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_TRUE);
    }
    else
    {
        VoSetWindowVirtual(pstVoCh,WinId,HI_FALSE);
    }
#endif

    *phWin = (HI_HANDLE)((((HI_U32)HI_ID_VO) << 16)
            |((HI_U32)(pstWinAttr->enVo) << 8)
            | WinId);

    pstWin = &(pstVoCh->stWin[WinId]);

    pstWin->hSrc = HI_INVALID_HANDLE;
    pstWin->s32UserId = 0;
    pstWin->pfGetImage = HI_NULL;
#ifndef MINI_SYS_SURPORT
    pstWin->pfPutImage = pVDECFunc->pfnVDEC_RlsFrm;
#endif
    pstWin->hSync = HI_INVALID_HANDLE;
    pstWin->enModId = HI_ID_BUTT;

    Ret = VoAttachWindowsSlave(pstWin);
    if (Ret != HI_SUCCESS)
    {
        pstWin->bOpened = HI_FALSE;
        VODeInitWindow(pstWin);
        return Ret;
    }

    return HI_SUCCESS;
#else
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}

/***********************************************************************************
 * Function:      VO_ResetWindow
 * Description:   reset window
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window  handle
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_ResetWindow(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E WinFreezeMode)
{
    OPTM_WIN_S *pstWin;
    OPTM_VO_S  *pstVoCh;
    HI_S32     Ret;

    D_VO_CHECK_DEVICE_OPEN();

    if (WinFreezeMode >= HI_UNF_WINDOW_FREEZE_MODE_BUTT)
    {
        HI_ERR_VO("VO win reset mode is invalid!\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("VO win be dettached.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (HI_FALSE == pstWin->bEnable)
    {
        HI_ERR_VO("VO win is not enable.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pstWin->hMainWin->bFreeze == HI_TRUE)
    {
        HI_ERR_VO("VO win is freezing, can't reset\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bReset)
    {
        return HI_SUCCESS;
    }

    if (pstWin->hMainWin->u32ResetStep > 0)
    {
        return HI_SUCCESS;
    }

    pstWin->hMainWin->enReset = WinFreezeMode;
    pstWin->hMainWin->bReset = HI_TRUE;
    pstWin->u32FrameCnt = 0;

    Ret = wait_event_interruptible_timeout(pstWin->hMainWin->RstWaitQueue, !(pstWin->hMainWin->bReset), (200 * HZ / 1000));
    if (0 == Ret)
    {
        HI_WARN_VO("VO win reset timeout!\n");
    }

    return HI_SUCCESS;
}

#ifdef HI_VDP_EXTERNALBUFFER_SUPPORT
HI_S32 VO_AttachExternWbcBufWindows(HI_HANDLE hWin,VO_WIN_BUF_ATTR_S* pstBufAttr)
{
    OPTM_WIN_S          *pstWin;
    OPTM_WBC1_FB_S      *pWbc;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_FALSE == pstWin->bIsVirtual)
    {
        return HI_FAILURE;
    }

    if (HI_TRUE == pstWin->bEnable)
    {
        return HI_FAILURE;
    }

    pWbc = &pstWin->stVirtualWbcWin;
    OPTM_WBC1FB_Destroy(pWbc);

    pWbc->stFrameDemo.u32YStride = pstBufAttr->FrameStride;
    pWbc->u32FrameNum = pstBufAttr->FrameNum;
    pWbc->bExternAlloc = HI_TRUE;

    OPTM_WBC1FB_ExternReset(pWbc, pstBufAttr);
    return HI_SUCCESS;
}
#endif

/***********************************************************************************
 * Function:      VO_SetWindowEnable / VO_GetWindowEnable
 * Description:   set / query window enable status
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window  handle
 *                bEnable-- window target status
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetWindowEnable(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_VO_S             *pstVo;
    OPTM_WIN_S            *pstWin;
    OPTM_WIN_S            *pstMainWin;
    OPTM_M_DISP_INFO_S    OptmDispInfo;
    HI_S32                  s32Index;
    HI_S32                  s32OpenNum = 0;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (pstWin->bEnable == bEnable)
    {
        return HI_SUCCESS;
    }

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("win has not been attached.\n");
        return HI_FAILURE;
    }

    /* get DISP information */
    OPTM_M_GetDispInfo(pstWin->enDispHalId, &OptmDispInfo);
    pstWin->stDispInfo = OptmDispInfo;
    pstWin->bEnable = bEnable;

    if (HI_TRUE == bEnable)
    {
        if (HI_FALSE == pstWin->hMainWin->bEnable)
        {
            pstWin->hMainWin->bEnable  = HI_TRUE;
        }
    }
    else
    {
        pstMainWin = pstWin->hMainWin;
        for (s32Index = 0; s32Index < pstMainWin->s32SlaveNewNum;s32Index++)
        {
            if (HI_TRUE == pstMainWin->hSlaveNewWin[s32Index]->bEnable)
            {
                s32OpenNum++;
            }
        }

        if (0 == s32OpenNum)
        {
            pstWin->hMainWin->bEnable  = HI_FALSE;
        }

        pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);

        if(   (HI_TRUE  == pstVo->bOffLineModeEn)
                &&(HI_FALSE == pstWin->bIsVirtual))
        {
            pstVo->bWbc1FillBlack = HI_TRUE;
        }
    }

    /* wait until interrupt , then do detachs WINDOW */
    msleep(50);

    return HI_SUCCESS;
}

HI_S32 VO_GetWindowEnable(HI_HANDLE hWin, HI_BOOL *pbEnable)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pbEnable);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    *pbEnable = pstWin->bEnable;

    return HI_SUCCESS;
}

HI_S32 VO_SetMainWindowEnable(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_WIN_S *pstWin;
    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    if(HI_NULL == pstWin->hMainWin)
    {
        return HI_FAILURE;
    }
    if(pstWin->hMainWin->bEnable == bEnable)
    {
        return HI_SUCCESS;
    }

    pstWin->hMainWin->bEnable = bEnable;
    return HI_SUCCESS;
}
HI_S32 VO_GetMainWindowEnable(HI_HANDLE hWin, HI_BOOL *pbEnable)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pbEnable);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    if(HI_NULL == pstWin->hMainWin)
    {
        return HI_FAILURE;
    }
    *pbEnable = pstWin->hMainWin->bEnable;

    return HI_SUCCESS;
}

#if 0
/*  update MOSACI window background color */
HI_S32 VO_SetMosaicBgcUpdate(HI_UNF_VO_E enVo, HI_BOOL bEnable)
{
    OPTM_VO_S *pstVo;

    if (g_OptmVoInitTime < 1)
    {
        return HI_ERR_VO_NO_INIT;
    }

    if (HI_TRUE == bEnable)
    {
        D_VO_GET_HANDLE(enVo, pstVo);

        if(HI_TRUE  == pstVo->bOffLineModeEn)
        {
            pstVo->bWbc1FillBlack = HI_TRUE;
        }
    }

    return HI_SUCCESS;
}
#endif

/***********************************************************************************
 * Function:      VO_SetWindowAttr / VO_GetWindowAttr
 * Description:   set / query window property
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window  handle
 *                   pstWinAttr-- window property coefficients
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetWindowAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pstWinAttr)
{
    OPTM_M_DISP_INFO_S stInfo;
    OPTM_VO_S *pstVoCh;
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstWinAttr);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);

    /*  get VO handle  */
    if (pstVoCh->enUnfVo != pstWinAttr->enVo)
    {
        HI_ERR_VO("Vo invalid win vo layer.\n");
        return HI_FAILURE;
    }

    /*  check validity of coefficients */
    if(VOCheckWinAttr(pstWinAttr) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo invalid win attr.\n");
        return HI_FAILURE;
    }

    //  20110807 G45208. virtual window can change attribute.
#if 0
    if(HI_TRUE == pstWin->bIsVirtual)
    {
        HI_ERR_VO("virtual windows not support.\n");
        return HI_FAILURE;
    }
#endif

    /* The outrect set by user should be based on the set of current display resolution,
     * thus, we update DISP information here, to avoid operation of window outrect
     * based on original display resolution.
     */
    OPTM_M_GetDispInfo(pstWin->enDispHalId, &stInfo);
    pstWin->stDispInfo = stInfo;

    if(    (pstWin->stAttr.stInputRect.s32X != pstWinAttr->stInputRect.s32X)
            || (pstWin->stAttr.stInputRect.s32Y != pstWinAttr->stInputRect.s32Y)
            || (pstWin->stAttr.stInputRect.s32Width  != pstWinAttr->stInputRect.s32Width)
            || (pstWin->stAttr.stInputRect.s32Height != pstWinAttr->stInputRect.s32Height))
    {
        pstWin->stAttr.stInputRect = pstWinAttr->stInputRect;
        pstWin->unAttrUp.Bits.InRect  = 1;
    }
#if 1
    if(    (pstWin->stAttr.stOutputRect.s32X != pstWinAttr->stOutputRect.s32X)
            || (pstWin->stAttr.stOutputRect.s32Y != pstWinAttr->stOutputRect.s32Y)
            || (pstWin->stAttr.stOutputRect.s32Width  != pstWinAttr->stOutputRect.s32Width)
            || (pstWin->stAttr.stOutputRect.s32Height != pstWinAttr->stOutputRect.s32Height))
#endif
    {
        pstWin->stAttr.stOutputRect  = pstWinAttr->stOutputRect;
        pstWin->unAttrUp.Bits.OutRect = 1;
        pstVoCh->unUpFlag.Bits.OutRect = 1;
        pstVoCh->bWbc1FillBlack = HI_TRUE;
        //DTS2011041800974 add 20110422
        // when the coordinate of ouput window change
        //save disp information and output window
        pstWin->stDispInfoInited = stInfo;
        pstWin->stOutRecInited = pstWinAttr->stOutputRect;
    }

    if (pstWin->stAttr.enAspectRatio != pstWinAttr->enAspectRatio)
    {
        pstWin->stAttr.enAspectRatio = pstWinAttr->enAspectRatio;
        pstWin->unAttrUp.Bits.AspRatio = 1;
    }

    if(pstWin->stAttr.enAspectCvrs != pstWinAttr->enAspectCvrs)
    {
        pstWin->stAttr.enAspectCvrs = pstWinAttr->enAspectCvrs;
        pstWin->unAttrUp.Bits.AspCvrs = 1;
    }

    return HI_SUCCESS;
}

static HI_VOID OPTM_M_WinRectAdjust(HI_RECT_S *pOldDispRect, HI_RECT_S *pNewDispRect, HI_RECT_S *pWinRect, HI_RECT_S *pOldWinRect);
HI_S32 VO_GetWindowAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pstWinAttr)
{
    OPTM_WIN_S *pstWin;
    OPTM_M_DISP_INFO_S stInfo;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstWinAttr);
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    *pstWinAttr = pstWin->stAttr;
    OPTM_M_GetDispInfo(pstWin->enDispHalId, &stInfo);

    OPTM_M_WinRectAdjust(&(pstWin->stDispInfoInited.stScrnWin), &(stInfo.stScrnWin), &(pstWinAttr->stOutputRect), &(pstWin->stOutRecInited));
    VoReviseRect1(&(pstWinAttr->stOutputRect));
    VoReviseRect2(&(stInfo.stScrnWin), &(pstWinAttr->stOutputRect));


    return HI_SUCCESS;
}


static HI_VOID VOSetWinNewOrder(HI_S32 Order, HI_LAYER_ZORDER_E enZFlag,
        HI_S32 s32WinNumber, HI_HANDLE *phWin)
{
    HI_HANDLE DstHnd;
    HI_S32 i;

    switch(enZFlag)
    {
        case HI_LAYER_ZORDER_MOVETOP:
            {
                if ((Order + 1) < s32WinNumber)
                {
                    DstHnd = phWin[Order];
                    for(i=Order; i<(s32WinNumber-1); i++)
                    {
                        phWin[i] = phWin[i+1];
                    }
                    phWin[i] = DstHnd;
                }
                break;
            }
        case HI_LAYER_ZORDER_MOVEUP:
            {
                if ((Order + 1) != s32WinNumber)
                {
                    DstHnd = phWin[Order];
                    phWin[Order] = phWin[Order+1];
                    phWin[Order+1] = DstHnd;
                }
                break;
            }
        case HI_LAYER_ZORDER_MOVEBOTTOM:
            {
                if (Order != 0)
                {
                    DstHnd = phWin[Order];
                    for(i=Order; i>0; i--)
                    {
                        phWin[i] = phWin[i-1];
                    }
                    phWin[i] = DstHnd;
                }
                break;
            }
        case HI_LAYER_ZORDER_MOVEDOWN:
            {
                if (Order != 0)
                {
                    DstHnd = phWin[Order];
                    phWin[Order] = phWin[Order-1];
                    phWin[Order-1] = DstHnd;
                }
                break;
            }
        default:
            {
                break;
            }
    }

    return;
}



HI_S32 VO_SetWindowZorder(HI_HANDLE hWin, HI_LAYER_ZORDER_E ZFlag)
{
    OPTM_VO_S *pstVoCh;
    OPTM_WIN_S *pstWin;
    OPTM_WIN_S *pstMainWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    /*  get VO handle  */
    pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);

    if(pstVoCh->s32NewMainWinNum <= 1)
    {
        return HI_SUCCESS;
    }

    if(HI_TRUE == pstWin->bIsVirtual)
    {
        HI_ERR_VO("virtual windows not support.\n");
        return HI_FAILURE;
    }
    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows has not been attached.\n");
        return HI_FAILURE;
    }
    else
    {
        HI_S32 i;
        pstMainWin = pstWin->hMainWin;
        pstVoCh->unUpFlag.Bits.Order = 0;
        VOSetWinNewOrder(pstMainWin->s32MainIndex, ZFlag,
                pstVoCh->s32NewMainWinNum, (HI_HANDLE *)(pstVoCh->ahNewMainWin));

        for(i=0; i<pstVoCh->s32NewMainWinNum; i++)
        {
            pstVoCh->ahNewMainWin[i]->s32MainIndex = i;
        }

        pstVoCh->unUpFlag.Bits.Order = 1;
    }

    return HI_SUCCESS;
}

HI_S32 VO_GetWindowOrder(HI_HANDLE hWin, HI_U32 *pOrder)
{
    OPTM_VO_S *pstVoCh;
    OPTM_WIN_S *pstWin;
    HI_S32 i;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pOrder);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows has not been attached.\n");
        return HI_FAILURE;
    }

    /*  get VO handle  */
    pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);

    for(i=0; i<pstVoCh->s32NewMainWinNum; i++)
    {
        if (pstWin->hMainWin == pstVoCh->ahNewMainWin[i])
        {
            *pOrder = i;
            break;
        }
    }

    return HI_SUCCESS;
}



/***********************************************************************************
 * Function:      VO_AttachWindow / VO_DetachWindow
 * Description:   attach / detach window data source
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window handle
 *                hSrc -- source handle
 *                WinType -- source type
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
extern FN_SYNC_VidProc pfnSyncVidProc;
extern FN_SYNC_VerifyHandle pfnSyncVfy;

HI_S32 VO_AttachWindow(HI_HANDLE hWin, HI_HANDLE hSrc, HI_HANDLE hSync, HI_MOD_ID_E enModId)
{
    VO_SOURCE_HANDLE_S *pstSrc;

#ifdef OPTM_VO_SELF_DEBUG
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_PTR(hSrc);
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if ( enModId != HI_ID_VI && enModId != HI_ID_AVPLAY)
    {
        HI_ERR_VO("Vo not surpport now!\n");
        return HI_FAILURE;
    }

    pstSrc = (VO_SOURCE_HANDLE_S *)hSrc;

    pstWin->s32UserId  = pstSrc->s32UserId;
    pstWin->pfGetImage = pstSrc->pfGetImage;
    pstWin->pfPutImage = pstSrc->pfPutImage;
    pstWin->hSync   =  HI_INVALID_HANDLE;;
    pstWin->enModId = enModId;
    pstWin->hSrc = hSrc;

    /* add to mainwin list */
    VoAttachWindowsSlave(pstWin);

    return HI_SUCCESS;
#else
    OPTM_WIN_S *pstWin;
    HI_S32 Ret;

    D_VO_CHECK_PTR(hSrc);

    if (HI_ID_AVPLAY == enModId)
    {
        D_VO_CHECK_PTR(hSync);
    }

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (enModId != HI_ID_VI && enModId != HI_ID_AVPLAY&&enModId != HI_ID_VDEC)
    {
        HI_ERR_VO("Vo not surpport now!\n");
        return HI_FAILURE;
    }

    if (HI_INVALID_HANDLE != hSync)
    {
        SYNC_EXPORT_FUNC_S *pstSyncFunc = HI_NULL;

        Ret = HI_DRV_MODULE_GetFunction(HI_ID_SYNC, (HI_VOID**)&pstSyncFunc);

        if ((pstSyncFunc ) && ( HI_SUCCESS ==Ret) )
        {
            if (pstSyncFunc->pfnSYNC_VidProc && pstSyncFunc->pfnSYNC_VerifyHandle)
            {
                pfnSyncVidProc = pstSyncFunc->pfnSYNC_VidProc;
                pfnSyncVfy       = pstSyncFunc->pfnSYNC_VerifyHandle;
            }
            else
            {
                HI_ERR_VO("Vo Get sync function failed!\n");
                return HI_FAILURE;
            }
        }
        else
        {
            HI_ERR_VO("Vo Get sync function failed!\n");
            return HI_FAILURE;
        }
    }
    if (HI_ID_AVPLAY == enModId)
    {
        VDEC_EXPORT_FUNC_S *pVDECFunc = HI_NULL;

        Ret = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pVDECFunc);

        if ((!pVDECFunc) ||  ( HI_SUCCESS !=Ret) )
        {
            HI_ERR_VO("Get Vdec function failed!\n");
            return HI_FAILURE;
        }
        else if (!pVDECFunc->pfnVDEC_RecvFrm  || !pVDECFunc->pfnVDEC_RlsFrm)
        {
            HI_ERR_VO("Get Vdec function failed! Get null pointer!\n");
            return HI_FAILURE;
        }
        if (pstWin->hSrc == hSrc)
        {
            return HI_SUCCESS;
        }
        else if (pstWin->hSrc == HI_INVALID_HANDLE)
        {
            pstWin->hSrc = hSrc;
            pstWin->s32UserId = (HI_S32)hSrc;
#ifndef MINI_SYS_SURPORT
            pstWin->pfGetImage = pVDECFunc->pfnVDEC_RecvFrm;
            pstWin->pfPutImage = pVDECFunc->pfnVDEC_RlsFrm;
#endif
            pstWin->hSync = hSync;
            pstWin->enModId = enModId;
        }
        else
        {
            return HI_FAILURE;
        }
    }
    else if (HI_ID_VI == enModId)
    {
        /*HI3716M310 not support VI*/
        #if 0
        if (pstWin->hSrc == hSrc)
        {
            return HI_SUCCESS;
        }
        else if (!pstWin->hSrc)
        {
            pstWin->hSrc = hSrc;

            if(g_VoViPara)
            {
                g_VoViPara->viuGetUsrID(hSrc, HI_ID_VO,&pstWin->s32UserId);
                pstWin->pfGetImage = g_VoViPara->viuAcquireFrame;
                pstWin->pfPutImage = g_VoViPara->viuReleaseFrame;
                pstWin->hSync = HI_NULL;
                pstWin->enModId = enModId;
            }

        }
        else
    #endif
        {
            return HI_FAILURE;
        }
    }
    else
    {
        if (pstWin->hSrc == hSrc)
        {
            return HI_SUCCESS;
        }
        else if (!pstWin->hSrc)
        {
            pstSrc = (VO_SOURCE_HANDLE_S *)hSrc;

            pstWin->s32UserId  = pstSrc->s32UserId;
            pstWin->pfGetImage = pstSrc->pfGetImage;
            pstWin->pfPutImage = pstSrc->pfPutImage;
            pstWin->hSync   = hSync;
            pstWin->enModId = enModId;
            pstWin->hSrc = hSrc;
        }
        else
        {
            return HI_FAILURE;
        }
    }

    /* add to mainwin list */
    Ret = VoAttachWindowsSlave(pstWin);
    if (Ret != HI_SUCCESS)
    {
        pstWin->hSrc = HI_INVALID_HANDLE;
        pstWin->hSync = HI_INVALID_HANDLE;
        pstWin->enModId    = HI_ID_BUTT;
        pstWin->s32UserId  = 0;
        pstWin->pfGetImage = HI_NULL;
        pstWin->pfPutImage = HI_NULL;

        return Ret;
    }

    return HI_SUCCESS;
#endif
}

HI_VOID VODetachWindow(OPTM_WIN_S *pstWin)
{
#ifndef OPTM_VO_SELF_DEBUG
#if 0
    /*M310 not support VI*/
    if (HI_ID_VI == pstWin->enModId)
    {
        if(g_VoViPara)
        {
            g_VoViPara->viuPutUsrID(pstWin->hSrc, pstWin->s32UserId);
        }
    }
#endif
#endif
    /*  release remained image in buffer */
    pstWin->hSrc = HI_INVALID_HANDLE;
    pstWin->hSync = HI_INVALID_HANDLE;
    pstWin->enModId    = HI_ID_BUTT;
    pstWin->s32UserId  = 0;
    pstWin->pfGetImage = HI_NULL;
    pstWin->pfPutImage = HI_NULL;
}

HI_S32 VO_DetachWindow(HI_HANDLE hWin, HI_HANDLE hSrc)
{
    OPTM_WIN_S *pstWin;
    OPTM_WIN_S* pstWinMain;
    OPTM_VO_S* pstVo;

    D_VO_CHECK_PTR(hSrc);
    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);

    pstWinMain = pstWin->hMainWin;

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("win has not been attached.\n");
        return HI_FAILURE;
    }

    if (pstWin->hSrc != hSrc)
    {
        HI_ERR_VO("vo invalid hsrc\n");
        return HI_FAILURE;
    }

    /* WIN must be in stop status */
    if (pstWin->bEnable != HI_FALSE)
    {
        //wait until interupt action done in VO_SetWindowEnable function
        VO_SetWindowEnable(hWin, HI_FALSE);
    }

    if (pstWin->hMainWin->u32ResetStep > 0)
    {
        HI_ERR_VO("vo in reset mode,can not detach, please wait...\n");
        return HI_FAILURE;
    }

    /* w00136937 */
#if _OPTM_DEBUG_VO_VIRTUAL_
    VoDettachWindowsSlave(pstWin);
#endif

    /* wait until interrupt detachs WINDOW */
    msleep(50);

    if (NULL != pstWinMain)
    {
        if (0 == pstWinMain->s32SlaveNewNum)
        {
            VODeInitMainWindow(pstWinMain);
        }
    }

    VODetachWindow(pstWin);

    return HI_SUCCESS;
}

HI_S32 VO_SetWindowStepMode(HI_HANDLE hWin, HI_BOOL bStepMode)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows be dettached!\n");
        return HI_FAILURE;
    }

    pstWin->hMainWin->bStepMode = bStepMode;

    return HI_SUCCESS;
}

HI_S32 VO_SetWindowStepPlay(HI_HANDLE hWin)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows be dettached!\n");
        return HI_FAILURE;
    }

    pstWin->hMainWin->bStepPlay = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 VO_DisableDieMode(HI_HANDLE hWin)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows be dettached!\n");
        return HI_FAILURE;
    }

    /*because handan pvr fast forward and backward,DTS2013011400564 */
    //pstWin->hMainWin->WinFrameBuf.bQuickOutputMode = HI_TRUE;
    pstWin->hMainWin->bDisableDei = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 VO_Set_Det_Mode(VO_WIN_DETECT_S enDet)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(enDet.hWindow, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows be dettached!\n");
        return HI_FAILURE;
    }

    if(enDet.enDet != 0 && enDet.enDet != 1)
    {
        HI_ERR_VO("enDet Value is invalid!\n");
        return HI_FAILURE;
    }

    pstWin = pstWin->hMainWin;
    switch(enDet.detType)
    {
        case FPSDet:
            pstWin->enDetect.bFPSDet = enDet.enDet;
            break;
        case UNKNOW:
        case FODDet:
        case Reserve0:
        case Reserve1:
        case Reserve2:
            /*
               case 2:
               pstWin->enDetect.bProDet = enDet.enDet;
               break;
               case 3:
               pstWin->enDetect.bFODDet = enDet.enDet;
               break;
             */
        default:
            HI_ERR_VO("enDet Type is invalid!\n");
            return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/* set die mode after attach window */
HI_S32 VO_SetQuickOutputEnable(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    HI_INFO_VO("Enter function: %s\n", __FUNCTION__);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("windows is not attached!\n");
        return HI_FAILURE;
    }

    pstWin->hMainWin->bQuickOutputMode = bEnable;
    pstWin->hMainWin->bDisableDei = bEnable;
    OPTM_FB_SetQuickOutputMode(&(pstWin->hMainWin->WinFrameBuf), pstWin->hMainWin->bQuickOutputMode);

    HI_INFO_VO("Set quickoutput=%d\n", bEnable);

    /* RESET BUFFER, release the frams those have not been played. */
    VO_ResetWindow(hWin, HI_UNF_WINDOW_FREEZE_MODE_LAST);

    return HI_SUCCESS;
}


/* attach decoder or video source for window, so that we can set play ratio.
 * u32PlayRatio range: [16, 4096], q8 quantization, 256 indicates one multiple display (normal display)
 */
HI_S32 VO_SetWindowPlayRatio(HI_HANDLE hWin, HI_U32 u32PlayRatio)
{
    OPTM_WIN_S *pstWin, *pstMainWin;

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (   (u32PlayRatio > OPTM_ALG_FRC_MAX_PLAY_RATIO)
            || (u32PlayRatio < OPTM_ALG_FRC_MIN_PLAY_RATIO))
    {
        HI_ERR_VO("Set window play raito invalid!\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("Window has no frame source, can't set play raito!\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    pstMainWin = (OPTM_WIN_S *)(pstWin->hMainWin);
    pstMainWin->u32DisplayRatio = u32PlayRatio;

    return HI_SUCCESS;
}



/***********************************************************************************
 * Function:       VO_FreezeWindow
 * Description:    window  pause
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window  handle
 *                bEnable-- pause  enable
 *                enFreezeMode-- window  pause  mode
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_FreezeWindow(HI_HANDLE hWin, HI_BOOL bEnable, HI_UNF_WINDOW_FREEZE_MODE_E enFreezeMode)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }
    if (pstWin->hMainWin->bFreeze == bEnable)
    {
        return HI_SUCCESS;
    }

    if (pstWin->hMainWin->bEnable != HI_TRUE)
    {
        HI_ERR_VO("VO win is not play, can't freeze\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bReset == HI_TRUE)
    {
        HI_ERR_VO("VO win is resetting, can't freeze\n");
        return HI_FAILURE;
    }

    /*
       if (pstWin->bPause == HI_TRUE)
       {
       HI_ERR_VO("VO win is pause, can't freeze\n");
       return HI_FAILURE;
       }
     */
    if (HI_TRUE == bEnable)
    {
        pstWin->hMainWin->enFreeze = enFreezeMode;
        pstWin->hMainWin->bFreeze = bEnable;
    }
    else
    {
        pstWin->hMainWin->bFreeze = bEnable;
    }

    return HI_SUCCESS;
}

HI_S32 Vo_SetWindowFieldMode(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }

    pstWin->hMainWin->bFieldMode = bEnable;

    return HI_SUCCESS;
}

HI_S32 VO_PauseWindow(HI_HANDLE hWin, HI_BOOL bPause)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("Win is not attached\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bPaused == bPause)
    {
        return HI_SUCCESS;
    }

    pstWin->hMainWin->bPaused = bPause;

    return HI_SUCCESS;
}

/***********************************************************************************
 * Function:      VO_SendFrame
 * Description:   send frame to window
 * Data Accessed:
 * Data Updated:
 * Input:         hWin -- window handle
 *                pstFrameinfo-- frame information
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SendFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo,VO_IFRAME_MODE_E enIframeMode)
{
    OPTM_WIN_S               *pstWin;
    OPTM_FB_S                *pWinFrameBuf;
    OPTM_FRAME_S             *pRstFrame;
    HI_S32                   Ret;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstFrameinfo);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettach!\n");
        return HI_FAILURE;
    }
    if (pstWin->hMainWin->bEnable != HI_TRUE)
    {
        HI_ERR_VO("VO win is not play, can't send frame.\n");
        return HI_FAILURE;
    }

    pWinFrameBuf = &(pstWin->hMainWin->WinFrameBuf);
    if (pstWin->hMainWin->u32I_FrameWaitCount > 0)
    {
        HI_ERR_VO("VO I frame is waiting, can't send frame.\n");
        return HI_FAILURE;
    }

    if( VO_IFRAME_MODE_COPY == enIframeMode)
    {
        if (HI_SUCCESS != OPTM_CreateStillFrame(&(pstWin->hMainWin->stI_Frame), pstFrameinfo) )
        {
            HI_ERR_VO("VO I frame alloc mmz buffer failed, can't send frame.\n");
            return HI_FAILURE;
        }

        pRstFrame = &(pstWin->hMainWin->stI_Frame.stFrame);
        Ret = VOISR_TdeCopy(&(pRstFrame->VdecFrameInfo), pstFrameinfo, &(pstWin->hMainWin->u32ResetStep), HI_TRUE, 5);
        if (Ret != HI_SUCCESS)
        {
            OPTM_DestroystillFrame(&(pstWin->hMainWin->stI_Frame));
            return Ret;
        }
        else
        {
            pRstFrame->enFrameSrc = FRAME_SOURCE_IFRAME;
            pRstFrame->bNeedRelease = HI_TRUE;
            pRstFrame->enIframeMode = enIframeMode;

            pstWin->hMainWin->u32ResetStep =0;

            pstWin->hMainWin->u32I_FrameWaitCount++;
        }
    }
    else if ( VO_IFRAME_MODE_NOCOPY == enIframeMode)
    {

        pRstFrame = &(pstWin->hMainWin->stI_Frame.stFrame);
        pRstFrame->VdecFrameInfo = *pstFrameinfo;

        pRstFrame->enFrameSrc = FRAME_SOURCE_IFRAME;
        pRstFrame->enIframeMode = enIframeMode;
        pRstFrame->bNeedRelease = HI_TRUE;

        pstWin->hMainWin->u32I_FrameWaitCount++;
    }
    else
    {
        HI_ERR_VO("VO I frame mode err , can't send frame.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

#ifdef HI_VDP_PUTGETFRAME_SUPPORT
HI_S32 VO_PutFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo)
{
    OPTM_WIN_S               *pstWin;
    OPTM_WIN_S               *pstMainWin;
    OPTM_FB_S                *pWinFrameBuf;
    OPTM_FRAME_S             *pstNextFrame;
    HI_S32                   Ret;

    /* precisely control the repeat times of T/B, in the unit of field */
    OPTM_ALG_FRC_CFG_S stFrcCfg;
    OPTM_ALG_FRC_CTRL_S stFrcCtrl;


    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstFrameinfo);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettach!\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bEnable != HI_TRUE)
    {
        HI_ERR_VO("VO win is not play, can't put frame.\n");
        return HI_FAILURE;
    }

    memset(&stFrcCfg,0x0,sizeof(OPTM_ALG_FRC_CFG_S));
    memset(&stFrcCtrl,0x0,sizeof(OPTM_ALG_FRC_CTRL_S));

    pstMainWin = pstWin->hMainWin;

    pWinFrameBuf = &(pstMainWin->WinFrameBuf);

    pstMainWin->WinFrameBuf.TryReceiveFrame++;

    /*  get the next idle node, return if FB is full */
    pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);
    if (HI_NULL == pstNextFrame)
    {
        HI_WARN_VO("win buf is full, can't put frame.\n");
        return HI_FAILURE;
    }

    memcpy(&pstNextFrame->VdecFrameInfo, pstFrameinfo, sizeof(HI_UNF_VO_FRAMEINFO_S));

    Ret = VOISR_FrameParse(pstNextFrame, FRAME_SOURCE_VDEC,pstMainWin);
    if (Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    OPTM_M_FrameRateRevise(pstMainWin, pstNextFrame);

    OPTM_M_CorrectProgInfo(pstMainWin, pstNextFrame);

    /*  frame rate transformation */
#ifdef _OPTM_FUNC_FRC_ENABLE_
    if (pstWin->bQuickOutputMode != HI_TRUE)
    {
        stFrcCfg.s32ImageType = (pstNextFrame->VdecFrameInfo.enFieldMode == HI_UNF_VIDEO_FIELD_ALL);
        stFrcCfg.s32InPro     = (pWinFrameBuf->bProgressive == HI_TRUE);
        stFrcCfg.u32InRate    = pstMainWin->InFrameRate;

        stFrcCfg.u32OutRate   = (OPTM_M_GetDispRate(pstMainWin->enDispHalId)*10);

        /*  control of multiple-speed play */
        //stFrcCfg.u32PlayRate  = 256;
        stFrcCfg.u32PlayRate  = pstMainWin->u32DisplayRatio;

        OPTM_ALG_FrcFldProcExtern(&(pstMainWin->stAlgFrc), &stFrcCfg, &stFrcCtrl);
    }
    else
    {
        stFrcCtrl.s32BtmState = 0;
        stFrcCtrl.s32TopState = 0;
        stFrcCtrl.s32FrmState = 0;
    }
#else
    stFrcCtrl.s32BtmState = 0;
    stFrcCtrl.s32TopState = 0;
    stFrcCtrl.s32FrmState = 0;
#endif

    VOISR_SetFrameDisplayTime(pstNextFrame, &stFrcCtrl);

    OPTM_FB_ReceivePutNext(pWinFrameBuf);

    return HI_SUCCESS;
}

HI_S32 VO_GetFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo)
{
    OPTM_WIN_S               *pstWin;
    OPTM_WIN_S               *pstMainWin;
    OPTM_FB_S                *pWinFrameBuf;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstFrameinfo);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettach!\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bEnable != HI_TRUE)
    {
        HI_ERR_VO("VO win is not play, can't get frame.\n");
        return HI_FAILURE;
    }

    pstMainWin = pstWin->hMainWin;

    pWinFrameBuf = &(pstMainWin->WinFrameBuf);

    if (pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsRead].bNeedRelease)
    {
        memcpy(pstFrameinfo, &(pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsRead].VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
        pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsRead].bNeedRelease = HI_FALSE;
        pWinFrameBuf->RlsRead = (pWinFrameBuf->RlsRead + 1) % OPTM_FFB_MAX_FRAME_NUM;
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}
#endif

HI_S32 VO_GetWindowDelay(HI_HANDLE hWin, HI_U32 *pDelay)
{
    OPTM_WIN_S           *pstWin;
    OPTM_FB_S            *pWinFrameBuf;
    HI_U32               WinBufNum;
    OPTM_M_DISP_INFO_S   OptmDispInfo;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    /*  get DISP information  */
    OPTM_M_GetDispInfo(pstWin->enDispHalId, &OptmDispInfo);

    if(HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettach!\n");
        return HI_FAILURE;
    }

    pWinFrameBuf = &(pstWin->hMainWin->WinFrameBuf);

    WinBufNum = OPTM_FB_BufNum(pWinFrameBuf);

    if (pWinFrameBuf->bProgressive)
    {
        *pDelay = WinBufNum * 1000 / OptmDispInfo.u32DispRate;
    }
    else
    {
        *pDelay = WinBufNum * 2 * 1000 / OptmDispInfo.u32DispRate;
    }

    return HI_SUCCESS;
}

HI_S32 VO_GetWindowLastFrameState(HI_HANDLE hWin, HI_BOOL *pbLastFrameState)
{
    OPTM_WIN_S*           pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettach!\n");
        return HI_FAILURE;
    }

    *pbLastFrameState = pstWin->hMainWin->bReleaseLastFrame;

    return HI_SUCCESS;
}


HI_S32 VO_GetWinAttrForProc(HI_HANDLE hWin, HI_WIN_PROC_ATTR_S *pWinAttr)
{
    OPTM_WIN_S    *pstWin;
    OPTM_WIN_S    *pMainWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    pMainWin = pstWin->hMainWin;
    if (pMainWin == HI_NULL)
        return HI_ERR_VO_WIN_NOT_EXIST;

    pWinAttr->bEnable = pstWin->bEnable;
    pWinAttr->bReset = pMainWin->bReset;
    pWinAttr->bFieldMode = pMainWin->bFieldMode;
    pWinAttr->enReset = pMainWin->enReset;
    pWinAttr->bFreeze = pMainWin->bFreeze;
    pWinAttr->enFreeze = pMainWin->enFreeze;
    memcpy(&pWinAttr->UsrAttr, &pstWin->stAttr, sizeof(HI_UNF_WINDOW_ATTR_S));
    pWinAttr->hSrc = pstWin->hSrc;
    pWinAttr->bStepMode = pstWin->bStepMode;
    pWinAttr->MainIndex = pMainWin->s32MainIndex;
    pWinAttr->UseDNRFrame = pMainWin->bUseDNRFrame;
    pWinAttr->DetProgressive = -1;
    pWinAttr->DetTopFirst = pMainWin->stDetInfo.s32TopFirst;

    pWinAttr->bProgressive = pMainWin->WinFrameBuf.bProgressive;
    pWinAttr->bTopFirst = pMainWin->WinFrameBuf.bTopFirst;
    pWinAttr->FrameTime = pMainWin->FrameTime;
    pWinAttr->InFrameRate = pMainWin->InFrameRate;
    pWinAttr->WinRatio = pMainWin->u32DisplayRatio;

    pWinAttr->bQuickOutEnable = pMainWin->bQuickOutputMode;
    pWinAttr->u32WinRemainFrameTimeMs = pMainWin->u32WinRemainFrameTimeMs;

    pWinAttr->In = pMainWin->WinFrameBuf.In;
    pWinAttr->Next = pMainWin->WinFrameBuf.Next;
    pWinAttr->Current = pMainWin->WinFrameBuf.Current;
    pWinAttr->Previous = pMainWin->WinFrameBuf.Previous;
    pWinAttr->PrePrevious = pMainWin->WinFrameBuf.PrePrevious;

    pWinAttr->LstConfig = pMainWin->WinFrameBuf.LstConfig;
    pWinAttr->LstLstConfig = pMainWin->WinFrameBuf.LstLstConfig;
    pWinAttr->Release = pMainWin->WinFrameBuf.Release;

    pWinAttr->TryReceiveFrames = pMainWin->WinFrameBuf.TryReceiveFrame;
    pWinAttr->ReceiveFrames    = pMainWin->WinFrameBuf.ReceiveFrame;
    pWinAttr->UnloadFrames     = pMainWin->WinFrameBuf.UnloadFrame;
    pWinAttr->ConfigFrames     = pMainWin->WinFrameBuf.ConfigFrame;
    pWinAttr->ReleaseFrames    = pMainWin->WinFrameBuf.ReleaseFrame;

    pWinAttr->SyncPlayFrames    = pMainWin->WinFrameBuf.SyncPlay;
    pWinAttr->SyncTPlayFrames   = pMainWin->WinFrameBuf.SyncTPlay;
    pWinAttr->SyncRepeatFrames  = pMainWin->WinFrameBuf.SyncRepeat;
    pWinAttr->SyncDiscardFrames = pMainWin->WinFrameBuf.SyncDiscard;

    if (pstWin->bIsVirtual)
    {
        pWinAttr->VirAcquire = pstWin->stVirtualWbcWin.Acquire;
        pWinAttr->VirAcquired = pstWin->stVirtualWbcWin.Acquired;
        pWinAttr->VirRelease = pstWin->stVirtualWbcWin.Release;
        pWinAttr->VirReleased = pstWin->stVirtualWbcWin.Released;
    }
    else
    {
        pWinAttr->VirAcquire = 0;
        pWinAttr->VirAcquired = 0;
        pWinAttr->VirRelease = 0;
        pWinAttr->VirReleased = 0;
    }

    return HI_SUCCESS;
}

HI_VOID VO_SaveVXD(HI_UNF_VO_E enVo)
{
    if (HI_UNF_VO_HD0 == enVo)
    {
        OPTM_M_VO_SaveVXD(HAL_DISP_LAYER_VIDEO1);


        if (g_stShadow.bOpened)
        {
            OPTM_M_VO_SaveWbc(HAL_DISP_LAYER_WBC0);
        }
    }
    else
    {
        OPTM_M_VO_SaveVXD(HAL_DISP_LAYER_VIDEO3);
    }

    return;
}

HI_VOID VO_RestoreVXD(HI_UNF_VO_E enVo)
{
    if (HI_UNF_VO_HD0 == enVo)
    {
        OPTM_M_VO_RestoreVXD(HAL_DISP_LAYER_VIDEO1);


        if (g_stShadow.bOpened)
        {
            OPTM_M_VO_RestoreWbc(HAL_DISP_LAYER_WBC0);
        }
    }
    else
    {
        OPTM_M_VO_RestoreVXD(HAL_DISP_LAYER_VIDEO3);
    }

    return;
}


/*********************************************************************
 *               isogeny (same source) display                       *
 *********************************************************************/
HI_VOID VOISR_Wbc0Isr(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_Wbc0IsrFinish(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_ShadowIsr(HI_U32 u32Param0, HI_U32 u32Param1);

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_S32 VOInitShadow(OPTM_SHADOW_WIN_S *pShadow, HI_BOOL bWbcMode)
{
    HI_S32   Ret;
    HI_INFO_VO("VOInitShadow\n");
    memset(pShadow, 0, sizeof(OPTM_SHADOW_WIN_S));

    pShadow->bOpened = HI_FALSE;
    pShadow->bEnable = HI_FALSE;


    pShadow->Switch = 0;

    pShadow->enLayerHalId = HAL_DISP_LAYER_VIDEO3;

    OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);

    pShadow->enDispHalId = HAL_DISP_CHANNEL_DSD;
    OPTM_M_GetDispInfo(pShadow->enDispHalId, &(pShadow->stDispInfo));

    /*****************************
      Algorithm module
     *****************************/
    pShadow->pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_TRUE);
    Vou_SetZmeSource(pShadow->enLayerHalId);

    /*  initialize detection information  */
    pShadow->stDetInfo.s32TopFirst = -1;

    /*  set information, once only */
    pShadow->WinModCfg.pstDie = &(pShadow->stDie);
    pShadow->WinModCfg.pstZmeCoefAddr = pShadow->pstZmeCoefAddr;

    pShadow->bWbcMode = bWbcMode;

    pShadow->enSrcCS   = OPTM_CS_eXvYCC_601;
    pShadow->enDstCS   = OPTM_CS_eXvYCC_601;

    /* register shadow isr */
    Ret = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO, VOISR_ShadowIsr, (HI_U32)(&g_stShadow), 0);

    return Ret;
}

HI_VOID VODeInitShadow(OPTM_SHADOW_WIN_S *pShadow)
{
    OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
    OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_VO);
   // VO_Destroy_And_SwitchFromCast(1,1);
    return ;
}
#endif

/* here we should ensure when vsd return back to iso or non iso, the transition is smooth.
 * such as the data flows ,and the buffer flows.
 */
 #if 0
void border_smooth_processing(void)
{
    return;
}
#endif

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_VOID VOISR_Wbc0IsrFinish_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
HI_S32 VOInitWbc0(OPTM_SHADOW_WIN_S *pShadow, HI_VO_MOSAIC_TYPE_E MosaicType)
{
    OPTM_WBC0_S  *pstWbc;
    HI_S32       Ret;

    pstWbc = &pShadow->stWbc;

    pstWbc->bEnable = HI_FALSE;

#ifdef HI_VDP_HD_SD_RATIO_INDEPENDENT_SUPPORT
    /* register wbc0 finish isr */
    Ret = OPTM_M_INT_Registe(HAL_DISP_INTMSK_WTEINT, OPTM_M_WTEINT_ORDER_UP, VOISR_Wbc0IsrFinish, (HI_U32)(&g_stShadow.stWbc), 0);
    if (Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }


    /* register wbc0 isr */
    if (HI_VO_MOSAIC_TYPE_STANDALONE == MosaicType)
    {
        //Ret = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_WBC0, VOISR_Wbc0Isr_standalone, (HI_U32)(&g_stShadow), 0);
        /*  register wbc0 finish isr */
        Ret = OPTM_M_INT_Registe(HAL_DISP_INTMSK_WTEINT, OPTM_M_WTEINT_ORDER_UP, VOISR_Wbc0IsrFinish_standalone, (HI_U32)(&g_stShadow.stWbc), (HI_U32)(&g_stShadow));
        if (Ret != HI_SUCCESS)
        {
            return HI_FAILURE;
        }

    }
    else
#endif
    {
        Ret = OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_WBC0, VOISR_Wbc0Isr, (HI_U32)(&g_stShadow), 0);
    }

    if (Ret != HI_SUCCESS)
    {
        OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_WTEINT, OPTM_M_WTEINT_ORDER_UP);
        return HI_FAILURE;
    }

    memset(pstWbc, 0, sizeof(OPTM_WBC0_S));

    pstWbc->enLayerId    = HAL_DISP_LAYER_WBC0;

    pstWbc->enSrcLayerId = HAL_DISP_LAYER_VIDEO1;  //TODO:
    pstWbc->enSrcDispCh  = HAL_DISP_CHANNEL_DHD;
    pstWbc->enDstDispCh  = HAL_DISP_CHANNEL_DSD;

    pstWbc->s32TaskCount = 0;

#ifdef OPTM_VIDEO_MIXER_ENABLE
#if 0
    if (HI_VO_MOSAIC_TYPE_STANDALONE == MosaicType)
    {
        pstWbc->stTask.s32DfpSel      = 1; /* for mpw: 0, DIE; 1, ZME; 2, CBM;  for pilot: 3, Feeder */
        /* for pilot: 0,DIE; 1,ZME; 2,CBM; 3,FEEDER; 4,VideoMixer; */
    }
    else
#endif
    {
        pstWbc->stTask.s32DfpSel = 4;
    }

#else
    pstWbc->stTask.s32DfpSel      = 2; /* for mpw: 0, DIE; 1, ZME; 2, CBM;  for pilot: 3, Feeder */
    /* for pilot: 0,DIE; 1,ZME; 2,CBM; 3,FEEDER; 4,VideoMixer; */

#endif

    /*
     * For MV310 and chipsets before: Package422: 0, UYVY; 1, YUYV; 2, YVYU
     * For MV330: 0 is Semi-Planar 422
     */
    pstWbc->stTask.s32DataFmt     = 0;
    pstWbc->stTask.u32ReqInterval = 0; /* request interval */
    pstWbc->stTask.bSrcProgressive = HI_TRUE;

    /* task parameters */
    pstWbc->stTask.pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_FALSE);
    Vou_SetZmeSource(HAL_DISP_LAYER_WBC0);

    //Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_TRUE);

    OPTM_M_WBC0_Config(pstWbc->enLayerId, &pstWbc->stTask);

    pstWbc->pstWbcBuf = &pShadow->stWbcBuf;

    pstWbc->bHDSDFieldMatch = HI_TRUE;

    return HI_SUCCESS;
}

HI_VOID VODeInitWbc0(OPTM_SHADOW_WIN_S *pShadow)
{
    Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_FALSE);

    OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_TRUE);
    Vou_SetZmeSource(HAL_DISP_LAYER_VIDEO3);

    OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_WBC0);
    return;
}
#endif


HI_BOOL   gbWbc0CastFlag = 0;

#if 0
void set_package_buffer_blackground1(unsigned int virtaddr, unsigned int stride)
{
    unsigned int  i = 0, j = 0;

    *(HI_U8 *)(i + i*j + j*4) = 0;

    /*
              for (i = 0; i < 32; i++)
              {
              for (j = 0; j < (stride / 4); j++)
              {
     *(HI_U32 *)(virtaddr + i*stride + j*4) = 0x10801080;
     }
     }
     */
    return;
}

void set_package_buffer_blackground(OPTM_SHADOW_WIN_S *pShadow )
{
    OPTM_WBC_FB_S    stWbcBuf;
    unsigned int  virtaddr = 0, stride = 0;

    stWbcBuf = pShadow->stWbcBuf;
    virtaddr = stWbcBuf.stMBuf.u32StartVirAddr;
    stride = stWbcBuf.stFrameDemo.u32YStride;
    //set_package_buffer_blackground1(virtaddr, stride);
    return;
}
#endif

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_S32 VO_SetVoAttach(HI_UNF_VO_E enMasterVo, HI_UNF_VO_E enSlaveVo)
{
    OPTM_VO_S *pstVo;
    HI_S32 nRet;

    pstVo = &(g_stVoLayer[(HI_S32)HI_UNF_VO_SD0]);
    if(HI_TRUE == pstVo->bOpened)
    {
        HI_ERR_VO("VIDEO_SD has been opened!\n");
        return HI_FAILURE;
    }

    HI_INFO_VO("VOInitShadow\n");
    nRet = VOInitShadow(&g_stShadow, HI_FALSE);
    if (nRet != HI_SUCCESS)
    {
        HI_ERR_VO("VOErr! Init shadow failed!\n");
        return HI_FAILURE;
    }
    HI_INFO_VO("OPTM_WBC0FB_Create\n");
    nRet = OPTM_WBC0FB_Create(&g_stShadow.stWbcBuf, 720, 576);

    if (nRet != HI_SUCCESS)
    {
        HI_ERR_VO("VO create wbcbuf failed\n");
        VODeInitShadow(&g_stShadow);
        return HI_FAILURE;
    }
    HI_INFO_VO("VOInitWbc0\n");
    nRet = VOInitWbc0(&g_stShadow, HI_VO_MOSAIC_TYPE_NORMAL);
    if (nRet != HI_SUCCESS)
    {
        HI_ERR_VO("VOErr! Init Wbc0 failed!\n");
        OPTM_WBC0FB_Destroy(&(g_stShadow.stWbcBuf));
        VODeInitShadow(&g_stShadow);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID VO_SetVoDetach(HI_UNF_VO_E enMasterVo, HI_UNF_VO_E enSlaveVo)
{
    OPTM_VO_S *pstVo;

    pstVo = &(g_stVoLayer[(HI_S32)HI_UNF_VO_SD0]);
    if(HI_TRUE == pstVo->bOpened)
    {
        return;
    }

    HI_INFO_VO("VODeInitWbc0\n");
    VODeInitWbc0(&g_stShadow);
    HI_INFO_VO("OPTM_WBC0FB_Destroy\n");
    OPTM_WBC0FB_Destroy(&(g_stShadow.stWbcBuf));
    HI_INFO_VO("VODeInitShadow\n");
    VODeInitShadow(&g_stShadow);

    return;
}
#endif

HI_BOOL OPTM_VSDIsRWZBProcess(HI_UNF_VO_FRAMEINFO_S *pFrame)
{
    OPTM_M_DISP_INFO_S stInfo;
    HI_BOOL nRet = HI_FALSE;

    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL ;
    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);

    OPTM_M_GetDispInfo(HAL_DISP_CHANNEL_DSD, &stInfo);


    /* for 704 width sd video frame, do not check width */
    if ((pFrame->u32DisplayHeight == stInfo.stScrnWin.s32Height)
            && (pFrame->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE)
            && (pVdecPriv->Rwzb > 0))
        nRet = HI_TRUE;

    return nRet;
}

HI_VOID VO_SwitchVoAttach(HI_BOOL bWbcMode, OPTM_VO_S *pstVo)
{
    HI_U32   i;

    if (!bWbcMode)
    {
        g_stShadow.bRpeat = HI_FALSE;

        if (HI_UNF_VO_DEV_MODE_MOSAIC == g_enVoDevMode)
        {
            for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
            {
                if (pstVo->ahMainWin[i]->bActiveContain)
                {
                    break;
                }
            }

            if(i >= OPTM_VO_MAX_WIN_CHANNEL)
                return ;
            g_stShadow.pMainWin = pstVo->ahMainWin[i];
        }
        else
        {
            g_stShadow.pMainWin = pstVo->ahMainWin[0];
        }
        g_stShadow.pRealMainWin = HI_NULL;

        g_stShadow.DoneFld = 0;
        g_stShadow.CurFld = 0;

        OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO3, pstVo->u32Alpha);
        OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO3, pstVo->u32Alpha);

#ifndef OPTM_VIDEO_MIXER_ENABLE
        /* if no write-back from VM, screen of G1 should be cancelled */
        OPTM_GfxMaskLayer(OPTM_GFX_LAYER_SD0, HI_FALSE);
#endif

        /* set CSCMODE, no write-back, should be SD-->SD */
        g_stShadow.enSrcCS   = OPTM_CS_eXvYCC_601;
        g_stShadow.enDstCS   = OPTM_CS_eXvYCC_601;

        //DEBUG_PRINTK("No wbc0! Set shadow 601 to 601\n");
    }
    else
    {
        g_stShadow.stWbc.s32TaskCount = 0;

        //OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_VIDEO3, pstVo->u32Alpha);
        //OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_VIDEO3, pstVo->u32Alpha);

#ifndef OPTM_VIDEO_MIXER_ENABLE

        /* if no write-back from VM, screen G1 */
        OPTM_GfxMaskLayer(OPTM_GFX_LAYER_SD0, HI_TRUE);
#endif
        g_stShadow.pMainWin = pstVo->ahMainWin[0];
        for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
        {
            if (pstVo->stWin[i].s32WindowId == pstVo->ahMainWin[0]->s32WindowId)
            {
                break;
            }
        }
        if(i >= OPTM_VO_MAX_WIN_CHANNEL)
        {
            HI_ERR_VO("Attach failed!\n");
            return ;
        }
        g_stShadow.pRealMainWin = &(pstVo->stWin[i]);

        /* set CSCMODE, write-back mode, should be HD-->SD */
        g_stShadow.enSrcCS   = OPTM_CS_eXvYCC_709;
        g_stShadow.enDstCS   = OPTM_CS_eXvYCC_601;
        //DEBUG_PRINTK("Wbc0! Set shadow 709 to 601\n");
#ifdef HI_VDP_HD_SD_RATIO_INDEPENDENT_SUPPORT
        OPTM_WBC1FB_Reset(&(g_stShadow.stWbcBuf_standalone));
#endif
    }

    OPTM_M_VO_SetCscMode(g_stShadow.enLayerHalId, g_stShadow.enSrcCS, g_stShadow.enDstCS);

    g_stShadow.Switch = 2;
    g_stShadow.bWbcMode = bWbcMode;

    return;
}

#ifdef CHIP_TYPE_hi3716mv330
static HI_VOID VO_SwitchMainwinOfShadow(OPTM_VO_S* pstVo, HI_S32 s32WinID)
{
    HI_S32 i = 0;

    for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        if (pstVo->stWin[i].s32WindowId == s32WinID)
        {
            break;
        }
    }
    if (i >= OPTM_VO_MAX_WIN_CHANNEL)
    {
        HI_ERR_VO("Switch failed: Can't find %d in win list!\n", s32WinID);
        return ;
    }
    g_stShadow.pRealMainWin = &(pstVo->stWin[i]);

    for (i=0; i<OPTM_VO_MAX_WIN_CHANNEL; i++)
    {
        if (pstVo->ahMainWin[i]->s32WindowId == s32WinID)
        {
            break;
        }
    }
    if (i >= OPTM_VO_MAX_WIN_CHANNEL)
    {
        HI_ERR_VO("Switch failed: Can't find %d in MainWin list!\n", s32WinID);
        return ;
    }
    g_stShadow.pMainWin = pstVo->ahMainWin[i];
}
#endif

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_VOID VO_SetWbcOpen(HI_BOOL bEnable)
{
    g_stShadow.bOpened = bEnable;
}

HI_VOID VO_SetWbcEnable(HI_BOOL bEnable)
{
    if (!bEnable)
    {
        g_stShadow.stWbc.bEnable = HI_FALSE;
        g_stShadow.bEnable = HI_FALSE;
    }
    else
    {
        if (g_stShadow.bOpened)
        {
            g_stShadow.bEnable = HI_TRUE;
        }
    }
}
#endif

HI_VOID VO_RestFPS(OPTM_WIN_S *pstWin, HI_BOOL bPtsDown)
{
    HI_S32 i;

    for(i=0; i<OPTM_VO_IN_PTS_SEQUENCE_LENGTH; i++)
    {
        pstWin->InPTSSqn[i] = 0xffffffff;
    }

    pstWin->InPTSPtr = 0;

    pstWin->FrameTime = 40;
    pstWin->InFrameRate = 0;
    pstWin->InFrameRateCal = 0;
    pstWin->InFrameRateLast = 0;
    pstWin->InFrameRateEqueTime = 0;
    pstWin->InLastPts = 0;
    pstWin->bInPtsDown = bPtsDown;
}


/***********************************************************************************
 *                               VO ISR                                            *
 ***********************************************************************************/

HI_VOID OPTM_M_FrameRateRevise(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrameOptm)
{
    HI_UNF_VO_FRAMEINFO_S *pFrame;
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL ;

    pFrame = &(pFrameOptm->VdecFrameInfo);
    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);

    if (pFrame->stSeqInfo.u32FrameRate != 0)
    {
        /* SD special bit-stream, trust bit-stream information  */
        pstWin->InFrameRate = pFrame->stSeqInfo.u32FrameRate ;
        if (pVdecPriv->Rwzb)
        {
            /*Revise RWZB Frame Rate .
            */
            //printk("pstWin->InFrameRate->%d\n",pstWin->InFrameRate);
            if ((pstWin->InFrameRate >= 240) && (pstWin->InFrameRate <= 260))
                pstWin->InFrameRate = 250;
            else if ((pstWin->InFrameRate >= 290) && (pstWin->InFrameRate <= 310))
                pstWin->InFrameRate = 300;
            else if ((pstWin->InFrameRate >= 490) && (pstWin->InFrameRate <= 510))
                pstWin->InFrameRate = 500;
            else if ((pstWin->InFrameRate >= 590) && (pstWin->InFrameRate <= 610))
                pstWin->InFrameRate = 600;
        }


        pstWin->FrameTime = 10000 / pFrame->stSeqInfo.u32FrameRate;

    }
    else
    {
        pstWin->FrameTime   = 40;
        pstWin->InFrameRate = 0;
    }
}

static HI_VOID OPTM_M_CorrectProgInfo(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrameOptm)
{
    HI_S32	Ret;
    HI_UNF_VO_FRAMEINFO_S *pFrame;
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL ;

    if ((!pstWin) || (!pFrameOptm) ||(!pFrameOptm) )
        return;

    pFrame = &(pFrameOptm->VdecFrameInfo);
    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);


    if ((FRAME_SOURCE_VI == pFrameOptm->enFrameSrc) /* belive VI, VI will give the right info  */
        || (pVdecPriv->u8IsUserSetSampleType))  /* do not change progressive info when user has set sample type. i.e. trust the info.*/
    {
        return ;
    }


    if (  (HI_UNF_VCODEC_TYPE_REAL8 == pFrame->stSeqInfo.entype)
            ||(HI_UNF_VCODEC_TYPE_REAL9 == pFrame->stSeqInfo.entype)
            ||(HI_UNF_VCODEC_TYPE_MPEG4 == pFrame->stSeqInfo.entype))
    {
        return;
    }

	/*add rwzb test mod closed PQ process*/
	if (HI_TRUE == DISP_GetDispDefault())
	{
		VDEC_EXPORT_FUNC_S *pVDECFunc = HI_NULL;
		HI_BOOL bRwzb = HI_TRUE;

		if(!pVdecPriv->Rwzb)
			pVdecPriv->Rwzb = OPTM_VO_FME_PAT_CVBS_DEFAULT;

		Ret = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pVDECFunc);

		 if ((!pVDECFunc) ||  ( HI_SUCCESS !=Ret) )
		 {
			 HI_ERR_VO("Get Vdec function failed!\n");
		 }
		 else if (!pVDECFunc->pfnVDEC_SetRWZBState )
		 {
			 HI_ERR_VO("Get Vdec function failed! Get null pointer!\n");
		 }
		 else
		 {
		 	pVDECFunc->pfnVDEC_SetRWZBState(pstWin->s32UserId,&bRwzb);
		 }

	}

    if(pVdecPriv->Rwzb)
    {
        /* special HD bit-stream, according to discussion of algorithm (20110115),
         * employ way of trusting output system information.
         * Currently, it is used in HD output.
         */

        /* for 576i/p 480i/p CVBS output, employ interlaced read */
        if( (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CCITT033)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_480I_MT)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_576I_MT)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CCITT033_NTSC)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CCITT18)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CBAR576_75)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CCIR3311)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_MATRIX625)
            || ((pVdecPriv->Rwzb >= OPTM_VO_FME_PAT_576I_CBAR_75_B) && (pVdecPriv->Rwzb <= OPTM_VO_FME_PAT_576I_BOWTIE))
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_CBAR704_576)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_480I_CODEC43)
            || (OPTM_VO_FME_PAT_CVBS_50_FLAT_FIELD == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_75_COLORBARS == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_NTC7_COMBINATION == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_NTC7_COMPOSITE == pVdecPriv->Rwzb)
          )
        {
            pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
        }
        else //if(pFrame->u32Height >= 720)
        {
            if (1 == OPTM_M_GetDispProgressive(HAL_DISP_CHANNEL_DHD))
            {
                pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
            }
            else
            {
                pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
            }
        }

        /* special SD bit-stream, trust bit-stream information  */
    }
    else if(pFrame->u32Height == 720)
    {
        pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    }
    /* un-trust bit-stream information  */
    else if(pFrame->u32Height <= 576)
    {
        if ( (240 >= pFrame->u32Height) && (320 >= pFrame->u32Width) )
        {
            pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
        }
        else if (pFrame->u32Height <= (pFrame->u32Width * 9 / 14 ) )
        {
            // Rule: wide aspect ratio stream is normal progressive, we think that progressive info is correct.
            pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
        }
        else
        {
            pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
        }
    }


    if (pFrame->enFieldMode != HI_UNF_VIDEO_FIELD_ALL)
    {
        pFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    }

    return;
}
static HI_VOID OPTM_M_WinRectAdjust(HI_RECT_S *pOldDispRect, HI_RECT_S *pNewDispRect, HI_RECT_S *pWinRect, HI_RECT_S *pOldWinRect)
{
    pWinRect->s32X = pOldWinRect->s32X * pNewDispRect->s32Width / pOldDispRect->s32Width;
    pWinRect->s32Y = pOldWinRect->s32Y * pNewDispRect->s32Height / pOldDispRect->s32Height;

    pWinRect->s32Width = pOldWinRect->s32Width * pNewDispRect->s32Width / pOldDispRect->s32Width;
    pWinRect->s32Height = pOldWinRect->s32Height * pNewDispRect->s32Height / pOldDispRect->s32Height;

    return;
}

HI_VOID VO_Debug_ChangeFrameinfo(OPTM_WIN_S *pMainWin, HI_UNF_VO_FRAMEINFO_S *pstCurFrame)
{
    HI_VDEC_PRIV_FRAMEINFO_S *pVdecPriv =  HI_NULL;
    HI_VDEC_PRIV_FRAMEINFO_S *pDebugVdecPriv =  HI_NULL;

    if (pMainWin->u32Debugbits & (DEBUG_FRAMEINFO_VALID_BIT)) {

        if (pMainWin->u32Debugbits & DEBUG_FRAMEINFO_PROG_BIT) {
            pstCurFrame->enSampleType = pMainWin->stDebuginfo.enSampleType;
        }
        if (pMainWin->u32Debugbits & DEBUG_FRAMEINFO_TOPFIRST_BIT) {
            pstCurFrame->bTopFieldFirst = pMainWin->stDebuginfo.bTopFieldFirst;
        }
        if (pMainWin->u32Debugbits & DEBUG_FRAMEINFO_RWZB_BIT) {
            pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pstCurFrame->u32VdecInfo[0]);
            pDebugVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pMainWin->stDebuginfo.u32VdecInfo[0]);
            pVdecPriv->Rwzb= pDebugVdecPriv->Rwzb;
        }
    }
    return ;
}


static HI_S32 VOISR_FrameParse(OPTM_FRAME_S *pstNextFrame, FRAME_SOURCE_E enFrameSrc,OPTM_WIN_S *pstMainWin)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrameInfo,*pstFI;
    HI_VDEC_PRIV_FRAMEINFO_S *pVdecPriv = HI_NULL;

    /*  video frame information  */
    pVdecFrameInfo = &(pstNextFrame->VdecFrameInfo);

    pstFI = &(pstNextFrame->VdecFrameInfo);

    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pstFI->u32VdecInfo[0]);

    if (pstMainWin->u32Debugbits & DEBUG_FRAME_DEBUG_BIT)
    {
        if (FRAME_SOURCE_IFRAME ==pstNextFrame->enFrameSrc)
            HI_VO_PRINT("I%d----------%#x---R--\n",pstNextFrame->enIframeMode,pstNextFrame->VdecFrameInfo.u32YAddr);
        else
            HI_VO_PRINT("------------%#x---R--\n",pstNextFrame->VdecFrameInfo.u32YAddr);
    }

    if (pVdecPriv->u8EndFrame)
    {
        if (2 == pVdecPriv->u8EndFrame)
        {
            pstMainWin->bReleaseLastFrame = HI_TRUE;
            //pstMainWin->bDisableSync = HI_TRUE;
            return HI_FAILURE;
        }
        else if (1 == pVdecPriv->u8EndFrame)
        {
            pstMainWin->bReleaseLastFrame = HI_TRUE;
            //pstMainWin->bDisableSync = HI_TRUE;
        }

    }
    else
    {
        //pstMainWin->bDisableSync = HI_FALSE;
        pstMainWin->bReleaseLastFrame = HI_FALSE;
    }

	VO_Debug_ChangeFrameinfo(pstMainWin,&pstNextFrame->VdecFrameInfo);

    if ((pstMainWin->u32Debugbits & DEBUG_FRAMEINFO_PRINTK_BIT))
    {

        HI_VO_PRINT("pts %08d top %d  FM %d, VFmt %d ",\
                pstFI->u32Pts, pstFI->bTopFieldFirst, pstFI->enFieldMode, pstFI->enVideoFormat);
        HI_VO_PRINT("dwh(%d, %d) wh(%d, %d) rwzb %d cwh(%d, %d) cf %d st %d  yaddr %x  stride %x  CAddr %x  CStride %x ,eos %d ,1D %d,Rate %d,Dei %d\r\n", \
                pstFI->u32DisplayWidth, pstFI->u32DisplayHeight, pstFI->u32Width, pstFI->u32Height, pVdecPriv->Rwzb,
                pstFI->s32CompFrameWidth, pstFI->s32CompFrameHeight, pstFI->u32CompressFlag, pstFI->enSampleType,
                 pstFI->u32YAddr, pstFI->u32YStride,  pstFI->u32CAddr, pstFI->u32CStride,pVdecPriv->u32IsLastFrame,pVdecPriv->u32Is1D,pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate,pVdecPriv->u32DeiState);

    }
    pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate = pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate/100;


    /* exception w h check  */
    if ((pVdecFrameInfo->u32Width < OPTM_RECT_MIN_W) || (pVdecFrameInfo->u32Height < OPTM_RECT_MIN_H))
    {
        return HI_FAILURE;
    }

    /* 20110713 solve R002 problem, DTS */
    if (  (pVdecFrameInfo->u32DisplayWidth < OPTM_RECT_MIN_W) || (pVdecFrameInfo->u32DisplayHeight < OPTM_RECT_MIN_H)
            ||(pVdecFrameInfo->u32DisplayCenterX < (OPTM_RECT_MIN_W/2)) || (pVdecFrameInfo->u32DisplayCenterY < (OPTM_RECT_MIN_H/2)))
    {
        return HI_FAILURE;
    }

    /*modified by zkun: when frame from vfmw is wrong, we should revise the size of frame info*/
    pVdecFrameInfo->u32DisplayWidth  &= 0xfffffffc;
    pVdecFrameInfo->u32DisplayHeight &= 0xfffffffc;

    /*when width is 4 aligned, the centerx/y should be 2 aligned.*/
    pVdecFrameInfo->u32DisplayCenterX &= 0xfffffffe;
    pVdecFrameInfo->u32DisplayCenterY &= 0xfffffffe;

    /*  return failure of invalid coefficients */
    if (  (pVdecFrameInfo->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_BUTT)
            ||(pVdecFrameInfo->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN) )
    {
        return HI_FAILURE;
    }

    /* 20110330_G45208
     * temporarily, VO only deal with progressive interlaced video image,
     * for information submitted by VDEC, reduced to progressive or interlaced.
     *
     * The next step, we will revise progressive/interlaced information,
     * considering move revise function of progressive/interlaced out of VO module.
     */
    /* 20120928_Y00229039
     * we don't believe INFERED info. set Type as Interlace.
     */
    if ((pVdecFrameInfo->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_INTERLACE)
            || (pVdecFrameInfo->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_PROGRESSIVE))
    {
        pVdecFrameInfo->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    }


    if ((pVdecFrameInfo->enFieldMode != HI_UNF_VIDEO_FIELD_ALL) && (pVdecFrameInfo->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE))
    {
        return HI_FAILURE;
    }

    pstNextFrame->enFrameState = OPTM_PLAY_STATE_READY;

    pstNextFrame->bNeedRelease = HI_TRUE;

    pstNextFrame->enFrameSrc = enFrameSrc;

    /*add for debug frame */



    return HI_SUCCESS;
}

static HI_S32 VOISR_SetFrameDisplayTime(OPTM_FRAME_S *pstFrame, OPTM_ALG_FRC_CTRL_S *pstFrc)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrameInfo;
    HI_S32 nRate;

    /*  video  frame  information  */
    pVdecFrameInfo = &(pstFrame->VdecFrameInfo);

    pstFrame->u32F_RlPlayTime = 0;
    pstFrame->u32T_RlPlayTime = 0;
    pstFrame->u32B_RlPlayTime = 0;

    if (HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE == pVdecFrameInfo->enSampleType)
    {
        nRate = (HI_S32)pVdecFrameInfo->u32Repeat *(1 + pstFrc->s32FrmState);
        if (nRate < 0)
        {
            nRate = 0;
        }
        pstFrame->u32F_NdPlayTime = nRate;
        pstFrame->u32T_NdPlayTime = 0;
        pstFrame->u32T_NdPlayTime = 0;
    }
    else
    {
        pstFrame->u32F_NdPlayTime = 0;

        // DEBUG_PRINTK("f=%d,", pVdecFrameInfo->enFieldMode);
        if (HI_UNF_VIDEO_FIELD_ALL == pVdecFrameInfo->enFieldMode)
        {
            nRate = (HI_S32)pVdecFrameInfo->u32Repeat *(1 + pstFrc->s32TopState);
            if (nRate < 0)
            {
                nRate = 0;
            }
            pstFrame->u32T_NdPlayTime = nRate;

            nRate = (HI_S32)pVdecFrameInfo->u32Repeat*(1 + pstFrc->s32BtmState);
            if (nRate < 0)
            {
                nRate = 0;
            }
            pstFrame->u32B_NdPlayTime = nRate;
        }
        else if (HI_UNF_VIDEO_FIELD_TOP == pVdecFrameInfo->enFieldMode)
        {
            nRate = (HI_S32)(pVdecFrameInfo->u32Repeat*2*(1 + pstFrc->s32TopState + pstFrc->s32BtmState));
            if (nRate < 0)
            {
                nRate = 0;
            }
            pstFrame->u32T_NdPlayTime = nRate;

            pstFrame->u32B_NdPlayTime = 0;
        }
        else
        {

            nRate = (HI_S32)(pVdecFrameInfo->u32Repeat*2*(1 + pstFrc->s32TopState + pstFrc->s32BtmState));
            if (nRate < 0)
            {
                nRate = 0;
            }
            pstFrame->u32B_NdPlayTime = nRate;

            pstFrame->u32T_NdPlayTime = 0;
        }
    }

    /* if the times of necessary play is 0, it is jump frame status */
    if (0 == (pstFrame->u32F_NdPlayTime+pstFrame->u32T_NdPlayTime+pstFrame->u32B_NdPlayTime))
    {
        pstFrame->enFrameState = OPTM_PLAY_STATE_JUMP;
    }

    //DEBUG_PRINTK("f=%d,t=%d,b=%d\n", pstFrame->u32F_NdPlayTime,pstFrame->u32T_NdPlayTime,pstFrame->u32B_NdPlayTime);

    return HI_SUCCESS;
}

HI_VOID VOISR_IgnoreAllFrame(OPTM_FB_S *pWinFrameBuf)
{
#ifdef VDP_USE_DEI_FB_OPTIMIZE
    while(OPTM_FB_ConfigGetNext(pWinFrameBuf, OPTM_AA_DEI_NONE) != HI_TRUE)
    {
        OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_TRUE);
    }
#else
    while(OPTM_FB_ConfigGetNext(pWinFrameBuf) != HI_TRUE)
    {
        OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_TRUE);
    }
#endif

    return;
}

/* receive new frame video data, set it to FB after parsing */
HI_S32 VOISR_ReceiveFrame(OPTM_WIN_S *pstWin)
{
    OPTM_FB_S         *pWinFrameBuf;
    OPTM_FRAME_S      *pstNextFrame;
    FRAME_SOURCE_E    enFrameSrc;
    HI_S32 nRet, i;

    /* employ the unit of field, to control repeat times precisely */
    OPTM_ALG_FRC_CFG_S stFrcCfg;
    OPTM_ALG_FRC_CTRL_S stFrcCtrl;

    pWinFrameBuf = &(pstWin->WinFrameBuf);

    /* receive I frame */
    if(pstWin->u32I_FrameWaitCount > 0)
    {
        pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);
        if (HI_NULL != pstNextFrame)
        {
            memcpy(pstNextFrame, &(pstWin->stI_Frame.stFrame), sizeof(OPTM_FRAME_S));
            enFrameSrc = pstNextFrame->enFrameSrc;
            nRet = VOISR_FrameParse(pstNextFrame, enFrameSrc,pstWin);
            if (HI_SUCCESS == nRet)
            {
                /* repeat play times */
                pstNextFrame->u32F_NdPlayTime = 0;
                pstNextFrame->u32T_NdPlayTime = 0;
                pstNextFrame->u32B_NdPlayTime = 0;

                pstNextFrame->u32F_RlPlayTime = 1;
                pstNextFrame->u32T_RlPlayTime = 1;
                pstNextFrame->u32B_RlPlayTime = 1;

                pstNextFrame->enFrameState = OPTM_PLAY_STATE_PLAY_OVER;

                pstNextFrame->enFrameSrc   = FRAME_SOURCE_IFRAME;
                pstNextFrame->bNeedRelease = HI_TRUE;

                if (HI_UNF_VIDEO_FIELD_ALL == pstNextFrame->VdecFrameInfo.enFieldMode)
                {
                    if (!pWinFrameBuf->bProgressive)
                    {
                        if (pWinFrameBuf->bTopFirst)
                        {
                            pstNextFrame->u32CurDispFld = 2;

                            /* to avoid back-recede caused by that SD regards this frame as completed frame, in isogeny output,
                             * modify the field information of frame.
                             */
                            pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
                        }
                        else
                        {
                            pstNextFrame->u32CurDispFld = 1;

                            /* to avoid back-recede caused by that SD regards this frame as completed frame, in isogeny output,
                             * modify the field information of frame.
                             */
                            pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
                        }
                    }
                    else
                    {
                        pstNextFrame->u32CurDispFld = 3;
                    }
                }
                else if (HI_UNF_VIDEO_FIELD_TOP == pstNextFrame->VdecFrameInfo.enFieldMode)
                {
                    pstNextFrame->u32CurDispFld = 1;
                }
                else
                {
                    pstNextFrame->u32CurDispFld = 2;
                }


                OPTM_FB_ReceivePutNext(pWinFrameBuf);
            }
            else
            {
                /* error frame count, release memory. */
                //HI_DRV_MMZ_Release(&(pstNextFrame->stMMZBuf));
                OPTM_FB_RelaseMMZBufInWQ(&(pstNextFrame->stMMZBuf), HI_DRV_MMZ_Release);
            }
            pstWin->u32I_FrameWaitCount = 0;
        }
    }

    /* receive new frame video data, put it into FB after setting */
    if ( (pstWin->pfGetImage != HI_NULL) && (pstWin->bPaused != HI_TRUE))
    {
        if (pstWin->bQuickOutputMode != HI_TRUE)
        {
            for(i=0; i<OPTM_FFB_MAX_FRAME_NUM; i++)
            {
                /*
                   DEBUG_PRINTK("in1 %d re %d c %d n %d %d lst %d lst2 %d\n",
                   pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current,
                   pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState,
                   pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);
                 */
                /*  get next idle node, return if FB is full */
                pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);
                if (HI_NULL == pstNextFrame)
                {
                    return HI_FAILURE;
                }

                HI_INFO_VO("Nqo, t1.\n");

                pstWin->WinFrameBuf.TryReceiveFrame++;

                nRet = pstWin->pfGetImage(pstWin->s32UserId, &(pstNextFrame->VdecFrameInfo));
                if (nRet != HI_SUCCESS)
                {
                    return HI_FAILURE;
                }

                if (HI_ID_AVPLAY == pstWin->enModId)
                {
                    enFrameSrc = FRAME_SOURCE_VDEC;
                    HI_TRACE(HI_LOG_LEVEL_INFO, HI_ID_VO,"FromeVDEC PTS=%u.\n", pstNextFrame->VdecFrameInfo.u32Pts);
                }
                else
                {
                    enFrameSrc = FRAME_SOURCE_VI;
                    HI_TRACE(HI_LOG_LEVEL_INFO, HI_ID_VO,"FromeVI PTS=%u.\n", pstNextFrame->VdecFrameInfo.u32Pts);
                }

                nRet = VOISR_FrameParse(pstNextFrame, enFrameSrc,pstWin);
                if (nRet != HI_SUCCESS)
                {
                    /* count error frame */
                    VO_ReleaseFrame(pstWin,pstNextFrame);
                    return HI_FAILURE;
                }
                /*
                if(pstNextFrame->VdecFrameInfo.u32Height < 720)
                {
                    OPTM_AA_UpdateZmeCoef_SD(&g_stVzmeCoef);
                }
                else
                {
                    OPTM_AA_UpdateZmeCoef_HD(&g_stVzmeCoef);
                }*/

                OPTM_M_FrameRateRevise(pstWin, pstNextFrame);

                OPTM_M_CorrectProgInfo(pstWin, pstNextFrame);

                /*  frame rate transformation  */
#ifdef _OPTM_FUNC_FRC_ENABLE_
                if (((pstWin->enModId == HI_ID_VI)
                            ||(pstWin->enModId == HI_ID_AVPLAY))
                        //&& (pstWin->bFieldMode != HI_TRUE)
                        )
                {
                    stFrcCfg.s32ImageType = (pstNextFrame->VdecFrameInfo.enFieldMode == HI_UNF_VIDEO_FIELD_ALL);
                    stFrcCfg.s32InPro     = (pWinFrameBuf->bProgressive == HI_TRUE);
                    stFrcCfg.s32BtMode    = (pWinFrameBuf->bTopFirst == HI_TRUE) ? 0 : 1;

                    stFrcCfg.u32InRate    = pstWin->InFrameRate;

                    stFrcCfg.u32OutRate   = (OPTM_M_GetDispRate(pstWin->enDispHalId)*10);

                    /* multi-speed play control */
                    stFrcCfg.u32PlayRate  = pstWin->u32DisplayRatio;

                    OPTM_ALG_FrcFldProcExtern(&(pstWin->stAlgFrc), &stFrcCfg, &stFrcCtrl);
                }
                else
                {
                    stFrcCtrl.s32BtmState = 0;
                    stFrcCtrl.s32TopState = 0;
                    stFrcCtrl.s32FrmState = 0;
                }
#else
                stFrcCtrl.s32BtmState = 0;
                stFrcCtrl.s32TopState = 0;
                stFrcCtrl.s32FrmState = 0;
#endif
                if (      (HI_TRUE == pstWin->bFieldMode)
                        && (HI_UNF_VIDEO_FIELD_ALL == pstNextFrame->VdecFrameInfo.enFieldMode)
                   )
                {
                    if (pstNextFrame->VdecFrameInfo.bTopFieldFirst == HI_TRUE)
                        pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
                    else
                        pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
                }

                VOISR_SetFrameDisplayTime(pstNextFrame, &stFrcCtrl);

                OPTM_FB_ReceivePutNext(pWinFrameBuf);
                HI_INFO_VO("Nqo, r1.\n");
            }
        }
        else
        {
            //for(i=0; i<OPTM_FFB_MAX_FRAME_NUM; i++)
            {
                HI_UNF_VO_FRAMEINFO_S   VdecFrameInfoTmp;

                /*
                   DEBUG_PRINTK("in1 %d re %d c %d n %d %d lst %d lst2 %d\n",
                   pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current,
                   pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState,
                   pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);
                 */
                /*  get next idle node, return if FB is full */
                pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);
                if (HI_NULL == pstNextFrame)
                {
                    return HI_FAILURE;
                }

                HI_INFO_VO("Qo, t1.\n");

                pstWin->WinFrameBuf.TryReceiveFrame++;

                /* get first frame */
                nRet = pstWin->pfGetImage(pstWin->s32UserId, &(pstNextFrame->VdecFrameInfo));
                if (nRet != HI_SUCCESS)
                {
                    return HI_FAILURE;
                }

                while(1)
                {
                    /* get first frame */
                    nRet = pstWin->pfGetImage(pstWin->s32UserId, &VdecFrameInfoTmp);
                    if (nRet != HI_SUCCESS)
                    {
                        break;
                    }
                    else
                    {
                        VO_ReleaseFrame(pstWin,pstNextFrame);
                        pstNextFrame->VdecFrameInfo = VdecFrameInfoTmp;
                        HI_INFO_VO("Qo, d1.\n");
                    }
                }

                if (HI_ID_AVPLAY == pstWin->enModId)
                {
                    enFrameSrc = FRAME_SOURCE_VDEC;
                    HI_TRACE(HI_LOG_LEVEL_INFO, HI_ID_VO,"FromeVDEC PTS=%u.\n", pstNextFrame->VdecFrameInfo.u32Pts);
                }
                else
                {
                    enFrameSrc = FRAME_SOURCE_VI;
                    HI_TRACE(HI_LOG_LEVEL_INFO, HI_ID_VO,"FromeVI PTS=%u.\n", pstNextFrame->VdecFrameInfo.u32Pts);
                }

                nRet = VOISR_FrameParse(pstNextFrame, enFrameSrc,pstWin);
                if (nRet != HI_SUCCESS)
                {
                    /* count error frame */
                    VO_ReleaseFrame(pstWin,pstNextFrame);
                    return HI_FAILURE;
                }

                /* in quickoutput mode, trust bit-stream information */
                //OPTM_M_FrameRateDetect(pstWin, pstNextFrame);
                if  (pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate != 0)
                {
                    pstWin->FrameTime   = 10000 / pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate;
                    pstWin->InFrameRate = pstNextFrame->VdecFrameInfo.stSeqInfo.u32FrameRate ;
                }
                else
                {
                    pstWin->FrameTime   = 40;
                    pstWin->InFrameRate = 0;
                }

                /* in quickoutput mode, trust bit-stream  information  */
                //OPTM_M_CorrectProgInfo(pstWin, pstNextFrame);

                /* no need of frame rate transformation */
                stFrcCtrl.s32BtmState = 0;
                stFrcCtrl.s32TopState = 0;
                stFrcCtrl.s32FrmState = 0;

                if (      (HI_TRUE == pstWin->bFieldMode)
                        && (HI_UNF_VIDEO_FIELD_ALL == pstNextFrame->VdecFrameInfo.enFieldMode)
                   )
                {
                    if (pstNextFrame->VdecFrameInfo.bTopFieldFirst == HI_TRUE)
                        pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
                    else
                        pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
                }

                VOISR_SetFrameDisplayTime(pstNextFrame, &stFrcCtrl);

                if (0 != pWinFrameBuf->ReceiveFrame)
                {
                    VOISR_IgnoreAllFrame(pWinFrameBuf);
                }

                OPTM_FB_ReceivePutNext(pWinFrameBuf);

                HI_INFO_VO("Qo, r1.\n");
            }
        }
    }

    return HI_SUCCESS;
}

/* check whether reset DIE is necessary */
HI_BOOL VOISR_DieNeedReset(OPTM_FRAME_S *pCrtFrame, OPTM_FRAME_S *pLastFrame)
{
    HI_UNF_VO_FRAMEINFO_S *pCrtVdecFrame, *pLastVdecFrame;

    if (pCrtFrame->enFrameState != OPTM_PLAY_STATE_READY)
    {
        return HI_FALSE;
    }

    if (HI_NULL == pLastFrame)
    {
        return HI_TRUE;
    }

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);
    pLastVdecFrame = &(pLastFrame->VdecFrameInfo);

    if(   (pLastVdecFrame->u32Width != pCrtVdecFrame->u32Width)
            || (pLastVdecFrame->u32Height != pCrtVdecFrame->u32Height)
            || (pLastVdecFrame->u32YStride != pCrtVdecFrame->u32YStride)
            || (pLastVdecFrame->enVideoFormat != pCrtVdecFrame->enVideoFormat)
            || (pLastVdecFrame->enSampleType != pCrtVdecFrame->enSampleType)
            || (pLastVdecFrame->enFieldMode != pCrtVdecFrame->enFieldMode)
            || (pLastVdecFrame->bTopFieldFirst != pCrtVdecFrame->bTopFieldFirst))
    {
#if 0
        DEBUG_PRINTK("Lst: w=%d, h=%d,Y=%d, F=%d, S=%d, M=%d,t=%d\n",
                pLastVdecFrame->u32Width,
                pLastVdecFrame->u32Height,
                pLastVdecFrame->u32YStride,
                pLastVdecFrame->enVideoFormat,
                pLastVdecFrame->enSampleType,
                pLastVdecFrame->enFieldMode,
                pLastVdecFrame->bTopFieldFirst);

        DEBUG_PRINTK("Cur: w=%d, h=%d,Y=%d, F=%d, S=%d, M=%d,t=%d\n",
                pCrtVdecFrame->u32Width,
                pCrtVdecFrame->u32Height,
                pCrtVdecFrame->u32YStride,
                pCrtVdecFrame->enVideoFormat,
                pCrtVdecFrame->enSampleType,
                pCrtVdecFrame->enFieldMode,
                pCrtVdecFrame->bTopFieldFirst);
#endif
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}

HI_S32 VO_ReleaseFrame(OPTM_WIN_S  *pstWin, OPTM_FRAME_S *pstOptmFrame)
{
    if (pstWin->u32Debugbits & DEBUG_FRAME_DEBUG_BIT)
    {
        if (FRAME_SOURCE_IFRAME ==pstOptmFrame->enFrameSrc)
            HI_VO_PRINT("I%d--------%#x---L\n",pstOptmFrame->enIframeMode,pstOptmFrame->VdecFrameInfo.u32YAddr);
        else
            HI_VO_PRINT("--------%#x---L\n",pstOptmFrame->VdecFrameInfo.u32YAddr);
    }

    if (FRAME_SOURCE_IFRAME ==pstOptmFrame->enFrameSrc)
    {
        if ( VO_IFRAME_MODE_COPY == pstOptmFrame->enIframeMode)
        {
            OPTM_FB_RelaseMMZBufInWQ(&(pstOptmFrame->stMMZBuf), HI_DRV_MMZ_Release);
        }
        else if  ( VO_IFRAME_MODE_NOCOPY == pstOptmFrame->enIframeMode)
        {
            if (pstWin->pfPutImage)
            {
                pstWin->pfPutImage(pstWin->s32UserId, &(pstOptmFrame->VdecFrameInfo));
            }
            else
            {
                HI_ERR_VO("Release Fun is NULL .\n");
                return HI_FAILURE;
            }
        }
        else
        {
            HI_ERR_VO("I Frame mode err  .\n");
            return HI_FAILURE;
        }
    }
    else
    {
        if (pstWin->pfPutImage)
            {
                pstWin->pfPutImage(pstWin->s32UserId, &(pstOptmFrame->VdecFrameInfo));
            }
            else
            {
                HI_ERR_VO("Release Fun is NULL .\n");
                return HI_FAILURE;
            }
    }
    return HI_SUCCESS;
}

HI_VOID VOISR_FlushFrame(OPTM_WIN_S *pstWin)
{
    OPTM_FB_S      *pWinFrameBuf;
    HI_U32         i;

    pWinFrameBuf = &(pstWin->WinFrameBuf);

    for (i=0; i<OPTM_FFB_MAX_FRAME_NUM; i++)
    {
        if (OPTM_FRAME_RECEIVED == pWinFrameBuf->OptmFrameBuf[i].enState)
        {
            if (pWinFrameBuf->OptmFrameBuf[i].bNeedRelease)
            	VO_ReleaseFrame(pstWin,&(pWinFrameBuf->OptmFrameBuf[i]));
        }
    }
    for (i=0; i<OPTM_FFB_MAX_FRAME_NUM; i++)
    {
        if (pWinFrameBuf->OptmRlsFrameBuf[i].bNeedRelease)
            VO_ReleaseFrame(pstWin,&(pWinFrameBuf->OptmFrameBuf[i]));
    }
    OPTM_FB_Reset(pWinFrameBuf, pstWin->bQuickOutputMode);
    pstWin->bDisableDei =  pstWin->bQuickOutputMode;
    return;
}

static OPTM_FRAME_S *VOISR_PutOneFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pstNewFrame)
{
    OPTM_FRAME_S *pstNextFrame;
    OPTM_FB_S    *pWinFrameBuf;

    pWinFrameBuf = &pstWin->WinFrameBuf;

    /*  get next idle node, return if FB is full */
    pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);
    if (pstNextFrame == HI_NULL)
    {
        HI_ERR_VO("no free frame space\n");
        return HI_NULL;
    }

    if (pstNewFrame->enFrameSrc != FRAME_SOURCE_IFRAME)
    {
        pstNextFrame->enFrameSrc = FRAME_SOURCE_STILL;
    }
    else
    {
        /* 20110330_G45208
         * this branch is new, if there is no such branch, when reset it display I frame,
         * then pstNextFrame->enFrameSrc is random value, to lose I frame  information,
         * however, I frame uses dynamic memory allocated by MMZ,
         * in lack of I frame information, the memory cannot be correctly released,
         * causing memory leakage.
         *
         * This bug was found from test when I frame needs display during music-program switch.
         */
        pstNextFrame->enFrameSrc = FRAME_SOURCE_IFRAME;
    }


    pstNextFrame->VdecFrameInfo = pstNewFrame->VdecFrameInfo;
    pstNextFrame->stMMZBuf   = pstNewFrame->stMMZBuf;

    /*  repeat times */
    //    pstNextFrame->u32Repeat = 1;
    pstNextFrame->u32F_NdPlayTime = 0;
    pstNextFrame->u32T_NdPlayTime = 0;
    pstNextFrame->u32B_NdPlayTime = 0;

    pstNextFrame->u32F_RlPlayTime = 1;
    pstNextFrame->u32T_RlPlayTime = 1;
    pstNextFrame->u32B_RlPlayTime = 1;

    pstNextFrame->enFrameState = OPTM_PLAY_STATE_PLAY_OVER;

    pstNextFrame->bNeedRelease = pstNewFrame->bNeedRelease;

    if (HI_UNF_VIDEO_FIELD_ALL == pstNewFrame->VdecFrameInfo.enFieldMode)
    {
        if (!pWinFrameBuf->bProgressive)
        {
            if (pWinFrameBuf->bTopFirst)
            {
                pstNextFrame->u32CurDispFld = 2;

                /*
                 * to avoid back-recede caused by that SD regards this frame as completed frame, in isogeny output,
                 * modify the field information of frame.
                 */
                pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
            }
            else
            {
                pstNextFrame->u32CurDispFld = 1;

                /*
                 * to avoid back-recede caused by that SD regards this frame as completed frame, in isogeny output,
                 * modify the field information of frame.
                 */
                pstNextFrame->VdecFrameInfo.enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
            }
        }
        else
        {
            pstNextFrame->u32CurDispFld = 3;
        }
    }
    else if (HI_UNF_VIDEO_FIELD_TOP == pstNewFrame->VdecFrameInfo.enFieldMode)
    {
        pstNextFrame->u32CurDispFld = 1;
    }
    else
    {
        pstNextFrame->u32CurDispFld = 2;
    }

    /*  set frame number, re-count */
    OPTM_FB_ReceivePutNext(pWinFrameBuf);
    return pstNextFrame;
}

HI_VOID VOISR_TdeWorkFinish(HI_VOID *pParam0, HI_VOID *pParam1)
{
    HI_U32 *pFinishFlag = (HI_U32 *)pParam0;
    if (pFinishFlag != HI_NULL)
    {
        //HI_VO_PRINT("TDE work done\n");
        *pFinishFlag = 3;
    }

    return;
}

#define CMP_HEAD_LINE_BYTES    2
static HI_S32 VOISR_TdeCopy_compress(HI_UNF_VO_FRAMEINFO_S *pDst,
        HI_UNF_VO_FRAMEINFO_S *pSrc,

        HI_U32 *pFinishFlag, HI_BOOL bBlock, HI_U32 Timeout)
{
    TDE_HANDLE hTde;
    TDE2_SURFACE_S stSrc, stDst;
    TDE2_RECT_S  stSrcRect, stDstRect;
    HI_S32 nRet;

    if ((pSrc->u32CompressFlag == 0))
        return 0xdeadbeef;


    if( pfnTdeBeginJob(&hTde) != HI_SUCCESS)
    {
        HI_ERR_VO("start tde copy failed.\n");
        return HI_FAILURE;
    }


    /******************copy the Y-HEADER********************************************/
    /*  set source image information of TDE task  */
    memset(&stSrc,0x0,sizeof(TDE2_SURFACE_S));
    memset(&stDst,0x0,sizeof(TDE2_SURFACE_S));
    memset(&stSrcRect,0x0,sizeof(TDE2_RECT_S));
    memset(&stDstRect,0x0,sizeof(TDE2_RECT_S));

    stSrc.u32PhyAddr = pSrc->u32YAddr;/*  bitmap head address */
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte;/* color  format  */
    stSrc.u32Height  = CMP_HEAD_LINE_BYTES;/*compress head, */
    stSrc.u32Width   = pSrc->s32CompFrameHeight;/*  bitmap width */
    stSrc.u32Stride  = pSrc->s32CompFrameHeight;/*  bitmap stride */

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;

    /*  set target  image  information of TDE task   */
    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32YAddr;/*  bitmap head address */

    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
                              &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("1tde copy timeout.\n");
        return nRet;
    }

    /******************copy the Y-DATA********************************************/
    stSrc.u32PhyAddr = pSrc->u32YAddr + pSrc->s32CompFrameHeight * CMP_HEAD_LINE_BYTES;
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte; /*color  format  */
    stSrc.u32Height  = pSrc->s32CompFrameHeight; /*to ensure is this right.*/
    stSrc.u32Width   = pSrc->u32YStride;/*same with above, u32Height or s32CompFrameHeight*/
    stSrc.u32Stride  = pSrc->u32YStride;/*  bitmap  stride  */

    /*  set TDE task  target  image  information  */
    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32YAddr + pSrc->s32CompFrameHeight * CMP_HEAD_LINE_BYTES;

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;

    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
                              &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("2tde copy timeout.\n");
        return nRet;
    }

    /******************copy the C-HEADER********************************************/
    stSrc.u32PhyAddr = pSrc->u32CAddr;/*  bitmap head address */
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte;/* color  format  */
    stSrc.u32Height  = CMP_HEAD_LINE_BYTES;/*compress head, */
    stSrc.u32Width   = pSrc->s32CompFrameHeight;/*  bitmap width */
    stSrc.u32Stride  = pSrc->s32CompFrameHeight;/*  bitmap stride */

    /*  set target  image  information of TDE task   */
    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32CAddr;/*  bitmap head address */

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;
    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
                              &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("3tde copy timeout.\n");
        return nRet;
    }

    /******************copy the C-DATA********************************************/
    stSrc.u32PhyAddr = pSrc->u32CAddr + pSrc->s32CompFrameHeight*CMP_HEAD_LINE_BYTES;
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte; /*color  format  */
    stSrc.u32Height  = pSrc->s32CompFrameHeight/2; /*to ensure is this right.*/
    stSrc.u32Width   = pSrc->u32CStride;/*same with above, u32Height or s32CompFrameHeight*/
    stSrc.u32Stride  = pSrc->u32CStride;/*  bitmap  stride  */

    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32CAddr + pSrc->s32CompFrameHeight * CMP_HEAD_LINE_BYTES;

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;
    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
            &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("4tde copy timeout.\n");
        return nRet;
    }

    nRet = pfnTdeEndJob(hTde, bBlock, Timeout, HI_FALSE,
            VOISR_TdeWorkFinish, (HI_VOID *)pFinishFlag);

    if (nRet != HI_SUCCESS)
    {
        HI_ERR_VO("5tde copy timeout.\n");
    }

    return nRet;
}


static HI_S32 VOISR_TdeCopy(HI_UNF_VO_FRAMEINFO_S *pDst,
        HI_UNF_VO_FRAMEINFO_S *pSrc,
        HI_U32 *pFinishFlag, HI_BOOL bBlock, HI_U32 Timeout)
{
    TDE_HANDLE hTde;
    TDE2_SURFACE_S stSrc, stDst;
    TDE2_RECT_S  stSrcRect, stDstRect;
    HI_S32 nRet;

    memset(&stSrc,0,sizeof(TDE2_SURFACE_S));
    memset(&stDst,0,sizeof(TDE2_SURFACE_S));
    memset(&stSrcRect,0,sizeof(TDE2_RECT_S));
    memset(&stDstRect,0,sizeof(TDE2_RECT_S));

    nRet = VOISR_TdeCopy_compress(pDst, pSrc, pFinishFlag, bBlock, Timeout);
    if(nRet != 0xdeadbeef)
        return nRet;

    if( pfnTdeBeginJob(&hTde) != HI_SUCCESS)
    {
        HI_ERR_VO("start tde copy failed.\n");
        return HI_FAILURE;
    }

    /* COPY Y component */
    /*  set source image information of TDE task  */
    stSrc.u32PhyAddr = pSrc->u32YAddr;/*  bitmap head address */
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte;/* color  format  */
    stSrc.u32Height  = pSrc->u32Height;
    stSrc.u32Width   = pSrc->u32Width;/*  bitmap width */
    stSrc.u32Stride  = pSrc->u32YStride;/*  bitmap stride */

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;

    /*  set target  image  information of TDE task   */
    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32YAddr;/*  bitmap head address */
    stDst.u32Stride  = pDst->u32YStride;/*  bitmap  stride  */

    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
                              &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("tde copy timeout.\n");
        return nRet;
    }

    /* COPY C component  */
    /*  set TDE task  source  image  information  */
    stSrc.u32PhyAddr = pSrc->u32CAddr;/*  bitmap  head address  */
    stSrc.enColorFmt = TDE2_COLOR_FMT_byte;/* color  format  */
    stSrc.u32Height  = pSrc->u32Height/2;
    stSrc.u32Width   = pSrc->u32Width;/*  bitmap  width  */
    stSrc.u32Stride  = pSrc->u32CStride;/*  bitmap  stride  */

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrc.u32Width;
    stSrcRect.u32Height = stSrc.u32Height;

    /*  set TDE task  target  image  information  */
    stDst = stSrc;
    stDst.u32PhyAddr = pDst->u32CAddr;/*  bitmap  head address  */
    stDst.u32Stride  = pDst->u32CStride;/*  bitmap  stride  */

    stDstRect = stSrcRect;

    nRet = pfnTdeQuickCopy(hTde, &stSrc, &stSrcRect,
                              &stDst, &stDstRect);
    if (nRet != HI_SUCCESS)
    {
        pfnTdeCancelJob(hTde);
        HI_ERR_VO("tde copy timeout.\n");
        return nRet;
    }

    nRet = pfnTdeEndJob(hTde, bBlock, Timeout, HI_FALSE,
                        VOISR_TdeWorkFinish, (HI_VOID *)pFinishFlag);

    if (nRet != HI_SUCCESS)
    {
        HI_ERR_VO("tde copy timeout.\n");
    }

    return nRet;
}


typedef HI_S32 (* OPTM_RESET_SHEDUEL_CB)(HI_UNF_VO_FRAMEINFO_S *pstDstFrame,
        HI_UNF_VO_FRAMEINFO_S *pstSrcFrame,
        HI_U32 *pu32FinishFlag,
        HI_BOOL bBlock,
        HI_U32  Timeout);

typedef struct
{
    HI_UNF_VO_FRAMEINFO_S *pstDstFrame;
    HI_UNF_VO_FRAMEINFO_S *pstSrcFrame;
    HI_U32 *pu32FinishFlag;
    HI_BOOL bBlock;
    HI_U32 Timeout;

    OPTM_RESET_SHEDUEL_CB pWQCB;
    struct work_struct work;
}OPTM_RESET_WQ_S;

HI_VOID OPTM_ResetFreevmem(struct work_struct *work)
{
    OPTM_RESET_WQ_S  *pWQueueInfo = container_of(work, OPTM_RESET_WQ_S, work);
    HI_S32 nRet;

    //TDE_TRACE(TDE_KERN_DEBUG, "Count = %d\n", pWQueueInfo->Count);

    nRet = pWQueueInfo->pWQCB(pWQueueInfo->pstDstFrame, pWQueueInfo->pstSrcFrame,
            pWQueueInfo->pu32FinishFlag, pWQueueInfo->bBlock, pWQueueInfo->Timeout);
    while(nRet != HI_SUCCESS)
    {
        msleep(10);
        nRet = pWQueueInfo->pWQCB(pWQueueInfo->pstDstFrame, pWQueueInfo->pstSrcFrame,
                pWQueueInfo->pu32FinishFlag, pWQueueInfo->bBlock, pWQueueInfo->Timeout);
    }

    kfree(pWQueueInfo);
}

#if 0
HI_S32 OPTM_ResetTdeCopySchedule( HI_UNF_VO_FRAMEINFO_S *pstDstFrame,
        HI_UNF_VO_FRAMEINFO_S *pstSrcFrame,
        HI_U32 *pu32FinishFlag,
        HI_BOOL bBlock,
        HI_U32 Timeout,
        OPTM_RESET_SHEDUEL_CB pFuncWork)
{
    OPTM_RESET_WQ_S *pstWQ = kmalloc(sizeof(OPTM_RESET_WQ_S), GFP_ATOMIC);

    if(HI_NULL == pstWQ)
    {
        HI_ERR_VO("Malloc TDEFREEWQ_S failed!\n");
        return HI_FAILURE;
    }

    pstWQ->pstDstFrame   = pstDstFrame;
    pstWQ->pstSrcFrame   = pstSrcFrame;
    pstWQ->pu32FinishFlag = pu32FinishFlag;
    pstWQ->bBlock = bBlock;
    pstWQ->Timeout = Timeout;
    pstWQ->pWQCB = pFuncWork;

    INIT_WORK(&pstWQ->work, OPTM_ResetFreevmem);
    schedule_work(&pstWQ->work);

    return HI_SUCCESS;
}
#endif

HI_VOID VO_LstCFrame_Copy(struct work_struct *work)
{
    OPTM_FRAME_S *pstFrm0,  *pRstFrame;
    OPTM_FB_S *pWinFrameBuf;
    OPTM_WIN_S *pstWin;
    HI_S32  Ret;

    pstWin = container_of(work, OPTM_WIN_S, Reset_Work);

    pstWin->u32ResetStep = 1;

    pWinFrameBuf = &(pstWin->WinFrameBuf);

    pstFrm0 = OPTM_FB_GetCurrent(pWinFrameBuf);
    if (pstFrm0 == HI_NULL)
    {
        /* Current frame is empty, get Last frame  */
        pstFrm0 = OPTM_FB_GetLstConfig(pWinFrameBuf);
        if (pstFrm0 == HI_NULL)
        {
            pstWin->u32ResetStep = 0;
            return;
        }
    }
    else
    {
        /*  if Current frame has not played field/frame data, adopt data of Last frame */
        if ((!pstFrm0->u32F_RlPlayTime)
                &&(!pstFrm0->u32T_RlPlayTime)
                &&(!pstFrm0->u32B_RlPlayTime)
           )
        {
            pstFrm0 = OPTM_FB_GetLstConfig(pWinFrameBuf);
            if (pstFrm0 == HI_NULL)
            {
                pstWin->u32ResetStep = 0;
                return;
            }
        }
    }

    if (HI_SUCCESS != OPTM_CreateStillFrame(&(pstWin->stLast_Frame), &(pstFrm0->VdecFrameInfo)))
    {
        HI_ERR_VO("VO I frame alloc mmz buffer failed, can't reset window.\n");
        goto black_frame;
    }

    pstWin->u32ResetStep = 2;
    pRstFrame = &(pstWin->stLast_Frame.stFrame);
    Ret = VOISR_TdeCopy(&(pRstFrame->VdecFrameInfo), &(pstFrm0->VdecFrameInfo), NULL, HI_TRUE, 5);
    if (Ret != HI_SUCCESS)
    {
        DEBUG_PRINTK("<---------------------------------------->func %s line %d , tde copy error\r\n", __func__, __LINE__);
        OPTM_DestroystillFrame(&(pstWin->stLast_Frame));
        goto black_frame;
    }
    else
    {
        VOISR_FlushFrame(pstWin);

        pRstFrame->enFrameSrc = FRAME_SOURCE_IFRAME;
        pRstFrame->bNeedRelease = HI_TRUE;
        /*  load FB */
        //pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);

        VOISR_PutOneFrame(pstWin, pRstFrame);

        goto reset_win;

    }
black_frame:

    VOISR_FlushFrame(pstWin);

    /*  get black frame  */
    pstFrm0 = OPTM_GetBlackFrame();

    /*  load FB */
    VOISR_PutOneFrame(pstWin, pstFrm0);

reset_win:

#if 0
    {
        HI_S32 i;

        for(i=0; i<OPTM_VO_IN_PTS_SEQUENCE_LENGTH; i++)
        {
            pstWin->InPTSSqn[i] = 0xffffffff;
        }

        pstWin->InPTSPtr = 0;

        pstWin->FrameTime = 40;
        pstWin->InFrameRate = 0;
        pstWin->InFrameRateLast = 0;
        pstWin->InFrameRateEqueTime = 0;
    }
#endif
    VO_RestFPS(pstWin, HI_FALSE);
    wake_up_interruptible(&(pstWin->RstWaitQueue));

    pstWin->u32ResetStep = 0;

    return;
}

HI_VOID VOISR_SaveRstFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pFrame, HI_U32 pos)
{
    if ((pos != VO_REST_DEI_LAST_FRAME) && (pos != VO_REST_DEI_CURT_FRAME)
            && (pos != VO_REST_DEI_NEXT_FRAME))
        return;
    if (pFrame == HI_NULL)
        return;
    memcpy(&(pstWin->stRstFrame[pos]), pFrame, sizeof(OPTM_FRAME_S));
    return;
}
HI_VOID VOISR_RlsRstFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pCurFrame)
{
    HI_U32 pos;
    OPTM_FRAME_S   *pReleaseFrame;
    if (pCurFrame == HI_NULL)
        return;
    if ((pstWin->stRstFrame[VO_REST_DEI_NEXT_FRAME].bNeedRelease == HI_FALSE)
            && (pstWin->stRstFrame[VO_REST_DEI_LAST_FRAME].bNeedRelease == HI_FALSE))
        return;
    if(pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME].VdecFrameInfo.u32YAddr !=
            pCurFrame->VdecFrameInfo.u32YAddr)
        return;
    for (pos = VO_REST_DEI_LAST_FRAME; pos <= VO_REST_DEI_NEXT_FRAME; pos ++)
    {
        if (pos == VO_REST_DEI_CURT_FRAME)
            continue;
        pReleaseFrame = &(pstWin->stRstFrame[pos]);
        if (pReleaseFrame->bNeedRelease == HI_FALSE)
            continue;

        //printk("release rst frame %08x pos %d \r\n", pReleaseFrame->VdecFrameInfo.u32YAddr, pos);

        VO_ReleaseFrame(pstWin,pReleaseFrame);

        memset(pReleaseFrame, 0x0, sizeof(OPTM_FRAME_S));
        pReleaseFrame->bNeedRelease = HI_FALSE;
    }
    memset(&(pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME]), 0x0, sizeof(OPTM_FRAME_S));
    pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME].bNeedRelease = HI_FALSE;

    return;
}

HI_VOID VOISR_FindSaveRstFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pstFrm0, HI_U32 pos)
{
    HI_UNF_VO_FRAMEINFO_S   *pRstFrame;
    OPTM_FRAME_S *pstNextFrame;

    pRstFrame = VOISR_FindCfgFrame(pstWin, &(pstFrm0->VdecFrameInfo), pos);
    if (pRstFrame != HI_NULL)
    {
        pstNextFrame = OPTM_FB_FindFrame(&(pstWin->WinFrameBuf), pRstFrame);
        if (pstNextFrame != HI_NULL)
        {
            VOISR_SaveRstFrame(pstWin, pstNextFrame, pos);
            pstNextFrame->bNeedRelease = HI_FALSE;
        }
    }
    return;
}

HI_VOID VOISR_WindowReset(OPTM_WIN_S *pstWin)
{
    OPTM_FB_S *pWinFrameBuf;
    static OPTM_FRAME_S *pstFrm0;

    pWinFrameBuf = &(pstWin->WinFrameBuf);

    if (pstWin->enReset == HI_UNF_WINDOW_FREEZE_MODE_BLACK)
    {
        VOISR_FlushFrame(pstWin);

        /*  get black frame  */
        pstFrm0 = OPTM_GetBlackFrame();

        /*  load FB */
        VOISR_PutOneFrame(pstWin, pstFrm0);

        pstWin->bReset = HI_FALSE;


        VO_RestFPS(pstWin, HI_FALSE);
        /*  initialize enDetect  */

        wake_up_interruptible(&(pstWin->RstWaitQueue));
    }
    else
    {
        OPTM_FRAME_S stResetFrameTmp;
        OPTM_FRAME_S *pstNextFrame;

        if (pstWin->bUseDNRFrame == HI_FALSE)
        {
            queue_work(Window_Reset, &(pstWin->Reset_Work));
            pstWin->bReset = HI_FALSE;
            pstWin->u32ResetStep = 1;
            return;
        }

        pstFrm0 = OPTM_FB_GetCurrent(pWinFrameBuf);
        if (pstFrm0 == HI_NULL)
        {
            /* Current frame is empty, get Last frame  */
            pstFrm0 = OPTM_FB_GetLstConfig(pWinFrameBuf);
            if (pstFrm0 == HI_NULL)
            {
                pstWin->bReset = HI_FALSE;
                return;
            }
        }
        else
        {
            /*  if Current frame has not played field/frame data, adopt data of Last frame */
            if ((!pstFrm0->u32F_RlPlayTime)
                    &&(!pstFrm0->u32T_RlPlayTime)
                    &&(!pstFrm0->u32B_RlPlayTime)
               )
            {
                pstFrm0 = OPTM_FB_GetLstConfig(pWinFrameBuf);
                if (pstFrm0 == HI_NULL)
                {
                    pstWin->bReset = HI_FALSE;
                    return;
                }
            }
        }

        memcpy(&stResetFrameTmp, pstFrm0, sizeof(OPTM_FRAME_S));
        pstFrm0->bNeedRelease = HI_FALSE;

        //VOISR_SaveRstFrame(pstWin, pstFrm0, VO_REST_DEI_CURT_FRAME);
        if (pstWin->bRstHQ)
        {
            VOISR_FindSaveRstFrame(pstWin, pstFrm0, VO_REST_DEI_LAST_FRAME);
            VOISR_FindSaveRstFrame(pstWin, pstFrm0, VO_REST_DEI_NEXT_FRAME);
        }

        VOISR_FlushFrame(pstWin);

        /*  load FB */
        //pstNextFrame = OPTM_FB_ReceiveGetNext(pWinFrameBuf);

        pstNextFrame = VOISR_PutOneFrame(pstWin, &stResetFrameTmp);
        if (pstWin->bRstHQ)
        {
            VOISR_SaveRstFrame(pstWin, pstNextFrame, VO_REST_DEI_CURT_FRAME);
            pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME].VdecFrameInfo = stResetFrameTmp.VdecFrameInfo;
        }

        pstWin->bReset = HI_FALSE;

#if 0
        {
            HI_S32 i;

            for(i=0; i<OPTM_VO_IN_PTS_SEQUENCE_LENGTH; i++)
            {
                pstWin->InPTSSqn[i] = 0xffffffff;
            }

            pstWin->InPTSPtr = 0;

            pstWin->FrameTime = 40;
            pstWin->InFrameRate = 0;
            pstWin->InFrameRateLast = 0;
            pstWin->InFrameRateEqueTime = 0;
        }
#endif
        VO_RestFPS(pstWin, HI_FALSE);
        wake_up_interruptible(&(pstWin->RstWaitQueue));
    }

    return;
}

HI_VOID VOISR_SetDetInfo(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pCrtFrame)
{
    /* based on decoding information, write progressive/interlaced information. */
    if (HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE == pCrtFrame->VdecFrameInfo.enSampleType)
    {
        pstWin->WinFrameBuf.bProgressive = HI_TRUE;
    }
    else
    {
        pstWin->WinFrameBuf.bProgressive = HI_FALSE;
    }

    /* based on decoding information or FOD detection information, write field order information. */
    if (pstWin->stDetInfo.s32TopFirst != -1)
    {
        if (0 == pstWin->stDetInfo.s32TopFirst)
        {
            pstWin->WinFrameBuf.bTopFirst = HI_FALSE;
        }
        else
        {
            pstWin->WinFrameBuf.bTopFirst = HI_TRUE;
        }
    }
    else
    {
        if (pCrtFrame->VdecFrameInfo.bTopFieldFirst)
        {
            pstWin->WinFrameBuf.bTopFirst = HI_TRUE;
        }
        else
        {
            pstWin->WinFrameBuf.bTopFirst = HI_FALSE;
        }
    }

    return;
}

HI_S32 VOISR_ReleaseFrame(OPTM_WIN_S *pstWin)
{
    OPTM_FB_S      *pWinFrameBuf;
    OPTM_FRAME_S   *pReleaseFrame;
    HI_S32         Ret;
    HI_VO_CAPTURE_S     *pstCapMmz = HI_NULL, *n;
    HI_BOOL     flag = HI_FALSE;

    pWinFrameBuf = &(pstWin->WinFrameBuf);

    if (pstWin->pfPutImage)
    {
        //DEBUG_PRINTK("res in %d re %d c %d n %d %d lst %d lst2 %d\n", pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current, pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState, pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);
        Ret = OPTM_FB_ReleaseGetNext(pWinFrameBuf, &pReleaseFrame);

        while (HI_SUCCESS == Ret)
        {
            if (pReleaseFrame->bCaptured)
            {
                list_for_each_entry_safe(pstCapMmz, n, &pstWin->stCaptureHead, list)
                {
                    if (pReleaseFrame->VdecFrameInfo.u32Pts == pstCapMmz->stCapFrame.VdecFrameInfo.u32Pts)
                    {
                        if (mutex_trylock(&(pstCapMmz->lock)))
                        {
                            flag = HI_TRUE;
                            pstCapMmz->stCapFrame.bNeedRelease = HI_TRUE;
                        }
                        else
                        {
                            pReleaseFrame->bNeedRelease = HI_TRUE;
                        }
                        break;
                    }
                }
                pReleaseFrame->bCaptured = HI_FALSE;
            }

            if ((pReleaseFrame->bNeedRelease) && (OPTM_FRAME_RECEIVED == pReleaseFrame->enState))
            {
                VO_ReleaseFrame(pstWin,pReleaseFrame);
            }

            VOISR_RlsRstFrame(pstWin, pReleaseFrame);
            OPTM_FB_ReleasePutNext(pWinFrameBuf);
            if (HI_TRUE == flag)
            {
                mutex_unlock(&(pstCapMmz->lock));
                flag = HI_FALSE;
            }
            //DEBUG_PRINTK("res in %d re %d c %d n %d %d lst %d lst2 %d\n", pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current, pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState, pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);

            Ret = OPTM_FB_ReleaseGetNext(pWinFrameBuf, &pReleaseFrame);
        }
    }
    // TODO: 这个分支是不是可以不要?
    else
    {
        Ret = OPTM_FB_ReleaseGetNext(pWinFrameBuf, &pReleaseFrame);

        while (HI_SUCCESS == Ret)
        {
            if (pReleaseFrame->bCaptured)
            {
                list_for_each_entry_safe(pstCapMmz, n, &pstWin->stCaptureHead, list)
                {
                    if (pReleaseFrame->VdecFrameInfo.u32Pts == pstCapMmz->stCapFrame.VdecFrameInfo.u32Pts)
                    {
                        if (mutex_trylock(&(pstCapMmz->lock)))
                        {
                            flag = HI_TRUE;
                            pstCapMmz->stCapFrame.bNeedRelease = HI_TRUE;
                        }
                        else
                        {
                            pReleaseFrame->bNeedRelease = HI_TRUE;
                        }
                        break;
                    }
                }
                pReleaseFrame->bCaptured = HI_FALSE;
            }

            if ((pReleaseFrame->bNeedRelease) && (OPTM_FRAME_RECEIVED == pReleaseFrame->enState))
            {
                if (FRAME_SOURCE_IFRAME == pReleaseFrame->enFrameSrc)
                {
                    /*  release I frame  */
                    //HI_DRV_MMZ_Release(&(pReleaseFrame->stMMZBuf));
                    OPTM_FB_RelaseMMZBufInWQ(&(pReleaseFrame->stMMZBuf), HI_DRV_MMZ_Release);
                }
                else if (HI_FALSE == pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsWrite].bNeedRelease)
                {
                    memcpy(&(pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsWrite].VdecFrameInfo), &(pReleaseFrame->VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
                    pWinFrameBuf->OptmRlsFrameBuf[pWinFrameBuf->RlsWrite].bNeedRelease = HI_TRUE;
                    pWinFrameBuf->RlsWrite = (pWinFrameBuf->RlsWrite + 1) % OPTM_FFB_MAX_FRAME_NUM;
                }
            }
            VOISR_RlsRstFrame(pstWin, pReleaseFrame);

            OPTM_FB_ReleasePutNext(pWinFrameBuf);

            if (HI_TRUE == flag)
            {
                mutex_unlock(&(pstCapMmz->lock));
                flag = HI_FALSE;
            }

            Ret = OPTM_FB_ReleaseGetNext(pWinFrameBuf, &pReleaseFrame);
        }
    }

    return HI_SUCCESS;
}

HI_U32 OPTM_M_VO_GetVideoLayer(OPTM_WIN_S **ahMainWin, HI_S32 WinNum)
{
    HI_S32 i, j, s32MaxRect = 0, diecnt = -1;
    HI_UNF_VIDEO_SAMPLE_TYPE_E die[3];
    HAL_DISP_LAYER_E Layerbak[3], stand[3] = {HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO4};

    if (WinNum > 3)
    {
        DEBUG_PRINTK("vou too many windows\r\n");
    }

    for (i = 0; i < WinNum; i++)
    {
        if (ahMainWin[i]->pstCOFrame == NULL)
        {
            die[i] = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
        }
        else
        {
            die[i] = ahMainWin[i]->pstCOFrame->VdecFrameInfo.enSampleType;
        }

        if ((s32MaxRect < (ahMainWin[i]->hSlaveWin[0]->stAttr.stOutputRect.s32Width * ahMainWin[i]->hSlaveWin[0]->stAttr.stOutputRect.s32Height))
                && (die[i] == HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE)
                && (ahMainWin[i]->hSlaveWin[0]->stAttr.stOutputRect.s32Height >= 200))
        {
            s32MaxRect = ahMainWin[i]->hSlaveWin[0]->stAttr.stOutputRect.s32Width * ahMainWin[i]->hSlaveWin[0]->stAttr.stOutputRect.s32Height;
            diecnt = i;
        }
        Layerbak[i] = ahMainWin[i]->hSlaveWin[0]->enLayerHalId;
    }

    /*  no one window need die*/
    if (diecnt == -1)
    {
        for (i = 0; i < WinNum; i++)
        {
            ahMainWin[i]->hSlaveWin[0]->enLayerHalId = stand[i];
        }
    }
    else
    {
        ahMainWin[diecnt]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
        j = 1;
        for (i = 0; i < WinNum; i++)
        {
            if (i != diecnt)
                ahMainWin[i]->hSlaveWin[0]->enLayerHalId = stand[j++];
        }

    }

    for (i = 0; i < WinNum; i++)
    {
        if (Layerbak[i] != ahMainWin[i]->hSlaveWin[0]->enLayerHalId)
            break;
    }

#if 0
    if (WinNum == 2)
    {
        DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d  layer %d : %d \r\n", __func__, __LINE__,ahMainWin[0]->hSlaveWin[0]->enLayerHalId,ahMainWin[1]->hSlaveWin[0]->enLayerHalId);
    }
    else
    {
        DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d layer %d : %d : %d\r\n", __func__, __LINE__,ahMainWin[0]->hSlaveWin[0]->enLayerHalId,ahMainWin[1]->hSlaveWin[0]->enLayerHalId, ahMainWin[2]->hSlaveWin[0]->enLayerHalId);
    }
#endif
    if (i == WinNum)
        return 0;
    else
        return 1;
}



HI_VOID VOISR_WindowManag(OPTM_VO_S *pstVo, HI_BOOL *pWinChange)
{
    //HI_S32 s32OrderNum = 0, nChangOrder = 0;
    HI_S32 nChangOrder = 0;
    HI_S32 s32Order[3];
    HI_S32 i;
    OPTM_DISP_S   *pOptmDisp;

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);

    if (pstVo->unUpFlag.Bits.Win != 0)
    {
        pstVo->s32MainWinNum= pstVo->s32NewMainWinNum;

        for(i=0; i<pstVo->s32NewMainWinNum; i++)
        {
            pstVo->ahMainWin[i] = pstVo->ahNewMainWin[i];
            memcpy(pstVo->ahMainWin[i]->hSlaveWin,pstVo->ahMainWin[i]->hSlaveNewWin,
                    sizeof(OPTM_WIN_S*) * OPTM_VO_MAX_SLAVE_CHANNEL);
            pstVo->ahMainWin[i]->s32SlaveNum = pstVo->ahMainWin[i]->s32SlaveNewNum;
        }


        if (pstVo->enUnfVo == HI_UNF_VO_HD0)
        {
            *pWinChange = HI_TRUE;
        }

        pstVo->unUpFlag.Bits.Win = 0;
        pstVo->unUpFlag.Bits.OutRect = 1;
    }

    /* todo: rect change flag */
    if (pstVo->unUpFlag.Bits.OutRect != 0)
    {
        if (pstVo->enUnfVo == HI_UNF_VO_HD0)
        {
            /* assign layer to window, use VHD for large height */
            OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO1, HI_FALSE);


            if (pstVo->s32MainWinNum == 1)
            {
                pstVo->ahMainWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
                pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;

                /*this judge just to solve flash problem when MCE -> app. prevent app resetting ACC when de-attach MCE win.*/
                if ((pstVo->stWin[OPTM_VO_MCE_WIN_ID - 1].bIsMCE && (pstVo->stWin[OPTM_VO_MCE_WIN_ID - 1].hMainWin))
                    || !(pstVo->stWin[OPTM_VO_MCE_WIN_ID - 1].bIsMCE))
                {
                    pstVo->ahMainWin[0]->hSlaveWin[0]->unAttrUp.Bits.OutRect = 1;
                }

#ifdef OPTM_VIDEO_MIXER_ENABLE
                /* in online mode, only VHD for window */

                OPTM_M_SetVmLayer(HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1);

#endif
            }
#if 0
            else if ((pstVo->s32MainWinNum == 2) && (vou_version == HAL_OPTM_VERSION_V200))
            {
                if ((pstVo->ahMainWin[0]->hSlaveWin[0]->stAttr.stOutputRect.s32Height * pstVo->ahMainWin[0]->hSlaveWin[0]->stAttr.stOutputRect.s32Width)
                        >=(pstVo->ahMainWin[1]->hSlaveWin[0]->stAttr.stOutputRect.s32Height * pstVo->ahMainWin[1]->hSlaveWin[0]->stAttr.stOutputRect.s32Width)
                   )
                {
                    if (   (pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId != HAL_DISP_LAYER_VIDEO1)
                            || (pstVo->ahMainWin[1]->hSlaveWin[0]->enLayerHalId != HAL_DISP_LAYER_VIDEO2))
                    {
                        pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
                        pstVo->ahMainWin[0]->hSlaveWin[0]->unAttrUp.Bits.OutRect = 1;
                        pstVo->ahMainWin[1]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
                        pstVo->ahMainWin[1]->hSlaveWin[0]->unAttrUp.Bits.OutRect = 1;

                        pstVo->ahMainWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
                        pstVo->ahMainWin[1]->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
                        nChangOrder = 1;
                    }
                }
                else
                {
                    if(    (pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId != HAL_DISP_LAYER_VIDEO2)
                            || (pstVo->ahMainWin[1]->hSlaveWin[0]->enLayerHalId != HAL_DISP_LAYER_VIDEO1))
                    {
                        pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
                        pstVo->ahMainWin[0]->hSlaveWin[0]->unAttrUp.Bits.OutRect = 1;
                        pstVo->ahMainWin[1]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
                        pstVo->ahMainWin[1]->hSlaveWin[0]->unAttrUp.Bits.OutRect = 1;

                        pstVo->ahMainWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
                        pstVo->ahMainWin[1]->enLayerHalId = HAL_DISP_LAYER_VIDEO1;

                        nChangOrder = 1;
                    }
                }
            }
#endif
            /*  MV300 Process branch*/
            //      else if ((pstVo->s32MainWinNum >= 2) && (vou_version == HAL_OPTM_VERSION_V300))
            else if (pstVo->s32MainWinNum >= 2)
            {
                nChangOrder = OPTM_M_VO_GetVideoLayer(&(pstVo->ahMainWin[0]), pstVo->s32MainWinNum);

            }
        }
        else if (pstVo->enUnfVo == HI_UNF_VO_SD0)
        {
            if (pstVo->s32MainWinNum == 0)
            {
                OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO3, HI_FALSE);
            }
            else if (pstVo->s32MainWinNum == 1)
            {
                pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO3;

                pstVo->ahMainWin[0]->enLayerHalId = HAL_DISP_LAYER_VIDEO3;
            }
        }

        pstVo->unUpFlag.Bits.OutRect = 0;
    }
    else
    {
        if (pstVo->s32MainWinNum >= 2)
        {
            for (i = 0; i < pstVo->s32MainWinNum; i++)
            {
                if (pstVo->ahMainWin[i]->pstCOFrame == NULL)
                    continue;
                if (pstVo->ahMainWin[i]->VideoType != pstVo->ahMainWin[i]->pstCOFrame->VdecFrameInfo.enSampleType)
                    break;
            }
            if (i != pstVo->s32MainWinNum)
            {
                nChangOrder = OPTM_M_VO_GetVideoLayer(&(pstVo->ahMainWin[0]), pstVo->s32MainWinNum);

            }
        }
    }
    if(pstVo->unUpFlag.Bits.Order != 0)
    {
        for(i=0; i<pstVo->s32NewMainWinNum; i++)
        {
            pstVo->ahMainWin[i] = pstVo->ahNewMainWin[i];
        }

        nChangOrder = 1;

        pstVo->unUpFlag.Bits.Order = 0;
    }

    /*  update VHD/VAD superposition  order  */
    if (nChangOrder != 0)
    {

        s32Order[0]= (HI_S32)(pstVo->ahMainWin[0]->hSlaveWin[0]->enLayerHalId);
        s32Order[1]= (HI_S32)(pstVo->ahMainWin[1]->hSlaveWin[0]->enLayerHalId);
       // if ((pstVo->s32MainWinNum == 3) )
        //{
            //s32Order[2] = (HI_S32)(pstVo->ahMainWin[2]->hSlaveWin[0]->enLayerHalId);
            //s32OrderNum = 3;
        //}
        //else
        {
            s32Order[2] = HAL_DISP_LAYER_VIDEO4;
            //s32OrderNum = 2;
        }

#ifdef OPTM_VIDEO_MIXER_ENABLE
#if 0
        if (s32Order[0] == 0)
        {
            /* VHD below VAD */
            OPTM_M_SetVmLayer(HAL_DISP_LAYER_VIDEO2, HAL_DISP_LAYER_VIDEO2, HAL_DISP_LAYER_VIDEO1);
        }
        else
        {
            /* VHD above VAD */
            OPTM_M_SetVmLayer(HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO1, HAL_DISP_LAYER_VIDEO2);
        }
#endif
        OPTM_M_SetVmLayer(s32Order[2], s32Order[1], s32Order[0]);
#endif


        /*  set SubLayerOrder, inner usage */
        //DISP_SetSubLayerZorder(pstVo->enUnfDisp, pstVo->enDispLayer, s32OrderNum, s32Order);
    }
    return;
}

HI_VOID VOISR_WindowProcess(OPTM_WIN_S *pstWin)
{
    OPTM_M_DISP_INFO_S    OptmDispInfo;
    OPTM_VO_S* pstVoCh;
    if (pstWin->bEnable == HI_TRUE)
    {
        /*  customer problem: HSCP201203198196
         *   |(1,2,3,B)_________________|(2,3,4,T)__________________| (2,3,4,B)________________|(3,4,5,T)
         *
         *   if video play like up, normal we release frame 1 in third vtthd (2,3,4,B), there is no problem
         *   but if the (2,3,4) buffers is be played once, and release buffer 1 in second vtthd, SD display
         *   will be bad, because in second vtthd , sd display buffer is (1,2,3), but buffer 1 is released.
         *   so we release buffer 1 in third vrrhd.
         *  */
        /* release frame */
#ifndef VDP_USE_DEI_FB_OPTIMIZE
		VOISR_ReleaseFrame(pstWin);
#endif

        /* receive frame */
        VOISR_ReceiveFrame(pstWin);
        pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);

        /*  get DISP information  */
        OPTM_M_GetDispInfo(pstVoCh->enDispHalId, &OptmDispInfo);
        pstVoCh->stDispInfo = OptmDispInfo;

        /*  get next field disp information  */
        if (OptmDispInfo.bProgressive != HI_TRUE)
        {
            //pstVoCh->NextBtmflag = 1 - OPTM_HAL_DISP_GetCurrField(pstVoCh->enDispHalId);
            pstVoCh->NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pstVoCh->enDispHalId);
        }
        else
        {
            pstVoCh->NextBtmflag = 2;
        }

        /* config frame */
        if(HI_SUCCESS == VOISR_ConfigMain_FrameBuffer(pstWin, &OptmDispInfo, pstVoCh->NextBtmflag))
        {
            /*
			 * For MV330, wbc0 data fetch point may be 0(after DEI), so shadow need know information of HD Frame,
			 *   so, shadow need know HD window struct.
			 * Fastplay use a window, in the scene fastplay->app, the mce window is destroyed and app create another window,
			 *   but SD can't detach from HD(because of the smooth transition), so the shadow don't know the change of
			 *   window, so we need switch it here.
			 */
#ifdef CHIP_TYPE_hi3716mv330
            VO_SwitchMainwinOfShadow(pstVoCh, pstWin->hSlaveWin[0]->s32WindowId);
#endif
            VOISR_SlaveConfigFrame(pstWin->hSlaveWin[0], pstWin, HI_FALSE, NULL);
        }

#ifdef VDP_USE_DEI_FB_OPTIMIZE
        /* release frame */
        VOISR_ReleaseFrame(pstWin);
#endif
    }
    else
    {
        if (!pstWin->hSlaveWin[0]->bIsMCE)
        {
            OPTM_M_VO_SetEnable(pstWin->hSlaveWin[0]->enLayerHalId, pstWin->bEnable);
        }
    }

    return;
}


HI_VOID VOISR_PIPIsr(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_VO_S        *pstVo;
    OPTM_DISP_S      *pOptmDisp;
    OPTM_FB_S        *pWinFrameBuf;
    OPTM_FRAME_S     *pConfigFrame;
    static  HI_BOOL   WinChange = HI_FALSE;
    HI_S32            i;

    pstVo = &(g_stVoLayer[(HI_S32)u32Param0]);

    if(pstVo->enUnfDisp >= HI_UNF_DISP_BUTT)
        return ;
    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);

    if (g_VoSuspend)
    {
        return;
    }

    /* window manage */
    if (pstVo->bEnable != HI_TRUE)
    {
        return;
    }

    if (pstVo->bMasked == HI_TRUE)
    {
        HI_S32 i;
        for(i=0; i<pstVo->s32HalVoNUmber; i++)
        {
            OPTM_M_VO_SetEnable(pstVo->enVoHalId[i], HI_FALSE);
        }
        return;
    }


    if (pstVo->unUpFlag.u32Value != 0)
    {
        VOISR_WindowManag(pstVo, &WinChange);
    }

    /* window do */
    //for(i=0; i<pstVo->s32MainWinNum; i++)
    for(i=pstVo->s32MainWinNum-1; i>=0; i--)
    {
        VOISR_WindowProcess(pstVo->ahMainWin[i]);
    }

#ifndef HI_VDP_ONLY_SD_SUPPORT
    if ((pstVo->enUnfVo == HI_UNF_VO_HD0)
            &&(pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
       )
    {
        if (pstVo->s32MainWinNum == 0)
        {
            if(g_miracast.mirror_create_flag != 0xdeadbeef)
                VO_SetWbcEnable(HI_FALSE);
        }
        else if (pstVo->s32MainWinNum == 1)
        {
            if (!pstVo->ahMainWin[0]->bEnable)
            {
                VO_SetWbcEnable(HI_FALSE);
                return;
            }

            pWinFrameBuf = &(pstVo->ahMainWin[0]->WinFrameBuf);

            pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, pWinFrameBuf->LstConfig);
            if (!pConfigFrame)
            {
                return;
            }

            if ((HI_FALSE == pConfigFrame->bNeedRelease) && (pConfigFrame->enFrameSrc != FRAME_SOURCE_IFRAME))
            {
                return;
            }

            if ((!OPTM_VSDIsRWZBProcess(&(pConfigFrame->VdecFrameInfo)))
                    &&((g_stShadow.bWbcMode != HI_TRUE) || (!g_stShadow.bEnable))
               )
            {
                VO_SetWbcEnable(HI_FALSE);

                VO_SwitchVoAttach(HI_TRUE, pstVo);

                VO_SetWbcEnable(HI_TRUE);

                WinChange = HI_FALSE;
            }
            else if (OPTM_VSDIsRWZBProcess(&(pConfigFrame->VdecFrameInfo))
                    &&((g_stShadow.bWbcMode != HI_FALSE) || (!g_stShadow.bEnable))
                    )
            {
                VO_SetWbcEnable(HI_FALSE);

                VO_SwitchVoAttach(HI_FALSE, pstVo);

                VO_SetWbcEnable(HI_TRUE);

                WinChange = HI_FALSE;
            }
        }
        else
        {
            if ((!pstVo->ahMainWin[0]->bEnable)
                    &&(!pstVo->ahMainWin[1]->bEnable)
               )
            {
                VO_SetWbcEnable(HI_FALSE);
                return;
            }
            else
            {
                if (!g_stShadow.bEnable)
                {
                    VO_SwitchVoAttach(HI_TRUE, pstVo);
                    VO_SetWbcEnable(HI_TRUE);
                }
            }

            if (g_stShadow.bWbcMode != HI_TRUE)
            {
                VO_SetWbcEnable(HI_FALSE);

                VO_SwitchVoAttach(HI_TRUE, pstVo);

                VO_SetWbcEnable(HI_TRUE);
            }
        }
    }
#endif
    return;
}
#if 0

static screenshare_list_node_S * VO_GetNode_FromFreelist(void)
{
    screenshare_list_node_S *free_node = NULL;

    if((g_miracast.free_list.next == NULL) || (g_miracast.free_list.prev== NULL))
        return NULL;

    if (list_empty(&g_miracast.free_list))
        return NULL;

    free_node = list_entry(g_miracast.free_list.next, screenshare_list_node_S, listnode);
    list_del(&free_node->listnode);

    return free_node;
}


/*whether should we add reference count. */
static void VO_PutNode_ToFulllist(HI_BOOL drop_flag)
{

    screenshare_list_node_S  *list_node = NULL, *tmp_node = NULL;
    HI_U32 time_stamp_in_ms = 0;

    if ((g_miracast.working_list.next == NULL) || (g_miracast.working_list.prev== NULL))
        return;

    if ((g_miracast.full_list.next == NULL) || (g_miracast.full_list.prev== NULL))
        return;

    list_for_each_entry_safe(list_node, tmp_node, &g_miracast.working_list, listnode)
    {
        if (list_node->workingstatus == 2) {

            /*attach the timestamp we have got.*/
            SYS_GetTimeStampMs(&time_stamp_in_ms);
            list_node->mirror_frame.u32PTS = time_stamp_in_ms;

            g_miracast.s32RecvFrameCnt ++;
            list_del(&list_node->listnode);
            list_node->usedflag = 0;

            if (drop_flag == 0)
                list_add_tail(&list_node->listnode,&g_miracast.full_list);
            else if ((g_miracast.s32RecvFrameCnt%2) == 0)
                list_add_tail(&list_node->listnode,&g_miracast.full_list);
            else
                list_add_tail(&list_node->listnode,&g_miracast.free_list);

        }
    }

    return;
}

static  int get_next_buffer_for_wbc0(screenshare_list_node_S **screen_share_node)
{
    *screen_share_node = VO_GetNode_FromFreelist();
    if(NULL == *screen_share_node)
        return -1;

    return 0;
}

/*just do wbc0 software initialization.*/
static HI_S32 VO_Miracast_InitWBC0(void)
{
    OPTM_WBC0_S  *pstWbc;

    /*ISR does not change because when isr is running, switch will be dangerous.*/
    pstWbc = &g_miracast.stWbc;
    pstWbc->bEnable = HI_FALSE;
    memset(pstWbc, 0, sizeof(OPTM_WBC0_S));

    pstWbc->enLayerId    = HAL_DISP_LAYER_WBC0;
    pstWbc->enSrcLayerId = HAL_DISP_LAYER_VIDEO1;
    pstWbc->enSrcDispCh  = HAL_DISP_CHANNEL_DHD;
    pstWbc->enDstDispCh  = HAL_DISP_CHANNEL_DSD;
    pstWbc->s32TaskCount = 0;

    pstWbc->stTask.s32DfpSel      = 2; /* for mpw: 0, DIE; 1, ZME; 2, CBM;  for pilot: 3, Feeder */
    pstWbc->stTask.s32DataFmt     = 0; /* Package422: 0, UYVY; 1, YUYV; 2, YVYU */
    pstWbc->stTask.u32ReqInterval = 0; /* request interval */
    pstWbc->stTask.pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    return HI_SUCCESS;
}

static void VO_Allocate_Cast_handle(DISP_MIRROR_CFG_S  *mirror_cfg)
{
    mirror_cfg->cast_handle = 1;
    return;
}

signed int VO_Create_And_SwitchToCast(DISP_MIRROR_CFG_S  *mirror_cfg)
{
    unsigned int   bufnum = 0, i = 0;
    unsigned int   bUserAlloc = 0, revise_h = 0, revise_w = 0;
    screenshare_list_node_S  *free_list = NULL;
    unsigned int frame_stride = 0, frame_height = 0;
    signed int nRet = 0;
    HI_UNF_DISP_CAST_CFG_S user_cast_cfg;


    /*first step: initialize the g_miracast except g_miracast.stWbc */
    if (g_miracast.mirror_create_flag == 0xdeadbeef)/*allow re-entrance.*/
        return HI_SUCCESS;

    if (HI_VO_MOSAIC_TYPE_STANDALONE == g_enVoMosaicType){
        g_miracast.mirror_create_flag = 0;
        return HI_ERR_VO_INVALID_OPT;
    }

    user_cast_cfg = mirror_cfg->mirror_cfg;
    if((user_cast_cfg.bufferNumber > HI_DISP_MIRROR_BUFFER_MAX_NUMBER)
            ||(user_cast_cfg.bufferNumber < 2)
            ||(user_cast_cfg.bUserAlloc == 1)
            ||(user_cast_cfg.u32Height < 240)
            ||(user_cast_cfg.u32Height > 576)
            ||(user_cast_cfg.u32Width < 320)
            ||(user_cast_cfg.u32Width > 720)
            ||(user_cast_cfg.u32DataFormat == HI_UNF_FORMAT_YUV_SEMIPLANAR_420)
            ||(user_cast_cfg.u32DataFormat == HI_UNF_FORMAT_YUV_SEMIPLANAR_422)
            ||(user_cast_cfg.u32DataFormat == HI_UNF_FORMAT_YUV_BUTT)){

        if (user_cast_cfg.bUserAlloc == 1)
            HI_WARN_VO("in this verion  useralloc is not supported.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    memset((void*)&g_miracast, 0, sizeof(OPTM_MIRACAST_WIN_S));
    g_miracast.user_cfg_info  =  mirror_cfg->mirror_cfg;
    revise_w = mirror_cfg->mirror_cfg.u32Width & 0xfffffffe;
    revise_h = mirror_cfg->mirror_cfg.u32Height & 0xfffffffc;

    bufnum                  = mirror_cfg->mirror_cfg.bufferNumber;
    bUserAlloc              = mirror_cfg->mirror_cfg.bUserAlloc;
    frame_stride            = (revise_w * 2 + 15) & 0xfffffff0;
    frame_height            =  revise_h;

    /*set the crop rect, and dataformat, now seems useless.*/
    if (bUserAlloc != 1)
    {
        nRet = CMPI_MEM_AllocMem("Screenshare", HI_NULL,
                frame_stride * frame_height * bufnum, 0, &(g_miracast.screensharebuf));

        if (nRet != 0){
            memset((void*)&g_miracast, 0, sizeof(OPTM_MIRACAST_WIN_S));
            return -1;
        }
    }

    /*for the first time, we should allocate*/
    free_list = (screenshare_list_node_S *)vmalloc(sizeof(screenshare_list_node_S)*bufnum);
    if(NULL == free_list){
        HI_DRV_MMZ_Release(&(g_miracast.screensharebuf));
        memset((void*)&g_miracast, 0, sizeof(OPTM_MIRACAST_WIN_S));
        return -1;
    }

    memset((void*)free_list, 0, sizeof(screenshare_list_node_S)*bufnum);

    /*we should init the list first.*/
    INIT_LIST_HEAD(&g_miracast.free_list);
    INIT_LIST_HEAD(&g_miracast.full_list);
    INIT_LIST_HEAD(&g_miracast.working_list);
    g_miracast.list_vmalloc_addr = (unsigned int)free_list;
    g_miracast.init_list_nodenum = bufnum;
    g_miracast.s32RecvFrameCnt = 0;
    g_miracast.bWbcEnable = 0;

    for(i = 0; i < bufnum; i++)
    {
        if (bUserAlloc == 1)
            free_list[i].mirror_frame.u32BufPhyAddr = mirror_cfg->mirror_cfg.u32BufPhyAddr[i];
        else
            free_list[i].mirror_frame.u32BufPhyAddr = g_miracast.screensharebuf.u32StartPhyAddr
                + frame_stride * frame_height * i;

        free_list[i].mirror_frame.u32Width = revise_w;
        free_list[i].mirror_frame.u32Height = revise_h;
        free_list[i].mirror_frame.u32Index = i;
        free_list[i].mirror_frame.u32YStride =  frame_stride;

        free_list[i].usedflag = 0;
        list_add_tail(&free_list[i].listnode, &g_miracast.free_list);
    }
    /*second step: initialize the g_miracast except g_miracast.stWbc */
    VO_Miracast_InitWBC0();
    g_miracast.mirror_create_flag = 0xdeadbeef;
    nRet = switch_wbc0_point(2);

    VO_Allocate_Cast_handle(mirror_cfg);
    return nRet;
}


/*Fixme: should judge wether the list is used, we should add this.*/
signed int VO_Destroy_And_SwitchFromCast(HI_BOOL force_flag,HI_HANDLE  cast_handle)
{
    unsigned int   bufnum = 0;
    unsigned int   bUserAlloc = 0;
    signed int ret = 0;

    if(cast_handle != 1)
        return HI_ERR_VO_INVALID_PARA;

    if(g_miracast.mirror_create_flag == 0)
        return HI_ERR_VO_INVALID_OPT;

    if(force_flag == 0){
        /*first set the create falg */
        g_miracast.mirror_create_flag = 0;

        /*mira list not empty, return failed.*/
        if(0 != VO_Get_ListStatus()){
            g_miracast.mirror_create_flag = 0xdeadbeef;
            return HI_ERR_VO_INVALID_OPT;
        }
    }

    g_miracast.mirror_create_flag = 0;
    bufnum = g_miracast.user_cfg_info.bufferNumber;
    bUserAlloc = g_miracast.user_cfg_info.bUserAlloc;

    /*if not user alloc, release all the mmz buffer first. */
    if ((bUserAlloc == 0) && (g_miracast.screensharebuf.u32StartPhyAddr != 0))
    {
        HI_DRV_MMZ_Release(&(g_miracast.screensharebuf));
    }

    vfree((const void *)g_miracast.list_vmalloc_addr);
    memset((void*)&g_miracast, 0, sizeof(OPTM_MIRACAST_WIN_S));

    ret = switch_wbc0_point(4);
    return ret;
}

#endif
static HI_RECT_S VoGetSDRect(void)
{
    OPTM_M_DISP_INFO_S stDstInfo;
    HI_RECT_S stRect;
    OPTM_M_GetDispInfo(HAL_DISP_CHANNEL_DSD, &stDstInfo);  /* dsd */

    if( HI_TRUE == stDstInfo.stAdjstWin.bAdjstScrnWinFlg)
    {
        stRect = stDstInfo.stAdjstWin.stAdjstScrnWin;
    }
    else
    {
        stRect = stDstInfo.stScrnWin;
    }
    return stRect;
}
#if 0

HI_VOID VOISR_Wbc0Isr_MiraCast(void)
{
    #if 0
    OPTM_M_DISP_INFO_S stSrcInfo, stDstInfo;
    OPTM_WBC0_S *pstWbc0;
    OPTM_M_WBC0_S *pstTask = NULL;
    HI_S32 NextBtmflag;
    HI_U32 vn1, vn2;
    screenshare_list_node_S *screen_share_node = NULL;
    unsigned int input_frame_rate = 0;
    HI_BOOL dropflag = 0;

    pstWbc0 = &g_miracast.stWbc;
    /*first set free node the free list.*/
    if(g_miracast.mirror_enable_change_status == 1)
    {
        VO_Reset_CastList();
        /*if changed  all the refcount should be reset.*/
        pstWbc0->s32TaskCount = 0;
        g_miracast.s32RecvFrameCnt = 0;
        g_miracast.mirror_enable_change_status = 0;
    }

    if(g_miracast.mirror_enable_status == 0)
        return ;


    put_node_to_freelist();
    if(get_next_buffer_for_wbc0(&screen_share_node) == -1)
        return;

    screen_share_node->workingstatus = -1;
    OPTM_M_GetDispInfo(pstWbc0->enSrcDispCh, &stSrcInfo);/* dhd */
    OPTM_M_GetDispInfo(pstWbc0->enDstDispCh, &stDstInfo);/* dsd */

    OPTM_HAL_GetVersion(&vn1, &vn2);/* Get vou version */
    if (   (stSrcInfo.enFmt >= HI_UNF_ENC_FMT_PAL ) && (stSrcInfo.enFmt <= HI_UNF_ENC_FMT_SECAM_COS)
            && ( (OPTM_V101_VERSION1 == vn1) && (OPTM_V101_VERSION2 == vn2) )
       )
    {
        pstTask->stCropRect.s32Width = pstTask->stCropRect.s32Width * 2;
    }

    pstTask = &(pstWbc0->stTask);
    pstTask->stCropRect = stSrcInfo.stScrnWin;
    pstTask->stOutRect.s32Width = screen_share_node->mirror_frame.u32Width;
    pstTask->stOutRect.s32Height = screen_share_node->mirror_frame.u32Height;
    pstTask->stOutRect.s32X= 0;
    pstTask->stOutRect.s32Y = 0;

    if (stSrcInfo.bProgressive == HI_TRUE)
        NextBtmflag = 2;/* 0, top; 1, bottom; 2, frame */
    else
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pstWbc0->enSrcDispCh);

    pstTask->s32InBtmFlag  = NextBtmflag;
    pstTask->s32OutBtmFlag = 2;

    pstTask->iYuvType = 0;
    pstTask->u32Addr    = screen_share_node->mirror_frame.u32BufPhyAddr;
    pstTask->u32Stride  = screen_share_node->mirror_frame.u32YStride;

    OPTM_M_WBC0_SendTask(pstWbc0->enLayerId, pstTask);
    input_frame_rate = stSrcInfo.u32DispRate;

    if (input_frame_rate > MIRACAST_FRAMERATE_MAX)
        dropflag = 1;

    put_singlenode_to_workinglist(screen_share_node);
    VO_PutNode_ToFulllist(dropflag);
#endif
    return;
}

#endif

#ifdef CHIP_TYPE_hi3716mv330
#define WBC0_WIDNOW_Y_THRESHOLD 75

HI_VOID VOISR_SetWbc0Dfp(OPTM_SHADOW_WIN_S* pstShadow, HI_U32 u32WindowYPos)
{
    HI_U32 u32HRatio = 0;
    HI_U32 u32VRatio = 0;

    Vou_GetHorRatio(HAL_DISP_LAYER_VIDEO1, &u32HRatio);
    Vou_GetVerRatio(HAL_DISP_LAYER_VIDEO1, &u32VRatio);

    if (((u32HRatio >= 0x100000) && (u32VRatio >= 0x1000)) || (u32WindowYPos > WBC0_WIDNOW_Y_THRESHOLD))
    {
        pstShadow->stWbc.stTask.s32DfpSel = 4;
    }
    else
    {
        pstShadow->stWbc.stTask.s32DfpSel = 0;
    }

    Vou_SetWbcDfpSel((HAL_WBC_DFPSEL_E)(pstShadow->stWbc.stTask.s32DfpSel));
}
#endif

HI_BOOL VO_WBC0FieldMatch(HI_VOID)
{
    return g_stShadow.stWbc.bHDSDFieldMatch;
}

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_VOID VOISR_Wbc0Isr(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_M_DISP_INFO_S stSrcInfo;
    OPTM_SHADOW_WIN_S *pstShadow;
    OPTM_WBC0_S *pstWbc0;
    OPTM_M_WBC0_S *pstTask;
    HI_UNF_VO_FRAMEINFO_S *pNextFrame;
    HI_S32 NextBtmflag;
    HI_U32 vn1, vn2;
    HI_RECT_S stDstScrn;
    HI_RECT_S stDSDDispScrn = {0, 0, 720, 576};
    HI_RECT_S stTempCrop;
    HI_RECT_S stTempOutput;
    HI_U32 u32HDNextField = 2;

    pstShadow = (OPTM_SHADOW_WIN_S *)u32Param0;
    pstWbc0 = (OPTM_WBC0_S *)&(pstShadow->stWbc);

    pstWbc0->bHDSDFieldMatch = HI_TRUE;

    if (g_VoSuspend)
    {
        /* start WBC0 */
        Vou_SetWbcEnable(pstWbc0->enLayerId, HI_FALSE);

        /* register update */
        HAL_DISP_SetRegUpNoRatio(pstWbc0->enLayerId);

        //DEBUG_PRINTK("m0=%d,", pstWbc0->enLayerId);
        return;
    }

    if ((pstShadow->bEnable != HI_TRUE)&& (g_miracast.mirror_create_flag != 0xdeadbeef))
    {
        /* start WBC0 */
        Vou_SetWbcEnable(pstWbc0->enLayerId, HI_FALSE);

        /* register update */
        HAL_DISP_SetRegUpNoRatio(pstWbc0->enLayerId);
        //DEBUG_PRINTK("m1=%d,", pstWbc0->enLayerId);
        return;
    }

    if ((pstWbc0->bEnable != HI_TRUE)&&(g_miracast.stWbc.bEnable != HI_TRUE))
    {
        /* start WBC0 */
        Vou_SetWbcEnable(pstWbc0->enLayerId, HI_FALSE);

        /* register update */
        HAL_DISP_SetRegUpNoRatio(pstWbc0->enLayerId);
        //DEBUG_PRINTK("m2=%d,", pstWbc0->enLayerId);
        return;
    }

    if (pstWbc0->bMasked == HI_TRUE)
    {
        /* start WBC0 */
        Vou_SetWbcEnable(pstWbc0->enLayerId, HI_FALSE);

        /* register update */
        HAL_DISP_SetRegUpNoRatio(pstWbc0->enLayerId);

        //DEBUG_PRINTK("m3=%d,", pstWbc0->enLayerId);
        return;
    }

    if (g_miracast.mirror_create_flag == 0xdeadbeef){
      //  VOISR_Wbc0Isr_MiraCast();
        return;
    }

    /*  single buffer scheme, no reverse of buffer */
#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount >= 2)
    {
        return;
    }

    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount > 0)
    {
        OPTM_WBCFB_RecievePutNext(pstWbc0->pstWbcBuf);
        pstWbc0->s32TaskCount--;
    }
#endif

    /*  1  check whether there is data in DHD*/
    //DEBUG_PRINTK("in %d, lst %d, lst2 %d,", pstWbc0->pstWbcBuf->InPtr, pstWbc0->pstWbcBuf->LsPtr, pstWbc0->pstWbcBuf->Ls2Ptr);

#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE

    /*  2  single buffer scheme, no need to reverse buffer */
    pNextFrame = OPTM_WBC0FB_GetBuffer(pstWbc0->pstWbcBuf);
    if (pNextFrame == HI_NULL)
    {
        return;
    }

#else

    /*  2   get 1 frame  */
    pNextFrame = OPTM_WBCFB_ReceiveGetNext(pstWbc0->pstWbcBuf);

    if (pNextFrame == HI_NULL)
    {
        return;
    }

    OPTM_WBCFB_ReceivePutConfig(pstWbc0->pstWbcBuf);
#endif
    /*  3  based on dhd/dsd set coefficients, set frame TB information  */
    OPTM_M_GetDispInfo(pstWbc0->enSrcDispCh, &stSrcInfo);  /* dhd screen info, fullscreen */
    stDstScrn = VoGetSDRect();      /* dsd screen info, include offset */

    /* Get vou version */
    OPTM_HAL_GetVersion(&vn1, &vn2);

    pstTask = &(pstWbc0->stTask);

#ifdef CHIP_TYPE_hi3716mv330
    OPTM_M_GetDispScreen(HAL_DISP_CHANNEL_DSD, &stDSDDispScrn);
    VOISR_SetWbc0Dfp(pstShadow,
                        (stDstScrn.s32Y + pstShadow->pRealMainWin->WinModCfg.stOutRect.s32Y * stDstScrn.s32Height / stSrcInfo.stScrnWin.s32Height)
                            *100/stDSDDispScrn.s32Height);
#endif

    /* Writeback data fetch point 0: before ZME  */
    if (0 == pstTask->s32DfpSel)
    {
        if (HI_NULL == pstShadow->pMainWin->WinFrameBuf.pCrtFrame)
        {
            return ;
        }

        /* Initial input(Crop) rect:
         * X,Y: is the configurated value;
         * W,H: if the configurated size exceeds the frame size, use frame size, else, use configurated size.
         * Use this value to do RatioProcess, use HD crop size to do ZME.
         */
        stTempCrop.s32X = pstShadow->pRealMainWin->WinModCfg.stInRect.s32X;
        stTempCrop.s32Y = pstShadow->pRealMainWin->WinModCfg.stInRect.s32Y;
        if (pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32DisplayWidth - stTempCrop.s32X >
                pstShadow->pRealMainWin->WinModCfg.stInRect.s32Width)
        {
            stTempCrop.s32Width = pstShadow->pRealMainWin->WinModCfg.stInRect.s32Width;
        }
        else
        {
            stTempCrop.s32Width = pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32DisplayWidth - stTempCrop.s32X;
        }
        if (pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32DisplayHeight - stTempCrop.s32Y >
                pstShadow->pRealMainWin->WinModCfg.stInRect.s32Height)
        {
            stTempCrop.s32Height = pstShadow->pRealMainWin->WinModCfg.stInRect.s32Height;
        }
        else
        {
            stTempCrop.s32Height = pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32DisplayHeight - stTempCrop.s32Y;
        }

        OPTM_M_VO_GetHDFrameInfo(&pstTask->stCropRect.s32Width, &pstTask->stCropRect.s32Height, &pstTask->bSrcProgressive, &u32HDNextField);

        /* Writeback initial output rect: projection from HD. stDstScrn include offset. */
        stTempOutput.s32X = pstShadow->pRealMainWin->WinModCfg.stOutRect.s32X *
                                stDstScrn.s32Width / stSrcInfo.stScrnWin.s32Width;
        stTempOutput.s32Y = pstShadow->pRealMainWin->WinModCfg.stOutRect.s32Y *
                                stDstScrn.s32Height / stSrcInfo.stScrnWin.s32Height;
        stTempOutput.s32Width = pstShadow->pRealMainWin->WinModCfg.stOutRect.s32Width*
                                stDstScrn.s32Width / stSrcInfo.stScrnWin.s32Width;
        stTempOutput.s32Height = pstShadow->pRealMainWin->WinModCfg.stOutRect.s32Height*
                                stDstScrn.s32Height / stSrcInfo.stScrnWin.s32Height;

        VoReviseWinRect(&stTempCrop);
        VoReviseWinRect(&stTempOutput);

        /* Ratio process, revise the input rect and output rect */
        OPTM_AA_RatioProcess(&stTempCrop,
                             pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.enAspectRatio,
                             &stTempOutput,
                             pstShadow->pRealMainWin->WinModCfg.enOutRatio,
                             pstShadow->pRealMainWin->WinModCfg.enCvsMode,
                             &stDSDDispScrn);

        /* Writeback final input(crop) rect: HD had cropped the source frame, so must start from 0,0 here, and w h use the HD crop value. */
        pstTask->stCropRect.s32X = 0;
        pstTask->stCropRect.s32Y = 0;

        /* Writeback final output rect: add the configurated offset */
        pstTask->stOutRect.s32X = stDstScrn.s32X + stTempOutput.s32X;
        pstTask->stOutRect.s32Y = stDstScrn.s32Y + stTempOutput.s32Y;
        pstTask->stOutRect.s32Width = stTempOutput.s32Width;
        pstTask->stOutRect.s32Height = stTempOutput.s32Height;

        /* Source frame format handle */
        if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.enVideoFormat)
        {
            pstTask->iYuvType = 1;
        }
        else
        {
            pstTask->iYuvType = 0;
        }

        /* WBC source color space process */
        if (pstShadow->pMainWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32Height >= 720)
        {
            pstShadow->enSrcCS = OPTM_CS_eXvYCC_709;
        }
        else
        {
            pstShadow->enSrcCS = OPTM_CS_eXvYCC_601;
        }
    }
    /* Writeback data fetch point 4: after ZME */
    else
    {
        OPTM_M_VO_GetHDFrameInfo(HI_NULL, HI_NULL, HI_NULL, &u32HDNextField);

        /* Writeback from HD fullscreen to SD fullscreen */
        pstTask->stCropRect = stSrcInfo.stScrnWin;
        pstTask->stOutRect = stDstScrn;

        /* format always 422  */
        pstTask->iYuvType = 0;
    }

    /*printk("CROP %d %d %d %d\n",
        pstTask->stCropRect.s32X, pstTask->stCropRect.s32Y, pstTask->stCropRect.s32Width, pstTask->stCropRect.s32Height);
    printk("OUT %d %d %d %d\n",
        pstTask->stOutRect.s32X, pstTask->stOutRect.s32Y, pstTask->stOutRect.s32Width, pstTask->stOutRect.s32Height);*/

    /* optimized as single buffer scheme */
#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE
    if (stSrcInfo.bProgressive == HI_TRUE)
    {
        NextBtmflag = 2;  /* 0, top; 1, bottom; 2, frame */
    }
    else
    {
        //pstTask->s32InBtmFlag = 1 - OPTM_HAL_DISP_GetCurrField(pstWbc0->enSrcDispCh);
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pstWbc0->enSrcDispCh);
    }

    pstTask->s32InBtmFlag  = NextBtmflag;

    // 20110810 modify by g45208, should write back 1 field frame, not 1 prog_frame.
    //pstTask->s32OutBtmFlag = NextBtmflag;
    pstTask->s32OutBtmFlag = OPTM_M_GetDispBtmFlag(pstWbc0->enDstDispCh);

    /* Judge whether the field order of the source and SD output order are match  */
    if ((u32HDNextField == 2) || (u32HDNextField == pstTask->s32OutBtmFlag))
    {
        pstWbc0->bHDSDFieldMatch = HI_TRUE;
    }
    else
    {
        pstWbc0->bHDSDFieldMatch = HI_FALSE;
    }

    if (0 == pstTask->s32OutBtmFlag)
    {
        pNextFrame->u32YAddr = OPTM_WBC0FB_TOP_FIELD_YADDR(pstWbc0->pstWbcBuf);
        pNextFrame->u32CAddr = OPTM_WBC0FB_TOP_FIELD_CADDR(pstWbc0->pstWbcBuf);
    }
    else if (1 == pstTask->s32OutBtmFlag)
    {
        pNextFrame->u32YAddr = OPTM_WBC0FB_BOTTOM_FIELD_YADDR(pstWbc0->pstWbcBuf);
        pNextFrame->u32CAddr = OPTM_WBC0FB_BOTTOM_FIELD_CADDR(pstWbc0->pstWbcBuf);
    }

    pstTask->u32YAddr    = pNextFrame->u32YAddr;
    pstTask->u32YStride  = pNextFrame->u32YStride;
    pstTask->u32CAddr    = pNextFrame->u32CAddr;
    pstTask->u32CStride  = pNextFrame->u32CStride;

#else
    if (stSrcInfo.bProgressive == HI_TRUE)
    {
        pstTask->s32InBtmFlag = 2;  /* 0, top; 1, bottom; 2, frame */
        pstTask->s32OutBtmFlag = pstWbc0->s32TBSwtich; /* 0, top; 1, bottom; 2, frame */

        NextBtmflag = pstWbc0->s32TBSwtich;
        pstWbc0->s32TBSwtich = (1 - pstWbc0->s32TBSwtich) & 1;
    }
    else
    {
        //NextBtmflag = 1 - OPTM_HAL_DISP_GetCurrField(pstWbc0->enSrcDispCh);
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pstWbc0->enSrcDispCh);

        pstTask->s32InBtmFlag  = NextBtmflag; /* 0, top; 1, bottom; 2, frame */
        pstTask->s32OutBtmFlag = NextBtmflag; /* 0, top; 1, bottom; 2, frame */
    }
#endif

    pNextFrame->enSampleType  = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    pNextFrame->enFieldMode  = NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;

    /*  4  send task */
    OPTM_M_WBC0_SendTask(pstWbc0->enLayerId, pstTask);
    pstWbc0->s32TaskCount++;

    return;
}


#ifdef HI_VDP_HD_SD_RATIO_INDEPENDENT_SUPPORT
HI_VOID VOISR_Wbc0IsrFinish(HI_U32 u32Param0, HI_U32 u32Param1)
{
#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    OPTM_WBC0_S *pstWbc0;

    pstWbc0 = (OPTM_WBC0_S *)u32Param0;

    //DEBUG_PRINTK("b");

    if (pstWbc0->bEnable != HI_TRUE)
    {
        return;
    }

    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount > 0)
    {
        OPTM_WBCFB_RecievePutNext(pstWbc0->pstWbcBuf);
        pstWbc0->s32TaskCount--;
    }
#endif
    return;
}
#endif
#endif

HI_VOID VOISR_GetDispField(HI_UNF_VO_FRAMEINFO_S *pVdecFrame, HI_UNF_VIDEO_FIELD_MODE_E enDstFeild, HI_BOOL bProgressive, HI_BOOL bTopFirst, OPTM_SHADOW_WIN_S *pShadow)
{
    if (HI_UNF_VIDEO_FIELD_ALL == pVdecFrame->enFieldMode)
    {
        /*  progressively sample image  */
        if (bProgressive)
        {
            pShadow->CurFld  = 3;
            pShadow->DoneFld = 3;
        }
        /*  interlacedly sample image  */
        else
        {
            /* current sequence is T */
            if (HI_UNF_VIDEO_FIELD_TOP == enDstFeild)
            {
                /* never played or only top field was played, play top field */
                if ((0 == pShadow->DoneFld)
                        ||(1 == pShadow->DoneFld)
                   )
                {
                    pShadow->CurFld = 1;
                    pShadow->DoneFld |= 1;

                    /*  bottom field  first, skip bottom field  */
                    if (!bTopFirst)
                    {
                        pShadow->DoneFld |= 3;
                    }
                }
                /*  bottom field  played  */
                else
                {
                    /*  bottom field  first, play top field  */
                    if (!bTopFirst)
                    {
                        pShadow->CurFld = 1;
                        pShadow->DoneFld |= 1;
                    }
                    else
                    {
                        pShadow->CurFld = 2;
                        pShadow->DoneFld |= 3;
                    }
                }
            }
            /* current sequence is B */
            else if (HI_UNF_VIDEO_FIELD_BOTTOM == enDstFeild)
            {
                /* never played or only bottom field was played, play bottom field  */
                if ((0 == pShadow->DoneFld)
                        ||(2 == pShadow->DoneFld)
                   )
                {
                    pShadow->CurFld = 2;
                    pShadow->DoneFld |= 2;

                    /*  top field first, skip top field  */
                    if (bTopFirst)
                    {
                        pShadow->DoneFld |= 3;
                    }
                }
                /*  top field  played  */
                else
                {
                    /*  top field first, play bottom field  */
                    if (bTopFirst)
                    {
                        pShadow->CurFld = 2;
                        pShadow->DoneFld |= 2;
                    }
                    /*  bottom field first, repeat top field and skip bottom field */
                    else
                    {
                        pShadow->CurFld = 1;
                        pShadow->DoneFld |= 3;
                    }
                }
            }
        }
    }
    else
    {
        if (HI_UNF_VIDEO_FIELD_TOP == pVdecFrame->enFieldMode)
        {
            pShadow->CurFld = 1;
        }
        else
        {
            pShadow->CurFld = 2;
        }

        if (0 == pShadow->DoneFld)
        {
            pShadow->DoneFld = pShadow->CurFld;
        }
        else
        {
            pShadow->DoneFld |= 3;
        }
    }

    return;
}

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_VOID VOISR_ShadowIsr(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_SHADOW_WIN_S          *pShadow;
    OPTM_FB_S                  *pWinFrameBuf;
    HI_UNF_VO_FRAMEINFO_S      *pNextFrame;
    OPTM_M_CFG_S               *pWinModCfg;
    HI_S32                      NextBtmflag;
    HI_UNF_VIDEO_FIELD_MODE_E   enDstFeild;
    OPTM_FRAME_S                *pConfigFrame;
    HI_U32                      Next;
    OPTM_M_DISP_INFO_S          DstDispInfo;
    OPTM_M_DISP_INFO_S          SrcDispInfo;

    pShadow = (OPTM_SHADOW_WIN_S *)u32Param0;

#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    /* add for CodeCC*/
    HI_S32 nRepFlag = HI_FALSE;
#endif

    if (g_VoSuspend)
    {
        return;
    }

    if (pShadow->bEnable != HI_TRUE)
    {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        return;
    }

    if (pShadow->bMasked == HI_TRUE)
    {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        return;
    }

    /* SD need open trigger and sync together, trigger can open at init, but sync need open at the 1st SD interrupt */
    OPTM_HAL_SetSync(HAL_DISP_CHANNEL_DSD, HI_TRUE);

    if (2 == pShadow->Switch)
    {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        pShadow->Switch--;
        return;
    }

    if (1 == pShadow->Switch)
    {
        if (pShadow->bWbcMode)
        {
            OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_FALSE);
            Vou_SetZmeSource(HAL_DISP_LAYER_WBC0);

            //Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_TRUE);

            pShadow->stWbc.bEnable = HI_TRUE;
        }
        else
        {
            Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_FALSE);

            OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_TRUE);
            Vou_SetZmeSource(HAL_DISP_LAYER_VIDEO3);
        }

        pShadow->Switch--;
        return;
    }

    if (OPTM_M_VO_GetHDEnable() == 0)
    {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        return ;
    }

    pWinModCfg = &(pShadow->WinModCfg);

    OPTM_M_GetDispInfo(pShadow->enDispHalId, &DstDispInfo);

    /*  1 query display order */
    //NextBtmflag = 1 - OPTM_HAL_DISP_GetCurrField(pShadow->enDispHalId);
    NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pShadow->enDispHalId);

    enDstFeild = NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;

    //DEBUG_PRINTK("in %d, lst %d, lst2 %d\n", pShadow->stWbcBuf.InPtr, pShadow->stWbcBuf.LsPtr, pShadow->stWbcBuf.Ls2Ptr);

    /*  2  search target frame  */
    if (pShadow->bWbcMode)
    {
#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE
        pNextFrame = OPTM_WBC0FB_GetBuffer(&(pShadow->stWbcBuf));
        if (pNextFrame == HI_NULL)
        {
            return;
        }

        pWinModCfg->InBtmFlag = NextBtmflag;
        //nRepFlag = HI_FALSE;
#else
        pNextFrame = OPTM_WBCFB_ConfigSearch(&(pShadow->stWbcBuf), enDstFeild, &nRepFlag);
        if (pNextFrame == HI_NULL)
        {
            pNextFrame = OPTM_WBCFB_ConfigGetNewest(&(pShadow->stWbcBuf));
            if (pNextFrame == HI_NULL)
            {
                /*  search failure, to say no data in buffer, then return */
                return;
            }
        }
        pWinModCfg->InBtmFlag = (pNextFrame->enFieldMode == HI_UNF_VIDEO_FIELD_TOP) ? 0 : 1;
#endif
        if (0 == pShadow->stWbc.stTask.s32DfpSel)
        {
            /* Writeback data fetch point 0: before ZME, use configrated value  */
			if (pShadow->pRealMainWin)
			{
                pWinModCfg->enOutRatio = pShadow->pRealMainWin->WinModCfg.enOutRatio;
                pWinModCfg->enCvsMode = pShadow->pRealMainWin->WinModCfg.enCvsMode;
			}
            else
			{
			    pWinModCfg->enOutRatio = pShadow->pMainWin->stAttr.enAspectRatio;
                pWinModCfg->enCvsMode = pShadow->pMainWin->stAttr.enAspectCvrs;
			}
        }
        else
        {
            /* Writeback data fetch point 4: after ZME, don't care  */
            pWinModCfg->enOutRatio = HI_UNF_ASPECT_RATIO_4TO3;
            pWinModCfg->enCvsMode = HI_UNF_ASPECT_CVRS_IGNORE;
        }

        /* Output rect use writeback output rect directlly */
        pWinModCfg->stOutRect = pShadow->stWbc.stTask.stOutRect;
        /* Input rect:
         * W H is always same as output rect
         * X Y always 0 0, because writeback to start address, refer to definition of OPTM_WBC0FB_TOP_FIELD_YADDR ... */
        pWinModCfg->stInRect.s32X = 0;
        pWinModCfg->stInRect.s32Y = 0;
        pWinModCfg->stInRect.s32Width = pWinModCfg->stOutRect.s32Width;
        pWinModCfg->stInRect.s32Height = pWinModCfg->stOutRect.s32Height;

        //DEBUG_PRINTK("enDstFeild %d InBtmFlag %d\n", enDstFeild, (pWinModCfg->InBtmFlag+1));

        /* SD WBC0 always read top field */
        pNextFrame->u32YAddr = OPTM_WBC0FB_TOP_FIELD_YADDR(pShadow->stWbc.pstWbcBuf);
        pNextFrame->u32CAddr = OPTM_WBC0FB_TOP_FIELD_CADDR(pShadow->stWbc.pstWbcBuf);

        /* If writeback point is 0, need set CSC config to VSD */
        if (0 == pShadow->stWbc.stTask.s32DfpSel)
        {
            OPTM_M_VO_SetCscMode(pShadow->enLayerHalId, pShadow->enSrcCS, pShadow->enDstCS);
        }
    }
    else
    {
        if (   (pShadow->pMainWin->bFreeze     == HI_TRUE)
                &&(pShadow->pMainWin->pstFrzFrame != HI_NULL))
        {
            pWinFrameBuf = &(pShadow->pMainWin->WinFrameBuf);
            OPTM_M_GetDispInfo(pShadow->pMainWin->enDispHalId, &SrcDispInfo);

            pConfigFrame = pShadow->pMainWin->pstFrzFrame;
            pShadow->DoneFld = 3;

            if (3 == pShadow->DoneFld)
            {
                if (!pShadow->pMainWin->s32FrzFrameIsPro)
                {
                    if (g_stShadow.bRpeat)
                    {
                        g_stShadow.bRpeat = HI_FALSE;
                    }
                    else
                    {
                        g_stShadow.bRpeat = HI_TRUE;
                    }
                }
            }

            pNextFrame = &pConfigFrame->VdecFrameInfo;
        }
        else
        {
            pWinFrameBuf = &(pShadow->pMainWin->WinFrameBuf);

            OPTM_M_GetDispInfo(pShadow->pMainWin->enDispHalId, &SrcDispInfo);

            /* avoid buf jump of main window caused by sync */
            if ((pShadow->Config != pWinFrameBuf->LstConfig)
                    &&(pShadow->Config != pWinFrameBuf->Current)
               )
            {
                pShadow->Config = pWinFrameBuf->LstConfig;
                pShadow->DoneFld = 0;
                //DEBUG_PRINTK("jump %d", pShadow->Config);
            }
            else
            {
                //DEBUG_PRINTK("     ");
            }

            pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, pShadow->Config);
            if (!pConfigFrame)
            {
                //DEBUG_PRINTK("111 %d %d %d\n", pShadow->Config, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);
                pShadow->Config = pWinFrameBuf->LstConfig;
                return;
            }
            /*
               else if (pConfigFrame->VdecFrameInfo.u32Height >= 720)
               {
            //DEBUG_PRINTK("222 %d %d %d\n", pShadow->Config, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);
            return;
            }
             */
            if (3 == pShadow->DoneFld)
            {
                if (!pWinFrameBuf->bProgressive)
                {
                    if (g_stShadow.bRpeat)
                    {
                        g_stShadow.bRpeat = HI_FALSE;
                    }
                    else
                    {
                        g_stShadow.bRpeat = HI_TRUE;
                    }
                }
            }

            pNextFrame = &pConfigFrame->VdecFrameInfo;

            //DEBUG_PRINTK("d %d %d %d %d", pShadow->Config, pShadow->DoneFld, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);

            if (pShadow->DoneFld != 3)
            {
                VOISR_GetDispField(pNextFrame, enDstFeild, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, pShadow);
            }

            //DEBUG_PRINTK(" w %d %d %d", pShadow->DoneFld, (pShadow->CurFld-1), NextBtmflag);

            if (1 == pShadow->CurFld)
            {
                pWinModCfg->InBtmFlag = 0;
            }
            else if (2 == pShadow->CurFld)
            {
                pWinModCfg->InBtmFlag = 1;
            }
            else
            {
            }

            if (3 == pShadow->DoneFld)
            {
                if (!g_stShadow.bRpeat)
                {
                    Next = (pShadow->Config + 1) % OPTM_FFB_MAX_FRAME_NUM;
                    pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, Next);

                    if ((Next != pWinFrameBuf->Next) && pConfigFrame)
                    {
                        pShadow->Config = Next;
                        pShadow->DoneFld = 0;
                    }
                }
            }
        }

        pWinModCfg->stOutRect.s32X = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32X * DstDispInfo.stScrnWin.s32Width / SrcDispInfo.stScrnWin.s32Width;
        pWinModCfg->stOutRect.s32Y = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Y * DstDispInfo.stScrnWin.s32Height / SrcDispInfo.stScrnWin.s32Height;

        pWinModCfg->stOutRect.s32Width  = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Width * DstDispInfo.stScrnWin.s32Width / SrcDispInfo.stScrnWin.s32Width;
        pWinModCfg->stOutRect.s32Height = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Height * DstDispInfo.stScrnWin.s32Height / SrcDispInfo.stScrnWin.s32Height;

        pWinModCfg->stOutRect.s32X = pWinModCfg->stOutRect.s32X & 0xfffffffe;
        pWinModCfg->stOutRect.s32Y = pWinModCfg->stOutRect.s32Y & 0xfffffffc;

        pWinModCfg->stOutRect.s32Width  = pWinModCfg->stOutRect.s32Width & 0xfffffffe;
        pWinModCfg->stOutRect.s32Height = pWinModCfg->stOutRect.s32Height & 0xfffffffc;

        //DEBUG_PRINTK("x %d y %d width %d height %d\n", pWinModCfg->stOutRect.s32X, pWinModCfg->stOutRect.s32Y, pWinModCfg->stOutRect.s32Width, pWinModCfg->stOutRect.s32Height);
        pWinModCfg->enOutRatio = pShadow->pMainWin->hSlaveWin[0]->stAttr.enAspectRatio;
        pWinModCfg->enCvsMode = pShadow->pMainWin->hSlaveWin[0]->stAttr.enAspectCvrs;

        pWinModCfg->stInRect = pShadow->pMainWin->hSlaveWin[0]->stAttr.stInputRect;

    }

    OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_TRUE);

    /* set output window */
    HAL_DISP_SetLayerDispRect(pShadow->enLayerHalId, pWinModCfg->stOutRect);

    pWinModCfg->pstLastF = HI_NULL;
    pWinModCfg->pstCurrF = pNextFrame;
    pWinModCfg->pstNextF = HI_NULL;

    pWinModCfg->OutBtmFlag = NextBtmflag;

    pWinModCfg->ReFlag    = 0;
    pWinModCfg->DropFlag  = 0;

    pWinModCfg->enDispHalId = pShadow->enDispHalId;
    pWinModCfg->bDoDei = HI_FALSE;
    pWinModCfg->u32CurrWinNumber = 0;

    /*  set image output  */
    OPTM_M_VO_ConfigFrame(pWinModCfg, pShadow->enLayerHalId, &(pShadow->stDetInfo), HI_FALSE);

    /*  update VHD REG */
    //HAL_DISP_SetRegUpNoRatio(pstShadow->enLayerHalId);

#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    /*  4  release  frame buffer */
    OPTM_WBCFB_ReleaseFrame(&(pShadow->stWbcBuf));
#endif

    return;
}
#endif

#if 0

/***********************************************************************************
  VO MOSAIC
 ***********************************************************************************/
HI_S32 VOInitMscWin(OPTM_MOSAIC_WIN_S *pstMosaic, HI_S32 w, HI_S32 h)
{
    HI_S32 nRet;

    memset(pstMosaic, 0, sizeof(OPTM_MOSAIC_WIN_S));

    if ( (w <  1920) || (h < 1080) )
    {
        return HI_FAILURE;
    }

    pstMosaic->bOpened = HI_TRUE;
    pstMosaic->bEnable = HI_TRUE;

    pstMosaic->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
    pstMosaic->enDispHalId  = HAL_DISP_CHANNEL_DHD;
    OPTM_M_GetDispInfo(pstMosaic->enDispHalId, &(pstMosaic->stDispInfo));

    nRet = OPTM_WBC1FB_Create(&(pstMosaic->stWbcBuf),
            HI_UNF_FORMAT_YUV_PACKAGE_UYVY,
            w,
            h,
            OPTM_VO_WBC1_NUM);

    if (nRet != HI_SUCCESS)
    {
        return HI_FAILURE;
    }

    pstMosaic->pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    /*  set information, once only */
    pstMosaic->stAttr.stInputRect.s32X = 0;
    pstMosaic->stAttr.stInputRect.s32Y = 0;
    pstMosaic->stAttr.stInputRect.s32Width = w;
    pstMosaic->stAttr.stInputRect.s32Height = h;
    pstMosaic->unAttrUp.Bits.InRect = 1;

    pstMosaic->stAttr.stOutputRect  = pstMosaic->stDispInfo.stScrnWin;
    pstMosaic->unAttrUp.Bits.OutRect = 1;

    pstMosaic->WinModCfg.pstDie = HI_NULL;
    pstMosaic->WinModCfg.pstZmeCoefAddr = pstMosaic->pstZmeCoefAddr;

    //DTS2011041800974 add 20110422
    pstMosaic->stDispInfoInited = pstMosaic->stDispInfo;
    pstMosaic->stOutputRectInited = pstMosaic->stAttr.stOutputRect;
    return HI_SUCCESS;
}



HI_S32 VODeInitMscWin(OPTM_MOSAIC_WIN_S *pstMosaic)
{
    pstMosaic->bOpened = HI_FALSE;
    pstMosaic->bEnable = HI_FALSE;

    OPTM_WBC1FB_Destroy(&(pstMosaic->stWbcBuf));

    return HI_SUCCESS;
}


HI_VOID VOISR_MosaicPlay(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_MOSAIC_WIN_S          *pMosaicWin;
    HI_UNF_VO_FRAMEINFO_S      *pNextFrame;
    OPTM_M_CFG_S               *pWinModCfg;
    HI_S32                      NextBtmflag;
    HI_UNF_VIDEO_FIELD_MODE_E   enDstFeild;
    OPTM_M_DISP_INFO_S          DstDispInfo;
    HI_U32 vn1, vn2;

    pMosaicWin = (OPTM_MOSAIC_WIN_S *)u32Param0;

    if (g_VoSuspend)
    {
        return;
    }

    if (pMosaicWin->bEnable != HI_TRUE)
    {
        OPTM_M_VO_SetEnable(pMosaicWin->enLayerHalId, HI_FALSE);
        return;
    }

    if (pMosaicWin->bMasked == HI_TRUE)
    {
        OPTM_M_VO_SetEnable(pMosaicWin->enLayerHalId, HI_FALSE);
        return;
    }

    pWinModCfg = &(pMosaicWin->WinModCfg);

    OPTM_M_GetDispInfo(pMosaicWin->enDispHalId, &DstDispInfo);

    /*  1  query display order */
    if (DstDispInfo.bProgressive == HI_TRUE)
    {
        pWinModCfg->OutBtmFlag = 2;

        pNextFrame = OPTM_WBC1FB_GetReadBuf(&(pMosaicWin->stWbcBuf), HI_TRUE);
        if (pNextFrame == HI_NULL)
        {
            /*  search failure, to say no data in buffer, then return. */
            return;
        }
    }
    else
    {
        //NextBtmflag = 1 - OPTM_HAL_DISP_GetCurrField(pMosaicWin->enDispHalId);
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pMosaicWin->enDispHalId);

        enDstFeild = NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;
        pWinModCfg->OutBtmFlag = NextBtmflag;


        /*  2 search target frame  */
        pNextFrame = OPTM_WBC1FB_GetReadBuf(&(pMosaicWin->stWbcBuf), HI_TRUE);

        if (pNextFrame == HI_NULL)
        {
            /*  search failure, to say no data in buffer, then return. */
            return;
        }
    }

    pWinModCfg->InBtmFlag = (pNextFrame->enFieldMode == HI_UNF_VIDEO_FIELD_TOP) ? 0 : 1;

    if (pMosaicWin->unAttrUp.Bits.InRect != 0)
    {
        /*  update output / input window */
        pWinModCfg->stInRect  = pMosaicWin->stAttr.stInputRect;

        pMosaicWin->unAttrUp.Bits.InRect = 0;
    }

    /* if DISP update, we need to update output window */
    if(  (DstDispInfo.enType != pMosaicWin->stDispInfo.enType)
            || ( (DstDispInfo.enType == HI_UNF_DISP_INTF_TYPE_TV) && (DstDispInfo.enFmt != pMosaicWin->stDispInfo.enFmt) )
            || ( (DstDispInfo.enType == HI_UNF_DISP_INTF_TYPE_LCD) && (DstDispInfo.enLcdFmt != pMosaicWin->stDispInfo.enLcdFmt) )
      )
    {
        /* when display system changes, window will change in proportion */
        //DTS2011041800974 modify
        OPTM_M_WinRectAdjust(&(pMosaicWin->stDispInfoInited.stScrnWin), &(DstDispInfo.stScrnWin), &(pMosaicWin->stAttr.stOutputRect), &(pMosaicWin->stOutputRectInited));
        pWinModCfg->stOutRect = pMosaicWin->stAttr.stOutputRect;

        VoReviseRect2(&(DstDispInfo.stScrnWin), &(pWinModCfg->stOutRect));

        /* record information */
        pMosaicWin->stDispInfo = DstDispInfo;
        pMosaicWin->unAttrUp.Bits.OutRect = 1;
    }


    if (pMosaicWin->unAttrUp.Bits.OutRect != 0)
    {
        /*  update output / input window */
        pWinModCfg->stOutRect = pMosaicWin->stAttr.stOutputRect;

        VoReviseRect2(&(DstDispInfo.stScrnWin), &(pWinModCfg->stOutRect));

        OPTM_M_VO_ResetAcc(pMosaicWin->enLayerHalId);
        pMosaicWin->unAttrUp.Bits.OutRect = 0;
    }

    /* Get vou version */
    OPTM_HAL_GetVersion(&vn1, &vn2);


    /* In 576I mode of HD output, the system transforms the resolution from 720X576 to 1440X576.
     * As for setting of modification of output window, it is still 720X576 for users.
     */


    HAL_DISP_SetLayerDispRect(pMosaicWin->enLayerHalId, pWinModCfg->stOutRect);

    OPTM_M_VO_SetEnable(pMosaicWin->enLayerHalId, HI_TRUE);

    pWinModCfg->pstLastF = HI_NULL;
    pWinModCfg->pstCurrF = pNextFrame;
    pWinModCfg->pstNextF = HI_NULL;

    pWinModCfg->ReFlag    = 0;
    pWinModCfg->DropFlag  = 0;

    pWinModCfg->enDispHalId = pMosaicWin->enDispHalId;
    pWinModCfg->bDoDei = HI_FALSE;
    pWinModCfg->u32CurrWinNumber = 0;

    /*  set image output */
    OPTM_M_VO_ConfigFrame(pWinModCfg, pMosaicWin->enLayerHalId, HI_NULL, HI_FALSE);

    /*  4 release frame buffer */
    OPTM_WBC1FB_PutReadBuf(&(pMosaicWin->stWbcBuf));

    //DEBUG_PRINTK("d1\n");
    return;
}
#endif


/***********************************************************************************
 * Function:       VO_SetDevMode / VO_GetDevMode
 * Description:    set / query VO  equipment work mode
 * Data Accessed:
 * Data Updated:
 * Input:          enDevMode -- mode  coefficients
 * Output:
 * Return:        HI_SUCCESS/errorcode
 * Others:
 ***********************************************************************************/
HI_S32 VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    OPTM_VO_S *pstVo;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_HANDLE(HI_UNF_VO_HD0, pstVo);

    if (pstVo->bOpened)
    {
        if (enDevMode != g_enVoDevMode)
        {
            HI_ERR_VO("HI_UNF_VO_HD0 has been open, can't change work mode\n");
            return HI_ERR_VO_INVALID_OPT;
        }
    }
    else
    {
        switch (enDevMode)
        {
#if 0
            case HI_UNF_VO_DEV_MODE_MOSAIC:
                g_enVoMosaicType = HI_VO_MOSAIC_TYPE_NORMAL;
                g_enVoDevMode = HI_UNF_VO_DEV_MODE_MOSAIC;
                break;

            case HI_UNF_VO_DEV_MODE_STANDALONE:
                g_enVoMosaicType = HI_VO_MOSAIC_TYPE_STANDALONE;
                g_enVoDevMode = HI_UNF_VO_DEV_MODE_MOSAIC;
                break;
#endif
            case HI_UNF_VO_DEV_MODE_NORMAL:
                g_enVoDevMode = HI_UNF_VO_DEV_MODE_NORMAL;
                break;

            default:
                break;
        }
    }

    return HI_SUCCESS;
}

HI_S32 VO_GetDevMode(HI_UNF_VO_DEV_MODE_E *penDevMode)
{
    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(penDevMode);

    *penDevMode = g_enVoDevMode;

    return HI_SUCCESS;
}

#if 0
HI_S32 VO_GetMosaicBufSizeFlag(HI_VOID)
{
    return  g_s32MosaciBufSizeFlag;
}

HI_S32 VO_SetMosaicBufSizeFlag(HI_S32 BufFlag)
{
    if (    (BufFlag >= OPTM_MOSAIC_BUFFER_MIN_SIZE)
            && (BufFlag <= OPTM_MOSAIC_BUFFER_MAX_SIZE))
    {
        g_s32MosaciBufSizeFlag = BufFlag;
    }

    return  0;
}
#endif

HI_S32 VO_UseDNRFrame(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_WIN_S            *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("win has not been attached.\n");
        return HI_FAILURE;
    }

    pstWin->hMainWin->bUseDNRFrame = bEnable;

    return HI_SUCCESS;
}


HI_S32 VO_AlgControl(const HI_UNF_ALG_CONTROL_S *pAlgControl)
{
    HI_S32 Ret = HI_SUCCESS;
    OPTM_VO_S *pstVo;
    HI_UNF_VO_DEV_MODE_E enDevMode = HI_UNF_VO_DEV_MODE_BUTT;


    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_HANDLE(HI_UNF_VO_HD0, pstVo);

    if ((HI_TRUE != pAlgControl->bEnable)
            && (HI_FALSE != pAlgControl->bEnable))
    {
        HI_ERR_VO("invalid HI_UNF_ALG_CONTROL_S type\n");
        Ret = HI_FAILURE;
        return Ret;
    }

    if(HI_TRUE != pstVo->bOpened)
    {
        HI_ERR_VO("HI_UNF_VO_Open should open vo first\n");
        Ret = HI_FAILURE;
        return Ret;
    }

    VO_GetDevMode(&enDevMode);
    Ret = OPTM_M_VO_AlgControl(pAlgControl->enAlgType, pAlgControl->bEnable, &enDevMode,pAlgControl);
    if (Ret == HI_SUCCESS)
    {
        if (pAlgControl->bEnable == HI_TRUE)
            pstVo->bAlgFlag |= (1 << pAlgControl->enAlgType);
        else
            pstVo->bAlgFlag &= ~(1 << pAlgControl->enAlgType);
    }

    return Ret;
}



HI_S32 Window_SetWinAttrFromProc(HI_HANDLE hWin, HI_CHAR *pItem,HI_CHAR *pValue)
{
#if !(0 == HI_PROC_SUPPORT)

    OPTM_WIN_S    *pstWin;
    OPTM_WIN_S    *pMainWin;
    HI_BOOL outattrflag = HI_FALSE;
    OPTM_VO_S *pstVoCh;
    OPTM_M_DISP_INFO_S stInfo;
    HI_VDEC_PRIV_FRAMEINFO_S * pVdecPriv =  HI_NULL;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    pstVoCh = (OPTM_VO_S *)(pstWin->hVoHandle);
    OPTM_M_GetDispInfo(pstWin->enDispHalId, &stInfo);

    pMainWin = pstWin->hMainWin;
    if (pMainWin == HI_NULL)
        return HI_ERR_VO_WIN_NOT_EXIST;

    if (!strncmp(pItem,"height", sizeof("height")))
    {
        pstWin->stAttr.stOutputRect.s32Height = simple_strtol(pValue, NULL, 10);
        outattrflag = HI_TRUE;
    }
    else if (!strncmp(pItem,"width", sizeof("width")))
    {
        pstWin->stAttr.stOutputRect.s32Width = simple_strtol(pValue, NULL, 10);
        outattrflag = HI_TRUE;
    }
    else if (!strncmp(pItem,"startx", sizeof("startx")))
    {
        pstWin->stAttr.stOutputRect.s32X = simple_strtol(pValue, NULL, 10);
        outattrflag = HI_TRUE;
    }
    else if (!strncmp(pItem,"starty", sizeof("starty")))
    {
        pstWin->stAttr.stOutputRect.s32Y = simple_strtol(pValue, NULL, 10);
        outattrflag = HI_TRUE;
    }
    else if (!strncmp(pItem,"enAspectRatio", sizeof("enAspectRatio")))
    {
        pstWin->stAttr.enAspectRatio = simple_strtol(pValue, NULL, 10);
        pstWin->unAttrUp.Bits.AspRatio = 1;
    }
    else if (!strncmp(pItem,"enAspectCvrs", sizeof("enAspectCvrs")))
    {
        pstWin->stAttr.enAspectCvrs = simple_strtol(pValue, NULL, 10);
        pstWin->unAttrUp.Bits.AspCvrs = 1;
    }
    else if (!strncmp(pItem,"pause", sizeof("pause")))
    {
        VO_PauseWindow(hWin,simple_strtol(pValue, NULL, 10));
    }
    else if (!strncmp(pItem,"freeze", sizeof("freeze")))
    {
        HI_CHAR benable[5], freezemode[5];
        HI_CHAR *pChar;
        memset(benable, 0, 5);
        memset(freezemode, 0, 5);
        pChar = strchr(pValue,',');
        if (HI_NULL == pChar)
            return HI_FAILURE;
        memcpy(benable, pValue, (pChar - pValue));
        memcpy(freezemode, pChar + 1, strlen(pValue) - (pChar - pValue) - 1);
        VO_FreezeWindow(hWin, simple_strtol(benable, NULL, 5), simple_strtol(freezemode, NULL, 5));
    }
    else if (!strncmp(pItem,"ratio", sizeof("ratio")))
    {
        VO_SetWindowPlayRatio(hWin, simple_strtol(pValue, NULL, 10));
    }
    else if (!strncmp(pItem,"enable", sizeof("enable")))
    {
        VO_SetWindowEnable(hWin, simple_strtol(pValue, NULL, 10));
    }
    else if (!strncmp(pItem,"quickout", sizeof("quickout")))
    {
        VO_SetQuickOutputEnable(hWin, simple_strtol(pValue, NULL, 10));
    }
    else if (!strncmp(pItem,"sync", sizeof("sync")))
    {
        DEBUG_PRINTK("sync handle %d \r\n", pMainWin->hSync);
        pMainWin->hSync = simple_strtol(pValue, NULL, 10);
    }
    else if (!strncmp(pItem,"fieldmode", sizeof("fieldmode")))
    {
        Vo_SetWindowFieldMode(hWin, simple_strtol(pValue, NULL, 10));
    }
    else if (!strncmp(pItem,"dei", sizeof("dei")))
    {
        if (simple_strtol(pValue, NULL, 10))
        {
            pstWin->hMainWin->bDisableDei = HI_FALSE;
        }
        else
        {
            pstWin->hMainWin->bDisableDei = HI_TRUE;
        }
    }
     else if (!strncmp(pItem,"step", sizeof("step")))
    {
        if (simple_strtol(pValue, NULL, 10))
        {

            VO_SetWindowStepMode(hWin,HI_TRUE);
            VO_SetWindowStepPlay(hWin);
        }
        else
        {
            VO_SetWindowStepMode(hWin,HI_FALSE);
        }
    }
    else if (!strncmp(pItem,"capture", sizeof("capture")))
    {
        HI_U32 arg=0;
        if ( 0 == (simple_strtol(pValue, NULL, 10)))
        {
            arg = 0;
           VO_SetDbgOption(0x100,&arg);/*start*/
           msleep(2000);
           VO_SetDbgOption(0x110,&arg);/*VHD*/
            msleep(2000);
           VO_SetDbgOption(0x101,&arg);/*exit*/
        }
        else if ( 1 == (simple_strtol(pValue, NULL, 10)))
        {
            arg = 0;
           VO_SetDbgOption(0x100,&arg);/*start*/
            msleep(2000);
            arg = 2;
           VO_SetDbgOption(0x110,&arg);/*VSD*/
            msleep(2000);
            arg = 0;
           VO_SetDbgOption(0x101,&arg);/*exit*/
        }
    }
     else if (!strncmp(pItem,"frame", sizeof("frame")))
    {
        if (simple_strtol(pValue, NULL, 10))
            pMainWin->u32Debugbits |= DEBUG_FRAME_DEBUG_BIT;
        else
            pMainWin->u32Debugbits &= ~DEBUG_FRAME_DEBUG_BIT;
	}
    else if (!memcmp(pItem,"fi.", 3))
    {
        if (!strncmp(pItem,"fi.change",sizeof("fi.change"))) {
            //pMainWin->u32Debugbits = simple_strtol(pValue, NULL, 10);
            if (simple_strtol(pValue, NULL, 10))
                pMainWin->u32Debugbits |= DEBUG_FRAMEINFO_VALID_BIT;
			else
				pMainWin->u32Debugbits &= ~DEBUG_FRAMEINFO_VALID_BIT;
        }
        else if (!strncmp(pItem,"fi.prog",sizeof("fi.prog"))) {
            pMainWin->stDebuginfo.enSampleType = simple_strtol(pValue, NULL, 10);
            pMainWin->u32Debugbits |= DEBUG_FRAMEINFO_PROG_BIT;
        }
        else if (!strncmp(pItem,"fi.btop",sizeof("fi.btop"))) {
            pMainWin->stDebuginfo.bTopFieldFirst = simple_strtol(pValue, NULL, 10);
            pMainWin->u32Debugbits |= DEBUG_FRAMEINFO_TOPFIRST_BIT;
        }
        else if (!strncmp(pItem,"fi.rwzb",sizeof("fi.rwzb"))) {
            pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pMainWin->stDebuginfo.u32VdecInfo[0]);
            pVdecPriv->Rwzb = simple_strtol(pValue, NULL, 10);
            pMainWin->u32Debugbits |= DEBUG_FRAMEINFO_RWZB_BIT;
        }
         else if (!strncmp(pItem,"fi.print",sizeof("fi.print"))) {
            if (simple_strtol(pValue, NULL, 10))
                pMainWin->u32Debugbits |= DEBUG_FRAMEINFO_PRINTK_BIT;
            else
                pMainWin->u32Debugbits &= ~DEBUG_FRAMEINFO_PRINTK_BIT;
        }
    }
    else
    {
    }

    if (outattrflag)
    {
        pstWin->unAttrUp.Bits.OutRect = 1;
        pstVoCh->unUpFlag.Bits.OutRect = 1;
        pstVoCh->bWbc1FillBlack = HI_TRUE;

        //DTS2011041800974 add 20110422
        // when the coordinate of ouput window change
        //save disp information and output window
        pstWin->stDispInfoInited = stInfo;
        pstWin->stOutRecInited = pstWin->stAttr.stOutputRect;
    }
#endif
    return HI_SUCCESS;
}

#ifdef HI_VDP_HD_SD_RATIO_INDEPENDENT_SUPPORT
HI_VOID VOISR_MosaicPlay_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_MOSAIC_WIN_S          *pMosaicWin;
    HI_UNF_VO_FRAMEINFO_S      *pNextFrame;
    OPTM_M_CFG_S    tmpWinModCfg, *pstMainWinModCfg;
    OPTM_M_DISP_INFO_S          DstDispInfo;
    HI_S32                      NextBtmflag;
    HI_U32 vn1, vn2;

    pMosaicWin = (OPTM_MOSAIC_WIN_S *)u32Param0;

    if (g_VoSuspend)
        return;

    if (pMosaicWin->bEnable != HI_TRUE) {
        OPTM_M_VO_SetEnable(pMosaicWin->enLayerHalId, HI_FALSE);
        return;
    }

    if (pMosaicWin->bMasked == HI_TRUE) {
        OPTM_M_VO_SetEnable(pMosaicWin->enLayerHalId, HI_FALSE);
        return;
    }


    /* in standalone mode ,if slave win for mosaic win is null ,return*/
    if (pMosaicWin->pstSlaveWin == HI_NULL)
        return;

    if (pMosaicWin->pstSlaveWin->hMainWin == HI_NULL)
        return;

    /*  1 search target frame  */
    pNextFrame = OPTM_WBC1FB_GetReadBuf(&(pMosaicWin->stWbcBuf), HI_TRUE);

    if (pNextFrame == HI_NULL) {
        /*  search failure, to say no data in buffer, then return. */
        return;
    }

    OPTM_HAL_GetVersion(&vn1, &vn2);
    /* we should backup main win's WinModCfg struct */
    pstMainWinModCfg = &(pMosaicWin->pstSlaveWin->hMainWin->WinModCfg);
    memcpy(&tmpWinModCfg, pstMainWinModCfg, sizeof(OPTM_M_CFG_S));

    /*  1  query display order */
    OPTM_M_GetDispInfo(pMosaicWin->enDispHalId, &DstDispInfo);
    if (DstDispInfo.bProgressive == HI_TRUE) {
        pstMainWinModCfg->OutBtmFlag = 2;
    }
    else {
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pMosaicWin->enDispHalId);
        pstMainWinModCfg->OutBtmFlag = NextBtmflag;
    }

    pstMainWinModCfg->InBtmFlag = (pNextFrame->enFieldMode == HI_UNF_VIDEO_FIELD_TOP) ? 0 : 1;

    /* we should change the window attr in standalone mode */
    pMosaicWin->pstSlaveWin->enLayerHalId = HAL_DISP_LAYER_VIDEO2;
    pstMainWinModCfg->pstCurrF = pNextFrame;
    pstMainWinModCfg->pstLastF = HI_NULL;
    pstMainWinModCfg->pstNextF = HI_NULL;

    pstMainWinModCfg->bDoDei = HI_FALSE;
    pstMainWinModCfg->ReFlag = 0;
    pstMainWinModCfg->DropFlag = 0;
    pstMainWinModCfg->u32CurrWinNumber = 0;

#if 0
    if (((OPTM_V101_VERSION1 == vn1) && (OPTM_V101_VERSION2 == vn2))
            && ((DstDispInfo.enFmt >= HI_UNF_ENC_FMT_PAL)&& (DstDispInfo.enFmt <= HI_UNF_ENC_FMT_SECAM_COS)))
    {
        //  pMosaicWin->pstSlaveWin->WinModCfg.stInRect.s32X *= 2;
        //  pMosaicWin->pstSlaveWin->WinModCfg.stInRect.s32Width *= 2;
    }
#endif

    //    DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d curseq %d OutBtmFlag %d InBtmFlag %d\r\n", __func__, __LINE__, pMosaicWin->pstSlaveWin->hMainWin->WinModCfg.pstCurrF->u32SeqFrameCnt, pMosaicWin->pstSlaveWin->hMainWin->WinModCfg.OutBtmFlag, pMosaicWin->pstSlaveWin->hMainWin->WinModCfg.InBtmFlag);

    /* config frame */
    VOISR_SlaveConfigFrame(pMosaicWin->pstSlaveWin, pMosaicWin->pstSlaveWin->hMainWin, HI_FALSE, HI_NULL);

    /* restore struct */
    memcpy(pstMainWinModCfg, &tmpWinModCfg, sizeof(OPTM_M_CFG_S));
    pMosaicWin->pstSlaveWin->enLayerHalId = HAL_DISP_LAYER_VIDEO1;

    /*  4 release frame buffer */
    OPTM_WBC1FB_PutReadBuf(&(pMosaicWin->stWbcBuf));

    pMosaicWin->stPutShadow = 1;
    //DEBUG_PRINTK("d1\n");
    return;
}

HI_VOID VOISR_Wbc0Isr_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_M_DISP_INFO_S stSrcInfo, stDstInfo;
    OPTM_WBC0_S *pstWbc0;
    OPTM_M_WBC0_S *pstTask;
    HI_UNF_VO_FRAMEINFO_S *pNextFrame;
    HI_S32 NextBtmflag;
    HI_U32 vn1, vn2;
    HI_RECT_S stFrmDispArea, stOutRect, stInRect;
    OPTM_WIN_S  *pstSlaveWin, *pstMainWin;
    OPTM_SHADOW_WIN_S *pstShadow;
    HI_S32  nTimes = 1;

    pstShadow = (OPTM_SHADOW_WIN_S*)u32Param0;
    pstWbc0 = &(pstShadow->stWbc);

    if (g_VoSuspend)
        return;

    if (g_stShadow.bEnable != HI_TRUE)
        return;

    if (pstWbc0->bEnable != HI_TRUE)
        return;

    if (pstWbc0->bMasked == HI_TRUE)
        return;

    pstSlaveWin = pstShadow->pstSlaveWin;
    if (HI_NULL == pstSlaveWin)
        return;

    pstMainWin = pstSlaveWin->hMainWin;
    if (HI_NULL == pstMainWin)
        return;

    /*  single buffer scheme, no reverse of buffer */
#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount >= 2)
        return;

    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount > 0) {
        OPTM_WBCFB_RecievePutNext(pstWbc0->pstWbcBuf);
        pstWbc0->s32TaskCount--;
    }
#endif

    /*  1  check whether there is data in DHD*/
    //DEBUG_PRINTK("in %d, lst %d, lst2 %d,", pstWbc0->pstWbcBuf->InPtr, pstWbc0->pstWbcBuf->LsPtr, pstWbc0->pstWbcBuf->Ls2Ptr);

#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE

    /*  2  single buffer scheme, no need to reverse buffer */
    //pNextFrame = OPTM_WBC0FB_GetBuffer(pstWbc0->pstWbcBuf);
    pNextFrame = OPTM_WBC1FB_GetWriteBuf(&(pstShadow->stWbcBuf_standalone));
    pstShadow->pstwbc1frame = pNextFrame;
    if (pNextFrame == HI_NULL)
    {
        return;
    }

#else

    /*  2   get 1 frame  */
    pNextFrame = OPTM_WBCFB_ReceiveGetNext(pstWbc0->pstWbcBuf);

    if (pNextFrame == HI_NULL)
        return;

    OPTM_WBCFB_ReceivePutConfig(pstWbc0->pstWbcBuf);
#endif
    /*  3  based on dhd/dsd set coefficients, set frame TB information  */
    OPTM_M_GetDispInfo(pstWbc0->enSrcDispCh, &stSrcInfo);  /* dhd */
    OPTM_M_GetDispInfo(pstWbc0->enDstDispCh, &stDstInfo);  /* dsd */

    /* useless */
    //HAL_GetVHDOutZmeReso(HAL_DISP_LAYER_VIDEO1, &stInRect);

    /* if wbc0's data is from vhd zme,we should do this */
    HAL_DISP_GetLayerDispRect(HAL_DISP_LAYER_VIDEO2, &stOutRect);
    OPTM_HAL_DISP_GetLayerOutRect(HAL_DISP_LAYER_VIDEO1, &stFrmDispArea);
    stInRect = pstSlaveWin->WinModCfg.stInRect;
    VoReviseRect2(&stFrmDispArea, &stInRect);

    if ((stSrcInfo.enFmt >=  HI_UNF_ENC_FMT_PAL) && (stSrcInfo.enFmt <= HI_UNF_ENC_FMT_SECAM_COS)){
        stOutRect.s32X /= 2;
        stOutRect.s32Width /= 2;
    }

    /* if wbc0's data is from vhd die,we should do this */
    //    HAL_DISP_GetLayerDispRect(HAL_DISP_LAYER_VIDEO2, &stOutRect);
    //    HAL_GetVHDInZmeReso(HAL_DISP_LAYER_VIDEO1, &stInRect);

    /* Get vou version */
    OPTM_HAL_GetVersion(&vn1, &vn2);

    pstTask = &(pstWbc0->stTask);
    pstTask->stCropRect = stInRect;
#if 0
    if ((stSrcInfo.enFmt >= HI_UNF_ENC_FMT_PAL ) && (stSrcInfo.enFmt <= HI_UNF_ENC_FMT_SECAM_COS)
            && ( (OPTM_V101_VERSION1 == vn1) && (OPTM_V101_VERSION2 == vn2) )) {
        pstTask->stCropRect.s32X = pstTask->stCropRect.s32X * 2;
        pstTask->stCropRect.s32Width = pstTask->stCropRect.s32Width * 2;
    }
#endif
    pstTask->stOutRect.s32X  = stOutRect.s32X * stDstInfo.stScrnWin.s32Width / stSrcInfo.stScrnWin.s32Width;
    pstTask->stOutRect.s32Y  = stOutRect.s32Y * stDstInfo.stScrnWin.s32Height / stSrcInfo.stScrnWin.s32Height;
    pstTask->stOutRect.s32Width  = stOutRect.s32Width * stDstInfo.stScrnWin.s32Width / stSrcInfo.stScrnWin.s32Width;
    pstTask->stOutRect.s32Height  = stOutRect.s32Height * stDstInfo.stScrnWin.s32Height / stSrcInfo.stScrnWin.s32Height;
    pstTask->u32Addr    = pNextFrame->u32YAddr;
    pstTask->u32Stride  = pNextFrame->u32YStride;

    /*we must do this , if not ,sd display will be bad  */
    pstTask->stCropRect.s32X = pstTask->stCropRect.s32X & 0xfffffffeL;
    pstTask->stCropRect.s32Y = pstTask->stCropRect.s32Y & 0xfffffffeL;
    pstTask->stCropRect.s32Width = pstTask->stCropRect.s32Width & 0xfffffffeL;
    pstTask->stCropRect.s32Height = pstTask->stCropRect.s32Height & 0xfffffffeL;

    pstTask->stOutRect.s32X = pstTask->stOutRect.s32X & 0xfffffffeL;
    pstTask->stOutRect.s32Y = pstTask->stOutRect.s32Y & 0xfffffffeL;
    pstTask->stOutRect.s32Height = pstTask->stOutRect.s32Height & 0xfffffffeL;
    pstTask->stOutRect.s32Width = pstTask->stOutRect.s32Width & 0xfffffffeL;

    /* optimized as single buffer scheme, go to else branch */
#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE

    /* if data fetch point is vhd zme, the input data bProgressive info is s
     * ame as hd output
     * TODO: check this, NextBtmflag = 1 - ?? should check it*/

    if (pstSlaveWin->WinModCfg_standalone.DoDeiFlag == HI_TRUE) {
        NextBtmflag = 2;  /* 0, top; 1, bottom; 2, frame */
    }
    else {
        if (stSrcInfo.bProgressive != HI_TRUE)
            NextBtmflag = OPTM_M_GetDispBtmFlag(pstWbc0->enSrcDispCh);
        else
            NextBtmflag = 2;
    }

#if 1
    /*because vsd zme only can process 15:1 ,so we must do this  */
    if ((NextBtmflag == 2 ) && (pstTask->stCropRect.s32Height >= (10 * pstTask->stOutRect.s32Height / 2))) {
        if (pstTask->stCropRect.s32Height >= (20 * pstTask->stOutRect.s32Height / 2))
            nTimes = 4;
        else
            nTimes = 2;

        DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d nTimes %d \r\n", __func__, __LINE__, nTimes);
    }
#endif
    pstTask->u32Stride  = 720 * 2;
    pstTask->s32InBtmFlag  = NextBtmflag;
    pstTask->s32OutBtmFlag = 1 - OPTM_M_GetDispBtmFlag(pstWbc0->enDstDispCh);

    pNextFrame->enFrameType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;

    pNextFrame->enFieldMode = pstTask->s32OutBtmFlag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;

#else
    if (stSrcInfo.bProgressive == HI_TRUE) {
        pstTask->s32InBtmFlag = 2;  /* 0, top; 1, bottom; 2, frame */
        pstTask->s32OutBtmFlag = pstWbc0->s32TBSwtich; /* 0, top; 1, bottom; 2, frame */

        NextBtmflag = pstWbc0->s32TBSwtich;
        pstWbc0->s32TBSwtich = (1 - pstWbc0->s32TBSwtich) & 1;
    }
    else {
        NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pstWbc0->enSrcDispCh);

        pstTask->s32InBtmFlag  = NextBtmflag; /* 0, top; 1, bottom; 2, frame */
        pstTask->s32OutBtmFlag = NextBtmflag; /* 0, top; 1, bottom; 2, frame */
    }
#endif

    /* TODO:  need to set iYuvType based on data fetch point,
     * if the data is from zme ,the yuvtype is 422-->0
     * if the data is from die,the yuvtype is 420--->1*/
    pstTask->iYuvType = 0;

    pstTask->enOutAspectCvrs = pstSlaveWin->WinModCfg.enCvsMode;
    pstTask->enOutAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    pstTask->enInAspectRatio = pstMainWin->WinModCfg.pstCurrF->enAspectRatio;

    /*  4  send task */
    // pstShadow->stOutRect = pstTask->stOutRect;
    pNextFrame->u32DisplayWidth   = pstTask->stOutRect.s32Width;
    pNextFrame->u32DisplayHeight  = pstTask->stOutRect.s32Height;
    pNextFrame->u32DisplayCenterX = pstTask->stOutRect.s32X + pstTask->stOutRect.s32Width/2;
    pNextFrame->u32DisplayCenterY = pstTask->stOutRect.s32Y + pstTask->stOutRect.s32Height/2;
    OPTM_M_WBC0_SendTask_standalone(pstWbc0->enLayerId, pstTask, nTimes);

    //  pstShadow->stInRect = pstTask->stOutRect;
    pNextFrame->u32Width = pstTask->stOutRect.s32Width;
    pNextFrame->u32Height = pstTask->stOutRect.s32Height;

    pNextFrame->u32YStride = 720 * 2 * nTimes;

    pstWbc0->s32TaskCount++;

    return;
}


HI_VOID VOISR_ShadowIsr_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{

    OPTM_SHADOW_WIN_S          *pShadow;
    OPTM_FB_S                  *pWinFrameBuf;
    HI_UNF_VO_FRAMEINFO_S      *pNextFrame;
    OPTM_M_CFG_S               *pWinModCfg;
    HI_S32                      NextBtmflag, nRepFlag;
    HI_UNF_VIDEO_FIELD_MODE_E   enDstFeild;
    OPTM_FRAME_S                *pConfigFrame;
    HI_U32                      Next;
    OPTM_M_DISP_INFO_S          DstDispInfo;
    OPTM_M_DISP_INFO_S          SrcDispInfo;
    OPTM_MOSAIC_WIN_S          *pMosaicWin;
    OPTM_CS_E enSCS, enDCS;

    pShadow = (OPTM_SHADOW_WIN_S *)u32Param0;
    pMosaicWin = (OPTM_MOSAIC_WIN_S *)u32Param1;

    if (g_VoSuspend)
        return;

    if (pShadow->bEnable != HI_TRUE) {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        return;
    }

    if (pShadow->bMasked == HI_TRUE) {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        return;
    }

    if (2 == pShadow->Switch) {
        OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_FALSE);
        pShadow->Switch--;
        return;
    }

    if (1 == pShadow->Switch) {

        if (pShadow->bWbcMode) {
            OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_FALSE);
            Vou_SetZmeSource(HAL_DISP_LAYER_WBC0);

            Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_TRUE);

            pShadow->stWbc.bEnable = HI_TRUE;
        }
        else {
            Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, HI_FALSE);

            OPTM_M_VO_SetCapZme(pShadow->enLayerHalId, HI_TRUE);
            Vou_SetZmeSource(HAL_DISP_LAYER_VIDEO3);
        }

        pShadow->Switch--;
        return;
    }

    pWinModCfg = &(pShadow->WinModCfg);

    OPTM_M_GetDispInfo(pShadow->enDispHalId, &DstDispInfo);

    /*  1 query display order */
    NextBtmflag = 1 - OPTM_M_GetDispBtmFlag(pShadow->enDispHalId);

    enDstFeild = NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;

    //DEBUG_PRINTK("in %d, lst %d, lst2 %d\n", pShadow->stWbcBuf.InPtr, pShadow->stWbcBuf.LsPtr, pShadow->stWbcBuf.Ls2Ptr);

    /*  2  search target frame  */
    if (pShadow->bWbcMode) {
#ifdef OPTM_WBC0_ONE_BUUFER_ENABLE

        /* we should do realease first , to avoid hd output rate not same with sd out rate  */
        pNextFrame = OPTM_WBC1FB_GetReadBuf_special(&(pShadow->stWbcBuf_standalone), HI_FALSE);
        if (pNextFrame == HI_NULL)
            return;

        if (pMosaicWin->stPutShadow == 0)
            return;

        pMosaicWin->stPutShadow = 0;
        pWinModCfg->InBtmFlag = (pNextFrame->enFieldMode == HI_UNF_VIDEO_FIELD_BOTTOM) ? 1 : 0;

        if(   (pWinModCfg->InBtmFlag != NextBtmflag)
                && (HI_TRUE != OPTM_WBC1FB_GetBufferState(&(pShadow->stWbcBuf_standalone))))
        {
            //DEBUG_PRINTK("[RN]");
            //OPTM_WBC1FB_PrintRWPointer(&(pShadow->stWbcBuf_standalone));
            //DEBUG_PRINTK(KERN_DEBUG "--------------> InBtmFlag %d nextbtm %d \r\n", pWinModCfg->InBtmFlag,NextBtmflag);
#if 0
            DEBUG_PRINTK(KERN_DEBUG "--------------> InBtmFlag %d nextbtm %d \r\n", pWinModCfg->InBtmFlag,NextBtmflag);
            pNextFrame = OPTM_WBC1FB_GetNextReadBuf(&(pShadow->stWbcBuf_standalone));
            if (pNextFrame != HI_NULL)
            {
                OPTM_WBC1FB_AddReadPtr(&(pShadow->stWbcBuf_standalone));
                OPTM_WBC1FB_PutReadBuf(&(pShadow->stWbcBuf_standalone));
                pNextFrame = OPTM_WBC1FB_GetReadBuf_special(&(pShadow->stWbcBuf_standalone), HI_TRUE);

            }
            else
#endif
                return;
        }
        //DEBUG_PRINTK(KERN_DEBUG "--------------> InBtmFlag %d nextbtm %d \r\n", pWinModCfg->InBtmFlag,NextBtmflag);
        //DEBUG_PRINTK("[RK]");
        //OPTM_WBC1FB_PrintRWPointer(&(pShadow->stWbcBuf_standalone));

        OPTM_WBC1FB_AddReadPtr(&(pShadow->stWbcBuf_standalone));

        OPTM_M_VO_GetCscMode(HAL_DISP_LAYER_VIDEO3, &enSCS, &enDCS);

        if ( (OPTM_CS_eXvYCC_601 != enDCS) || (pShadow->pstSlaveWin->hMainWin->enSrcCS != enSCS)) {
            OPTM_M_VO_SetCscMode(HAL_DISP_LAYER_VIDEO3, pShadow->pstSlaveWin->hMainWin->enSrcCS, OPTM_CS_eXvYCC_601);
        }

        nRepFlag = HI_FALSE;
#else
        pNextFrame = OPTM_WBCFB_ConfigSearch(&(pShadow->stWbcBuf), enDstFeild, &nRepFlag);
        if (pNextFrame == HI_NULL)
        {
            pNextFrame = OPTM_WBCFB_ConfigGetNewest(&(pShadow->stWbcBuf));
            if (pNextFrame == HI_NULL)
            {
                /*  search failure, to say no data in buffer, then return */
                return;
            }
        }
        pWinModCfg->InBtmFlag = (pNextFrame->enFieldMode == HI_UNF_VIDEO_FIELD_TOP) ? 0 : 1;
#endif
        pShadow->stOutRect.s32X = pNextFrame->u32DisplayCenterX - pNextFrame->u32DisplayWidth/2 ;
        pShadow->stOutRect.s32Y = pNextFrame->u32DisplayCenterY - pNextFrame->u32DisplayHeight/2;
        pShadow->stOutRect.s32Width  = pNextFrame->u32DisplayWidth;
        pShadow->stOutRect.s32Height =  pNextFrame->u32DisplayHeight;
        pWinModCfg->stOutRect = pShadow->stOutRect;

        pWinModCfg->enOutRatio = HI_UNF_ASPECT_RATIO_4TO3;
        pWinModCfg->enCvsMode = HI_UNF_ASPECT_CVRS_IGNORE;

        pShadow->stInRect.s32X = (pNextFrame->u32DisplayCenterX  - pNextFrame->u32Width/2) & 0xfffffffeul;
        pShadow->stInRect.s32Y = (pNextFrame->u32DisplayCenterY  - pNextFrame->u32Height/2) & 0xfffffffcul;
        pShadow->stInRect.s32Width  = pNextFrame->u32Width;
        pShadow->stInRect.s32Height = pNextFrame->u32Height;
        //resume Frame size
        pNextFrame->u32DisplayCenterX = 720/2;
        pNextFrame->u32DisplayCenterY = 576/2;
        pNextFrame->u32DisplayWidth   = 720;
        pNextFrame->u32DisplayHeight  = 576;
        pWinModCfg->stInRect = pShadow->stInRect; /*  image  window  */

    }
    else
    {
        if (   (pShadow->pMainWin->bFreeze     == HI_TRUE)
                &&(pShadow->pMainWin->pstFrzFrame != HI_NULL))
        {
            pWinFrameBuf = &(pShadow->pMainWin->WinFrameBuf);
            OPTM_M_GetDispInfo(pShadow->pMainWin->enDispHalId, &SrcDispInfo);

            pConfigFrame = pShadow->pMainWin->pstFrzFrame;
            pShadow->DoneFld = 3;

            if (3 == pShadow->DoneFld)
            {
                if (!pShadow->pMainWin->s32FrzFrameIsPro)
                {
                    if (g_stShadow.bRpeat)
                    {
                        g_stShadow.bRpeat = HI_FALSE;
                    }
                    else
                    {
                        g_stShadow.bRpeat = HI_TRUE;
                    }
                }
            }

            pNextFrame = &pConfigFrame->VdecFrameInfo;
        }
        else
        {
            pWinFrameBuf = &(pShadow->pMainWin->WinFrameBuf);

            OPTM_M_GetDispInfo(pShadow->pMainWin->enDispHalId, &SrcDispInfo);

            /* avoid buf jump of main window caused by sync */
            if ((pShadow->Config != pWinFrameBuf->LstConfig)
                    &&(pShadow->Config != pWinFrameBuf->Current)
               )
            {
                pShadow->Config = pWinFrameBuf->LstConfig;
                pShadow->DoneFld = 0;
                //DEBUG_PRINTK("jump %d", pShadow->Config);
            }
            else
            {
                //DEBUG_PRINTK("     ");
            }

            pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, pShadow->Config);
            if (!pConfigFrame)
            {
                //DEBUG_PRINTK("111 %d %d %d\n", pShadow->Config, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);
                pShadow->Config = pWinFrameBuf->LstConfig;
                return;
            }
            /*
               else if (pConfigFrame->VdecFrameInfo.u32Height >= 720)
               {
            //DEBUG_PRINTK("222 %d %d %d\n", pShadow->Config, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);
            return;
            }
             */
            if (3 == pShadow->DoneFld)
            {
                if (!pWinFrameBuf->bProgressive)
                {
                    if (g_stShadow.bRpeat)
                    {
                        g_stShadow.bRpeat = HI_FALSE;
                    }
                    else
                    {
                        g_stShadow.bRpeat = HI_TRUE;
                    }
                }
            }

            pNextFrame = &pConfigFrame->VdecFrameInfo;

            //DEBUG_PRINTK("d %d %d %d %d", pShadow->Config, pShadow->DoneFld, pWinFrameBuf->LstConfig, pWinFrameBuf->Current);

            if (pShadow->DoneFld != 3)
            {
                VOISR_GetDispField(pNextFrame, enDstFeild, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, pShadow);
            }

            //DEBUG_PRINTK(" w %d %d %d", pShadow->DoneFld, (pShadow->CurFld-1), NextBtmflag);

            if (1 == pShadow->CurFld)
            {
                pWinModCfg->InBtmFlag = 0;
            }
            else if (2 == pShadow->CurFld)
            {
                pWinModCfg->InBtmFlag = 1;
            }
            else
            {
            }

            if (3 == pShadow->DoneFld)
            {
                if (!g_stShadow.bRpeat)
                {
                    Next = (pShadow->Config + 1) % OPTM_FFB_MAX_FRAME_NUM;
                    pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, Next);

                    if ((Next != pWinFrameBuf->Next) && pConfigFrame)
                    {
                        pShadow->Config = Next;
                        pShadow->DoneFld = 0;
                    }
                }
            }
        }

        pWinModCfg->stOutRect.s32X = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32X * DstDispInfo.stScrnWin.s32Width / SrcDispInfo.stScrnWin.s32Width;
        pWinModCfg->stOutRect.s32Y = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Y * DstDispInfo.stScrnWin.s32Height / SrcDispInfo.stScrnWin.s32Height;

        pWinModCfg->stOutRect.s32Width  = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Width * DstDispInfo.stScrnWin.s32Width / SrcDispInfo.stScrnWin.s32Width;
        pWinModCfg->stOutRect.s32Height = pShadow->pMainWin->hSlaveWin[0]->WinModCfg.stOutRect.s32Height * DstDispInfo.stScrnWin.s32Height / SrcDispInfo.stScrnWin.s32Height;

        pWinModCfg->stOutRect.s32X = pWinModCfg->stOutRect.s32X & 0xfffffffe;
        pWinModCfg->stOutRect.s32Y = pWinModCfg->stOutRect.s32Y & 0xfffffffc;

        pWinModCfg->stOutRect.s32Width  = pWinModCfg->stOutRect.s32Width & 0xfffffffe;
        pWinModCfg->stOutRect.s32Height = pWinModCfg->stOutRect.s32Height & 0xfffffffc;

        //DEBUG_PRINTK("x %d y %d width %d height %d\n", pWinModCfg->stOutRect.s32X, pWinModCfg->stOutRect.s32Y, pWinModCfg->stOutRect.s32Width, pWinModCfg->stOutRect.s32Height);
        pWinModCfg->enOutRatio = HI_UNF_ASPECT_RATIO_4TO3;
        pWinModCfg->enCvsMode = pShadow->pMainWin->hSlaveWin[0]->stAttr.enAspectCvrs;

        pWinModCfg->stInRect = pShadow->pMainWin->hSlaveWin[0]->stAttr.stInputRect;

    }

    OPTM_M_VO_SetEnable(pShadow->enLayerHalId, HI_TRUE);

    /* set output window */
    HAL_DISP_SetLayerDispRect(pShadow->enLayerHalId, pWinModCfg->stOutRect);

    if (pShadow->bWbcMode)
        pWinModCfg->stOutRect = pShadow->stInRect;

    pWinModCfg->pstLastF = HI_NULL;
    pWinModCfg->pstCurrF = pNextFrame;
    pWinModCfg->pstNextF = HI_NULL;

    pWinModCfg->OutBtmFlag = NextBtmflag;

    pWinModCfg->ReFlag    = 0;
    pWinModCfg->DropFlag  = 0;

    pWinModCfg->enDispHalId = pShadow->enDispHalId;
    pWinModCfg->bDoDei = HI_FALSE;
    pWinModCfg->u32CurrWinNumber = 0;

    /*  set image output  */
    OPTM_M_VO_ConfigFrame(pWinModCfg, pShadow->enLayerHalId, &(pShadow->stDetInfo), HI_FALSE);


    /*  update VHD REG */
    //HAL_DISP_SetRegUpNoRatio(pstShadow->enLayerHalId);

#ifndef OPTM_WBC0_ONE_BUUFER_ENABLE
    /*  4  release  frame buffer */
    OPTM_WBCFB_ReleaseFrame(&(pShadow->stWbcBuf));
#endif

    if (pShadow->bWbcMode)
        OPTM_WBC1FB_PutReadBuf(&(pShadow->stWbcBuf_standalone));
    return;
}

HI_VOID VOISR_Wbc0IsrFinish_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_WBC0_S *pstWbc0;
    OPTM_SHADOW_WIN_S    *pstShadow;

    pstWbc0 = (OPTM_WBC0_S *)u32Param0;
    pstShadow = (OPTM_SHADOW_WIN_S *)u32Param1;

    //DEBUG_PRINTK("b");

    if (pstWbc0->bEnable != HI_TRUE)
    {
        return;
    }

    OPTM_WBC1FB_AddWriteBuf(&(pstShadow->stWbcBuf_standalone));
    OPTM_WBC1FB_PutWriteBuf(&(pstShadow->stWbcBuf_standalone));

    /*  0  put the need of write back frame into buffer */
    if (pstWbc0->s32TaskCount > 0)
    {

    }
    return;
}
#endif

#if 0
HI_S32 VO_GetMosaicType(HI_VO_MOSAIC_TYPE_E *penVoMosaicType)
{
    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(penVoMosaicType);

    *penVoMosaicType = g_enVoMosaicType;

    return HI_SUCCESS;
}
#endif

extern HI_BOOL g_bDNR_Enable;
HI_VOID VO_SetDNREnable(HI_BOOL bEnable)
{
   g_bDNR_Enable = bEnable;
}
HI_S32 VO_SetWinAttrFromProc(HI_UNF_VO_E enVo, HI_CHAR *pItem,HI_CHAR *pValue)
{
#if !(0 == HI_PROC_SUPPORT)
    HI_S32 s32Acm;
    OPTM_VO_S *pstVo;
    HI_UNF_ALG_CONTROL_S stAlgControl;

    D_VO_GET_HANDLE(enVo, pstVo);

    if (!strncmp(pItem,"acm", strlen("acm")))
    {
      s32Acm = simple_strtol(pValue, NULL, 10);
        stAlgControl.enAlgType = HI_ALG_TYPE_ACM;
      if(s32Acm == 1)
      {
          stAlgControl.bEnable = HI_TRUE;
      }
      else
      {
          stAlgControl.bEnable = HI_FALSE;
      }
      stAlgControl.alg_info = HI_NULL;
        VO_AlgControl(&stAlgControl);
    }
    else if (!strncmp(pItem,"acc", strlen("acc")))
    {
        HI_S32 s32Acc;
        s32Acc = simple_strtol(pValue, NULL, 10);
        stAlgControl.enAlgType = HI_ALG_TYPE_ACC;
        if(s32Acc >100)
        {
          s32Acc = 100;
        }
        else if(s32Acc < 1)
        {
          s32Acc = 0;
        }

        if(s32Acc == 0)
        {
          stAlgControl.bEnable = HI_FALSE;
        }
        else
        {
          stAlgControl.bEnable = HI_TRUE;
        }

        stAlgControl.alg_info = &s32Acc;
        VO_AlgControl(&stAlgControl);
    }
    else if (!strncmp(pItem,"sharp", strlen("sharp")))
    {
      HI_UNF_VO_SHARPEN_INFO_S  alg_controll_info = {0};

      HI_S32 s32HD=0;
      HI_S32 s32SD=0;
      if(2 != sscanf(pValue, "%d %d", &s32HD, &s32SD))
      {
          return -EFAULT;
      }

      alg_controll_info.s16LTICTIStrengthRatio_hd = (HI_S16)s32HD;
      alg_controll_info.s16LTICTIStrengthRatio = (HI_S16)s32SD;

      stAlgControl.enAlgType = HI_ALG_TYPE_SHARPNESS;
      if(alg_controll_info.s16LTICTIStrengthRatio_hd >30)
      {
          alg_controll_info.s16LTICTIStrengthRatio_hd = 30;
      }
      else if(alg_controll_info.s16LTICTIStrengthRatio_hd < 1)
      {
          alg_controll_info.s16LTICTIStrengthRatio_hd = 0;
      }

      if(alg_controll_info.s16LTICTIStrengthRatio >30)
      {
          alg_controll_info.s16LTICTIStrengthRatio  = 30;
      }
      else if(alg_controll_info.s16LTICTIStrengthRatio  < 1)
      {
          alg_controll_info.s16LTICTIStrengthRatio  = 0;
      }


      if(alg_controll_info.s16LTICTIStrengthRatio_hd == 0 &&
        alg_controll_info.s16LTICTIStrengthRatio == 0)
      {
          stAlgControl.bEnable = HI_FALSE;
      }
      else
      {
          stAlgControl.bEnable = HI_TRUE;
      }

      stAlgControl.alg_info = &alg_controll_info;
        VO_AlgControl(&stAlgControl);
    }
    else if (!strncmp(pItem,"dnr", strlen("dnr")))
    {
        g_bDNR_Enable = simple_strtol(pValue, NULL, 10);
    }
#endif
    return HI_SUCCESS;

}

HI_S32 VO_CaptureFrameRelease(OPTM_WIN_S *pstWin, HI_UNF_VO_FRAMEINFO_S *releaseFrame1)
{
    OPTM_WIN_S               *pstMainWin;
    HI_S32  nRet = HI_FAILURE;
    HI_VO_CAPTURE_S     *pstCapMmz = HI_NULL, *n;
    HI_U64 curtime;

    curtime = sched_clock();
    do_div(curtime, (HI_U64)1000000);

    //printk("<---------------------------------------->func %s line %d current time %llu\r\n", __func__, __LINE__, curtime);

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(releaseFrame1);
    D_VO_CHECK_PTR(pstWin);
    //D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin) {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }
    if (pstWin->hMainWin->bEnable != HI_TRUE) {
        HI_ERR_VO("VO win is not play, can't cap picture.\n");
        return HI_FAILURE;
    }

    pstMainWin = pstWin->hMainWin;
    list_for_each_entry_safe(pstCapMmz, n, &pstMainWin->stCaptureHead, list){
        if (pstCapMmz->stCapFrame.VdecFrameInfo.u32YAddr == releaseFrame1->u32YAddr) {

            pstCapMmz->s32CapCnt -- ;

            if (pstCapMmz->s32CapCnt <= 0) {
                /* if success get this lock,we will do this */
                mutex_lock(&(pstCapMmz->lock));

                if (pstCapMmz->stCapFrame.bNeedRelease == HI_TRUE)
                {
                    VO_ReleaseFrame(pstWin, &(pstCapMmz->stCapFrame));
                }
                else {
                    pstCapMmz->pstFrame->bNeedRelease = HI_TRUE;
                }
                mutex_unlock(&(pstCapMmz->lock));
                list_del(&(pstCapMmz->list));
                kfree(pstCapMmz);
            }

            /* dec the number of capture, the freeze frame is released */
            if (pstWin->captureCnt > 0)
                pstWin->captureCnt --;
            break;
        }
    }

    nRet = HI_SUCCESS;
    return nRet;
}


#define     MAX_CAPTURE_PROCESS_NUMBER      2
HI_S32 VO_CapturePictureWithMem(HI_HANDLE hWin, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture, HI_UNF_CAPTURE_MEM_MODE_S *pMemMode)
{
    OPTM_WIN_S*               pstWin = HI_NULL, *pstMainWin = HI_NULL;
    OPTM_FRAME_S*             pCrtFrame = HI_NULL;
    HI_UNF_VO_FRAMEINFO_S     *pSourceFrame = HI_NULL, stDestinFrame;
    VDEC_EXPORT_FUNC_S* pVDECFunc = HI_NULL;
    HI_DRV_VDEC_DNR_Capture_S DnrFunPara;
    HI_VDEC_PRIV_FRAMEINFO_S* pVdecPriv = HI_NULL;
    HI_UCHAR*          pOutBuf = HI_NULL, *pInBuf = HI_NULL;
    HI_S32  u32DataLen;
    HI_VO_CAPTURE_S*      pCap = HI_NULL, *pstCapMmz = HI_NULL, *n = HI_NULL;
    HI_VO_MMZ_S*      pMmz = HI_NULL;
    HI_S32  nRet;
    HI_U64 curtime;
    HI_BOOL flag = HI_FALSE;

    curtime = sched_clock();
    do_div(curtime, (HI_U64)1000000);

    //printk("<---------------------------------------->func %s line %d current time %llu\r\n", __func__, __LINE__, curtime);

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pstCapPicture);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }
    if (HI_TRUE != pstWin->hMainWin->bEnable)
    {
        HI_ERR_VO("VO win is not play, can't cap picture.\n");
        return HI_FAILURE;
    }

    if (HI_FALSE == pstWin->hMainWin->bFreeze)
    {
        pCrtFrame = OPTM_FB_GetLstConfig(&pstWin->hMainWin->WinFrameBuf);
    }
    else
    {
        pCrtFrame = pstWin->hMainWin->pstFrzFrame;
    }

    if (HI_NULL == pCrtFrame)
    {
        HI_ERR_VO("pCrtFrame is null.\n");
        return HI_FAILURE;
    }

    /* 2 process is capturing */
    if (pstWin->captureCnt >= MAX_CAPTURE_PROCESS_NUMBER)
    {
        HI_ERR_VO("Too many process capture in this win,please wait....\n");
        return HI_FAILURE;
    }

    pSourceFrame = &(pCrtFrame->VdecFrameInfo);
    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S* )(&pSourceFrame->u32VdecInfo[0]);
    if ((HI_UNF_CAPTURE_USER_ALLOC != pMemMode->enAllocMemType)
        && (HI_UNF_CAPTURE_DRIVER_ALLOC != pMemMode->enAllocMemType)
        && (HI_UNF_CAPTURE_NO_ALLOC != pMemMode->enAllocMemType))
    {
        HI_ERR_VO(" capture frame alloc mem mode invalid");
        return HI_FAILURE;
    }

    memcpy(&stDestinFrame, pSourceFrame, sizeof(HI_UNF_VO_FRAMEINFO_S));
    /* 2D frame is aligned by 64bytes in Vdec(1D->256bytes). */
    stDestinFrame.u32YStride = ((stDestinFrame.u32Width + 63) / 64) * 64;
    pstMainWin = pstWin->hMainWin;

    if (HI_UNF_CAPTURE_NO_ALLOC == pMemMode->enAllocMemType)
    {
        pstCapPicture->u32TopYStartAddr = pSourceFrame->u32YAddr;
        pstCapPicture->u32TopCStartAddr = pSourceFrame->u32CAddr;
        pstCapPicture->u32BottomYStartAddr = pSourceFrame->u32YAddr + pSourceFrame->u32YStride;
        pstCapPicture->u32BottomCStartAddr = pSourceFrame->u32CAddr + pSourceFrame->u32CStride;

        pstCapPicture->u32Width  = pSourceFrame->u32Width;
        pstCapPicture->u32Height = pSourceFrame->u32Height;
        pstCapPicture->u32Stride = pSourceFrame->u32YStride;
        pstCapPicture->enVideoFormat = pSourceFrame->enVideoFormat;
        pstCapPicture->enFieldMode   = pSourceFrame->enFieldMode;
        pstCapPicture->enSampleType  = pSourceFrame->enSampleType;

        pstCapPicture->u32CompressFlag = pSourceFrame->u32CompressFlag;
        pstCapPicture->s32CompFrameHeight = pSourceFrame->s32CompFrameHeight;
        pstCapPicture->s32CompFrameWidth = pSourceFrame->s32CompFrameWidth;
        return HI_SUCCESS;
    }
    else if (HI_UNF_CAPTURE_USER_ALLOC == pMemMode->enAllocMemType)
    {
        /* check user mem is invalid ?? */
        if ((!pMemMode->u32StartPhyAddr) || (!pMemMode->u32StartUserAddr))
        {
            HI_ERR_VO(" capture frame alloc mem mode invalid");
            return HI_FAILURE;
        }
        /* note: format of frame1 is 1D, and it is larger than 2D format. */
        if ((pMemMode->u32DataLen < (stDestinFrame.u32YStride * stDestinFrame.u32Height * 3 / 2)
             && (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == stDestinFrame.enVideoFormat))
            || ((pMemMode->u32DataLen < (stDestinFrame.u32YStride * stDestinFrame.u32Height * 2))
                && (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 != stDestinFrame.enVideoFormat)))
        {
            HI_ERR_VO("in capture window mode alloc mem too small\r\n");
            return HI_FAILURE;
        }

        stDestinFrame.u32YAddr = pMemMode->u32StartPhyAddr;
    }
    else if (HI_UNF_CAPTURE_DRIVER_ALLOC == pMemMode->enAllocMemType)
    {
        pMmz = kmalloc(sizeof(HI_VO_MMZ_S), GFP_KERNEL);
        if (HI_NULL == pMmz)
        {
            HI_ERR_VO("kmalloc pMmz failed\n");
            return HI_FAILURE;
        }
        memset(pMmz, 0, sizeof(HI_VO_MMZ_S));
        pMmz->enMemType = pMemMode->enAllocMemType;

        if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == stDestinFrame.enVideoFormat)
        {
            nRet = HI_DRV_MMZ_AllocAndMap("VOCapture", HI_NULL,
                                          stDestinFrame.u32YStride * stDestinFrame.u32Height * 3 / 2, 0, &(pMmz->stMMZBuf));
        }
        else
        {
            nRet = HI_DRV_MMZ_AllocAndMap("VOCapture", HI_NULL,
                                          stDestinFrame.u32YStride * stDestinFrame.u32Height * 2, 0, &(pMmz->stMMZBuf));
        }

        if (nRet != 0)
        {
            HI_ERR_VO("VO Get VOCapture buf failed\n");
            if (HI_NULL != pMmz)
            {
                kfree(pMmz);
            }
            return HI_FAILURE;
        }

        /* return driver alloc mem for user */
        pMemMode->u32StartPhyAddr = pMmz->stMMZBuf.u32StartPhyAddr;
        pMemMode->u32DataLen = pMmz->stMMZBuf.u32Size;

        stDestinFrame.u32YAddr = pMemMode->u32StartPhyAddr;

        /* add list to window capture list_head */
        list_add_tail(&(pMmz->list), &(pstWin->stCapMMZHead));

    }

    /*  we should not use list_for_each_entry, because del lit node will coredump*/
    list_for_each_entry_safe(pstCapMmz, n, &pstMainWin->stCaptureHead, list)
    {
        if (pstCapMmz->stCapFrame.VdecFrameInfo.u32Pts == pCrtFrame->VdecFrameInfo.u32Pts)
        {
            pstCapMmz->s32CapCnt ++;
            flag = HI_TRUE;
        }
    }

    /* add list to window capture list_head */
    if (flag == HI_FALSE)
    {
        pCap = kmalloc(sizeof(HI_VO_CAPTURE_S), GFP_KERNEL);
        if (pCap == HI_NULL)
        {
            HI_VO_PRINT("kmalloc pCap failed\n");
            return HI_FAILURE;
        }
        memset(pCap, 0, sizeof(HI_VO_CAPTURE_S));

        /* backup freeze frame */
        memcpy(&(pCap->stCapFrame), pCrtFrame,  sizeof(OPTM_FRAME_S));

        pCap->s32CapCnt ++ ;
        pCap->pstFrame = pCrtFrame;
        pCap->stCapFrame.bNeedRelease = HI_FALSE;
        list_add_tail(&(pCap->list), &(pstMainWin->stCaptureHead));
        /* init mutex lock */
        mutex_init(&(pCap->lock));
    }
    /* freeze frame */
    pCrtFrame->bCaptured = HI_TRUE;
    pCrtFrame->bNeedRelease = HI_FALSE;

    /* rember capture num */
    pstWin->captureCnt ++;

    if (pVdecPriv->u32Is1D)
    {
        /* interface for transforming 1D frame to 2D frame. */
        nRet = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pVDECFunc);
        if (nRet != 0)
        {
            HI_ERR_VO("HI_DRV_MODULE_GetFunction failed!\n");
            goto FAILPROC;
        }
        if (!pVDECFunc)
        {
            HI_ERR_VO("Get Vdec function failed!\n");
            goto FAILPROC;
        }

        DnrFunPara.pstInFrame = pSourceFrame;
        DnrFunPara.pstOutFrame = &stDestinFrame;
        DnrFunPara.u32PhyAddr = pMemMode->u32StartPhyAddr;
        DnrFunPara.u32Size = pMemMode->u32DataLen;
        nRet = pVDECFunc->pfnVDEC_DNRCapture(pstWin->s32UserId, &DnrFunPara);
        if (HI_SUCCESS != nRet)
        {
            HI_ERR_VO("\nCall VdecDnrFunction failed.\n");
            goto FAILPROC;
        }
    }
    else
    {
        /* 2D frame, just copy from source frame. */
        if (HI_UNF_CAPTURE_DRIVER_ALLOC == pMemMode->enAllocMemType)
        {
            pOutBuf = (HI_UCHAR*)pMmz->stMMZBuf.u32StartVirAddr;
        }
        else if (HI_UNF_CAPTURE_USER_ALLOC == pMemMode->enAllocMemType)
        {
            if (HI_NULL == (pOutBuf = ioremap(pMemMode->u32StartPhyAddr, pMemMode->u32DataLen)))
            {
                HI_ERR_VO("CANNOT MAP PHYSICAL ADDRESS.\n");
                goto FAILPROC;
            }
        }

        if ( HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == stDestinFrame.enVideoFormat)
        {
            u32DataLen = stDestinFrame.u32YStride * stDestinFrame.u32Height * 3 / 2;
        }
        else
        {
            u32DataLen = stDestinFrame.u32YStride * stDestinFrame.u32Height *  2;
        }

        if (pMemMode->enAllocMemType != HI_UNF_CAPTURE_NO_ALLOC)
        {
            if (HI_NULL == (pInBuf = ioremap(pSourceFrame->u32YAddr, pMemMode->u32DataLen)))
            {
                HI_ERR_VO("CANNOT MAP FRAME Y ADDRESS.\n");
                if (HI_UNF_CAPTURE_DRIVER_ALLOC == pMemMode->enAllocMemType)
                {
                    HI_DRV_MMZ_Unmap(&(pMmz->stMMZBuf));
                }
                else if ( HI_UNF_CAPTURE_USER_ALLOC == pMemMode->enAllocMemType)
                {
                    iounmap(pOutBuf);
                }
                goto FAILPROC;
            }
        }

        /* just copy */
        memcpy(pOutBuf,pInBuf,u32DataLen);
        iounmap(pInBuf);
         if ( HI_UNF_CAPTURE_USER_ALLOC == pMemMode->enAllocMemType)
        {
            iounmap(pOutBuf);
        }
    }//2D frame process end.

    /*remap operation*/
    if (HI_UNF_CAPTURE_DRIVER_ALLOC == pMemMode->enAllocMemType)
    {
        HI_DRV_MMZ_Unmap(&(pMmz->stMMZBuf));
    }

    pstCapPicture->u32TopYStartAddr = stDestinFrame.u32YAddr;
    pstCapPicture->u32TopCStartAddr = stDestinFrame.u32CAddr;
    pstCapPicture->u32BottomYStartAddr = stDestinFrame.u32YAddr + stDestinFrame.u32YStride;
    pstCapPicture->u32BottomCStartAddr = stDestinFrame.u32CAddr + stDestinFrame.u32CStride;

    pstCapPicture->u32Width  = stDestinFrame.u32Width;
    pstCapPicture->u32Height = stDestinFrame.u32Height;
    pstCapPicture->u32Stride = stDestinFrame.u32YStride;
    pstCapPicture->enVideoFormat = stDestinFrame.enVideoFormat;
    pstCapPicture->enFieldMode   = stDestinFrame.enFieldMode;
    pstCapPicture->enSampleType  = stDestinFrame.enSampleType;

	pstCapPicture->u32CompressFlag = stDestinFrame.u32CompressFlag;
    pstCapPicture->s32CompFrameHeight = stDestinFrame.s32CompFrameHeight;
    pstCapPicture->s32CompFrameWidth = stDestinFrame.s32CompFrameWidth;

    //release frame1
    nRet = VO_CaptureFrameRelease(pstWin, pSourceFrame);
    if (HI_SUCCESS != nRet)
    {
        HI_ERR_VO("Capture Picture Release function failed!\n");
        goto ERRORFREE;
    }
    return HI_SUCCESS;

FAILPROC:
    nRet = VO_CaptureFrameRelease(pstWin, pSourceFrame);
    if (HI_SUCCESS != nRet)
    {
        HI_ERR_VO("Capture Picture Release function failed!\n");
    }
ERRORFREE:
    if (HI_UNF_CAPTURE_DRIVER_ALLOC == pMemMode->enAllocMemType)
    {
        /* free the memory*/
        list_del(&(pMmz->list));
        HI_DRV_MMZ_Release(&(pMmz->stMMZBuf));
        kfree(pMmz);
    }
    return HI_FAILURE;
}


HI_S32 VO_CapturePictureRelease(HI_HANDLE hWin, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    return HI_SUCCESS;
}

HI_S32 VO_CapturePictureReleaseMMZ(HI_HANDLE hWin, HI_UNF_CAPTURE_MEM_MODE_S *pMemMode)
{
    OPTM_WIN_S               *pstWin;
    HI_S32  nRet = HI_ERR_VO_INVALID_PARA;
    HI_VO_MMZ_S     *pstCapMmz = HI_NULL, *n;
    HI_U64 curtime;

    curtime = sched_clock();
    do_div(curtime, (HI_U64)1000000);

    //printk("<---------------------------------------->func %s line %d current time %llu\r\n", __func__, __LINE__, curtime);


    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pMemMode);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin) {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }
    if (pstWin->hMainWin->bEnable != HI_TRUE) {
        HI_ERR_VO("VO win is not play, can't cap picture.\n");
        return HI_FAILURE;
    }

    list_for_each_entry_safe(pstCapMmz, n, &pstWin->stCapMMZHead, list){

        if (pstCapMmz->stMMZBuf.u32StartPhyAddr == pMemMode->u32StartPhyAddr) {

            /*  release I frame  */
            if (pstCapMmz->enMemType == HI_UNF_CAPTURE_DRIVER_ALLOC){
                if(pstCapMmz->stMMZBuf.u32StartPhyAddr != 0){
                    HI_DRV_MMZ_Release(&(pstCapMmz->stMMZBuf));
                }
                list_del(&(pstCapMmz->list));
                kfree(pstCapMmz);
            }
            nRet = HI_SUCCESS;
            break;
        }
    }

    return nRet;
}


HI_S32 VO_GetDisplayFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pFrame)
{
    OPTM_WIN_S               *pstWin, *pstMainWin;
    HI_S32  nRet = HI_ERR_VO_INVALID_PARA;
    OPTM_FRAME_S *pCrtFrame;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if(HI_NULL == pstWin->hMainWin) {
        HI_ERR_VO("vo win be dettached\n");
        return HI_FAILURE;
    }

    if (pstWin->hMainWin->bEnable != HI_TRUE) {
        HI_ERR_VO("VO win is not play, can't cap picture.\n");
        return HI_FAILURE;
    }
    /* we must use newest frame */
    pstMainWin = pstWin->hMainWin;

    if (pstWin->hMainWin->bFreeze == HI_FALSE) {
        pCrtFrame = OPTM_FB_GetLstConfig(&pstMainWin->WinFrameBuf);
    }
    else {
        pCrtFrame = pstMainWin->pstFrzFrame;
    }

    if (pCrtFrame != HI_NULL){
        memcpy(pFrame, &(pCrtFrame->VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
    }
    else {
        memset(pFrame, 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));
    }

    return nRet;
}


HI_S32  VO_SetWinRstHQ(HI_HANDLE hWin, HI_BOOL bEnable)
{
    OPTM_WIN_S   *pstWin;

    D_VO_CHECK_DEVICE_OPEN();

    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if (HI_NULL == pstWin->hMainWin)
    {
        HI_ERR_VO("win has not been attached.\n");
        return HI_FAILURE;
    }

    if (HI_FALSE == pstWin->bEnable)
    {
        HI_ERR_VO("VO win is not enable.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((pstWin->hMainWin->bReset) &&
        (pstWin->hMainWin->u32ResetStep > 0))
    {
        HI_ERR_VO("window is reseting,can not change\r\n");
        return HI_ERR_VO_INVALID_OPT;
    }

    pstWin->hMainWin->bRstHQ = bEnable;
    //printk("----------------------->set win reset HQ %d \r\n", bEnable);

    return HI_SUCCESS;

}


#ifndef MODULE
//EXPORT_SYMBOL(VO_Create_And_SwitchToCast);
//EXPORT_SYMBOL(VO_Destroy_And_SwitchFromCast);
//EXPORT_SYMBOL(VO_Set_Mirror_Enable);
//EXPORT_SYMBOL(VO_Get_Mirror_Enable);
//EXPORT_SYMBOL(VO_Get_Mirror_Frame);
//EXPORT_SYMBOL(VO_Put_Mirror_Frame);
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */
