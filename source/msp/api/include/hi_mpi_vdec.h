
/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name             :   hi_mpi_vdec.h
  Version               :   Initial Draft
  Author                :   Hisilicon multimedia software group
  Created               :   2006/06/12
  Last Modified         :
  Description           :
  Function List         :
  History               :
  1.Date                :   2006/06/12
    Author              :
Modification            :   Created file
******************************************************************************/

/******************************* Include Files *******************************/

#ifndef  __HI_MPI_VDEC_H__
#define  __HI_MPI_VDEC_H__

#include "hi_unf_avplay.h"
#include "hi_video_codec.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

/****************************** Macro Definition *****************************/

#ifndef HI_VDEC_REG_CODEC_SUPPORT
#define HI_VDEC_REG_CODEC_SUPPORT (0)
#endif
#ifndef HI_VDEC_MJPEG_SUPPORT
#define HI_VDEC_MJPEG_SUPPORT (0)
#endif
#ifndef HI_VDEC_USERDATA_CC_SUPPORT
#define HI_VDEC_USERDATA_CC_SUPPORT (0)
#endif
#if (1 == HI_VDEC_USERDATA_CC_SUPPORT)
#ifndef HI_VDEC_USERDATA_CC_BUFSIZE
#define HI_VDEC_USERDATA_CC_BUFSIZE (0xC000)
#endif
#endif
#ifndef HI_VDEC_DSD_SUPPORT
#define HI_VDEC_DSD_SUPPORT (0)
#endif

/*************************** Structure Definition ****************************/

typedef struct hiVDEC_ES_BUF_S
{
    HI_U8*  pu8Addr;      /*Virtual address of the buffer user.*/
	HI_U32  u32PhyAddr;   
    HI_U32  u32BufSize;   /*Buffer size, in the unit of byte.*/
    HI_U64  u64Pts;       /*PTS of the data filled in a buffer.*/
    HI_BOOL bEndOfFrame;  /* End of Frame flag */
    HI_BOOL bDiscontinuous;/* Stream continue or not */
}VDEC_ES_BUF_S, *PTR_VDEC_ES_BUF_S;

typedef struct tagVDEC_PROBE_STREAM_INFO_S{
    HI_BOOL  bProbeCodecTypeChangeFlag; 
    HI_UNF_VCODEC_TYPE_E enCodecType;
}VDEC_PROBE_STREAM_INFO_S;
typedef struct hiVDEC_STATUSINFO_S
{
    HI_U32  u32BufferSize;      /* Total buffer size, in the unit of byte.*/
    HI_U32  u32BufferAvailable; /* Available buffer, in the unit of byte.*/
    HI_U32  u32BufferUsed;      /* Used buffer, in the unit of byte.*/
    HI_U32  u32VfmwFrmSize;     /* Decoded, but not ready to display. generally refer to the decoded 1D frames */
    HI_U32  u32VfmwStrmSize;    /* The un-decoded stream seg size produced by SCD */
    HI_U32  u32VfmwStrmNum;     /* The un-decoded stream seg num produced by SCD */
    HI_U32  u32VfmwTotalDispFrmNum; /* total display num ( plus extra_disp ) */
    HI_U32  u32FieldFlag;       /* 0:frame 1:field */
    HI_UNF_VCODEC_FRMRATE_S stVfmwFrameRate;/* vfmw frame rate */
    HI_U32  u32StrmInBps;
    HI_U32  u32TotalDecFrmNum;
    HI_U32  u32TotalErrFrmNum;
    HI_U32  u32TotalErrStrmNum;
    HI_U32  u32FrameBufNum;     /* frame num in buffer to display */
    HI_BOOL bEndOfStream;       /* There's no enough stream in buffer to decode a frame */
}VDEC_STATUSINFO_S;

typedef struct hiVDEC_EVENT_S
{    
    HI_BOOL  bNewFrame;
    HI_BOOL  bNewSeq;
    HI_BOOL  bNewUserData;

    HI_BOOL  bFirstValidPts;
    HI_U32   u32FirstValidPts;
    HI_BOOL  bSecondValidPts;
    HI_U32   u32SecondValidPts;
    
    HI_BOOL  bNormChange;
    HI_UNF_NORMCHANGE_PARAM_S stNormChangeParam;

    HI_BOOL  bFramePackingChange;
    HI_UNF_VIDEO_FRAME_PACKING_TYPE_E enFramePackingType;

    HI_BOOL  bIFrameErr;
	VDEC_PROBE_STREAM_INFO_S stProbeStreamInfo;
} VDEC_EVENT_S;

typedef enum hiVDEC_DISCARD_MODE_E
{
    VDEC_DISCARD_STOP,      /* Don't discard frame, or stop when current status is discarding */
    VDEC_DISCARD_START,     /* Start to discard frame until mode switch to VDEC_DISCARD_STOP */
    VDEC_DISCARD_BY_NUM,    /* Discard appointed number frames */
    VDEC_DISCARD_BUTT
}VDEC_DISCARD_MODE_E;

typedef struct hiVDEC_DISCARD_FRAME_S
{
    VDEC_DISCARD_MODE_E enMode; /* Discard mode */
    HI_U32              u32Num; /* Discard number, usable when mode is VDEC_DISCARD_BY_NUM */
}VDEC_DISCARD_FRAME_S;

/****************************** API Declaration ******************************/

HI_S32 HI_MPI_VDEC_Init(HI_VOID);
HI_S32 HI_MPI_VDEC_DeInit(HI_VOID);
HI_S32 HI_MPI_VDEC_RegisterVcodecLib(const HI_CHAR *pszCodecDllName);
HI_S32 HI_MPI_VDEC_AllocChan(HI_HANDLE *phHandle, const HI_UNF_AVPLAY_OPEN_OPT_S *pstMaxCapbility);
HI_S32 HI_MPI_VDEC_FreeChan(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_SetChanAttr(HI_HANDLE hVdec, const HI_UNF_VCODEC_ATTR_S *pstAttr);
HI_S32 HI_MPI_VDEC_GetChanAttr(HI_HANDLE hVdec, HI_UNF_VCODEC_ATTR_S *pstAttr);
HI_S32 HI_MPI_VDEC_ChanBufferInit(HI_HANDLE hVdec, HI_U32 u32BufSize, HI_HANDLE hDmxVidChn);
HI_S32 HI_MPI_VDEC_ChanBufferDeInit(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_ResetChan(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_ChanStart(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_ChanStop(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_ChanGetBuffer(HI_HANDLE hVdec, HI_U32 u32RequestSize, VDEC_ES_BUF_S *pstBuf);
HI_S32 HI_MPI_VDEC_ChanPutBuffer(HI_HANDLE hVdec, const VDEC_ES_BUF_S *pstBuf);
HI_S32 HI_MPI_VDEC_ChanRecvFrm(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S* pstFrameInfo);
HI_S32 HI_MPI_VDEC_ChanRlsFrm(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S* pstFrameInfo);
HI_S32 HI_MPI_VDEC_ChanFrameDecode(HI_HANDLE hVdec, const HI_UNF_AVPLAY_I_FRAME_S *pstIFrameStream,
                                    HI_UNF_VO_FRAMEINFO_S *pVoFrameInfo, HI_BOOL bCapture,HI_UNF_VIDEO_FRAME_TYPE_E enFrameType);
HI_S32 HI_MPI_VDEC_ChanIFrameRelease(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstVoFrameInfo);
HI_S32 HI_MPI_VDEC_GetChanStatusInfo(HI_HANDLE hVdec, VDEC_STATUSINFO_S *pstStatusInfo);
HI_S32 HI_MPI_VDEC_GetChanStreamInfo(HI_HANDLE hVdec, HI_UNF_VCODEC_STREAMINFO_S *pstStreamInfo);
HI_S32 HI_MPI_VDEC_CheckNewEvent(HI_HANDLE hVdec, VDEC_EVENT_S *pstNewEvent);
HI_S32 HI_MPI_VDEC_ReadNewFrame(HI_HANDLE hVdec, HI_UNF_VO_FRAMEINFO_S *pstNewFrame);
HI_S32 HI_MPI_VDEC_ChanRecvUsrData(HI_HANDLE hVdec, HI_UNF_VIDEO_USERDATA_S *pstUsrData);
HI_S32 HI_MPI_VDEC_SetChanFrmRate(HI_HANDLE hVdec, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate);
HI_S32 HI_MPI_VDEC_GetChanFrmRate(HI_HANDLE hVdec, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pstFrmRate);
HI_S32 HI_MPI_VDEC_SetEosFlag(HI_HANDLE hVdec);
HI_S32 HI_MPI_VDEC_DiscardFrame(HI_HANDLE hVdec, VDEC_DISCARD_FRAME_S* pstParam);
HI_S32 HI_MPI_VDEC_AcqUserData(HI_HANDLE hVdec, 
                HI_UNF_VIDEO_USERDATA_S* pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E* penType);
HI_S32 HI_MPI_VDEC_RlsUserData(HI_HANDLE hVdec, HI_UNF_VIDEO_USERDATA_S* pstUserData);
HI_S32 HI_MPI_VDEC_Invoke(HI_HANDLE hVdec, HI_CODEC_VIDEO_CMD_S* pstParam);
HI_S32 HI_MPI_VDEC_ChanDropStream(HI_HANDLE hVdec, HI_U32 *pSeekPts, HI_U32 u32Gap);
HI_S32 HI_MPI_VDEC_SetTrickMode(HI_HANDLE hVdec, HI_S32 s32Speed);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif//__HI_MPI_VDEC_H__

