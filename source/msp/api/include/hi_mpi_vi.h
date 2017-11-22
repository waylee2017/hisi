/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_mpi_vi.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

 *******************************************************************************/

#ifndef __HI_MPI_VI_H__
#define __HI_MPI_VI_H__

#include "drv_vi_ioctl.h"
#include "hi_error_mpi.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C"
{
 #endif
#endif

#define MAX_VI_CHN 2
#define VI_FB_MAX_NUM 8
#define VIU_FB_MAX_NUM 16 /* max number of frame buffer */
#define VIU_FB_MIN_NUM 4  /* min number of frame buffer */
#define VIU_WIDTH_MAX 2048
#define VIU_HIGHT_MAX 1536

HI_S32         HI_MPI_VI_Init(HI_VOID);
HI_S32         HI_MPI_VI_DeInit(HI_VOID);
HI_S32         HI_MPI_VI_SetAttr(HI_HANDLE handle, const HI_UNF_VI_ATTR_S *pstAttr);
HI_S32         HI_MPI_VI_GetAttr(HI_HANDLE handle, HI_UNF_VI_ATTR_S *pstAttr);
HI_S32         HI_MPI_VI_Create(HI_UNF_VI_E enViPort, HI_UNF_VI_ATTR_S *pstAttr, HI_HANDLE *phVi);
//HI_S32         HI_MPI_VI_Create( HI_UNF_VI_ATTR_S *pstAttr, HI_HANDLE *phVi);
HI_S32         HI_MPI_VI_Destroy(HI_HANDLE handle);
HI_S32         HI_MPI_VI_Start(HI_HANDLE handle);
HI_S32         HI_MPI_VI_Stop(HI_HANDLE handle);
HI_S32         HI_MPI_VI_SetExternBuffer(HI_HANDLE handle, HI_UNF_VI_BUFFER_ATTR_S* pstBufAttr);
#if 0
HI_S32         HI_MPI_VI_GetFrame(HI_HANDLE handle, HI_UNF_VI_BUF_S *pViBuf);
HI_S32         HI_MPI_VI_PutFrame(HI_HANDLE handle, const HI_UNF_VI_BUF_S *pViBuf);
#else
HI_S32         HI_MPI_VI_QueueFrame(HI_HANDLE hVI, HI_UNF_VIDEO_FRAME_INFO_S *pFrameInfo);
HI_S32         HI_MPI_VI_DequeueFrame(HI_HANDLE hVI, HI_UNF_VIDEO_FRAME_INFO_S *pFrameInfo);
#endif
HI_S32         HI_MPI_VI_AcquireFrame(HI_HANDLE handle, HI_U32 u32Uid, HI_UNF_VIDEO_FRAME_INFO_S *pFrameInfo);
HI_S32         HI_MPI_VI_ReleaseFrame(HI_HANDLE handle, HI_U32 u32Uid, const HI_UNF_VIDEO_FRAME_INFO_S *pFrameInfo);
HI_S32         HI_MPI_VI_GetUsrID(HI_HANDLE handle, HI_U32 *pu32UId);
HI_S32         HI_MPI_VI_PutUsrID(HI_HANDLE handle, HI_U32 u32UId);
/*
HI_S32         yuv_dump_start(char *filename);
HI_S32         yuv_dump(const HI_UNF_VI_BUF_S *pVBuf);
HI_S32         yuv_dump_end(HI_VOID);
*/
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__HI_MPI_VI_H__
