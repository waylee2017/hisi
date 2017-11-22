/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : mpi_vdec.c
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
#include <math.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <pthread.h>

/* Unf headers */
#include "hi_unf_avplay.h"
#include "hi_video_codec.h"

/* Mpi headers */
#include "hi_mpi_mem.h"
#include "hi_error_mpi.h"
#include "hi_codec.h"
#include "hi_mpi_vdec.h"
#include "hi_mpi_demux.h"
#include "mpi_vdec_adapter.h"

/* Drv headers */
#include "drv_vdec_ioctl.h"
#include "drv_vdec_ext.h"
#include "list.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

/****************************** Macro Definition *****************************/

#define VDEC_FIND_INST(hFindVdec, pVDECInst) \
    { \
        HI_S32 s32LockRet = HI_SUCCESS;\
        struct list_head* pos; \
        struct list_head* n; \
        VDEC_INST_S* pstTmp; \
        s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex); \
        if(HI_SUCCESS != s32LockRet)\
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__,__LINE__);\
        }\
        \
        if (!list_empty(&s_stVdecParam.stVdecHead)) \
        { \
            list_for_each_safe(pos, n, &s_stVdecParam.stVdecHead) \
            { \
                pstTmp = list_entry(pos, VDEC_INST_S, stVdecNode); \
                if (hFindVdec == pstTmp->hVdec) \
                { \
                    pVDECInst = pstTmp; \
                    break; \
                } \
            } \
        } \
        s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex); \
        if(HI_SUCCESS != s32LockRet)\
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__,__LINE__);\
        }\
    }

#define VDEC_CHECK_INIT \
    { \
        HI_S32 s32LockRet = HI_SUCCESS;\
        s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex); \
        if(HI_SUCCESS != s32LockRet)\
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__,__LINE__);\
        }\
        \
        if (s_stVdecParam.u8InitCount == 0) \
        { \
            s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex); \
            if(HI_SUCCESS != s32LockRet)\
            {\
                HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__,__LINE__);\
            }\
            return HI_ERR_VDEC_NOT_INIT; \
        } \
        \
        s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex);\
        if(HI_SUCCESS != s32LockRet)\
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__,__LINE__);\
        }\
    }

/************************ Static Structure Definition ************************/

/* The parameters of a video codec instance */
typedef struct tagVDEC_INST_S
{
    HI_HANDLE                   hVdec;          /* Vdec handle */
    HI_HANDLE                   hStreamBuf;     /* Stream buffer handle, if none, it will be HI_INVALID_HANDLE */
    HI_HANDLE                   hFrameBuf;      /* Frame buffer handle, if none, it will be HI_INVALID_HANDLE */
    HI_HANDLE                   hCodecInst;     /* Codec instance handle */
    HI_HANDLE                   hDmxVidChn;     /* If stream from demux, this value should be set */
    HI_CODEC_S                 *pstCodec;       /* Pointer of HI_CODEC_S, can be understood as codec handle */
    HI_BOOL                     bIsVFMW;        /* For VFMW */
    HI_UNF_AVPLAY_OPEN_OPT_S    stOpenParam;    /* Codec instance parameter */
    HI_UNF_VCODEC_ATTR_S        stCurAttr;      /* Current attribute */
    HI_U32                      u32StrmBufSize; /* Stream buffer size */
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    pthread_t                   stSoftCodec;    /* For soft codec */
    pthread_mutex_t             stMutex;        /* Mutex */
    HI_BOOL                     bThreadExist;   /* For soft codec */
    HI_BOOL                     bThreadStop;    /* For soft codec */
    HI_U32                      u32ErrStrmNum;  /* Error stream packets number */
    HI_U32                      u32ErrFrmNum;   /* Error frames number */
    HI_BOOL                     bNewFrame;      /* New frame */
    HI_U32                      u32EosFlag;     /* EOS flag: 0 Normal 1 User SetEosFlag 2 Consume stream over */
#endif
    struct list_head            stVdecNode;     /* List node */
} VDEC_INST_S;

/* Global parameters of this file */
typedef struct tagVDEC_GLOBAL_S
{
    pthread_mutex_t      stMutex;               /* Mutex */
    HI_UNF_VCODEC_ATTR_S stDefAttr;             /* Default attribute */
    struct list_head     stVdecHead;            /* List head */
    HI_U8                u8InitCount;           /* Init counter */
} VDEC_GLOBAL_S;

/***************************** Global Definition *****************************/

extern HI_CODEC_S *VDEC_MJPEG_Codec(HI_VOID);

/***************************** Static Definition *****************************/

static VDEC_GLOBAL_S s_stVdecParam =
{
    .stMutex           = PTHREAD_MUTEX_INITIALIZER,
    .stDefAttr         =
    {
        HI_UNF_VCODEC_TYPE_H264,
        .unExtAttr     =
        {
            .stVC1Attr = {HI_FALSE, 0}
        },
        HI_UNF_VCODEC_MODE_NORMAL,
        {
            0,
            0,
            0,
            0,
        },
        100,
        15,
        HI_FALSE,
        0
    },
    .stVdecHead        = {&s_stVdecParam.stVdecHead, &s_stVdecParam.stVdecHead},
    .u8InitCount       =                         0
};

static HI_S32 VDEC_ConvertError(HI_S32 s32Err);

/*********************************** Code ************************************/

static HI_S32 VDEC_ConvertError(HI_S32 s32Err)
{
    switch (s32Err)
    {
        case HI_SUCCESS:
            return HI_SUCCESS;

        case HI_ERR_CODEC_NOENOUGHRES:
            return HI_ERR_VDEC_MALLOC_FAILED;

        case HI_ERR_CODEC_INVALIDPARAM:
            return HI_ERR_VDEC_INVALID_PARA;

        case HI_ERR_CODEC_INPUTCORRUPT:
            return HI_FAILURE;

        case HI_ERR_CODEC_NOENOUGHDATA:
            return HI_FAILURE;

        case HI_ERR_CODEC_INVALIDMODE:
            return HI_ERR_VDEC_INVALID_PARA;

        case HI_ERR_CODEC_UNSUPPORT:
            return HI_ERR_VDEC_NOT_SUPPORT;

        case HI_ERR_CODEC_VERSIONUNMATCH:
            return HI_ERR_VDEC_INVALID_PARA;

        case HI_ERR_CODEC_UNKNOWN:
            return HI_FAILURE;

        default:
            return HI_FAILURE;
    }
}

static HI_S32 VDEC_VFMWSpecCMD(HI_HANDLE hVdec, VFMW_CMD_E enCMD, HI_VOID *pstParam)
{
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_S32 s32Ret;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Special VFMW command */
    if (pstVdec->pstCodec)
    {
        /* Call function */
        if ((pstVdec->bIsVFMW) && (pstVdec->pstCodec->Control))
        {
            s32Ret = pstVdec->pstCodec->Control(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst),
                                                enCMD, (HI_VOID *)pstParam);
            return VDEC_ConvertError(s32Ret);
        }
    }
    else
    {
        switch (enCMD)
        {
                /* Return success if hadn't create codec instance */
            case VFMW_CMD_CHECKEVT:
            case VFMW_CMD_READNEWFRAME:
            case VFMW_CMD_READUSRDATA:
            case VFMW_CMD_GETSTATUSINFO:
                return HI_SUCCESS;

            default:
                return HI_FAILURE;
        }
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32LockRet = HI_SUCCESS;

    s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    if (0 == s_stVdecParam.u8InitCount)
    {
        s_stVdecParam.stVdecHead.next = &s_stVdecParam.stVdecHead;
        s_stVdecParam.stVdecHead.prev = &s_stVdecParam.stVdecHead;
        s32Ret  = VDEC_OpenDevFile();
        s32Ret |= HI_CODEC_Init();
#if (1 == HI_VDEC_MJPEG_SUPPORT)
        s32Ret |= HI_CODEC_Register(VDEC_MJPEG_Codec());
#endif
        s32Ret |= HI_CODEC_Register(VDEC_VFMW_Codec());
    }

    s_stVdecParam.u8InitCount++;
    s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return s32Ret;
}

HI_S32 HI_MPI_VDEC_DeInit(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32LockRet = HI_SUCCESS;

    s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    if (1 == s_stVdecParam.u8InitCount)
    {
        s32Ret = HI_CODEC_UnRegister(VDEC_VFMW_Codec());
#if (1 == HI_VDEC_MJPEG_SUPPORT)
        s32Ret = HI_CODEC_UnRegister(VDEC_MJPEG_Codec());
#endif
        s32Ret |= HI_CODEC_DeInit();
        s32Ret |= VDEC_CloseDevFile();
        s_stVdecParam.stVdecHead.next = &s_stVdecParam.stVdecHead;
        s_stVdecParam.stVdecHead.prev = &s_stVdecParam.stVdecHead;
    }

    if (s_stVdecParam.u8InitCount > 0)
    {
        s_stVdecParam.u8InitCount--;
    }

    s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return s32Ret;
}

static HI_S32 VDEC_CreateCodec(VDEC_INST_S *pstVdec, HI_CODEC_ID_E enID)
{
    HI_S32 s32Ret;
    HI_CODEC_OPENPARAM_S stOpenParam;
    VFMW_STREAMBUF_S stStrmBuf;
    const HI_CHAR *CodecName = HI_NULL;

    stOpenParam.enType = HI_CODEC_TYPE_DEC;
    stOpenParam.enID = enID;
    stOpenParam.unParam.stVdec.pPlatformPriv = &(pstVdec->stOpenParam);

    /* For VFMW, pass vdec handle to codec */
    pstVdec->hCodecInst = pstVdec->hVdec;

    /* Create codec instance */
    pstVdec->pstCodec = HI_CODEC_Create(&pstVdec->hCodecInst, &stOpenParam);

    if ((HI_NULL == pstVdec->pstCodec) || (HI_INVALID_HANDLE == pstVdec->hCodecInst))
    {
        pstVdec->hCodecInst = HI_INVALID_HANDLE;
        return HI_ERR_VDEC_SETATTR_FAILED;
    }

    /*
     * Need thread or not?
     * VFMW doesn't need thread.
     */
    CodecName = HI_CODEC_GetName(pstVdec->hCodecInst);

    if (HI_NULL == CodecName)
    {
        HI_ERR_VDEC("Can't find codec name!\n");
        (HI_VOID)HI_CODEC_Destory(pstVdec->hCodecInst);
        return HI_ERR_VDEC_SETATTR_FAILED;
    }

    if (0 != strncmp("VFMW", CodecName, 4))
    {
        pstVdec->bIsVFMW = HI_FALSE;
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        s32Ret = pthread_mutex_init(&pstVdec->stMutex, HI_NULL);

        if (HI_SUCCESS != s32Ret)
        {
            (HI_VOID)HI_CODEC_Destory(pstVdec->hCodecInst);
            return HI_ERR_VDEC_SETATTR_FAILED;
        }

        /* Create frame buffer */
        if (HI_CODEC_NeedFrameBuf(pstVdec->hCodecInst))
        {
            /* For VFMW frame buffer, pass vdec handle */
            pstVdec->hFrameBuf = pstVdec->hVdec;
            s32Ret = VDEC_CreateFrameBuf(&(pstVdec->hFrameBuf));

            if (HI_SUCCESS != s32Ret)
            {
                (HI_VOID)pthread_mutex_destroy(&pstVdec->stMutex);
                (HI_VOID)HI_CODEC_Destory(pstVdec->hCodecInst);
                return HI_ERR_VDEC_SETATTR_FAILED;
            }
        }

#endif
    }
    else
    {
        pstVdec->bIsVFMW = HI_TRUE;

        /* If it's VFMW and stream buffer had been created, need attach to instance */
        if ((HI_INVALID_HANDLE != pstVdec->hDmxVidChn) || (HI_INVALID_HANDLE != pstVdec->hStreamBuf))
        {
            stStrmBuf.u32BufSize = pstVdec->u32StrmBufSize;
            stStrmBuf.hDmxVidChn = pstVdec->hDmxVidChn;
            stStrmBuf.hStrmBuf = pstVdec->hStreamBuf;
            s32Ret = VDEC_VFMWSpecCMD(pstVdec->hVdec, VFMW_CMD_ATTACHBUF, (HI_VOID *)&stStrmBuf);

            if (HI_SUCCESS != s32Ret)
            {
                s32Ret = HI_CODEC_Destory(pstVdec->hCodecInst);

                if (HI_SUCCESS != s32Ret)
                {
                    HI_ERR_VDEC("[%s][%d] HI_CODEC_Destory failed!!\n", __func__, __LINE__);
                }

                return HI_ERR_VDEC_SETATTR_FAILED;
            }
        }
    }

    return HI_SUCCESS;
}

static HI_S32 VDEC_DestroyCodec(VDEC_INST_S *pstVdec)
{
    HI_S32 s32Ret = HI_SUCCESS;

    /*
     * Don't destroy stream buffer here.
     * User calls HI_MPI_VDEC_ChanBufferInit create stream buffer, so they should
     *  call HI_MPI_VDEC_ChanBufferDeInit to destroy it themselves.
     */

    /* Free codec instance */
    if (HI_INVALID_HANDLE != pstVdec->hCodecInst)
    {
        s32Ret = HI_CODEC_Destory(pstVdec->hCodecInst);

        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        pstVdec->pstCodec = HI_NULL;
    }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)

    /* Free frame buffer */
    if (HI_INVALID_HANDLE != pstVdec->hFrameBuf)
    {
        s32Ret = VDEC_DestroyFrameBuf(pstVdec->hFrameBuf);
        pstVdec->hFrameBuf = HI_INVALID_HANDLE;
    }

    (HI_VOID)pthread_mutex_destroy(&pstVdec->stMutex);
#endif

    return s32Ret;
}

static HI_S32 VDEC_ChanStop(VDEC_INST_S *pstVdec)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)

    /* Soft codec */
    if (pstVdec->bThreadExist)
    {
        pstVdec->bThreadStop = HI_TRUE;
        (HI_VOID)pthread_join(pstVdec->stSoftCodec, HI_NULL);
        pstVdec->bThreadExist = HI_FALSE;
        s32LockRet = VDEC_LOCK(pstVdec->stMutex);

        if (HI_SUCCESS != s32LockRet)
        {
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
        }

        pstVdec->u32EosFlag = 0;
        s32LockRet = VDEC_UNLOCK(pstVdec->stMutex);

        if (HI_SUCCESS != s32LockRet)
        {
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
        }
    }

#endif

    /* Stop instance */
    if ((pstVdec->pstCodec) && (pstVdec->pstCodec->Stop))
    {
        s32Ret = pstVdec->pstCodec->Stop(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst));
        return VDEC_ConvertError(s32Ret);
    }

    return HI_SUCCESS;
}


#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
static HI_VOID VDEC_MoveYUVData(HI_CODEC_FRAME_S *pstFrame)
{
    HI_U32 u32YAddr;
    HI_U32 u32UAddr;
    HI_U32 u32VAddr;

    u32YAddr = pstFrame->stOutputAddr.u32Vir;
    memcpy((HI_VOID *)u32YAddr, (HI_VOID *)pstFrame->unInfo.stVideo.u32YAddr,
           pstFrame->unInfo.stVideo.u32YStride * pstFrame->unInfo.stVideo.u32Height);
    pstFrame->unInfo.stVideo.u32YAddr = pstFrame->stOutputAddr.u32Phy;

    switch (pstFrame->unInfo.stVideo.enColorFormat)
    {
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_400:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_400:
        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_UYVY422:
        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_YUYV422:
        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_YVYU422:
            pstFrame->unInfo.stVideo.u32UAddr = 0;
            pstFrame->unInfo.stVideo.u32VAddr = 0;
            pstFrame->unInfo.stVideo.u32UStride = 0;
            pstFrame->unInfo.stVideo.u32VStride = 0;
            break;

        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_411:
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_420:
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_1X2:
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_2X1:
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_444:
            u32UAddr = u32YAddr + pstFrame->unInfo.stVideo.u32YStride * pstFrame->unInfo.stVideo.u32Height;
            memcpy((HI_VOID *)u32UAddr, (HI_VOID *)pstFrame->unInfo.stVideo.u32UAddr,
                   pstFrame->unInfo.stVideo.u32UStride * pstFrame->unInfo.stVideo.u32Height);
            pstFrame->unInfo.stVideo.u32YAddr = pstFrame->stOutputAddr.u32Phy;
            pstFrame->unInfo.stVideo.u32UAddr =
                pstFrame->unInfo.stVideo.u32YAddr + pstFrame->unInfo.stVideo.u32YStride * pstFrame->unInfo.stVideo.u32Height;
            pstFrame->unInfo.stVideo.u32VAddr = 0;
            pstFrame->unInfo.stVideo.u32VStride = 0;
            break;

        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_411:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_420:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_422_1X2:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_422_2X1:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_444:
        case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_410:
        default:
            u32UAddr = u32YAddr + pstFrame->unInfo.stVideo.u32YStride * pstFrame->unInfo.stVideo.u32Height;
            u32VAddr = u32UAddr + pstFrame->unInfo.stVideo.u32UStride * pstFrame->unInfo.stVideo.u32Height;
            memcpy((HI_VOID *)u32UAddr, (HI_VOID *)pstFrame->unInfo.stVideo.u32UAddr,
                   pstFrame->unInfo.stVideo.u32UStride * pstFrame->unInfo.stVideo.u32Height);
            memcpy((HI_VOID *)u32VAddr, (HI_VOID *)pstFrame->unInfo.stVideo.u32VAddr,
                   pstFrame->unInfo.stVideo.u32VStride * pstFrame->unInfo.stVideo.u32Height);
            pstFrame->unInfo.stVideo.u32YAddr = pstFrame->stOutputAddr.u32Phy;
            pstFrame->unInfo.stVideo.u32UAddr =
                pstFrame->unInfo.stVideo.u32YAddr + pstFrame->unInfo.stVideo.u32YStride * pstFrame->unInfo.stVideo.u32Height;
            pstFrame->unInfo.stVideo.u32VAddr =
                pstFrame->unInfo.stVideo.u32UAddr + pstFrame->unInfo.stVideo.u32VStride * pstFrame->unInfo.stVideo.u32Height;
            break;
    }
}

static inline HI_VOID VDEC_ConvertFormat(HI_CODEC_COLOR_FORMAT_E enCodecFormat, HI_UNF_VIDEO_FORMAT_E *penUNFFormt)
{
    switch (enCodecFormat)
    {
            /*
            case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_400:
                *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_411:
                *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_411;
                break;
                */
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_420:
            *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;

            /*
            case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_1X2:
                *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2;
                break;
            */
        case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_422_2X1:
            *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
            break;

            /*
            case HI_CODEC_COLOR_FORMAT_YUV_SEMIPLANAR_444:
                *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_444;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_400:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_400;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_411:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_411;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_420:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_420;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_422_1X2:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_422_1X2;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_422_2X1:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_422_2X1;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_444:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_444;
                break;
            case HI_CODEC_COLOR_FORMAT_YUV_PLANAR_410:
                *penUNFFormt = HI_UNF_FORMAT_YUV_PLANAR_410;
                break;
            */
        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_UYVY422:
            *penUNFFormt = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
            break;

        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_YUYV422:
            *penUNFFormt = HI_UNF_FORMAT_YUV_PACKAGE_YUYV;
            break;

        case HI_CODEC_COLOR_FORMAT_YUV_PACKAGE_YVYU422:
            *penUNFFormt = HI_UNF_FORMAT_YUV_PACKAGE_YVYU;
            break;

        default:
            *penUNFFormt = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;
    }
}

static HI_S32 VDEC_RecvInData(VDEC_INST_S *pstVdec, HI_CODEC_STREAM_S *pCodecStrm, VDEC_ES_BUF_S *pStrm, HI_UNF_ES_BUF_S *pDmxBuf)
{
    HI_S32 ret = HI_FAILURE;

    if (pstVdec->hStreamBuf != HI_INVALID_HANDLE)
    {
        ret = VDEC_RecvStream(pstVdec->hStreamBuf, pStrm);
        if (ret != HI_SUCCESS)
        {
            HI_WARN_VDEC("Soft Codec RecvStreamBuf fail.\n");
        }

        /* Make stCodecStrm */
        pCodecStrm->pu8Addr = pStrm->pu8Addr;
        pCodecStrm->s64PtsMs = (HI_S64)pStrm->u64Pts;
        pCodecStrm->u32Size = pStrm->u32BufSize;
        pCodecStrm->u32PhyAddr = pStrm->u32PhyAddr;
    }
    else if (pstVdec->hDmxVidChn != HI_INVALID_HANDLE)
    {
        ret = HI_MPI_DMX_AcquireEs(pstVdec->hDmxVidChn, pDmxBuf);
        if (ret != HI_SUCCESS)
        {
            HI_WARN_VDEC("Soft Codec AcquireES fail.\n");
        }

        /* Make stCodecStrm */
        pCodecStrm->pu8Addr = pDmxBuf->pu8Buf;
        pCodecStrm->s64PtsMs = (HI_S64)pDmxBuf->u32PtsMs;
        pCodecStrm->u32Size = pDmxBuf->u32BufLen;
    }

    if (ret != HI_SUCCESS)
    {
        if (pstVdec->u32EosFlag == 1)
        {
            pstVdec->u32EosFlag = 2;
        }
    }

    return ret;
}

static HI_S32 VDEC_RelsInData(VDEC_INST_S* pstVdec, VDEC_ES_BUF_S *pStrm, HI_UNF_ES_BUF_S *pDmxBuf)
{
    HI_S32 ret = HI_FAILURE;

    if (HI_INVALID_HANDLE != pstVdec->hStreamBuf)
    {
        ret = VDEC_RlsStream(pstVdec->hStreamBuf, pStrm);
    }
    else if (HI_INVALID_HANDLE != pstVdec->hDmxVidChn)
    {
        ret = HI_MPI_DMX_ReleaseEs(pstVdec->hDmxVidChn, pDmxBuf);
    }

    return ret;
}

static HI_VOID *VDEC_SoftCodec(HI_VOID *phVdec)
{
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_CODEC_S *pstCodec;
    VDEC_ES_BUF_S stStrm = {0};
    HI_DRV_VDEC_FRAME_BUF_S stFrmGet = {0};
    HI_DRV_VDEC_USR_FRAME_S stFrmPut = {0};
    HI_CODEC_STREAM_S stCodecStrm;
    HI_CODEC_STREAM_S *pstCodecStrm;
    HI_CODEC_FRAME_S stCodecFrm = {{0}, 0, 0, {{0}}};
    HI_CODEC_CAP_S stCap;
    HI_UNF_ES_BUF_S stDmxBuf = {0};
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    HI_BOOL bNeedCopyFrame;
    HI_BOOL bGetFrameBuf = HI_FALSE;
    HI_BOOL bRecvStream = HI_FALSE;
    HI_BOOL bDecodeSucc = HI_FALSE;
    HI_BOOL bNeedRelsStream = HI_FALSE;

    VDEC_FIND_INST((*(HI_HANDLE *)phVdec), pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_NULL;
    }

    pstCodec = pstVdec->pstCodec;

    if ((!pstCodec) || (!pstCodec->DecodeFrame))
    {
        return HI_NULL;
    }

    /* GetCap */
    (HI_VOID)pstCodec->GetCap(&stCap);
    bNeedCopyFrame = (0 == (stCap.u32CapNumber & HI_CODEC_CAP_OUTPUT2SPECADDR)) ? HI_TRUE : HI_FALSE;

    while (!pstVdec->bThreadStop)
    {
        s32LockRet = VDEC_LOCK(pstVdec->stMutex);

        if (HI_SUCCESS != s32LockRet)
        {
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
        }

        /* Alloc frame buffer */
        if (!bGetFrameBuf)
        {
            s32Ret = VDEC_GetFrameBuf(pstVdec->hFrameBuf, &stFrmGet);
            if (s32Ret != HI_SUCCESS)
            {
                /*HI_WARN_VDEC("Soft Codec GetFrameBuf fail.\n");*/
                s32LockRet = VDEC_UNLOCK(pstVdec->stMutex);

                if (HI_SUCCESS != s32LockRet)
                {
                    HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
                }

                usleep(10 * 1000);
                continue;
            }

            /* Make stCodecFrm */
            stCodecFrm.stOutputAddr.u32Phy = stFrmGet.u32PhyAddr;
            stCodecFrm.stOutputAddr.u32Vir = (HI_U32)HI_MEM_Map(stFrmGet.u32PhyAddr, stFrmGet.u32Size);
            stCodecFrm.stOutputAddr.u32Size = stFrmGet.u32Size;
            bGetFrameBuf = HI_TRUE;
        }

        /* Receive stream */
        pstCodecStrm = HI_NULL;

        if (2 != pstVdec->u32EosFlag)   /* If not end of stream */
        {
            /* For MJPEG, don't receive stream if last frame decode fail due to decoder busy */
            if (bRecvStream)
            {
                pstCodecStrm = &stCodecStrm;
            }
            /* Other: receive stream */
            else
            {
                s32Ret = VDEC_RecvInData(pstVdec, &stCodecStrm, &stStrm, &stDmxBuf);
                if (s32Ret == HI_SUCCESS)
                {
                    pstCodecStrm = &stCodecStrm;
                    bRecvStream = HI_TRUE;
                }
            }
        }

        /* Decode frame */
        s32Ret = pstCodec->DecodeFrame(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst), pstCodecStrm, &stCodecFrm);
        if (HI_SUCCESS == s32Ret)
        {
            bDecodeSucc = HI_TRUE;

            /* If didn't decode to frame address, copy here */
            if (bNeedCopyFrame)
            {
                VDEC_MoveYUVData(&stCodecFrm);
            }

            stFrmPut.bFrameValid = HI_TRUE;
            VDEC_ConvertFormat(stCodecFrm.unInfo.stVideo.enColorFormat, &stFrmPut.enFormat);
            stFrmPut.u32Pts = (HI_U32)stCodecFrm.s64PtsMs;
            stFrmPut.s32YWidth = (HI_S32)stCodecFrm.unInfo.stVideo.u32Width;
            stFrmPut.s32YHeight = (HI_S32)stCodecFrm.unInfo.stVideo.u32Height;
            stFrmPut.s32LumaPhyAddr = (HI_S32)stCodecFrm.unInfo.stVideo.u32YAddr;
            stFrmPut.s32CbPhyAddr = (HI_S32)stCodecFrm.unInfo.stVideo.u32UAddr;
            stFrmPut.s32CrPhyAddr = (HI_S32)stCodecFrm.unInfo.stVideo.u32VAddr;
            stFrmPut.s32LumaStride = (HI_S32)stCodecFrm.unInfo.stVideo.u32YStride;
            stFrmPut.s32ChromStride = (HI_S32)stCodecFrm.unInfo.stVideo.u32UStride;
            stFrmPut.s32ChromCrStride = (HI_S32)stCodecFrm.unInfo.stVideo.u32VStride;
            stFrmPut.bEndOfStream = HI_FALSE;

            /* Free frame buffer */
            (HI_VOID)VDEC_PutFrameBuf(pstVdec->hFrameBuf, &stFrmPut);
            (HI_VOID)HI_MEM_Unmap((HI_VOID *)stCodecFrm.stOutputAddr.u32Vir);
            bGetFrameBuf = HI_FALSE;

            pstVdec->bNewFrame = HI_TRUE;

            // TODO: Support USERDATA
        }
        else
        {
            bDecodeSucc = HI_FALSE;

            pstVdec->u32ErrStrmNum += (s32Ret != HI_ERR_CODEC_NOENOUGHDATA) ? 1 : 0;

            if (2 == pstVdec->u32EosFlag)
            {
                stFrmPut.bEndOfStream = HI_TRUE;
                stFrmPut.bFrameValid = HI_FALSE;
                stFrmPut.s32LumaPhyAddr = (HI_S32)stFrmGet.u32PhyAddr;
                (HI_VOID)VDEC_PutFrameBuf(pstVdec->hFrameBuf, &stFrmPut);
                (HI_VOID)HI_MEM_Unmap((HI_VOID *)stCodecFrm.stOutputAddr.u32Vir);
                bGetFrameBuf = HI_FALSE;
            }
        }

        /* Free stream */
        /* For MJPEG: Don't free stream if decoder busy */
        bNeedRelsStream = (bRecvStream && !(HI_UNF_VCODEC_TYPE_MJPEG == pstVdec->stCurAttr.enType && HI_ERR_CODEC_BUSY == s32Ret));
        if (bNeedRelsStream == HI_TRUE)
        {
            (HI_VOID)VDEC_RelsInData(pstVdec, &stStrm, &stDmxBuf);
            bRecvStream = HI_FALSE;
        }

        s32LockRet = VDEC_UNLOCK(pstVdec->stMutex);

        if (HI_SUCCESS != s32LockRet)
        {
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
        }

        /* If get stream fail or decode frame fail, sleep */
        if ((!bRecvStream) || (!bDecodeSucc))
        {
            usleep(10 * 1000);
        }

    }

    if (bGetFrameBuf)
    {
        stFrmPut.bFrameValid = HI_FALSE;
        stFrmPut.s32LumaPhyAddr = (HI_S32)stFrmGet.u32PhyAddr;
        (HI_VOID)VDEC_PutFrameBuf(pstVdec->hFrameBuf, &stFrmPut);
        (HI_VOID)HI_MEM_Unmap((HI_VOID *)stCodecFrm.stOutputAddr.u32Vir);
    }

    return HI_NULL;
}
#endif

HI_S32 HI_MPI_VDEC_RegisterVcodecLib(const HI_CHAR *pszCodecDllName)
{
#if (HI_VDEC_REG_CODEC_SUPPORT == 1)
    return HI_CODEC_RegisterLib(pszCodecDllName);
#else
    return HI_ERR_VDEC_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_VDEC_AllocChan(HI_HANDLE *phHandle, const HI_UNF_AVPLAY_OPEN_OPT_S *pstMaxCapbility)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    VDEC_INST_S *pstVdec;

    VDEC_CHECK_INIT;

    if (HI_NULL == phHandle)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_SUCCESS != VDEC_AllocHandle(phHandle))
    {
        HI_ERR_VDEC("Alloc handle fail.\n");
        return HI_ERR_VDEC_CREATECH_FAILED;
    }

    /* Allocate resource */
    pstVdec = (VDEC_INST_S *)HI_MALLOC_VDEC(sizeof(VDEC_INST_S));

    if (HI_NULL == pstVdec)
    {
        VDEC_FreeHandle(*phHandle);
        HI_ERR_VDEC("Malloc fail.\n");
        return HI_ERR_VDEC_MALLOC_FAILED;
    }

    /* Init parameter */
    s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    pstVdec->hVdec = *phHandle;
    pstVdec->hStreamBuf = HI_INVALID_HANDLE;
    pstVdec->hFrameBuf  = HI_INVALID_HANDLE;
    pstVdec->hCodecInst = HI_INVALID_HANDLE;
    pstVdec->pstCodec = HI_NULL;
    pstVdec->bIsVFMW = HI_FALSE;
    pstVdec->u32StrmBufSize = 0;
    pstVdec->hDmxVidChn = HI_INVALID_HANDLE;
    pstVdec->stCurAttr = s_stVdecParam.stDefAttr;
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    /* Set thread flag */
    pstVdec->u32ErrStrmNum = 0;
    pstVdec->u32ErrFrmNum = 0;
    pstVdec->bThreadStop = HI_TRUE;
    pstVdec->bThreadExist = HI_FALSE;
    pstVdec->bNewFrame = HI_FALSE;
    pstVdec->u32EosFlag = 0;
#endif

    if (HI_NULL == pstMaxCapbility)
    {
        pstVdec->stOpenParam.enDecType  = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
        pstVdec->stOpenParam.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
#else
        pstVdec->stOpenParam.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
#endif
        pstVdec->stOpenParam.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
    }
    else
    {
        pstVdec->stOpenParam = *pstMaxCapbility;

        if (pstMaxCapbility->enDecType >= HI_UNF_VCODEC_DEC_TYPE_BUTT)
        {
            pstVdec->stOpenParam.enDecType  = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
        }

        if (pstMaxCapbility->enCapLevel >= HI_UNF_VCODEC_CAP_LEVEL_BUTT)
        {
            pstVdec->stOpenParam.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
        }

        if (pstMaxCapbility->enProtocolLevel >= HI_UNF_VCODEC_PRTCL_LEVEL_BUTT)
        {
            pstVdec->stOpenParam.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
        }
    }

    list_add_tail(&pstVdec->stVdecNode, &s_stVdecParam.stVdecHead);
    s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    *phHandle = pstVdec->hVdec;

    HI_INFO_VDEC("Alloc handle = %d\n", *phHandle);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_FreeChan(HI_HANDLE hVdec)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    (HI_VOID)VDEC_DestroyCodec(pstVdec);
    (HI_VOID)VDEC_FreeHandle(pstVdec->hVdec);

    /* Delete node from list */
    s32LockRet = VDEC_LOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    list_del(&pstVdec->stVdecNode);
    s32LockRet = VDEC_UNLOCK(s_stVdecParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    /* Free memory resource */
    HI_FREE_VDEC(pstVdec);

    return HI_SUCCESS;
}

/* set the video decode channel attribute(protocol type, decoder mode,  ErrorCover upper limit, priority) */
HI_S32 HI_MPI_VDEC_SetChanAttr(HI_HANDLE hVdec, const HI_UNF_VCODEC_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_CODEC_ID_E enID;
    HI_CODEC_ATTR_S stAttr;

    VDEC_CHECK_INIT;

    if (HI_NULL == pstAttr)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Convert UNF to HI_CODEC_ID_E */
    enID = VDEC_UNF2CodecId(pstAttr->enType);

    /* Didn't create codec instance */
    if (HI_INVALID_HANDLE == pstVdec->hCodecInst)
    {
        s32Ret = VDEC_CreateCodec(pstVdec, enID);

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_VDEC("Create Codec fail.\n");
            return HI_ERR_VDEC_SETATTR_FAILED;
        }
    }
    /* Type change */
    else if (VDEC_UNF2CodecId(pstVdec->stCurAttr.enType) != enID)
    {
        /* Only VFMW support type switching dynamically */
        if ((!pstVdec->bIsVFMW) || (!HI_CODEC_SupportDecode(pstVdec->pstCodec, enID)) || \
            (HI_CODEC_ID_VIDEO_H263 == enID) || (HI_CODEC_ID_VIDEO_SORENSON == enID) || \
            (HI_CODEC_ID_VIDEO_H263 == VDEC_UNF2CodecId(pstVdec->stCurAttr.enType)) || \
            (HI_CODEC_ID_VIDEO_SORENSON == VDEC_UNF2CodecId(pstVdec->stCurAttr.enType)))
        {
            if (HI_NULL != pstVdec->pstCodec)
            {
                s32Ret = VDEC_ChanStop(pstVdec);
                s32Ret |= VDEC_DestroyCodec(pstVdec);

                if (HI_SUCCESS != s32Ret)
                {
                    HI_ERR_VDEC("VDEC_ChanStop or VDEC_DestroyCodec fail.\n");
                }
            }

            s32Ret = VDEC_CreateCodec(pstVdec, enID);

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_VDEC("Create Codec fail.\n");
                return HI_ERR_VDEC_SETATTR_FAILED;
            }
        }
    }

    /* Check codec structure */
    if (HI_NULL == pstVdec->pstCodec)
    {
        HI_ERR_VDEC("Invalid Codec\n");
        return HI_ERR_VDEC_SETATTR_FAILED;
    }

    stAttr.enID = enID;
    stAttr.unAttr.stVdec.pPlatformPriv = (HI_VOID *)pstAttr;
    stAttr.unAttr.stVdec.pCodecContext = pstAttr->pCodecContext;
    pstVdec->stCurAttr = *pstAttr;

    /* Set instance attribute */
    if (HI_NULL != pstVdec->pstCodec->SetAttr)
    {
        s32Ret = pstVdec->pstCodec->SetAttr(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst), &stAttr);
        return VDEC_ConvertError(s32Ret);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_GetChanAttr(HI_HANDLE hVdec, HI_UNF_VCODEC_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_CODEC_ATTR_S stAttr;

    VDEC_CHECK_INIT;

    if (HI_NULL == pstAttr)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Set saved attribute first */
    *pstAttr = pstVdec->stCurAttr;

    /* Get instance attribute */
    if ((pstVdec->pstCodec) && (pstVdec->pstCodec->GetAttr))
    {
        stAttr.unAttr.stVdec.pPlatformPriv = pstAttr;
        s32Ret = pstVdec->pstCodec->GetAttr(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst), &stAttr);
        return VDEC_ConvertError(s32Ret);
    }

    /* If didn't create codec instance, will get default attribute */
    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_ResetChan(HI_HANDLE hVdec)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_S32 s32Ret = HI_SUCCESS;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Reset instance */
    if (pstVdec->pstCodec)
    {
        if (HI_NULL != pstVdec->pstCodec->Reset)
        {
            s32Ret = pstVdec->pstCodec->Reset(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst));
        }

        if (pstVdec->bIsVFMW)
        {
            if (HI_INVALID_HANDLE != pstVdec->hStreamBuf)
            {
                (HI_VOID)VDEC_ResetStreamBuf(pstVdec->hStreamBuf);
            }
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else
        {
            s32LockRet = VDEC_LOCK(pstVdec->stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
            }

            if (HI_INVALID_HANDLE != pstVdec->hStreamBuf)
            {
                (HI_VOID)VDEC_ResetStreamBuf(pstVdec->hStreamBuf);
            }

            if (HI_INVALID_HANDLE != pstVdec->hFrameBuf)
            {
                (HI_VOID)VDEC_ResetFrameBuf(pstVdec->hFrameBuf);
            }

            s32LockRet = VDEC_UNLOCK(pstVdec->stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
            }
        }

#endif
    }

    return VDEC_ConvertError(s32Ret);
}

HI_S32 HI_MPI_VDEC_ChanStart(HI_HANDLE hVdec)
{
    HI_S32 s32Ret;
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)

        /* For soft codec */
        if ((!pstVdec->bIsVFMW) && (!pstVdec->bThreadExist))
        {
            pstVdec->bThreadStop = HI_FALSE;

            /* Create soft codec thread */
            s32Ret = pthread_create(&pstVdec->stSoftCodec, HI_NULL, VDEC_SoftCodec, &(pstVdec->hVdec));

            if (HI_SUCCESS != s32Ret)
            {
                return HI_FAILURE;
            }

            pstVdec->bThreadExist = HI_TRUE;
        }

#endif

        /* Start instance */
        if (pstVdec->pstCodec->Start)
        {
            s32Ret = pstVdec->pstCodec->Start(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst));
            return VDEC_ConvertError(s32Ret);
        }

        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_ChanStop(HI_HANDLE hVdec)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return VDEC_ChanStop(pstVdec);
}

HI_S32 HI_MPI_VDEC_GetChanStatusInfo(HI_HANDLE hVdec, VDEC_STATUSINFO_S *pstStatusInfo)
{
    VDEC_INST_S *pstVdec = HI_NULL;
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    HI_S32 s32Ret;
    HI_DRV_VDEC_STREAMBUF_STATUS_S stStrmStatus;
    HI_DRV_VDEC_FRAMEBUF_STATUS_S stFrmStatus;
#endif

    VDEC_CHECK_INIT;

    if (HI_NULL == pstStatusInfo)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    memset(pstStatusInfo, 0, sizeof(VDEC_STATUSINFO_S));

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_GETSTATUSINFO, (HI_VOID *)pstStatusInfo);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else
        {
            s32Ret = VDEC_GetStreamBufStatus(pstVdec->hStreamBuf, &stStrmStatus);
            s32Ret |= VDEC_GetFrameBufStatus(pstVdec->hFrameBuf, &stFrmStatus);

            if (HI_SUCCESS != s32Ret)
            {
                return HI_FAILURE;
            }

            pstStatusInfo->u32BufferSize = stStrmStatus.u32Size;
            pstStatusInfo->u32BufferAvailable = stStrmStatus.u32Available;
            pstStatusInfo->u32BufferUsed = stStrmStatus.u32Used;
            pstStatusInfo->u32VfmwFrmSize = 0;
            pstStatusInfo->u32VfmwStrmSize = 0;
            pstStatusInfo->u32StrmInBps = 0;
            pstStatusInfo->u32TotalDecFrmNum = stFrmStatus.u32TotalDecFrameNum;
            pstStatusInfo->u32FrameBufNum = stFrmStatus.u32FrameBufNum;

            pstStatusInfo->u32TotalErrFrmNum = pstVdec->u32ErrFrmNum;
            pstStatusInfo->u32TotalErrStrmNum = pstVdec->u32ErrStrmNum;
            pstStatusInfo->bEndOfStream = (2 == pstVdec->u32EosFlag) ? HI_TRUE : HI_FALSE;
        }

#endif
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_GetChanStreamInfo(HI_HANDLE hVdec, HI_UNF_VCODEC_STREAMINFO_S *pstStreamInfo)
{
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_CODEC_STREAMINFO_S stInfo;
    HI_S32 s32Ret;

    VDEC_CHECK_INIT;

    if (HI_NULL == pstStreamInfo)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    memset(pstStreamInfo, 0, sizeof(HI_UNF_VCODEC_STREAMINFO_S));

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Get instance stream info */
    if ((pstVdec->pstCodec) && (pstVdec->pstCodec->GetStreamInfo))
    {
        s32Ret = pstVdec->pstCodec->GetStreamInfo(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst), &stInfo);

        if (HI_SUCCESS != s32Ret)
        {
            return VDEC_ConvertError(s32Ret);
        }

        /* Convert info */
        pstStreamInfo->enVCodecType  = VDEC_CodecId2UNF(stInfo.stVideo.enCodecID);
        pstStreamInfo->enSubStandard = (HI_UNF_VIDEO_SUB_STANDARD_E)stInfo.stVideo.enSubStandard;
        pstStreamInfo->u32SubVersion = stInfo.stVideo.u32SubVersion;
        pstStreamInfo->u32Profile = stInfo.stVideo.u32Profile;
        pstStreamInfo->u32Level = stInfo.stVideo.u32Level;
        pstStreamInfo->enDisplayNorm = (HI_UNF_ENC_FMT_E)(stInfo.stVideo.enDisplayNorm);
        pstStreamInfo->enSampleType = (stInfo.stVideo.bProgressive == HI_TRUE) ? (HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE) : (HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE);
        //pstStreamInfo->u32AspectWidth = stInfo.stVideo.u32AspectWidth;
        //pstStreamInfo->u32AspectHeight = stInfo.stVideo.u32AspectHeight;
        pstStreamInfo->enAspectRatio = stInfo.stVideo.enAspectRatio;
        pstStreamInfo->u32bps = stInfo.stVideo.u32bps;
        pstStreamInfo->u32fpsInteger = stInfo.stVideo.u32FrameRateInt;
        pstStreamInfo->u32fpsDecimal = stInfo.stVideo.u32FrameRateDec;
        pstStreamInfo->u32Width  = stInfo.stVideo.u32Width;
        pstStreamInfo->u32Height = stInfo.stVideo.u32Height;
        pstStreamInfo->u32DisplayWidth   = stInfo.stVideo.u32DisplayWidth;
        pstStreamInfo->u32DisplayHeight  = stInfo.stVideo.u32DisplayHeight;
        pstStreamInfo->u32DisplayCenterX = stInfo.stVideo.u32DisplayCenterX;
        pstStreamInfo->u32DisplayCenterY = stInfo.stVideo.u32DisplayCenterY;
    }
    else
    {
        pstStreamInfo->enVCodecType = HI_UNF_VCODEC_TYPE_BUTT;
        pstStreamInfo->enDisplayNorm = HI_UNF_ENC_FMT_BUTT;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_CheckNewEvent(HI_HANDLE hVdec, VDEC_EVENT_S *pstNewEvent)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL == pstNewEvent)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    memset(pstNewEvent, 0, sizeof(VDEC_EVENT_S));

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_CHECKEVT, (HI_VOID *)pstNewEvent);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else
        {
            if (pstVdec->bNewFrame)
            {
                pstNewEvent->bNewFrame = pstVdec->bNewFrame;
                pstVdec->bNewFrame = HI_FALSE;
            }
        }

#endif
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_ReadNewFrame(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstNewFrame)
{

    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL == pstNewFrame)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    memset(pstNewFrame, 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_READNEWFRAME, (HI_VOID *)pstNewFrame);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else
        {
            return VDEC_GetNewFrm(pstVdec->hFrameBuf, pstNewFrame);
        }

#endif
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_ChanRecvUsrData(HI_HANDLE hVdec, HI_UNF_VIDEO_USERDATA_S *pstUsrData)
{
    VDEC_CHECK_INIT;

    if (HI_NULL == pstUsrData)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    memset(pstUsrData, 0, sizeof(HI_UNF_VIDEO_USERDATA_S));

    return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_READUSRDATA, (HI_VOID *)pstUsrData);
}

HI_S32 HI_MPI_VDEC_SetChanFrmRate(HI_HANDLE hVdec, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL == pstFrmRate)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_SETFRAMERATE, (HI_VOID *)pstFrmRate);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else if (HI_INVALID_HANDLE != pstVdec->hFrameBuf)
        {
            return VDEC_SetFrmRate(pstVdec->hFrameBuf, pstFrmRate);
        }

#endif
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_GetChanFrmRate(HI_HANDLE hVdec, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL == pstFrmRate)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_GETFRAMERATE, (HI_VOID *)pstFrmRate);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else if (HI_INVALID_HANDLE != pstVdec->hFrameBuf)
        {
            return VDEC_GetFrmRate(pstVdec->hFrameBuf, pstFrmRate);
        }

#endif
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_ChanFrameDecode(HI_HANDLE hVdec, const HI_UNF_AVPLAY_I_FRAME_S *pstIFrameStream,
                                   HI_UNF_VO_FRAMEINFO_S *pVoFrameInfo, HI_BOOL bCapture, HI_UNF_VIDEO_FRAME_TYPE_E enFrameType)
{
    HI_S32 s32Ret;
    VDEC_INST_S *pstVdec = HI_NULL;
    VFMW_IFRAME_PARAM_S stIFrameParam;
    HI_UNF_VCODEC_ATTR_S stDefAttr;
    //HI_UNF_VO_FRAMEINFO_S stVoFrameInfo;
    VDEC_CHECK_INIT;

    if ((HI_NULL == pstIFrameStream) || (HI_NULL == pVoFrameInfo))
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (enFrameType != HI_UNF_FRAME_TYPE_I)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Set type here */
    if (HI_INVALID_HANDLE == pstVdec->hCodecInst)
    {
        s32Ret = HI_MPI_VDEC_GetChanAttr(hVdec, &stDefAttr);
        stDefAttr.enType = pstIFrameStream->enType;
        s32Ret |= HI_MPI_VDEC_SetChanAttr(hVdec, &stDefAttr);

        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }
    }

    stIFrameParam.pstIFrameStream = pstIFrameStream;
    stIFrameParam.pstVoFrameInfo = pVoFrameInfo;
    stIFrameParam.bCapture = bCapture;
    s32Ret = VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_IFRAMEDECODE, (HI_VOID *)&stIFrameParam);
    //VDEC_FrameInfo_UNF2Vo((&stVoFrameInfo), pVoFrameInfo);
    return s32Ret;
}

HI_S32 HI_MPI_VDEC_ChanIFrameRelease(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstVoFrameInfo)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    if (HI_NULL == pstVoFrameInfo)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_IFRAMERELEASE, (HI_VOID *)pstVoFrameInfo);
        }
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_SetEosFlag(HI_HANDLE hVdec)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_SETEOSFLAG, HI_NULL);
        }

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
        else
        {
            s32LockRet = VDEC_LOCK(pstVdec->stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
            }

            pstVdec->u32EosFlag = 1;
            s32LockRet = VDEC_UNLOCK(pstVdec->stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
            }
        }

#endif
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_DiscardFrame(HI_HANDLE hVdec, VDEC_DISCARD_FRAME_S *pstParam)
{
    VDEC_CHECK_INIT;
    return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_DISCARDFRAME, (HI_VOID *)pstParam);
}

HI_S32 HI_MPI_VDEC_Invoke(HI_HANDLE hVdec, HI_CODEC_VIDEO_CMD_S *pstParam)
{
    HI_S32 s32Ret;
    VDEC_INST_S *pstVdec = HI_NULL;
    HI_DRV_VDEC_STREAMBUF_STATUS_S stEsBufStat;
    HI_UNF_AVPLAY_VDEC_INFO_S *pstInfo;

    if ((HI_NULL == pstParam) ||
        (pstParam->u32CmdID >= VFMW_CMD_BUTT) ||
        (pstParam->u32CmdID < VFMW_CMD_GETINFO))
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (pstVdec->pstCodec)
    {
        if ((pstVdec->bIsVFMW) && (pstVdec->pstCodec->Control))
        {
            s32Ret = pstVdec->pstCodec->Control(HI_CODEC_INST_HANDLE(pstVdec->hCodecInst),
                                                pstParam->u32CmdID, (HI_VOID *)pstParam->pPara);
        }
        else
        {
            memset((HI_UNF_AVPLAY_VDEC_INFO_S *)pstParam->pPara, 0, sizeof(HI_UNF_AVPLAY_VDEC_INFO_S));
            s32Ret = HI_SUCCESS;
        }

        /* For VFMW_CMD_GETINFO, need add undecoded frame number of ES Buffer here */
        if ((VFMW_CMD_GETINFO == pstParam->u32CmdID) && (HI_SUCCESS == s32Ret))
        {
            if (HI_INVALID_HANDLE != pstVdec->hStreamBuf)
            {
                s32Ret = VDEC_GetStreamBufStatus(pstVdec->hStreamBuf, &stEsBufStat);

                if (HI_SUCCESS == s32Ret)
                {
                    pstInfo = (HI_UNF_AVPLAY_VDEC_INFO_S *)pstParam->pPara;
                    pstInfo->u32UndecFrmNum += stEsBufStat.u32DataNum;
                }
                else
                {
                    return HI_FAILURE;
                }
            }
        }

        return VDEC_ConvertError(s32Ret);
    }

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_ChanRecvFrm(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstFrameInfo)
{
    VDEC_CHECK_INIT;

    if (HI_NULL == pstFrameInfo)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_RECEIVEFRAME, (HI_VOID *)pstFrameInfo);
}

HI_S32 HI_MPI_VDEC_ChanRlsFrm(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstFrameInfo)
{
    VDEC_CHECK_INIT;

    if (HI_NULL == pstFrameInfo)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_RELEASEFRAME, (HI_VOID *)pstFrameInfo);
}

HI_S32 HI_MPI_VDEC_AcqUserData(HI_HANDLE hVdec,
                               HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType)
{
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    VDEC_INST_S *pstVdec = HI_NULL;
    VFMW_USERDATA_S stParam;

    VDEC_CHECK_INIT;

    if ((HI_NULL == pstUserData) || (HI_NULL == penType))
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            stParam.pstData = pstUserData;
            stParam.penType = penType;
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_ACQUSERDATA, (HI_VOID *)&stParam);
        }
    }

#endif

    return HI_FAILURE;
}

HI_S32 HI_MPI_VDEC_RlsUserData(HI_HANDLE hVdec, HI_UNF_VIDEO_USERDATA_S *pstUserData)
{
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    if (HI_NULL == pstUserData)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    if (HI_NULL != pstVdec->pstCodec)
    {
        if (pstVdec->bIsVFMW)
        {
            return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_RLSUSERDATA, (HI_VOID *)pstUserData);
        }
    }

#endif

    return HI_FAILURE;
}


HI_S32 HI_MPI_VDEC_ChanBufferInit(HI_HANDLE hVdec, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn)
{
    VDEC_INST_S *pstVdec = HI_NULL;
    VFMW_STREAMBUF_S stStrmBuf;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Stream from buffer(non-demux) */
    if (HI_INVALID_HANDLE == hDmxVidChn)
    {
        /* Create stream buffer */
        if (HI_SUCCESS != VDEC_CreateStreamBuf(&pstVdec->hStreamBuf, u32BufSize))
        {
            return HI_ERR_VDEC_BUFFER_ATTACHED;
        }

        pstVdec->hDmxVidChn = HI_INVALID_HANDLE;
    }
    else
    {
        /* Use demux buffer */
        pstVdec->hStreamBuf = HI_INVALID_HANDLE;
        pstVdec->hDmxVidChn = hDmxVidChn;
    }

    pstVdec->u32StrmBufSize = u32BufSize;

    /* If codec instance had been created and it's VFMW, attach buffer to it */
    if (pstVdec->bIsVFMW)
    {
        stStrmBuf.u32BufSize = pstVdec->u32StrmBufSize;
        stStrmBuf.hDmxVidChn = pstVdec->hDmxVidChn;
        stStrmBuf.hStrmBuf = pstVdec->hStreamBuf;
        return VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_ATTACHBUF, (HI_VOID *)&stStrmBuf);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VDEC_ChanBufferDeInit(HI_HANDLE hVdec)
{
    HI_S32 s32Ret = HI_SUCCESS;
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* If VFMW, need detach stream buffer firstly */
    if (pstVdec->bIsVFMW)
    {
        s32Ret |= VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_DETACHBUF, HI_NULL);
    }

    /* Destroy stream buffer */
    if (HI_INVALID_HANDLE != pstVdec->hStreamBuf)
    {
        s32Ret |= VDEC_DestroyStreamBuf(pstVdec->hStreamBuf);
    }

    return s32Ret;
}

HI_S32 HI_MPI_VDEC_ChanGetBuffer(HI_HANDLE hVdec, HI_U32 u32RequestSize, VDEC_ES_BUF_S *pstBuf)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return VDEC_GetStreamBuf(pstVdec->hStreamBuf, u32RequestSize, pstBuf);
}

HI_S32 HI_MPI_VDEC_ChanPutBuffer(HI_HANDLE hVdec, const VDEC_ES_BUF_S *pstBuf)
{
    VDEC_INST_S *pstVdec = HI_NULL;

    VDEC_CHECK_INIT;

    VDEC_FIND_INST(hVdec, pstVdec);

    if (HI_NULL == pstVdec)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    return VDEC_PutStreamBuf(pstVdec->hStreamBuf, pstBuf);
}

HI_S32 HI_MPI_VDEC_ChanDropStream(HI_HANDLE hVdec, HI_U32 *pSeekPts, HI_U32 u32Gap)
{
    HI_S32 s32Ret = HI_FAILURE;
    VFMW_SEEKPTS_PARAM_S stVfmwSeekPts;
    memset(&stVfmwSeekPts, 0, sizeof(VFMW_SEEKPTS_PARAM_S));

    if (NULL == pSeekPts)
    {
        HI_ERR_VDEC("%s:pSeekPts is NULL pointer\n", __FUNCTION__);
        return HI_ERR_VDEC_INVALID_PARA;
    }

    stVfmwSeekPts.pu32SeekPts = pSeekPts;
    stVfmwSeekPts.u32Gap = u32Gap;
    s32Ret = VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_DROPSTREAM, (HI_VOID *)&stVfmwSeekPts);
    return s32Ret;
}

HI_S32 HI_MPI_VDEC_SetTrickMode(HI_HANDLE hVdec, HI_S32 s32Speed)
{
    HI_S32 ret;
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpt;

    stTplayOpt.u32TplaySpeed = s32Speed;

    ret = VDEC_VFMWSpecCMD(hVdec, VFMW_CMD_SETTPLAYOPT, &stTplayOpt);

    if (ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("%s:hVdec: %d, ioctl VFMW_CMD_SETTPLAYOPT !\n", __FUNCTION__, hVdec);
        return HI_FAILURE;
    }

    HI_INFO_VDEC("%s: hVdec: %d, OK \n", __FUNCTION__, hVdec);
    return HI_SUCCESS;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */
