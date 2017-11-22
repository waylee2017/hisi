























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : optm_vo_virtual.c
  Version       : Initial Draft
  Author        : WISH software group
  Created       : 2010/08/04
  Last Modified :
  Description   : header file for video output virtual control
  Function List :
  History       :
  1.Date        :
  Author        : w00136937
  Modification  : Created file
******************************************************************************/

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


#include <linux/version.h>
#include <linux/workqueue.h>
#include <linux/string.h>
#include "optm_vo_virtual.h"
#include "optm_p_vo.h"
//#include "mpi_priv_vdec.h"
#include "drv_vdec_ext.h"

#include "optm_p_disp.h"
//#include "mpi_priv_sync.h"
#include "drv_sync_ext.h"

//#include "sync_drv.h"
#include "optm_vo.h"
#include "optm_regintf.h"


FN_SYNC_VidProc pfnSyncVidProc = HI_NULL;
FN_SYNC_VerifyHandle pfnSyncVfy = HI_NULL;

#if _OPTM_DEBUG_VO_VIRTUAL_
#define DEBUG_VO_VIRTUAL(fmt...) \
do{\
    DEBUG_PRINTK("\n [%s,%s]: %d ", __FILE__,__FUNCTION__, __LINE__);\
    DEBUG_PRINTK(fmt);\
} while(0)

#define DEBUG_WBCFB_INFO(fmt...) \
do{\
    DEBUG_PRINTK("\n [%s,%s]: %d ", __FILE__,__FUNCTION__, __LINE__);\
    DEBUG_PRINTK(fmt);\
} while(0)


#define DEBUG_VIRUTAL_ACTIVE_CHANGE(fmt...) \
do{\
    DEBUG_PRINTK("\n [%s,%s]: %d ", __FILE__,__FUNCTION__, __LINE__);\
    DEBUG_PRINTK(fmt);\
} while(0)
#endif

#ifndef D_DISP_GET_HANDLE
#define D_DISP_GET_HANDLE(enDisp, pOptmDispCh) \
do{                             \
    pOptmDispCh = &(g_stDispChn[(HI_S32)enDisp]);\
}while(0)
#endif

/* check null pointer */
#ifndef D_VO_CHECK_PTR
#define D_VO_CHECK_PTR(ptr) \
do {if (HI_NULL == ptr){    \
        HI_ERR_VO("Error, an Null pointer.\n");\
        return HI_ERR_VO_NULL_PTR;           \
    }                                          \
} while (0)
#endif

/* check whether VO device is open or not */
#ifndef D_VO_CHECK_DEVICE_OPEN
#define D_VO_CHECK_DEVICE_OPEN() \
do {                         \
    if (g_OptmVoInitTime < 1)\
    {                        \
        HI_ERR_VO("VO is not open.\n");  \
        return HI_ERR_VO_NO_INIT;   \
    }                               \
} while (0)
#endif

/* check the validity of VO Layer */
#ifndef D_VO_CHECK_CHANNEL
#define D_VO_CHECK_CHANNEL(enVoId) \
do {                               \
    if (enVoId >= HI_UNF_VO_BUTT)      \
    {                              \
        HI_ERR_VO("VO Layer is not exist.\n"); \
        return HI_ERR_VO_INVALID_PARA;\
    }                             \
} while (0)
#endif

/*  acquire VO Layer handle */
#ifndef D_VO_GET_HANDLE
#define D_VO_GET_HANDLE(enVo, pstVo) \
do{                                  \
    D_VO_CHECK_CHANNEL(enVo);        \
    pstVo = &(g_stVoLayer[(HI_S32)enVo]); \
}while(0)
#endif

#if 0

#else
/*  acquire WINDOW HANDLE */
#ifndef D_VO_GET_WIN_HANDLE
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
#endif
#endif


extern HI_U32 g_OptmVoInitTime ;
//extern HI_VO_VIPARAM_S *g_VoViPara;

/* VO device mode */
extern HI_UNF_VO_DEV_MODE_E g_enVoDevMode;

/* VO channel: 0 vsd, 1 vhd */
extern OPTM_VO_S g_stVoLayer[HI_UNF_VO_BUTT];

extern OPTM_SHADOW_WIN_S    g_stShadow;
extern OPTM_OFL_TASK_MNG_S  g_stOflTaskMng;
extern OPTM_MOSAIC_WIN_S    g_stMasicWin;
//extern HI_U8 *g_pEnableString[2];
extern OPTM_DISP_S g_stDispChn[HI_UNF_DISP_BUTT];
/*============ public  module ===============*/
/* VO ZME coefficients */
extern OPTM_VZME_COEF_S g_stVzmeCoef;

extern HI_BOOL g_VoSuspend;
extern OPTM_MIRACAST_WIN_S  g_miracast;

#if 0
static HI_U32   g_JifFirst = 0;
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
static spinlock_t time_lock = SPIN_LOCK_UNLOCKED;
#else
static spinlock_t time_lock = __SPIN_LOCK_UNLOCKED(time_lock);
#endif

static HI_U32 VOISR_GetTimeStamp(void)
{
    static HI_U32   u32JifLast  = 0;
    static HI_U32   u32Ret = 0;
    HI_U32          u32Add;
    HI_U32          u32JifNow;
    static HI_U32   u32UsecComp = 0;
    unsigned long   flags;

    spin_lock_irqsave(&time_lock, flags);

    u32JifNow = jiffies;

    if (g_JifFirst == 0)
    {
        g_JifFirst = 1;
        u32JifLast = u32JifNow ;
    }

    if (u32JifNow < u32JifLast)
    {
        u32Add = 0xFFFFFFFFU - u32JifLast + u32JifNow + 1;
    }
    else
    {
        u32Add = u32JifNow - u32JifLast;
    }

    if (u32Add == 0)
    {
        u32UsecComp += 10;
    }
    else
    {
        u32UsecComp = 0;
    }

    u32Add = u32Add * 10; /* jiffies=10ms */

    u32Ret = u32Ret + u32Add;

    u32JifLast = u32JifNow;

    spin_unlock_irqrestore(&time_lock, flags);

    return (HI_U32) (u32Ret + u32UsecComp);
}
#endif

#if 0
HI_S32 OPTM_VirtualWBCFB_Create(OPTM_WBC_FB_S *pWbc, HI_UNF_VIDEO_FORMAT_E enVideoFormat, HI_S32 s32Width, HI_S32 s32Height, HI_S32 s32BufferLength)
{
    HI_U32     Width;
    HI_U32     Height;
    HI_U32     i, j;
    HI_S32     nRet;

    Width = s32Width;
    Height = s32Height;

    memset((HI_U8 *)&(pWbc->stFrameDemo), 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    pWbc->stFrameDemo.enVideoFormat = enVideoFormat;
    pWbc->stFrameDemo.enSampleType  = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    pWbc->stFrameDemo.u32Width      = Width;
    pWbc->stFrameDemo.u32Height     = Height;

    pWbc->stFrameDemo.u32DisplayWidth   = Width;
    pWbc->stFrameDemo.u32DisplayHeight  = Height;
    pWbc->stFrameDemo.u32DisplayCenterX = Width/2;
    pWbc->stFrameDemo.u32DisplayCenterY = Height/2;

    //128bit aline
    pWbc->stFrameDemo.u32YStride = (Width * 2 + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32Repeat  = 1;

    pWbc->s32FrmSize = pWbc->stFrameDemo.u32YStride * Height;
    pWbc->s32FrmNum  = s32BufferLength;
    pWbc->bIsExternAlloc = HI_FALSE;

    if ( (HI_NULL == pWbc) || (0 == pWbc->s32FrmSize) || (0 == pWbc->s32FrmNum) || (pWbc->s32FrmNum > OPTM_WBC_FRAME_NUMBER) )
    {
        return HI_FAILURE;
    }

    // request coefficients buffer
    nRet = CMPI_MEM_AllocAndMapMem("VovirtualWin", HI_NULL, pWbc->s32FrmSize*pWbc->s32FrmNum, 0, &pWbc->stMBuf);
    if (nRet != 0)
    {
        HI_ERR_VO("VO Get wbc_buf failed\n");
        return HI_FAILURE;
    }

    for (i=0; i<pWbc->s32FrmNum*s32Height; i++)
    {
        for (j=0; j<(pWbc->stFrameDemo.u32YStride/4); j++)
        {
            *(HI_U32 *)(pWbc->stMBuf.u32StartVirAddr+i*pWbc->stFrameDemo.u32YStride+j*4) = 0x10801080;
        }
    }

    OPTM_WBCFB_Reset(pWbc);

    return HI_SUCCESS;
}
#endif

HI_S32 VoSetWindowVirtual(OPTM_VO_S *pstVo,HI_S32 ps32WinId,HI_BOOL bEnable)
{
    D_VO_CHECK_DEVICE_OPEN();
    pstVo->stWin[ps32WinId].bIsVirtual= bEnable;
    return HI_SUCCESS;
}
static HI_S32 VOInitMainWindow(OPTM_WIN_S *pstWin,OPTM_WIN_S *pstsrcWin,OPTM_VO_S *pstVo)
{
    OPTM_M_DISP_INFO_S OptmDispInfo;
    HI_S32 deiflag;

    pstWin->s32WindowId = pstsrcWin->s32WindowId;

    pstWin->bOpened = HI_TRUE;
    pstWin->bEnable = HI_FALSE;

    //add for Iframe display
    pstWin->bPaused = HI_FALSE;

    pstWin->bFieldMode = HI_FALSE;
    pstWin->bReset = HI_FALSE;
    pstWin->enReset = HI_UNF_WINDOW_FREEZE_MODE_LAST;

    pstWin->bStepMode = HI_FALSE;
    pstWin->bStepPlay = HI_FALSE;

    pstWin->bFreeze = HI_FALSE;
    pstWin->enFreeze = HI_UNF_WINDOW_FREEZE_MODE_LAST;
    //    pstWin->enLayerHalId = HAL_DISP_LAYER_VIDEO1;
    pstWin->enLayerHalId = pstsrcWin->enLayerHalId;

    pstWin->hVoHandle = (HI_HANDLE)pstVo;     /* outside initialization of this member. */
    pstWin->s32SlaveNewNum = 0;
    pstWin->s32SlaveIndex = 0;
    pstWin->s32MainIndex = 0;
    pstWin->bActiveContain = HI_FALSE;
    pstWin->VideoType = HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN;

    if (HI_UNF_VO_DEV_MODE_NORMAL == g_enVoDevMode)
    {
        deiflag = 0;
    }
    else
    {
        deiflag = 1;
    }

    /*  initialize DIE module  */
    if (OPTM_AA_InitDieModule(&(pstWin->stDie), deiflag) != HI_SUCCESS)
    {
        HI_ERR_VO("Vo Get DieBuf failed.\n");
        return HI_FAILURE;
    }

    /*  initialize FRC module  */
    OPTM_ALG_Init(&(pstWin->stAlgFrc));
    pstWin->u32DisplayRatio = OPTM_ALG_FRC_BASE_PLAY_RATIO;

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
    }
    /*  initialize enDetect  */
    pstWin->enDetect.bFODDet = 1;
    pstWin->enDetect.bFPSDet= 1;
    pstWin->enDetect.bProDet= 1;

    /* no need of dynamic memory, static frame employs a strategy where release is delayed. */
    /*
        pstWin->stResetFrame.u32Width  = OPTM_VO_RESET_FRAME_WIDTH;
        pstWin->stResetFrame.u32Height = OPTM_VO_RESET_FRAME_HEIGHT+8;
        pstWin->stResetFrame.enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;

        if (OPTM_CreateStillFrame(&(pstWin->stResetFrame)) != HI_SUCCESS)
        {
        OPTM_AA_DeInitDieModule(&(pstWin->stDie));
        HI_ERR_VO("Vo Get reset frame buf failed.\n");
        return HI_FAILURE;
        }
     */
    /* I frame need dynamic memory, and the time of release time should be controlled. */
    pstWin->stI_Frame.stMMZBuf.u32StartVirAddr = 0;
    pstWin->u32I_FrameWaitCount = 0;

    /*  zoom coefficients for public devices */
    pstWin->pstZmeCoefAddr = &(g_stVzmeCoef.stCoefAddr);

    /*  record win property  */
    memcpy(&pstWin->stAttr,&pstsrcWin->stAttr,sizeof(HI_UNF_WINDOW_ATTR_S));
    pstWin->unAttrUp.u32Value = 0xfL;

    /* acquire DISP information  */
    OPTM_M_GetDispInfo(pstVo->enDispHalId, &OptmDispInfo);
    pstWin->enDispHalId = pstVo->enDispHalId;
    pstWin->stDispInfo = OptmDispInfo;

    /* initialize frame buffer */
    pstWin->bQuickOutputMode = HI_FALSE;
    pstWin->bReleaseLastFrame = HI_FALSE;
    pstWin->bDisableDei = HI_FALSE;
    //pstWin->bDisableSync = HI_FALSE;

    OPTM_FB_Reset(&(pstWin->WinFrameBuf), pstWin->bQuickOutputMode);

    /*  initialize detection information  */
    pstWin->stDetInfo.s32TopFirst = -1;

    /*  set information, once only */
    pstWin->WinModCfg.pstDie = &(pstWin->stDie);
    pstWin->WinModCfg.pstZmeCoefAddr = pstWin->pstZmeCoefAddr;
    memset(&(pstWin->stLastFrame), 0, sizeof(OPTM_FRAME_S));

    pstWin->enSrcCS   = OPTM_CS_eXvYCC_709;
    pstWin->enDstCS   = pstVo->enDstCS;

    /* w00136937 */
    pstWin->s32SlaveIndex = 0;
    pstWin->s32MainIndex = 0;
    pstWin->s32SlaveNewNum = 0;
    pstWin->s32SlaveNum = 0;
    memset(pstWin->hSlaveNewWin,0,sizeof(OPTM_WIN_S*) * OPTM_VO_MAX_SLAVE_CHANNEL);
    memset(pstWin->hSlaveWin,0,sizeof(OPTM_WIN_S*) * OPTM_VO_MAX_SLAVE_CHANNEL);
    memset(pstWin->stRstFrame, 0, 3 * sizeof(OPTM_FRAME_S));
    pstWin->bRstHQ = HI_FALSE;

    init_waitqueue_head(&(pstWin->RstWaitQueue));

    INIT_WORK(&(pstWin->Reset_Work), VO_LstCFrame_Copy);
    pstWin->bUseDNRFrame = HI_TRUE;
    pstWin->u32ResetStep = 0;

    INIT_LIST_HEAD(&(pstWin->stCaptureHead));
    return HI_SUCCESS;
}

HI_S32 VODeInitMainWindow(OPTM_WIN_S *pstWin)
{
    /*  release remained image */
    VOISR_FlushFrame(pstWin);
#ifndef OPTM_VO_SELF_DEBUG
/*M310 not support Vi*/
#if 0
    if (HI_ID_VI == pstWin->enModId)
    {
        if(g_VoViPara)
        {
            g_VoViPara->viuPutUsrID(pstWin->hSrc, pstWin->s32UserId);
        }
    }
    #endif
#endif
    //    VODetachWindow(pstWin);
    /* w00136937 */
    /*  release resources of Reset frame */
    pstWin->bOpened = HI_FALSE;

    /* I frame need dynamic memory, and the time of release time should be controlled. */
    if(pstWin->u32I_FrameWaitCount > 0)
    {
        OPTM_DestroystillFrame(&(pstWin->stI_Frame));
    }
    pstWin->u32I_FrameWaitCount = 0;

    /*  initialize FRC module  */
    OPTM_ALG_DeInit(&(pstWin->stAlgFrc));

    /*  release resources of DIE module */
    OPTM_AA_DeInitDieModule(&(pstWin->stDie));

    return HI_SUCCESS;
}

static HI_VOID OPTM_M_WinRectAdjust(HI_RECT_S *pOldDispRect, HI_RECT_S *pNewDispRect, HI_RECT_S *pWinRect, HI_RECT_S *pOldWinRect)
{
    pWinRect->s32X = pOldWinRect->s32X * pNewDispRect->s32Width / pOldDispRect->s32Width;
    pWinRect->s32Y = pOldWinRect->s32Y * pNewDispRect->s32Height / pOldDispRect->s32Height;

    pWinRect->s32Width = pOldWinRect->s32Width * pNewDispRect->s32Width / pOldDispRect->s32Width;
    pWinRect->s32Height = pOldWinRect->s32Height * pNewDispRect->s32Height / pOldDispRect->s32Height;

    return;
}


HI_S32 VoDettachWindowsSlave(OPTM_WIN_S* pstSlaveWin)
{
    HI_S32 s32MainIndex;
    HI_S32 s32SlaveIndex;
    HI_BOOL                     bActiveFlag = HI_FALSE;
    OPTM_VO_S                *pstVo;
    OPTM_WIN_S              *pstMainWin;
    HI_VO_CAPTURE_S     *pstCapMmz = HI_NULL, *n;

    pstVo = (OPTM_VO_S *)(pstSlaveWin->hVoHandle);
    pstVo->unUpFlag.Bits.Win = 0;
    pstMainWin = pstSlaveWin->hMainWin;
    if (NULL == pstMainWin)
    {
        return HI_SUCCESS;
    }

    if (HI_FALSE == pstSlaveWin->bIsVirtual)
    {
        pstVo->s32NewActWinNum--;
    }

    if (pstMainWin->s32SlaveNewNum > 1)
    {
        /* delete slave win from list */
        for(s32SlaveIndex = pstSlaveWin->s32SlaveIndex;s32SlaveIndex < pstMainWin->s32SlaveNewNum- 1;s32SlaveIndex++)
        {
            pstMainWin->hSlaveNewWin[s32SlaveIndex] = pstMainWin->hSlaveNewWin[s32SlaveIndex + 1];
            pstMainWin->hSlaveNewWin[s32SlaveIndex]->s32SlaveIndex= s32SlaveIndex;
        }

        for(s32SlaveIndex = 0;s32SlaveIndex < pstMainWin->s32SlaveNewNum- 1;s32SlaveIndex++)
        {
            if(HI_FALSE == pstMainWin->hSlaveNewWin[s32SlaveIndex]->bIsVirtual)
            {
                bActiveFlag = HI_TRUE;
                break;
            }
        }

        pstMainWin->hSlaveNewWin[pstMainWin->s32SlaveNewNum] = NULL;
        pstMainWin->s32SlaveNewNum--;
        if(HI_FALSE == bActiveFlag && HI_TRUE == pstMainWin->bActiveContain)
        {
            pstMainWin->bActiveContain = HI_FALSE;
        }
    }
    else
    {

        /*  we should not use list_for_each_entry, because del lit node will coredump*/
        list_for_each_entry_safe(pstCapMmz, n, &pstMainWin->stCaptureHead, list){

            VO_ReleaseFrame(pstMainWin, &(pstCapMmz->stCapFrame));

            list_del(&(pstCapMmz->list));
            kfree(pstCapMmz);
        }

        /* deleter slave win from list */
        pstMainWin->bEnable = HI_FALSE;
        memset(pstMainWin->hSlaveNewWin,0,sizeof(OPTM_WIN_S*) * OPTM_VO_MAX_SLAVE_CHANNEL);
        pstMainWin->s32SlaveNewNum = 0;

        /* delete main win from list */
        for(s32MainIndex = pstMainWin->s32MainIndex;s32MainIndex < pstVo->s32NewMainWinNum  - 1;s32MainIndex++)
        {
            pstVo->ahNewMainWin[s32MainIndex] = pstVo->ahNewMainWin[s32MainIndex + 1];
            pstVo->ahNewMainWin[s32MainIndex]->s32MainIndex = s32MainIndex;
        }

        pstVo->s32NewMainWinNum--;/* come here! */
        pstVo->ahNewMainWin[pstVo->s32NewMainWinNum] = NULL;

    }

    //pstVo->s32NewMainWinNum--;/* error here! */

    pstSlaveWin->s32SlaveIndex = -1;
    pstSlaveWin->hMainWin = HI_NULL;
#if 0
    if (HI_TRUE == pstSlaveWin->bIsVirtual)
    {
        if (HI_FALSE == pstSlaveWin->stVirtualWbcWin.bExternAlloc)
        {
            OPTM_WBC1FB_Reset(&pstSlaveWin->stVirtualWbcWin);
        }
        else
        {
            OPTM_WBC1FB_ExternClear(&pstSlaveWin->stVirtualWbcWin);
        }
    }
#endif

    pstVo->unUpFlag.Bits.Win = 1;

    return HI_SUCCESS;
}

HI_S32 VoAttachWindowsSlave(OPTM_WIN_S* pstSlaveWin)
{
    HI_S32                  s32MainIndex;
    OPTM_VO_S               *pstVo;
    OPTM_WIN_S              *pstMainWin;
    HI_S32                  Ret;

    pstVo = (OPTM_VO_S *)(pstSlaveWin->hVoHandle);
    pstVo->unUpFlag.Bits.Win = 0;

    if (HI_FALSE == pstSlaveWin->bIsVirtual)
    {
        pstVo->s32NewActWinNum++;
    }

    for (s32MainIndex = 0; s32MainIndex < pstVo->s32NewMainWinNum;s32MainIndex++)
    {
        pstMainWin = pstVo->ahNewMainWin[s32MainIndex];
        if ((pstMainWin->hSrc == pstSlaveWin->hSrc) && (pstMainWin->hSrc))
        {
            if(HI_FALSE == pstSlaveWin->bIsVirtual)
            {
                pstMainWin->bActiveContain = HI_TRUE;
            }
            pstMainWin->hSlaveNewWin[pstMainWin->s32SlaveNewNum] =  pstSlaveWin;
            pstSlaveWin->hMainWin =  pstMainWin;
            pstSlaveWin->enLayerHalId = pstMainWin->enLayerHalId;
            pstSlaveWin->s32SlaveIndex = pstMainWin->s32SlaveNewNum;
            pstMainWin->s32SlaveNewNum++;
            pstVo->unUpFlag.Bits.Win = 1;
            return HI_SUCCESS;
        }
    }

    /* not found */
    if (s32MainIndex == pstVo->s32NewMainWinNum)
    {
        for(s32MainIndex=0; s32MainIndex<OPTM_VO_MAX_WIN_CHANNEL; s32MainIndex++)
        {
            if (HI_FALSE == pstVo->stMainWin[s32MainIndex].bOpened)
            {
                break;
            }
        }
#ifdef  HI_VO_SINGLE_VIDEO_SUPPORT
    if (s32MainIndex >1 )
        s32MainIndex = 1;
#endif
        pstMainWin = &pstVo->stMainWin[s32MainIndex];

        Ret = VOInitMainWindow(pstMainWin,pstSlaveWin,pstVo);
        if (Ret != HI_SUCCESS)
        {
            return Ret;
        }

        pstMainWin->bEnable = HI_FALSE;
        pstVo->ahNewMainWin[pstVo->s32NewMainWinNum] = pstMainWin;
        pstMainWin->s32MainIndex = pstVo->s32NewMainWinNum;
        pstMainWin->hSlaveNewWin[0] = pstSlaveWin;
        pstSlaveWin->hMainWin =  pstMainWin;
        pstSlaveWin->enLayerHalId = pstMainWin->enLayerHalId;
        pstSlaveWin->s32SlaveIndex = 0;
        pstMainWin->s32SlaveNewNum = 1;
        pstVo->s32NewMainWinNum++;
        pstMainWin->hSrc = pstSlaveWin->hSrc;
        pstMainWin->hSync = pstSlaveWin->hSync;
        pstMainWin->enModId = pstSlaveWin->enModId;
        pstMainWin->s32UserId = pstSlaveWin->s32UserId;
        pstMainWin->pfGetImage = pstSlaveWin->pfGetImage;
        pstMainWin->pfPutImage = pstSlaveWin->pfPutImage;
        if((HI_FALSE == pstMainWin->bActiveContain) && (HI_FALSE == pstSlaveWin->bIsVirtual))
        {
            pstMainWin->bActiveContain = HI_TRUE;
        }
    }

    pstVo->unUpFlag.Bits.Win = 1;
    return HI_SUCCESS;
}

/*
 * Almost the same with VOISR_ConfigFrame, only some modifications for wbc1 settings in a small region.
 */
HI_S32 VOISR_SlaveConfigFrame(OPTM_WIN_S *pstWin,OPTM_WIN_S *pstMainWin,HI_BOOL bNeedRepeat,HI_UNF_VO_FRAMEINFO_S* pWBCFrame)
{
    OPTM_VO_S                *pstVo;
    HI_RECT_S                stOutRectBackup;
    HI_RECT_S                stInRectBackUp;
    HI_UNF_ASPECT_RATIO_E    enAspectRatio;
    HI_UNF_ASPECT_CVRS_E     enAspectCvrs;
    OPTM_M_CFG_S             *pWinModCfg;
    OPTM_M_DISP_INFO_S       *pOptmDispInfo;
    OPTM_M_DISP_INFO_S       pOptmDispInfo1;
    HI_BOOL                  bWbc1 = HI_FALSE;
    HI_U32 vn1, vn2;

    pWinModCfg = &(pstWin->WinModCfg);
    stOutRectBackup = pstWin->WinModCfg.stOutRect;
    stInRectBackUp = pstWin->WinModCfg.stInRect;
    enAspectRatio = pstWin->WinModCfg.enOutRatio;
    enAspectCvrs = pstWin->WinModCfg.enCvsMode;

    memcpy(&pstWin->WinModCfg,&(pstMainWin->WinModCfg),sizeof(OPTM_M_CFG_S));

    if(HI_TRUE == pstWin->bIsVirtual)
    {
        pWinModCfg->OutBtmFlag = 2;
    }

    pWinModCfg->stOutRect = stOutRectBackup;
    pWinModCfg->stInRect = stInRectBackUp;
    pWinModCfg->enOutRatio = enAspectRatio;
    pWinModCfg->enCvsMode = enAspectCvrs;

    pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);
    pOptmDispInfo = &pstVo->stDispInfo;

    OPTM_M_GetDispInfo(pstWin->enDispHalId, &pOptmDispInfo1);
    pOptmDispInfo = &pOptmDispInfo1;
    /*  acquire display information of the next field */
    //DEBUG_PRINTK("x : %d,y : %d\n",pWinModCfg->stOutRect.s32X,pWinModCfg->stOutRect.s32Y);

    OPTM_M_VO_SetEnable(pstWin->enLayerHalId, pstWin->bEnable);


    /* backup output window, for offline mode is restricted with hardware,
     * thus it is a need to modify output window.
     */
#if 0
    if(pWinModCfg->pstCurrF->u32YAddr== pstWin->stVirtualWbcWin.u32LastWriteYaddr)
    {
        return HI_FAILURE;
    }
#endif
#if 1
    OPTM_M_WinRectAdjust(&(pstWin->stDispInfoInited.stScrnWin), &(pOptmDispInfo->stScrnWin), &(pstWin->stAttr.stOutputRect), &(pstWin->stOutRecInited));
    /* when display system changes, window will change in proportion. */
    //DTS2011041800974 modify
    VoReviseRect1(&pstWin->stAttr.stOutputRect);

    pWinModCfg->stOutRect = pstWin->stAttr.stOutputRect;

/*3110EV500 use HD display channel to implement SD content. Change DSD to DHD when call setDispWin to set outRect on screen*/
#ifdef HI_VDP_ONLY_SD_SUPPORT
    if (HI_TRUE == pOptmDispInfo->stAdjstWin.bAdjstScrnWinFlg)
    {
        VoReviseRect2(&(pOptmDispInfo->stAdjstWin.stAdjstScrnWin), &(pWinModCfg->stOutRect));
    }
    else
#endif
    {
        VoReviseRect2(&(pOptmDispInfo->stScrnWin), &(pWinModCfg->stOutRect));
    }

    /* record  information */
    pstWin->stDispInfo = *pOptmDispInfo;

    if (pstWin->unAttrUp.Bits.OutRect != 0)
    {
        /* It is always valid of user-set coefficients of output window,
         * so that window W/H ratio will be modified, but the ratio coefficients will be adopted.
         */
        pWinModCfg->stOutRect = pstWin->stAttr.stOutputRect;

        /*3110EV500 use HD display channel to implement SD content. Change DSD to DHD when call setDispWin to set outRect on screen*/
#ifdef HI_VDP_ONLY_SD_SUPPORT
        if (HI_TRUE == pOptmDispInfo->stAdjstWin.bAdjstScrnWinFlg)
        {
            VoReviseRect2(&(pOptmDispInfo->stAdjstWin.stAdjstScrnWin), &(pWinModCfg->stOutRect));
        }
        else
#endif
        {
            VoReviseRect2(&(pOptmDispInfo->stScrnWin), &(pWinModCfg->stOutRect));
        }

#ifdef HI_DISP_ACC_SUPPORT
        OPTM_M_VO_ResetAcc(pstWin->enLayerHalId);
#endif
        pstWin->unAttrUp.Bits.OutRect = 0;
    }

    /* backup output window, for offline mode is restricted with hardware,
     * thus it is a need to modify output window.
     */
    stOutRectBackup = pWinModCfg->stOutRect;

    if (pstWin->unAttrUp.Bits.AspRatio != 0)
    {
        /* record information */
        pWinModCfg->enOutRatio = pstWin->stAttr.enAspectRatio;

        pstWin->unAttrUp.Bits.AspRatio = 0;
    }
    pstWin->stAttr.stReviseOutputRect = pWinModCfg->stOutRect;
    /*************************************************
      update InRect
     *************************************************/
    if (pstWin->unAttrUp.Bits.InRect != 0)
    {
        /*  record information  */
        pWinModCfg->stInRect = pstWin->stAttr.stInputRect;
        pstWin->unAttrUp.Bits.InRect = 0;
    }

    if (pstWin->unAttrUp.Bits.AspCvrs != 0)
    {
        /*  record information  */
        pWinModCfg->enCvsMode = pstWin->stAttr.enAspectCvrs;
        pstWin->unAttrUp.Bits.AspCvrs = 0;
    }
#endif
    OPTM_HAL_GetVersion(&vn1, &vn2);

    /* in standalone mode, VAD process will be here,so we should check pWBCFrame
     * VAD process will bypass this*/
#if 0
    if ((HI_TRUE == pstVo->bOffLineModeEn) && (HI_NULL != pWBCFrame))
    {
        HI_U32 u32Offset;


        /* In 576I mode of HD output, the system transforms the resolution from 720X576/480 to 1440X576/480,
         * but it is still 720X576/480 for user operation.
         * In VHD offline mode, process the offset address of write-back of 576I system.
         */

        {
            u32Offset = OPTM_M_CalcAddrDiff(pWBCFrame->enVideoFormat,
                    pWinModCfg->stOutRect.s32X,
                    pWinModCfg->stOutRect.s32Y,
                    pWBCFrame->u32YStride,
                    HI_TRUE);
        }
        Vou_SetWbcAddr(HAL_DISP_LAYER_WBC1, pWBCFrame->u32YAddr + u32Offset);

        /* modify output window */
        pWinModCfg->stOutRect.s32X = 0;
        pWinModCfg->stOutRect.s32Y = 0;

        bWbc1 = HI_TRUE;
        pWinModCfg->ReFlag = bNeedRepeat;

        //        pWBCFrame->u32SeqCnt = pWinModCfg->pstCurrF->u32SeqCnt;
        //        pWBCFrame->u32SeqFrameCnt = pWinModCfg->pstCurrF->u32SeqFrameCnt;
        pWBCFrame->u32SeqFrameCnt = pstWin->u32FrameCnt;
        pstWin->u32FrameCnt++;

        pWBCFrame->u32SrcPts = pWinModCfg->pstCurrF->u32Pts;
        pWBCFrame->u32Pts = pWinModCfg->pstCurrF->u32Pts;
    }
#endif

    /* set output window */

    /* In 576I mode of HD output, the system transforms the resolution from 720X576 to 1440X576.
     * As for setting of modification of output window, it is still 720X576 for users.
     */
       // leo_printk("pWinModCfg -3- (%d,%d,%d,%d)\n",pWinModCfg->stOutRect.s32X,pWinModCfg->stOutRect.s32Y,pWinModCfg->stOutRect.s32Width,pWinModCfg->stOutRect.s32Height);

#ifdef CHIP_TYPE_hi3716mv330
    /* MV330 doesn't have MIXV, use letterbox */
    HAL_DISP_SetLayerDispRect(pstWin->enLayerHalId, pOptmDispInfo->stScrnWin);
#else
    HAL_DISP_SetLayerDispRect(pstWin->enLayerHalId, pWinModCfg->stOutRect);
#endif

    pWinModCfg->enDispHalId = pstWin->enDispHalId;

    pWinModCfg->u32CurrWinNumber = pstWin->s32SlaveIndex;

    pWinModCfg->bDebug = pstMainWin->u32Debugbits & DEBUG_FRAME_DEBUG_BIT;

    /*  set image output */
    OPTM_M_VO_ConfigFrame(pWinModCfg, pstWin->enLayerHalId, &(pstMainWin->stDetInfo), bWbc1);

    HAL_DISP_SetRegUpNoRatio(pstWin->enLayerHalId);

    /*  restore output window */
    pWinModCfg->stOutRect = stOutRectBackup;

    return HI_SUCCESS;
}

/* detection for whether to do N2P transformation or not */
HI_S32 OPTM_DetectN2PTransfer(HI_U32 u32InRate, HI_BOOL bProgressive, HI_U32 u32DispRate)
{
    HI_S32 nN2p = 0;

    if ((50 == u32DispRate) && (HI_FALSE == bProgressive) && (300 == u32InRate))
    {
        nN2p = 1;
    }

    return nN2p;
}

/* return value indicates whether it is a need to do DIE: HI_TRUE, DO_DIE; HI_FALSE, NO_DIE */
static HI_BOOL OPTM_CheckDieConditionForCM(OPTM_FRAME_S *pP,
        OPTM_FRAME_S *pC,
        OPTM_FRAME_S *pN,
        HI_BOOL bInFrc,
        HI_BOOL bRepeat,
        HI_BOOL bNeedZME,
        HI_BOOL NeedDoRwzbFlag)
{
#ifndef VDP_USE_DEI_FB_OPTIMIZE
    HI_UNF_VO_FRAMEINFO_S *pFrame, *pFramep, *pFramen;

    if(   (pP == HI_NULL)
            || (pC == HI_NULL)
            || (pN == HI_NULL)
      )
    {
        return HI_FALSE;
    }

    pFrame  = &(pC->VdecFrameInfo);
    pFramen = &(pN->VdecFrameInfo);
    pFramep = &(pP->VdecFrameInfo);

    if(    (pFramep->enFieldMode != HI_UNF_VIDEO_FIELD_ALL)
            || (pFrame->enFieldMode  != HI_UNF_VIDEO_FIELD_ALL)
            || (pFramen->enFieldMode != HI_UNF_VIDEO_FIELD_ALL) )
    {
        return HI_FALSE;
    }

    if(    (pFrame->enVideoFormat != pFramep->enVideoFormat)
            || (pFrame->enVideoFormat != pFramen->enVideoFormat) )
    {
        return HI_FALSE;
    }

    if(    (pFrame->u32Height != pFramep->u32Height)
            || (pFrame->u32Width  != pFramep->u32Width)
            || (pFrame->u32Height != pFramen->u32Height)
            || (pFrame->u32Width  != pFramen->u32Width)
            || (pFrame->u32YStride!= pFramep->u32YStride)
            || (pFrame->u32YStride!= pFramen->u32YStride))
    {
        return HI_FALSE;
    }

    /* special bit-stream, no DIE processing. */
    if (NeedDoRwzbFlag)
    {
        return HI_FALSE;
    }

    /* currently, this format is write-back data, processed with DIE,
     * thus DIE processing is prohibited here.
     */
    if (pFrame->enVideoFormat >= HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
    {
        return HI_FALSE;
    }

    if(pFrame->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE)
    {
        return HI_FALSE;
    }
    else
    {
        /*Picture Quality optimization stagedy:
                pal ===>pal, no need  DEI
                pal ===>1080i, need DEI
                1080i ===>1080i,  no need DEI
                1080i ===>pal, need DEI
                */
        ///if (pFrame->u32Height > 720)
        {
            /* DEI can deal with 3 field mode, it can be screened here. */
#if 0
            if (OPTM_CAPABILITY_DIE_FOR_HD == 0)
            {
                // close HD DIE
                return HI_FALSE;
            }
            else
#endif
                if ((HI_FALSE == bInFrc)  && (!bNeedZME))
                {
                    /* in frame rate transformation mode, do DIE;
                     * in non frame rate transformation mode, do not do DIE when it is not a repeat frame.
                     */
                    if (0 == bRepeat)
                    {

                        return HI_FALSE;
                    }
                }

        }

    }
    return HI_TRUE;
#else
    HI_UNF_VO_FRAMEINFO_S *pFrame, *pFramep, *pFramen;

    /* Prev frame and current frame must be present */
    if((pP == HI_NULL) || (pC == HI_NULL))
    {
        return HI_FALSE;
    }

    pFrame  = &(pC->VdecFrameInfo);
    pFramep = &(pP->VdecFrameInfo);

    if ((pFramep->enFieldMode != HI_UNF_VIDEO_FIELD_ALL) || (pFrame->enFieldMode  != HI_UNF_VIDEO_FIELD_ALL))
    {
        return HI_FALSE;
    }

    if (pFrame->enVideoFormat != pFramep->enVideoFormat)
    {
        return HI_FALSE;
    }

    if((pFrame->u32Height != pFramep->u32Height)
        || (pFrame->u32Width  != pFramep->u32Width)
        || (pFrame->u32YStride!= pFramep->u32YStride))
    {
        return HI_FALSE;
    }

    /* Smaller than 720*576, 5 field DEI,
     * NEXT frame must be present
     */
    if ((pFrame->u32DisplayWidth <= 720) && (pFrame->u32DisplayHeight <= 576))
    {
        if (pN == HI_NULL)
        {
            return HI_FALSE;
        }

        pFramen = &(pN->VdecFrameInfo);
        if (pFramen->enFieldMode != HI_UNF_VIDEO_FIELD_ALL)
        {
            return HI_FALSE;
        }

        if (pFrame->enVideoFormat != pFramen->enVideoFormat)
        {
            return HI_FALSE;
        }

        if ((pFrame->u32Height != pFramen->u32Height)
            || (pFrame->u32Width  != pFramen->u32Width)
            || (pFrame->u32YStride!= pFramen->u32YStride))
        {
            return HI_FALSE;
        }
    }

    /* special bit-stream, no DIE processing. */
    if (NeedDoRwzbFlag)
    {
        return HI_FALSE;
    }

    /* currently, this format is write-back data, processed with DIE,
     * thus DIE processing is prohibited here.
     */
    if (pFrame->enVideoFormat >= HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
    {
        return HI_FALSE;
    }

    if(pFrame->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE)
    {
        return HI_FALSE;
    }
    else
    {
        /*Picture Quality optimization stagedy:
                pal ===>pal, no need  DEI
                pal ===>1080i, need DEI
                1080i ===>1080i,  no need DEI
                1080i ===>pal, need DEI
                */
        ///if (pFrame->u32Height > 720)
        {
            /* DEI can deal with 3 field mode, it can be screened here. */
#if 0
            if (OPTM_CAPABILITY_DIE_FOR_HD == 0)
            {
                // close HD DIE
                return HI_FALSE;
            }
            else
#endif
                if ((HI_FALSE == bInFrc)  && (!bNeedZME))
                {
                    /* in frame rate transformation mode, do DIE;
                     * in non frame rate transformation mode, do not do DIE when it is not a repeat frame.
                     */
                    if (0 == bRepeat)
                    {

                        return HI_FALSE;
                    }
                }

        }

    }
    return HI_TRUE;
#endif
}


HI_VOID VOISR_AdjustCfgFrame(OPTM_WIN_S* pstWin)
{
    OPTM_M_CFG_S             *pWinModCfg;
    OPTM_FB_S                *pWinFrameBuf;
    pWinModCfg = &(pstWin->WinModCfg);
    pWinFrameBuf = &(pstWin->WinFrameBuf);
    if (pWinFrameBuf->pCrtFrame == HI_NULL)
        return;
    if (pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32YAddr ==
            pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME].VdecFrameInfo.u32YAddr)
    {
        if (pstWin->stRstFrame[VO_REST_DEI_LAST_FRAME].VdecFrameInfo.u32YAddr != 0)
            pWinFrameBuf->pPreFrame = &(pstWin->stRstFrame[VO_REST_DEI_LAST_FRAME]);
        pWinFrameBuf->pCrtFrame = &(pstWin->stRstFrame[VO_REST_DEI_CURT_FRAME]);
        if (pstWin->stRstFrame[VO_REST_DEI_NEXT_FRAME].VdecFrameInfo.u32YAddr != 0)
            pWinFrameBuf->pNextFrame = &(pstWin->stRstFrame[VO_REST_DEI_NEXT_FRAME]);
    }
    return;
}

#ifdef VDP_USE_DEI_FB_OPTIMIZE
static OPTM_AA_DEI_MODE_E VOISR_GetDEIMode(OPTM_FB_S *pstFB)
{
    HI_U32 u32Width;
    HI_U32 u32Height;

    if (HI_NULL == pstFB->pCrtFrame)
    {
        if (HI_NULL == pstFB->pPreFrame)
        {
            return OPTM_AA_DEI_NONE;
        }
        else
        {
            u32Width = pstFB->pPreFrame->VdecFrameInfo.u32DisplayWidth;
            u32Height = pstFB->pPreFrame->VdecFrameInfo.u32DisplayHeight;
        }
    }
    else
    {
        u32Width = pstFB->pCrtFrame->VdecFrameInfo.u32DisplayWidth;
        u32Height = pstFB->pCrtFrame->VdecFrameInfo.u32DisplayHeight;
    }

    return OPTM_AA_GetDEIMode(u32Width, u32Height);
}
#endif

#define LAST_VID_DISP_TIME  1
HI_S32 VOISR_ConfigMain_FrameBufferWithFrc(OPTM_WIN_S* pstWin,OPTM_M_DISP_INFO_S* pOptmDispInfo, HI_S32 NextBtmflag)
{
    OPTM_VO_S                *pstVo;
    OPTM_M_CFG_S             *pWinModCfg;
    OPTM_FB_S                *pWinFrameBuf;
    //    OPTM_FRAME_S             *pLstConfig;
    HI_BOOL                  bUnload = HI_FALSE;
    HI_BOOL                  bRepeat = HI_FALSE;
    HI_S32                   DropNum = 0;
    HI_U32                   WinBufNum;

    // 3:2 pulldown variable
    HI_S32                   nN2pFlag;
    HI_S32                   nHasDrop4Pd;
    OPTM_M_VO_CAP_S          stLayerCap;
#ifdef _OPTM_FUNC_SYNC_ENABLE_
    SYNC_VID_INFO_S          VidInfo;
    SYNC_VID_OPT_S           VidOpt;
#endif
    HI_BOOL     bNeedDoRwzbFlag = HI_FALSE, bSync = HI_FALSE;
    HI_RECT_S stScrnWin;
    HI_S32  bProgressive;
    /*  get DISP information  */
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL;
    static SYNC_PROC_E enLastSyncProc = SYNC_PROC_BUTT;
    static HI_U32 u32SyncPlayCount = 0;

    pWinModCfg = &(pstWin->WinModCfg);
    pWinFrameBuf = &(pstWin->WinFrameBuf);

    //DEBUG_PRINTK("vo %d %d\n",pstWin->enLayerHalId, pstWin->s32Index);

    pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);

    OPTM_M_GetDispScreen(pstVo->enDispHalId, &stScrnWin);
    bProgressive=OPTM_M_GetDispProgressive(pstVo->enDispHalId);
    if (pstWin->bReset == HI_TRUE)
    {
        VOISR_WindowReset(pstWin);
        pstWin->bDeiNeedReset = HI_TRUE;
    }

    pWinModCfg->OutBtmFlag = NextBtmflag;

    if (0 == pWinFrameBuf->ReceiveFrame)
    {
        return HI_FAILURE;
    }

    OPTM_M_VO_GetCap(pstWin->enLayerHalId, &stLayerCap);
    pstWin->WinModCfg.bDoDei = stLayerCap.bDieFunc;

    if ( (HI_TRUE == stLayerCap.bDieFunc) && (pstWin->u32DisplayRatio == OPTM_ALG_FRC_BASE_PLAY_RATIO))
    {
        /* detect whether to do N2P transformation */
        nN2pFlag = OPTM_DetectN2PTransfer(pstWin->InFrameRate, pstWin->WinFrameBuf.bProgressive, pOptmDispInfo->u32DispRate);
    }
    else
    {
        nN2pFlag = 0;
    }

    nHasDrop4Pd = 0;


    while (1)
    {
        //DEBUG_PRINTK("get in %d re %d c %d n %d %d lst %d lst2 %d\n", pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current, pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState, pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);
        /*  acquire current three frames  */
        /* unload may not mean that current frame was played, which may be caused by jump frame,
         * so that we check based on state.
         */
#ifdef VDP_USE_DEI_FB_OPTIMIZE
        bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf, VOISR_GetDEIMode(pWinFrameBuf));
#else
        bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf);
#endif
        VOISR_AdjustCfgFrame(pstWin);
        //pLstConfig = OPTM_FB_GetLstConfig(pWinFrameBuf);
        WinBufNum = OPTM_FB_BufNum(pWinFrameBuf);

        /* // 20110330_G45208
         * It is found that some frame information was error in bit-stream.
         * Suppose that there exist continuous 3 frames A/B/C in TB bit-stream, FOD information of B frame will mutate to BT.
         * Then, in processing of B frame, we will reset DEI module, and set DEI module as BT field order.
         *
         * After synchronization step, B frame is lost, take C frame for processing, FOD information of C frame is the same
         * with last-set frame pLstConfig. No RESET for DEI module.
         *
         * The following processing will continue according to TB field order, but DEI module has been reset, and it will process with BT field order,
         * causing image back-recede.
         *
         * solution: Save set frame information here, compare current frame with that; if it changes, update LASTFRAME information.
         * Thus, any changes will be detected, including 1 frame mutation.
         */

        if (HI_NULL == pWinFrameBuf->pCrtFrame)
            return HI_FAILURE;

        //if (VOISR_DieNeedReset(pWinFrameBuf->pCrtFrame, pLstConfig) || (HI_TRUE == pstWin->bDeiNeedReset))
        if (VOISR_DieNeedReset(pWinFrameBuf->pCrtFrame, &(pstWin->stLastFrame)) || (HI_TRUE == pstWin->bDeiNeedReset))
        {
            OPTM_AA_ResetDieModule(&(pstWin->stDie), pWinFrameBuf->pCrtFrame->VdecFrameInfo.bTopFieldFirst,
                    pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32DisplayWidth,
                    pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32DisplayHeight);
            pstWin->stDetInfo.s32IsProgressive = -1;
            pstWin->stDetInfo.s32TopFirst      = -1;

            memcpy(&(pstWin->stLastFrame), pWinFrameBuf->pCrtFrame, sizeof(OPTM_FRAME_S));

            pstWin->bDeiNeedReset = HI_FALSE;
        }

        VOISR_SetDetInfo(pstWin, pWinFrameBuf->pCrtFrame);


        if (bUnload != HI_TRUE)
        {
#ifdef _OPTM_FUNC_SYNC_ENABLE_
#ifndef MINI_SYS_SURPORT
       		bSync = HI_FALSE;

            //if ((HI_INVALID_HANDLE != pstWin->hSync) && (HI_TRUE != pstWin->bDisableSync))
            if (HI_INVALID_HANDLE != pstWin->hSync)
            {
                if (HI_TRUE == pfnSyncVfy(pstWin->hSync))
                {
                    bSync = HI_TRUE;
                }
            }
            if(   (  (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_READY)
                        ||(pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_JUMP))
                    && (bSync == HI_TRUE) && (pstWin->bQuickOutputMode != HI_TRUE))
            {
                /* synchronization check for new frame */
                VidInfo.SrcPts = pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32SrcPts;
                VidInfo.Pts = pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Pts;
#if LAST_VID_DISP_TIME
                pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32VdecInfo[0]);

                VidInfo.u32LastVidDispTime = pVdecPriv->u32DispTime;
 #endif
                VidInfo.FrameTime = pstWin->FrameTime;
                VidInfo.BufNum = WinBufNum;

                /* need modify */
                //VidInfo.DispTime = pWinFrameBuf->pCrtFrame->u32Repeat;
                if (pWinFrameBuf->bProgressive == HI_TRUE)
                {
                    VidInfo.DispTime = pWinFrameBuf->pCrtFrame->u32F_NdPlayTime;
                }
                else
                {
                    /* it is necessary to round the number? */
                    VidInfo.DispTime = (pWinFrameBuf->pCrtFrame->u32T_NdPlayTime+pWinFrameBuf->pCrtFrame->u32B_NdPlayTime+1)>>1;
                }
#if 0
                // offline  mode ,why????
                if (HI_TRUE == pstVo->bOffLineModeEn)
                {
                    VidInfo.IntTime = 1000 / pOptmDispInfo->u32DispRate;
                }
                else
                {
                    VidInfo.IntTime = 0;
                }
#else
                VidInfo.IntTime = 1000 / pOptmDispInfo->u32DispRate;
                /*
                   if (HI_TRUE == pstVo->bOffLineModeEn)
                   {
                   VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;
                   }
                   else
                 */
                {
                    /* As for operation of accessing DDR, since the ARM priority is lower than TDE,
                     * when TDE is busy, execution time of program in ARM will be longer.
                     * The execution time of VOU interrupt service program will be elongated from 200 um to 3-4 ms,
                     * causing errors of field order of interlaced output.
                     * Thus, putting start position of VOU interrupt to the beginning of valid region,
                     * the corresponding delaytime will change from zero to the time of one interrupt interval.
                     */
                    //VidInfo.DelayTime = 0;

                    /* For DTS2011022102712, 20110428
                     * When DEI not working, send first field of current frame and output this field,
                     * so delay time is one interrupt interval.
                     * But when DEI working, send first field of current frame to dei module,
                     * dei output pre-field in fact, so delay become 2 times.
                     */
                    //VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;

					/* DTS2014112508388
					 * double delayTime while DEI actually working.
					 * It's wrong to double delayTime when DEI won't work in Progressive sampleType.
					 */
					if ((HI_TRUE == pstWin->WinModCfg.bDoDei)
                       && (HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE == pWinFrameBuf->pCrtFrame->VdecFrameInfo.enSampleType))
                    {
                        VidInfo.DelayTime = 2 * 1000 / pOptmDispInfo->u32DispRate;
                    }
                    else
                    {
                        VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;
                    }

#ifdef VDP_USE_DEI_FB_OPTIMIZE
                    /* In this mode, config frame at VDP_CONFIG_POINT_PERCENT, so the DelayTime need sub this value */
                    VidInfo.DelayTime -= 1000 / pOptmDispInfo->u32DispRate * VDP_CONFIG_POINT_PERCENT / 100;
#endif
                }

                if (HI_TRUE == pstVo->bOffLineModeEn)
                {
                    VidInfo.DelayTime = VidInfo.DelayTime + (1000 / pOptmDispInfo->u32DispRate);
                }

#endif

                pfnSyncVidProc(pstWin->hSync, &VidInfo, &VidOpt);

                /*
                 * In the case interlace in, progressive out, and frame rate equal, originally, the field order of source is not need to match with HD output.
                 * But, if field order of source is not match with the SD output, the quality of the video scrolltext will be worse.
                 * So, force to match here.
                 */
                if ((SYNC_PROC_PLAY == VidOpt.SyncProc) && (SYNC_PROC_PLAY == enLastSyncProc))
                {
                    u32SyncPlayCount++;
                }
                else
                {
                    u32SyncPlayCount = 0;
                }
                enLastSyncProc = VidOpt.SyncProc;

                if ((pstWin->WinFrameBuf.bProgressive != HI_TRUE) && (HI_TRUE == pOptmDispInfo->bProgressive))
                {
                    if (pstWin->InFrameRate*2 == (pOptmDispInfo->u32DispRate *10 ))
                    {
                        if (!VO_WBC0FieldMatch())
                        {
                            if ((SYNC_PROC_PLAY == VidOpt.SyncProc) && (u32SyncPlayCount > 5))
                            {
                                VidOpt.SyncProc = SYNC_PROC_REPEAT;
                                VidOpt.Repeat = 1;
                            }
                        }
                    }
                }

                OPTM_FB_SyncHandle(pWinFrameBuf, &VidOpt);
                if (SYNC_PROC_REPEAT == VidOpt.SyncProc)
                {
                    if (!pWinFrameBuf->pCrtFrame)
                    {
                        return HI_FAILURE;
                    }

                    /* synchronization needs repeat, the same as man-made under-flow;
                     * no need of putting config frame.
                     */
                    bUnload = HI_TRUE;
                }
                else if (SYNC_PROC_DISCARD == VidOpt.SyncProc)
                {
                    DropNum++;
                    continue;
                }
            }
            else
#endif
#endif
                if (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_JUMP)
                {
                    /* jump frame caused by frame rate transformation, not by PN transformation or SYNC,
                     * and PN transformation is not considered here.
                     */
                    OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_TRUE);
                    DropNum++;
                    continue;
                }
        }

        if (bUnload)
        {
            /*  under-flow and DropNum > 0, then decrease DropNum by one */
            DropNum--;
        }

        /* under-flow may play skipped frame, so it may not be repeat display */
        /* If this frame was played, then update lst/lst2 pointer */
        if (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_PLAY_OVER)
        {
            OPTM_FB_ConfigUnload(pWinFrameBuf);
        }

        if ( (nN2pFlag != 0) && (!bUnload) && (pstWin->stDie.stFrcCtrl.lock_state) && (!nHasDrop4Pd))
        {
            //DEBUG_PRINTK("EEEEEEEEEError!\n");
            /* N2P transformation branch  */
            //if (pstWin->stDie.stFrcCtrl.lock_state)
            {
                if (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_READY)
                {
                    /*  for locked frame, clear FRC information, frame rate will be controlled by DIE_CTRL */
                    OPTM_FB_ResetDispFieldInfo(pWinFrameBuf->pCrtFrame, pstWin->WinFrameBuf.bProgressive);
                }

                /*  for NP transformation, two processing are supported: discard, play. */
                if (pstWin->stDie.stFrcCtrl.play_state)
                {
                    /*  set repeat flag, for algorithm */
                    OPTM_FB_GetDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, &bRepeat);
                    OPTM_FB_PutDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bTopFirst);

                    if (OPTM_PLAY_STATE_PLAY_OVER == pWinFrameBuf->pCrtFrame->enFrameState)
                    {
                        /* check whether a-field data is lost or not, used for 3:2PD */
                        OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_FALSE);
                        nHasDrop4Pd = 1;
                        continue;
                    }
                    else
                    {
                        /*  set repeat flag for algorithm */
                        OPTM_FB_GetDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, &bRepeat);
                    }
                }
            }
        }
        else
        {
            /*  set repeat flag, for algorithm */
            OPTM_FB_GetDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, &bRepeat);
        }

        /*  calculate the number of lost fields */
        if (DropNum < 0)
        {
            DropNum = 0;
        }
        else if (pWinFrameBuf->bProgressive != HI_TRUE)
        {
            DropNum = DropNum * 2 + pWinFrameBuf->u32LstFldDropCnt + nHasDrop4Pd
                + OPTM_FB_GetDropFieldAtStart(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst);
        }

        //DEBUG_PRINTK("DropNum=%d\n", DropNum);
        pstWin->WinModCfg.bDoDei = HI_FALSE;
        if (HI_TRUE == stLayerCap.bDieFunc)
        {
           /*FRC branch always need DEI, */
           HI_BOOL bNeedZME = HI_TRUE;

            /* in case of no satisfied of DIE conditions,
             * don't call OPTM_AA_DieCalcApi, to make sure that it is compatible with
             * calls of OPTM_AA_DieCfgApi.
             */
            bNeedDoRwzbFlag = (HI_BOOL) OPTM_M_GetRwzbFlag(&stScrnWin, pstWin->WinModCfg.pstCurrF, bProgressive);
            if(HI_TRUE == OPTM_CheckDieConditionForCM(pWinFrameBuf->pPreFrame,
                        pWinFrameBuf->pCrtFrame,
                        pWinFrameBuf->pNextFrame,
                        pWinModCfg->bInFrc,
                        bRepeat,
                        bNeedZME,
                        bNeedDoRwzbFlag)
              )
            {
                if (!pstWin->bFreeze)
                {
                    pstWin->WinModCfg.bDoDei = HI_TRUE;
                    OPTM_AA_DieCalcApi(pstWin->enLayerHalId, &(pstWin->stDie), (HI_S32)bRepeat, DropNum,
                            pstVo->bOffLineModeEn, &pWinFrameBuf->pCrtFrame->VdecFrameInfo, HI_TRUE, nN2pFlag);
                }
            }
        }
        pWinFrameBuf->u32LstFldDropCnt = 0;

        break;
    }

#if 0
    // debug g45208_20101225
    if (pstWin->enLayerHalId == HAL_DISP_LAYER_VIDEO1)
    {
        if (pWinFrameBuf->pCrtFrame->u32CurDispFld == 1)
        {
            DEBUG_PRINTK("T");
        }
        else if (pWinFrameBuf->pCrtFrame->u32CurDispFld == 2)
        {
            DEBUG_PRINTK("B");
        }
        else
        {
            DEBUG_PRINTK("F");
        }
    }
#endif

    //DEBUG_PRINTK("c %d %d %d %d\n", pCrtFrame->VdecFrameInfo.u32MgcNum, (pCrtFrame->u32CurFld-1), pWinFrameBuf->CrtFieldFlag, pCrtFrame->u32DoneFld);

    /********************************************
      update DispRect and VideoRect
     ********************************************/

    /* if DISP update, it is a need to update output window */
    if (HI_TRUE == pstWin->bFreeze)
    {
        if (pstWin->pstFrzFrame == HI_NULL)
        {
            if (HI_UNF_WINDOW_FREEZE_MODE_BLACK == pstWin->enFreeze)
            {
                /* if it is black frame pause,  acquire black frame  */
                pstWin->pstFrzFrame = OPTM_GetBlackFrame();
            }
            else
            {
                memcpy(&(pstWin->stFrzFrame), pWinFrameBuf->pCrtFrame, sizeof(OPTM_FRAME_S));

                pstWin->s32FrzFrameIsPro = pWinFrameBuf->bProgressive;
                pstWin->pstFrzFrame = &(pstWin->stFrzFrame);

                /* don't release in this frame, but to do it while removing FREEZE */
                pWinFrameBuf->pCrtFrame->bNeedRelease = HI_FALSE;
            }
        }

        /* realize single frame pause, temporarily */
        pWinModCfg->pstLastF = HI_NULL;
        pWinModCfg->pstCurrF = &(pstWin->pstFrzFrame->VdecFrameInfo);
        pWinModCfg->pstNextF = HI_NULL;

        pWinModCfg->InBtmFlag = (pstWin->pstFrzFrame->u32CurDispFld == 1) ? 0 : 1;
        pWinModCfg->ReFlag    = 1;/* repeat flag */
        pWinModCfg->DropFlag  = 0;
    }
    else
    {
        if (pstWin->pstFrzFrame != HI_NULL)
        {
            HI_VO_CAPTURE_S     *pstCapMmz = HI_NULL, *n;
            if(HI_UNF_WINDOW_FREEZE_MODE_LAST == pstWin->enFreeze)
            {
                /*  release I frame  */
                if (pstWin->pstFrzFrame->bNeedRelease == HI_TRUE)
                {
                    VO_ReleaseFrame(pstWin,pstWin->pstFrzFrame);
                }

                if (pstWin->pstFrzFrame->bCaptured)
                {
                    list_for_each_entry_safe(pstCapMmz, n, &pstWin->stCaptureHead, list){
                        if (pstWin->pstFrzFrame->VdecFrameInfo.u32Pts == pstCapMmz->stCapFrame.VdecFrameInfo.u32Pts){
                            pstCapMmz->stCapFrame.bNeedRelease = HI_TRUE;
                        }
                    }
                    pstWin->pstFrzFrame->bCaptured = HI_FALSE;
                }

            }

            pstWin->pstFrzFrame = HI_NULL;
        }

        /* t00177539 : if win reset operation is doing, not change the current buffer pointer */
        if ((pstWin->u32ResetStep > 0) && (pstWin->bUseDNRFrame == HI_FALSE))
        {
            if ((HI_NULL == pWinModCfg->pstLastF) || (HI_NULL == pWinModCfg->pstNextF))
            {
                pstWin->WinModCfg.bDoDei = HI_FALSE;
            }
        }
        else
        {
            pWinModCfg->pstLastF = (HI_NULL == pWinFrameBuf->pPreFrame) ? HI_NULL : &(pWinFrameBuf->pPreFrame->VdecFrameInfo);
            pWinModCfg->pstCurrF =  &(pWinFrameBuf->pCrtFrame->VdecFrameInfo);
            pWinModCfg->pstNextF = (HI_NULL == pWinFrameBuf->pNextFrame) ? HI_NULL : &(pWinFrameBuf->pNextFrame->VdecFrameInfo);
        }

        pWinModCfg->InBtmFlag = (pWinFrameBuf->pCrtFrame->u32CurDispFld==1) ? 0 : 1;
        pWinModCfg->ReFlag    = bRepeat;
        pWinModCfg->DropFlag  = DropNum;
    }

    pWinModCfg->bTopFirst = pWinFrameBuf->bTopFirst;
    pWinModCfg->u32CurrFrameIndex = pWinFrameBuf->pCrtFrame->u32IndexNumber;
#if 1
    /*  set CSC coefficients  */
    /* check current CS, take this information in frame information based on bit-stream, todo */

    OPTM_M_VO_GetCscMode(pstWin->enLayerHalId, &pstWin->enSrcCS,&pstWin->enDstCS);

    if (pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Height >= 720)
    {
        pstWin->enSrcCS = OPTM_CS_eXvYCC_709;
    }
    else
    {
        pstWin->enSrcCS = OPTM_CS_eXvYCC_601;
    }

    OPTM_M_VO_SetCscMode(pstWin->enLayerHalId,pstWin->enSrcCS,pstWin->enDstCS);
#endif

    /* set  image  output  */
    //  OPTM_M_VO_ConfigFrame(pWinModCfg, pstWin->enLayerHalId, &(pstWin->stDetInfo), bWbc1);

    //   HAL_DISP_SetRegUpNoRatio(pstWin->enLayerHalId);
    pstWin->pstCOFrame = pstWin->WinFrameBuf.pCrtFrame;

    /* restore  output  window  */
    //    pWinModCfg->stOutRect = stOutRectBackup;
    OPTM_FB_PutDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bTopFirst);

    /* drop we can drop frame */
    if ( (pstWin->bReset != HI_TRUE) && (bUnload))
    {
        if (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_PLAY_OVER)
        {
            OPTM_FB_ConfigUnload(pWinFrameBuf);
        }
    }

    if ( (pstWin->bReset != HI_TRUE) && (!bUnload))
    {
        if (OPTM_PLAY_STATE_PLAY_OVER == pWinFrameBuf->pCrtFrame->enFrameState)
        {
            /* check whether a-field data is lost or not, used for 3:2PD */
            pWinFrameBuf->u32LstFldDropCnt = OPTM_FB_GetDropFieldAtEnd(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst);

            if (pstWin->bStepMode)
            {
                if (pstWin->bStepPlay)
                {
                    OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_FALSE);
                    pstWin->bStepPlay = HI_FALSE;
                }
            }
            else
            {
                OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_FALSE);
            }
        }
    }

    return HI_SUCCESS;
}



HI_S32 VOISR_ConfigMain_FrameBufferWithoutFrc(OPTM_WIN_S* pstWin,OPTM_M_DISP_INFO_S* pOptmDispInfo, HI_S32 NextBtmflag)
{
    OPTM_VO_S                *pstVo;
    OPTM_M_CFG_S             *pWinModCfg;
    OPTM_FB_S                *pWinFrameBuf;
    //OPTM_FRAME_S             *pLstConfig;
    HI_BOOL                  bUnload = HI_FALSE;
    HI_BOOL                  bRepeat = HI_FALSE;
    HI_S32                   DropNum = 0;
    HI_U32                   WinBufNum;
    SYNC_VID_INFO_S          VidInfo;
    SYNC_VID_OPT_S           VidOpt;
    OPTM_M_VO_CAP_S          stLayerCap;
    HI_BOOL         bNeedDoRwzbFlag = HI_FALSE, bSync = HI_FALSE;
    HI_RECT_S stScrnWin;
    HI_S32 bProgressive;
    HI_RECT_S stFrmDispArea;
    HI_RECT_S stLocInRec;
    HI_RECT_S stLocOutRec;
    HI_RECT_S stScrnWin2;
    HI_BOOL bNeedZME = HI_TRUE;

    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL;
    pWinModCfg = &(pstWin->WinModCfg);
    pWinFrameBuf = &(pstWin->WinFrameBuf);

    //DEBUG_PRINTK("vo %d %d\n",pstWin->enLayerHalId, pstWin->s32Index);

    pstVo = (OPTM_VO_S *)(pstWin->hVoHandle);
    OPTM_M_GetDispScreen(pstVo->enDispHalId, &stScrnWin);
    bProgressive=OPTM_M_GetDispProgressive(pstVo->enDispHalId);
    if (pstWin->bReset == HI_TRUE)
    {
        VOISR_WindowReset(pstWin);

        pstWin->bDeiNeedReset = HI_TRUE;
    }

    pWinFrameBuf->CrtFieldFlag = NextBtmflag;

    if (0 == pWinFrameBuf->ReceiveFrame)
    {
        return HI_FAILURE;
    }

    if (!pWinFrameBuf->RepeatFormat)
    {
        while (1)
        {
            //DEBUG_PRINTK("get in %d re %d c %d n %d %d lst %d lst2 %d\n", pWinFrameBuf->In, pWinFrameBuf->Release, pWinFrameBuf->Current, pWinFrameBuf->Next, pWinFrameBuf->OptmFrameBuf[pWinFrameBuf->Next].enState, pWinFrameBuf->LstConfig, pWinFrameBuf->LstLstConfig);

            /*  acquire current three frames  */
#ifdef VDP_USE_DEI_FB_OPTIMIZE
			bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf, VOISR_GetDEIMode(pWinFrameBuf));
#else
            bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf);
#endif

            VOISR_AdjustCfgFrame(pstWin);
            if (bUnload)
            {
                /*  under-flow and DropNum > 0, then decrease DropNum */
                if (DropNum > 0)
                {
                    DropNum--;
                }
            }

            WinBufNum = OPTM_FB_BufNum(pWinFrameBuf);

            /* check whether the reset of DIE is necessary */

            /* // 20110330_G45208
             * It is found that some frame information was error in bit-stream.
             * Suppose that there exist continuous 3 frames A/B/C in TB bit-stream, FOD information of B frame will mutate to BT.
             * Then, in processing of B frame, we will reset DEI module, and set DEI module as BT field order.
             *
             * After synchronization step, B frame is lost, take C frame for processing, FOD information of C frame is the same
             * with last-set frame pLstConfig. No RESET for DEI module.
             *
             * The following processing will continue according to TB field order, but DEI module has been reset,
             * and it will process with BT field order, causing image back-recede.
             *
             * solution: Save set frame information here, compare current frame with that; if it changes, update LASTFRAME information.
             * Thus, any changes will be detected, including 1 frame mutation.
             */
            if (HI_NULL == pWinFrameBuf->pCrtFrame)
                return HI_FAILURE;
            //pLstConfig = OPTM_FB_GetLstConfig(pWinFrameBuf);
            //if (VOISR_DieNeedReset(pWinFrameBuf->pCrtFrame, pLstConfig) || (HI_TRUE == pstWin->bDeiNeedReset))
            if (VOISR_DieNeedReset(pWinFrameBuf->pCrtFrame, &(pstWin->stLastFrame)) || (HI_TRUE == pstWin->bDeiNeedReset))
            {
                OPTM_AA_ResetDieModule(&(pstWin->stDie), pWinFrameBuf->pCrtFrame->VdecFrameInfo.bTopFieldFirst,
                        pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32DisplayWidth,
                        pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32DisplayHeight);

                pstWin->stDetInfo.s32TopFirst = -1;
                pstWin->bDeiNeedReset = HI_FALSE;
                memcpy(&(pstWin->stLastFrame), pWinFrameBuf->pCrtFrame, sizeof(OPTM_FRAME_S));
            }

            VOISR_SetDetInfo(pstWin, pWinFrameBuf->pCrtFrame);

            /* this frame was played at least one field */
            if (  (OPTM_PLAY_STATE_PLAYING == pWinFrameBuf->pCrtFrame->enFrameState)
                    ||(pstWin->bReset == HI_TRUE)
               )
            {
                break;
            }
            /* this frame was played  */
            else if (OPTM_PLAY_STATE_PLAY_OVER == pWinFrameBuf->pCrtFrame->enFrameState)
            {
                OPTM_FB_ConfigUnload(pWinFrameBuf);

                /* caused by under-flow */
                if (bUnload)
                {
                    if (!pWinFrameBuf->bProgressive)
                    {
                        pWinFrameBuf->RepeatFormat = 1;
                    }
                }
                /* caused by multiple plays of this frame or the reset of inserted frame */
                else
                {
                    if (!pWinFrameBuf->bProgressive)
                    {
                        pWinFrameBuf->RepeatFormat = 2;
                    }
                }
#if 0
                if (FRAME_SOURCE_STILL == pWinFrameBuf->pCrtFrame->enFrameSrc)
                {
                    pWinFrameBuf->pPreFrame = pWinFrameBuf->pCrtFrame;
                    pWinFrameBuf->pNextFrame = pWinFrameBuf->pCrtFrame;
                }
#endif
                break;
            }
            /* frame was never played  */
            else
            {
                /* under-flow caused by lost frame, play directly */
                if (bUnload)
                {
                    OPTM_FB_ConfigUnload(pWinFrameBuf);

                    if (!pWinFrameBuf->bProgressive)
                    {
                        pWinFrameBuf->RepeatFormat = 1;
                    }

                    break;
                }
                /* synchronization check for new frame */
                else
                {
                    VidInfo.SrcPts = pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32SrcPts;
                    VidInfo.Pts = pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Pts;

#if LAST_VID_DISP_TIME
                    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32VdecInfo[0]);
                    VidInfo.u32LastVidDispTime = pVdecPriv->u32DispTime;
#endif
                    VidInfo.FrameTime = pstWin->FrameTime;
                    VidInfo.BufNum = WinBufNum;

                    //VidInfo.DispTime = pWinFrameBuf->pCrtFrame->u32Repeat;
                    if (pWinFrameBuf->bProgressive == HI_TRUE)
                    {
                        VidInfo.DispTime = pWinFrameBuf->pCrtFrame->u32F_NdPlayTime;
                    }
                    else
                    {
                        /* necessary to round the number? */
                        VidInfo.DispTime = (pWinFrameBuf->pCrtFrame->u32T_NdPlayTime+pWinFrameBuf->pCrtFrame->u32B_NdPlayTime+1)>>1;
                    }
#if 0
                    if (HI_TRUE == pstVo->bOffLineModeEn)
                    {
                        VidInfo.IntTime = 1000 / pOptmDispInfo->u32DispRate;
                    }
                    else
                    {
                        VidInfo.IntTime = 0;
                    }
#else
                    VidInfo.IntTime = 1000 / pOptmDispInfo->u32DispRate;
                    /*
                       if (HI_TRUE == pstVo->bOffLineModeEn)
                       {
                       VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;
                       }
                       else
                     */
                    {
                        /* As for operation of accessing DDR, since the ARM priority is lower than TDE,
                         * when TDE is busy, execution time of program in ARM will be longer.
                         * The execution time of VOU interrupt service program will be elongated from 200 um to 3-4 ms,
                         * causing errors of field order of interlaced output.
                         * Thus, putting start position of VOU interrupt to the beginning of valid region,
                         * the corresponding delaytime will change from zero to the time of one interrupt interval.
                         */
                        //VidInfo.DelayTime = 0;

                        /* For DTS2011022102712, 20110428
                         * When DEI not working, send first field of current frame and output this field,
                         * so delay time is one interrupt interval.
                         * But when DEI working, send first field of current frame to dei module,
                         * dei output pre-field in fact, so delay become 2 times.
                         */
                        //VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;
						/* DTS2014112508388
					     * double delayTime while DEI actually working.
					     * It's wrong to double delayTime when DEI won't work in Progressive sampleType.
					     */
						if ((HI_TRUE == pstWin->WinModCfg.bDoDei)
                        && (HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE == pWinFrameBuf->pCrtFrame->VdecFrameInfo.enSampleType))
	                    {
	                        VidInfo.DelayTime = 2 * 1000 / pOptmDispInfo->u32DispRate;
	                    }
	                    else
	                    {
	                        VidInfo.DelayTime = 1000 / pOptmDispInfo->u32DispRate;
	                    }

#ifdef VDP_USE_DEI_FB_OPTIMIZE
                        /* In this mode, config frame at VDP_CONFIG_POINT_PERCENT, so the DelayTime need sub this value */
                        VidInfo.DelayTime -= 1000 / pOptmDispInfo->u32DispRate * VDP_CONFIG_POINT_PERCENT / 100;
#endif
                    }

                    if (HI_TRUE == pstVo->bOffLineModeEn)
                    {
                        VidInfo.DelayTime = VidInfo.DelayTime + (1000 / pOptmDispInfo->u32DispRate);
                    }

#endif

                    bSync = HI_FALSE;
                    //if ((HI_INVALID_HANDLE != pstWin->hSync) && (HI_TRUE != pstWin->bDisableSync))
                    if (HI_INVALID_HANDLE != pstWin->hSync)
                    {
                        if (pfnSyncVfy(pstWin->hSync))
                        {
                            bSync = HI_TRUE;
                        }
                    }

                    if ((bSync == HI_TRUE) && (pstWin->bQuickOutputMode != HI_TRUE))
                    {
                        pfnSyncVidProc(pstWin->hSync, &VidInfo, &VidOpt);
                    }
                    else

                    {
                        /*  frame jump caused by frame rate transformation */
                        if (OPTM_PLAY_STATE_JUMP == pWinFrameBuf->pCrtFrame->enFrameState)
                        {
                            OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_TRUE);
                            DropNum++;
                            continue;
                        }

                        break;
                    }

                    OPTM_FB_SyncHandle(pWinFrameBuf, &VidOpt);
                    if ((SYNC_PROC_PLAY == VidOpt.SyncProc) || (SYNC_PROC_TPLAY == VidOpt.SyncProc))
                    {
                        break;
                    }
                    else if (SYNC_PROC_REPEAT == VidOpt.SyncProc)
                    {
                        if (!pWinFrameBuf->pCrtFrame)
                        {
                            return HI_FAILURE;
                        }

                        if (!pWinFrameBuf->bProgressive)
                        {
                            pWinFrameBuf->RepeatFormat = 1;
                        }

                        bUnload = HI_TRUE;
                        break;
                    }
                    else
                    {
                        DropNum++;
                        continue;
                    }
                }
            }
        }
    }
    /* it is caused by synchronization or under-flow, don't update buf pointer  */
    else if (1 == pWinFrameBuf->RepeatFormat)
    {
        bUnload = HI_TRUE;

        pWinFrameBuf->RepeatFormat = 0;
    }
    /* caused by multiple plays of current frame, or reset of inserted frame */
    else
    {
        /* if it is caused by multiple plays, it will not unload, update buf pointer;
         * if it is caused by the reset of inserted frame, it will unload, no update of buf pointer
         */
#ifdef VDP_USE_DEI_FB_OPTIMIZE
		bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf, VOISR_GetDEIMode(pWinFrameBuf));
#else
        bUnload = OPTM_FB_ConfigGetNext(pWinFrameBuf);
#endif
        VOISR_AdjustCfgFrame(pstWin);
#if 0
        if (FRAME_SOURCE_STILL == pWinFrameBuf->pCrtFrame->enFrameSrc)
        {
            pWinFrameBuf->pPreFrame = pWinFrameBuf->pCrtFrame;
            pWinFrameBuf->pNextFrame = pWinFrameBuf->pCrtFrame;
        }
#endif
        pWinFrameBuf->RepeatFormat = 0;
    }

#if 0
    if (pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32YAddr == 0)
    {
        DEBUG_PRINTK("err %x\n", (HI_U32)pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32YAddr);
    }
#endif

    //OPTM_M_VO_SetEnable(pstWin->enLayerHalId, pstWin->bEnable);

    pWinModCfg->OutBtmFlag = pWinFrameBuf->CrtFieldFlag;

    if (pWinFrameBuf->pCrtFrame->enFrameState == OPTM_PLAY_STATE_PLAY_OVER)
    {
        bRepeat = HI_TRUE;
    }
    else
    {
        bRepeat = HI_FALSE;
    }

    OPTM_M_VO_GetCap(pstWin->enLayerHalId, &stLayerCap);
    pstWin->WinModCfg.bDoDei = HI_FALSE;

    if (HI_TRUE == stLayerCap.bDieFunc)
    {
        if (pWinFrameBuf->bProgressive != HI_TRUE)
        {
            DropNum = DropNum * 2;
        }


/************************Revise the Input WinDow*********************************/
        /* get display region of current frame */

        if(pstWin->hSlaveWin[0] &&
           pstWin->hSlaveWin[0]->WinModCfg.pstCurrF )
        {
            stFrmDispArea.s32X = (pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayCenterX - (pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayWidth/2)) & 0xfffffffeL;
            stFrmDispArea.s32Y = (pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayCenterY - (pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayHeight/2)) & 0xfffffffeL;
            stFrmDispArea.s32Width = pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayWidth & 0xfffffffeL;
            stFrmDispArea.s32Height = pstWin->hSlaveWin[0]->WinModCfg.pstCurrF->u32DisplayHeight & 0xfffffffcL;

            /* get / revise input window  */
            memcpy(&stLocInRec, &(pstWin->hSlaveWin[0]->WinModCfg.stInRect), sizeof(HI_RECT_S));

            VoReviseRect2(&stFrmDispArea, &stLocInRec);

    /************************Revise the Output WinDow*********************************/
           memcpy(&stLocOutRec, &(pstWin->hSlaveWin[0]->WinModCfg.stOutRect), sizeof(HI_RECT_S));

           stScrnWin2 = pOptmDispInfo->stScrnWin;

           VoReviseRect2(&stScrnWin2, &stLocOutRec);

           /*if the input RECT equals output RECT, it doesn't need ZME*/
           if( stLocOutRec.s32Height == stLocInRec.s32Height &&
               stLocOutRec.s32Width == stLocInRec.s32Width )
            {
                bNeedZME = HI_FALSE;
                if(stLocOutRec.s32Height == 1080)/*1080i->1080i, we do dei for higher pictuer quality*/
                {
                    bNeedZME = HI_TRUE;
                }
            }
           else
           {
                bNeedZME = HI_TRUE;
           }
       }

        bNeedDoRwzbFlag = (HI_BOOL) OPTM_M_GetRwzbFlag(&stScrnWin, pstWin->WinModCfg.pstCurrF, bProgressive);

        /*Judge whether need DEI or not; DEI is disabled by default */

        /* No satisfied of DIE conditions, do not call OPTM_AA_DieCalcApi,
         * to make sure it is the same with call of OPTM_AA_DieCfgApi.
         */

        if(HI_TRUE == OPTM_CheckDieConditionForCM(pWinFrameBuf->pPreFrame,
                    pWinFrameBuf->pCrtFrame,
                    pWinFrameBuf->pNextFrame,
                    pWinModCfg->bInFrc,
                    bRepeat,
                    bNeedZME,
                    bNeedDoRwzbFlag))
        {
            /*Enable DEI module*/
            HI_BOOL bRefFldOpppzed;

            if ((pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Height > 720)&&(HI_TRUE == bRepeat))
            {
                bRefFldOpppzed = HI_FALSE;
            }
            else
            {
                bRefFldOpppzed = HI_TRUE;
            }

            if (!pstWin->bFreeze)
            {
                pstWin->WinModCfg.bDoDei = HI_TRUE;

                OPTM_AA_DieCalcApi(pstWin->enLayerHalId, &(pstWin->stDie), (HI_S32)bRepeat, DropNum,
                        pstVo->bOffLineModeEn, &pWinFrameBuf->pCrtFrame->VdecFrameInfo, bRefFldOpppzed, 0);
            }
        }

    }

    if((pstWin->WinModCfg.bDoDei == HI_TRUE) && (pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Height <=  720))
    {
        OPTM_FB_SearchDispField(pWinFrameBuf->pCrtFrame, 1 - pWinFrameBuf->CrtFieldFlag, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, NULL);
    }
    else
    {
        OPTM_FB_SearchDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->CrtFieldFlag, pWinFrameBuf->bProgressive, pWinFrameBuf->bTopFirst, NULL);
    }


    /********************************************
      update DispRect and VideoRect
     ********************************************/

    /* if it is DISP update, we need to update output window */
    if (HI_TRUE == pstWin->bFreeze)
    {
        if (pstWin->pstFrzFrame == HI_NULL)
        {
            if (HI_UNF_WINDOW_FREEZE_MODE_BLACK == pstWin->enFreeze)
            {
                /* if it is black frame pause, acquire  black  frame  */
                pstWin->pstFrzFrame = OPTM_GetBlackFrame();
            }
            else
            {
                memcpy(&(pstWin->stFrzFrame), pWinFrameBuf->pCrtFrame, sizeof(OPTM_FRAME_S));

                pstWin->s32FrzFrameIsPro = pWinFrameBuf->bProgressive;
                pstWin->pstFrzFrame = &(pstWin->stFrzFrame);

                /* current frame will not be released temporarily; when cancelling FREEZE, release it */
                pWinFrameBuf->pCrtFrame->bNeedRelease = HI_FALSE;
            }
        }

        /* temporary realization of single frame pause */
        pWinModCfg->pstLastF = HI_NULL;
        pWinModCfg->pstCurrF = &(pstWin->pstFrzFrame->VdecFrameInfo);
        pWinModCfg->pstNextF = HI_NULL;

        pWinModCfg->InBtmFlag = (pstWin->pstFrzFrame->u32CurDispFld==1) ? 0 : 1;
        pWinModCfg->ReFlag    = 1;/* repeat flag */
        pWinModCfg->DropFlag  = 0;
    }
    else
    {
        if (pstWin->pstFrzFrame != HI_NULL)
        {
            if(HI_UNF_WINDOW_FREEZE_MODE_LAST == pstWin->enFreeze)
            {
                if  (pstWin->pstFrzFrame->bNeedRelease == HI_TRUE)
                {
                    VO_ReleaseFrame(pstWin,pstWin->pstFrzFrame);
                }
            }

            pstWin->pstFrzFrame = HI_NULL;
        }

        /* t00177539 : if win reset operation is doing, not change the current buffer pointer */
        if ((pstWin->u32ResetStep > 0) && (pstWin->bUseDNRFrame == HI_FALSE))
        {
            if ((HI_NULL == pWinModCfg->pstLastF) || (HI_NULL == pWinModCfg->pstNextF))
            {
                pstWin->WinModCfg.bDoDei = HI_FALSE;
            }
        }
        else
        {
            pWinModCfg->pstLastF = (HI_NULL == pWinFrameBuf->pPreFrame) ? HI_NULL : &(pWinFrameBuf->pPreFrame->VdecFrameInfo);
            pWinModCfg->pstCurrF = (HI_NULL == pWinFrameBuf->pCrtFrame) ? HI_NULL : &(pWinFrameBuf->pCrtFrame->VdecFrameInfo);
            pWinModCfg->pstNextF = (HI_NULL == pWinFrameBuf->pNextFrame) ? HI_NULL : &(pWinFrameBuf->pNextFrame->VdecFrameInfo);
        }

        pWinModCfg->InBtmFlag = (pWinFrameBuf->pCrtFrame->u32CurDispFld==1) ? 0 : 1;
        pWinModCfg->ReFlag    = bRepeat;
        pWinModCfg->DropFlag  = DropNum;
    }

    pWinModCfg->bTopFirst = pWinFrameBuf->bTopFirst;
    pWinModCfg->u32CurrFrameIndex = pWinFrameBuf->pCrtFrame->u32IndexNumber;

#if 1
    /* set CSC coefficients */
    /* check current CS, take this information in frame information based on bit-stream; todo */

    OPTM_M_VO_GetCscMode(pstWin->enLayerHalId, &pstWin->enSrcCS,&pstWin->enDstCS);

    if (pWinFrameBuf->pCrtFrame->VdecFrameInfo.u32Height >= 720)
    {
        pstWin->enSrcCS = OPTM_CS_eXvYCC_709;
    }
    else
    {
        pstWin->enSrcCS = OPTM_CS_eXvYCC_601;
    }

    OPTM_M_VO_SetCscMode(pstWin->enLayerHalId,pstWin->enSrcCS,pstWin->enDstCS);
#endif

    /*  set  image  output  */
    //  OPTM_M_VO_ConfigFrame(pWinModCfg, pstWin->enLayerHalId, &(pstWin->stDetInfo), bWbc1);

    //   HAL_DISP_SetRegUpNoRatio(pstWin->enLayerHalId);
    pstWin->pstCOFrame = pstWin->WinFrameBuf.pCrtFrame;

    /* restore  output  window  */
    //    pWinModCfg->stOutRect = stOutRectBackup;
    OPTM_FB_PutDispField(pWinFrameBuf->pCrtFrame, pWinFrameBuf->bTopFirst);

    /* drop we can drop frame */

    if (pstWin->bReset != HI_TRUE && (!bUnload))
    {
        if (OPTM_PLAY_STATE_PLAY_OVER == pWinFrameBuf->pCrtFrame->enFrameState)
        {
            if (pstWin->bStepMode)
            {
                if (pstWin->bStepPlay)
                {
                    OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_FALSE);
                    pstWin->bStepPlay = HI_FALSE;
                }
            }
            else
            {
                OPTM_FB_ConfigPutNext(pWinFrameBuf, HI_FALSE);
            }
        }
    }

    return HI_SUCCESS;
}

HI_VOID VOISR_SetCfgFrame(OPTM_WIN_S* pstWin)
{
    OPTM_FB_S *pFb = &(pstWin->WinFrameBuf);

    memcpy(&(pFb->stcfgF[0]), &(pFb->stcfgF[3]), 3*sizeof(HI_UNF_VO_FRAMEINFO_S));

    if (pFb->pCrtFrame)
        memcpy(&(pFb->stcfgF[4]), &(pFb->pCrtFrame->VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
    else
        memset(&(pFb->stcfgF[4]), 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    if (pFb->pPreFrame)
        memcpy(&(pFb->stcfgF[3]), &(pFb->pPreFrame->VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
    else
        memset(&(pFb->stcfgF[3]), 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    if (pFb->pNextFrame)
        memcpy(&(pFb->stcfgF[5]), &(pFb->pNextFrame->VdecFrameInfo), sizeof(HI_UNF_VO_FRAMEINFO_S));
    else
        memset(&(pFb->stcfgF[5]), 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    //printk(KERN_DEBUG "c %08d %08d %08d \r\n", pFb->stcfgF[3].u32Pts, pFb->stcfgF[4].u32Pts, pFb->stcfgF[5].u32Pts);
}

HI_UNF_VO_FRAMEINFO_S *VOISR_FindCfgFrame(OPTM_WIN_S* pstWin, HI_UNF_VO_FRAMEINFO_S *pRefFrame, HI_U32  pos)
{
    HI_U32  cur_pos;
    OPTM_FB_S *pFb = &(pstWin->WinFrameBuf);

    if (pRefFrame == HI_NULL)
        return  HI_NULL;

    if (memcmp(pRefFrame, &(pFb->stcfgF[1]), sizeof(HI_UNF_VO_FRAMEINFO_S)) == 0)
        cur_pos = 1;
    else if (memcmp(pRefFrame, &(pFb->stcfgF[4]), sizeof(HI_UNF_VO_FRAMEINFO_S)) == 0)
        cur_pos = 4;
    else
        return HI_NULL;

    if (pos == VO_REST_DEI_LAST_FRAME)
        return &(pFb->stcfgF[cur_pos - 1]);
    else if (VO_REST_DEI_CURT_FRAME == pos)
        return &(pFb->stcfgF[cur_pos]);
    else if (VO_REST_DEI_NEXT_FRAME == pos)
        return &(pFb->stcfgF[cur_pos + 1]);
    else
        return  HI_NULL;
}

#define  DEBUG_DEI_CTRL_INFO   0
HI_VOID VOISR_RlsRstFrame(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pCurFrame);
HI_S32 VOISR_ConfigMain_FrameBuffer(OPTM_WIN_S* pstWin,OPTM_M_DISP_INFO_S* pOptmDispInfo, HI_S32 NextBtmflag)
{
    HI_S32 InRate;
    HI_S32 nRet;
#if  DEBUG_DEI_CTRL_INFO
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL ;
#endif
    InRate = pstWin->InFrameRate ;
    if(pstWin->WinFrameBuf.bProgressive != HI_TRUE)
    {
        InRate = InRate * 2;
    }

    if (pstWin->WinFrameBuf.pNextFrame != HI_NULL)
    {

#if  DEBUG_DEI_CTRL_INFO
        pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S* )(&pstWin->WinFrameBuf.pNextFrame->VdecFrameInfo.u32VdecInfo[0]);
        if (pVdecPriv->u32DeiState)
        {
            OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_TRUE);
        }
        else
#endif
            if ((pstWin->bDisableDei) || (pstWin->bReleaseLastFrame) )
            {
                OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_TRUE);
            }
            else
            {
                OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_FALSE);
            }
    }
    else if (pstWin->WinFrameBuf.pCrtFrame != HI_NULL)
    {

#if  DEBUG_DEI_CTRL_INFO
        pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S* )(&pstWin->WinFrameBuf.pCrtFrame->VdecFrameInfo.u32VdecInfo[0]);

        if (pVdecPriv->u32DeiState)
        {
            OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_TRUE);
        }
        else
#endif
            if ((pstWin->bDisableDei) || (pstWin->bReleaseLastFrame) )
            {
                OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_TRUE);
            }
            else
            {
                OPTM_FB_SetQuickOutputMode(&(pstWin->WinFrameBuf), HI_FALSE);
            }
    }

    pstWin->pstCOFrame = HI_NULL;

    /* Three conditions to enter into FRC:
     * 1  frame rate is not the same;
     * 2  in multi-speed play;
     * 3  frame rate is the same, but the output is progressive;
     *    then it is no need to search T/B field order, and operation of DEI is necessary,
     *    thus, the way of processing is the same with FRC.
     */
    if ( (InRate != (pOptmDispInfo->u32DispRate*10 ))
            ||(HI_TRUE == pstWin->bQuickOutputMode)
            ||(pstWin->u32DisplayRatio != OPTM_ALG_FRC_BASE_PLAY_RATIO)
            ||( (InRate == (pOptmDispInfo->u32DispRate *10 )) && (HI_TRUE == pOptmDispInfo->bProgressive)))
    {
        if (HI_FALSE == pstWin->WinModCfg.bInFrc)
        {
            pstWin->WinFrameBuf.RepeatFormat = 0;
        }

        /*  set flag of FRC transformation mode, giving reference for DIE */
        pstWin->WinModCfg.bInFrc = HI_TRUE;

        nRet = VOISR_ConfigMain_FrameBufferWithFrc(pstWin, pOptmDispInfo, NextBtmflag);
        //DEBUG_PRINTK("!");
    }
    else
    {
        /* 20110325_G45208
         * Since the probable change of bit-stream frame rate, causing that one bit-stream will
         * switch in these two processing branches.
         * After the switch, pstWin->WinFrameBuf.RepeatFormat may not be zero, so
         * the first frame of new bit-stream may miss DEI RESET,
         * as a result, DEI module does not receive new field order information.
         * In the last time, setting information according to new field order,
         * if the up/bottom field order information is not the same, the image will go back.
         * Setting pstWin->WinFrameBuf.RepeatFormat to 0, after the switch of branches, it will go through
         * DEI RESET module.
         */

        /* 20110330_G45208
         * After optimization of DEI RESET check operation, even no clear zero here, it will restore to correct field order,
         * but it is better to keep that.
         */
        if (HI_TRUE == pstWin->WinModCfg.bInFrc)
        {
            pstWin->WinFrameBuf.RepeatFormat = 0;
        }

        /*  set flag of FRC transformation mode, giving reference for DIE */
        pstWin->WinModCfg.bInFrc = HI_FALSE;

        nRet = VOISR_ConfigMain_FrameBufferWithoutFrc(pstWin, pOptmDispInfo, NextBtmflag);
        //DEBUG_PRINTK("=");
    }

    if (nRet == HI_SUCCESS)
    {
        VOISR_SetCfgFrame(pstWin);
    }

    if (pstWin->pfPutImage)
    {
        OPTM_FRAME_S   *pDropFrame;
        HI_S32         Ret;

        pstWin->WinFrameBuf.Drop = pstWin->WinFrameBuf.Release;
        Ret = OPTM_FB_GetDropFrame(&(pstWin->WinFrameBuf), &pDropFrame);

        //printk("\r\ndrop ");
        while (HI_SUCCESS == Ret)
        {
            if (pDropFrame != HI_NULL)
            {
                /* capture frame can not free */
                if (pDropFrame->bCaptured)
                    goto put;

                /* freeze frame can not free */
                if (pstWin->pstFrzFrame != HI_NULL)
                {
                    if (pDropFrame->VdecFrameInfo.u32YAddr ==
                            pstWin->pstFrzFrame->VdecFrameInfo.u32YAddr)
                        goto put;
                }

                if ((pDropFrame->bNeedRelease) && (OPTM_FRAME_RECEIVED == pDropFrame->enState))
                {
                    VO_ReleaseFrame(pstWin,pDropFrame);
                }
                VOISR_RlsRstFrame(pstWin, pDropFrame);
                pDropFrame->bNeedRelease = HI_FALSE;
            }
put:
            OPTM_FB_PutDropFrame(&(pstWin->WinFrameBuf));

            Ret = OPTM_FB_GetDropFrame(&(pstWin->WinFrameBuf), &pDropFrame);
        }
    }

    if (pstWin->pstCOFrame)
    {
        pstWin->VideoType = pstWin->pstCOFrame->VdecFrameInfo.enSampleType;
        if (pstWin->u64LastFrameRecTime != pstWin->pstCOFrame->u64RecvTime)
        {
            HI_U64 curtime;

            curtime = sched_clock();
            curtime = curtime - pstWin->pstCOFrame->u64RecvTime;

            do_div(curtime, (HI_U64)1000000);
            pstWin->u32WinRemainFrameTimeMs = curtime;

            pstWin->u64LastFrameRecTime = pstWin->pstCOFrame->u64RecvTime;
            //DEBUG_PRINTK("t=%d\n", pstWin->u32WinRemainFrameTimeMs);
        }
    }

    return nRet;
}


/* In this part, we need to set wbc1FbInVirtualWin according to each virtualWin */
#if 0
HI_S32 VOISR_ConfigVirtualSlave_WBC1FrameBuffer(OPTM_WIN_S* pstMainWin,OPTM_WIN_S* pstDestWin,HI_BOOL bNeedRepeat)
{
    HI_UNF_VO_FRAMEINFO_S* pstNextFrame;
    OPTM_VO_S                *pstVo;
    OPTM_M_DISP_INFO_S OptmDispInfo;

    pstVo = (OPTM_VO_S*)pstMainWin->hVoHandle;
    pstNextFrame = OPTM_WBC1FB_GetWriteBuf(&(pstDestWin->stVirtualWbcWin));
    if (HI_NULL == pstNextFrame)
    {
        return HI_FAILURE;
    }

    /* To save band-width, no repeat frame for virtual window */
    if ((pstMainWin->WinModCfg.pstCurrF->u32YAddr == pstDestWin->stVirtualWbcWin.u32LastWriteYaddr)
            &&pstMainWin->WinModCfg.ReFlag)
    {
        return HI_FAILURE;
    }

    pstDestWin->stVirtualWbcWin.u32LastWriteYaddr = pstMainWin->WinModCfg.pstCurrF->u32YAddr;

    /* acquire DISP information  */
    OptmDispInfo = pstVo->stDispInfo;

    /*  set frame information */
    pstNextFrame->u32Width  = pstDestWin->stAttr.stOutputRect.s32Width;
    pstNextFrame->u32Height = pstDestWin->stAttr.stOutputRect.s32Height;
    pstNextFrame->u32DisplayWidth   = pstDestWin->stAttr.stOutputRect.s32Width;
    pstNextFrame->u32DisplayHeight  = pstDestWin->stAttr.stOutputRect.s32Height;
    pstNextFrame->u32DisplayCenterX = pstNextFrame->u32DisplayWidth / 2;
    pstNextFrame->u32DisplayCenterY = pstNextFrame->u32DisplayHeight / 2;

    pstNextFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    pstNextFrame->enFieldMode  = HI_UNF_VIDEO_FIELD_ALL;

    Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, HAL_DISP_PROGRESSIVE);

    Vou_SetWbcStride(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YStride);

    if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 0);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 1);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YVYU == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 2);
    }

    return  VOISR_SlaveConfigFrame(pstDestWin,pstMainWin,bNeedRepeat,pstNextFrame);
}

HI_S32 VOISR_ConfigSlaveActive_WBC1FrameBuffer(OPTM_WIN_S* pstMainWin,OPTM_WIN_S* pstDestWin,HI_BOOL bNeedRepeat)
{
    HI_UNF_VO_FRAMEINFO_S  *pstNextFrame;
    OPTM_VO_S              *pstVo;
    OPTM_M_DISP_INFO_S     OptmDispInfo;
    HI_S32                 s32Ret;

    pstVo = (OPTM_VO_S*)pstMainWin->hVoHandle;

    pstNextFrame = pstVo->psWbcFrame;

    OptmDispInfo = pstVo->stDispInfo;

    if (OptmDispInfo.bProgressive == HI_TRUE)
    {
        Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, HAL_DISP_PROGRESSIVE);
    }
    else
    {
        Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, (pstVo->NextBtmflag ? HAL_DISP_BOTTOM : HAL_DISP_TOP));
    }

    Vou_SetWbcStride(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YStride);

    if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 0);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 1);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YVYU == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 2);
    }

    s32Ret =  VOISR_SlaveConfigFrame(pstDestWin,pstMainWin,bNeedRepeat,pstNextFrame);

    return s32Ret;
}


HI_VOID Vou_OfflineWbc1TaskStartConfigWindow(OPTM_VO_S *pstVo, HI_UNF_VO_FRAMEINFO_S *pstNextFrame)
{
    HAL_DISP_BKCOLOR_S stBkgtmp;
    OPTM_FB_LOCAL_F_S  *pstBgcFrame;
    HAL_DISP_RECT_S    stZmeReso;
    OPTM_FRAME_S       *pstBgcFrameInf;
    HI_RECT_S          stInRect;
    HI_RECT_S          stOutRect;
    HI_U8              *CPhyAddr;
    HI_U32             CAddrOffset = 0,CAddrLen = 0;
    HI_U32             YAddrLen = 0;
    HI_S32             i = 0;
    HAL_OPTM_VERSION vouversion;

    vouversion = HAL_GetChipsetVouVersion();

    pstBgcFrame = OPTM_GetBgcFrame();
    pstBgcFrameInf = &pstBgcFrame->stFrame;

    if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 0);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == pstNextFrame->enVideoFormat)
    {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 1);
    }

    /*  query HDISP_HD background color */
    Vou_GetCbmBkg(0, &stBkgtmp);
    //stBkgtmp.u8Bkg_a = 255;
    //Vou_SetLayerBkg(HAL_DISP_LAYER_VIDEO1, stBkgtmp);

    /* set buff for gbc   assign Y component*/
    YAddrLen = pstBgcFrameInf->VdecFrameInfo.u32DisplayWidth * pstBgcFrameInf->VdecFrameInfo.u32DisplayHeight;
    memset((HI_VOID *)(pstBgcFrame->stMMZBuf.u32StartVirAddr), stBkgtmp.u8Bkg_y, YAddrLen);

    CAddrOffset = YAddrLen;
    CAddrLen    = YAddrLen >> 1;
    //memset((HI_VOID *)(pstBgcFrame->stMMZBuf.u32StartVirAddr + CAddrOffset), 0x80, CAddrLen);
    /* set buff for gbc   assign C component*/
    CPhyAddr    = (HI_U8 *)(pstBgcFrame->stMMZBuf.u32StartVirAddr + CAddrOffset);
    for( i = 0; i < CAddrLen; i += 2)
    {
        *CPhyAddr++ = stBkgtmp.u8Bkg_cr;
        *CPhyAddr++ = stBkgtmp.u8Bkg_cb;
    }

    /* set VHD read mode  HAL_DISP_PROGRESSIVE */
    HAL_DISP_SetReadMode(HAL_DISP_LAYER_VIDEO1, HAL_DISP_PROGRESSIVE, HAL_DISP_PROGRESSIVE);
    /* set VHD date fmt 420 */
    HAL_DISP_SetLayerDataFmt(HAL_DISP_LAYER_VIDEO1, HAL_INPUTFMT_YCbCr_SEMIPLANAR_420);

    /* set VHD readaddr of date  */
    HAL_DISP_SetLayerAddr(HAL_DISP_LAYER_VIDEO1,
            0,
            pstBgcFrameInf->VdecFrameInfo.u32YAddr,
            pstBgcFrameInf->VdecFrameInfo.u32CAddr,
            pstBgcFrameInf->VdecFrameInfo.u32YStride,
            pstBgcFrameInf->VdecFrameInfo.u32CStride);
    /* set VHD input window */
    stInRect.s32X = 0;
    stInRect.s32Y = 0;
    stInRect.s32Width  = pstBgcFrameInf->VdecFrameInfo.u32DisplayWidth;
    stInRect.s32Height = pstBgcFrameInf->VdecFrameInfo.u32DisplayHeight;
    HAL_DISP_SetLayerInRect(HAL_DISP_LAYER_VIDEO1, stInRect);

    stOutRect.s32X = 0;
    stOutRect.s32Y = 0;
    stOutRect.s32Width  = pstNextFrame->u32Width;
    stOutRect.s32Height = pstNextFrame->u32Height;

    //DEBUG_PRINTK("===============w=%d, h=%d\n", pstNextFrame->u32Width, pstNextFrame->u32Height);

    /* set VHD output window */
    HAL_DISP_SetLayerDispRect(HAL_DISP_LAYER_VIDEO1, stOutRect);
    /* set VHD real content output window */
    HAL_DISP_SetLayerOutRect(HAL_DISP_LAYER_VIDEO1, stOutRect);

    /* config wbc1 */
    Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, HAL_DISP_PROGRESSIVE);
    Vou_SetWbcStride(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YStride);
    Vou_SetWbcAddr(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YAddr);

    /* disable die */
    Vou_SetDieEnable(HAL_DISP_LAYER_VIDEO1, HI_FALSE, HI_FALSE);

    /* mask acm */
    OPTM_M_VO_SetAcmMask(HAL_DISP_LAYER_VIDEO1, HI_TRUE);

    /* mask acc */
    OPTM_M_VO_SetAccMask(HAL_DISP_LAYER_VIDEO1, HI_TRUE);

    /* mask csc */
    OPTM_M_VO_SetCscEnable(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

    /* config zme */
    HAL_SetZmeEnable(HAL_DISP_LAYER_VIDEO1, HAL_DISP_ZMEMODE_ALL, HI_TRUE);
    HAL_SetZmeFirEnable(HAL_DISP_LAYER_VIDEO1, HAL_DISP_ZMEMODE_ALL, HI_FALSE);
    HAL_SetMidEnable(HAL_DISP_LAYER_VIDEO1, HAL_DISP_ZMEMODE_ALL, HI_FALSE);
    HAL_SetHfirOrder(HAL_DISP_LAYER_VIDEO1, 1);
    HAL_SetZmeVerType(HAL_DISP_LAYER_VIDEO1, 1);

    stZmeReso.u32InWidth  = stInRect.s32Width;
    stZmeReso.u32InHeight = stInRect.s32Height;
    stZmeReso.u32OutWidth  = stOutRect.s32Width;
    stZmeReso.u32OutHeight = stOutRect.s32Height;
    HAL_SetZmeReso(HAL_DISP_LAYER_VIDEO1, stZmeReso);

    Vou_SetHorRatio(HAL_DISP_LAYER_VIDEO1, stZmeReso.u32InWidth*4096/stZmeReso.u32OutWidth);
    Vou_SetVerRatio(HAL_DISP_LAYER_VIDEO1, stZmeReso.u32InHeight*4096/stZmeReso.u32OutHeight);

    OPTM_HAL_SetLayerDeCmpEnable(HAL_DISP_LAYER_VIDEO1, 0);

    OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO1, HI_TRUE);

    HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_VIDEO1);

    return;

}
#endif
/* copied struct may not be enough */
HI_VOID VOISR_WBC1ProcessStart(HI_U32 u32Param0, HI_U32 u32Param1)
{
    #if 0
    OPTM_M_DISP_INFO_S     OptmDispInfo;
    HI_UNF_VO_FRAMEINFO_S  *pstNextFrame;
    OPTM_VO_S              *pstVo;
    OPTM_WIN_S             *pstMainWin;
    OPTM_WIN_S             *pstSlaveWin;
    OPTM_DISP_S            *pOptmDisp;
    static HI_BOOL         WinChange = HI_FALSE;
    HI_S32                 index,nRet = HI_SUCCESS;
    HI_BOOL                bNeedRepeatFlag = HI_FALSE;
    OPTM_FB_S              *pWinFrameBuf;
    OPTM_FRAME_S           *pConfigFrame;
    HI_U32                 i;
    HI_U32                 j;
    HI_BOOL                bDisableWbc = HI_FALSE;
    HI_BOOL                bWbc1FillSearch = HI_FALSE;

    pstVo = (OPTM_VO_S *)u32Param0;

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);

    if (g_VoSuspend)
    {
        return;
    }

    if (pstVo->bEnable != HI_TRUE)
    {
        return;
    }

    if (pstVo->bMasked == HI_TRUE)
    {
        return;
    }

    if (pstVo->bBeBusy == HI_TRUE)
    {
        pstVo->u32WbcUnload++;
        HI_INFO_VO("busy.");
        return;
    }

    /* update windows based on flags */
    if (pstVo->unUpFlag.u32Value != 0)
    {
        if (pstVo->unUpFlag.Bits.Win != 0)
        {
            if (pstVo->s32NewActWinNum != pstVo->s32ActWinNum)
            {
                WinChange = HI_TRUE;
                pstVo->s32ActWinNum = pstVo->s32NewActWinNum;
            }

            pstVo->s32MainWinNum = pstVo->s32NewMainWinNum;
            memcpy(pstVo->ahMainWin,pstVo->ahNewMainWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_WIN_CHANNEL);

            for(index = 0;index < pstVo->s32MainWinNum;index++)
            {
                pstMainWin = pstVo->ahMainWin[index];
                pstMainWin->s32SlaveNum = pstMainWin->s32SlaveNewNum;
                memcpy(pstMainWin->hSlaveWin,pstMainWin->hSlaveNewWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_SLAVE_CHANNEL);
            }
            pstVo->unUpFlag.Bits.Win = 0;
        }


        if (pstVo->unUpFlag.Bits.OutRect != 0)
        {
            pstVo->unUpFlag.Bits.OutRect = 0;
        }

        if (pstVo->unUpFlag.Bits.Order != 0)
        {
            pstVo->s32MainWinNum = pstVo->s32NewMainWinNum;
            memcpy(pstVo->ahMainWin,pstVo->ahNewMainWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_WIN_CHANNEL);
            pstVo->unUpFlag.Bits.Order = 0;
        }
    }

    OPTM_M_GetDispInfo(pstVo->enDispHalId, &OptmDispInfo);
    pstVo->stDispInfo = OptmDispInfo;

    /*  acquire display information of next field */
    if (OptmDispInfo.bProgressive != HI_TRUE)
    {
        //pstVo->NextBtmflag = 1 - OPTM_HAL_DISP_GetCurrField(pstVo->enDispHalId);
        pstVo->NextBtmflag = OPTM_M_GetDispBtmFlag(pstVo->enDispHalId);
    }
    else
    {
        pstVo->NextBtmflag = 2;
    }

    pstNextFrame = OPTM_WBC1FB_GetWriteBuf(pstVo->pstWbcBuf);

    pstVo->psWbcFrame = pstNextFrame;
    pstVo->s32WbcWinIndex = 0;
    pstVo->bWbc1FillTask = HI_FALSE;

    if (HI_NULL != pstNextFrame)
    {
        HI_U32 vn1, vn2;

        /* Get vou version */
        OPTM_HAL_GetVersion(&vn1, &vn2);

        /* In 576I mode of HD output, the system transforms the resolution from 720X576/480 to 1440X576/480,
         * but it is still 720X576/480 for user operation.
         * In WBC1 mode, processing is X2 for width of frame information in 576I/480I.
         */


        {
            pstNextFrame->u32Width  = OptmDispInfo.stScrnWin.s32Width;
            pstNextFrame->u32Height = OptmDispInfo.stScrnWin.s32Height;
        }
        pstNextFrame->u32DisplayWidth   = pstNextFrame->u32Width;
        pstNextFrame->u32DisplayHeight  = pstNextFrame->u32Height;
        pstNextFrame->u32DisplayCenterX = pstNextFrame->u32DisplayWidth / 2;
        pstNextFrame->u32DisplayCenterY = pstNextFrame->u32DisplayHeight / 2;

        if (OptmDispInfo.bProgressive == HI_TRUE)
        {
            pstNextFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
            pstNextFrame->enFieldMode  = HI_UNF_VIDEO_FIELD_ALL;
        }
        else
        {
            pstNextFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
            pstNextFrame->enFieldMode  = pstVo->NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;
        }

        if (pstVo->bWbc1FillBlack)
        {
            pstVo->u32Wbc1FillNum = 0;
            for (i=0; i<OPTM_VO_WBC1_NUM; i++)
            {
                pstVo->u32Wbc1FillAddr[i] = 0;
            }

            pstVo->bWbc1FillBlack = HI_FALSE;
        }

        if (pstVo->u32Wbc1FillNum < OPTM_VO_WBC1_NUM)
        {
            for (i=0; i<pstVo->u32Wbc1FillNum; i++)
            {
                if (pstVo->u32Wbc1FillAddr[i] == pstNextFrame->u32YAddr)
                {
                    bWbc1FillSearch = HI_TRUE;
                }
            }

            if (!bWbc1FillSearch)
            {

                Vou_OfflineWbc1TaskStartConfigWindow(pstVo, pstNextFrame);

                pstVo->bBeBusy = HI_TRUE;

                pstVo->u32Wbc1FillAddr[i] = pstNextFrame->u32YAddr;
                pstVo->u32Wbc1FillNum++;

                pstVo->bWbc1FillTask = HI_TRUE;

                return;
            }
        }
    }

    while(pstVo->s32WbcWinIndex < pstVo->s32MainWinNum)
    {
        pstMainWin = pstVo->ahMainWin[pstVo->s32WbcWinIndex];
        if ((pstMainWin->bEnable != HI_TRUE) || (pstMainWin->hSrc == HI_NULL) )
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }

        if ((HI_NULL == pstVo->psWbcFrame) && (HI_TRUE == pstMainWin->bActiveContain) && (HI_NULL == pstNextFrame))
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }

        /*  customer problem: HSCP201203198196
         *   |(1,2,3,B)_________________|(2,3,4,T)__________________| (2,3,4,B)________________|(3,4,5,T)
         *
         *   if video play like up, normal we release frame 1 in third vtthd (2,3,4,B), there is no problem
         *   but if the (2,3,4) buffers is be played once, and release buffer 1 in second vtthd, SD display
         *   will be bad, because in second vtthd , sd display buffer is (1,2,3), but buffer 1 is released.
         *   so we release buffer 1 in third vrrhd.
         *  */
        /* release frame */
        VOISR_ReleaseFrame(pstMainWin);

        VOISR_ReceiveFrame(pstMainWin);
        nRet = VOISR_ConfigMain_FrameBuffer(pstMainWin,&pstVo->stDispInfo, pstVo->NextBtmflag);
        if(HI_FAILURE == nRet)
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }

        /* pass frame type to ...*/
        if (pstMainWin->WinModCfg.pstCurrF != HI_NULL)
        {
            pstNextFrame->u32VdecInfo[4] = pstMainWin->WinModCfg.pstCurrF->u32VdecInfo[4];
        }
        else
        {
            pstNextFrame->u32VdecInfo[4] = 0;
        }

        pstMainWin->s32SlaveIndex = 0;

        while (pstMainWin->s32SlaveIndex < pstMainWin->s32SlaveNum)
        {
            pstSlaveWin = pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex];

            if ((pstSlaveWin->bEnable != HI_TRUE) || (pstSlaveWin->hSrc == HI_NULL) )
            {
                pstMainWin->s32SlaveIndex++;
                continue;
            }

            if (HI_TRUE == pstMainWin->RepeatFlag)
            {
                bNeedRepeatFlag = pstMainWin->WinModCfg.ReFlag;
            }
            else
            {
                bNeedRepeatFlag = HI_TRUE;
            }

            if (HI_TRUE == pstSlaveWin->bIsVirtual)
            {
                if( (OptmDispInfo.u32DispRate <= 30)
                        || ((pstSlaveWin->bDrop == HI_TRUE) && (OptmDispInfo.u32DispRate > 30)))
                {
                    pstSlaveWin->bDrop = HI_FALSE;
                    nRet = VOISR_ConfigVirtualSlave_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
                }
                else if ((pstSlaveWin->bDrop == HI_FALSE) && (OptmDispInfo.u32DispRate > 30))
                {
                    pstSlaveWin->bDrop = HI_TRUE;
                    pstMainWin->s32SlaveIndex++;
                    continue;
                }
            }
            else
            {
                nRet = VOISR_ConfigSlaveActive_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
            }
            pstMainWin->s32SlaveIndex++;

            if (HI_SUCCESS == nRet)
            {
                pstMainWin->RepeatFlag = HI_FALSE;
                pstVo->bBeBusy = HI_TRUE;
                goto end;
            }
        }
        // VOISR_ReleaseFrame(pstMainWin);
        pstVo->s32WbcWinIndex++;
    }

end:

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        if (pstVo->s32ActWinNum == 0)
        {
            if (g_miracast.mirror_create_flag != 0xdeadbeef)
                VO_SetWbcEnable(HI_FALSE);
        }
        else if (pstVo->s32ActWinNum == 1)
        {
            for (i=0; i<pstVo->s32MainWinNum; i++)
            {
                if (pstVo->ahMainWin[i] != HI_NULL)
                {
                    if (pstVo->ahMainWin[i]->bActiveContain)
                    {
                        break;
                    }
                }
            }

            for (j=0; j<pstVo->ahMainWin[i]->s32SlaveNum; j++)
            {
                if (pstVo->ahMainWin[i]->hSlaveWin[j] != HI_NULL)
                {
                    if (!pstVo->ahMainWin[i]->hSlaveWin[j]->bIsVirtual)
                    {
                        break;
                    }
                }
            }

            if (!pstVo->ahMainWin[i]->hSlaveWin[j]->bEnable)
            {
                VO_SetWbcEnable(HI_FALSE);
                return;
            }

            pWinFrameBuf = &(pstVo->ahMainWin[i]->WinFrameBuf);

            pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, pWinFrameBuf->LstConfig);

            if (!pConfigFrame)
            {
                return;
            }

            if (!pConfigFrame->bNeedRelease)
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
            else if ((OPTM_VSDIsRWZBProcess(&(pConfigFrame->VdecFrameInfo)))
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
            for (i=0; i<pstVo->s32MainWinNum; i++)
            {
                if (pstVo->ahMainWin[i] != HI_NULL)
                {
                    if (pstVo->ahMainWin[i]->bActiveContain)
                    {
                        for (j=0; j<pstVo->ahMainWin[i]->s32SlaveNum; j++)
                        {
                            if (pstVo->ahMainWin[i]->hSlaveWin[j] != HI_NULL)
                            {
                                if (!pstVo->ahMainWin[i]->hSlaveWin[j]->bIsVirtual)
                                {
                                    if (pstVo->ahMainWin[i]->hSlaveWin[j]->bEnable)
                                    {
                                        bDisableWbc = HI_TRUE;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }

            if (!bDisableWbc)
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

HI_VOID VOISR_WBC1ProcessTaskFinish(HI_U32 u32Param0, HI_U32 u32Param1)
{
    #if 0
    OPTM_VO_S *pstVo;
    OPTM_WIN_S *pstMainWin;
    OPTM_WIN_S *pstSlaveWin;
    HI_S32 indexMain,nRet = HI_SUCCESS;
    HI_BOOL bNeedRepeatFlag;
    HI_BOOL bMasicStakeFlag;
    HI_U32 dispRate;
    pstVo = (OPTM_VO_S *)u32Param0;
    pstMainWin = pstVo->ahMainWin[pstVo->s32WbcWinIndex];

    dispRate = OPTM_M_GetDispRate(pstVo->enDispHalId);
    if (!pstVo->bWbc1FillTask)
    {
        /* In offline mode, it is a need to read the DIE calculation information
         * of just completed window from registers, to window,
         * and save it for the next frame of window.
         */
        OPTM_AA_GetOfflineDieInfo(pstMainWin->enLayerHalId,  &(pstMainWin->stDie));
        if ((HI_TRUE == pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex - 1]->bIsVirtual)
                && (pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex - 1]->bDrop == HI_FALSE))
        {
            pstSlaveWin = pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex - 1];
            OPTM_WBC1FB_AddWriteBuf(&(pstSlaveWin->stVirtualWbcWin));
            OPTM_WBC1FB_PutWriteBuf(&(pstSlaveWin->stVirtualWbcWin));
        }

        while(pstMainWin->s32SlaveIndex < pstMainWin->s32SlaveNum)
        {
            pstSlaveWin = (OPTM_WIN_S*)pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex];
            if ( (pstSlaveWin->bEnable != HI_TRUE) || (pstSlaveWin->hSrc == HI_NULL) )
            {
                pstMainWin->s32SlaveIndex++;
                continue;
            }

            if (HI_TRUE == pstMainWin->RepeatFlag)
            {
                bNeedRepeatFlag = pstMainWin->WinModCfg.ReFlag;
            }
            else
            {
                bNeedRepeatFlag = HI_TRUE;
            }

            if (HI_TRUE == pstSlaveWin->bIsVirtual)
            {
                if( (dispRate <= 30)
                        || ((pstSlaveWin->bDrop == HI_TRUE) && (dispRate > 30)))
                {
                    pstSlaveWin->bDrop = HI_FALSE;
                    nRet = VOISR_ConfigVirtualSlave_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
                }
                else if ((pstSlaveWin->bDrop == HI_FALSE) && (dispRate > 30))
                {
                    pstSlaveWin->bDrop = HI_TRUE;
                    pstMainWin->s32SlaveIndex++;
                    continue;
                }
            }
            else
            {

                nRet = VOISR_ConfigSlaveActive_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
            }

            pstMainWin->s32SlaveIndex++;
            if (HI_SUCCESS == nRet)
            {
                return;
            }
        }
        pstVo->s32WbcWinIndex++;
        //VOISR_ReleaseFrame(pstMainWin);
    }
    else
    {
        /* mask acm */
        OPTM_M_VO_SetAcmMask(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

        /* mask acc */
        OPTM_M_VO_SetAccMask(HAL_DISP_LAYER_VIDEO1, HI_FALSE);

        /* mask csc */
        OPTM_M_VO_SetCscEnable(HAL_DISP_LAYER_VIDEO1, HI_TRUE);

        pstVo->bWbc1FillTask = HI_FALSE;
    }

    /* if all sub-windows of last main window completed */
    while(pstVo->s32WbcWinIndex < pstVo->s32MainWinNum)
    {
        pstMainWin = pstVo->ahMainWin[pstVo->s32WbcWinIndex];
        if ( (pstMainWin->bEnable != HI_TRUE) || (pstMainWin->hSrc == HI_NULL) )
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }
        if(HI_NULL == pstVo->psWbcFrame && HI_TRUE == pstMainWin->bActiveContain)
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }

        /*  customer problem: HSCP201203198196
         *   |(1,2,3,B)_________________|(2,3,4,T)__________________| (2,3,4,B)________________|(3,4,5,T)
         *
         *   if video play like up, normal we release frame 1 in third vtthd (2,3,4,B), there is no problem
         *   but if the (2,3,4) buffers is be played once, and release buffer 1 in second vtthd, SD display
         *   will be bad, because in second vtthd , sd display buffer is (1,2,3), but buffer 1 is released.
         *   so we release buffer 1 in third vrrhd.
         *  */
        /* release frame */
        VOISR_ReleaseFrame(pstMainWin);

        VOISR_ReceiveFrame(pstMainWin);
        nRet = VOISR_ConfigMain_FrameBuffer(pstMainWin,&pstVo->stDispInfo, pstVo->NextBtmflag);
        if(HI_FAILURE == nRet)
        {
            pstVo->s32WbcWinIndex++;
            continue;
        }

        /* multy window, set  frame type to NORMAL.*/
        if (pstVo->psWbcFrame != HI_NULL)
        {
            pstVo->psWbcFrame->u32VdecInfo[4] = 0;
        }
        pstMainWin->s32SlaveIndex = 0;
        while(pstMainWin->s32SlaveIndex < pstMainWin->s32SlaveNum)
        {
            pstSlaveWin = pstMainWin->hSlaveWin[pstMainWin->s32SlaveIndex];
            if(NULL == pstSlaveWin)
            {
                pstMainWin->s32SlaveIndex++;
                continue;
            }
            if ( (pstSlaveWin->bEnable != HI_TRUE) || (pstSlaveWin->hSrc == HI_NULL) )
            {
                pstMainWin->s32SlaveIndex++;
                continue;
            }
            if(HI_TRUE == pstMainWin->RepeatFlag)
            {
                bNeedRepeatFlag = pstMainWin->WinModCfg.ReFlag;
            }else
            {
                bNeedRepeatFlag = HI_TRUE;
            }
            if(HI_TRUE == pstSlaveWin->bIsVirtual)
            {
                if( (dispRate <= 30)
                        || ((pstSlaveWin->bDrop == HI_TRUE) && (dispRate > 30)))
                {
                    pstSlaveWin->bDrop = HI_FALSE;
                    nRet = VOISR_ConfigVirtualSlave_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
                }
                else if ((pstSlaveWin->bDrop == HI_FALSE) && (dispRate > 30))
                {
                    pstSlaveWin->bDrop = HI_TRUE;
                    pstMainWin->s32SlaveIndex++;
                    continue;
                }
            }
            else
            {
                nRet = VOISR_ConfigSlaveActive_WBC1FrameBuffer(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
            }

            pstMainWin->s32SlaveIndex++;

            if(HI_SUCCESS == nRet)
            {
                pstMainWin->RepeatFlag = HI_FALSE;
                return;
            }
        }
        //VOISR_ReleaseFrame(pstMainWin);
        pstVo->s32WbcWinIndex++;
    }

    if(0 == pstVo->s32ActWinNum)
    {
        bMasicStakeFlag = HI_TRUE;
    }
    else
    {
        bMasicStakeFlag = HI_FALSE;
    }

    if(pstVo->s32WbcWinIndex == pstVo->s32MainWinNum)
    {
        if (pstVo->s32ActWinNum)
        {
            OPTM_WBC1FB_AddWriteBuf(pstVo->pstWbcBuf);
            OPTM_WBC1FB_PutWriteBuf(pstVo->pstWbcBuf);
        }

        for(indexMain = 0 ; indexMain < pstVo->s32MainWinNum ; indexMain++ )
        {
            pstMainWin = pstVo->ahMainWin[indexMain];
            pstMainWin->RepeatFlag  = HI_TRUE;
        }
        pstVo->bBeBusy = HI_FALSE;
        pstVo->s32WbcWinIndex = 0;
        return;
    }
    #endif
}

#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
/* attention for dealing that whether the main window of virtual window is virtual main window.
 * if so, and this window is the first window created,
 * then virtual window return false.
 */
HI_S32 VO_GetWindowVirtual(HI_HANDLE hWin, HI_BOOL *pbEnable)
{
    OPTM_WIN_S *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_CHECK_PTR(pbEnable);

    D_VO_GET_WIN_HANDLE(hWin, pstWin);
    if(HI_TRUE == pstWin->bIsVirtual)
        *pbEnable = HI_TRUE;
    else
        *pbEnable = HI_FALSE;

    return HI_SUCCESS;
}

/*  acquire buf data of a wbc Frame */
HI_S32 Vou_AcquireFrame(HI_S32 hWin, HI_UNF_VO_FRAMEINFO_S *Frameinfo)
{
    OPTM_WIN_S                   *pstWin;
    HI_UNF_VO_FRAMEINFO_S        *pNextFrame;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if ((pstWin->bEnable != HI_TRUE)
            ||(pstWin->bIsVirtual != HI_TRUE)
       )
    {
        return HI_FAILURE;
    }

    pNextFrame = OPTM_WBC1FB_GetReadBuf(&(pstWin->stVirtualWbcWin), HI_FALSE);
    if (!pNextFrame)
    {
        /*  search  failure, to say no data in buffer, return  */
        return HI_FAILURE;
    }

    memcpy(Frameinfo, pNextFrame, sizeof(HI_UNF_VO_FRAMEINFO_S));

    return HI_SUCCESS;
}
#endif

/*  release buf pointer of wbc frame */
#if 0
HI_S32 Vou_ReleaseFrame(HI_S32 hWin, HI_UNF_VO_FRAMEINFO_S *Frameinfo)
{
    OPTM_WIN_S             *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(hWin, pstWin);

    if ((pstWin->bEnable != HI_TRUE)
            ||(pstWin->bIsVirtual != HI_TRUE)
       )
    {
        return HI_FAILURE;
    }

    OPTM_WBC1FB_PutReadBuf(&(pstWin->stVirtualWbcWin));

    return HI_SUCCESS;
}

HI_S32 Vou_UsrAcquireFrame(HI_HANDLE Handle,HI_UNF_VI_BUF_S  *pstFrame)
{
    OPTM_WIN_S                   *pstWin;
    HI_UNF_VO_FRAMEINFO_S        *pNextFrame;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(Handle, pstWin);

    if ((pstWin->bEnable != HI_TRUE)
            ||(pstWin->bIsVirtual != HI_TRUE)
       )
    {
        return HI_FAILURE;
    }

    pNextFrame = OPTM_WBC1FB_GetReadBuf(&(pstWin->stVirtualWbcWin), HI_FALSE);
    if (!pNextFrame)
    {
        /*  search  failure, to say no data in buffer, return  */
        return HI_FAILURE;
    }

    pstFrame->u32FrameIndex = pNextFrame->u32FrameIndex;
    pstFrame->enPixelFormat = pNextFrame->enVideoFormat;
    pstFrame->enField = pNextFrame->enFieldMode;
    pstFrame->pVirAddr[0] = (HI_VOID*)pNextFrame->u32LstYAddr;
    pstFrame->pVirAddr[1] = (HI_VOID*)pNextFrame->u32LstYCddr;
    pstFrame->pVirAddr[2] = (HI_VOID*)pNextFrame->u32LstYCddr;
    pstFrame->u32DownScaled = pNextFrame - &pstWin->stVirtualWbcWin.stFrame[0];
    pstFrame->u32Height = pNextFrame->u32Height;
    pstFrame->u32PhyAddr[0] = pNextFrame->u32YAddr;
    pstFrame->u32PhyAddr[1] = pNextFrame->u32CAddr;
    pstFrame->u32PhyAddr[2] = pNextFrame->u32CAddr;
    pstFrame->u32PtsMs = pNextFrame->u32Pts;
    pstFrame->u32Stride[0] = pNextFrame->u32YStride;
    pstFrame->u32Stride[1] = pNextFrame->u32YStride;
    pstFrame->u32Stride[2] = pNextFrame->u32YStride;
    pstFrame->u32Width = pNextFrame->u32Width;

    return HI_SUCCESS;
}

HI_S32 Vou_UsrReleaseFrame(HI_HANDLE Handle)
{
    OPTM_WIN_S             *pstWin;

    D_VO_CHECK_DEVICE_OPEN();
    D_VO_GET_WIN_HANDLE(Handle, pstWin);

    if ((pstWin->bEnable != HI_TRUE)
            ||(pstWin->bIsVirtual != HI_TRUE)
       )
    {
        return HI_FAILURE;
    }

    OPTM_WBC1FB_PutReadBuf(&(pstWin->stVirtualWbcWin));

    return HI_SUCCESS;
}


HI_S32 VOISR_ConfigSlaveActive_WBC1FrameBuffer_standalone(OPTM_WIN_S* pstMainWin,OPTM_WIN_S* pstDestWin,HI_BOOL bNeedRepeat)
{
    HI_UNF_VO_FRAMEINFO_S  *pstNextFrame, tpframe;
    OPTM_VO_S              *pstVo;
    OPTM_M_DISP_INFO_S     OptmDispInfo;
    OPTM_M_CFG_S             *pWinModCfg;
    HI_U32 vn1, vn2;
    HI_BOOL tmpDieFlag;

    OPTM_HAL_GetVersion(&vn1, &vn2);

    pstVo = (OPTM_VO_S*)pstMainWin->hVoHandle;
    pWinModCfg = &(pstDestWin->WinModCfg_standalone);
    tmpDieFlag = pstDestWin->WinModCfg_standalone.DoDeiFlag;

    pstNextFrame = pstVo->psWbcFrame;

    OptmDispInfo = pstVo->stDispInfo;

    //    if (OptmDispInfo.bProgressive == HI_TRUE) {
    if (pstVo->NextBtmflag == 2) {
        Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, HAL_DISP_PROGRESSIVE);
    }
    else {
        Vou_SetWbcOutIntf(HAL_DISP_LAYER_WBC1, (pstVo->NextBtmflag ? HAL_DISP_BOTTOM : HAL_DISP_TOP));
    }

    Vou_SetWbcStride(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YStride);

    if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == pstNextFrame->enVideoFormat) {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 0);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == pstNextFrame->enVideoFormat) {
        Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC1, 1);
    }

    /* we shoule prepare HI_UNF_VO_FRAMEINFO_S for VAD process*/
    memcpy(&tpframe, pstNextFrame, sizeof(HI_UNF_VO_FRAMEINFO_S));
    memcpy(pstNextFrame, pstMainWin->WinModCfg.pstCurrF, sizeof(HI_UNF_VO_FRAMEINFO_S));
    //mv300 compress flag should not be copy
    pstNextFrame->u32CompressFlag = 0;
    pstNextFrame->u32YAddr = tpframe.u32YAddr;
    pstNextFrame->u32YStride = tpframe.u32YStride;
    /* because wbc1 out put format is YUV_PACKAGE, so Caddr is useless */
    pstNextFrame->u32CAddr = tpframe.u32YAddr;
    pstNextFrame->u32CStride = tpframe.u32CStride;
    pstNextFrame->enVideoFormat = tpframe.enVideoFormat;
    pstNextFrame->enSampleType = (pstVo->NextBtmflag == 2) ? 1 : 0;
    if (pstVo->NextBtmflag == 2)
        pstNextFrame->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
    else
        pstNextFrame->enFieldMode = pstVo->NextBtmflag ? HI_UNF_VIDEO_FIELD_BOTTOM : HI_UNF_VIDEO_FIELD_TOP;

    /* we get info from window attr to fill in pWinModCfg struct */
    memcpy(pWinModCfg, &(pstMainWin->WinModCfg),sizeof(OPTM_M_CFG_S));

    /* in stand alone mode ,we get the shadow window input info from user window */
#if 0
    g_stShadow.enInAspectRatio = pWinModCfg->pstCurrF->enAspectRatio;
    g_stShadow.enOutAspectCvrs= pstDestWin->WinModCfg.enCvsMode;
#endif
    pWinModCfg->stInRect.s32X = 0;
    pWinModCfg->stInRect.s32Y = 0;
    pWinModCfg->stInRect.s32Height = pWinModCfg->pstCurrF->u32DisplayHeight;
    pWinModCfg->stInRect.s32Width = pWinModCfg->pstCurrF->u32DisplayWidth;

    pWinModCfg->stOutRect = pWinModCfg->stInRect;

#if 0
    if (((OPTM_V101_VERSION1 == vn1) && (OPTM_V101_VERSION2 == vn2))
            && ((OptmDispInfo.enFmt >= HI_UNF_ENC_FMT_PAL)&& (OptmDispInfo.enFmt <= HI_UNF_ENC_FMT_SECAM_COS)))
    {
        pWinModCfg->stOutRect.s32X *= 2;
        pWinModCfg->stOutRect.s32Width *= 2;
        pstNextFrame->u32Width *= 2;
        pstNextFrame->u32DisplayWidth *= 2;
        pstNextFrame->u32DisplayCenterX *=2;
    }
#endif
    pWinModCfg->enOutRatio = pWinModCfg->pstCurrF->enAspectRatio;
    pWinModCfg->enCvsMode = HI_UNF_ASPECT_CVRS_IGNORE;

    OPTM_M_VO_SetEnable(HAL_DISP_LAYER_VIDEO1, pstDestWin->bEnable);

    Vou_SetWbcAddr(HAL_DISP_LAYER_WBC1, pstNextFrame->u32YAddr);

    HAL_DISP_SetLayerDispRect(HAL_DISP_LAYER_VIDEO1, pWinModCfg->stOutRect);

    pWinModCfg->enDispHalId = pstDestWin->enDispHalId;

    pWinModCfg->u32CurrWinNumber = pstDestWin->s32SlaveIndex;

    pWinModCfg->ReFlag = bNeedRepeat;

    /*  set image output */
    OPTM_M_VO_ConfigFrame(pWinModCfg, HAL_DISP_LAYER_VIDEO1, &(pstMainWin->stDetInfo), HI_TRUE);

    pstDestWin->WinModCfg_standalone.DoDeiFlag = tmpDieFlag ;
    return HI_SUCCESS;
}
#endif

HI_VOID VOISR_WBC1ProcessStart_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{
    #if 0
    OPTM_M_DISP_INFO_S     OptmDispInfo;
    HI_UNF_VO_FRAMEINFO_S  *pstNextFrame;
    OPTM_VO_S              *pstVo;
    OPTM_WIN_S             *pstMainWin;
    OPTM_WIN_S             *pstSlaveWin = HI_NULL;
    OPTM_DISP_S            *pOptmDisp;
    static HI_BOOL         WinChange = HI_FALSE;
    HI_S32                 index,nRet = HI_SUCCESS;
    HI_BOOL                bNeedRepeatFlag = HI_FALSE;
    OPTM_FB_S              *pWinFrameBuf;
    OPTM_FRAME_S           *pConfigFrame;
    OPTM_MOSAIC_WIN_S          *pMosaicWin;
    HI_S32 taskflag = 0;

    pstVo = (OPTM_VO_S *)u32Param0;
    pMosaicWin = (OPTM_MOSAIC_WIN_S *)u32Param1;

    D_DISP_GET_HANDLE(pstVo->enUnfDisp, pOptmDisp);

    if (g_VoSuspend)
        return;

    if (pstVo->bEnable != HI_TRUE)
        return;

    if (pstVo->bMasked == HI_TRUE) {
        OPTM_WBC1FB_Reset(&(g_stShadow.stWbcBuf_standalone));
        return;
    }

    if (pstVo->bBeBusy == HI_TRUE) {
        pstVo->u32WbcUnload++;
        HI_INFO_VO("busy.");
        return;
    }

    /* update windows based on flags */
    if (pstVo->unUpFlag.u32Value != 0) {

        if (pstVo->unUpFlag.Bits.Win != 0) {

            if (pstVo->s32NewActWinNum != pstVo->s32ActWinNum) {
                WinChange = HI_TRUE;
                pstVo->s32ActWinNum = pstVo->s32NewActWinNum;
            }

            pstVo->s32MainWinNum = pstVo->s32NewMainWinNum;
            memcpy(pstVo->ahMainWin,pstVo->ahNewMainWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_WIN_CHANNEL);

            for(index = 0;index < pstVo->s32MainWinNum;index++) {
                pstMainWin = pstVo->ahMainWin[index];
                pstMainWin->s32SlaveNum = pstMainWin->s32SlaveNewNum;
                memcpy(pstMainWin->hSlaveWin,pstMainWin->hSlaveNewWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_SLAVE_CHANNEL);
            }
            pstVo->unUpFlag.Bits.Win = 0;
        }

        if (pstVo->unUpFlag.Bits.OutRect != 0)
            pstVo->unUpFlag.Bits.OutRect = 0;

        if (pstVo->unUpFlag.Bits.Order != 0) {
            pstVo->s32MainWinNum = pstVo->s32NewMainWinNum;
            memcpy(pstVo->ahMainWin,pstVo->ahNewMainWin,sizeof(OPTM_WIN_S*)*OPTM_VO_MAX_WIN_CHANNEL);
            pstVo->unUpFlag.Bits.Order = 0;
        }
    }

    OPTM_M_GetDispInfo(pstVo->enDispHalId, &OptmDispInfo);
    pstVo->stDispInfo = OptmDispInfo;


    pstNextFrame = OPTM_WBC1FB_GetWriteBuf(pstVo->pstWbcBuf);

    pstVo->psWbcFrame = pstNextFrame;

    if (HI_NULL == pstVo->psWbcFrame) {
        goto end;
    }

    pstMainWin = pstVo->ahMainWin[0];
    if (pstMainWin == HI_NULL)
        goto end;


    if ((pstMainWin->bEnable != HI_TRUE) || (pstMainWin->hSrc == HI_NULL) )
        goto end;

    pstSlaveWin = pstMainWin->hSlaveWin[0];

    if (pstSlaveWin == HI_NULL)
        goto end;

    if ((pstSlaveWin->bEnable != HI_TRUE) || (pstSlaveWin->hSrc == HI_NULL) )
        goto end;

    /*  acquire display information of next field */
    if (HI_TRUE != pstSlaveWin->WinModCfg_standalone.DoDeiFlag) {
        if (OptmDispInfo.bProgressive != HI_TRUE) {
            pstVo->NextBtmflag = OPTM_M_GetDispBtmFlag(pstVo->enDispHalId);
        }
        else
            pstVo->NextBtmflag = 2;
    }
    else
        pstVo->NextBtmflag = 2;

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d NextBtmflag %d \r\n", __func__, __LINE__, pstVo->NextBtmflag);
    /* remember slave win for mosaic win in standalone mode
     *  pMosaicWin->pstSlaveWin for VAD process ,g_stShadow.pstSlaveWin
     *  for VSD process*/
    pMosaicWin->pstSlaveWin = pstMainWin->hSlaveWin[0];
    g_stShadow.pstSlaveWin = pstMainWin->hSlaveWin[0];

    VOISR_ReleaseFrame(pstMainWin);

    VOISR_ReceiveFrame(pstMainWin);
    nRet = VOISR_ConfigMain_FrameBuffer(pstMainWin,&pstVo->stDispInfo, pstVo->NextBtmflag);
    if(HI_FAILURE == nRet) {
        goto end;
    }

    /* pass frame type to ...*/
    if (pstMainWin->WinModCfg.pstCurrF != HI_NULL)
        pstNextFrame->u32VdecInfo[4] = pstMainWin->WinModCfg.pstCurrF->u32VdecInfo[4];
    else
        pstNextFrame->u32VdecInfo[4] = 0;


    if (HI_TRUE == pstMainWin->RepeatFlag)
        bNeedRepeatFlag = pstMainWin->WinModCfg.ReFlag;
    else
        bNeedRepeatFlag = HI_TRUE;

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d flag %d \r\n", __func__, __LINE__, pstSlaveWin->WinModCfg_standalone.DoDeiFlag);
    /* if user change window's outrect,we should captuer this change,pass it to vad mosaic window */
    nRet = VOISR_ConfigSlaveActive_WBC1FrameBuffer_standalone(pstMainWin,pstSlaveWin,bNeedRepeatFlag);
    if (HI_SUCCESS == nRet) {

        pstMainWin->RepeatFlag = HI_FALSE;
        pstVo->bBeBusy = HI_TRUE;
        taskflag = 1;
        goto end;
    }

end:
    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT) {

        if (pstVo->s32ActWinNum == 0) {
            VO_SetWbcEnable(HI_FALSE);
            return;
        }
        else if (pstVo->s32ActWinNum == 1) {

            if (!pstVo->ahMainWin[0]->hSlaveWin[0]->bEnable) {
                VO_SetWbcEnable(HI_FALSE);
                return;
            }

            pWinFrameBuf = &(pstVo->ahMainWin[0]->WinFrameBuf);
            pConfigFrame = OPTM_FB_GetSpecify(pWinFrameBuf, pWinFrameBuf->LstConfig);

            if (!pConfigFrame){
                goto end2;
            }

            if (!pConfigFrame->bNeedRelease) {
                goto end2;
            }

            if ((!OPTM_VSDIsRWZBProcess(&(pConfigFrame->VdecFrameInfo)))
                    &&((g_stShadow.bWbcMode != HI_TRUE) || (!g_stShadow.bEnable))) {

                VO_SetWbcEnable(HI_FALSE);
                VO_SwitchVoAttach(HI_TRUE, pstVo);
                VO_SetWbcEnable(HI_TRUE);
                WinChange = HI_FALSE;

            }
            else if ((OPTM_VSDIsRWZBProcess(&(pConfigFrame->VdecFrameInfo)))
                    &&((g_stShadow.bWbcMode != HI_FALSE) || (!g_stShadow.bEnable))) {

                VO_SetWbcEnable(HI_FALSE);
                VO_SwitchVoAttach(HI_FALSE, pstVo);
                VO_SetWbcEnable(HI_TRUE);
                WinChange = HI_FALSE;

            }
        }
    }
end2:
    if (taskflag)
    {
        if (g_stShadow.bWbcMode == HI_TRUE) {
            VOISR_Wbc0Isr_standalone((HI_U32)&(g_stShadow), HI_NULL);
        }
        if (HI_NULL == pstSlaveWin)
            return;
        /* we must recorder the dei flag here ,if we recorder in OPTM_M_VO_ConfigFrame ,wbc0 will halt when change from not do die to doing die */
        pstSlaveWin->WinModCfg_standalone.DoDeiFlag = pstSlaveWin->WinModCfg_standalone.DoDeiFlag_tmp;
        /*we must config wbc0 with wbc1 first, and then set vhd update  */
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_VIDEO1);
    }
#endif
    return;
}



HI_VOID VOISR_WBC1ProcessTaskFinish_standalone(HI_U32 u32Param0, HI_U32 u32Param1)
{
    #if 0
    OPTM_VO_S *pstVo;
    OPTM_WIN_S *pstMainWin;
    HI_S32 indexMain;
    OPTM_SHADOW_WIN_S    *pstShadow;

    pstVo = (OPTM_VO_S *)u32Param0;
    pstShadow = (OPTM_SHADOW_WIN_S *)u32Param1;
    pstMainWin = pstVo->ahMainWin[0];

    if (pstVo->s32ActWinNum) {
        VOISR_ReleaseFrame(pstMainWin);
        OPTM_WBC1FB_AddWriteBuf(pstVo->pstWbcBuf);
        OPTM_WBC1FB_PutWriteBuf(pstVo->pstWbcBuf);
#if 0
        if (HI_NULL != pstShadow->pstwbc1frame)
        {
            OPTM_WBC1FB_AddWriteBuf(&(pstShadow->stWbcBuf_standalone));
            OPTM_WBC1FB_PutWriteBuf(&(pstShadow->stWbcBuf_standalone));
        }
#endif
    }

    for(indexMain = 0 ; indexMain < pstVo->s32MainWinNum ; indexMain++ ) {
        pstMainWin = pstVo->ahMainWin[indexMain];
        pstMainWin->RepeatFlag  = HI_TRUE;
    }

    pstVo->bBeBusy = HI_FALSE;
    #endif
    return;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

