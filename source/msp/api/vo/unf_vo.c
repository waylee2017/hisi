/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_unf_vo.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/16
  Description   :
  History       :
  1.Date        : 2009/12/16
    Author      : w58735
    Modification: Created file

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_mpi_vo.h"

HI_S32 HI_UNF_VO_Init(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_Init();

    if (s32Ret != HI_SUCCESS)
    {
        return s32Ret;
    }

    s32Ret = HI_MPI_VO_SetDevMode(enDevMode);

    return s32Ret;
}

HI_S32 HI_UNF_VO_DeInit(HI_VOID)
{
	HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_DeInit();

	return s32Ret;
}

HI_S32 HI_UNF_VO_Open(HI_UNF_VO_E enVo)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_Open(enVo);

    return s32Ret;
}

HI_S32 HI_UNF_VO_Close(HI_UNF_VO_E enVo)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_Close(enVo);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetAlpha(HI_UNF_VO_E enVo, HI_U32 u32Alpha)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetAlpha(enVo, u32Alpha);

    return s32Ret;
}

HI_S32 HI_UNF_VO_GetAlpha(HI_UNF_VO_E enVo, HI_U32 *pu32Alpha)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_GetAlpha(enVo, pu32Alpha);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetRect(HI_UNF_VO_E enVo, const HI_RECT_S *pstRect)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetRect(enVo, pstRect);

    return s32Ret;
}

HI_S32 HI_UNF_VO_GetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_GetRect(enVo, pstRect);

    return s32Ret;
}

HI_S32 HI_UNF_VO_CreateWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_CreateWindow(pWinAttr, phWindow);

    return s32Ret;
}

HI_S32 HI_UNF_VO_DestroyWindow(HI_HANDLE hWindow)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_DestroyWindow(hWindow);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetWindowEnable(hWindow, bEnable);

    return s32Ret;
}

HI_S32 HI_UNF_VO_GetWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_GetWindowEnable(hWindow, pbEnable);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetWindowAttr(HI_HANDLE hWindow, const HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetWindowAttr(hWindow, pWinAttr);

    return s32Ret;
}

HI_S32 HI_UNF_VO_AcquireFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_VO_AcquireFrame(hWindow, pstFrameinfo);

    return s32Ret;
}

HI_S32 HI_UNF_VO_ReleaseFrame(HI_HANDLE hWindow)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_VO_ReleaseFrame(hWindow);

    return s32Ret;
}

HI_S32 HI_UNF_VO_GetWindowAttr(HI_HANDLE hWindow, HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_GetWindowAttr(hWindow, pWinAttr);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetWindowZorder(HI_HANDLE hWindow, HI_LAYER_ZORDER_E enZFlag)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetWindowZorder(hWindow, enZFlag);

    return s32Ret;
}

HI_S32 HI_UNF_VO_GetWindowZorder(HI_HANDLE hWindow, HI_U32 *pu32Zorder)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_GetWindowZorder(hWindow, pu32Zorder);

    return s32Ret;
}

HI_S32 HI_UNF_VO_AttachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_AttachWindow(hWindow, hSrc);

    return s32Ret;
}

HI_S32 HI_UNF_VO_DetachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_DetachWindow(hWindow, hSrc);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetWindowRatio(HI_HANDLE hWindow, HI_U32 u32WinRatio)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_VO_SetWindowRatio(hWindow, u32WinRatio);
    
    return s32Ret;
}

HI_S32 HI_UNF_VO_FreezeWindow(HI_HANDLE hWindow, HI_BOOL bEnable, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode)
{
	HI_S32 s32Ret;

	s32Ret = HI_MPI_VO_FreezeWindow(hWindow, bEnable, enWinFreezeMode);

	return s32Ret;
}

HI_S32 HI_UNF_VO_SetWindowFieldMode(HI_HANDLE hWindow, HI_BOOL bEnable)
{
	HI_S32 s32Ret;

	s32Ret = HI_MPI_VO_SetWindowFieldMode(hWindow, bEnable);

	return s32Ret;
}

HI_S32 HI_UNF_VO_ResetWindow(HI_HANDLE hWindow, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_ResetWindow(hWindow, enWinFreezeMode);

    return s32Ret;
}

HI_S32 HI_UNF_VO_AttachExternBuffer(HI_HANDLE hWindow,HI_UNF_BUFFER_ATTR_S* pstBufAttr)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_AttachExternBuffer(hWindow,pstBufAttr);

    return s32Ret;
}

HI_S32 HI_UNF_VO_SetQuickOutputEnable(HI_HANDLE hWindow, HI_BOOL bQuickOutputEnable)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_SetQuickOutputEnable(hWindow, bQuickOutputEnable);
    return s32Ret;
}

HI_S32 HI_UNF_VO_AlgControl(const HI_UNF_ALG_CONTROL_S *pAlgControl)
{
    HI_S32 s32Ret;
    s32Ret = HI_MPI_VO_AlgControl(pAlgControl);
    return s32Ret;
}

HI_S32 HI_UNF_VO_CapturePicture(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_CapturePicture(hWindow, pstCapPicture);

    return s32Ret;
}

HI_S32 HI_UNF_VO_CapturePictureRelease(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_VO_CapturePictureRelease(hWindow, pstCapPicture);

    return s32Ret;
}

