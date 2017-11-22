/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : mpi_priv_venc.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/03/31
  Description   :
  History       :
  1.Date        : 2010/03/31
    Author      : j00131665
    Modification: Created file

******************************************************************************/

#ifndef __HI_DRV_VENC_H__
#define __HI_DRV_VENC_H__

#include "hi_unf_venc.h"
#include "drv_file_ext.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

#define VENC_MAX_CHN_NUM 8

#define HI_FATAL_VENC(fmt...) HI_FATAL_PRINT(HI_ID_VENC, fmt)
#define HI_ERR_VENC(fmt...) HI_ERR_PRINT(HI_ID_VENC, fmt)
#define HI_WARN_VENC(fmt...) HI_WARN_PRINT(HI_ID_VENC, fmt)
#define HI_INFO_VENC(fmt...) HI_INFO_PRINT(HI_ID_VENC, fmt)
#define HI_DBG_VENC(fmt...) HI_DBG_PRINT(HI_ID_VENC, fmt)

HI_S32 HI_DRV_VENC_Init(HI_VOID);
HI_S32 HI_DRV_VENC_DeInit(HI_VOID);
HI_S32 HI_DRV_VENC_GetDefaultAttr(HI_UNF_VENC_CHN_ATTR_S *pstAttr);
HI_S32 HI_DRV_VENC_Create(HI_HANDLE *phVencChn, HI_UNF_VENC_CHN_ATTR_S *pstAttr,struct file  *pfile);
HI_S32 HI_DRV_VENC_Destroy(HI_HANDLE hVenc);
HI_S32 HI_DRV_VENC_AttachInput(HI_HANDLE hVenc,HI_HANDLE hSrc);
HI_S32 HI_UNF_VENC_DetachInput(HI_HANDLE hVencChn);
HI_S32 HI_DRV_VENC_Start(HI_HANDLE hVenc);
HI_S32 HI_UNF_VENC_Stop(HI_HANDLE hVenc);
HI_S32 HI_DRV_VENC_AcquireStream(HI_HANDLE hVenc,HI_UNF_VENC_STREAM_S *pstStream, HI_U32 u32TimeoutMs);
HI_S32 HI_DRV_VENC_ReleaseStream(HI_HANDLE hVenc, HI_UNF_VENC_STREAM_S *pstStream);

HI_S32 HI_DRV_VENC_SetAttr(HI_HANDLE hVenc,HI_UNF_VENC_CHN_ATTR_S *pstAttr);
HI_S32 HI_DRV_VENC_GetAttr(HI_HANDLE hVenc, HI_UNF_VENC_CHN_ATTR_S *pstAttr);
HI_S32 HI_DRV_VENC_RequestIFrame(HI_HANDLE hVenc);
HI_S32 HI_DRV_VENC_QueueFrame(HI_HANDLE hVenc, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameinfo);
HI_S32 HI_DRV_VENC_DequeueFrame(HI_HANDLE hVenc, HI_UNF_VIDEO_FRAME_INFO_S *pstFrameinfo);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__HI_DRV_VENC_H__
