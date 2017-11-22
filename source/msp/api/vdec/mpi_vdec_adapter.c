/******************************************************************************

  Copyright (C), 2012-2022, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_vdec_adapter.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2012/07/31
  Description   : Implement for vdec driver
  History       :
  1.Date        : 2012/07/31
    Author      : l00185424
    Modification: Created file

*******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <memory.h>
#include <sys/ioctl.h>
#include <pthread.h>

/* Unf headers */
#include "hi_video_codec.h"

/* Mpi headers */
#include "hi_error_mpi.h"
#include "hi_mpi_mem.h"
#include "mpi_vdec_adapter.h"

/* Drv headers */
#include "drv_struct_ext.h"
#include "vfmw.h"
#include "drv_vdec_ioctl.h"
#include "list.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

/****************************** Macro Definition *****************************/
typedef HI_S32 (*FN_VFMW_CTRL_HANDLER)(HI_HANDLE hInst, HI_VOID *pParam);
typedef struct 
{
    HI_U32 CmdID;
    FN_VFMW_CTRL_HANDLER pHandler;

}VFMW_CTRL_CMD_NODE;


#define VFMW_INST_HANDLE(hInst) (hInst & 0xFF)

#define VFMW_FIND_INST(hInst, pVFMWInst) \
    { \
        struct list_head* pos; \
        struct list_head* n; \
        VFMW_INST_S* pstTmp; \
        if (!list_empty(&s_stVdecAdpParam.stInstHead)) \
        { \
            list_for_each_safe(pos, n, &s_stVdecAdpParam.stInstHead) \
            { \
                pstTmp = list_entry(pos, VFMW_INST_S, stInstNode); \
                if (VFMW_INST_HANDLE(hInst) == pstTmp->hInst) \
                { \
                    pVFMWInst = pstTmp; \
                    break; \
                } \
            } \
        } \
    }

/* Find an instance pointer from list by handle */
#define STRMBUF_FIND_INST(hBuf, pBufInst) \
    { \
        HI_S32 s32LockRet = HI_SUCCESS; \
        struct list_head* pos; \
        struct list_head* n; \
        STREAM_BUF_INST_S* pstTmp; \
        s32LockRet = VDEC_LOCK(s_stStrmBufParam.stMutex); \
        if(HI_SUCCESS != s32LockRet) \
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__,__LINE__); \
        }\
        if (!list_empty(&s_stStrmBufParam.stBufHead)) \
        { \
            list_for_each_safe(pos, n, &s_stStrmBufParam.stBufHead) \
            { \
                pstTmp = list_entry(pos, STREAM_BUF_INST_S, stBufNode); \
                if (hBuf == pstTmp->hBuf) \
                { \
                    pBufInst = pstTmp; \
                    break; \
                } \
            } \
        } \
        s32LockRet = VDEC_UNLOCK(s_stStrmBufParam.stMutex); \
        if(HI_SUCCESS != s32LockRet) \
        { \
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__,__LINE__); \
        } \
    }

/* Find an instance pointer from list by handle */
#define FRMBUF_FIND_INST(hBuf, pBufInst) \
    { \
        HI_S32 s32LockRet = HI_SUCCESS; \
        struct list_head* pos; \
        struct list_head* n; \
        FRAME_BUF_INST_S* pstTmp; \
        s32LockRet = VDEC_LOCK(s_stFrmBufParam.stMutex); \
        if(HI_SUCCESS != s32LockRet) \
        {\
            HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__,__LINE__); \
        }\
        if (!list_empty(&s_stFrmBufParam.stBufHead)) \
        { \
            list_for_each_safe(pos, n, &s_stFrmBufParam.stBufHead) \
            { \
                pstTmp = list_entry(pos, FRAME_BUF_INST_S, stBufNode); \
                if (hBuf == pstTmp->hBuf) \
                { \
                    pBufInst = pstTmp; \
                    break; \
                } \
            } \
        } \
        s32LockRet = VDEC_UNLOCK(s_stFrmBufParam.stMutex); \
        if(HI_SUCCESS != s32LockRet) \
        { \
            HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__,__LINE__); \
        } \
    }

/************************ Static Structure Definition ************************/


/* CODEC ID to UNF CODEC TYPE Table */
static const HI_U32 g_CodecTypeTable[][2] = 
{
    {HI_CODEC_ID_VIDEO_MPEG2,                 HI_UNF_VCODEC_TYPE_MPEG2},
    {HI_CODEC_ID_VIDEO_MPEG4,                 HI_UNF_VCODEC_TYPE_MPEG4},
    {HI_CODEC_ID_VIDEO_AVS,                   HI_UNF_VCODEC_TYPE_AVS},
    {HI_CODEC_ID_VIDEO_H263,                  HI_UNF_VCODEC_TYPE_H263},
    {HI_CODEC_ID_VIDEO_H264,                  HI_UNF_VCODEC_TYPE_H264},
    {HI_CODEC_ID_VIDEO_REAL8,                 HI_UNF_VCODEC_TYPE_REAL8},
    {HI_CODEC_ID_VIDEO_REAL9,                 HI_UNF_VCODEC_TYPE_REAL9},
    {HI_CODEC_ID_VIDEO_VC1,                   HI_UNF_VCODEC_TYPE_VC1},
    {HI_CODEC_ID_VIDEO_VP6,                   HI_UNF_VCODEC_TYPE_VP6},
    {HI_CODEC_ID_VIDEO_VP6F,                  HI_UNF_VCODEC_TYPE_VP6F},
    {HI_CODEC_ID_VIDEO_VP6A,                  HI_UNF_VCODEC_TYPE_VP6A},
    {HI_CODEC_ID_VIDEO_VP8,                   HI_UNF_VCODEC_TYPE_VP8},
    {HI_CODEC_ID_VIDEO_MJPEG,                 HI_UNF_VCODEC_TYPE_MJPEG},
    {HI_CODEC_ID_VIDEO_SORENSON,              HI_UNF_VCODEC_TYPE_SORENSON},
    {HI_CODEC_ID_VIDEO_DIVX3,                 HI_UNF_VCODEC_TYPE_DIVX3},
    {HI_CODEC_ID_VIDEO_RAW,                   HI_UNF_VCODEC_TYPE_RAW},
    {HI_CODEC_ID_VIDEO_JPEG,                  HI_UNF_VCODEC_TYPE_JPEG},
    {HI_CODEC_ID_VIDEO_MSMPEG4V1,             HI_UNF_VCODEC_TYPE_MSMPEG4V1},
    {HI_CODEC_ID_VIDEO_MSMPEG4V2,             HI_UNF_VCODEC_TYPE_MSMPEG4V2},
    {HI_CODEC_ID_VIDEO_MSVIDEO1,              HI_UNF_VCODEC_TYPE_MSVIDEO1},
    {HI_CODEC_ID_VIDEO_WMV1,                  HI_UNF_VCODEC_TYPE_WMV1},
    {HI_CODEC_ID_VIDEO_WMV2,                  HI_UNF_VCODEC_TYPE_WMV2},
    {HI_CODEC_ID_VIDEO_RV10,                  HI_UNF_VCODEC_TYPE_RV10},
    {HI_CODEC_ID_VIDEO_RV20,                  HI_UNF_VCODEC_TYPE_RV20},
    {HI_CODEC_ID_VIDEO_SVQ1,                  HI_UNF_VCODEC_TYPE_SVQ1},
    {HI_CODEC_ID_VIDEO_SVQ3,                  HI_UNF_VCODEC_TYPE_SVQ3},
    {HI_CODEC_ID_VIDEO_H261,                  HI_UNF_VCODEC_TYPE_H261},
    {HI_CODEC_ID_VIDEO_VP3,                   HI_UNF_VCODEC_TYPE_VP3},
    {HI_CODEC_ID_VIDEO_VP5,                   HI_UNF_VCODEC_TYPE_VP5},
    {HI_CODEC_ID_VIDEO_CINEPAK,               HI_UNF_VCODEC_TYPE_CINEPAK},
    {HI_CODEC_ID_VIDEO_INDEO2,                HI_UNF_VCODEC_TYPE_INDEO2},
    {HI_CODEC_ID_VIDEO_INDEO3,                HI_UNF_VCODEC_TYPE_INDEO3},
    {HI_CODEC_ID_VIDEO_INDEO4,                HI_UNF_VCODEC_TYPE_INDEO4},
    {HI_CODEC_ID_VIDEO_INDEO5,                HI_UNF_VCODEC_TYPE_INDEO5},
    {HI_CODEC_ID_VIDEO_MJPEGB,                HI_UNF_VCODEC_TYPE_MJPEGB},

    {HI_CODEC_ID_BUTT,                        HI_UNF_VCODEC_TYPE_BUTT},
};

/* Describe a VFMW instance */
typedef struct tagVFMW_INST_S
{
    HI_HANDLE        hInst;                         /* Instance handle */
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    HI_U8           *pu8UserDataVirAddr;            /* User data MMZ user space address  */
#endif
    HI_U8            au8UsrData[MAX_USER_DATA_LEN]; /* Userdata buffer */
    struct list_head stInstNode;                    /* Instance list node */
} VFMW_INST_S;

/* Global parameters for VFMW */
typedef struct tagVFMW_GLOBAL_S
{
    const HI_CHAR      *pszDevPath;     /* Device name */
    HI_S32              s32DevFd;       /* Device file handle */
    HI_U32              u32InitCount;   /* Init counter */
    HI_CODEC_CAP_S      stCap;          /* VFMW capability */
    pthread_mutex_t     stMutex;        /* Mutex */
    struct list_head    stInstHead;     /* Instance list head */
} VDEC_ADP_GLOBAL_S;

/* Describe a stream buffer instance */
typedef struct tagSTREAM_BUF_INST_S
{
    HI_HANDLE     hBuf;                 /* BM buffer handle */
    HI_U32        u32Size;              /* Size */
    HI_U8        *pu8MMZVirAddr;        /* MMZ virtual address */
    HI_BOOL       bGetPutFlag;          /* Gut/Put flag */
    VDEC_ES_BUF_S stLastGet;            /* Last get buffer */
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    HI_BOOL       bRecvRlsFlag;         /* Receive/Release flag */
    VDEC_ES_BUF_S stLastRecv;           /* Last Receive buffer */
#endif
    struct list_head stBufNode;         /* Instance list node */
} STREAM_BUF_INST_S;

/* Global parameters for stream buffer */
typedef struct tagSTREAM_BUF_GLOBAL_S
{
    pthread_mutex_t     stMutex;        /* Mutex */
    struct list_head    stBufHead;      /* Instance list head */
} STREAM_BUF_GLOBAL_S;

/* Describe a frame buffer instance */
typedef struct tagFRAME_BUF_INST_S
{
    HI_HANDLE     hBuf;                 /* Frame buffer handle */
    HI_BOOL       bGetPutFlag;          /* Gut/Put flag */
    HI_DRV_VDEC_FRAME_BUF_S stLastGet;         /* Last get buffer */
    struct list_head stBufNode;         /* Instance list node */
} FRAME_BUF_INST_S;

/* Global parameters for stream buffer */
typedef struct tagFRAME_BUF_GLOBAL_S
{
    pthread_mutex_t     stMutex;        /* Mutex */
    struct list_head    stBufHead;      /* Instance list head */
} FRAME_BUF_GLOBAL_S;


/***************************** Global Definition *****************************/


/***************************** Static Definition *****************************/

static HI_S32 VFMW_GetCap(HI_CODEC_CAP_S *pstCodecCap);
static HI_S32 VFMW_Create(HI_HANDLE *phInst, const HI_CODEC_OPENPARAM_S *pstParam);
static HI_S32 VFMW_Destroy(HI_HANDLE hInst);
static HI_S32 VFMW_Start(HI_HANDLE hInst);
static HI_S32 VFMW_Stop(HI_HANDLE hInst);
static HI_S32 VFMW_Reset(HI_HANDLE hInst);
static HI_S32 VFMW_SetAttr(HI_HANDLE hInst, const HI_CODEC_ATTR_S *pstAttr);
static HI_S32 VFMW_GetAttr(HI_HANDLE hInst, HI_CODEC_ATTR_S *pstAttr);
static HI_S32 VFMW_GetStreamInfo(HI_HANDLE hInst, HI_CODEC_STREAMINFO_S *pstStreamInfo);
static HI_S32 VFMW_Control(HI_HANDLE hInst, HI_U32 u32CMD, HI_VOID *pParam);

static VDEC_ADP_GLOBAL_S s_stVdecAdpParam =
{
    .pszDevPath   = "/dev/" UMAP_DEVNAME_VDEC,
    .s32DevFd     = -1,
    .u32InitCount = 0,
    .stCap        = {HI_CODEC_CAP_DRIVENSELF | HI_CODEC_CAP_OUTPUT2SELFADDR, HI_NULL},
    .stMutex      = PTHREAD_MUTEX_INITIALIZER,
    .stInstHead   = {&s_stVdecAdpParam.stInstHead, &s_stVdecAdpParam.stInstHead}
};

static HI_CODEC_S s_stCodec =
{
    .pszName		= "VFMW",
    .unVersion		= {.stVersion = {1, 0, 0, 0}},
    .pszDescription = "Hisilicon hardware codec",

    .GetCap			= VFMW_GetCap,
    .Create			= VFMW_Create,
    .Destroy		= VFMW_Destroy,
    .Start			= VFMW_Start,
    .Stop			= VFMW_Stop,
    .Reset			= VFMW_Reset,
    .SetAttr		= VFMW_SetAttr,
    .GetAttr		= VFMW_GetAttr,
    .DecodeFrame	= HI_NULL,
    .EncodeFrame	= HI_NULL,
    .GetStreamInfo	= VFMW_GetStreamInfo,
    .Control		= VFMW_Control,
};

static STREAM_BUF_GLOBAL_S s_stStrmBufParam =
{
    .stMutex   = PTHREAD_MUTEX_INITIALIZER,
    .stBufHead = {&s_stStrmBufParam.stBufHead,	&s_stStrmBufParam.stBufHead}
};

static FRAME_BUF_GLOBAL_S s_stFrmBufParam =
{
    .stMutex   = PTHREAD_MUTEX_INITIALIZER,
    .stBufHead = {&s_stFrmBufParam.stBufHead,	&s_stFrmBufParam.stBufHead}
};

/*********************************** Code ************************************/

/* Open VDEC device, initialize all the channel config info and the ES buffer */
HI_S32 VDEC_OpenDevFile(HI_VOID)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    if (0 == s_stVdecAdpParam.u32InitCount)
    {
        if (-1 == s_stVdecAdpParam.s32DevFd)
        {
            /* Open dev */
            s_stVdecAdpParam.s32DevFd = open(s_stVdecAdpParam.pszDevPath, O_RDWR | O_NONBLOCK, 0);

            if (-1 == s_stVdecAdpParam.s32DevFd)
            {
                s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

                if (HI_SUCCESS != s32LockRet)
                {
                    HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
                }

                HI_FATAL_VDEC("Open video device err!\n");
                return HI_ERR_VDEC_NOT_OPEN;
            }
        }
    }

    s_stVdecAdpParam.u32InitCount++;
    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_CloseDevFile(HI_VOID)
{
    HI_S32 s32LockRet = HI_SUCCESS;
    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    if (1 == s_stVdecAdpParam.u32InitCount)
    {
        /* Free VFMW capability structure */
        if (s_stVdecAdpParam.stCap.pstSupport)
        {
            HI_FREE_VDEC(s_stVdecAdpParam.stCap.pstSupport);
            s_stVdecAdpParam.stCap.pstSupport = HI_NULL;
        }

        /* Close dev */
        if (-1 != s_stVdecAdpParam.s32DevFd)
        {
            close(s_stVdecAdpParam.s32DevFd);
            s_stVdecAdpParam.s32DevFd = -1;
        }
    }

    if (s_stVdecAdpParam.u32InitCount > 0)
    {
        s_stVdecAdpParam.u32InitCount--;
    }

    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

HI_CODEC_ID_E VDEC_UNF2CodecId(HI_UNF_VCODEC_TYPE_E enType)
{
    HI_U32 Index = 0;
    HI_S32 TargetIndex = -1;;

    while(1)
    {
        if (g_CodecTypeTable[Index][1] == (HI_U32)enType)
        {
            TargetIndex = Index;
            break;
        }

        if (g_CodecTypeTable[Index][1] == (HI_U32)HI_UNF_VCODEC_TYPE_BUTT)
        {
            break;
        }

        Index++;
    }

    if (TargetIndex >= 0)
    {
        return (HI_CODEC_ID_E)g_CodecTypeTable[TargetIndex][0];
    }
    else
    {
        return HI_CODEC_ID_NONE;
    }
}

HI_UNF_VCODEC_TYPE_E VDEC_CodecId2UNF(HI_CODEC_ID_E enCodecId)
{
    HI_U32 Index = 0;
    HI_S32 TargetIndex = -1;;

    while(1)
    {
        if (g_CodecTypeTable[Index][0] == (HI_U32)enCodecId)
        {
            TargetIndex = Index;
            break;
        }

        if (g_CodecTypeTable[Index][0] == (HI_U32)HI_CODEC_ID_BUTT)
        {
            break;
        }

        Index++;
    }

    if (TargetIndex >= 0)
    {
        return (HI_UNF_VCODEC_TYPE_E)g_CodecTypeTable[TargetIndex][1];
    }
    else
    {
        HI_INFO_VDEC("VDEC Unknow CODEC ID %d\n", enCodecId);

        return HI_UNF_VCODEC_TYPE_BUTT;
    }
}

static HI_CODEC_ID_E VDEC_VFMW_STD2CodecId(VID_STD_E enVidStd)
{
    switch (enVidStd)
    {
        case VFMW_H264:
            return HI_CODEC_ID_VIDEO_H264;

        case VFMW_VC1:
            return HI_CODEC_ID_VIDEO_VC1;

        case VFMW_MPEG4:
            return HI_CODEC_ID_VIDEO_MPEG4;

        case VFMW_MPEG2:
            return HI_CODEC_ID_VIDEO_MPEG2;

        case VFMW_H263:
            return HI_CODEC_ID_VIDEO_H263;

        case VFMW_DIVX3:
            return HI_CODEC_ID_VIDEO_DIVX3;

        case VFMW_AVS:
            return HI_CODEC_ID_VIDEO_AVS;

        case VFMW_JPEG:
            return HI_CODEC_ID_VIDEO_JPEG;

        case VFMW_REAL8:
            return HI_CODEC_ID_VIDEO_REAL8;

        case VFMW_REAL9:
            return HI_CODEC_ID_VIDEO_REAL9;

        case VFMW_VP6:
            return HI_CODEC_ID_VIDEO_VP6;

        case VFMW_VP6F:
            return HI_CODEC_ID_VIDEO_VP6F;

        case VFMW_VP6A:
            return HI_CODEC_ID_VIDEO_VP6A;

        case VFMW_VP8:
            return HI_CODEC_ID_VIDEO_VP8;

        case VFMW_SORENSON:
            return HI_CODEC_ID_VIDEO_SORENSON;

        case VFMW_RAW:
            return HI_CODEC_ID_VIDEO_RAW;

        default:
            return HI_CODEC_ID_NONE;
    }
}

static HI_S32 VDEC_VFMW_CheckAttr(const HI_UNF_VCODEC_ATTR_S *pstAttr)
{
    if (HI_NULL == pstAttr)
    {
        HI_ERR_VDEC("Bad priv attr!\n");
        return HI_FAILURE;
    }

    if (pstAttr->enType >= HI_UNF_VCODEC_TYPE_BUTT)
    {
        HI_ERR_VDEC("Unsupport protocol: %d!\n", pstAttr->enType);
        return HI_FAILURE;
    }

    if (pstAttr->enMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_VDEC("Unsupport mode: %d!\n", pstAttr->enMode);
        return HI_FAILURE;
    }

    if (pstAttr->u32ErrCover > 100)
    {
        HI_ERR_VDEC("Unsupport err_cover: %d!\n", pstAttr->u32ErrCover);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 VFMW_GetCap(HI_CODEC_CAP_S *pstCodecCap)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    HI_U32 i;
    HI_U32 u32Num = 0;
    VDEC_CAP_S stCap;
    HI_CODEC_SUPPORT_S *pstSupport;
    HI_CODEC_SUPPORT_S *pstTmp;

    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    /* If get capability the first time */
    if (HI_NULL == s_stVdecAdpParam.stCap.pstSupport)
    {
        /* Get VFMW capability */
        s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_GETCAP, &stCap);

        if (HI_SUCCESS != s32Ret)
        {
            s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
            }

            return HI_FAILURE;
        }

        /* Calc standard number */
        while (VFMW_END_RESERVED != stCap.SupportedStd[u32Num++])
        {
            ;
        }

        /* Allocate memory for HI_CODEC_SUPPORT_S */
        pstSupport = pstTmp = (HI_CODEC_SUPPORT_S *)HI_MALLOC_VDEC(sizeof(HI_CODEC_SUPPORT_S) * u32Num);

        if (HI_NULL == pstSupport)
        {
            s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

            if (HI_SUCCESS != s32LockRet)
            {
                HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
            }

            return HI_FAILURE;
        }

        s_stVdecAdpParam.stCap.pstSupport = pstSupport;

        /* Setup stCap.SupportedStd to s_stVdecAdpParam.stCap.pstSupport */
        for (i = 0; i < u32Num; i++)
        {
            pstSupport = pstTmp;
            pstSupport->u32Type = HI_CODEC_TYPE_DEC;
            pstSupport->enID = VDEC_VFMW_STD2CodecId(stCap.SupportedStd[i]);
            pstSupport->pstNext = pstSupport + 1;
            pstTmp = pstSupport + 1;
        }

        pstSupport->pstNext = HI_NULL;
    }

    *pstCodecCap = s_stVdecAdpParam.stCap;
    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

/* Create instance */
static HI_S32 VFMW_Create(HI_HANDLE *phInst, const HI_CODEC_OPENPARAM_S *pstParam)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    HI_UNF_AVPLAY_OPEN_OPT_S   *pstOpenParam;
    VDEC_CMD_ALLOC_S            stParam;
    VFMW_INST_S                *pstVFMWInst;
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    VDEC_CMD_USERDATABUF_S      stUsrData = {0};
    VDEC_CMD_BUF_USERADDR_S     stUserAddr = {0};
#endif

    if (HI_NULL == phInst)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = *phInst;

    /* If HI_NULL == pstParam, use default parameter */
    if (HI_NULL == pstParam)
    {
        stParam.stOpenOpt.enDecType  = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
        stParam.stOpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
        stParam.stOpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
    }
    /* Else, use pstParam */
    else
    {
        /* Check parameter */
        pstOpenParam = (HI_UNF_AVPLAY_OPEN_OPT_S *)pstParam->unParam.stVdec.pPlatformPriv;

        if (HI_NULL == pstOpenParam)
        {
            HI_ERR_VDEC("Bad open param!\n");
            return HI_ERR_CODEC_INVALIDPARAM;
        }

        if (pstOpenParam->enDecType >= HI_UNF_VCODEC_DEC_TYPE_BUTT)
        {
            HI_ERR_VDEC("Bad enDecType:%d!\n", pstOpenParam->enDecType);
            return HI_ERR_CODEC_INVALIDPARAM;
        }

        if (pstOpenParam->enCapLevel >= HI_UNF_VCODEC_CAP_LEVEL_BUTT)
        {
            HI_ERR_VDEC("Bad enH264CapLevel:%d!\n", pstOpenParam->enCapLevel);
            return HI_ERR_CODEC_INVALIDPARAM;
        }

        if (pstOpenParam->enProtocolLevel >= HI_UNF_VCODEC_PRTCL_LEVEL_BUTT)
        {
            HI_ERR_VDEC("Bad enProtocolLevel:%d!\n", pstOpenParam->enProtocolLevel);
            return HI_ERR_CODEC_INVALIDPARAM;
        }

        stParam.stOpenOpt.enDecType  = pstOpenParam->enDecType;
        stParam.stOpenOpt.enCapLevel = pstOpenParam->enCapLevel;
        stParam.stOpenOpt.enProtocolLevel = pstOpenParam->enProtocolLevel;
    }

    if (NULL != pstParam)
    {
#if (1 == HI_VDEC_DSD_SUPPORT)

        if ((HI_CODEC_ID_VIDEO_H263 != pstParam->enID) && \
            (HI_CODEC_ID_VIDEO_MJPEG != pstParam->enID) && \
            (HI_CODEC_ID_VIDEO_SORENSON != pstParam->enID))//l00273086
        {
            stParam.u32DSDEnable = 1;
        }
        else
        {
            stParam.u32DSDEnable = 0;
        }

#else
        stParam.u32DSDEnable = 0;
#endif
    }

    /* Ioctl UMAPC_VDEC_CHAN_ALLOC */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_ALLOC, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan alloc err:%x!\n", s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    /* Output new handle */
    memcpy(phInst, &stParam, sizeof(HI_HANDLE));

    if (HI_INVALID_HANDLE == *phInst)
    {
        HI_ERR_VDEC("hInst err!\n");
        return HI_ERR_CODEC_OPERATEFAIL;
    }

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    stUsrData.hHandle = VFMW_INST_HANDLE(*phInst);
    stUsrData.stBuf.u32Size = HI_VDEC_USERDATA_CC_BUFSIZE;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_USERDATAINITBUF, &stUsrData);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Init user data buf fail!\n");
        goto err;
    }

    /* Map MMZ */
    stUserAddr.u32UserAddr = (HI_U32)HI_MEM_Map(stUsrData.stBuf.u32PhyAddr, stUsrData.stBuf.u32Size);

    if (HI_NULL == stUserAddr.u32UserAddr)
    {
        HI_ERR_VDEC("HI_MMZ_Map fail.\n");
        goto err;
    }

    /* Told the user virtual to kernel */
    stUserAddr.hHandle = stUsrData.hHandle;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_USERDATASETBUFADDR, &stUserAddr);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("Set userdata addr fail.\n");
        goto err;
    }

    HI_INFO_VDEC("USERDATA MMZ %#x map to %#x, %dB\n",
                 stUsrData.stBuf.u32PhyAddr, stUserAddr.u32UserAddr, stUsrData.stBuf.u32Size);
#endif

    pstVFMWInst = (VFMW_INST_S *)HI_MALLOC_VDEC(sizeof(VFMW_INST_S));

    if (HI_NULL == pstVFMWInst)
    {
        HI_ERR_VDEC("No memory!\n");
        goto err;
    }

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    pstVFMWInst->pu8UserDataVirAddr = (HI_U8 *)stUserAddr.u32UserAddr;
#endif

    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    pstVFMWInst->hInst = *phInst;
    list_add_tail(&pstVFMWInst->stInstNode, &s_stVdecAdpParam.stInstHead);
    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    HI_INFO_VDEC("Alloc chan hInst=%d\n", *phInst);
    return HI_SUCCESS;

err:
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)

    if (0 != stUserAddr.u32UserAddr)
    {
        (HI_VOID)HI_MEM_Unmap((HI_VOID *)stUserAddr.u32UserAddr);
    }

#endif

    (HI_VOID)ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_FREE, &stParam);
    *phInst = HI_INVALID_HANDLE;
    return HI_ERR_CODEC_NOENOUGHRES;
}

/* Destroy instance */
static HI_S32 VFMW_Destroy(HI_HANDLE hInst)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    HI_HANDLE hHandle = VFMW_INST_HANDLE(hInst);
    VFMW_INST_S *pstVFMWInst = HI_NULL;

    /* Ioctl UMAPC_VDEC_CHAN_FREE */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_FREE, &hHandle);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d destroy err:%x!\n", hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    /* Find instance from list */
    VFMW_FIND_INST(hInst, pstVFMWInst);

    /* If find, delete it from list and free resource */
    if (pstVFMWInst)
    {
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)

        if (HI_NULL != pstVFMWInst->pu8UserDataVirAddr)
        {
            (HI_VOID)HI_MEM_Unmap(pstVFMWInst->pu8UserDataVirAddr);
        }

#endif

        list_del(&pstVFMWInst->stInstNode);
        HI_FREE_VDEC(pstVFMWInst);
    }

    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    HI_INFO_VDEC("Chan %d destroy.\n", hHandle);
    return HI_SUCCESS;
}

/* Start instance */
static HI_S32 VFMW_Start(HI_HANDLE hInst)
{
    HI_S32 s32Ret;
    HI_HANDLE hHandle = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_START */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_START, &hHandle);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d start err:%x!\n", hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d start.\n", hHandle);
    return HI_SUCCESS;
}

/* Stop instance */
static HI_S32 VFMW_Stop(HI_HANDLE hInst)
{
    HI_S32 s32Ret;
    HI_HANDLE hHandle = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_STOP */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STOP, &hHandle);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d stop err:%x!\n", hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d stop.\n", hHandle);
    return HI_SUCCESS;
}

/* Reset instance */
static HI_S32 VFMW_Reset(HI_HANDLE hInst)
{
    HI_S32 s32Ret;
    VDEC_CMD_RESET_S stParam;

    /* Set parameter */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.enType = VDEC_RESET_TYPE_ALL;

    /* Ioctl UMAPC_VDEC_CHAN_RESET */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_RESET, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d reset err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d reset.\n", stParam.hHandle);
    return HI_SUCCESS;
}

/* Set attribute */
static HI_S32 VFMW_SetAttr(HI_HANDLE hInst, const HI_CODEC_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    VDEC_CMD_ATTR_S stParam;
    HI_UNF_VCODEC_ATTR_S *pstPrivAttr;

    /* Check parameter */
    if (HI_NULL == pstAttr)
    {
        HI_ERR_VDEC("Bad attr!\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    pstPrivAttr = (HI_UNF_VCODEC_ATTR_S *)pstAttr->unAttr.stVdec.pPlatformPriv;

    if (HI_SUCCESS != VDEC_VFMW_CheckAttr(pstPrivAttr))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Copy parameter */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stAttr = *pstPrivAttr;

    /* priority will never be 0, but do not return error */
    if (0 == stParam.stAttr.u32Priority)
    {
        stParam.stAttr.u32Priority = 1;
    }

    /* Ioctl UMAPC_VDEC_CHAN_SETATTR */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETATTR, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetAttr err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SetAttr.\n", stParam.hHandle);
    return HI_SUCCESS;
}

/* Get attribute */
static HI_S32 VFMW_GetAttr(HI_HANDLE hInst, HI_CODEC_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;
    HI_UNF_VCODEC_ATTR_S *pstPrivAttr;
    VDEC_CMD_ATTR_S stParam;

    /* Check parameter */
    if (HI_NULL == pstAttr)
    {
        HI_ERR_VDEC("Bad attr!\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_GETATTR */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_GETATTR, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GetAttr err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    pstPrivAttr = (HI_UNF_VCODEC_ATTR_S *)pstAttr->unAttr.stVdec.pPlatformPriv;
    *pstPrivAttr = stParam.stAttr;
    //pstPrivAttr->pCodecContext = HI_NULL;
    pstAttr->enID = VDEC_UNF2CodecId(stParam.stAttr.enType);
    HI_INFO_VDEC("Chan %d GetAttr.\n", stParam.hHandle);
    return HI_SUCCESS;
}

/* Get stream info */
static HI_S32 VFMW_GetStreamInfo(HI_HANDLE hInst, HI_CODEC_STREAMINFO_S *pstStreamInfo)
{
    HI_S32 s32Ret;
    VDEC_CMD_STREAM_INFO_S stParam;

    if (HI_NULL == pstStreamInfo)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Ioctl UMAPC_VDEC_CHAN_STREAMINFO */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STREAMINFO, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GetStreamInfo err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    pstStreamInfo->stVideo.enCodecID = VDEC_UNF2CodecId(stParam.stInfo.enVCodecType);
    pstStreamInfo->stVideo.enSubStandard = (HI_CODEC_VIDEO_SUB_STANDARD_E)stParam.stInfo.enSubStandard;
    pstStreamInfo->stVideo.u32SubVersion = stParam.stInfo.u32SubVersion;
    pstStreamInfo->stVideo.u32Profile = stParam.stInfo.u32Profile;
    pstStreamInfo->stVideo.u32Level = stParam.stInfo.u32Level;
    pstStreamInfo->stVideo.enDisplayNorm = (HI_CODEC_ENC_FMT_E)stParam.stInfo.enDisplayNorm;
    // pstStreamInfo->stVideo.bProgressive = stParam.stInfo.bProgressive;
    pstStreamInfo->stVideo.bProgressive = (stParam.stInfo.enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE) ? (HI_TRUE) : (HI_FALSE);
    //pstStreamInfo->stVideo.u32AspectWidth = stParam.stInfo.u32AspectWidth;
    //pstStreamInfo->stVideo.u32AspectHeight = stParam.stInfo.u32AspectHeight;
    pstStreamInfo->stVideo.enAspectRatio = stParam.stInfo.enAspectRatio;
    pstStreamInfo->stVideo.u32bps = stParam.stInfo.u32bps;
    pstStreamInfo->stVideo.u32FrameRateInt = stParam.stInfo.u32fpsInteger;
    pstStreamInfo->stVideo.u32FrameRateDec = stParam.stInfo.u32fpsDecimal;
    pstStreamInfo->stVideo.u32Width  = stParam.stInfo.u32Width;
    pstStreamInfo->stVideo.u32Height = stParam.stInfo.u32Height;
    pstStreamInfo->stVideo.u32DisplayWidth   = stParam.stInfo.u32DisplayWidth;
    pstStreamInfo->stVideo.u32DisplayHeight  = stParam.stInfo.u32DisplayHeight;
    pstStreamInfo->stVideo.u32DisplayCenterX = stParam.stInfo.u32DisplayCenterX;
    pstStreamInfo->stVideo.u32DisplayCenterY = stParam.stInfo.u32DisplayCenterY;
    HI_INFO_VDEC("Chan %d GetStreamInfo OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_CheckEvt(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_EVENT_S stParam;
    VDEC_EVENT_S *pstNewEvent = (VDEC_EVENT_S *)pParam;

    if (HI_NULL == pstNewEvent)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Ioctl UMAPC_VDEC_CHAN_CHECKEVT */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_CHECKEVT, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d CheckEvt err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *pstNewEvent = stParam.stEvent;
    HI_INFO_VDEC("Chan %d CheckEvt OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_ReadNewFrame(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_FRAME_S stParam;
    HI_UNF_VO_FRAMEINFO_S *pstNewFrame = (HI_UNF_VO_FRAMEINFO_S *)pParam;

    if (HI_NULL == pstNewFrame)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Ioctl UMAPC_VDEC_CHAN_EVNET_NEWFRAME */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_EVNET_NEWFRAME, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d ReadNewFrame err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *pstNewFrame = stParam.stFrame;
    HI_INFO_VDEC("Chan %d ReadNewFrame OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_RecvUsrData(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    VFMW_INST_S *pstVFMWInst = HI_NULL;
    VDEC_CMD_USERDATA_S stParam;
    HI_UNF_VIDEO_USERDATA_S *pstUsrData = (HI_UNF_VIDEO_USERDATA_S *)pParam;

    if (HI_NULL == pstUsrData)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    s32LockRet = VDEC_LOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    VFMW_FIND_INST(hInst, pstVFMWInst);
    s32LockRet = VDEC_UNLOCK(s_stVdecAdpParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    if (pstVFMWInst)
    {
        stParam.hHandle = VFMW_INST_HANDLE(hInst);
        stParam.stUserData.pu8Buffer = pstVFMWInst->au8UsrData;

        /* Ioctl UMAPC_VDEC_CHAN_USRDATA */
        s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_USRDATA, &stParam);

        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_VDEC("Chan %d RecvUsrData err:%x!\n", stParam.hHandle, s32Ret);
            return HI_ERR_CODEC_INVALIDPARAM;
        }

        *pstUsrData = stParam.stUserData;
        pstUsrData->pu8Buffer = pstVFMWInst->au8UsrData;
        HI_INFO_VDEC("Chan %d RlsFrm OK\n", stParam.hHandle);
        return HI_SUCCESS;
    }

    return HI_ERR_CODEC_INVALIDPARAM;
}

static HI_S32 VFMW_SetFrmRate(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_FRAME_RATE_S stParam;
    const HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate = (HI_UNF_AVPLAY_FRAMERATE_PARAM_S *)pParam;

    if (HI_NULL == pstFrmRate)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    if ((pstFrmRate->enFrmRateType >= HI_UNF_AVPLAY_FRMRATE_TYPE_BUTT) ||
            (pstFrmRate->stSetFrameRate.u32fpsInteger > 60) ||
            (pstFrmRate->stSetFrameRate.u32fpsDecimal >= 1000))
    {
        HI_ERR_VDEC("FPS too large.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stFrameRate = *pstFrmRate;

    /* Ioctl UMAPC_VDEC_CHAN_SETFRMRATE */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETFRMRATE, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetFrmRate err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SetFrmRate OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_GetFrmRate(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_FRAME_RATE_S stParam;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate = (HI_UNF_AVPLAY_FRAMERATE_PARAM_S *)pParam;

    if (HI_NULL == pstFrmRate)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Ioctl UMAPC_VDEC_CHAN_GETFRMRATE */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_GETFRMRATE, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GetFrmRate err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *pstFrmRate = stParam.stFrameRate;
    HI_INFO_VDEC("Chan %d GetFrmRate OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_GetStatusInfo(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_STATUS_S stParam;
    VDEC_STATUSINFO_S* pstStatusInfo = (VDEC_STATUSINFO_S *)pParam;

    if (HI_NULL == pstStatusInfo)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Ioctl UMAPC_VDEC_CHAN_STATUSINFO */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STATUSINFO, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GetStatusInfo err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *pstStatusInfo = stParam.stStatus;
    HI_INFO_VDEC("Chan %d GetStatusInfo OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_SetEosFlag(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    HI_U32 u32Arg;

    u32Arg = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_SETEOSFLAG */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETEOSFLAG, &u32Arg);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetEosFlag err:%x! pParam %p\n", u32Arg, s32Ret, pParam);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SetEosFlag OK\n", u32Arg);
    return HI_SUCCESS;
}

static HI_S32 VFMW_IFrameDecode(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_IFRAME_DEC_S stParam;
    const VFMW_IFRAME_PARAM_S* pstParam = (VFMW_IFRAME_PARAM_S *)pParam;

    if ((HI_NULL == pstParam)
     || (HI_NULL == pstParam->pstIFrameStream->pu8Addr)
     || (HI_NULL == pstParam->pstVoFrameInfo))
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* Check type */
    if ((pstParam->pstIFrameStream->enType >= HI_UNF_VCODEC_TYPE_BUTT))
    {
        HI_ERR_VDEC("Unsupport protocol %d!\n", pstParam->pstIFrameStream->enType);
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stIFrame = *(pstParam->pstIFrameStream);
    stParam.bCapture = pstParam->bCapture;

    /* Ioctl UMAPC_VDEC_CHAN_IFRMDECODE */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_IFRMDECODE, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d IFrameDecode err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    /* Save data */
    *(pstParam->pstVoFrameInfo) = stParam.stVoFrameInfo;
    HI_INFO_VDEC("Chan %d IFrameDecode OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_IFrameRelease(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_IFRAME_RLS_S stParam;
    const HI_UNF_VO_FRAMEINFO_S* pstParam = (HI_UNF_VO_FRAMEINFO_S *)pParam;

    if (HI_NULL == pstParam)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stVoFrameInfo = *pstParam;

    /* Ioctl UMAPC_VDEC_CHAN_IFRMRELEASE */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_IFRMRELEASE, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d IFrameRelease err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d IFrameRelease OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_RecvFrm(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_VO_FRAME_S stParam;
    HI_UNF_VO_FRAMEINFO_S* pstFrameInfo = (HI_UNF_VO_FRAMEINFO_S *)pParam;

    if (HI_NULL == pstFrameInfo)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_RCVFRM */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_RCVFRM, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d RecvFrm err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *pstFrameInfo = stParam.stFrame;
    HI_INFO_VDEC("Chan %d RecvFrm OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_RlsFrm(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_VO_FRAME_S stParam;
    const HI_UNF_VO_FRAMEINFO_S* pstFrameInfo = (HI_UNF_VO_FRAMEINFO_S *)pParam;

    if (HI_NULL == pstFrameInfo)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stFrame = *pstFrameInfo;

    /* Ioctl UMAPC_VDEC_CHAN_RLSFRM */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_RLSFRM, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d RlsFrm err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d RlsFrm OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_AttachBuf(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_ATTACH_BUF_S stParam;
    const VFMW_STREAMBUF_S* pStreamBuf = (VFMW_STREAMBUF_S *)pParam;

    if (HI_NULL == pStreamBuf)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    /* The parameters are: Instance handle\buffer size\demux handle\stream buffer handle */
    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.u32BufSize = pStreamBuf->u32BufSize;
    stParam.hDmxVidChn = pStreamBuf->hDmxVidChn;
    stParam.hStrmBuf = pStreamBuf->hStrmBuf;

    /* Ioctl UMAPC_VDEC_CHAN_ATTACHBUF */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_ATTACHBUF, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d AttachStreamBuf err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d AttachStreamBuf OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_DetachBuf(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    HI_U32 u32Arg;

    u32Arg = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_DETACHBUF */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_DETACHBUF, &u32Arg);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d DetachStreamBuf err:%x!, pParam %p\n", u32Arg, s32Ret, pParam);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d DetachStreamBuf OK\n", u32Arg);
    return HI_SUCCESS;
}

static HI_S32 VFMW_DiscardFrame(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_DISCARD_FRAME_S stParam;
    const VDEC_DISCARD_FRAME_S* pDiscardFrame = (VDEC_DISCARD_FRAME_S *)pParam;

    if ((HI_NULL == pDiscardFrame) || (pDiscardFrame->enMode >= VDEC_DISCARD_BUTT))
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stDiscardOpt = *pDiscardFrame;

    /* Ioctl UMAPC_VDEC_CHAN_DISCARDFRM */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_DISCARDFRM, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d DiscardFrame err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d DiscardFrame OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
static HI_S32 VFMW_AcqUserData(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_USERDATA_ACQMODE_S stParam;
    VFMW_USERDATA_S* pUserData = (VFMW_USERDATA_S *)pParam;

    if (HI_NULL == pUserData)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);

    /* Ioctl UMAPC_VDEC_CHAN_ACQUSERDATA */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_ACQUSERDATA, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Chan %d AcqUserData err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    *(pUserData->pstData) = stParam.stUserData;
    *(pUserData->penType) = stParam.enType;
    HI_INFO_VDEC("Chan %d AcqUserData OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_RlsUserData(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_USERDATA_S stParam;
    const HI_UNF_VIDEO_USERDATA_S* pUserData = (HI_UNF_VIDEO_USERDATA_S *)pParam;

    if (HI_NULL == pUserData)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stUserData = *pUserData;

    /* Ioctl UMAPC_VDEC_CHAN_RLSUSERDATA */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_RLSUSERDATA, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d RlsUserData err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d RlsUserData OK\n", stParam.hHandle);
    return HI_SUCCESS;
}
#endif

static HI_S32 VFMW_DropStream(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
	VDEC_CMD_SEEK_PTS_S stParam;
    VFMW_SEEKPTS_PARAM_S* pstVfmwSeekPts = (VFMW_SEEKPTS_PARAM_S *)pParam;
    
    if (HI_NULL == pstVfmwSeekPts)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.u32Gap = pstVfmwSeekPts->u32Gap;
    stParam.pu32SeekPts = pstVfmwSeekPts->pu32SeekPts;
    /* Ioctl UMAPC_VDEC_CHAN_SEEKPTS */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SEEKPTS, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SeekPts err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SeekPts OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_GetInfo(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_STATUSINFO_S stStat;
    HI_UNF_AVPLAY_VDEC_INFO_S* pVdecInfo = (HI_UNF_AVPLAY_VDEC_INFO_S *)pParam;
    
    if (HI_NULL == pVdecInfo)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    s32Ret = VFMW_GetStatusInfo(hInst, &stStat);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    pVdecInfo->u32DispFrmBufNum = stStat.u32VfmwTotalDispFrmNum;
    pVdecInfo->u32FieldFlag = stStat.u32FieldFlag;
    pVdecInfo->stDecFrmRate = stStat.stVfmwFrameRate;
    pVdecInfo->u32UndecFrmNum = 0;

    HI_INFO_VDEC("Chan %d GetInfo OK\n", hInst);
    return HI_SUCCESS;
}

static HI_S32 VFMW_SetTPlayOpt(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_TRICKMODE_OPT_S stParam;
    HI_UNF_AVPLAY_TPLAY_OPT_S* pTplayOpt = (HI_UNF_AVPLAY_TPLAY_OPT_S *)pParam;

    if (HI_NULL == pTplayOpt)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stTPlayOpt = *pTplayOpt;

    /* Ioctl UMAPC_VDEC_CHAN_SETTRICKMODE */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETTRICKMODE, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetTPlayOpt err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SetTPlayOpt OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

static HI_S32 VFMW_SetCtrlInfo(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
    VDEC_CMD_SET_CTRL_INFO_S stParam;
    HI_UNF_AVPLAY_CONTROL_INFO_S* pCtrlInfo = (HI_UNF_AVPLAY_CONTROL_INFO_S *)pParam;

    if (HI_NULL == pCtrlInfo)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
    stParam.stCtrlInfo = *pCtrlInfo;

    /* Ioctl UMAPC_VDEC_CHAN_SETCTRLINFO */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETCTRLINFO, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetCtrlInfo err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }

    HI_INFO_VDEC("Chan %d SetCtrlInfo OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

HI_S32 VFMW_SetProgressive(HI_HANDLE hInst, HI_VOID *pParam)
{
    HI_S32 s32Ret;
	VDEC_CMD_SET_PROGRESSIVE_S stParam;
    HI_BOOL *pIsProgressive = (HI_BOOL *)pParam;
        
    if (HI_NULL == pIsProgressive)
    {
        return HI_ERR_CODEC_INVALIDPARAM;
    }

    stParam.hHandle = VFMW_INST_HANDLE(hInst);
	stParam.bProgressive = *pIsProgressive;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_PROGRSSIVE, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d SetProgressive err:%x!\n", stParam.hHandle, s32Ret);
        return HI_ERR_CODEC_OPERATEFAIL;
    }
    HI_INFO_VDEC("Chan %d SetProgressive OK\n", stParam.hHandle);
    return HI_SUCCESS;

}



static const VFMW_CTRL_CMD_NODE g_VfmwCtrlTable[] = 
{
    {VFMW_CMD_CHECKEVT,                 VFMW_CheckEvt},
    {VFMW_CMD_READNEWFRAME,             VFMW_ReadNewFrame},
    {VFMW_CMD_READUSRDATA,              VFMW_RecvUsrData},
    {VFMW_CMD_SETFRAMERATE,             VFMW_SetFrmRate},
    {VFMW_CMD_GETFRAMERATE,             VFMW_GetFrmRate},
    {VFMW_CMD_GETSTATUSINFO,            VFMW_GetStatusInfo},
    {VFMW_CMD_SETEOSFLAG,               VFMW_SetEosFlag},
    {VFMW_CMD_IFRAMEDECODE,             VFMW_IFrameDecode},
    {VFMW_CMD_IFRAMERELEASE,            VFMW_IFrameRelease},
    {VFMW_CMD_RECEIVEFRAME,             VFMW_RecvFrm},
    {VFMW_CMD_RELEASEFRAME,             VFMW_RlsFrm},
    {VFMW_CMD_ATTACHBUF,                VFMW_AttachBuf},
    {VFMW_CMD_DETACHBUF,                VFMW_DetachBuf},
    {VFMW_CMD_DISCARDFRAME,             VFMW_DiscardFrame},
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
    {VFMW_CMD_ACQUSERDATA,              VFMW_AcqUserData},
    {VFMW_CMD_RLSUSERDATA,              VFMW_RlsUserData},
#endif
    {VFMW_CMD_DROPSTREAM,               VFMW_DropStream},
    {VFMW_CMD_GETINFO,                  VFMW_GetInfo},
    {VFMW_CMD_SETTPLAYOPT,              VFMW_SetTPlayOpt},
    {VFMW_CMD_SETCTRLINFO,              VFMW_SetCtrlInfo},
    {VFMW_CMD_SET_PROGRESSIVE,          VFMW_SetProgressive},
    
    {VFMW_CMD_BUTT, HI_NULL},
};

static HI_S32 VFMW_Control(HI_HANDLE hInst, HI_U32 u32CMD, HI_VOID * pParam)
{
    HI_U32 Index = 0;
    FN_VFMW_CTRL_HANDLER pTargetHandler = HI_NULL;
    
    while(1)
    {
        if (g_VfmwCtrlTable[Index].CmdID == VFMW_CMD_BUTT || g_VfmwCtrlTable[Index].pHandler == HI_NULL)
        {
            break;
        }

        if (u32CMD == g_VfmwCtrlTable[Index].CmdID)
        {
            pTargetHandler = g_VfmwCtrlTable[Index].pHandler;
            break;
        }

        Index++;
    }

    if (pTargetHandler != HI_NULL)
    {
        return pTargetHandler(hInst, pParam);
    }
    else
    {
        HI_ERR_VDEC("%s unsupport command %d.\n", __func__, u32CMD);
        
        return HI_ERR_CODEC_UNSUPPORT;
    }
}


HI_CODEC_S *VDEC_VFMW_Codec(HI_VOID)
{
    return &s_stCodec;
}

HI_S32 VDEC_AllocHandle(HI_HANDLE *phHandle)
{
    HI_S32 s32Ret;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;

    if (HI_NULL == phHandle)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_ALLOCHANDLE, &hHandle);

    if (HI_SUCCESS == s32Ret)
    {
        *phHandle = hHandle;
    }

    return s32Ret;
}

HI_S32 VDEC_FreeHandle(HI_HANDLE hHandle)
{
    return ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_FREEHANDLE, &hHandle);
}

HI_S32 VDEC_CreateStreamBuf(HI_HANDLE *phBuf, HI_U32 u32BufSize)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    VDEC_CMD_CREATEBUF_S stBuf;
    VDEC_CMD_BUF_USERADDR_S stUserAddr;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;

    if ((HI_NULL == phBuf) || (0 == u32BufSize))
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Alloc instance memory */
    pstBufInst = (STREAM_BUF_INST_S *)HI_MALLOC_VDEC(sizeof(STREAM_BUF_INST_S));

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_MALLOC_FAILED;
    }

    memset(pstBufInst, 0, sizeof(STREAM_BUF_INST_S));
    pstBufInst->u32Size = u32BufSize;
    pstBufInst->bGetPutFlag = HI_FALSE;
#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    pstBufInst->bRecvRlsFlag = HI_FALSE;
#endif

    /* Create buffer manager */
    stBuf.u32Size = u32BufSize;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CREATE_ESBUF, &stBuf);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("UMAPC_VDEC_CREATE_ESBUF fail.\n");
        HI_FREE_VDEC(pstBufInst);
        return s32Ret;
    }

    /* Map MMZ */
    stUserAddr.u32UserAddr = (HI_U32)HI_MEM_Map(stBuf.u32PhyAddr, u32BufSize);

    if (HI_NULL == stUserAddr.u32UserAddr)
    {
        HI_ERR_VDEC("HI_MMZ_Map fail.\n");
        (HI_VOID)ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_DESTROY_ESBUF, &stBuf.hHandle);
        HI_FREE_VDEC(pstBufInst);
        return s32Ret;
    }

    pstBufInst->pu8MMZVirAddr = (HI_U8 *)stUserAddr.u32UserAddr;

    /* Told the user virtual to kernel */
    stUserAddr.hHandle = stBuf.hHandle;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_SETUSERADDR, &stUserAddr);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("UMAPC_VDEC_SETUSERADDR fail.\n");
        (HI_VOID)HI_MEM_Unmap(pstBufInst->pu8MMZVirAddr);
        (HI_VOID)ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_DESTROY_ESBUF, &stBuf.hHandle);
        HI_FREE_VDEC(pstBufInst);
        return s32Ret;
    }

    /* Save buffer manager handle */
    pstBufInst->hBuf = *phBuf = stBuf.hHandle;

    /* Add instance to list */
    s32LockRet = VDEC_LOCK(s_stStrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    list_add_tail(&pstBufInst->stBufNode, &s_stStrmBufParam.stBufHead);
    s32LockRet = VDEC_UNLOCK(s_stStrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return s32Ret;
}

HI_S32 VDEC_DestroyStreamBuf(HI_HANDLE hBuf)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32LockRet = HI_SUCCESS;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Free buffer memory */
    if (HI_NULL != pstBufInst->pu8MMZVirAddr)
    {
        s32Ret = HI_MEM_Unmap(pstBufInst->pu8MMZVirAddr);
    }

    s32Ret |= ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_DESTROY_ESBUF, &hBuf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Free memory err.\n");
    }

    /* Delete node and free memory */
    s32LockRet = VDEC_LOCK(s_stStrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    list_del(&pstBufInst->stBufNode);
    HI_FREE_VDEC(pstBufInst);
    s32LockRet = VDEC_UNLOCK(s_stStrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_GetStreamBuf(HI_HANDLE hBuf, HI_U32 u32RequestSize, VDEC_ES_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_BUF_S stBufParam = {0};

    if (HI_NULL == pstBuf)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* If get but not put, return last address */
    if (pstBufInst->bGetPutFlag)
    {
        memcpy(pstBuf, &(pstBufInst->stLastGet), sizeof(VDEC_ES_BUF_S));
        return HI_SUCCESS;
    }

    /* Get */
    stBufParam.hHandle = hBuf;
    stBufParam.stBuf.u32BufSize = u32RequestSize;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_GETBUF, &stBufParam);

    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    /* Save */
    pstBufInst->stLastGet   = *pstBuf = stBufParam.stBuf;
    pstBufInst->bGetPutFlag = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 VDEC_PutStreamBuf(HI_HANDLE hBuf, const VDEC_ES_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_BUF_S stBufParam;

    if ((HI_NULL == pstBuf) || (HI_NULL == ((HI_VOID *)pstBuf->pu8Addr)))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Support put continuously */
    if (!pstBufInst->bGetPutFlag)
    {
        return HI_SUCCESS;
    }

    /* Put */
    stBufParam.hHandle = hBuf;
    stBufParam.stBuf = *pstBuf;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_PUTBUF, &stBufParam);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("Put err\n");
        return HI_FAILURE;
    }

    /* Set flag */
    pstBufInst->bGetPutFlag = HI_FALSE;
    return HI_SUCCESS;
}

HI_S32 VDEC_ResetStreamBuf(HI_HANDLE hBuf)
{
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    pstBufInst->bGetPutFlag = HI_FALSE;
    memset(&(pstBufInst->stLastGet), 0, sizeof(pstBufInst->stLastGet));

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
    pstBufInst->bRecvRlsFlag = HI_FALSE;
    memset(&(pstBufInst->stLastRecv), 0, sizeof(pstBufInst->stLastRecv));
#endif

    return ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_RESET_ESBUF, &hBuf);
}

HI_S32 VDEC_GetStreamBufStatus(HI_HANDLE hBuf, HI_DRV_VDEC_STREAMBUF_STATUS_S *pstStatus)
{
    HI_S32 s32Ret;
    VDEC_CMD_BUF_STATUS_S stParam;

    stParam.hHandle = hBuf;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_GET_ESBUF_STATUS, &stParam);

    if (HI_SUCCESS == s32Ret)
    {
        *pstStatus = stParam.stStatus;
    }

    return s32Ret;
}

#if (HI_VDEC_REG_CODEC_SUPPORT == 1) || (HI_VDEC_MJPEG_SUPPORT == 1)
HI_S32 VDEC_RecvStream(HI_HANDLE hBuf, VDEC_ES_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_BUF_S stParam;

    if (HI_NULL == pstBuf)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* If request but not release, return last address */
    if (HI_TRUE == pstBufInst->bRecvRlsFlag)
    {
        memcpy((HI_VOID *)pstBuf, (const HI_VOID *)&pstBufInst->stLastRecv, sizeof(VDEC_ES_BUF_S));
        return HI_SUCCESS;
    }

    /* Request */
    stParam.hHandle = hBuf;
    memset((HI_VOID *) & (stParam.stBuf), 0, sizeof(VDEC_ES_BUF_S));
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_RCVBUF, &stParam);

    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    /* Save */
    pstBufInst->stLastRecv   = *pstBuf = stParam.stBuf;
    pstBufInst->bRecvRlsFlag = HI_TRUE;
    return HI_SUCCESS;
}

HI_S32 VDEC_RlsStream(HI_HANDLE hBuf, const VDEC_ES_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    STREAM_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_BUF_S stParam;

    if ((HI_NULL == pstBuf) || (HI_NULL == ((HI_VOID *)pstBuf->pu8Addr)))
    {
        HI_ERR_VDEC("Bad param!\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    STRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Support release continuously */
    if (!pstBufInst->bRecvRlsFlag)
    {
        return HI_SUCCESS;
    }

    /* Support release 0 */
    if (0 == pstBuf->u32BufSize)
    {
        return HI_SUCCESS;
    }

    /* Release */
    stParam.hHandle = hBuf;
    stParam.stBuf = *pstBuf;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_RLSBUF, &stParam);

    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_VDEC("Rls err\n");
        return HI_FAILURE;
    }

    /* Set flag */
    pstBufInst->bRecvRlsFlag = HI_FALSE;
    return HI_SUCCESS;
}

HI_S32 VDEC_CreateFrameBuf(HI_HANDLE *phBuf)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    FRAME_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_ALLOC_S stParam;
    VDEC_CMD_ATTR_S stFrmBufAttr = {0};

    if (HI_NULL == phBuf)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Alloc instance memory */
    pstBufInst = (FRAME_BUF_INST_S *)HI_MALLOC_VDEC(sizeof(FRAME_BUF_INST_S));

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_MALLOC_FAILED;
    }

    memset(pstBufInst, 0, sizeof(FRAME_BUF_INST_S));

    stParam.hHandle = *phBuf;
    stParam.stOpenOpt.enDecType  = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
    stParam.stOpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
    stParam.stOpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;

    /* Ioctl UMAPC_VDEC_CHAN_ALLOC */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_ALLOC, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan alloc err:%x!\n", s32Ret);
        HI_FREE_VDEC(pstBufInst);
        return HI_ERR_VDEC_CREATECH_FAILED;
    }

    /* Output handle */
    memcpy(&stFrmBufAttr.hHandle, &stParam, sizeof(HI_HANDLE));

    if (HI_INVALID_HANDLE == stFrmBufAttr.hHandle)
    {
        HI_ERR_VDEC("hBuf err!\n");
        HI_FREE_VDEC(pstBufInst);
        return HI_ERR_VDEC_CREATECH_FAILED;
    }

    /* Config type MJPEG, vfmw channel will be a frame buffer */
    stFrmBufAttr.stAttr.enType = HI_UNF_VCODEC_TYPE_MJPEG;
    stFrmBufAttr.stAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    stFrmBufAttr.stAttr.u32ErrCover = 100;
    stFrmBufAttr.stAttr.u32Priority = 15;
    stFrmBufAttr.stAttr.bOrderOutput = HI_TRUE;
    stFrmBufAttr.stAttr.s32CtrlOptions = 0;
    //stFrmBufAttr.stAttr.pCodecContext = HI_NULL;

    /* Ioctl UMAPC_VDEC_CHAN_SETATTR */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_SETATTR, &stFrmBufAttr);
    s32Ret |= ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_START, &stFrmBufAttr.hHandle);

    if (HI_SUCCESS != s32Ret)
    {
        (HI_VOID)ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_FREE, &stFrmBufAttr.hHandle);
        HI_FREE_VDEC(pstBufInst);
        HI_ERR_VDEC("Chan %d SetAttr err:%x!\n", stFrmBufAttr.hHandle, s32Ret);
        return HI_ERR_VDEC_SETATTR_FAILED;
    }

    /* Save handle */
    pstBufInst->hBuf = *phBuf = stFrmBufAttr.hHandle;

    /* Add instance to list */
    s32LockRet = VDEC_LOCK(s_stFrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    list_add_tail(&pstBufInst->stBufNode, &s_stFrmBufParam.stBufHead);

    s32LockRet = VDEC_UNLOCK(s_stFrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_DestroyFrameBuf(HI_HANDLE hBuf)
{
    HI_S32 s32Ret;
    HI_S32 s32LockRet = HI_SUCCESS;
    FRAME_BUF_INST_S *pstBufInst = HI_NULL;

    FRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STOP, &hBuf);
    s32Ret |= ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_FREE, &hBuf);

    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Free channel err.\n");
    }

    /* Delete node and free memory */
    s32LockRet = VDEC_LOCK(s_stFrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_LOCK failed!!\n", __func__, __LINE__);
    }

    list_del(&pstBufInst->stBufNode);
    HI_FREE_VDEC(pstBufInst);

    s32LockRet = VDEC_UNLOCK(s_stFrmBufParam.stMutex);

    if (HI_SUCCESS != s32LockRet)
    {
        HI_ERR_VDEC("[%s][%d] VDEC_UNLOCK failed!!\n", __func__, __LINE__);
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_GetFrameBuf(HI_HANDLE hBuf, HI_DRV_VDEC_FRAME_BUF_S *pstBuf)
{
    HI_S32 s32Ret;
    FRAME_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_GET_FRAME_S stParam;

    if (HI_NULL == pstBuf)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    FRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* If get but not put, return last address */
    if (pstBufInst->bGetPutFlag)
    {
        memcpy(pstBuf, &(pstBufInst->stLastGet), sizeof(HI_DRV_VDEC_FRAME_BUF_S));
        return HI_SUCCESS;
    }

    stParam.hHandle = hBuf;

    /* Ioctl UMAPC_VDEC_CHAN_GETFRM */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_GETFRM, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_VDEC("Frame buffer %d GET err:%x!\n", stParam.hHandle, s32Ret);
        return HI_FAILURE;
    }

    /* Save */
    pstBufInst->stLastGet   = *pstBuf = stParam.stFrame;
    pstBufInst->bGetPutFlag = HI_TRUE;

    HI_INFO_VDEC("Frame buffer %d GET OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

HI_S32 VDEC_PutFrameBuf(HI_HANDLE hBuf, const HI_DRV_VDEC_USR_FRAME_S *pstBuf)
{
    HI_S32 s32Ret;
    FRAME_BUF_INST_S *pstBufInst = HI_NULL;
    VDEC_CMD_PUT_FRAME_S stParam;

    if (HI_NULL == pstBuf)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    FRMBUF_FIND_INST(hBuf, pstBufInst);

    if (HI_NULL == pstBufInst)
    {
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Support put continuously */
    if (!pstBufInst->bGetPutFlag)
    {
        return HI_SUCCESS;
    }

    stParam.hHandle = hBuf;
    stParam.stFrame = *pstBuf;

    /* Ioctl UMAPC_VDEC_CHAN_PUTFRM */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_PUTFRM, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Frame buffer %d PUT err:%x!\n", stParam.hHandle, s32Ret);
        return HI_FAILURE;
    }

    /* Save */
    pstBufInst->bGetPutFlag = HI_FALSE;

    HI_INFO_VDEC("Frame buffer %d PUT OK\n", stParam.hHandle);
    return HI_SUCCESS;
}

HI_S32 VDEC_ResetFrameBuf(HI_HANDLE hBuf)
{
    HI_S32 s32Ret;
    VDEC_CMD_RESET_S stParam;

    /* Set parameter */
    stParam.hHandle = hBuf;
    stParam.enType = VDEC_RESET_TYPE_ALL;

    /* Ioctl UMAPC_VDEC_CHAN_RESET */
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STOP, &hBuf);
    s32Ret |= ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_RESET, &stParam);
    s32Ret |= ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_START, &hBuf);
    return s32Ret;
}

HI_S32 VDEC_GetFrameBufStatus(HI_HANDLE hBuf, HI_DRV_VDEC_FRAMEBUF_STATUS_S *pstStatus)
{
    HI_S32 s32Ret;
    VDEC_CMD_STATUS_S stParam;

    if (HI_NULL == pstStatus)
    {
        HI_ERR_VDEC("Bad param.\n");
        return HI_ERR_VDEC_INVALID_PARA;
    }

    /* Ioctl UMAPC_VDEC_CHAN_STATUSINFO */
    stParam.hHandle = hBuf;
    s32Ret = ioctl(s_stVdecAdpParam.s32DevFd, UMAPC_VDEC_CHAN_STATUSINFO, &stParam);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_VDEC("Chan %d GetStatusInfo err:%x!\n", stParam.hHandle, s32Ret);
        return HI_FAILURE;
    }

    pstStatus->u32TotalDecFrameNum = stParam.stStatus.u32TotalDecFrmNum;
    pstStatus->u32FrameBufNum = stParam.stStatus.u32FrameBufNum;
    return HI_SUCCESS;
}

HI_S32 VDEC_GetNewFrm(HI_HANDLE hBuf, HI_UNF_VO_FRAMEINFO_S *pstFrm)
{
    if (HI_SUCCESS != VFMW_ReadNewFrame(hBuf, pstFrm))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_SetFrmRate(HI_HANDLE hBuf, const HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate)
{
    if (HI_SUCCESS != VFMW_SetFrmRate(hBuf, (HI_VOID *)pstFrmRate))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 VDEC_GetFrmRate(HI_HANDLE hBuf, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate)
{
    if (HI_SUCCESS != VFMW_GetFrmRate(hBuf, pstFrmRate))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
#endif


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */
