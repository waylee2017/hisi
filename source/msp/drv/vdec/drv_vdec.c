/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_vdec_intf_k.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2006/05/17
  Description   :
  History       :
  1.Date        : 2006/05/17
    Author      : g45345
    Modification: Created file
  2.Date        : 2012/08/16
    Author      : l00185424
    Modification: Reconstruction

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_unf_avplay.h"
#include "hi_error_mpi.h"

/* Drv headers */
#include "hi_kernel_adapt.h"
#include "drv_demux_ext.h"
#include "drv_vdec_ext.h"
#include "vfmw.h"
#include "vfmw_ext.h"

/* Local headers */
#include "drv_vdec_private.h"
#include "drv_vdec_pts_recv.h"
#include "drv_vdec_buf_mng.h"
#include "drv_vdec_usrdata.h"
#include "hi_drv_vdec.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

#define VDH_IRQ_NUM (38 + 32)            /*interrupt vdector*/
#define MCE_INVALID_FILP (0xffffffff)
#define VDEC_NAME "HI_VDEC"
#define VDEC_IFRAME_MAX_READTIMES 2
#define DNR_CAP_TIMEOUT 50

#define VDEC_CHAN_STRMBUF_ATTACHED(pstChan) \
    (((HI_INVALID_HANDLE != pstChan->hStrmBuf) && (HI_INVALID_HANDLE == pstChan->hDmxVidChn)) \
     || ((HI_INVALID_HANDLE == pstChan->hStrmBuf) && (HI_INVALID_HANDLE != pstChan->hDmxVidChn)))

#define VDEC_CHAN_TRY_USE_DOWN(pstEnt) \
    s32Ret = VDEC_CHAN_TRY_USE_DOWN_HELP((pstEnt));

#define VDEC_CHAN_USE_UP(pstEnt) \
    VDEC_CHAN_USE_UP_HELP((pstEnt));

#define VDEC_CHAN_RLS_DOWN(pstEnt, time) \
    s32Ret = VDEC_CHAN_RLS_DOWN_HELP((pstEnt), (time));

#define VDEC_CHAN_RLS_UP(pstEnt) \
    VDEC_CHAN_RLS_UP_HELP((pstEnt));

#define HI_VDEC_SVDEC_VDH_MEM (0x2800000)
#define HI_VDEC_REF_FRAME_MIN (4)
#define HI_VDEC_REF_FRAME_MAX (10)
#define HI_VDEC_DISP_FRAME_MIN (3)
#define HI_VDEC_DISP_FRAME_MAX (12)
#if (1 == HI_VDEC_HD_SIMPLE)
#define HI_VDEC_BUFFER_FRAME (1)
#else
#define HI_VDEC_BUFFER_FRAME (2)
#endif

#define HI_VDEC_TREEBUFFER_MIN (11)

#define HI_VDEC_RESOCHANGE_MASK (0x1)
#define HI_VDEC_CLOSEDEI_MASK   (0x2) /* Close deinterlace */

//#define HI_VDEC_DEC_FRAME_SIZE_1080P    (3800 * 1024)
//#define HI_VDEC_DIS_FRAME_SIZE_1080P    (3300 * 1024)
#define HI_VDEC_EXTR_SIZE    (50 * 1024)




/*************************** Structure Definition ****************************/

/* Channel entity */
typedef struct tagVDEC_CHAN_ENTITY_S
{
    VDEC_CHANNEL_S     *pstChan;        /* Channel structure pointer */
    HI_U32              u32File;        /* File handle */
    HI_BOOL             bUsed;          /* Busy or free */
    atomic_t            atmUseCnt;      /* Channel use count, support multi user */
    atomic_t            atmRlsFlag;     /* Channel release flag */
    wait_queue_head_t   stRlsQue;       /* Release queue */
    EventCallBack       eCallBack;      /*for opentv5*/
    GetDmxHdlCallBack   DmxHdlCallBack; /*for opentv5*/
    HI_U32              u32DynamicSwitchDnrEn; /*Dynamic Switch DNR flag*///l00273086
} VDEC_CHAN_ENTITY_S;

/* Global parameter */
typedef struct
{
    HI_U32                  u32ChanNum;     /* Record vfmw channel num */
    VDEC_CAP_S              stVdecCap;      /* Vfmw capability */
    VDEC_CHAN_ENTITY_S      astChanEntity[HI_VDEC_MAX_INSTANCE];   /* Channel parameter */
    struct semaphore        stSem;          /* Mutex */
    struct timer_list       stTimer;
    atomic_t                atmOpenCnt;     /* Open times */
    HI_BOOL                 bReady;         /* Init flag */
    HI_UNF_VCODEC_ATTR_S    stDefCfg;       /* Default channel config */
    VDEC_REGISTER_PARAM_S  *pstProcParam;   /* VDEC Proc functions */
    DEMUX_EXPORT_FUNC_S    *pDmxFunc;       /* Demux extenal functions */
    VFMW_EXPORT_FUNC_S     *pVfmwFunc;      /* VFMW extenal functions */
    FN_VDEC_Watermark       pfnWatermark;   /* Watermark function */
    VDEC_EXPORT_FUNC_S      stExtFunc;      /* VDEC extenal functions */
} VDEC_GLOBAL_PARAM_S;

/***************************** Global Definition *****************************/
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
#define VDH_MMZ_SIZE ((HI_VDEC_DEC_FRAME_SIZE * (HI_VDEC_MAX_REF_FRAME + HI_VDEC_MAX_DISP_FRAME)) + HI_VDEC_EXTR_SIZE)
MMZ_BUFFER_S g_stVDHMMZ = {0, 0, 0};
HI_BOOL g_bVdecPreVDHMMZUsed = HI_FALSE;
HI_U32 g_VdecPreVDHMMZUsedSize = 0;
VDEC_PREMMZ_NODE_S st_VdecChanPreUsedMMZInfo[5];//HI_VDEC_MAX_INSTANCE_NEW
HI_U32 g_VdecPreMMZNodeNum = 1;
#endif

/***************************** Static Definition *****************************/
static HI_S32 RefFrameNum  = HI_VDEC_MAX_REF_FRAME;
static HI_S32 DispFrameNum = HI_VDEC_MAX_DISP_FRAME;
static HI_S32 EnVcmp = 1;
static HI_S32 En2d = 0;

static HI_S32  VDEC_RegChanProc(HI_S32 s32Num);
static HI_VOID VDEC_UnRegChanProc(HI_S32 s32Num);
static HI_VOID VDEC_ConvertFrm(HI_UNF_VCODEC_TYPE_E enType, VDEC_CHANNEL_S *pstChan,
                               IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame);

static VDEC_GLOBAL_PARAM_S s_stVdecDrv =
{
    .atmOpenCnt = ATOMIC_INIT(0),
    .bReady = HI_FALSE,
    .stDefCfg =
    {
        .enType         = HI_UNF_VCODEC_TYPE_H264,
        .enMode         = HI_UNF_VCODEC_MODE_NORMAL,
        .u32ErrCover    = 100,
        .bOrderOutput   = 0,
        .u32Priority    = 15
    },
    .pstProcParam = HI_NULL,
    .pDmxFunc = HI_NULL,
    .pVfmwFunc = HI_NULL,
    .pfnWatermark = HI_NULL,
    .stExtFunc =
    {
        .pfnVDEC_RecvFrm     = (HI_VOID *)HI_DRV_VDEC_RecvFrmBuf,
        .pfnVDEC_RlsFrm      = (HI_VOID *)HI_DRV_VDEC_RlsFrmBuf,
        .pfnVDEC_RlsFrmWithoutHandle = (HI_VOID *)HI_DRV_VDEC_RlsFrmBufWithoutHandle,
        .pfnVDEC_GetEsBuf    = (HI_VOID *)HI_DRV_VDEC_GetEsBuf,
        .pfnVDEC_PutEsBuf    = (HI_VOID *)HI_DRV_VDEC_PutEsBuf,
        .pfnVDEC_DNRCapture   =(HI_VOID *)HI_DRV_VDEC_DNR_Capture,
        .pfnVDEC_SetRWZBState = (HI_VOID *)HI_DRV_VDEC_SET_RWZB_State,
        .pfnVDEC_ReportDmxBufRls = (HI_VOID *)HI_DRV_VDEC_ReportDmxBufRls
    }
};

typedef HI_S32 (*FN_IOCTL_HANDLER)(struct file *filp, unsigned int cmd, void *arg);
typedef struct
{
    HI_U32 Code;
    FN_IOCTL_HANDLER pHandler;
}IOCTL_COMMAND_NODE;

typedef HI_S32 (*FN_VDEC_EVENT_HANDLER)(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs);
typedef struct
{
    HI_U32 Code;
    FN_VDEC_EVENT_HANDLER pHandler;
}VDECEVENT_COMMAND_NODE;

/*********************************** Code ************************************/

static VID_STD_E VDEC_CodecTypeUnfToFmw(HI_UNF_VCODEC_TYPE_E unfType);
HI_S32 HI_DRV_VDEC_ChanStart(HI_HANDLE hHandle);
HI_S32 HI_DRV_VDEC_ChanStop(HI_HANDLE hHandle);
static HI_S32 VDEC_Chan_Reset(HI_HANDLE hHandle, HI_DRV_VDEC_RESET_TYPE_E enType);
static HI_S32 VDEC_SetAttr(VDEC_CHANNEL_S *pstChan);

#define VDEC_ASSERT_RETURN(Condition, RetValue)                        \
    do                                                                 \
    {                                                                  \
        if (!Condition)                                                \
        {                                                              \
            HI_ERR_VDEC("[%s %d]assert warning\n",__func__,__LINE__);  \
            return RetValue;                                           \
        }                                                              \
    }while(0)

#if (VDEC_DEBUG == 1)
static HI_VOID VDEC_PrintImage(IMAGE *pstImg)
{
    HI_FATAL_VDEC("<0>top_luma_phy_addr = 0x%08x \n", pstImg->top_luma_phy_addr);
    HI_FATAL_VDEC("<0>top_chrom_phy_addr = 0x%08x \n", pstImg->top_chrom_phy_addr);
    HI_FATAL_VDEC("<0>btm_luma_phy_addr = 0x%08x \n", pstImg->btm_luma_phy_addr);
    HI_FATAL_VDEC("<0>btm_chrom_phy_addr = 0x%08x \n", pstImg->btm_chrom_phy_addr);
    HI_FATAL_VDEC("<0>disp_width = %d \n", pstImg->disp_width);
    HI_FATAL_VDEC("<0>disp_height = %d \n", pstImg->disp_height);
    HI_FATAL_VDEC("<0>disp_center_x = %d \n", pstImg->disp_center_x);
    HI_FATAL_VDEC("<0>disp_center_y = %d \n", pstImg->disp_center_y);
    HI_FATAL_VDEC("<0>error_level = %d \n", pstImg->error_level);
    HI_FATAL_VDEC("<0>seq_cnt = %d \n", pstImg->seq_cnt);
    HI_FATAL_VDEC("<0>seq_img_cnt = %d \n", pstImg->seq_img_cnt);
    HI_FATAL_VDEC("<0>PTS = %lld \n", pstImg->PTS);
}

static HI_VOID VDEC_PrintFrmInfo(HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    HI_FATAL_VDEC("<0>u32Height = %d\n", pstFrame->u32Height);
    HI_FATAL_VDEC("<0>u32Width = %d\n", pstFrame->u32Width);
    HI_FATAL_VDEC("<0>u32DisplayWidth = %d\n", pstFrame->u32DisplayWidth);
    HI_FATAL_VDEC("<0>u32DisplayHeight = %d\n", pstFrame->u32DisplayHeight);
    HI_FATAL_VDEC("<0>u32DisplayCenterX = %d\n", pstFrame->u32DisplayCenterX);
    HI_FATAL_VDEC("<0>u32DisplayCenterY = %d\n", pstFrame->u32DisplayCenterY);
}
#endif

static inline HI_S32  VDEC_CHAN_TRY_USE_DOWN_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    atomic_inc(&pstEnt->atmUseCnt);

    if (atomic_read(&pstEnt->atmRlsFlag) != 0)
    {
        atomic_dec(&pstEnt->atmUseCnt);

        if (atomic_read(&pstEnt->atmRlsFlag) != 1)
        {
            HI_ERR_VDEC("Use lock err\n");
            //while (1)
            //{}
        }

        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_USE_UP_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    if (atomic_dec_return(&pstEnt->atmUseCnt) < 0)
    {
        HI_ERR_VDEC("Use unlock err\n");
        //while (1)
        //{}
    }

    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_RLS_DOWN_HELP(VDEC_CHAN_ENTITY_S *pstEnt, HI_U32 time)
{
    HI_S32 s32Ret;

    /* Realse all */
    /* CNcomment:多个进行释放 */
    if (atomic_inc_return(&pstEnt->atmRlsFlag) != 1)
    {
        atomic_dec(&pstEnt->atmRlsFlag);
        return HI_FAILURE;
    }

    if (atomic_read(&pstEnt->atmUseCnt) != 0)
    {
        if (HI_INVALID_TIME == time)
        {
            s32Ret = wait_event_interruptible(pstEnt->stRlsQue, (atomic_read(&pstEnt->atmUseCnt) == 0));
        }
        else
        {
            s32Ret = wait_event_interruptible_timeout(pstEnt->stRlsQue, (atomic_read(&pstEnt->atmUseCnt) == 0), time);
        }

        if (s32Ret == 0)
        {
            return HI_SUCCESS;
        }
        else
        {
            atomic_dec(&pstEnt->atmRlsFlag);
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

static inline HI_S32  VDEC_CHAN_RLS_UP_HELP(VDEC_CHAN_ENTITY_S *pstEnt)
{
    if (atomic_dec_return(&pstEnt->atmRlsFlag) < 0)
    {
        //while (1)
        //{}
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_StreamInfoChange(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (s_stVdecDrv.astChanEntity[hHandle].eCallBack)
    {
        s_stVdecDrv.astChanEntity[hHandle].eCallBack(hHandle, NULL, VIDDEC_EVT_STREAM_INFO_CHANGE);
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_NewImage(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    IMAGE* pstImg;
    HI_UNF_VO_FRAMEINFO_S* pstLastFrm;
    HI_UNF_VO_FRAMEINFO_S stFrameInfo;

    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (pstChan->enCurState == VDEC_CHAN_STATE_RUN)
    {
        pstLastFrm  = &(pstChan->stLastFrm);
        memset(&stFrameInfo, 0, sizeof(HI_UNF_VO_FRAMEINFO_S));
        pstImg = (IMAGE *)(*(HI_U32 *)pArgs);
        if (pstImg != HI_NULL)
        {
            VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan, pstImg, &stFrameInfo);

            /* Check norm change */
            if ((stFrameInfo.u32DisplayHeight != pstLastFrm->u32DisplayHeight)
             || (stFrameInfo.u32DisplayWidth != pstLastFrm->u32DisplayWidth)
             || (stFrameInfo.enSampleType != pstLastFrm->enSampleType))
            {
                pstChan->bNormChange = HI_TRUE;
                pstChan->stNormChangeParam.enNewFormat    = pstChan->enDisplayNorm;
                pstChan->stNormChangeParam.u32ImageWidth  = stFrameInfo.u32Width;
                pstChan->stNormChangeParam.u32ImageHeight = stFrameInfo.u32Height;
                //pstChan->stNormChangeParam.stFrameRate.u32fpsInteger = stFrameInfo.stFrameRate.u32fpsInteger;
                //pstChan->stNormChangeParam.stFrameRate.u32fpsDecimal = stFrameInfo.stFrameRate.u32fpsDecimal;
                pstChan->stNormChangeParam.u32FrameRate = stFrameInfo.stSeqInfo.u32FrameRate;
                pstChan->stNormChangeParam.enSampleType = stFrameInfo.enSampleType;
            }

            /* Check frame packing */
            if (stFrameInfo.enFramePackingType != pstLastFrm->enFramePackingType)
            {
                pstChan->bFramePackingChange = HI_TRUE;
                pstChan->enFramePackingType = stFrameInfo.enFramePackingType;
            }

            /* Save last frame */
            *pstLastFrm = stFrameInfo;
            pstChan->bNewFrame = HI_TRUE;
        }
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_FindIFrame(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    HI_U32 u32IStreamSize = 0;
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    pstChan->stStatInfo.u32TotalVdecParseIFrame++;

    //if (HI_UNF_VCODEC_MODE_I == pstChan->stCurCfg.enMode)
    if (pstChan->stStatInfo.u32TotalVdecParseIFrame == 1)
    {
        u32IStreamSize = *(HI_U32 *)pArgs;
        HI_DRV_STAT_Event(STAT_EVENT_ISTREAMGET, u32IStreamSize);

        if (s_stVdecDrv.astChanEntity[hHandle].eCallBack)
        {
            s_stVdecDrv.astChanEntity[hHandle].eCallBack(hHandle, NULL, VIDDEC_EVT_1ST_IFRAME_DECODED);
        }
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_UsrData(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    USRDAT* pstUsrData = HI_NULL;
    HI_U32 u32WriteID = 0;
    HI_U32 u32ReadID = 0;

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    HI_U32 u32ID = 0;
    HI_U8 u8Type = 0;
#endif

    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    pstUsrData = (USRDAT*)(*(HI_U32*)pArgs);

    if (pstChan->pstUsrData == HI_NULL)
    {
        pstChan->pstUsrData = HI_KMALLOC_ATOMIC_VDEC(sizeof(VDEC_USRDATA_PARAM_S));
        if (pstChan->pstUsrData == HI_NULL)
        {
            HI_ERR_VDEC("No memory\n");
            return HI_FAILURE;
        }

        memset(pstChan->pstUsrData, 0, sizeof(VDEC_USRDATA_PARAM_S));
    }

    /* Discard if the buffer of user data full */
    /* CNcomment: 如果用户数据buffer满就直接丢弃 */
    u32WriteID = pstChan->pstUsrData->u32WriteID;
    u32ReadID = pstChan->pstUsrData->u32ReadID;

    if ((u32WriteID + 1) % VDEC_UDC_MAX_NUM == u32ReadID)
    {
        HI_INFO_VDEC("Chan %d drop user data\n", hHandle);
        return HI_FAILURE;
    }

    pstChan->pstUsrData->stAttr[u32WriteID].enBroadcastProfile = HI_UNF_VIDEO_BROADCAST_DVB;
    pstChan->pstUsrData->stAttr[u32WriteID].enPositionInStream = pstUsrData->from;
    pstChan->pstUsrData->stAttr[u32WriteID].u32Pts = (HI_U32)pstUsrData->PTS;
    pstChan->pstUsrData->stAttr[u32WriteID].u32SeqCnt = pstUsrData->seq_cnt;
    pstChan->pstUsrData->stAttr[u32WriteID].u32SeqFrameCnt  = pstUsrData->seq_img_cnt;
    pstChan->pstUsrData->stAttr[u32WriteID].bBufferOverflow = (pstUsrData->data_size > VDEC_KUD_MAX_LEN);
    pstChan->pstUsrData->stAttr[u32WriteID].pu8Buffer = pstChan->pstUsrData->au8Buf[u32WriteID];
    pstChan->pstUsrData->stAttr[u32WriteID].u32Length =
        (pstUsrData->data_size > VDEC_KUD_MAX_LEN) ? MAX_USER_DATA_LEN : pstUsrData->data_size;
    memcpy(pstChan->pstUsrData->stAttr[u32WriteID].pu8Buffer, pstUsrData->data,
           pstChan->pstUsrData->stAttr[u32WriteID].u32Length);
    pstChan->pstUsrData->u32WriteID = (u32WriteID + 1) % VDEC_UDC_MAX_NUM;
    HI_INFO_VDEC("Chan: %d get user data\n", hHandle);
    pstChan->bNewUserData = HI_TRUE;

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_StreamErr(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (s_stVdecDrv.astChanEntity[hHandle].eCallBack)
    {
        s_stVdecDrv.astChanEntity[hHandle].eCallBack(hHandle, NULL, VIDDEC_EVT_DATA_ERROR);
    }

    pstChan->stStatInfo.u32TotalStreamErrNum++;

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_IFrameErr(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);
    pstChan->bIFrameErr = HI_TRUE;

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_CaptureDnrOver(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    IMAGE *pstImage;
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if ((pstChan->stDNR.pstFrame != HI_NULL) && (atomic_read(&pstChan->stDNR.atmWorking) == 1))
    {
        pstImage = (IMAGE *)(*((HI_U32 *)pArgs));
        VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan, pstImage, pstChan->stDNR.pstFrame);
        atomic_dec(&pstChan->stDNR.atmWorking);
        wake_up_interruptible(&(pstChan->stDNR.stWaitQue));
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_LastFrame(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    /* *(HI_U32*)pArgs: 0 success, 1 fail,  2 report last frame image id */
    if (*(HI_U32*)pArgs == 1)
    {
        pstChan->u32EndFrmFlag = 1;
    }
    else if (2 <= *(HI_U32*)pArgs)
    {
        pstChan->u32EndFrmFlag = 2;
        pstChan->u32LastFrmId = *(HI_U32*)pArgs - 2;
    }

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_SetEosFlag(hHandle);
#endif
    pstChan->bEndOfStrm = HI_TRUE;

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_ResolutionChange(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (s_stVdecDrv.astChanEntity[hHandle].eCallBack)
    {
        s_stVdecDrv.astChanEntity[hHandle].eCallBack(hHandle, NULL, VIDDEC_EVT_STREAM_INFO_CHANGE);
    }

    pstChan->u8ResolutionChange = 1;

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_Unsupport(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (s_stVdecDrv.astChanEntity[hHandle].eCallBack)
    {
        s_stVdecDrv.astChanEntity[hHandle].eCallBack(hHandle, NULL, VIDDEC_EVT_UNSUPPORTED_STREAM_TYPE);
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Event_VidStdError(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, HI_VOID *pArgs)
{
    VDEC_ASSERT_RETURN(pstChan != HI_NULL, HI_FAILURE);

    if (pstChan->stCurCfg.enType == HI_UNF_VCODEC_TYPE_MPEG2)
    {

        pstChan->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_TRUE;
        pstChan->stProbeStreamInfo.enCodecType = HI_UNF_VCODEC_TYPE_H264;
    }

    if (pstChan->stCurCfg.enType == HI_UNF_VCODEC_TYPE_H264)
    {

        pstChan->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_TRUE;
        pstChan->stProbeStreamInfo.enCodecType = HI_UNF_VCODEC_TYPE_MPEG2;
    }

    return HI_SUCCESS;
}

static const VDECEVENT_COMMAND_NODE g_VDEC_EVENT_CommandTable[] =
{
    {EVNT_DISP_EREA,                        VDEC_Event_StreamInfoChange},
    {EVNT_IMG_SIZE_CHANGE,                  VDEC_Event_StreamInfoChange},
    {EVNT_FRMRATE_CHANGE,                   VDEC_Event_StreamInfoChange},
    {EVNT_SCAN_CHANGE,                      VDEC_Event_StreamInfoChange},
    {EVNT_ASPR_CHANGE,                      VDEC_Event_StreamInfoChange},
    {EVNT_NEW_IMAGE,                        VDEC_Event_NewImage},
    {EVNT_FIND_IFRAME,                      VDEC_Event_FindIFrame},
    {EVNT_USRDAT,                           VDEC_Event_UsrData},
    {EVNT_VDM_ERR,                          VDEC_Event_StreamErr},
    {EVNT_SE_ERR,                           VDEC_Event_StreamErr},
    {EVNT_IFRAME_ERR,                       VDEC_Event_IFrameErr},
    {EVNT_CAPTURE_DNR_OVER,                 VDEC_Event_CaptureDnrOver},
    {EVNT_LAST_FRAME,                       VDEC_Event_LastFrame},
    {EVNT_RESOLUTION_CHANGE,                VDEC_Event_ResolutionChange},
    {EVNT_UNSUPPORT,                        VDEC_Event_Unsupport},
    {EVNT_VIDSTD_ERROR,                     VDEC_Event_VidStdError},

    {EVNT_BUTT,        HI_NULL}, //terminal element
};

FN_VDEC_EVENT_HANDLER VDEC_Event_Get_Handler(HI_U32 Code)
{
    HI_U32 Index = 0;
    FN_VDEC_EVENT_HANDLER pTargetHandler = HI_NULL;

    while(1)
    {
        if (g_VDEC_EVENT_CommandTable[Index].Code == EVNT_BUTT || g_VDEC_EVENT_CommandTable[Index].pHandler == HI_NULL)
        {
            break;
        }

        if (Code == g_VDEC_EVENT_CommandTable[Index].Code)
        {
            pTargetHandler = g_VDEC_EVENT_CommandTable[Index].pHandler;
            break;
        }

        Index++;
    }

    return pTargetHandler;
}


static HI_S32 VDEC_EventHandle(HI_S32 s32ChanID, HI_S32 s32EventType, HI_VOID *pArgs)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    FN_VDEC_EVENT_HANDLER pEvent_Handler = HI_NULL;

    /* Find channel number */
    for (hHandle = 0; hHandle < HI_VDEC_MAX_INSTANCE; hHandle++)
    {
        if (s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            if (s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan == s32ChanID)
            {
                break;
            }
        }
    }

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (s32Ret != HI_SUCCESS)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    pEvent_Handler = VDEC_Event_Get_Handler(s32EventType);
    if (pEvent_Handler == HI_NULL)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    s32Ret = pEvent_Handler(pstChan, hHandle, pArgs);
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    return s32Ret;
}

HI_S32 VDEC_GetCap(VDEC_CAP_S *pstCap)
{
    HI_S32 s32Ret;

    if (HI_NULL == pstCap)
    {
        return HI_FAILURE;
    }

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CAPABILITY, pstCap);

    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("VFMW GET_CAPABILITY err:%d!\n", s32Ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_CreateStrmBuf(HI_DRV_VDEC_STREAM_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    BUFMNG_INST_CONFIG_S stBufInstCfg;

    if (HI_NULL == pstBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    /* Create buffer manager instance */
    stBufInstCfg.enAllocType = BUFMNG_ALLOC_INNER;
    stBufInstCfg.u32PhyAddr = 0;
    stBufInstCfg.pu8UsrVirAddr = HI_NULL;
    stBufInstCfg.pu8KnlVirAddr = HI_NULL;
    stBufInstCfg.u32Size = pstBuf->u32Size;
    strncpy(stBufInstCfg.aszName, "VDEC_ESBuf", 16);
    s32Ret = BUFMNG_Create(&(pstBuf->hHandle), &stBufInstCfg);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("BUFMNG_Create err!\n");
        return HI_FAILURE;
    }

    pstBuf->u32PhyAddr = stBufInstCfg.u32PhyAddr;
    return HI_SUCCESS;
}

static HI_S32 VDEC_StrmBuf_SetUserAddr(HI_HANDLE hHandle, HI_U32 u32Addr)
{
    return BUFMNG_SetUserAddr(hHandle, u32Addr);
}

HI_S32 VDEC_DestroyStrmBuf(HI_HANDLE hHandle)
{
    /* Destroy instance */
    if (HI_SUCCESS != BUFMNG_Destroy(hHandle))
    {
        HI_ERR_VDEC("Destroy buf %d err!\n", hHandle);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_Chan_AttachStrmBuf(HI_HANDLE hHandle, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn, HI_HANDLE hStrmBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_ERR_VDEC_INVALID_CHANID;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must attach buffer before start */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_ERR_VDEC_INVALID_STATE;
    }

    if (VDEC_CHAN_STRMBUF_ATTACHED(pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d has strm buf:%d!\n", hHandle, pstChan->hStrmBuf);
        return HI_ERR_VDEC_BUFFER_ATTACHED;
    }

    if (HI_INVALID_HANDLE != hDmxVidChn)
    {
        pstChan->hDmxVidChn = hDmxVidChn;
        pstChan->u32DmxBufSize = u32BufSize;
        pstChan->hStrmBuf = HI_INVALID_HANDLE;
        pstChan->u32StrmBufSize = 0;
    }
    else
    {
        pstChan->hStrmBuf = hStrmBuf;
        pstChan->u32StrmBufSize = u32BufSize;
        pstChan->hDmxVidChn = HI_INVALID_HANDLE;
        pstChan->u32DmxBufSize = 0;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_DetachStrmBuf(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must stop channel first */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    /* Clear handles */
    pstChan->hStrmBuf = HI_INVALID_HANDLE;
    pstChan->u32StrmBufSize = 0;
    pstChan->hDmxVidChn = HI_INVALID_HANDLE;
    pstChan->u32DmxBufSize = 0;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    return HI_SUCCESS;
}

HI_BOOL VDEC_IsShortEosStandard(HI_UNF_VCODEC_TYPE_E enType)
{
    HI_BOOL IsShort = HI_FALSE;

    switch (enType)
    {
        case HI_UNF_VCODEC_TYPE_REAL8:
        case HI_UNF_VCODEC_TYPE_REAL9:
        case HI_UNF_VCODEC_TYPE_VP6:
        case HI_UNF_VCODEC_TYPE_VP6F:
        case HI_UNF_VCODEC_TYPE_VP6A:
        case HI_UNF_VCODEC_TYPE_VP8:
        case HI_UNF_VCODEC_TYPE_DIVX3:
        case HI_UNF_VCODEC_TYPE_H263:
        case HI_UNF_VCODEC_TYPE_SORENSON:
            IsShort = HI_TRUE;
            break;

        default:
            break;
    }

    return IsShort;
}

HI_S32 HI_DRV_VDEC_SetEosFlag(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_U8 au8EndFlag[5][20] =
    {
        /* H264 */
        {
            0x00, 0x00, 0x01, 0x0b, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44,
            0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
        },
        /* VC1ap,AVS */
        {
            0x00, 0x00, 0x01, 0xfe, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44,
            0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
        },
        /* MPEG4 short header */
        {
            0x00, 0x00, 0x80, 0x00, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44,
            0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x00, 0x00
        },
        /* MPEG4 long header */
        {
            0x00, 0x00, 0x01, 0xb6, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44,
            0x00, 0x00, 0x01, 0xb6, 0x00, 0x00, 0x01, 0x00
        },
        /* MPEG2 */
        {
            0x00, 0x00, 0x01, 0xb7, 0x48, 0x53, 0x50, 0x49, 0x43, 0x45, 0x4e, 0x44,
            0x00, 0x00, 0x01, 0xb7, 0x00, 0x00, 0x00, 0x00
        },
    };
    HI_U8 au8ShortEndFlag[4] = {0xff, 0xff, 0xff, 0xff};
    HI_U8 *pu8Flag = HI_NULL;
    HI_U32 u32FlagLen;

    VDEC_CHAN_STATE_S stChanState = {0};

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    switch (pstChan->stCurCfg.enType)
    {
        case HI_UNF_VCODEC_TYPE_H264:
            pu8Flag = au8EndFlag[0];
            u32FlagLen = 15;
            break;

        case HI_UNF_VCODEC_TYPE_AVS:
            pu8Flag = au8EndFlag[1];
            u32FlagLen = 15;
            break;

        case HI_UNF_VCODEC_TYPE_MPEG4:
            s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);

            if (VDEC_OK != s32Ret)
            {
                HI_ERR_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
                s32Ret = HI_FAILURE;
                goto err0;
            }

            /* Short header */
            if (1 == stChanState.mpeg4_shorthead)
            {
                pu8Flag = au8EndFlag[2];
                u32FlagLen = 18;
            }
            /* Long header */
            else
            {
                pu8Flag = au8EndFlag[3];
                u32FlagLen = 19;
            }
            break;

        case HI_UNF_VCODEC_TYPE_MPEG2:
            pu8Flag = au8EndFlag[4];
            u32FlagLen = 16;
            break;

        case HI_UNF_VCODEC_TYPE_VC1:

            /* AP */
            if ((1 == pstChan->stCurCfg.unExtAttr.stVC1Attr.bAdvancedProfile) &&
                (8 == pstChan->stCurCfg.unExtAttr.stVC1Attr.u32CodecVersion))
            {
                pu8Flag = au8EndFlag[1];
                u32FlagLen = 15;
            }
            /* SMP */
            else
            {
                pu8Flag = au8ShortEndFlag;
                u32FlagLen = 4;
            }
            break;

        default:
            if (VDEC_IsShortEosStandard(pstChan->stCurCfg.enType) == HI_TRUE)
            {
                pu8Flag = au8ShortEndFlag;
                u32FlagLen = 4;
            }
            else
            {
                s32Ret = HI_SUCCESS;
                goto err0;
            }
            break;
    }

    if (HI_NULL != pu8Flag)
    {
        /* Alloc EOS MMZ */
#if defined (CFG_ANDROID_TOOLCHAIN)
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_EOS", "vdec", u32FlagLen, 0, &pstChan->stEOSBuffer);
#else
        s32Ret = HI_DRV_MMZ_AllocAndMap("VDEC_EOS", HI_NULL, u32FlagLen, 0, &pstChan->stEOSBuffer);
#endif

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d alloc EOS MMZ err!\n", hHandle);
            goto err0;
        }

        memcpy((HI_VOID *)pstChan->stEOSBuffer.u32StartVirAddr, pu8Flag, u32FlagLen);
        pstChan->bSetEosFlag = HI_TRUE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d STREAM_END OK\n", hHandle);
    return HI_SUCCESS;

err0:
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return s32Ret;
}

HI_S32 HI_DRV_VDEC_DiscardFrm(HI_HANDLE hHandle, VDEC_DISCARD_FRAME_S *pstParam)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Call vfmw */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_DISCARDPICS_PARAM, pstParam);

        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d DISCARDPICS err!\n", pstChan->hChan);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d DiscardFrm mode %d OK\n", hHandle, pstParam->enMode);
    return HI_SUCCESS;
}

static HI_S32 VDEC_GetStrmBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    BUFMNG_BUF_S stElem;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Get buffer */
    stElem.u32Size = pstEsBuf->u32BufSize;
    s32Ret = BUFMNG_GetWriteBuffer(hHandle, &stElem);

    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    pstEsBuf->u32BufSize = stElem.u32Size;

    /* If invoked by user space, return user virtual address */
    if (bUserSpace)
    {
        pstEsBuf->pu8Addr = stElem.pu8UsrVirAddr;
    }
    /* else, invoked by kernel space, return kernel virtual address */
    else
    {
        pstEsBuf->pu8Addr = stElem.pu8KnlVirAddr;
    }

    pstEsBuf->u32PhyAddr = stElem.u32PhyAddr;
    return HI_SUCCESS;
}

static HI_S32 VDEC_PutStrmBuf(HI_HANDLE hHandle, VDEC_ES_BUF_S *pstEsBuf, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    BUFMNG_BUF_S stElem;

    /* Check parameter */
    if (HI_NULL == pstEsBuf)
    {
        HI_INFO_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    /* If user sapce, put by pu8UsrVirAddr */
    if (bUserSpace)
    {
        stElem.pu8UsrVirAddr = pstEsBuf->pu8Addr;
        stElem.pu8KnlVirAddr = 0;
    }
    /* If kernek sapce, put by pu8KnlVirAddr */
    else
    {
        stElem.pu8KnlVirAddr = pstEsBuf->pu8Addr;
        stElem.pu8UsrVirAddr = 0;
    }

    stElem.u64Pts = pstEsBuf->u64Pts;
    stElem.u32Marker = 0;

    if (!pstEsBuf->bEndOfFrame)
    {
        stElem.u32Marker |= BUFMNG_NOT_END_FRAME_BIT;
    }

    if (pstEsBuf->bDiscontinuous)
    {
        stElem.u32Marker |= BUFMNG_DISCONTINUOUS_BIT;
    }

    stElem.u32Size = pstEsBuf->u32BufSize;
    s32Ret = BUFMNG_PutWriteBuffer(hHandle, &stElem);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("Buf %d put err!\n", hHandle);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_GetEsFromDmx(VDEC_CHANNEL_S *pstChan, HI_HANDLE hHandle, STREAM_DATA_S *pstPacket)
{
    HI_S32 s32Ret = HI_FAILURE;
    DMX_Stream_S vidEsBuf = {0};

    pstChan->stStatInfo.u32VdecAcqBufTry++;

    s32Ret = (s_stVdecDrv.pDmxFunc->pfnDmxAcquireEs)(pstChan->hDmxVidChn, &vidEsBuf);
    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    pstPacket->PhyAddr = vidEsBuf.u32BufPhyAddr;
    pstPacket->VirAddr = (HI_U8*)vidEsBuf.u32BufVirAddr;
    pstPacket->Length = vidEsBuf.u32BufLen;
    pstPacket->Pts   = vidEsBuf.u32PtsMs;
    pstPacket->Index = vidEsBuf.u32Index;
    pstPacket->DispTime = (HI_U64)vidEsBuf.u32DispTime;
    pstPacket->DispEnableFlag = vidEsBuf.u32DispEnableFlag;
    pstPacket->DispFrameDistance = vidEsBuf.u32DispFrameDistance;
    pstPacket->DistanceBeforeFirstFrame = vidEsBuf.u32DistanceBeforeFirstFrame;
    pstPacket->GopNum = vidEsBuf.u32GopNum;
    pstPacket->is_not_last_packet_flag = 0;
    pstPacket->UserTag = 0;
    pstPacket->discontinue_count = 0;
    pstPacket->is_stream_end_flag = 0;


    /*get first valid pts*/
    if (0 == pstChan->u32ValidPtsFlag && -1 != vidEsBuf.u32PtsMs)
    {
        pstChan->bFirstValidPts = HI_TRUE;
        pstChan->u32FirstValidPts = vidEsBuf.u32PtsMs;
        pstChan->u32ValidPtsFlag = 1;
    }
    /*get second valid pts*/
    else if (1 == pstChan->u32ValidPtsFlag && -1 != vidEsBuf.u32PtsMs)
    {
        pstChan->bSecondValidPts = HI_TRUE;
        pstChan->u32SecondValidPts = vidEsBuf.u32PtsMs;
        pstChan->u32ValidPtsFlag = 2;
    }

    if (0 == pstChan->stStatInfo.u32TotalVdecInByte)
    {
        HI_DRV_STAT_Event(STAT_EVENT_STREAMIN, 0);
    }

    pstChan->stStatInfo.u32TotalVdecInByte   += pstPacket->Length;
    pstChan->stStatInfo.u32TotalVdecHoldByte += pstPacket->Length;
    pstChan->stStatInfo.u32VdecAcqBufOK++;

#ifdef TEST_VDEC_SAVEFILE
    VDEC_Dbg_RecSaveFile(hHandle, pstPacket->VirAddr, pstPacket->Length);
#endif

    return s32Ret;
}

HI_S32 VDEC_GetEsFromBM(VDEC_CHANNEL_S *pstChan,
                        HI_HANDLE hHandle,
                        STREAM_DATA_S *pstPacket,
                        HI_BOOL bUserSpace)
{
    HI_S32 s32Ret = HI_FAILURE;
    BUFMNG_BUF_S stEsBuf;
    memset(&stEsBuf, 0, sizeof(BUFMNG_BUF_S));

    s32Ret = BUFMNG_AcqReadBuffer(pstChan->hStrmBuf, &stEsBuf);
    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    pstPacket->PhyAddr = stEsBuf.u32PhyAddr;

    /* If get from user space, pass user virtual address */
    if (bUserSpace)
    {
        pstPacket->VirAddr = stEsBuf.pu8UsrVirAddr;
    }
    /* If get from kernel space, pass kernel virtual address */
    else
    {
        pstPacket->VirAddr = stEsBuf.pu8KnlVirAddr;
    }

    pstPacket->Length = stEsBuf.u32Size;
    pstPacket->Pts = stEsBuf.u64Pts;
    pstPacket->Index = stEsBuf.u32Index;
    pstPacket->is_not_last_packet_flag = stEsBuf.u32Marker & BUFMNG_NOT_END_FRAME_BIT;

    if (stEsBuf.u32Marker & BUFMNG_DISCONTINUOUS_BIT)
    {
        pstChan->u32DiscontinueCount++;
    }

    pstPacket->UserTag = 0;
    pstPacket->discontinue_count = pstChan->u32DiscontinueCount;
    pstPacket->is_stream_end_flag = (stEsBuf.u32Marker & BUFMNG_END_OF_STREAM_BIT) ? 1 : 0;

    /*get first valid pts*/
    if (pstChan->u32ValidPtsFlag == 0 && (HI_U32)stEsBuf.u64Pts != (-1))
    {
        pstChan->bFirstValidPts = HI_TRUE;
        pstChan->u32FirstValidPts = (HI_U32)stEsBuf.u64Pts;
        pstChan->u32ValidPtsFlag = 1;
    }
    /*get second valid pts*/
    else if (1 == pstChan->u32ValidPtsFlag && (HI_U32)stEsBuf.u64Pts != (-1))
    {
        pstChan->bSecondValidPts = HI_TRUE;
        pstChan->u32SecondValidPts = (HI_U32)stEsBuf.u64Pts;
        pstChan->u32ValidPtsFlag = 2;
    }

    pstChan->stStatInfo.u32TotalVdecInByte   += pstPacket->Length;
    pstChan->stStatInfo.u32TotalVdecHoldByte += pstPacket->Length;

    return s32Ret;
}


static HI_S32 VDEC_RecvStrmBuf(HI_HANDLE hHandle, STREAM_DATA_S *pstPacket, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Check parameter */
    VDEC_ASSERT_RETURN(pstPacket != HI_NULL, HI_FAILURE);

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (s32Ret != HI_SUCCESS)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);

        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (s_stVdecDrv.astChanEntity[hHandle].pstChan == HI_NULL)
    {
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        s32Ret = HI_FAILURE;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

        return s32Ret;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (pstChan->hDmxVidChn == HI_INVALID_HANDLE && s_stVdecDrv.astChanEntity[hHandle].DmxHdlCallBack)
    {
        s_stVdecDrv.astChanEntity[hHandle].DmxHdlCallBack(pstChan->u32DmxID, 2, &(pstChan->hDmxVidChn));
    }

    /* Get ES data from demux directly */
    if ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && s_stVdecDrv.pDmxFunc && s_stVdecDrv.pDmxFunc->pfnDmxAcquireEs)
    {
        s32Ret = VDEC_GetEsFromDmx(pstChan, hHandle, pstPacket);
        if (s32Ret != HI_SUCCESS)
        {
            goto OUT;
        }
    }
    /* Get ES data from BM */
    else
    {
        s32Ret = VDEC_GetEsFromBM(pstChan, hHandle, pstPacket, bUserSpace);
        if (s32Ret != HI_SUCCESS)
        {
            goto OUT;
        }
    }

OUT:

    /* Added for set eos flag */
    /* Must be end of stream */
    if ((pstChan->bSetEosFlag) &&
        /* Get ES buffer fail */
        (((pstChan->hStrmBuf != HI_INVALID_HANDLE) && (s32Ret != HI_SUCCESS)) ||
         /* Get Demux buffer HI_ERR_DMX_EMPTY_BUFFER */
         ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && (s32Ret == HI_ERR_DMX_EMPTY_BUFFER))))
    {
        pstPacket->PhyAddr = pstChan->stEOSBuffer.u32StartPhyAddr;
        pstPacket->VirAddr = (HI_U8 *)pstChan->stEOSBuffer.u32StartVirAddr;
        pstPacket->Length = pstChan->stEOSBuffer.u32Size;
        pstPacket->Pts = HI_INVALID_PTS;
        pstPacket->Index = 0;
        pstPacket->UserTag = 0;

        if (pstChan->hDmxVidChn != HI_INVALID_HANDLE)
        {
            pstPacket->discontinue_count = 0;
        }
        else
        {
            pstPacket->discontinue_count = pstChan->u32DiscontinueCount;
        }

        pstPacket->is_not_last_packet_flag = 0;
        pstPacket->is_stream_end_flag = 1;
        pstChan->bSetEosFlag = HI_FALSE;
        s32Ret = HI_SUCCESS;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return s32Ret;
}

static HI_S32 VDEC_SeekPTS(HI_HANDLE hHandle, HI_U32 *pu32SeekPts, HI_U32 u32Gap)
{
    HI_S32 s32Ret;
    HI_S32 s32RetStart;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_U64 pTmpUserData[3] = {0};
    BUFMNG_STATUS_S stBMStatus = {0};
    HI_U32 u32RawBufferNum = 0;
    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /*TS mode not support SeekPts*/
    if (pstChan->hDmxVidChn != HI_INVALID_HANDLE)
    {
        HI_ERR_VDEC("ERR: %d  VDEC do not support ts mode Now! \n", hHandle);
        return  HI_FAILURE;
    }

    /* stop vpss and vfmw */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
#if 0

        if (HI_INVALID_HANDLE != s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss)
        {

            /*Stop VPSS*/
            s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss, HI_DRV_VPSS_USER_COMMAND_STOP, HI_NULL);

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("%s HI_DRV_VPSS_USER_COMMAND_STOP err!\n", __FUNCTION__);
                return HI_FAILURE;
            }

            /*Reset VPSS*/
            s32Ret = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss, HI_DRV_VPSS_USER_COMMAND_RESET, HI_NULL);

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("%s HI_DRV_VPSS_USER_COMMAND_STOP err!\n", __FUNCTION__);
                return HI_FAILURE;
            }

        }

#endif

        /* Stop VFMW */
        if (HI_INVALID_HANDLE != pstChan->hChan)
        {
            s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_STOP_CHAN, HI_NULL);

            if (VDEC_OK != s32Ret)
            {
                HI_ERR_VDEC("Chan %d STOP_CHAN err!\n", pstChan->hChan);
                return HI_FAILURE;
            }
        }

        /* Save state */
        pstChan->enCurState = VDEC_CHAN_STATE_STOP;
    }

    /*calc rawbuffer num*/
    s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stBMStatus);

    if (HI_SUCCESS == s32Ret)
    {
        u32RawBufferNum = stBMStatus.u32PutOK - stBMStatus.u32RlsOK;
    }

    /*call vfmw seek pts*/
    pTmpUserData[0] = *(pu32SeekPts);
    pTmpUserData[1] = u32Gap;
    pTmpUserData[2] = u32RawBufferNum;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_PTS_TO_SEEK, &pTmpUserData[0]);

    if (s32Ret != VDEC_OK)
    {
        HI_ERR_VDEC("VDEC_CID_SET_PTS_TO_SEEK err!\n");
        s32Ret = HI_FAILURE;
    }

    *(pu32SeekPts) = pTmpUserData[0];

    /*start VFMW*/
    s32RetStart = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_START_CHAN, HI_NULL);

    if (VDEC_OK != s32RetStart)
    {
        HI_ERR_VDEC("Chan %d VDEC_CID_START_CHAN err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    /*start VPSS*/
#if 0
    s32RetStart = (s_stVdecDrv.pVpssFunc->pfnVpssSendCommand)(s_stVdecDrv.astChanEntity[hHandle].stVpssChan.hVpss, HI_DRV_VPSS_USER_COMMAND_START, HI_NULL);

    if (HI_SUCCESS != s32RetStart)
    {
        HI_ERR_VDEC("%s HI_DRV_VPSS_USER_COMMAND_START err!\n", __FUNCTION__);
        return HI_FAILURE;
    }

#endif
    /* Save state */
    pstChan->enCurState = VDEC_CHAN_STATE_RUN;

    return  s32Ret;
}

static HI_S32 VDEC_RlsStrmBuf(HI_HANDLE hHandle, STREAM_DATA_S *pstPacket, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    BUFMNG_BUF_S stBuf;

    if (HI_NULL == pstPacket)
    {
        HI_INFO_VDEC("INFO: %d pstPacket == HI_NULL!\n", hHandle);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Release EOS MMZ buffer */
    if (pstPacket->PhyAddr == pstChan->stEOSBuffer.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        memset(&pstChan->stEOSBuffer, 0, sizeof(pstChan->stEOSBuffer));
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_SUCCESS;
    }

    /* Put ES buffer of demux */
    if ((pstChan->hDmxVidChn != HI_INVALID_HANDLE) && s_stVdecDrv.pDmxFunc && s_stVdecDrv.pDmxFunc->pfnDmxReleaseEs)
    {
        DMX_Stream_S vidEsBuf;

        pstChan->stStatInfo.u32VdecRlsBufTry++;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

        vidEsBuf.u32BufPhyAddr = pstPacket->PhyAddr;
        vidEsBuf.u32BufVirAddr = (HI_U32)pstPacket->VirAddr;
        vidEsBuf.u32BufLen = pstPacket->Length;
        vidEsBuf.u32PtsMs = pstPacket->Pts;
        vidEsBuf.u32Index = pstPacket->Index;

        s32Ret = (s_stVdecDrv.pDmxFunc->pfnDmxReleaseEs)(pstChan->hDmxVidChn, &vidEsBuf);

        if (HI_SUCCESS != s32Ret)
        {
            HI_WARN_VDEC("VDEC ReleaseBuf(%#x) to Dmx err:%#x.\n", pstPacket->PhyAddr, s32Ret);
        }
        else
        {
            pstChan->stStatInfo.u32TotalVdecHoldByte -= pstPacket->Length;
            pstChan->stStatInfo.u32VdecRlsBufOK++;
        }

        return s32Ret;
    }
    /* Put BM buffer */
    else
    {
        stBuf.u32PhyAddr = 0;

        if (bUserSpace)
        {
            stBuf.pu8UsrVirAddr = pstPacket->VirAddr;
            stBuf.pu8KnlVirAddr = HI_NULL;
        }
        else
        {
            stBuf.pu8KnlVirAddr = pstPacket->VirAddr;
            stBuf.pu8UsrVirAddr = HI_NULL;
        }

        stBuf.u32Size  = pstPacket->Length;
        stBuf.u32Index = pstPacket->Index;
        stBuf.u64Pts = pstPacket->Pts;
        /* Don't care stBuf.u32Marker here. */

        /* Put */
        s32Ret = BUFMNG_RlsReadBuffer(pstChan->hStrmBuf, &stBuf);

        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }

        pstChan->stStatInfo.u32TotalVdecHoldByte -= pstPacket->Length;
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_RecvStrmBuf(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return VDEC_RecvStrmBuf((HI_HANDLE)hHandle, pstPacket, HI_FALSE);
}

static HI_S32 VDEC_Chan_RlsStrmBuf(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return VDEC_RlsStrmBuf((HI_HANDLE)hHandle, pstPacket, HI_FALSE);
}

HI_S32 HI_DRV_VDEC_GetEsBuf(HI_S32 hHandle, VDEC_ES_BUF_S *pstEsBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Get */
    s32Ret = VDEC_GetStrmBuf(pstChan->hStrmBuf, pstEsBuf, HI_FALSE);

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return s32Ret;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_PutEsBuf(HI_S32 hHandle, VDEC_ES_BUF_S *pstEsBuf)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstEsBuf)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    s32Ret = VDEC_PutStrmBuf(pstChan->hStrmBuf, pstEsBuf, HI_FALSE);

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return s32Ret;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

static HI_VOID ConvertFrm_GetCmpInfo(IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    /* Don't use 0x1C000 bits. */

    /* Image compress flag to frame flag */

    pstFrame->u32CompressFlag = 0;

    if ((pstImage->ImageDnr.s32VcmpFrameHeight % 16) == 0)
    {
        pstFrame->s32CompFrameHeight = pstImage->ImageDnr.s32VcmpFrameHeight;
    }
    else
    {
        HI_WARN_VDEC("s32CompFrameHeight err!\n");
        pstFrame->s32CompFrameHeight = 0;
    }

    if (0 == (pstImage->ImageDnr.s32VcmpFrameWidth % 16))
    {
        pstFrame->s32CompFrameWidth = pstImage->ImageDnr.s32VcmpFrameWidth;
    }
    else
    {
        HI_WARN_VDEC("s32CompFrameWidth err!\n");
        pstFrame->s32CompFrameWidth = 0;
    }

    return;
}

static HI_VOID ConvertFrm_GetSampleType(IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    switch (pstImage->format & 0x300)
    {
        case 0x0:
            pstFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
            break;

        case 0x100:
            pstFrame->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
            break;

        case 0x200:
            pstFrame->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_PROGRESSIVE;
            break;

        case 0x300:
            pstFrame->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_INTERLACE;
            break;

        default :
            pstFrame->enSampleType   = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;

            break;
    }

    return;
}

static HI_VOID ConvertFrm_GetVideoFormat (IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    switch (pstImage->format & 0x1C)
    {
        case 0x0:
        default:
            pstFrame->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;
#if 0

        case 0x1:
            pstFrame->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
            break;
#endif
    }

    return;
}

static HI_VOID ConvertFrm_GetDisplayNorm(VDEC_CHANNEL_S *pstChan, IMAGE *pstImage)
{
    switch (pstImage->format & 0xE0)
    {
        case 0x20:
            pstChan->enDisplayNorm = HI_UNF_ENC_FMT_PAL;
            break;

        case 0x40:
            pstChan->enDisplayNorm = HI_UNF_ENC_FMT_NTSC;
            break;

        default:
            pstChan->enDisplayNorm = HI_UNF_ENC_FMT_BUTT;
            break;
    }

    return;
}

static HI_VOID ConvertFrm_GetFieldMode(IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    switch (pstImage->format & 0xC00)
    {
        case 0x400:
            pstFrame->enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
            break;

        case 0x800:
            pstFrame->enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
            break;

        case 0xC00:
            pstFrame->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
            break;

        default:
            pstFrame->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
            break;
    }

    return;
}

static HI_VOID ConvertFrm_GetCStride(VDEC_CHANNEL_S *pstChan, IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    if ((pstChan->stOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable == 1)
     && (pstImage->u32Is1D == 1))
    {
        pstFrame->u32CStride = pstImage->image_stride / 2;
    }
    else
    {
        pstFrame->u32CStride = pstImage->image_stride;
    }

    return;
}

static HI_VOID ConvertFrm_GetAspectRatio(IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    switch ((pstImage->format & 0x1C000) >> 14)
    {
        case DAR_4_3:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
            break;

        case DAR_16_9:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_16TO9;
            break;

        case DAR_221_100:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_221TO1;
            break;

        case DAR_235_100:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_235TO1;
            break;

        case DAR_IMG_SIZE:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_SQUARE;
            break;

        default:
            pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_UNKNOWN;
            break;
    }

    return;
}

static HI_VOID ConvertFrm_GetFrameRateInfo(VDEC_CHANNEL_S *pstChan, IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    HI_U32 divnum = 0;

    switch (pstChan->stFrameRateParam.enFrmRateType)
    {
        case HI_UNF_AVPLAY_FRMRATE_TYPE_PTS:
        case HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS:
            //pstFrame->stSeqInfo.u32FrameRate = (pstImage->frame_rate + 512) / 1024; //modify later
            pstFrame->stSeqInfo.u32FrameRate = ((pstImage->frame_rate ) / 1024) * 1000 + ((pstImage->frame_rate ) % 1024);
            pstFrame->stSeqInfo.u32FrameRateExtensionN = pstImage->frame_rate / 1000;
            pstFrame->stSeqInfo.u32FrameRateExtensionD = pstImage->frame_rate % 1000;
            break;

        case HI_UNF_AVPLAY_FRMRATE_TYPE_STREAM:
            pstFrame->stSeqInfo.u32FrameRate = ((pstImage->frame_rate ) / 1024) * 1000 + ((pstImage->frame_rate ) % 1024);
            pstFrame->stSeqInfo.u32FrameRateExtensionN = pstImage->frame_rate / 1000;
            pstFrame->stSeqInfo.u32FrameRateExtensionD = pstImage->frame_rate % 1000;
            break;

        case HI_UNF_AVPLAY_FRMRATE_TYPE_USER:
            // 1
            divnum = pstChan->stFrameRateParam.stSetFrameRate.u32fpsInteger * 1000 + pstChan->stFrameRateParam.stSetFrameRate.u32fpsDecimal;
            pstFrame->stSeqInfo.u32FrameRate = divnum;
            pstFrame->stSeqInfo.u32FrameRateExtensionN = pstChan->stFrameRateParam.stSetFrameRate.u32fpsInteger;
            pstFrame->stSeqInfo.u32FrameRateExtensionD = pstChan->stFrameRateParam.stSetFrameRate.u32fpsDecimal;
            break;

        default:
            //pstFrame->stSeqInfo.u32FrameRate = (pstImage->frame_rate + 512) / 1024;
            pstFrame->stSeqInfo.u32FrameRate = ((pstImage->frame_rate ) / 1024) * 1000 + ((pstImage->frame_rate ) % 1024);
            pstFrame->stSeqInfo.u32FrameRateExtensionN = pstImage->frame_rate / 1000;
            pstFrame->stSeqInfo.u32FrameRateExtensionD = pstImage->frame_rate % 1000;
    }

    pstImage->frame_rate = pstImage->frame_rate / 10;

    /*
    if( pstFrame->stSeqInfo.u32FrameRate<1000)
    {
        pstFrame->stSeqInfo.u32FrameRate = 25000;
    }
    */

    return;
}

/* VFMW_IMAGE->VO_FRAME */
static HI_VOID VDEC_ConvertFrm(HI_UNF_VCODEC_TYPE_E enType, VDEC_CHANNEL_S *pstChan,
                               IMAGE *pstImage, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(pstFrame->u32VdecInfo);
    // VDEC_CHAN_STATINFO_S *ptStatInfo = &pstChan->stStatInfo;

    if ((pstImage->format & 0x3000) != 0)
    {
        pstFrame->bTopFieldFirst = (pstChan->s32Speed >= 0) ? HI_TRUE : HI_FALSE;
    }
    else
    {
        pstFrame->bTopFieldFirst = (pstChan->s32Speed >= 0) ? HI_FALSE : HI_TRUE;
    }

    ConvertFrm_GetCmpInfo(pstImage, pstFrame);
    ConvertFrm_GetSampleType(pstImage, pstFrame);
    ConvertFrm_GetVideoFormat(pstImage, pstFrame);
    ConvertFrm_GetDisplayNorm(pstChan, pstImage);
    ConvertFrm_GetFieldMode(pstImage, pstFrame);

    pstFrame->u32FrameIndex  = pstImage->image_id;
    pstFrame->u32YAddr = pstImage->top_luma_phy_addr;
    pstFrame->u32CAddr = pstImage->top_chrom_phy_addr;
    pstFrame->u32YStride = pstImage->image_stride;
    ConvertFrm_GetCStride(pstChan, pstImage, pstFrame);
    ConvertFrm_GetAspectRatio(pstImage, pstFrame);

    //pstFrame->u32AspectWidth = pstImage->u32AspectWidth;
    //pstFrame->u32AspectHeight = pstImage->u32AspectHeight;
    pstFrame->u32Width  = pstImage->image_width;
    pstFrame->u32Height = pstImage->image_height;
    pstFrame->u32DisplayWidth   = pstImage->disp_width;
    pstFrame->u32DisplayHeight  = pstImage->disp_height;
    pstFrame->u32DisplayCenterX = pstImage->disp_center_x;
    pstFrame->u32DisplayCenterY = pstImage->disp_center_y;
    pstFrame->u32ErrorLevel = pstImage->error_level;
    pstFrame->u32SrcPts = (HI_U32)pstImage->SrcPts;
    pstFrame->u32Pts = (HI_U32)pstImage->PTS;
    pstFrame->enFramePackingType = pstImage->eFramePackingType;
    pstFrame->u32SeqFrameCnt = pstImage->seq_img_cnt;

    if (pstFrame->u32Height <= 288)
    {
        pstFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    }

    if (pstChan->enUserSetSampleType != HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN)
    {
        //bit 8 set 1, user set sample type
        pstPrivInfo->u32DeiState = pstPrivInfo->u32DeiState | 0x100;
        pstFrame->enSampleType = pstChan->enUserSetSampleType;
        pstPrivInfo->u8IsUserSetSampleType = 1;
    }
    else
    {
        //bit 8 set 0, no user set sample type
        pstPrivInfo->u32DeiState = pstPrivInfo->u32DeiState & 0xfeff;
        pstPrivInfo->u8IsUserSetSampleType = 0;
    }

    //memcpy(pstPrivInfo->stOptmalgInfo, &(pstImage->optm_inf), sizeof(VDEC_OPTMALG_INFO_S));
    pstPrivInfo->IsProgressiveSeq = pstImage->optm_inf.IsProgressiveSeq;
    pstPrivInfo->IsProgressiveFrm = pstImage->optm_inf.IsProgressiveFrm;
    pstPrivInfo->RealFrmRate = pstImage->optm_inf.RealFrmRate;
    pstPrivInfo->MatrixCoef  = pstImage->optm_inf.MatrixCoef;
    pstPrivInfo->Rwzb = pstImage->optm_inf.Rwzb;
    pstPrivInfo->u32luma_2d_vir_addr = (HI_U32)pstImage->luma_2d_vir_addr;  /* u32VdecInfo[5/6] is picture's kernel vir addr */
    pstPrivInfo->u32chrom_2d_vir_addr = (HI_U32)pstImage->chrom_2d_vir_addr;

    /*image.format & 0x20000  bit 17, 1 means final frame*/
    /*image.format & 0x40000  bit 18, 1 means close dei*/
    /*pframe->u32VdecInfo[7]  bit 1 close dei, bit 0 final frame*/
    pstPrivInfo->u32DeiState = (((pstPrivInfo->u32DeiState) & 0xfffc) | ((pstImage->format & 0x60000) >> 17));
    pstPrivInfo->u32DispTime = (HI_U32)(pstImage->DispTime);
    pstPrivInfo->u32SeqFrameCnt = pstImage->seq_img_cnt;

#if 0

    /* image.format & 0x40000  bit 18, 1 means close dei */
    if (pstImage->format & 0x40000)
    {
        pstPrivInfo->u8Marker |= HI_VDEC_CLOSEDEI_MASK;
    }

#endif

    /* control vo discard frame bit19, 1 discard, so, 1, repeat = 0 */
    if (pstImage->format & 0x80000)
    {
        pstPrivInfo->u8Repeat = 0;
    }
    else
    {
        pstPrivInfo->u8Repeat = 1 + pstImage->u32RepeatCnt;
    }

    pstPrivInfo->u8TestFlag = pstImage->optm_inf.Rwzb;
    pstPrivInfo->u8EndFrame = pstImage->last_frame;

    if (HI_UNF_VCODEC_TYPE_VC1 == enType)
    {
        pstPrivInfo->stVC1RangeInfo.u8PicStructure = pstImage->ImageDnr.pic_structure;
        pstPrivInfo->stVC1RangeInfo.u8PicQPEnable = pstImage->ImageDnr.use_pic_qp_en;
        pstPrivInfo->stVC1RangeInfo.s32QPY = pstImage->ImageDnr.QP_Y;
        pstPrivInfo->stVC1RangeInfo.s32QPU = pstImage->ImageDnr.QP_U;
        pstPrivInfo->stVC1RangeInfo.s32QPV = pstImage->ImageDnr.QP_V;
        pstPrivInfo->stVC1RangeInfo.u8ChromaFormatIdc = pstImage->ImageDnr.chroma_format_idc;
        pstPrivInfo->stVC1RangeInfo.u8VC1Profile = pstImage->ImageDnr.vc1_profile;
        pstPrivInfo->stVC1RangeInfo.s32RangedFrm = pstImage->ImageDnr.Rangedfrm;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapYFlag = pstImage->ImageDnr.Range_mapy_flag;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapY = pstImage->ImageDnr.Range_mapy;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapUVFlag = pstImage->ImageDnr.Range_mapuv_flag;
        pstPrivInfo->stVC1RangeInfo.u8RangeMapUV = pstImage->ImageDnr.Range_mapuv;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapYFlag = pstImage->ImageDnr.bottom_Range_mapy_flag;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapY = pstImage->ImageDnr.bottom_Range_mapy;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapUVFlag = pstImage->ImageDnr.bottom_Range_mapuv_flag;
        pstPrivInfo->stVC1RangeInfo.u8BtmRangeMapUV = pstImage->ImageDnr.bottom_Range_mapuv;
    }

    pstPrivInfo->stDNRInfo.video_standard = pstImage->ImageDnr.video_standard;
    pstPrivInfo->stDNRInfo.u8PicStructure = pstImage->ImageDnr.pic_structure;
    pstPrivInfo->stDNRInfo.s8Use_pic_qp_en = pstImage->ImageDnr.use_pic_qp_en;
    pstPrivInfo->stDNRInfo.QP_Y = pstImage->ImageDnr.QP_Y;
    pstPrivInfo->stDNRInfo.QP_U = pstImage->ImageDnr.QP_U;
    pstPrivInfo->stDNRInfo.QP_V = pstImage->ImageDnr.QP_V;
    pstPrivInfo->stDNRInfo.u8Chroma_format_idc = pstImage->ImageDnr.chroma_format_idc;
    pstPrivInfo->stDNRInfo.u8Vc1Profile = pstImage->ImageDnr.vc1_profile;
    pstPrivInfo->stDNRInfo.s32Rangedfrm = pstImage->ImageDnr.Rangedfrm;
    pstPrivInfo->stDNRInfo.u8Range_mapy_flag = pstImage->ImageDnr.Range_mapy_flag;
    pstPrivInfo->stDNRInfo.u8Range_mapy = pstImage->ImageDnr.Range_mapy;
    pstPrivInfo->stDNRInfo.u8Range_mapuv_flag = pstImage->ImageDnr.Range_mapuv_flag;
    pstPrivInfo->stDNRInfo.u8Range_mapuv = pstImage->ImageDnr.Range_mapuv;
    pstPrivInfo->entype = enType;
    //l00273086
    pstPrivInfo->u32Is1D = pstImage->u32Is1D;
    pstPrivInfo->is_processed_by_dnr = pstImage->is_processed_by_dnr;
    pstPrivInfo->u32Circumrotate = pstImage->u32Circumrotate;
    pstPrivInfo->u32IsLastFrame = pstImage->u32IsLastFrame;
    pstPrivInfo->s32ImgSize = pstImage->ImgSize;
    pstPrivInfo->u32ResetNum = pstImage->resetNum;
    //l00273086
#if 0

    /* image.format & 0x40000  bit 18, 1 means close dei */
    if (pstImage->format & 0x40000)
    {
        pstPrivInfo->u8Marker |= HI_VDEC_CLOSEDEI_MASK;
    }

#endif

    /* control vo discard frame bit19, 1 discard, so, 1, repeat = 0 */
    if (pstImage->format & 0x80000)
    {
        pstFrame->u32Repeat = 0;
    }
    else
    {
        pstFrame->u32Repeat = 1 + pstImage->u32RepeatCnt;
    }

    //pstPrivInfo->u8TestFlag = pstImage->optm_inf.Rwzb;
    //pstPrivInfo->u8EndFrame = pstImage->last_frame;

    pstFrame->stSeqInfo.u32Width         =   pstFrame->u32Width;
    pstFrame->stSeqInfo.u32Height        =   pstFrame->u32Height;
    pstFrame->stSeqInfo.enAspect         =   pstFrame->enAspectRatio;
    pstFrame->stSeqInfo.entype           =   pstChan->stCurCfg.enType;
    pstFrame->stSeqInfo.bIsLowDelay     = HI_FALSE;
    pstFrame->stSeqInfo.u32VBVBufferSize  = 0;
    pstFrame->stSeqInfo.u32StreamID       = 0;
    pstFrame->stSeqInfo.enVideoFormat    = pstFrame->enDisplayNorm;
    memset(&(pstFrame->stTimeCode), 0 , sizeof(HI_UNF_VIDEO_TIMECODE_S));

    //ptStatInfo->vdecErrFrame = tChanState.error_frame_num;

    ConvertFrm_GetFrameRateInfo(pstChan, pstImage, pstFrame);
    //pstFrame->entype = enType;
}

static HI_S32 VDEC_RecvFrm(HI_HANDLE hHandle, VDEC_CHANNEL_S *pstChan, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    HI_S32 s32Ret;
    HI_U32 u32UserdataId;
    IMAGE stImage;
    VDEC_CHAN_STATE_S stChanState = {0};
    IMAGE_INTF_S *pstImgInft = &pstChan->stImageIntf;
    VDEC_CHAN_STATINFO_S *pstStatInfo = &pstChan->stStatInfo;
    // HI_VDEC_PRIV_FRAMEINFO_S* pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S*)pstFrame->u32Private;
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(pstFrame->u32VdecInfo);
    VDEC_LAST_DISP_FRAME_INFO_S *pstLastDispFrame = &(pstChan->stLastDispFrameInfo);

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    HI_U32 u32ID;
    HI_U8 u8Type;
    HI_U32 u32Index;
    USRDAT *pstUsrData = HI_NULL;
#endif

    if (pstLastDispFrame->u8EndFrame == 1)
    {
        if (pstChan->u8ResolutionChange)
        {
            //pstPrivInfo->u8Marker |= HI_VDEC_RESOCHANGE_MASK;
            pstChan->u8ResolutionChange = 0;
        }
        else
        {
            //pstPrivInfo->u8Marker &= ~HI_VDEC_RESOCHANGE_MASK;
        }

        pstPrivInfo->u8EndFrame = 2;
        pstChan->u32EndFrmFlag = 0;
        pstChan->u32LastFrmTryTimes = 0;
        pstChan->u32LastFrmId = -1;
        return HI_SUCCESS;
    }

    /* Receive frame from VFMW */
    pstStatInfo->u32VdecRcvFrameTry++;
    s32Ret = pstImgInft->read_image(pstImgInft->image_provider_inst_id, &stImage);

    if (VDEC_OK != s32Ret)
    {
        if (pstChan->u8ResolutionChange)
        {
            //pstPrivInfo->u8Marker |= HI_VDEC_RESOCHANGE_MASK;
            pstChan->u8ResolutionChange = 0;
        }
        else
        {
            //pstPrivInfo->u8Marker &= ~HI_VDEC_RESOCHANGE_MASK;
        }

        /* If last frame decode fail, retry 5 times */
        if (((pstChan->u32EndFrmFlag == 1) && (pstChan->u32LastFrmTryTimes++ >= 4)) ||
            /* If report last frame id after this frame had been outputed, check last frame id */
            ((pstChan->u32EndFrmFlag == 2) && (pstLastDispFrame->u32FrameIndex % 100 == pstChan->u32LastFrmId)) ||
            /* For user space decode mode, the first fail means receive over. */
            (pstChan->u32EndFrmFlag == 3))
        {
            /* Last frame is the end frame */
            pstPrivInfo->u8EndFrame = 2;
            pstChan->u32EndFrmFlag = 0;
            pstChan->u32LastFrmTryTimes = 0;
            pstChan->u32LastFrmId = -1;
            return HI_SUCCESS;
        }

#if 0

        if (pstPrivInfo->u8Marker & HI_VDEC_RESOCHANGE_MASK)
        {
            return HI_SUCCESS;
        }

#endif

        return HI_FAILURE;
    }

    pstChan->u32LastFrmTryTimes = 0;

    pstStatInfo->u32VdecRcvFrameOK++;
    pstStatInfo->u32TotalVdecOutFrame++;

    /* Save original frame rate */
    //pstPrivInfo->u32OriFrameRate = stImage.frame_rate * 1000 / 1024;

    /* Calculate PTS */
    PTSREC_CalcStamp(hHandle, pstChan->stCurCfg.enType, &stImage);

    /* Save user data for watermark */
    for (u32UserdataId = 0; u32UserdataId < 4; u32UserdataId++)
    {
        pstChan->pu8UsrDataForWaterMark[u32UserdataId] = stImage.p_usrdat[u32UserdataId];
    }

    /* Get channel state */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);

    if (VDEC_OK != s32Ret)
    {
        HI_FATAL_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }

    /* Convert VFMW-IMAGE to VO-HI_UNF_VIDEO_FRAME_INFO_S */
    VDEC_ConvertFrm(pstChan->stCurCfg.enType, pstChan, &stImage, pstFrame);

    pstChan->bAvsPlus = stImage.optm_inf.bAvsPlus;

    /* Count frame number of every type */
    switch (stImage.format & 0x300)
    {
        case 0x0: /* PROGRESSIVE */
            pstChan->stStatInfo.u32FrameType[0]++;
            break;

        case 0x100: /* INTERLACE */
        case 0x200: /* INFERED_PROGRESSIVE */
        case 0x300: /* INFERED_INTERLACE */
        default:
            pstChan->stStatInfo.u32FrameType[1]++;
            break;
    }

#if 1

    if (stImage.image_id % 100 == pstChan->u32LastFrmId)
    {
        pstPrivInfo->u8EndFrame = 1;
    }

#endif

    /* Count err frame */
    pstStatInfo->u32VdecErrFrame = stChanState.error_frame_num;

    /*Record the interval of I frames and the output time of the first I frame*/
    /*CNcomment: 记录I帧间隔和换台后第一个I帧解码输出时间 */
    if (0 == (stImage.format & 0x3)) /* I frame */
    {
        HI_DRV_STAT_Event(STAT_EVENT_IFRAMEINTER, pstFrame->u32Pts);

        if (1 == pstStatInfo->u32TotalVdecOutFrame)
        {
            HI_DRV_STAT_Event(STAT_EVENT_IFRAMEOUT, 0);
        }
    }

    pstFrame->stSeqInfo.u32BitRate = stChanState.bit_rate;
    pstFrame->stSeqInfo.u32Profile = stChanState.profile;
    pstFrame->stSeqInfo.u32Level = stChanState.level;

    /* Watermark handle */
    if (s_stVdecDrv.pfnWatermark)
    {
        (s_stVdecDrv.pfnWatermark)(pstFrame, pstChan->pu8UsrDataForWaterMark);
    }

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    for(u32Index = 0 ; u32Index < 4; u32Index++)
    {
        pstUsrData = ((stImage.p_usrdat))[u32Index];
        if(HI_NULL != pstUsrData)
        {
            if(pstUsrData->data_size > 5)
            {
                pstUsrData->PTS = stImage.PTS;
                u32ID = *((HI_U32*)pstUsrData->data);
                u8Type = pstUsrData->data[4];
                if ((VDEC_USERDATA_IDENTIFIER_DVB1 == u32ID) && (VDEC_USERDATA_TYPE_DVB1_CC == u8Type))
                {
                     USRDATA_Put(hHandle, pstUsrData, HI_UNF_VIDEO_USERDATA_DVB1_CC);
                }
             }
         }
     }
#endif

    return HI_SUCCESS;
}

static HI_S32 VDEC_RlsFrm(VDEC_CHANNEL_S *pstChan, HI_UNF_VO_FRAMEINFO_S *pstFrame)
{
    HI_S32 s32Ret;
    IMAGE stImage;
    IMAGE_INTF_S *pstImgInft = &pstChan->stImageIntf;
    VDEC_CHAN_STATINFO_S *pstStatInfo = &pstChan->stStatInfo;
#ifdef CHIP_TYPE_hi3712
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)pstFrame->u32Private;
#endif
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)(pstFrame->u32VdecInfo); //;00273086
    stImage.image_stride = pstFrame->u32YStride;
    stImage.image_id = pstFrame->u32FrameIndex;
    stImage.image_height = pstFrame->u32Height;
    stImage.image_width   = pstFrame->u32Width;
    stImage.luma_phy_addr = pstFrame->u32YAddr;
    stImage.top_luma_phy_addr = pstFrame->u32YAddr;

    stImage.ImgSize = pstPrivInfo->s32ImgSize;
    stImage.u32Is1D = pstPrivInfo->u32Is1D;
    stImage.is_processed_by_dnr = pstPrivInfo->is_processed_by_dnr;

    stImage.u32IsLastFrame = pstPrivInfo->u32IsLastFrame;
    stImage.resetNum  = pstPrivInfo->u32ResetNum;
    //l00273086
    pstStatInfo->u32VdecRlsFrameTry++;
    s32Ret = pstImgInft->release_image(pstImgInft->image_provider_inst_id, &stImage);

    if (VDEC_OK != s32Ret)
    {
        pstStatInfo->u32VdecRlsFrameFail++;
        return HI_FAILURE;
    }
    else
    {
        pstStatInfo->u32VdecRlsFrameOK++;
        return HI_SUCCESS;
    }
}

HI_S32 HI_DRV_VDEC_GetFrmBuf(HI_HANDLE hHandle, HI_DRV_VDEC_FRAME_BUF_S *pstFrm)
{
    HI_S32 s32Ret;
    HI_S32 as8TmpBuf[16];
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Get from VFMW */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_USRDEC_FRAME, as8TmpBuf);

    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d GET_USRDEC_FRAME err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    pstFrm->u32PhyAddr = (HI_U32)(as8TmpBuf[0]);
    pstFrm->u32Size = (HI_U32)(as8TmpBuf[1]);
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_PutFrmBuf(HI_HANDLE hHandle, HI_DRV_VDEC_USR_FRAME_S *pstFrm)
{
    HI_S32 s32Ret;
    USRDEC_FRAME_DESC_S stFrameDesc;
    VDEC_CHANNEL_S       *pstChan = HI_NULL;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Convert color format */
    switch (pstFrm->enFormat)
    {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            stFrameDesc.enFmt = COLOR_FMT_422_2x1;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            stFrameDesc.enFmt = COLOR_FMT_420;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;
#if 0

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
            stFrameDesc.enFmt = COLOR_FMT_400;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
            stFrameDesc.enFmt = COLOR_FMT_411;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
            stFrameDesc.enFmt = COLOR_FMT_422_1x2;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
            stFrameDesc.enFmt = COLOR_FMT_444;
            stFrameDesc.s32IsSemiPlanar = HI_TRUE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_400:
            stFrameDesc.enFmt = COLOR_FMT_400;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_411:
            stFrameDesc.enFmt = COLOR_FMT_411;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_420:
            stFrameDesc.enFmt = COLOR_FMT_420;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
            stFrameDesc.enFmt = COLOR_FMT_422_1x2;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
            stFrameDesc.enFmt = COLOR_FMT_422_2x1;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_444:
            stFrameDesc.enFmt = COLOR_FMT_444;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_410:
            stFrameDesc.enFmt = COLOR_FMT_410;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;
#endif

        case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
        default:
            stFrameDesc.enFmt = COLOR_FMT_BUTT;
            stFrameDesc.s32IsSemiPlanar = HI_FALSE;
            break;
    }

    stFrameDesc.Pts = pstFrm->u32Pts;
    stFrameDesc.s32YWidth  = pstFrm->s32YWidth;
    stFrameDesc.s32YHeight = pstFrm->s32YHeight;
    stFrameDesc.s32LumaPhyAddr = pstFrm->s32LumaPhyAddr;
    stFrameDesc.s32LumaStride = pstFrm->s32LumaStride;
    stFrameDesc.s32CbPhyAddr    = pstFrm->s32CbPhyAddr;
    stFrameDesc.s32CrPhyAddr    = pstFrm->s32CrPhyAddr;
    stFrameDesc.s32ChromStride  = pstFrm->s32ChromStride;
#ifdef CHIP_TYPE_hi3712
    stFrameDesc.s32ChromCrStride  = pstFrm->s32ChromCrStride;
#endif
    stFrameDesc.s32IsFrameValid = pstFrm->bFrameValid;

    /* Last frame is the end frame */
    if (pstFrm->bEndOfStream)
    {
        pstChan->u32EndFrmFlag = 3;
    }

    /* Put */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_PUT_USRDEC_FRAME, &stFrameDesc);

    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d PUT_USRDEC_FRAME err!\n", pstChan->hChan);
        return HI_FAILURE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_RecvFrmBuf(HI_S32 hHandle, HI_UNF_VO_FRAMEINFO_S *pstFrm)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo;

    if ((HI_NULL == pstFrm) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    memset(pstFrm, 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;


    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    /* Read a frame from VFMW */
    pstChan->stStatInfo.u32UserAcqFrameTry++;
    s32Ret = VDEC_RecvFrm(hHandle, pstChan, pstFrm);

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    pstChan->stStatInfo.u32UserAcqFrameOK++;

    pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)pstFrm->u32VdecInfo;
    pstChan->stLastDispFrameInfo.u32FrameIndex = pstFrm->u32FrameIndex;
    pstChan->stLastDispFrameInfo.u8EndFrame = pstPrivInfo->u8EndFrame;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_RlsFrmBuf(HI_S32 hHandle, HI_UNF_VO_FRAMEINFO_S  *pstFrm)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if ((HI_NULL == pstFrm) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    pstChan->stStatInfo.u32UserRlsFrameTry++;
    s32Ret = VDEC_RlsFrm(pstChan, pstFrm);

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        //HI_ERR_VDEC("VDEC_RlsFrm err!\n");
        return HI_FAILURE;
    }

    pstChan->stStatInfo.u32UserRlsFrameOK++;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_RlsFrmBufWithoutHandle(HI_S32 hHandle, HI_UNF_VO_FRAMEINFO_S *pstFrm)
{
    HI_S32 s32Ret;
    HI_U32 u32Yaddr;

    if (HI_NULL == pstFrm)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Get handle value */
    u32Yaddr = pstFrm->u32YAddr;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CHAN_ID_BY_MEM, &u32Yaddr);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VMFW GET_CHAN_ID_BY_MEM err!\n");
        return HI_FAILURE;
    }

    return HI_DRV_VDEC_RlsFrmBuf(u32Yaddr & 0xff, pstFrm);
}

#ifdef CHIP_TYPE_hi3712
static inline HI_VOID VDEC_YUVFormat_UNF2VFMW(HI_UNF_VIDEO_FORMAT_E enUNF, YUV_FORMAT_E *penVFMW)
{
    switch (enUNF)
    {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            *penVFMW = SPYCbCr422_2X1;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            *penVFMW = SPYCbCr420;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
            *penVFMW = SPYCbCr400;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
            *penVFMW = SPYCbCr411;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
            *penVFMW = SPYCbCr422_1X2;
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
            *penVFMW = SPYCbCr444;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_400:
            *penVFMW = PLNYCbCr400;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_411:
            *penVFMW = PLNYCbCr411;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_420:
            *penVFMW = PLNYCbCr420;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
            *penVFMW = PLNYCbCr422_1X2;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
            *penVFMW = PLNYCbCr422_2X1;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_444:
            *penVFMW = PLNYCbCr444;
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_410:
            *penVFMW = PLNYCbCr410;
            break;

        case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
        default:
            *penVFMW = SPYCbCr420;
            break;
    }
}
#endif
HI_S32 HI_DRV_VDEC_SET_RWZB_State(HI_S32 hHandle,HI_BOOL *bRWZB)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    hHandle = hHandle & 0xff;
    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Lock %d err!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan) ||
        (HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }
    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_RWZB_STATE, bRWZB);
    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d START_CHAN err!\n", pstChan->hChan);
        return HI_FAILURE;
    }
	VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    HI_INFO_VDEC("Chan %d set rwzb OK\n", hHandle);
    return HI_SUCCESS;
}

HI_VOID HI_DRV_VDEC_ReportDmxBufRls(HI_HANDLE hDmxVidChn)
{
    HI_S32 s32Ret = VDEC_ERR;
    HI_HANDLE hVdec;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (hDmxVidChn == HI_INVALID_HANDLE)
    {
        return;
    }

    for (hVdec = 0; hVdec < HI_VDEC_MAX_INSTANCE; hVdec++)
    {
        VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hVdec]);

        if (s32Ret != HI_SUCCESS)
        {
            continue;
        }

        pstChan = s_stVdecDrv.astChanEntity[hVdec].pstChan;

        if (pstChan == HI_NULL)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
            continue;
        }

        if (pstChan->hDmxVidChn == hDmxVidChn)
        {
            if (pstChan->hChan != HI_INVALID_HANDLE)
            {
                s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_REPORT_DEMUX_RELEASE, HI_NULL);

                if (s32Ret != VDEC_OK)
                {
                    HI_ERR_VDEC("Chan %d VDEC_CID_REPORT_DEMUX_RELEASE err!\n", pstChan->hChan);
                }
            }

            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
            break;
        }

        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hVdec]);
    }

    if (hVdec >= HI_VDEC_MAX_INSTANCE)
    {
        HI_WARN_VDEC("hDmxVidChn = %x ERROR!\n", hDmxVidChn);
    }
}

HI_S32 HI_DRV_VDEC_DNR_Capture(HI_S32 hHandle, HI_DRV_VDEC_DNR_Capture_S *pstDNR)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_VDEC_PRIV_FRAMEINFO_S *pstPrivInfo = HI_NULL;
    VDEC_DNR_Capture     stDNRParam;
    stDNRParam.pstCaptureInFrm = HI_VMALLOC_VDEC(sizeof(IMAGE));

    if (HI_NULL == stDNRParam.pstCaptureInFrm)
    {
        HI_ERR_VDEC("No Memery!\n");
        return HI_FAILURE;
    }

    stDNRParam.pstCaptureOutFrm = HI_VMALLOC_VDEC(sizeof(IMAGE));

    if (HI_NULL == stDNRParam.pstCaptureOutFrm)
    {
        HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
        HI_ERR_VDEC("No Memery!\n");
        return HI_FAILURE;
    }

    memset(stDNRParam.pstCaptureInFrm, 0, sizeof(IMAGE));
    memset(stDNRParam.pstCaptureOutFrm, 0, sizeof(IMAGE));

    if ((HI_NULL == pstDNR) || (HI_NULL == pstDNR->pstInFrame) ||
        (HI_NULL == pstDNR->pstOutFrame) || (HI_INVALID_HANDLE == hHandle))
    {
        HI_ERR_VDEC("Bad param!\n");
        HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
        HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("Bad param handle!\n");
        HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
        HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);

        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
        HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);

        return HI_FAILURE;
    }

    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d not init!\n", hHandle);
        HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
        HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);

        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;
    pstPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S *)pstDNR->pstInFrame->u32VdecInfo;

    stDNRParam.pstCaptureInFrm->top_luma_phy_addr = pstDNR->pstInFrame->u32YAddr;
    stDNRParam.pstCaptureInFrm->top_chrom_phy_addr = pstDNR->pstInFrame->u32CAddr;
    stDNRParam.pstCaptureInFrm->luma_phy_addr = pstDNR->pstInFrame->u32YAddr;
    stDNRParam.pstCaptureInFrm->chrom_phy_addr = pstDNR->pstInFrame->u32CAddr;
    stDNRParam.pstCaptureInFrm->image_width = pstDNR->pstInFrame->u32Width;
    stDNRParam.pstCaptureInFrm->image_height = pstDNR->pstInFrame->u32Height;
    stDNRParam.pstCaptureInFrm->image_stride = pstDNR->pstInFrame->u32YStride;
    stDNRParam.pstCaptureInFrm->image_id = pstDNR->pstInFrame->u32FrameIndex;
    stDNRParam.pstCaptureInFrm->ImageDnr.video_standard = pstPrivInfo->stDNRInfo.video_standard;
    stDNRParam.pstCaptureInFrm->ImageDnr.pic_structure = pstPrivInfo->stDNRInfo.u8PicStructure;
    stDNRParam.pstCaptureInFrm->ImageDnr.use_pic_qp_en = pstPrivInfo->stDNRInfo.s8Use_pic_qp_en;
    stDNRParam.pstCaptureInFrm->ImageDnr.QP_Y = pstPrivInfo->stDNRInfo.QP_Y;
    stDNRParam.pstCaptureInFrm->ImageDnr.QP_U = pstPrivInfo->stDNRInfo.QP_U;
    stDNRParam.pstCaptureInFrm->ImageDnr.QP_V = pstPrivInfo->stDNRInfo.QP_V;
    stDNRParam.pstCaptureInFrm->ImageDnr.chroma_format_idc = pstPrivInfo->stDNRInfo.u8Chroma_format_idc;
    stDNRParam.pstCaptureInFrm->ImageDnr.vc1_profile = pstPrivInfo->stDNRInfo.u8Vc1Profile;
    stDNRParam.pstCaptureInFrm->ImageDnr.Rangedfrm = pstPrivInfo->stDNRInfo.s32Rangedfrm;
    stDNRParam.pstCaptureInFrm->ImageDnr.Range_mapy_flag = pstPrivInfo->stDNRInfo.u8Range_mapy_flag;
    stDNRParam.pstCaptureInFrm->ImageDnr.Range_mapy = pstPrivInfo->stDNRInfo.u8Range_mapy;
    stDNRParam.pstCaptureInFrm->ImageDnr.Range_mapuv_flag = pstPrivInfo->stDNRInfo.u8Range_mapuv_flag;
    stDNRParam.pstCaptureInFrm->ImageDnr.Range_mapuv = pstPrivInfo->stDNRInfo.u8Range_mapuv;
    stDNRParam.pstCaptureInFrm->u32Circumrotate = pstPrivInfo->u32Circumrotate;
    stDNRParam.pstCaptureOutFrm->luma_2d_phy_addr = pstDNR->u32PhyAddr;
    //stDNRParam.u32Size = pstDNR->u32Size;
    pstChan->stDNR.pstFrame = pstDNR->pstOutFrame;
    pstDNR->u32TimeOutMs = DNR_CAP_TIMEOUT;
    atomic_inc(&pstChan->stDNR.atmWorking);
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_FRAME_DNR, &stDNRParam);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d DNRCapture err!\n", pstChan->hChan);
        goto err;
    }

    if (0 == wait_event_interruptible_timeout(pstChan->stDNR.stWaitQue,
            (atomic_read(&pstChan->stDNR.atmWorking) == 0), msecs_to_jiffies(pstDNR->u32TimeOutMs)))
    {
        HI_ERR_VDEC("Chan %d DNRCapture time out!\n", pstChan->hChan);
        goto err;
    }

    pstChan->stDNR.pstFrame = HI_NULL;
    HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
    HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
err:
    pstChan->stDNR.pstFrame = HI_NULL;
    atomic_set(&pstChan->stDNR.atmWorking, 0);
    HI_VFREE_VDEC(stDNRParam.pstCaptureInFrm);
    HI_VFREE_VDEC(stDNRParam.pstCaptureOutFrm);

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_FAILURE;
}

static VDEC_CHAN_CAP_LEVEL_E VDEC_CapLevelUnfToFmw(HI_UNF_AVPLAY_OPEN_OPT_S *pstVdecCapParam)
{
    if (HI_UNF_VCODEC_DEC_TYPE_ISINGLE == pstVdecCapParam->enDecType)
    {
        return CAP_LEVEL_SINGLE_IFRAME_FHD;
    }
    else if (HI_UNF_VCODEC_DEC_TYPE_NORMAL == pstVdecCapParam->enDecType)
    {
        if (HI_UNF_VCODEC_PRTCL_LEVEL_H264 == pstVdecCapParam->enProtocolLevel)
        {
            return pstVdecCapParam->enCapLevel + CAP_LEVEL_H264_QCIF;
        }
        else
        {
            return pstVdecCapParam->enCapLevel + CAP_LEVEL_MPEG_QCIF;
        }
    }
    else
    {
        return CAP_LEVEL_BUTT;
    }
}

static HI_S32 VDEC_Chan_AllocHandle(HI_HANDLE *phHandle, struct file *pstFile)
{
    HI_U32 i;

    if (HI_NULL == phHandle)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Check ready flag */
    if (s_stVdecDrv.bReady != HI_TRUE)
    {
        HI_ERR_VDEC("Need open first!\n");
        return HI_ERR_VDEC_NOT_OPEN;
    }

    /* Lock */
    if (down_interruptible(&s_stVdecDrv.stSem))
    {
        HI_ERR_VDEC("Global lock err!\n");
        return HI_FAILURE;
    }

    /* Check channel number */
    if (s_stVdecDrv.u32ChanNum >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("Too many chans:%d!\n", s_stVdecDrv.u32ChanNum);
        goto err0;
    }

    /* Allocate new channel */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
    {
        if (HI_FALSE == s_stVdecDrv.astChanEntity[i].bUsed)
        {
            s_stVdecDrv.astChanEntity[i].bUsed = HI_TRUE;
            s_stVdecDrv.astChanEntity[i].pstChan = HI_NULL;
            s_stVdecDrv.astChanEntity[i].eCallBack = 0;
            s_stVdecDrv.astChanEntity[i].DmxHdlCallBack = 0;
            s_stVdecDrv.astChanEntity[i].u32File = (HI_U32)HI_NULL;
            atomic_set(&s_stVdecDrv.astChanEntity[i].atmUseCnt, 0);
            atomic_set(&s_stVdecDrv.astChanEntity[i].atmRlsFlag, 0);
            break;
        }
    }

    if (i >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("Too many chans!\n");
        goto err0;
    }

    s_stVdecDrv.astChanEntity[i].pstChan = HI_NULL;
    s_stVdecDrv.astChanEntity[i].u32File = (HI_U32)pstFile;
    s_stVdecDrv.u32ChanNum++;
    up(&s_stVdecDrv.stSem);
    *phHandle = (HI_ID_VDEC << 16) | i;
    return HI_SUCCESS;

err0:
    up(&s_stVdecDrv.stSem);
    return HI_FAILURE;
}

static HI_S32 VDEC_Chan_FreeHandle(HI_HANDLE hHandle)
{
    /* Clear global parameter */
    down(&s_stVdecDrv.stSem);

    if (s_stVdecDrv.u32ChanNum > 0)
    {
        s_stVdecDrv.u32ChanNum--;
    }

    s_stVdecDrv.astChanEntity[hHandle].bUsed = HI_FALSE;
    up(&s_stVdecDrv.stSem);
    return HI_SUCCESS;
}

static HI_VOID VDEC_InitCapLevel(VDEC_CHANNEL_S *pstChan, VDEC_CHAN_CAP_LEVEL_E enCapToFmw)
{
    switch (enCapToFmw)
    {
        case CAP_LEVEL_MPEG_QCIF:
            pstChan->stOption.s32MaxWidth  = 176;
            pstChan->stOption.s32MaxHeight = 144;
            break;

        case CAP_LEVEL_MPEG_CIF:
            pstChan->stOption.s32MaxWidth  = 352;
            pstChan->stOption.s32MaxHeight = 288;
            break;

        case CAP_LEVEL_MPEG_D1:
            pstChan->stOption.s32MaxWidth  = 720;
            pstChan->stOption.s32MaxHeight = 576;
            break;

        case CAP_LEVEL_MPEG_720:
            pstChan->stOption.s32MaxWidth  = 1280;
            pstChan->stOption.s32MaxHeight = 720;
            break;

        case CAP_LEVEL_MPEG_FHD:
            pstChan->stOption.s32MaxWidth  = 1920;
            pstChan->stOption.s32MaxHeight = 1088;
            break;

        case CAP_LEVEL_H264_QCIF:
            pstChan->stOption.s32MaxWidth  = 176;
            pstChan->stOption.s32MaxHeight = 144;
            break;

        case CAP_LEVEL_H264_CIF:
            pstChan->stOption.s32MaxWidth  = 352;
            pstChan->stOption.s32MaxHeight = 288;
            break;

        case CAP_LEVEL_H264_D1:
            pstChan->stOption.s32MaxWidth  = 720;
            pstChan->stOption.s32MaxHeight = 576;
            break;

        case CAP_LEVEL_H264_720:
            pstChan->stOption.s32MaxWidth  = 1280;
            pstChan->stOption.s32MaxHeight = 720;
            break;

        case CAP_LEVEL_H264_FHD:
            pstChan->stOption.s32MaxWidth  = 1920;
            pstChan->stOption.s32MaxHeight = 1088;
            break;

        case CAP_LEVEL_H264_BYDHD:
            pstChan->stOption.s32MaxWidth  = 5632;
            pstChan->stOption.s32MaxHeight = 4224;
            break;

        case CAP_LEVEL_SINGLE_IFRAME_FHD:
            pstChan->stOption.s32MaxWidth  = 1920;
            pstChan->stOption.s32MaxHeight = 1088;
            break;

        default:
            pstChan->stOption.s32MaxWidth  = 1920;
            pstChan->stOption.s32MaxHeight = 1088;
            break;
    }

    return;
}

static HI_S32 VDEC_Chan_InitParam(HI_HANDLE hHandle, HI_UNF_AVPLAY_OPEN_OPT_S *pstCapParam)
{
    VDEC_CHANNEL_S         *pstChan = HI_NULL;
    VDEC_CHAN_CAP_LEVEL_E   enCapToFmw;
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716M;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V310;

    /* check input parameters */
    VDEC_ASSERT_RETURN(pstCapParam != HI_NULL, HI_ERR_VDEC_INVALID_PARA);

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);

    if ((HI_CHIP_TYPE_HI3110E == enChipType) && (HI_CHIP_VERSION_V500 == enChipVersion))
    {
        if (HI_UNF_VCODEC_CAP_LEVEL_D1 < pstCapParam->enCapLevel)
        {
            HI_ERR_VDEC("Bad param Usupport!\n");
            return HI_ERR_VDEC_INVALID_PARA;
        }
    }

    /* Allocate resource */
    pstChan = HI_VMALLOC_VDEC(sizeof(VDEC_CHANNEL_S));

    if (HI_NULL == pstChan)
    {
        HI_ERR_VDEC("No memory\n");
        return HI_FAILURE;
    }

    /* Initialize the channel attributes */
    memset(pstChan, 0, sizeof(VDEC_CHANNEL_S));
    pstChan->hChan = HI_INVALID_HANDLE;
    pstChan->hStrmBuf = HI_INVALID_HANDLE;
    pstChan->u32StrmBufSize = 0;
    pstChan->hDmxVidChn = HI_INVALID_HANDLE;
    pstChan->u32DmxBufSize = 0;
    pstChan->bNormChange = HI_FALSE;
    pstChan->stNormChangeParam.enNewFormat    = HI_UNF_ENC_FMT_BUTT;
    pstChan->enUserSetSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN;
    pstChan->stNormChangeParam.u32ImageWidth  = 0;
    pstChan->stNormChangeParam.u32ImageHeight = 0;
    //pstChan->stNormChangeParam.stFrameRate.u32fpsInteger = 0;
    //pstChan->stNormChangeParam.stFrameRate.u32fpsDecimal = 0;
    pstChan->stNormChangeParam.u32FrameRate = 0;
    //pstChan->stNormChangeParam.bProgressive = HI_FALSE;
    pstChan->stNormChangeParam.enSampleType = HI_FALSE;
    pstChan->stIFrame.st2dBuf.u32Size = 0;
    pstChan->bNewFrame = HI_FALSE;
    pstChan->bFramePackingChange = HI_FALSE;
    pstChan->bNewSeq = HI_FALSE;
    pstChan->bNewUserData = HI_FALSE;
    pstChan->bIFrameErr = HI_FALSE;
    pstChan->pstUsrData = HI_NULL;
    pstChan->stFrameRateParam.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS;
    pstChan->stFrameRateParam.stSetFrameRate.u32fpsInteger = 25;
    pstChan->stFrameRateParam.stSetFrameRate.u32fpsDecimal = 0;
    pstChan->bSetEosFlag = HI_FALSE;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
    pstChan->s32Speed = 1024;
    pstChan->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_FALSE;

    atomic_set(&pstChan->stDNR.atmWorking, 0);
    init_waitqueue_head(&pstChan->stDNR.stWaitQue);
    pstChan->stDNR.pstFrame = HI_NULL;

    pstChan->stOption.Purpose = PURPOSE_DECODE;
    pstChan->stOption.MemAllocMode = MODE_PART_BY_SDK;
    pstChan->stOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable = s_stVdecDrv.astChanEntity[hHandle].u32DynamicSwitchDnrEn;//l00273086
    pstChan->stOption.DynamicSwitchDnrParam.DnrSwitchThreshold = CAP_LEVEL_H264_D1; //l00273086
    pstChan->stOption.DynamicSwitchDnrParam.DnrNum = 6;//l00273086
    pstChan->stOption.DynamicSwitchDnrParam.s32DnrEnable = 0;

    enCapToFmw = VDEC_CapLevelUnfToFmw(pstCapParam);
    pstChan->enCapToFmw = enCapToFmw;

    VDEC_InitCapLevel(pstChan, enCapToFmw);

    pstChan->stOption.s32MaxSliceNum = 136;
    pstChan->stOption.s32MaxSpsNum = 32;
    pstChan->stOption.s32MaxPpsNum = 256;
    pstChan->stOption.s32SupportBFrame = 1;
    pstChan->stOption.s32SupportH264 = 1;
    pstChan->stOption.s32ReRangeEn = 1;     /* Support rerange frame buffer when definition change */
    pstChan->stOption.s32SlotWidth = 0;
    pstChan->stOption.s32SlotHeight = 0;

    if (RefFrameNum < HI_VDEC_REF_FRAME_MIN)
    {
        RefFrameNum = HI_VDEC_REF_FRAME_MIN;
    }
    else if (RefFrameNum > HI_VDEC_REF_FRAME_MAX)
    {
        RefFrameNum = HI_VDEC_REF_FRAME_MAX;
    }

    if (CAP_LEVEL_SINGLE_IFRAME_FHD == enCapToFmw)
    {
        pstChan->stOption.s32MaxRefFrameNum = 1;
    }
    else
    {
        pstChan->stOption.s32MaxRefFrameNum = RefFrameNum;
    }

    if (DispFrameNum < HI_VDEC_DISP_FRAME_MIN)
    {
        DispFrameNum = HI_VDEC_DISP_FRAME_MIN;
    }
    else if (DispFrameNum > HI_VDEC_DISP_FRAME_MAX)
    {
        DispFrameNum = HI_VDEC_DISP_FRAME_MAX;
    }

    if (CAP_LEVEL_SINGLE_IFRAME_FHD == enCapToFmw)
    {
        pstChan->stOption.s32DisplayFrameNum = 1;
    }
    else
    {
        pstChan->stOption.s32DisplayFrameNum = DispFrameNum;// - HI_VDEC_BUFFER_FRAME;
    }

    pstChan->stOption.s32SCDBufSize = HI_VDEC_SCD_BUFFER_SIZE;

    /* Register proc file of this chan */
    VDEC_RegChanProc(hHandle);

    /* Set default config */
    pstChan->stCurCfg = s_stVdecDrv.stDefCfg;

    pstChan->enDisplayNorm = HI_UNF_ENC_FMT_BUTT;
    pstChan->stLastFrm.enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_BUTT;

    pstChan->u32ValidPtsFlag = 0;

    /* Alloc pts recover channel */
    PTSREC_Alloc(hHandle);

    /* Update information of VDEC device */
    s_stVdecDrv.astChanEntity[hHandle].pstChan = pstChan;
    pstChan->stUserCfgCap = *pstCapParam;

#ifdef TEST_VDEC_SAVEFILE
    VDEC_Dbg_OpenSaveFile(hHandle);
#endif

    HI_INFO_VDEC("Chan %d alloc OK!\n", hHandle);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_Create(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    HI_S8 as8TmpBuf[128];
    VDEC_CHANNEL_S         *pstChan = HI_NULL;
    IMAGE_INTF_S           *pstImageIntf  = HI_NULL;
    STREAM_INTF_S          *pstStreamIntf = HI_NULL;
    HI_U32 u32VDHSize = 0;

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (HI_NULL == pstChan)
    {
        HI_ERR_VDEC("VDEC_Chan_Create err , chan %d invalid!\n", hHandle);
        return HI_FAILURE;
    }

    ((HI_S32 *)as8TmpBuf)[0] = (HI_S32)pstChan->enCapToFmw;
    ((HI_S32 *)as8TmpBuf)[1] = (HI_S32)&pstChan->stOption;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_WITH_OPTION, as8TmpBuf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("VFMW GET_CHAN_MEM_CFG err!\n");
        return HI_FAILURE;
    }

    pstChan->stMemSize = *(DETAIL_MEM_SIZE *)as8TmpBuf;

    /* Alloc SCD buffer */
    if (pstChan->stMemSize.ScdDetailMem > 0)
    {
#if defined (CFG_ANDROID_TOOLCHAIN)
        s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_SCD", "vdec", pstChan->stMemSize.ScdDetailMem, 0, &pstChan->stSCDMMZBuf);
#else
        s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_SCD", HI_NULL, pstChan->stMemSize.ScdDetailMem, 0, &pstChan->stSCDMMZBuf);
#endif

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d alloc SCD MMZ err!\n", hHandle);
            goto err1;
        }

        pstChan->stOption.MemDetail.ChanMemScd.Length  = pstChan->stSCDMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemScd.PhyAddr = pstChan->stSCDMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemScd.VirAddr = (HI_VOID *)pstChan->stSCDMMZBuf.u32StartVirAddr;
        HI_INFO_VDEC("<0>SCD Buffer allocate %d!\n", pstChan->stSCDMMZBuf.u32Size);
    }

    /* Context memory allocated by VFMW */
    pstChan->stOption.MemDetail.ChanMemCtx.Length  = 0;
    pstChan->stOption.MemDetail.ChanMemCtx.PhyAddr = 0;
    pstChan->stOption.MemDetail.ChanMemCtx.VirAddr = HI_NULL;

    /* Pmv memory allocated by VFMW */
    if (pstChan->stMemSize.PmvDetailMem > 0)
    {
#if defined (CFG_ANDROID_TOOLCHAIN)
        s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_PMV", "vdec", pstChan->stMemSize.PmvDetailMem, 0, &pstChan->stPMVMMZBuf);
#else
        s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_PMV", HI_NULL, pstChan->stMemSize.PmvDetailMem, 0, &pstChan->stPMVMMZBuf);
#endif

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d alloc PMV MMZ err!\n", hHandle);
            goto errA;
        }

        pstChan->stOption.MemDetail.ChanMemPmv.Length  = pstChan->stPMVMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemPmv.PhyAddr = pstChan->stPMVMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemPmv.VirAddr = (HI_VOID *)pstChan->stPMVMMZBuf.u32StartVirAddr;
        HI_INFO_VDEC("<0>PMV Buffer allocate %d!\n", pstChan->stPMVMMZBuf.u32Size);
    }
    else
    {
        pstChan->stOption.MemDetail.ChanMemPmv.Length  = 0;//pstChan->stPMVMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemPmv.PhyAddr = 0;//pstChan->stPMVMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemPmv.VirAddr = NULL;//(HI_VOID*)pstChan->stPMVMMZBuf.u32StartVirAddr;
    }

    /* Allocate frame buffer memory(VDH) */
#if (defined CHIP_TYPE_hi3712) && (1 == HI_VDEC_SVDEC_SUPPORT)
    u32VDHSize = (pstChan->stMemSize.VdhDetailMem > HI_VDEC_SVDEC_VDH_MEM) ? pstChan->stMemSize.VdhDetailMem : HI_VDEC_SVDEC_VDH_MEM;
#else
    u32VDHSize = pstChan->stMemSize.VdhDetailMem;
#endif

    if (u32VDHSize > 0)
    {
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)

        if (0 != st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr && st_VdecChanPreUsedMMZInfo[0].u32NodeState == 0 && u32VDHSize <= st_VdecChanPreUsedMMZInfo[0].u32Size)
        {
            pstChan->stVDHMMZBuf.u32Size  = st_VdecChanPreUsedMMZInfo[0].u32Size;
            pstChan->stVDHMMZBuf.u32StartPhyAddr = st_VdecChanPreUsedMMZInfo[0].u32StartPhyAddr;
            pstChan->stVDHMMZBuf.u32StartVirAddr = st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr;
            st_VdecChanPreUsedMMZInfo[0].u32NodeState = 1;
        }
        else
#endif
        {
#if defined (CFG_ANDROID_TOOLCHAIN)
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_VDH", "vdec", u32VDHSize, 0, &pstChan->stVDHMMZBuf);
#else
            s32Ret = HI_DRV_MMZ_AllocAndMap("VFMW_VDH", HI_NULL, u32VDHSize, 0, &pstChan->stVDHMMZBuf);
#endif

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("Chan %d alloc VDH MMZ err!\n", hHandle);
                goto errB;
            }
        }

        pstChan->stOption.MemDetail.ChanMemVdh.Length  = pstChan->stVDHMMZBuf.u32Size;
        pstChan->stOption.MemDetail.ChanMemVdh.PhyAddr = pstChan->stVDHMMZBuf.u32StartPhyAddr;
        pstChan->stOption.MemDetail.ChanMemVdh.VirAddr = (HI_VOID *)pstChan->stVDHMMZBuf.u32StartVirAddr;
        HI_INFO_VDEC("VDH Buffer allocate %d!\n", pstChan->stVDHMMZBuf.u32Size);
    }

    ((HI_S32 *)as8TmpBuf)[0] = (HI_S32)pstChan->enCapToFmw;
    ((HI_S32 *)as8TmpBuf)[1] = (HI_S32)&pstChan->stOption;

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_CREATE_CHAN_WITH_OPTION, as8TmpBuf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("VFMW CREATE_CHAN_WITH_OPTION err!\n");
        goto err2;
    }

    /* Record hHandle */
    pstChan->hChan = *(HI_U32 *)as8TmpBuf;
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;
    HI_INFO_VDEC("Create channel success:%d!\n", pstChan->hChan);

    /* Set interface of read/release stream buffer */
    pstStreamIntf = &pstChan->stStrmIntf;
    pstStreamIntf->stream_provider_inst_id = hHandle;
    pstStreamIntf->read_stream = VDEC_Chan_RecvStrmBuf;
    pstStreamIntf->release_stream = VDEC_Chan_RlsStrmBuf;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, pstStreamIntf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SET_STREAM_INTF err!\n", hHandle);
        goto err3;
    }

    /* Get interface of read/release image */
    pstImageIntf = &pstChan->stImageIntf;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_IMAGE_INTF, pstImageIntf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GET_IMAGE_INTF err!\n", hHandle);
        goto err3;
    }

    return HI_SUCCESS;

err3:
    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)( pstChan->hChan, VDEC_CID_DESTROY_CHAN_WITH_OPTION, HI_NULL);

err2:

    if (!((pstChan->stVDHMMZBuf.u32StartVirAddr >= st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr)
          && (pstChan->stVDHMMZBuf.u32StartVirAddr <= (st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr + st_VdecChanPreUsedMMZInfo[0].u32Size))))
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stVDHMMZBuf);
    }
    else
    {
        st_VdecChanPreUsedMMZInfo[0].u32NodeState = 0;
    }

errB:
    HI_DRV_MMZ_UnmapAndRelease(&pstChan->stPMVMMZBuf);
errA:
    HI_DRV_MMZ_UnmapAndRelease(&pstChan->stSCDMMZBuf);

err1:
    return HI_FAILURE;
}
static HI_S32 VDEC_Chan_Destroy(HI_HANDLE hHandle)
{
    HI_S32 s32Ret ;
    HI_HANDLE hChanID = 0;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (NULL == pstChan)
    {
        HI_ERR_VDEC("Chan %d NULL == pstChan!\n", hHandle);
        return HI_FAILURE;
    }

    hChanID = pstChan->hChan;

    /* Destroy VFMW decode channel */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)( pstChan->hChan, VDEC_CID_DESTROY_CHAN_WITH_OPTION, HI_NULL);

        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d DESTROY_CHAN err!\n", hHandle);
        }

        pstChan->hChan = HI_INVALID_HANDLE;
    }

    /* Free vfmw memory */
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)

    if (0 != st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr && st_VdecChanPreUsedMMZInfo[0].u32NodeState == 1 &&  pstChan->stVDHMMZBuf.u32StartPhyAddr == st_VdecChanPreUsedMMZInfo[0].u32StartPhyAddr)
    {
        st_VdecChanPreUsedMMZInfo[0].u32NodeState = 0;
    }
    else
#endif
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stVDHMMZBuf);
    }

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)( hChanID, VDEC_CID_GET_SCDBUFFER_VIRADDR, &pstChan->stSCDMMZBuf.u32StartVirAddr);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GET_SCDBUFFER_VIRADDR err!\n", hHandle);
    }

    HI_DRV_MMZ_UnmapAndRelease(&pstChan->stSCDMMZBuf);
    HI_DRV_MMZ_UnmapAndRelease(&pstChan->stPMVMMZBuf);


    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_Free(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Stop channel first */
    HI_DRV_VDEC_ChanStop(hHandle);

    VDEC_CHAN_RLS_DOWN(&s_stVdecDrv.astChanEntity[hHandle], HI_INVALID_TIME);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("INFO: %d use too long !\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_RLS_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (NULL == pstChan)
    {
        VDEC_CHAN_RLS_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d NULL == pstChan!\n", hHandle);
        return HI_FAILURE;
    }

    /* Remove proc interface */
    VDEC_UnRegChanProc(hHandle);

#ifdef TEST_VDEC_SAVEFILE
    VDEC_Dbg_CloseSaveFile(hHandle);
#endif

    /* Free I frame 2d buffer */
    if (0 != pstChan->stIFrame.st2dBuf.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stIFrame.st2dBuf);
        pstChan->stIFrame.st2dBuf.u32Size = 0;
    }

    /* Free EOS MMZ */
    if (0 != pstChan->stEOSBuffer.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        pstChan->stEOSBuffer.u32Size = 0;
    }

    /* Free pts recover channel */
    PTSREC_Free(hHandle);

    /* Free user data */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Free(hHandle);
#endif

    /* Free resource */
    if (pstChan)
    {
        if (pstChan->pstUsrData)
        {
            HI_KFREE_VDEC(pstChan->pstUsrData);
        }

        HI_VFREE_VDEC(pstChan);
    }

    /* Clear global parameter */
    down(&s_stVdecDrv.stSem);
    s_stVdecDrv.astChanEntity[hHandle].pstChan = HI_NULL;
    s_stVdecDrv.astChanEntity[hHandle].u32File = (HI_U32)HI_NULL;
    up(&s_stVdecDrv.stSem);

    VDEC_CHAN_RLS_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d free OK!\n", hHandle);
    return HI_SUCCESS;
}


HI_S32 HI_DRV_VDEC_ChanStart(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Lock %d err!\n", hHandle);
        return HI_FAILURE;
    }

    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        HI_ERR_VDEC("Chan %d Start err , not init!\n", hHandle);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (HI_INVALID_HANDLE == s_stVdecDrv.astChanEntity[hHandle].pstChan->hChan)
    {
        pstChan->enCurState = VDEC_CHAN_STATE_STOP;
        s32Ret = VDEC_Chan_Create(hHandle);

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d Start err ,VDEC_Chan_Create err! HI_DRV_VPSS_USER_COMMAND_STOP:%d\n", hHandle, s32Ret);
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            return HI_FAILURE;
        }
    }

    s32Ret = VDEC_SetAttr(pstChan);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetAttr err!\n", hHandle);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        goto error_1;   // 释放已经申请的内存
    }

    /* Already running, retrun HI_SUCCESS */
    if (pstChan->enCurState == VDEC_CHAN_STATE_RUN)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_SUCCESS;
    }

    /* Initialize status information*/
    memset(&(pstChan->stStatInfo), 0, sizeof(VDEC_CHAN_STATINFO_S));
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
    pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;

    /* Start VFMW channel */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_START_CHAN, HI_NULL);

    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d START_CHAN err!\n", pstChan->hChan);
        goto error_1;
    }

    /* Start pts recover channel */
    PTSREC_Start(hHandle);

    /* Start user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Start(hHandle);
#endif

    /* Save state */
    pstChan->enCurState = VDEC_CHAN_STATE_RUN;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d start OK\n", hHandle);
    return HI_SUCCESS;

error_1:
    s32Ret = VDEC_Chan_Destroy(hHandle);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("inter VDEC_Chan_Destroy err!\n");
    }

    return HI_FAILURE;
}

HI_S32 HI_DRV_VDEC_ChanStop(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;
    HI_U32 i;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Already stop, retrun HI_SUCCESS */
    if (pstChan->enCurState == VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_SUCCESS;
    }

    /* Stop VFMW */
    for (i = 0; i < 50; i++)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_STOP_CHAN, HI_NULL);

        if (VDEC_OK != s32Ret)
        {
            msleep(10);
            HI_WARN_VDEC("Chan %d STOP_CHAN err!\n", pstChan->hChan);
        }
        else
        {
            break;
        }
    }

    /* Lock */
    if (down_interruptible(&s_stVdecDrv.stSem))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Global lock err!\n");
        return HI_FAILURE;
    }

    /* Destroy VFMW decode channel */
    s32Ret = VDEC_Chan_Destroy(hHandle);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("VDEC_Chan_Destroy err! s32Ret:%#x\n", s32Ret);
    }

    up(&s_stVdecDrv.stSem);

    /* Stop user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Stop(hHandle);
#endif

    /* Stop pts recover channel */
    PTSREC_Stop(hHandle);

    /* Save state */
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;
    pstChan->u32ValidPtsFlag = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
    pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;

    if (0 != pstChan->stEOSBuffer.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stEOSBuffer);
        pstChan->stEOSBuffer.u32Size = 0;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d stop ret:%x\n", hHandle, s32Ret);
    return s32Ret;
}

static HI_S32 VDEC_Chan_Reset(HI_HANDLE hHandle, HI_DRV_VDEC_RESET_TYPE_E enType)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Must stop channel before reset */
    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    if (HI_INVALID_HANDLE != pstChan->hStrmBuf)
    {
        s32Ret = BUFMNG_Reset(pstChan->hStrmBuf);

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Chan %d strm buf reset err!\n", hHandle);
        }
    }

    /* Reset vfmw */
    if (HI_INVALID_HANDLE != pstChan->hChan)
    {
        s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_RESET_CHAN, HI_NULL);

        if (VDEC_OK != s32Ret)
        {
            HI_ERR_VDEC("Chan %d RESET_CHAN err!\n", pstChan->hChan);
        }
    }

    /* Reset end frame flag */
    pstChan->bEndOfStrm = HI_FALSE;
    pstChan->u32EndFrmFlag = 0;
    pstChan->u32LastFrmId = -1;
    pstChan->u32LastFrmTryTimes = 0;

    pstChan->u32ValidPtsFlag = 0;
    pstChan->u8ResolutionChange = 0;
    pstChan->u32DiscontinueCount = 0;
    pstChan->s32Speed = 1024;
    pstChan->bSetEosFlag = HI_FALSE;
    pstChan->stLastDispFrameInfo.u8EndFrame = 0;

    /* Reset pts recover channel */
    PTSREC_Reset(hHandle);

    /* Reset user data channel */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Reset(hHandle);
#endif

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d reset OK\n", hHandle);
    return HI_SUCCESS;
}


static VID_STD_E VDEC_CodecTypeUnfToFmw(HI_UNF_VCODEC_TYPE_E unfType)
{
    switch (unfType)
    {
        case HI_UNF_VCODEC_TYPE_MPEG2:
            return STD_MPEG2;

        case HI_UNF_VCODEC_TYPE_MPEG4:
            return STD_MPEG4;

        case HI_UNF_VCODEC_TYPE_AVS:
            return STD_AVS;

        case HI_UNF_VCODEC_TYPE_H263:
            return STD_H263;

        case HI_UNF_VCODEC_TYPE_VP6:
            return STD_VP6;

        case HI_UNF_VCODEC_TYPE_VP6F:
            return STD_VP6F;

        case HI_UNF_VCODEC_TYPE_VP6A:
            return STD_VP6A;

        case HI_UNF_VCODEC_TYPE_VP8:
            return STD_VP8;

        case HI_UNF_VCODEC_TYPE_SORENSON:
            return STD_SORENSON;

        case HI_UNF_VCODEC_TYPE_H264:
            return STD_H264;

        case HI_UNF_VCODEC_TYPE_REAL9:
            return STD_REAL9;

        case HI_UNF_VCODEC_TYPE_REAL8:
            return STD_REAL8;

        case HI_UNF_VCODEC_TYPE_VC1:
            return STD_VC1;

        case HI_UNF_VCODEC_TYPE_DIVX3:
            return STD_DIVX3;

        case HI_UNF_VCODEC_TYPE_RAW:
            return STD_RAW;

        case HI_UNF_VCODEC_TYPE_MJPEG:
            return STD_USER;

        default:
            return STD_END_RESERVED;
    }
}

static HI_S32 VDEC_SetAttr(VDEC_CHANNEL_S *pstChan)
{
    HI_S32 s32Ret;
    VDEC_CHAN_CFG_S stVdecChanCfg;
    HI_UNF_VCODEC_ATTR_S *pstCfg = &pstChan->stCurCfg;
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716M;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V310;

    stVdecChanCfg.eVidStd = VDEC_CodecTypeUnfToFmw(pstCfg->enType);

    if (HI_UNF_VCODEC_TYPE_VC1 == pstCfg->enType)
    {
        stVdecChanCfg.StdExt.Vc1Ext.IsAdvProfile = pstCfg->unExtAttr.stVC1Attr.bAdvancedProfile;
        stVdecChanCfg.StdExt.Vc1Ext.CodecVersion = (HI_S32)(pstCfg->unExtAttr.stVC1Attr.u32CodecVersion);
    }
    else if ((HI_UNF_VCODEC_TYPE_VP6 == pstCfg->enType) ||
             (HI_UNF_VCODEC_TYPE_VP6F == pstCfg->enType) ||
             (HI_UNF_VCODEC_TYPE_VP6A == pstCfg->enType))
    {
        stVdecChanCfg.StdExt.Vp6Ext.bReversed = pstCfg->unExtAttr.stVP6Attr.bReversed;
    }

    stVdecChanCfg.s32ChanPriority = pstCfg->u32Priority;
    stVdecChanCfg.s32ChanErrThr = pstCfg->u32ErrCover;

    switch (pstCfg->enMode)
    {
        case HI_UNF_VCODEC_MODE_NORMAL:
            stVdecChanCfg.s32DecMode = IPB_MODE;
            break;

        case HI_UNF_VCODEC_MODE_IP:
            stVdecChanCfg.s32DecMode = IP_MODE;
            break;

        case HI_UNF_VCODEC_MODE_I:
            stVdecChanCfg.s32DecMode = I_MODE;
            break;

        case HI_UNF_VCODEC_MODE_FIRST_I:
            stVdecChanCfg.s32DecMode = FIRST_I_MODE;
            break;

        case HI_UNF_VCODEC_MODE_DROP_INVALID_B:
            stVdecChanCfg.s32DecMode = DISCARD_B_BF_P_MODE;
            break;

        case HI_UNF_VCODEC_MODE_BUTT:
        default:
            stVdecChanCfg.s32DecMode = IPB_MODE;
            break;
    }

    stVdecChanCfg.s32DecOrderOutput = pstCfg->bOrderOutput;
    stVdecChanCfg.s32ChanStrmOFThr = (pstChan->u32DmxBufSize * 95) / 100;
    stVdecChanCfg.s32DnrTfEnable = 0;
    stVdecChanCfg.s32DnrDispOutEnable = 0;

    /* MV300 COMPRESS PATCH */
    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);

    if (((HI_CHIP_TYPE_HI3716M == enChipType) && (HI_CHIP_VERSION_V300 == enChipVersion)) ||
        ((HI_CHIP_TYPE_HI3712 == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion)))
    {
        /* Config decode compress attr */
        stVdecChanCfg.s32VcmpEn = EnVcmp;
        stVdecChanCfg.s32VcmpWmStartLine = 0;
        stVdecChanCfg.s32VcmpWmEndLine = 0;
    }
    else
    {
        /*
        if (HI_UNF_VCODEC_TYPE_VP8 == pstCfg->enType)
        {
            HI_ERR_VDEC("Unsupport protocol: %d!\n", pstCfg->enType);
            return HI_FAILURE;
        }
        */
        /* Others do not compress */
        stVdecChanCfg.s32VcmpEn = 0;
    }

    HI_INFO_VDEC("StrmOFThr:%dK/%dK.\n", (stVdecChanCfg.s32ChanStrmOFThr / 1024), (pstChan->u32DmxBufSize / 1024));

    /* Only if pstCfg->orderOutput is 1 we do the judge */
    if (pstCfg->bOrderOutput)
    {
        if (pstCfg->bOrderOutput & HI_UNF_VCODEC_CTRL_OPTION_SIMPLE_DPB)
        {
            /* set to 2 means both bOrderoutput and SIMPLE_DPB */
            stVdecChanCfg.s32DecOrderOutput = 2;
        }
    }

    /* Set to VFMW */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_CFG_CHAN, &stVdecChanCfg);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW CFG_CHAN err!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Chan_CheckCfg(VDEC_CHANNEL_S *pstChan, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Level = 0;
    HI_UNF_VCODEC_ATTR_S *pstCfg = &pstChan->stCurCfg;

    if (pstCfgParam->enType >= HI_UNF_VCODEC_TYPE_BUTT)
    {
        HI_ERR_VDEC("Bad type:%d!\n", pstCfgParam->enType);
        return HI_FAILURE;
    }

    if (pstCfgParam->enMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_VDEC("Bad mode:%d!\n", pstCfgParam->enMode);
        return HI_FAILURE;
    }

    if (pstCfgParam->u32ErrCover > 100)
    {
        HI_ERR_VDEC("Bad err_cover:%d!\n", pstCfgParam->u32ErrCover);
        return HI_FAILURE;
    }

    if (pstCfgParam->u32Priority > HI_UNF_VCODEC_MAX_PRIORITY)
    {
        HI_ERR_VDEC("Bad priority:%d!\n", pstCfgParam->u32Priority);
        return HI_FAILURE;
    }

    /* enVdecType can't be set dynamically */
    if (pstCfg->enType != pstCfgParam->enType)
    {
        s32Level |= 1;
    }
    else if ((HI_UNF_VCODEC_TYPE_VC1 == pstCfg->enType)
             && ((pstCfg->unExtAttr.stVC1Attr.bAdvancedProfile != pstCfgParam->unExtAttr.stVC1Attr.bAdvancedProfile)
                 || (pstCfg->unExtAttr.stVC1Attr.u32CodecVersion != pstCfgParam->unExtAttr.stVC1Attr.u32CodecVersion)))
    {
        s32Level |= 1;
    }

    /* priority can't be set dynamically */
    if (pstCfg->u32Priority != pstCfgParam->u32Priority)
    {
        s32Level |= 1;
    }

    return s32Level;
}

HI_S32 HI_DRV_VDEC_SetChanAttr(HI_HANDLE hHandle, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Ret;
    HI_S32 s32Level;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstCfgParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if ((HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Check parameter */
    s32Level = VDEC_Chan_CheckCfg(pstChan, pstCfgParam);

    if (s32Level < 0)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    /* Some parameter can't be set when channel is running */
    if ((pstChan->enCurState != VDEC_CHAN_STATE_STOP) && (s32Level))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    /* Set config */
    pstChan->stCurCfg = *pstCfgParam;

    if (pstChan->enCurState == VDEC_CHAN_STATE_RUN)
    {
        s32Ret = VDEC_SetAttr(pstChan);

        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("Chan %d SetAttr err!\n", hHandle);
            return HI_FAILURE;
        }
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d SetAttr OK\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanAttr(HI_HANDLE hHandle, HI_UNF_VCODEC_ATTR_S *pstCfgParam)
{
    HI_S32 s32Ret;

    /* check input parameters */
    if (HI_NULL == pstCfgParam)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    *pstCfgParam = s_stVdecDrv.astChanEntity[hHandle].pstChan->stCurCfg;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    HI_INFO_VDEC("Chan %d GetAttr OK\n", hHandle);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanStatusInfo(HI_HANDLE hHandle, VDEC_STATUSINFO_S *pstStatus)
{
    HI_U32 freeSize;
    HI_U32 busySize;
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VDEC_CHAN_STATE_S stChanState;
    BUFMNG_STATUS_S stStatus;

    /* check input parameters */
    if (HI_NULL == pstStatus)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (HI_INVALID_HANDLE != pstChan->hStrmBuf)
    {
        s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stStatus);

        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("Chan %d get strm buf status err!\n", hHandle);
            return HI_FAILURE;
        }

        freeSize = stStatus.u32Free;
        busySize = stStatus.u32Used;
        pstStatus->u32BufferSize = pstChan->u32StrmBufSize;
        pstStatus->u32BufferUsed = busySize;
        pstStatus->u32BufferAvailable = freeSize;
    }

    pstStatus->u32StrmInBps = pstChan->stStatInfo.u32AvrgVdecInBps;
    pstStatus->u32TotalDecFrmNum = pstChan->stStatInfo.u32TotalVdecOutFrame;
    pstStatus->u32TotalErrFrmNum = pstChan->stStatInfo.u32VdecErrFrame;
    pstStatus->u32TotalErrStrmNum = pstChan->stStatInfo.u32TotalStreamErrNum;

    /* judge if reach end of stream */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);

    if (VDEC_OK != s32Ret)
    {
        HI_FATAL_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }

    pstStatus->u32FrameBufNum = stChanState.wait_disp_frame_num;

    /* Get frame num and stream size vfmw holded */
    pstStatus->u32VfmwFrmSize  = stChanState.decoded_1d_frame_num;
    pstStatus->u32VfmwStrmSize = stChanState.buffered_stream_size;

    pstStatus->stVfmwFrameRate.u32fpsInteger = stChanState.frame_rate / 10;
    pstStatus->stVfmwFrameRate.u32fpsDecimal = stChanState.frame_rate % 10 * 100;
    pstStatus->u32VfmwStrmNum = stChanState.buffered_stream_num;
    pstStatus->u32VfmwTotalDispFrmNum = stChanState.total_disp_frame_num;
    pstStatus->u32FieldFlag = stChanState.is_field_flg;

    if (pstChan->bEndOfStrm)
    {
        pstStatus->bEndOfStream = HI_TRUE;
    }
    else
    {
        pstStatus->bEndOfStream = HI_FALSE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetChanStreamInfo(HI_HANDLE hHandle, HI_UNF_VCODEC_STREAMINFO_S *pstStreamInfo)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VDEC_CHAN_STATE_S stChanState;
    //HI_VDEC_PRIV_FRAMEINFO_S* pstLastFrmPrivInfo = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstStreamInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_GET_CHAN_STATE, &stChanState);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GET_CHAN_STATE err\n", pstChan->hChan);
    }

    //pstLastFrmPrivInfo = (HI_VDEC_PRIV_FRAMEINFO_S*)pstChan->stLastFrm.u32Private;
    pstStreamInfo->enVCodecType  = pstChan->stCurCfg.enType;
    pstStreamInfo->enSubStandard = HI_UNF_VIDEO_SUB_STANDARD_UNKNOWN;
    pstStreamInfo->u32SubVersion = 0;
    pstStreamInfo->u32Profile = stChanState.profile;
    pstStreamInfo->u32Level = stChanState.level;
    pstStreamInfo->enDisplayNorm = pstChan->enDisplayNorm;
    //pstStreamInfo->bProgressive = pstChan->stLastFrm.bProgressive;
    pstStreamInfo->enSampleType = pstChan->stLastFrm.enSampleType;
    //pstStreamInfo->u32AspectWidth = pstChan->stLastFrm.u32AspectWidth;
    //pstStreamInfo->u32AspectHeight = pstChan->stLastFrm.u32AspectHeight;
    pstStreamInfo->enAspectRatio = pstChan->stLastFrm.enAspectRatio;
    pstStreamInfo->u32bps = stChanState.bit_rate;
    //pstStreamInfo->u32fpsInteger = pstChan->stLastFrm.stFrameRate.u32fpsInteger;
    //pstStreamInfo->u32fpsDecimal = pstChan->stLastFrm.stFrameRate.u32fpsDecimal;
    pstStreamInfo->u32fpsInteger = pstChan->stLastFrm.stSeqInfo.u32FrameRateExtensionN;
    pstStreamInfo->u32fpsDecimal = pstChan->stLastFrm.stSeqInfo.u32FrameRateExtensionD;
    pstStreamInfo->u32Width  = pstChan->stLastFrm.u32DisplayWidth; //pstChan->stLastFrm.u32Width;
    pstStreamInfo->u32Height = pstChan->stLastFrm.u32DisplayHeight; //pstChan->stLastFrm.u32Height;
    pstStreamInfo->u32DisplayWidth   = pstChan->stLastFrm.u32DisplayWidth;
    pstStreamInfo->u32DisplayHeight  = pstChan->stLastFrm.u32DisplayHeight;
    pstStreamInfo->u32DisplayCenterX = pstChan->stLastFrm.u32DisplayCenterX;
    pstStreamInfo->u32DisplayCenterY = pstChan->stLastFrm.u32DisplayCenterY;
    //pstStreamInfo->enFramePackingType = pstChan->stLastFrm.enFramePackingType;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_CheckNewEvent(HI_HANDLE hHandle, VDEC_EVENT_S *pstEvent)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstEvent)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* Check norm change event */
    if (pstChan->bNormChange)
    {
        pstChan->bNormChange = HI_FALSE;
        pstEvent->bNormChange = HI_TRUE;
        pstEvent->stNormChangeParam = pstChan->stNormChangeParam;
    }
    else
    {
        pstEvent->bNormChange = HI_FALSE;
    }

    /* Check frame packing event */
    if (pstChan->bFramePackingChange)
    {
        pstChan->bFramePackingChange = HI_FALSE;
        pstEvent->bFramePackingChange = HI_TRUE;
        pstEvent->enFramePackingType = pstChan->enFramePackingType;
    }
    else
    {
        pstEvent->bFramePackingChange = HI_FALSE;
        pstEvent->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
    }

    /* Check new frame event */
    if (pstChan->bNewFrame)
    {
        pstChan->bNewFrame = HI_FALSE;
        pstEvent->bNewFrame = HI_TRUE;
    }
    else
    {
        pstEvent->bNewFrame = HI_FALSE;
    }

    /* Check new seq event */
    if (pstChan->bNewSeq)
    {
        pstChan->bNewSeq = HI_FALSE;
        pstEvent->bNewSeq = HI_TRUE;
    }
    else
    {
        pstEvent->bNewSeq = HI_FALSE;
    }

    /* Check new user data event */
    if (pstChan->bNewUserData)
    {
        pstChan->bNewUserData = HI_FALSE;
        pstEvent->bNewUserData = HI_TRUE;
    }
    else
    {
        pstEvent->bNewUserData = HI_FALSE;
    }

    /* Check I frame err event */
    if (pstChan->bIFrameErr)
    {
        pstChan->bIFrameErr = HI_FALSE;
        pstEvent->bIFrameErr = HI_TRUE;
    }
    else
    {
        pstEvent->bIFrameErr = HI_FALSE;
    }

    if (pstChan->bFirstValidPts)
    {
        pstChan->bFirstValidPts = HI_FALSE;
        pstEvent->bFirstValidPts = HI_TRUE;
        pstEvent->u32FirstValidPts = pstChan->u32FirstValidPts;
    }

    if (pstChan->bSecondValidPts)
    {
        pstChan->bSecondValidPts = HI_FALSE;
        pstEvent->bSecondValidPts = HI_TRUE;
        pstEvent->u32SecondValidPts = pstChan->u32SecondValidPts;
    }

    if (pstChan->stProbeStreamInfo.bProbeCodecTypeChangeFlag)
    {
        pstChan->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_FALSE;
        pstEvent->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_TRUE;
        pstEvent->stProbeStreamInfo.enCodecType = pstChan->stProbeStreamInfo.enCodecType;
    }
    else
    {
        pstEvent->stProbeStreamInfo.bProbeCodecTypeChangeFlag = HI_FALSE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_GetUsrData(HI_HANDLE hHandle, HI_UNF_VIDEO_USERDATA_S *pstUsrData)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    /* check input parameters */
    if (HI_NULL == pstUsrData)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    /* If pstUsrData is null, it must be none user data */
    if (HI_NULL == pstChan->pstUsrData)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d none user data!\n", hHandle);
        return HI_FAILURE;
    }

    /* Copy usrdata data */
    s32Ret = copy_to_user(pstUsrData->pu8Buffer,
                          pstChan->pstUsrData->au8Buf[pstChan->pstUsrData->u32ReadID],
                          pstChan->pstUsrData->stAttr[pstChan->pstUsrData->u32ReadID].u32Length);

    if (s32Ret != 0)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d copy_to_user err!\n", hHandle);
        return HI_FAILURE;
    }

    /* copy usrdata attribute */
    memcpy(pstUsrData,
           &pstChan->pstUsrData->stAttr[pstChan->pstUsrData->u32ReadID],
           sizeof(HI_UNF_VIDEO_USERDATA_S));
    pstChan->pstUsrData->u32ReadID = (pstChan->pstUsrData->u32ReadID + 1) % VDEC_UDC_MAX_NUM;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetTrickMode(HI_HANDLE hHandle, HI_UNF_AVPLAY_TPLAY_OPT_S *pstOpt)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    HI_S32 s32Speed;

    /* check input parameters */
    if (HI_NULL == pstOpt)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    //s32Speed = (pstOpt->u32SpeedInteger * 1000 + pstOpt->u32SpeedDecimal)*1024/1000;
    s32Speed = pstOpt->u32TplaySpeed;
#if 0

    if (HI_UNF_AVPLAY_TPLAY_DIRECT_BACKWARD == pstOpt->enTplayDirect)
    {
        s32Speed = -s32Speed;
    }

#endif
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_TRICK_MODE, &s32Speed);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW Chan %d set trick mode err\n", pstChan->hChan);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    pstChan->s32Speed = s32Speed;
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetCtrlInfo(HI_HANDLE hHandle, HI_UNF_AVPLAY_CONTROL_INFO_S *pstCtrlInfo)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VFMW_CONTROLINFO_S stInfo;

    /* check input parameters */
    if (HI_NULL == pstCtrlInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (VDEC_CHAN_STATE_RUN != pstChan->enCurState)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_WARN_VDEC("Chan %d isn't runnig!\n", hHandle);
        return HI_FAILURE;
    }

    stInfo.u32IDRFlag = pstCtrlInfo->u32IDRFlag;
    stInfo.u32BFrmRefFlag = pstCtrlInfo->u32BFrmRefFlag;
    stInfo.u32ContinuousFlag = pstCtrlInfo->u32ContinuousFlag;
    stInfo.u32BackwardOptimizeFlag = pstCtrlInfo->u32BackwardOptimizeFlag;
    stInfo.u32DispOptimizeFlag = pstCtrlInfo->u32DispOptimizeFlag;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_CTRL_INFO, &stInfo);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW Chan %d set ctrl info err\n", pstChan->hChan);
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_VDEC_SetProgressive(HI_HANDLE hHandle, HI_BOOL pProgressive)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = NULL;
    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (pProgressive)
    {
        pstChan->enUserSetSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return  s32Ret;
}

static HI_S32 VDEC_IFrame_GetStrm(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstPacket)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }

    s32Ret = VDEC_CHAN_TRY_USE_DOWN_HELP(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (pstChan->stIFrame.u32ReadTimes >= VDEC_IFRAME_MAX_READTIMES)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        return HI_FAILURE;
    }

    pstPacket->PhyAddr = pstChan->stIFrame.stMMZBuf.u32StartPhyAddr;
    pstPacket->VirAddr = (HI_U8 *)pstChan->stIFrame.stMMZBuf.u32StartVirAddr;
    pstPacket->Length = pstChan->stIFrame.stMMZBuf.u32Size;
    pstPacket->Pts = 0;
    pstPacket->Index = 0;
    pstPacket->is_not_last_packet_flag = 0;
    pstPacket->UserTag = 0;
    pstPacket->discontinue_count = 0;
    pstPacket->is_stream_end_flag = 0;

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    pstChan->stIFrame.u32ReadTimes++;
    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_PutStrm(HI_S32 hHandle, STREAM_DATA_S *pstPacket)
{
    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_SetAttr(VDEC_CHANNEL_S *pstChan, HI_UNF_VCODEC_TYPE_E type)
{
    HI_S32 s32Ret;
    VDEC_CHAN_CFG_S stVdecChanCfg = {0};
    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_HI3716M;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_V310;

    stVdecChanCfg.eVidStd = VDEC_CodecTypeUnfToFmw(type);
    stVdecChanCfg.s32ChanPriority = 18;
    stVdecChanCfg.s32ChanErrThr = 100;
    stVdecChanCfg.s32DecMode = I_MODE;
    stVdecChanCfg.s32DecOrderOutput = 1;

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);

    if (((HI_CHIP_TYPE_HI3716M == enChipType) && (HI_CHIP_VERSION_V300 == enChipVersion)) ||
        ((HI_CHIP_TYPE_HI3712 == enChipType) && (HI_CHIP_VERSION_V100 == enChipVersion)))
    {
        /* do nothing */
    }
    else
    {
        if (HI_UNF_VCODEC_TYPE_VP8 == type)
        {
            HI_ERR_VDEC("Unsupport protocol:%d!\n", type);
            return HI_FAILURE;
        }
    }

    /* Do not use compress in i frame decode mode*/
    stVdecChanCfg.s32VcmpEn = 0;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_CFG_CHAN, &stVdecChanCfg);

    if (VDEC_OK != s32Ret)
    {
        HI_ERR_VDEC("VFMW CFG_CHAN err!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_IFrame_BufInit(HI_U32 u32BufSize, MMZ_BUFFER_S *pstMMZBuf)
{
#if defined (CFG_ANDROID_TOOLCHAIN)
    return HI_DRV_MMZ_AllocAndMap("VDEC_IFrame", "vdec", u32BufSize, 0, pstMMZBuf);
#else
    return HI_DRV_MMZ_AllocAndMap("VDEC_IFrame", HI_NULL, u32BufSize, 0, pstMMZBuf);
#endif
}

static HI_VOID VDEC_IFrame_BufDeInit(MMZ_BUFFER_S *pstMMZBuf)
{
    HI_DRV_MMZ_UnmapAndRelease(pstMMZBuf);
}

HI_S32 HI_DRV_VDEC_DecodeIFrame(HI_HANDLE hHandle, HI_UNF_AVPLAY_I_FRAME_S *pstStreamInfo,
                                HI_UNF_VO_FRAMEINFO_S *pstFrameInfo, HI_BOOL bCapture, HI_BOOL bUserSpace)
{
    HI_S32 s32Ret, i;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    STREAM_INTF_S stSteamIntf;

    /*parameter check*/
    if ((HI_NULL == pstStreamInfo) || (HI_NULL == pstFrameInfo))
    {
        HI_ERR_VDEC("bad param\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHandle);
        return HI_FAILURE;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (pstChan->enCurState != VDEC_CHAN_STATE_STOP)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d state err:%d!\n", hHandle, pstChan->enCurState);
        return HI_FAILURE;
    }

    if (!VDEC_CHAN_STRMBUF_ATTACHED(pstChan))
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d bad strm buf!\n", hHandle);
        return HI_FAILURE;
    }

    if (HI_INVALID_HANDLE == pstChan->hChan)
    {
        s32Ret = VDEC_Chan_Create(hHandle);
        if (HI_SUCCESS != s32Ret)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("IFrame VDEC_Chan_Create err\n");
            return HI_FAILURE;
        }
    }

    /* Modify the decoder's attributes */
    s32Ret = VDEC_IFrame_SetAttr(pstChan, pstStreamInfo->enType);

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("IFrame_SetAttr err\n");
        return HI_FAILURE;
    }

    /* Init I frame buffer */
    pstChan->stIFrame.u32ReadTimes = 0;
    s32Ret = VDEC_IFrame_BufInit(pstStreamInfo->u32BufSize, &(pstChan->stIFrame.stMMZBuf));

    if (HI_SUCCESS != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Alloc IFrame buf err\n");
        goto OUT0;
    }

    if (!bUserSpace)
    {
        memcpy((HI_U8 *)pstChan->stIFrame.stMMZBuf.u32StartVirAddr,
               pstStreamInfo->pu8Addr, pstStreamInfo->u32BufSize);
    }
    else
    {
        if (0 != copy_from_user((HI_U8 *)pstChan->stIFrame.stMMZBuf.u32StartVirAddr,
                                pstStreamInfo->pu8Addr, pstStreamInfo->u32BufSize))
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            HI_ERR_VDEC("Chan %d IFrame copy %dB %p->%p err!\n",
                        hHandle, pstStreamInfo->u32BufSize, pstStreamInfo->pu8Addr,
                        (HI_U8 *)pstChan->stIFrame.stMMZBuf.u32StartVirAddr);
            goto OUT1;
        }

        HI_INFO_VDEC("Chan %d IFrame copy %dB %p->%p success!\n",
                     hHandle, pstStreamInfo->u32BufSize, pstStreamInfo->pu8Addr,
                     (HI_U8 *)pstChan->stIFrame.stMMZBuf.u32StartVirAddr);
    }

    /* Set IFrame stream read functions */
    stSteamIntf.stream_provider_inst_id = hHandle;
    stSteamIntf.read_stream = VDEC_IFrame_GetStrm;
    stSteamIntf.release_stream = VDEC_IFrame_PutStrm;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, &stSteamIntf);

    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d SET_STREAM_INTF err!\n", hHandle);
        goto OUT1;
    }

    /* Start decode */
    memset(&pstChan->stStatInfo, 0, sizeof(VDEC_CHAN_STATINFO_S));
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_START_CHAN, HI_NULL);

    if (VDEC_OK != s32Ret)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d START_CHAN err!\n", hHandle);
        goto OUT2;
    }

    pstChan->enCurState = VDEC_CHAN_STATE_RUN;

    /* Start PTS recover channel */
    PTSREC_Start(hHandle);

    /* Here we invoke USE_UP function to release the atomic number, so that the VFMW can decode
      by invoking the interface of get stream, the VDEC_Event_Handle function can also hHandle
      EVNT_NEW_IMAGE */
    /*CNcomment: 此处调用USE_UP释放锁 以使 VFMW 可以调用获取码流接口 进行解码
      VDEC_Event_Handle 可以处理 EVNT_NEW_IMAGE 事件 */
    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);

    /* Waiting for decode complete */
    for (i = 0; i < 40; i++)
    {
        msleep(5);
        s32Ret = HI_DRV_VDEC_RecvFrmBuf(hHandle, pstFrameInfo);

        if (HI_SUCCESS == s32Ret)
        {
            /* Elude 4+64 EVNT_RESOLUTION_CHANGE event
             * In this case, HI_DRV_VDEC_RecvFrmBuf will return HI_SUCCESS but give an invalid frame,
             * only send the flag.
             */
            if (bCapture)
            {
                (HI_VOID)HI_DRV_VDEC_RlsFrmBuf(hHandle, pstFrameInfo);
            }

            if (0 != pstFrameInfo->u32Width)
            {
                break;
            }
        }
    }

    if (i >= 40)
    {
        HI_ERR_VDEC("IFrame decode timeout\n");
        goto OUT3;
    }


    /* For capture, release frame here. For VO, release in vo */

OUT3:
    /* Stop channel */
    PTSREC_Stop(hHandle);

    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_STOP_CHAN, HI_NULL);
    pstChan->enCurState = VDEC_CHAN_STATE_STOP;

OUT2:
    /* Resume stream interface */
    (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(pstChan->hChan, VDEC_CID_SET_STREAM_INTF, &pstChan->stStrmIntf);

OUT1:
    /* Free MMZ buffer */
    VDEC_IFrame_BufDeInit(&(pstChan->stIFrame.stMMZBuf));
    pstChan->stIFrame.u32ReadTimes = 0;

OUT0:
    /* Resume channel attribute */
    if (HI_SUCCESS != VDEC_SetAttr(pstChan))
    {
        HI_ERR_VDEC("Chan %d SetAttr err!\n", hHandle);
    }

    s32Ret |= VDEC_Chan_Destroy(hHandle);

    return s32Ret;
}

HI_S32 HI_DRV_VDEC_ReleaseIFrame(HI_HANDLE hHandle, HI_UNF_VO_FRAMEINFO_S *pstFrameInfo)
{
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;

    if (HI_NULL == pstFrameInfo)
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_FAILURE;
    }

    hHandle = hHandle & 0xff;

    if (hHandle >= HI_VDEC_MAX_INSTANCE)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Lock */
    VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_VDEC("Chan %d lock fail!\n", hHandle);
        return HI_FAILURE;
    }

    /* Check and get pstChan pointer */
    if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
        HI_ERR_VDEC("Chan %d not init!\n", hHandle);
        return HI_FAILURE;
    }

    pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

    if (0 != pstChan->stIFrame.st2dBuf.u32Size)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstChan->stIFrame.st2dBuf);
        pstChan->stIFrame.st2dBuf.u32Size = 0;
    }

    VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    return HI_SUCCESS;
}

static HI_S32 VDEC_Ioctl_GetAndCheckHandle(unsigned int cmd, void *arg, HI_HANDLE *pHandle)
{
    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    *pHandle = (*((HI_HANDLE*)arg)) & 0xff;

    if ((*pHandle) >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("CMD %p bad handle:%d!\n", (HI_VOID *)cmd, pHandle);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_Ioctl_GetUsrData(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_GetUsrData(hHandle, &(((VDEC_CMD_USERDATA_S*)arg)->stUserData));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_IFRMDECODE(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    VDEC_CMD_IFRAME_DEC_S *pstIFrameDec = (VDEC_CMD_IFRAME_DEC_S *)arg;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret  = HI_DRV_VDEC_DecodeIFrame((pstIFrameDec->hHandle) & 0xff, &pstIFrameDec->stIFrame,
                                       &(pstIFrameDec->stVoFrameInfo), pstIFrameDec->bCapture, HI_TRUE);
    s32Ret |= VDEC_Chan_Reset((pstIFrameDec->hHandle) & 0xff, VDEC_RESET_TYPE_ALL);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ReleaseIFrame(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_ReleaseIFrame(hHandle, &(((VDEC_CMD_IFRAME_RLS_S *)arg)->stVoFrameInfo));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanAlloc(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (((VDEC_CMD_ALLOC_S *)arg)->u32DSDEnable > 1) //l00273086
    {
        ((VDEC_CMD_ALLOC_S *)arg)->u32DSDEnable = 0;
    }

    s_stVdecDrv.astChanEntity[hHandle].u32DynamicSwitchDnrEn = ((VDEC_CMD_ALLOC_S *)arg)->u32DSDEnable; //l00273086
    s32Ret = VDEC_Chan_InitParam(hHandle, &(((VDEC_CMD_ALLOC_S *)arg)->stOpenOpt));
    *((HI_HANDLE *)arg) = hHandle;

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanFree(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_Free(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanStart(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_ChanStart(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanStop(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_ChanStop(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanReset(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_Reset(hHandle, ((VDEC_CMD_RESET_S *)arg)->enType);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanSetAttr(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_SetChanAttr(hHandle, &(((VDEC_CMD_ATTR_S *)arg)->stAttr));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ChanGetAttr(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_GetChanAttr(hHandle, &(((VDEC_CMD_ATTR_S *)arg)->stAttr));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_CreatEsBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_CreateStrmBuf((HI_DRV_VDEC_STREAM_BUF_S *)arg);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_DestroyEsBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_DestroyStrmBuf(*((HI_HANDLE *)arg));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetEsBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S *)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_GetStrmBuf(pstBuf->hHandle, &(pstBuf->stBuf), HI_TRUE);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_PutEsBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S *)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_PutStrmBuf(pstBuf->hHandle, &(pstBuf->stBuf), HI_TRUE);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetUserAddr(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    VDEC_CMD_BUF_USERADDR_S *pstUserAddr = (VDEC_CMD_BUF_USERADDR_S*)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_StrmBuf_SetUserAddr(pstUserAddr->hHandle, pstUserAddr->u32UserAddr);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_RcveiveBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    BUFMNG_BUF_S stEsBuf = {0};
    VDEC_CMD_BUF_S *pstBuf = (VDEC_CMD_BUF_S*)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = BUFMNG_AcqReadBuffer(pstBuf->hHandle, &stEsBuf);
    if (s32Ret == HI_SUCCESS)
    {
        pstBuf->stBuf.pu8Addr = stEsBuf.pu8UsrVirAddr;
        pstBuf->stBuf.u32PhyAddr = stEsBuf.u32PhyAddr;
        pstBuf->stBuf.u32BufSize = stEsBuf.u32Size;
        pstBuf->stBuf.u64Pts = stEsBuf.u64Pts;
        pstBuf->stBuf.bEndOfFrame = !(stEsBuf.u32Marker & BUFMNG_NOT_END_FRAME_BIT);
        pstBuf->stBuf.bDiscontinuous = (stEsBuf.u32Marker & BUFMNG_DISCONTINUOUS_BIT) ? 1 : 0;
    }

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_RleaseBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    BUFMNG_BUF_S stEsBuf = {0};
    VDEC_CMD_BUF_S* pstBuf = (VDEC_CMD_BUF_S*)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    stEsBuf.u32PhyAddr = 0;
    stEsBuf.pu8UsrVirAddr = pstBuf->stBuf.pu8Addr;
    stEsBuf.pu8KnlVirAddr = HI_NULL;
    stEsBuf.u32Size = pstBuf->stBuf.u32BufSize;
    stEsBuf.u64Pts = pstBuf->stBuf.u64Pts;
    /* Don't care stEsBuf.u32Marker here. */
    s32Ret = BUFMNG_RlsReadBuffer(pstBuf->hHandle, &stEsBuf);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ResetEsBuffer(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = BUFMNG_Reset((*((HI_HANDLE *)arg)));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetStatus(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_SUCCESS;
    BUFMNG_STATUS_S stBMStatus = {0};
    VDEC_CMD_BUF_STATUS_S *pstStatus = (VDEC_CMD_BUF_STATUS_S*)arg;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %p Bad arg!\n", (HI_VOID *)cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = BUFMNG_GetStatus(pstStatus->hHandle, &stBMStatus);
    if (HI_SUCCESS == s32Ret)
    {
        pstStatus->stStatus.u32Size = stBMStatus.u32Used + stBMStatus.u32Free;
        pstStatus->stStatus.u32Available = stBMStatus.u32Free;
        pstStatus->stStatus.u32Used = stBMStatus.u32Used;
        pstStatus->stStatus.u32DataNum = stBMStatus.u32DataNum;
    }

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_RlsFrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_RlsFrmBuf(hHandle, &(((VDEC_CMD_VO_FRAME_S *)arg)->stFrame));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_RecvFrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_RecvFrmBuf(hHandle, &(((VDEC_CMD_VO_FRAME_S *)arg)->stFrame));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetChanStatusInfo(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_GetChanStatusInfo(hHandle, &(((VDEC_CMD_STATUS_S *)arg)->stStatus));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetChanStreamInfo(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_GetChanStreamInfo(hHandle, &(((VDEC_CMD_STREAM_INFO_S *)arg)->stInfo));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_AttachStrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    VDEC_CMD_ATTACH_BUF_S stParam = *((VDEC_CMD_ATTACH_BUF_S*)arg);

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_AttachStrmBuf(hHandle, stParam.u32BufSize, stParam.hDmxVidChn, stParam.hStrmBuf);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_DetachStrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_DetachStrmBuf(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetEosFlag(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_SetEosFlag(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_DiscardFrm(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_DiscardFrm(hHandle, &(((VDEC_CMD_DISCARD_FRAME_S*)arg)->stDiscardOpt));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_CheckNewEvent(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_CheckNewEvent(hHandle, &(((VDEC_CMD_EVENT_S*)arg)->stEvent));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_EventNewFrm(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    VDEC_CMD_FRAME_S* pstFrameCmd = (VDEC_CMD_FRAME_S*)arg;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    pstFrameCmd->stFrame = s_stVdecDrv.astChanEntity[pstFrameCmd->hHandle & 0xff].pstChan->stLastFrm;
    s32Ret = HI_SUCCESS;

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetFrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_GetFrmBuf(hHandle, &(((VDEC_CMD_GET_FRAME_S*)arg)->stFrame));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_PutFrmBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_PutFrmBuf(hHandle, &(((VDEC_CMD_PUT_FRAME_S*)arg)->stFrame));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetFrmRate(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstParam = &(((VDEC_CMD_FRAME_RATE_S *)arg)->stFrameRate);

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {

        s_stVdecDrv.astChanEntity[hHandle].pstChan->stFrameRateParam = *pstParam;
        s32Ret = PTSREC_SetFrmRate(hHandle, pstParam);
    }
    else
    {
        s32Ret = HI_FAILURE;
    }

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetFrmRate(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstParam = &(((VDEC_CMD_FRAME_RATE_S *)arg)->stFrameRate);

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != s_stVdecDrv.astChanEntity[hHandle].pstChan)
    {
        *pstParam = s_stVdecDrv.astChanEntity[hHandle].pstChan->stFrameRateParam;
        s32Ret = HI_SUCCESS;
    }
    else
    {
        s32Ret = HI_FAILURE;
    }

    return s32Ret;
}

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
static HI_S32 VDEC_Ioctl_UserDataInitBuf(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = USRDATA_Alloc(hHandle, &(((VDEC_CMD_USERDATABUF_S*)arg)->stBuf));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_UserDataSetBufAddr(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = USRDATA_SetUserAddr(hHandle, ((VDEC_CMD_BUF_USERADDR_S *)arg)->u32UserAddr);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_AcqueUserData(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = USRDATA_Acq(hHandle, &(((VDEC_CMD_USERDATA_ACQMODE_S*)arg)->stUserData),
                                 &(((VDEC_CMD_USERDATA_ACQMODE_S*)arg)->enType));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_ReleaseUserData(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = USRDATA_Rls(hHandle, &(((VDEC_CMD_USERDATA_S*)arg)->stUserData));

    return s32Ret;
}
#endif

static HI_S32 VDEC_Ioctl_SeekPts(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_SeekPTS(hHandle, ((VDEC_CMD_SEEK_PTS_S *)(arg))->pu32SeekPts, ((VDEC_CMD_SEEK_PTS_S *)(arg))->u32Gap);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_GetCap(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %d Bad arg!\n", cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_GetCap((VDEC_CAP_S*)arg);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_AllocHandle(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (arg == HI_NULL)
    {
        HI_ERR_VDEC("CMD %d Bad arg!\n", cmd);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_AllocHandle((HI_HANDLE*)arg, filp);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_FreeHandle(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = VDEC_Chan_FreeHandle(hHandle);

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetTrickMode(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_SetTrickMode(hHandle, &(((VDEC_CMD_TRICKMODE_OPT_S*)arg)->stTPlayOpt));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetCtrlInfo(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_SetCtrlInfo(hHandle, &(((VDEC_CMD_SET_CTRL_INFO_S*)arg)->stCtrlInfo));

    return s32Ret;
}

static HI_S32 VDEC_Ioctl_SetProgressive(struct file *filp, unsigned int cmd, void *arg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (VDEC_Ioctl_GetAndCheckHandle(cmd, arg, &hHandle) != HI_SUCCESS)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = HI_DRV_VDEC_SetProgressive(hHandle, ((VDEC_CMD_SET_PROGRESSIVE_S*)arg)->bProgressive);

    return s32Ret;
}


static const IOCTL_COMMAND_NODE g_IOCTL_CommandTable[] =
{
    {UMAPC_VDEC_CHAN_USRDATA,               VDEC_Ioctl_GetUsrData},
    {UMAPC_VDEC_CHAN_IFRMDECODE,            VDEC_Ioctl_IFRMDECODE},
    {UMAPC_VDEC_CHAN_IFRMRELEASE,           VDEC_Ioctl_ReleaseIFrame},
    {UMAPC_VDEC_CHAN_ALLOC,                 VDEC_Ioctl_ChanAlloc},
    {UMAPC_VDEC_CHAN_FREE,                  VDEC_Ioctl_ChanFree},
    {UMAPC_VDEC_CHAN_START,                 VDEC_Ioctl_ChanStart},
    {UMAPC_VDEC_CHAN_STOP,                  VDEC_Ioctl_ChanStop},
    {UMAPC_VDEC_CHAN_RESET,                 VDEC_Ioctl_ChanReset},
    {UMAPC_VDEC_CHAN_SETATTR,               VDEC_Ioctl_ChanSetAttr},
    {UMAPC_VDEC_CHAN_GETATTR,               VDEC_Ioctl_ChanGetAttr},
    {UMAPC_VDEC_CREATE_ESBUF,               VDEC_Ioctl_CreatEsBuffer},
    {UMAPC_VDEC_DESTROY_ESBUF,              VDEC_Ioctl_DestroyEsBuffer},
    {UMAPC_VDEC_GETBUF,                     VDEC_Ioctl_GetEsBuffer},
    {UMAPC_VDEC_PUTBUF,                     VDEC_Ioctl_PutEsBuffer},
    {UMAPC_VDEC_SETUSERADDR,                VDEC_Ioctl_SetUserAddr},
    {UMAPC_VDEC_RCVBUF,                     VDEC_Ioctl_RcveiveBuffer},
    {UMAPC_VDEC_RLSBUF,                     VDEC_Ioctl_RleaseBuffer},
    {UMAPC_VDEC_RESET_ESBUF,                VDEC_Ioctl_ResetEsBuffer},
    {UMAPC_VDEC_GET_ESBUF_STATUS,           VDEC_Ioctl_GetStatus},
    {UMAPC_VDEC_CHAN_RLSFRM,                VDEC_Ioctl_RlsFrmBuf},
    {UMAPC_VDEC_CHAN_RCVFRM,                VDEC_Ioctl_RecvFrmBuf},
    {UMAPC_VDEC_CHAN_STATUSINFO,            VDEC_Ioctl_GetChanStatusInfo},
    {UMAPC_VDEC_CHAN_STREAMINFO,            VDEC_Ioctl_GetChanStreamInfo},
    {UMAPC_VDEC_CHAN_ATTACHBUF,             VDEC_Ioctl_AttachStrmBuf},
    {UMAPC_VDEC_CHAN_DETACHBUF,             VDEC_Ioctl_DetachStrmBuf},
    {UMAPC_VDEC_CHAN_SETEOSFLAG,            VDEC_Ioctl_SetEosFlag},
    {UMAPC_VDEC_CHAN_DISCARDFRM,            VDEC_Ioctl_DiscardFrm},
    {UMAPC_VDEC_CHAN_CHECKEVT,              VDEC_Ioctl_CheckNewEvent},
    {UMAPC_VDEC_CHAN_EVNET_NEWFRAME,        VDEC_Ioctl_EventNewFrm},
    {UMAPC_VDEC_CHAN_GETFRM,                VDEC_Ioctl_GetFrmBuf},
    {UMAPC_VDEC_CHAN_PUTFRM,                VDEC_Ioctl_PutFrmBuf},
    {UMAPC_VDEC_CHAN_SETFRMRATE,            VDEC_Ioctl_SetFrmRate},
    {UMAPC_VDEC_CHAN_GETFRMRATE,            VDEC_Ioctl_GetFrmRate},
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    {UMAPC_VDEC_CHAN_USERDATAINITBUF,       VDEC_Ioctl_UserDataInitBuf},
    {UMAPC_VDEC_CHAN_USERDATASETBUFADDR,    VDEC_Ioctl_UserDataSetBufAddr},
    {UMAPC_VDEC_CHAN_ACQUSERDATA,           VDEC_Ioctl_AcqueUserData},
    {UMAPC_VDEC_CHAN_RLSUSERDATA,           VDEC_Ioctl_ReleaseUserData},
#endif
    {UMAPC_VDEC_CHAN_SEEKPTS,               VDEC_Ioctl_SeekPts},
    {UMAPC_VDEC_GETCAP,                     VDEC_Ioctl_GetCap},
    {UMAPC_VDEC_ALLOCHANDLE,                VDEC_Ioctl_AllocHandle},
    {UMAPC_VDEC_FREEHANDLE,                 VDEC_Ioctl_FreeHandle},
    {UMAPC_VDEC_CHAN_SETTRICKMODE,          VDEC_Ioctl_SetTrickMode},
    {UMAPC_VDEC_CHAN_SETCTRLINFO,           VDEC_Ioctl_SetCtrlInfo},
    {UMAPC_VDEC_CHAN_PROGRSSIVE,            VDEC_Ioctl_SetProgressive},

    {0,        HI_NULL}, //terminal element
};

FN_IOCTL_HANDLER VDEC_Ioctl_Get_Handler(HI_U32 Code)
{
    HI_U32 Index = 0;
    FN_IOCTL_HANDLER pTargetHandler = HI_NULL;

    while(1)
    {
        if (g_IOCTL_CommandTable[Index].Code == 0 || g_IOCTL_CommandTable[Index].pHandler == HI_NULL)
        {
            break;
        }

        if (Code == g_IOCTL_CommandTable[Index].Code)
        {
            pTargetHandler = g_IOCTL_CommandTable[Index].pHandler;
            break;
        }

        Index++;
    }

    return pTargetHandler;
}


HI_S32 VDEC_Ioctl(struct inode *inode, struct file  *filp, unsigned int cmd, void *arg)
{
    FN_IOCTL_HANDLER pIOCTL_Handler = HI_NULL;

    pIOCTL_Handler = VDEC_Ioctl_Get_Handler(cmd);
    if (pIOCTL_Handler == HI_NULL)
    {
        HI_ERR_VDEC("%s: ERROR cmd %d is not supported!\n", __func__, cmd);

        return HI_FAILURE;
    }

    return pIOCTL_Handler(filp, cmd, arg);
}

/* Vdec static functions */
#if 0
static irqreturn_t VDEC_IntVdmProc(HI_S32 irq, HI_VOID *dev_id)
{
#ifndef VDM_BUSY_WAITTING
    /*VDM ISR*/
    (s_stVdecDrv.pVfmwFunc->pfnVfmwVdmIntServProc) (0);
#endif

    return IRQ_HANDLED;
}
#endif

static HI_S32 VDEC_RegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];
    DRV_PROC_ITEM_S *pstItem;

    /* Check parameters */
    if (HI_NULL == s_stVdecDrv.pstProcParam)
    {
        return HI_FAILURE;
    }

    /* Create proc */
    snprintf(aszBuf, sizeof(aszBuf), "vdec%02d", s32Num);
    pstItem = HI_DRV_PROC_AddModule(aszBuf, HI_NULL, HI_NULL);

    if (!pstItem)
    {
        HI_FATAL_VDEC("Create vdec proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
    pstItem->read  = s_stVdecDrv.pstProcParam->pfnReadProc;
    pstItem->write = s_stVdecDrv.pstProcParam->pfnWriteProc;

    HI_INFO_VDEC("Create proc entry for vdec%d OK!\n", s32Num);
    return HI_SUCCESS;
}

static HI_VOID VDEC_UnRegChanProc(HI_S32 s32Num)
{
    HI_CHAR aszBuf[16];

    snprintf(aszBuf, sizeof(aszBuf), "vdec%02d", s32Num);
    HI_DRV_PROC_RemoveModule(aszBuf);

    return;
}

static HI_VOID VDEC_TimerFunc(HI_LENGTH_T value)
{
    HI_HANDLE hHandle;
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan = HI_NULL;
    VDEC_CHAN_STATINFO_S *pstStatInfo = HI_NULL;

    s_stVdecDrv.stTimer.expires  = jiffies + (HZ);
    s_stVdecDrv.stTimer.function = VDEC_TimerFunc;

    for (hHandle = 0; hHandle < HI_VDEC_MAX_INSTANCE; hHandle++)
    {
        /* Lock */
        VDEC_CHAN_TRY_USE_DOWN(&s_stVdecDrv.astChanEntity[hHandle]);

        if (HI_SUCCESS != s32Ret)
        {
            continue;
        }

        /* Check and get pstChan pointer */
        if (HI_NULL == s_stVdecDrv.astChanEntity[hHandle].pstChan)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            continue;
        }

        pstChan = s_stVdecDrv.astChanEntity[hHandle].pstChan;

        if (pstChan->enCurState != VDEC_CHAN_STATE_RUN)
        {
            VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
            continue;
        }

        pstStatInfo = &pstChan->stStatInfo;
        pstStatInfo->u32TotalVdecTime++;
        pstStatInfo->u32AvrgVdecFpsLittle = (HI_U32)((pstStatInfo->u32TotalVdecOutFrame
                                            * 100) / pstStatInfo->u32TotalVdecTime);
        pstStatInfo->u32AvrgVdecFps = (HI_U32)(pstStatInfo->u32TotalVdecOutFrame / pstStatInfo->u32TotalVdecTime);
        pstStatInfo->u32AvrgVdecFpsLittle -= (pstStatInfo->u32AvrgVdecFps * 100);
        pstStatInfo->u32AvrgVdecInBps = (HI_U32)(pstStatInfo->u32TotalVdecInByte * 8 / pstStatInfo->u32TotalVdecTime);

        VDEC_CHAN_USE_UP(&s_stVdecDrv.astChanEntity[hHandle]);
    }

    add_timer(&s_stVdecDrv.stTimer);
    return;
}

static HI_S32 VDEC_OpenDev(HI_VOID)
{
    HI_U32 i;
    HI_S32 s32Ret;
    VDEC_OPERATION_S stOpt;

    /* Init global parameter */
    HI_INIT_MUTEX(&s_stVdecDrv.stSem);
    init_timer(&s_stVdecDrv.stTimer);

    for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
    {
        atomic_set(&s_stVdecDrv.astChanEntity[i].atmUseCnt, 0);
        atomic_set(&s_stVdecDrv.astChanEntity[i].atmRlsFlag, 0);
        init_waitqueue_head(&s_stVdecDrv.astChanEntity[i].stRlsQue);
    }

    /* Init buffer manager */
    s32Ret = BUFMNG_Init();

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("BUFMNG_Init err!\n");
        goto err0;
    }

    /* Init vfmw */
    stOpt.VdecCallback = VDEC_EventHandle;
    stOpt.mem_malloc = HI_NULL;
    stOpt.mem_free = HI_NULL;
    stOpt.eAdapterType = ADAPTER_TYPE_VDEC;
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwInitWithOperation)(&stOpt);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Init vfmw err:%d!\n", s32Ret);
        goto err1;
    }

    /* Get vfmw capabilite */
    s32Ret = (s_stVdecDrv.pVfmwFunc->pfnVfmwControl)(HI_INVALID_HANDLE, VDEC_CID_GET_CAPABILITY, &s_stVdecDrv.stVdecCap);

    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("VFMW GET_CAPABILITY err:%d!\n", s32Ret);
        goto err2;
    }

    /* Init pts recover function */
    PTSREC_Init();

    /* Init CC user data function */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_Init();
#endif

    /* Set global timer */
    s_stVdecDrv.stTimer.expires  = jiffies + (HZ);
    s_stVdecDrv.stTimer.function = VDEC_TimerFunc;
    add_timer(&s_stVdecDrv.stTimer);

    /* Set ready flag */
    s_stVdecDrv.bReady = HI_TRUE;

    HI_INFO_VDEC("VDEC_OpenDev OK.\n");
    return HI_SUCCESS;

err2:
    (s_stVdecDrv.pVfmwFunc->pfnVfmwExit)();
err1:
    BUFMNG_DeInit();
err0:
    return HI_FAILURE;
}

static HI_S32 VDEC_CloseDev(HI_VOID)
{
    HI_U32 i;

    /* Reentrant */
    if (s_stVdecDrv.bReady == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    /* Set ready flag */
    s_stVdecDrv.bReady = HI_FALSE;

    /* Delete timer */
    del_timer(&s_stVdecDrv.stTimer);

    /* Free all channels */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
    {
        if (s_stVdecDrv.astChanEntity[i].bUsed)
        {
            if (s_stVdecDrv.astChanEntity[i].pstChan)
            {
                VDEC_Chan_Free(i);
            }

            VDEC_Chan_FreeHandle(i);
        }
    }

    /* Vfmw exit */
    (s_stVdecDrv.pVfmwFunc->pfnVfmwExit)();

    /* Buffer manager exit  */
    BUFMNG_DeInit();

    /* Pts recover exit */
    PTSREC_DeInit();

    /* CC user data exit */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    USRDATA_DeInit();
#endif

    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_Open(struct inode *inode, struct file  *filp)
{
    HI_S32 s32Ret;

    if (atomic_inc_return(&s_stVdecDrv.atmOpenCnt) == 1)
    {
        s_stVdecDrv.pDmxFunc  = HI_NULL;
        s_stVdecDrv.pVfmwFunc = HI_NULL;

        /* Get demux functions */
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_DEMUX, (HI_VOID **)&s_stVdecDrv.pDmxFunc);

        if (HI_SUCCESS != s32Ret)
        {
            HI_INFO_VDEC("Get demux function err:%#x!\n", s32Ret);
        }

        /* Get vfmw functions */
        s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VFMW, (HI_VOID **)&s_stVdecDrv.pVfmwFunc);

        /* Check vfmw functions */
        if ((HI_SUCCESS != s32Ret)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwInitWithOperation)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwExit)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwControl)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwResume)
#ifndef VDM_BUSY_WAITTING
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwVdmIntServProc)
#endif
            || (HI_NULL == s_stVdecDrv.pVfmwFunc->pfnVfmwSetDbgOption))
        {
            HI_FATAL_VDEC("Get vfmw function err!\n");
            goto err;
        }

        /* Init device */
        if (HI_SUCCESS != VDEC_OpenDev())
        {
            HI_FATAL_VDEC("VDEC_OpenDev err!\n" );
            goto err;
        }
    }

    return HI_SUCCESS;

err:
    atomic_dec(&s_stVdecDrv.atmOpenCnt);
    return HI_FAILURE;
}

HI_S32 VDEC_DRV_Release(struct inode *inode, struct file  *filp)
{
    HI_S32 i;

    /* Not the last close, only close the channel match with the 'filp' */
    if (atomic_dec_return(&s_stVdecDrv.atmOpenCnt) != 0)
    {
        for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
        {
            if (s_stVdecDrv.astChanEntity[i].u32File == ((HI_U32)filp))
            {
                if (s_stVdecDrv.astChanEntity[i].bUsed)
                {
                    if (s_stVdecDrv.astChanEntity[i].pstChan)
                    {
                        if (HI_SUCCESS != VDEC_Chan_Free(i))
                        {
                            atomic_inc(&s_stVdecDrv.atmOpenCnt);
                            return HI_FAILURE;
                        }
                    }

                    VDEC_Chan_FreeHandle(i);
                }
            }
        }
    }
    /* Last close */
    else
    {
        VDEC_CloseDev();
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_RegWatermarkFunc(FN_VDEC_Watermark pfnFunc)
{
    /* Check parameters */
    if (HI_NULL == pfnFunc)
    {
        return HI_FAILURE;
    }

    s_stVdecDrv.pfnWatermark = pfnFunc;
    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_UnRegWatermarkFunc(HI_VOID)
{
    s_stVdecDrv.pfnWatermark = HI_NULL;
    return;
}

HI_S32 VDEC_DRV_RegisterProc(VDEC_REGISTER_PARAM_S *pstParam)
{
    HI_S32 i;

    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    s_stVdecDrv.pstProcParam = pstParam;

    /* Create proc */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
    {
        if (s_stVdecDrv.astChanEntity[i].pstChan)
        {
            VDEC_RegChanProc(i);
        }
    }

    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_UnregisterProc(HI_VOID)
{
    HI_S32 i;

    /* Unregister */
    for (i = 0; i < HI_VDEC_MAX_INSTANCE; i++)
    {
        if (s_stVdecDrv.astChanEntity[i].pstChan)
        {
            VDEC_UnRegChanProc(i);
        }
    }

    /* Clear param */
    s_stVdecDrv.pstProcParam = HI_NULL;
    return;
}

HI_S32 VDEC_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    if (s_stVdecDrv.pVfmwFunc && s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)
    {
        if ((s_stVdecDrv.pVfmwFunc->pfnVfmwSuspend)())
        {
            HI_FATAL_VDEC("Suspend err!\n");
            return HI_FAILURE;
        }
    }

    HI_FATAL_VDEC("ok\n");
    return HI_SUCCESS;
}

HI_S32 VDEC_DRV_Resume(PM_BASEDEV_S *pdev)
{
    if (s_stVdecDrv.pVfmwFunc && s_stVdecDrv.pVfmwFunc->pfnVfmwResume)
    {
        if ((s_stVdecDrv.pVfmwFunc->pfnVfmwResume)())
        {
            HI_FATAL_VDEC("Resume err!\n");
            return HI_FAILURE;
        }
    }

    HI_FATAL_VDEC("ok\n");
    return HI_SUCCESS;
}

/*this function is the interface of controlling by proc file system*/
/*CNcomment: 通过proc文件系统进行控制的函数入口*/
HI_S32 VDEC_DRV_DebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2)
{
    HI_INFO_VDEC("Para1=0x%x, Para2=0x%x\n", u32Para1, u32Para2);
    (s_stVdecDrv.pVfmwFunc->pfnVfmwSetDbgOption)(u32Para1, (HI_U8 *)&u32Para2);

    return HI_SUCCESS;
}

VDEC_CHANNEL_S *VDEC_DRV_GetChan(HI_HANDLE hHandle)
{
    if (s_stVdecDrv.bReady)
    {
        if (hHandle < HI_VDEC_MAX_INSTANCE)
        {
            if (s_stVdecDrv.astChanEntity[hHandle].pstChan)
            {
                return s_stVdecDrv.astChanEntity[hHandle].pstChan;
            }
        }
    }

    return HI_NULL;
}


VFMW_EXPORT_FUNC_S *VDEC_DRV_GetVfmwFun(HI_VOID)
{
    if (s_stVdecDrv.bReady)
    {
        if (s_stVdecDrv.pVfmwFunc)
        {
            return s_stVdecDrv.pVfmwFunc;
        }
    }

    return HI_NULL;
}


HI_S32 VDEC_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_DRV_MODULE_Register(HI_ID_VDEC, VDEC_NAME, (HI_VOID *)&s_stVdecDrv.stExtFunc);

    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_VDEC("Reg module fail:%#x!\n", s32Ret);
        return s32Ret;
    }

    /* register vdec ISR *//*
    if (0 != request_irq(VDH_IRQ_NUM, VDEC_IntVdmProc, IRQF_DISABLED, "VDEC_VDM", HI_NULL))
    {
        HI_FATAL_VDEC("FATAL: request_irq for VDI VDM err!\n");
        return HI_FAILURE;
    }
    */
#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)

    if (0 != VDH_MMZ_SIZE)
    {
        s32Ret = HI_DRV_MMZ_Alloc("VFMW_VDH_PRE", HI_NULL, VDH_MMZ_SIZE, 0, &g_stVDHMMZ);

        if (HI_SUCCESS != s32Ret)
        {
            g_stVDHMMZ.u32Size = 0;
            HI_ERR_VDEC("Alloc VDH MMZ err: %#x!\n", s32Ret);
            return HI_FAILURE;
        }

        s32Ret = HI_DRV_MMZ_Map(&g_stVDHMMZ);

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Map VDH MMZ err:%#x!\n", s32Ret);
            HI_DRV_MMZ_Release(&g_stVDHMMZ);
            g_stVDHMMZ.u32Size = 0;
            return HI_FAILURE;
        }

        memset(st_VdecChanPreUsedMMZInfo, 0, sizeof(st_VdecChanPreUsedMMZInfo));
        st_VdecChanPreUsedMMZInfo[0].u32Size		 = g_stVDHMMZ.u32Size;
        st_VdecChanPreUsedMMZInfo[0].u32StartPhyAddr = g_stVDHMMZ.u32StartPhyAddr;
        st_VdecChanPreUsedMMZInfo[0].u32StartVirAddr = g_stVDHMMZ.u32StartVirAddr;
        st_VdecChanPreUsedMMZInfo[0].u32NodeState	 = 0;
    }
    else
    {
        g_stVDHMMZ.u32Size = 0;
    }

#endif
    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_Exit(HI_VOID)
{
    /*
    free_irq(VDH_IRQ_NUM, HI_NULL);
    */

#if (1 == PRE_ALLOC_VDEC_VDH_MMZ)
    if (0 != g_stVDHMMZ.u32Size)
    {
        HI_DRV_MMZ_Unmap(&g_stVDHMMZ);
        HI_DRV_MMZ_Release(&g_stVDHMMZ);
        g_stVDHMMZ.u32Size = 0;
    }

#endif

    HI_DRV_MODULE_UnRegister(HI_ID_VDEC);

    return;
}


HI_S32 HI_DRV_VDEC_Init(HI_VOID)
{
    return VDEC_DRV_Init();
}

HI_VOID HI_DRV_VDEC_DeInit(HI_VOID)
{
    return VDEC_DRV_Exit();
}

HI_S32 HI_DRV_VDEC_Open(HI_VOID)
{
    return VDEC_DRV_Open(HI_NULL, HI_NULL);
}

HI_S32 HI_DRV_VDEC_Close(HI_VOID)
{
    return VDEC_DRV_Release(HI_NULL, HI_NULL);
}

HI_S32 HI_DRV_VDEC_AllocChan(HI_HANDLE *phHandle, HI_UNF_AVPLAY_OPEN_OPT_S *pstCapParam)
{
    HI_S32 s32Ret;
    s32Ret = VDEC_Chan_AllocHandle(phHandle, (struct file *)MCE_INVALID_FILP);

    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    return VDEC_Chan_InitParam((*phHandle) & 0xff, pstCapParam);
}

HI_S32 HI_DRV_VDEC_FreeChan(HI_HANDLE hHandle)
{
    HI_S32 s32Ret;

    s32Ret = VDEC_Chan_Free(hHandle & 0xff);
    s32Ret |= VDEC_Chan_FreeHandle(hHandle & 0xff);
    return s32Ret;
}

HI_S32 HI_DRV_VDEC_ChanBufferInit(HI_HANDLE hHandle, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn)
{
    if (HI_INVALID_HANDLE == hDmxVidChn)
    {
        HI_ERR_VDEC("MCE only support data from demux!\n");
        return HI_FAILURE;
    }

    return VDEC_Chan_AttachStrmBuf(hHandle & 0xff, u32BufSize, hDmxVidChn, HI_INVALID_HANDLE);
}

HI_S32 HI_DRV_VDEC_ChanBufferDeInit(HI_HANDLE hHandle)
{
    return VDEC_Chan_DetachStrmBuf(hHandle & 0xff);
}

HI_S32 HI_DRV_VDEC_ResetChan(HI_HANDLE hHandle)
{
    return VDEC_Chan_Reset(hHandle & 0xff, VDEC_RESET_TYPE_ALL);
}

HI_S32 HI_DRV_VDEC_RegisterEventCallback(HI_HANDLE hHandle, EventCallBack fCallback)
{
    HI_HANDLE hHnd = hHandle & 0xff;

    if (hHnd >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHnd);
        return HI_FAILURE;
    }

    s_stVdecDrv.astChanEntity[hHnd].eCallBack = fCallback;
    return HI_SUCCESS;
}
HI_S32 HI_DRV_VDEC_RegisterDmxHdlCallback(HI_U32  hHandle, GetDmxHdlCallBack fCallback, HI_U32 dmxID)
{
    HI_HANDLE hHnd = hHandle & 0xff;

    if (hHnd >= HI_VDEC_MAX_INSTANCE)
    {
        HI_ERR_VDEC("bad handle %d!\n", hHnd);
        return HI_FAILURE;
    }

    s_stVdecDrv.astChanEntity[hHnd].pstChan->u32DmxID = dmxID;
    s_stVdecDrv.astChanEntity[hHnd].DmxHdlCallBack = fCallback;
    return HI_SUCCESS;
}






EXPORT_SYMBOL(HI_DRV_VDEC_GetChanStatusInfo);
EXPORT_SYMBOL(HI_DRV_VDEC_Open);
EXPORT_SYMBOL(HI_DRV_VDEC_ResetChan);
EXPORT_SYMBOL(HI_DRV_VDEC_GetEsBuf);
EXPORT_SYMBOL(HI_DRV_VDEC_PutEsBuf);
EXPORT_SYMBOL(HI_DRV_VDEC_SetEosFlag);
EXPORT_SYMBOL(HI_DRV_VDEC_AllocChan);
EXPORT_SYMBOL(HI_DRV_VDEC_SetChanAttr);
EXPORT_SYMBOL(HI_DRV_VDEC_GetChanStreamInfo);
EXPORT_SYMBOL(HI_DRV_VDEC_ChanStop);
EXPORT_SYMBOL(HI_DRV_VDEC_ChanStart);
EXPORT_SYMBOL(HI_DRV_VDEC_FreeChan);
EXPORT_SYMBOL(HI_DRV_VDEC_GetChanAttr);
EXPORT_SYMBOL(HI_DRV_VDEC_Close);
EXPORT_SYMBOL(HI_DRV_VDEC_ChanBufferInit);
EXPORT_SYMBOL(HI_DRV_VDEC_ChanBufferDeInit);
EXPORT_SYMBOL(HI_DRV_VDEC_RegisterEventCallback);
EXPORT_SYMBOL(HI_DRV_VDEC_RegisterDmxHdlCallback);
EXPORT_SYMBOL(VDEC_DestroyStrmBuf);
EXPORT_SYMBOL(VDEC_CreateStrmBuf);
EXPORT_SYMBOL(VDEC_Chan_AttachStrmBuf);
EXPORT_SYMBOL(VDEC_GetCap);
EXPORT_SYMBOL(VDEC_DRV_GetChan);



module_param(RefFrameNum, int, S_IRUGO);
module_param(DispFrameNum, int, S_IRUGO);
module_param(EnVcmp, int, S_IRUGO);
module_param(En2d, int, S_IRUGO);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */
