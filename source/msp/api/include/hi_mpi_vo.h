/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_disp.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

*******************************************************************************/


#ifndef __MPI_VO_H__
#define __MPI_VO_H__

//#include "hi_drv_vo.h"
#include "drv_vo_ioctl.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif

HI_S32 HI_MPI_VO_Init(HI_VOID);
HI_S32 HI_MPI_VO_DeInit(HI_VOID);
HI_S32 HI_MPI_VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode);
HI_S32 HI_MPI_VO_GetDevMode(HI_UNF_VO_DEV_MODE_E *enDevMode);
HI_S32 HI_MPI_VO_Open(HI_UNF_VO_E enVo);
HI_S32 HI_MPI_VO_Close(HI_UNF_VO_E enVo);
HI_S32 HI_MPI_VO_SetEnable(HI_UNF_VO_E enVo, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_GetEnable(HI_UNF_VO_E enVo, HI_BOOL *pbEnable);
HI_S32 HI_MPI_VO_SetAlpha(HI_UNF_VO_E enVo, HI_U32 u32Alpha);
HI_S32 HI_MPI_VO_GetAlpha(HI_UNF_VO_E enVo, HI_U32 *pu32Alpha);
HI_S32 HI_MPI_VO_SetRect(HI_UNF_VO_E enVo, const HI_RECT_S *pstRect);
HI_S32 HI_MPI_VO_GetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect);
HI_S32 HI_MPI_VO_CreateWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow);
HI_S32 HI_MPI_VO_DestroyWindow(HI_HANDLE hWindow);
HI_S32 HI_MPI_VO_CreateAttachWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow);
HI_S32 HI_MPI_VO_CreateReleaseWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow);
HI_S32 HI_MPI_VO_SetWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_SetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_GetWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable);
HI_S32 HI_MPI_VO_GetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable);
HI_S32 HI_MPI_VO_GetWindowsVirtual(HI_HANDLE hWindow, HI_BOOL *pbVirutal);
HI_S32 HI_MPI_VO_AcquireFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo);
HI_S32 HI_MPI_VO_ReleaseFrame(HI_HANDLE handle);
HI_S32 HI_MPI_VO_SetWindowAttr(HI_HANDLE hWindow, const HI_UNF_WINDOW_ATTR_S *pWinAttr);
HI_S32 HI_MPI_VO_GetWindowAttr(HI_HANDLE hWindow, HI_UNF_WINDOW_ATTR_S *pWinAttr);
HI_S32 HI_MPI_VO_SetWindowZorder(HI_HANDLE hWindow, HI_LAYER_ZORDER_E enZFlag);
HI_S32 HI_MPI_VO_GetWindowZorder(HI_HANDLE hWindow, HI_U32 *pu32Zorder);
HI_S32 HI_MPI_VO_AttachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc);
HI_S32 HI_MPI_VO_DetachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc);
HI_S32 HI_MPI_VO_SetWindowRatio(HI_HANDLE hWindow, HI_U32 u32WinRatio);
HI_S32 HI_MPI_VO_FreezeWindow(HI_HANDLE hWindow, HI_BOOL bEnable, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode);
HI_S32 HI_MPI_VO_SetWindowFieldMode(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_SendFrame(HI_HANDLE hWindow, const HI_UNF_VO_FRAMEINFO_S *pFrameinfo);
HI_S32 HI_MPI_VO_PutFrame(HI_HANDLE hWindow, const HI_UNF_VO_FRAMEINFO_S *pFrameinfo);
HI_S32 HI_MPI_VO_GetFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo);

HI_S32 HI_MPI_VO_SetWindowDetect(HI_HANDLE hWindow, VO_WIN_DETECT_E DetType, HI_BOOL enDet);
HI_S32 HI_MPI_VO_ResetWindow(HI_HANDLE hWindow, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode);
HI_S32 HI_MPI_VO_PauseWindow(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_GetWindowDelay(HI_HANDLE hWindow, HI_U32 *pDelay);

//acquire last frame state, 0->indicate not receive last frame; 1->indicate has received last frame.
HI_S32 HI_MPI_VO_GetWindowLastFrameState(HI_HANDLE hWindow, HI_BOOL *pbLastFrame);

HI_S32 HI_MPI_VO_SetWindowStepMode(HI_HANDLE hWindow, HI_BOOL bStepMode);
HI_S32 HI_MPI_VO_SetWindowStepPlay(HI_HANDLE hWindow);
HI_S32 HI_MPI_VO_DisableDieMode(HI_HANDLE hWindow);
HI_S32 HI_MPI_VO_AttachExternBuffer(HI_HANDLE hWindow,HI_UNF_BUFFER_ATTR_S* pstBufAttr);
HI_S32 HI_MPI_VO_SetQuickOutputEnable(HI_HANDLE hWindow, HI_BOOL bQuickOutputEnable);
HI_S32 HI_MPI_VO_UseDNRFrame(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32 HI_MPI_VO_AlgControl(const HI_UNF_ALG_CONTROL_S *pAlgControl);
HI_S32 HI_MPI_VO_CapturePictureExt(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture,  HI_UNF_CAPTURE_MEM_MODE_S *pstCapMode);
HI_S32 HI_MPI_VO_CapturePicture(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 HI_MPI_VO_CapturePictureRelease(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 HI_MPI_VO_GetWindowFrameInfo(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S  *pFrame);
HI_S32 HI_MPI_VO_SetWinRestHQ(HI_HANDLE hWindow, HI_BOOL bEnable);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif

