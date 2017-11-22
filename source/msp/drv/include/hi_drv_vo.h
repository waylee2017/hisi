/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_priv_vo.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

******************************************************************************/

#ifndef __HI_DRV_VO_H__
#define __HI_DRV_VO_H__

#include "hi_unf_common.h"
#include "hi_unf_vo.h"
#include "hi_unf_disp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
#define  WINDOW_MAX_NUM       16
#else
#define  WINDOW_MAX_NUM       1
#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HI_FATAL_VO(fmt...) \
            HI_FATAL_PRINT(HI_ID_VO, fmt)

#define HI_ERR_VO(fmt...) \
            HI_ERR_PRINT(HI_ID_VO, fmt)

#define HI_WARN_VO(fmt...) \
            HI_WARN_PRINT(HI_ID_VO, fmt)

#define HI_INFO_VO(fmt...) \
            HI_INFO_PRINT(HI_ID_VO, fmt)
#define HI_VO_PRINT(fmt,args...)  \
            HI_PRINT(fmt,##args)
#else

#define HI_FATAL_VO(fmt...) 
#define HI_ERR_VO(fmt...) 
#define HI_WARN_VO(fmt...)
#define HI_INFO_VO(fmt...)
#define HI_VO_PRINT(fmt,args...)
#endif

HI_S32 HI_DRV_VO_ModInit(HI_VOID);
//HI_VOID HI_DRV_VO_ModExit(HI_VOID);


HI_S32  HI_DRV_VO_Init(HI_VOID);
HI_VOID  HI_DRV_VO_DeInit(HI_VOID);

HI_S32  HI_DRV_VO_Open(HI_UNF_VO_E enVo);
HI_S32  HI_DRV_VO_Close(HI_UNF_VO_E enVo);

HI_S32 HI_DRV_VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode);
HI_S32  HI_DRV_VO_CreateWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow);
HI_S32  HI_DRV_VO_DestroyWindow(HI_HANDLE hWindow);
HI_S32  HI_DRV_VO_SetWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable);
HI_S32  HI_DRV_VO_AttachWindow(HI_HANDLE hWindow,HI_HANDLE hSrc,HI_HANDLE hSync,HI_MOD_ID_E ModId);
HI_S32  HI_DRV_VO_DetachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc);
HI_S32  HI_DRV_VO_ResetWindow(HI_HANDLE hWindow, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode);
HI_S32  HI_DRV_VO_GetWindowDelay(HI_HANDLE hWindow, HI_U32 *pDelay);
HI_S32  HI_DRV_VO_DisableDieMode(HI_HANDLE hWindow);

HI_S32 HI_DRV_VO_CapturePicture(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 HI_DRV_VO_CapturePictureRelease(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 HI_DRV_VO_CapturePictureReleaseMMZ(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 HI_DRV_VO_SendFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo);
HI_S32 HI_DRV_VO_SetWindowZorder(HI_HANDLE hWin, HI_LAYER_ZORDER_E ZFlag);

HI_S32 HI_DRV_VO_GetVoAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pWinAttr);
HI_S32 HI_DRV_VO_SetVoAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pWinAttr);

HI_S32 HI_DRV_VO_SetWindowResetMode(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E WinFreezeMode);
HI_S32 HI_DRV_VO_GetWindowResetMode(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E *WinFreezeMode);
HI_S32 HI_DRV_VO_ModIoctl(HI_U32 cmd, HI_VOID *arg);
HI_S32 HI_DRV_VO_SetWindowPlayRatio(HI_HANDLE hWin, HI_U32 u32PlayRatio);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __HI_DRV_VO_H__ */


