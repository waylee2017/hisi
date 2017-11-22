/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_vo.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

*******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <errno.h>
#include <pthread.h>
#include <linux/types.h>

#include "hi_mpi_vo.h"
#include "hi_mpi_avplay.h"
//#include "hi_mpi_sys.h"
#include "hi_error_mpi.h"
#include "drv_struct_ext.h"
#include "drv_vdec_ext.h"

#if 0
//void InitCompressor();

int decompress(unsigned char *pData, int DataLen, int Width, int Height, int stride_luma, int stride_chrome, unsigned char *pFrame);
#endif
#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif


static HI_S32           g_VoDevFd = -1;
static const HI_CHAR    g_VoDevName[] = "/dev/"UMAP_DEVNAME_VO;
static pthread_mutex_t  g_VoMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_VO_LOCK()     (void)pthread_mutex_lock(&g_VoMutex);
#define HI_VO_UNLOCK()   (void)pthread_mutex_unlock(&g_VoMutex);

#define CHECK_VO_INIT()\
do{\
    HI_VO_LOCK();\
    if (g_VoDevFd < 0)\
    {\
        HI_ERR_VO("VO is not init.\n");\
        HI_VO_UNLOCK();\
        return HI_ERR_VO_NO_INIT;\
    }\
    HI_VO_UNLOCK();\
}while(0)


HI_S32 HI_MPI_VO_Init(HI_VOID)
{
    HI_VO_LOCK();

    if (g_VoDevFd > 0)
    {
        HI_VO_UNLOCK();
        return HI_SUCCESS;
    }

    g_VoDevFd = open(g_VoDevName, O_RDWR|O_NONBLOCK, 0);

    if (g_VoDevFd < 0)
    {
        HI_FATAL_VO("open VO err.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_DEV_OPEN_ERR;
    }

    HI_VO_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_VO_LOCK();

    if (g_VoDevFd < 0)
    {
        HI_VO_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = close(g_VoDevFd);

    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_VO("DeInit VO err.\n");
        HI_VO_UNLOCK();
        return HI_ERR_VO_DEV_CLOSE_ERR;
    }

    g_VoDevFd = -1;

    HI_VO_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    HI_S32  Ret;

    if (enDevMode >HI_UNF_VO_DEV_MODE_NORMAL )
    {
        HI_ERR_VO("para enDevMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_SET_DEV_MODE, &enDevMode);

    return Ret;
}

HI_S32 HI_MPI_VO_GetDevMode(HI_UNF_VO_DEV_MODE_E *enDevMode)
{
    HI_S32  Ret;

    if (enDevMode == NULL)
    {
        HI_ERR_VO("para enDevMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_GET_DEV_MODE, enDevMode);

    return Ret;
}






HI_S32 HI_MPI_VO_Open(HI_UNF_VO_E enVo)
{
    HI_S32         Ret;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_OPEN, &enVo);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_Close(HI_UNF_VO_E enVo)
{
    HI_S32      Ret;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_CLOSE, &enVo);

    return Ret;
}

HI_S32 HI_MPI_VO_SetEnable(HI_UNF_VO_E enVo, HI_BOOL bEnable)
{
    HI_S32        Ret;
    VO_ENABLE_S   VoEnable;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoEnable.enVo = enVo;
    VoEnable.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_SET_ENABLE, &VoEnable);

    return Ret;
}

HI_S32 HI_MPI_VO_GetEnable(HI_UNF_VO_E enVo, HI_BOOL *pbEnable)
{
    HI_S32        Ret;
    VO_ENABLE_S   VoEnable;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pbEnable)
    {
        HI_ERR_VO("para pbEnable is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoEnable.enVo = enVo;

    Ret = ioctl(g_VoDevFd, CMD_VO_GET_ENABLE, &VoEnable);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbEnable = VoEnable.bEnable;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_SetAlpha(HI_UNF_VO_E enVo, HI_U32 u32Alpha)
{
    HI_S32        Ret;
    VO_ALPHA_S    VoAlpha;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (u32Alpha >= 256)
    {
        HI_ERR_VO("para u32Alpha is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoAlpha.enVo = enVo;
    VoAlpha.Alhpa = u32Alpha;

    Ret = ioctl(g_VoDevFd, CMD_VO_SET_ALPHA, &VoAlpha);

    return Ret;
}

HI_S32 HI_MPI_VO_GetAlpha(HI_UNF_VO_E enVo, HI_U32 *pu32Alpha)
{
    HI_S32        Ret;
    VO_ALPHA_S    VoAlpha;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pu32Alpha)
    {
        HI_ERR_VO("para pu32Alpha is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoAlpha.enVo = enVo;

    Ret = ioctl(g_VoDevFd, CMD_VO_GET_ALPHA, &VoAlpha);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32Alpha = VoAlpha.Alhpa;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_SetRect(HI_UNF_VO_E enVo, const HI_RECT_S *pstRect)
{
    HI_S32       Ret;
    VO_RECT_S    VoRect;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pstRect)
    {
        HI_ERR_VO("para pstRect is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoRect.enVo = enVo;
    memcpy(&VoRect.Rect, pstRect, sizeof(HI_RECT_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_SET_RECT, &VoRect);

    return Ret;
}

HI_S32 HI_MPI_VO_GetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect)
{
    HI_S32       Ret;
    VO_RECT_S    VoRect;

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pstRect)
    {
        HI_ERR_VO("para pstRect is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoRect.enVo = enVo;

    Ret = ioctl(g_VoDevFd, CMD_VO_GET_RECT, &VoRect);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    memcpy(pstRect, &VoRect.Rect, sizeof(HI_RECT_S));

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_CreateWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
    HI_S32           Ret;
    VO_WIN_CREATE_S  VoWinCreate;

    if (!pWinAttr)
    {
        HI_ERR_VO("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (!phWindow)
    {
        HI_ERR_VO("para phWindow is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (pWinAttr->enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->bVirtual != HI_FALSE)
    {
        HI_ERR_VO("not support virtual window.\n");
        return HI_ERR_VO_NOT_SUPPORT;
    }

    if (pWinAttr->enAspectRatio >= HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectRatio is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->enAspectCvrs >= HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CREATE, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *phWindow = VoWinCreate.hWindow;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_DestroyWindow(HI_HANDLE hWindow)
{
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_DESTROY, &hWindow);

    return Ret;
}

HI_S32 HI_MPI_VO_CreateAttachWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
    HI_S32           Ret;
    VO_WIN_CREATE_S  VoWinCreate;

    if (!pWinAttr)
    {
        HI_ERR_VO("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (!phWindow)
    {
        HI_ERR_VO("para phWindow is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (pWinAttr->enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->bVirtual != HI_FALSE)
    {
        HI_ERR_VO("not support virtual window.\n");
        return HI_ERR_VO_NOT_SUPPORT;
    }

    if (pWinAttr->enAspectRatio >= HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectRatio is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->enAspectCvrs >= HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CREATE_ATTACH, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *phWindow = VoWinCreate.hWindow;

    return HI_SUCCESS;
#else
    HI_ERR_VO("Unsupport release window.\n");
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_VO_CreateReleaseWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
    HI_S32           Ret;
    VO_WIN_CREATE_S  VoWinCreate;

    if (!pWinAttr)
    {
        HI_ERR_VO("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (!phWindow)
    {
        HI_ERR_VO("para phWindow is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (pWinAttr->enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enVo is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->bVirtual != HI_FALSE)
    {
        HI_ERR_VO("not support virtual window.\n");
        return HI_ERR_VO_NOT_SUPPORT;
    }

    if (pWinAttr->enAspectRatio >= HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectRatio is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->enAspectCvrs >= HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CREATE_RELEASE, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *phWindow = VoWinCreate.hWindow;

    return HI_SUCCESS;
#else
    HI_ERR_VO("Unsupport release window.\n");
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_VO_SetWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32            Ret;
    VO_WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;
    VoWinEnable.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_SET_ENABLE, &VoWinEnable);

    return Ret;
}


HI_S32 HI_MPI_VO_SetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32            Ret;
    VO_WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;
    VoWinEnable.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_SET_MAIN_ENABLE, &VoWinEnable);

    return Ret;
}


HI_S32 HI_MPI_VO_GetWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable)
{
    HI_S32            Ret;
    VO_WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pbEnable)
    {
        HI_ERR_VO("para pbEnable is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_ENABLE, &VoWinEnable);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbEnable = VoWinEnable.bEnable;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_GetMainWindowEnable(HI_HANDLE hWindow, HI_BOOL *pbEnable)
{
    HI_S32            Ret;
    VO_WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pbEnable)
    {
        HI_ERR_VO("para pbEnable is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_MAIN_ENABLE, &VoWinEnable);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbEnable = VoWinEnable.bEnable;

    return HI_SUCCESS;
}


HI_S32 HI_MPI_VO_GetWindowsVirtual(HI_HANDLE hWindow, HI_BOOL *pbVirutal)
{
    HI_ERR_VO("not support virtual window.\n");
    return HI_ERR_VO_NOT_SUPPORT;
}

HI_S32 HI_MPI_VO_AcquireFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo)
{
    HI_ERR_VO("not support virtual window.\n");
    return HI_ERR_VO_NOT_SUPPORT;
}


HI_S32 HI_MPI_VO_ReleaseFrame(HI_HANDLE hWindow)
{
    HI_ERR_VO("not support virtual window.\n");
    return HI_ERR_VO_NOT_SUPPORT;
}


HI_S32 HI_MPI_VO_SetWindowAttr(HI_HANDLE hWindow, const HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32           Ret;
    VO_WIN_CREATE_S  VoWinCreate;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pWinAttr)
    {
        HI_ERR_VO("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (pWinAttr->enAspectRatio >= HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectRatio is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pWinAttr->enAspectCvrs >= HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_VO("para pWinAttr->enAspectCvrs is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinCreate.hWindow = hWindow;
    memcpy(&VoWinCreate.WinAttr, pWinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_SET_ATTR, &VoWinCreate);

    return Ret;
}

HI_S32 HI_MPI_VO_GetWindowAttr(HI_HANDLE hWindow, HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32           Ret;
    VO_WIN_CREATE_S  VoWinCreate;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pWinAttr)
    {
        HI_ERR_VO("para pWinAttr is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinCreate.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_ATTR, &VoWinCreate);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    memcpy(pWinAttr, &VoWinCreate.WinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_SetWindowZorder(HI_HANDLE hWindow, HI_LAYER_ZORDER_E enZFlag)
{
    HI_ERR_VO("not support set window  zorder.\n");
    return HI_ERR_VO_NOT_SUPPORT;
}


HI_S32 HI_MPI_VO_GetWindowZorder(HI_HANDLE hWindow, HI_U32 *pu32Zorder)
{
    HI_ERR_VO("not support set window  zorder.\n");
    return HI_ERR_VO_NOT_SUPPORT;
}


HI_S32 HI_MPI_VO_AttachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    HI_S32                  Ret;
    VO_WIN_ATTACH_S         VoWinAttach;
    HI_HANDLE               hVdec;
    HI_HANDLE               hSync;
    HI_UNF_AVPLAY_ATTR_S    AvplayAttr;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!hSrc)
    {
        HI_ERR_VO("para hSrc is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    if(HI_ID_VI == ((hSrc&0xff0000)>>16))
    {
        VoWinAttach.ModId = HI_ID_VI;
    }
    else if(HI_ID_AVPLAY == ((hSrc&0xff0000)>>16))
    {
        Ret = HI_MPI_AVPLAY_GetAttr(hSrc, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &AvplayAttr);
        if (HI_SUCCESS != Ret)
        {
            return HI_ERR_VO_INVALID_PARA;
        }

        VoWinAttach.ModId = HI_ID_AVPLAY;
    }
    else
    {
        return HI_ERR_VO_INVALID_PARA;
    }

    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_GetSyncVdecHandle(hSrc, &hVdec, &hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_AVPLAY_GetVdecHandle failed.\n");
            return Ret;
        }
        VoWinAttach.hSrc = hVdec;
        VoWinAttach.hSync = hSync;
    }
    else
    {
        VoWinAttach.hSrc = hSrc;
    }


    VoWinAttach.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_ATTACH, &VoWinAttach);

    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_AttachWindow(hSrc, hWindow);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_VO("call HI_MPI_AVPLAY_AttachWindow failed.\n");
            (HI_VOID)ioctl(g_VoDevFd, CMD_VO_WIN_DETACH, &VoWinAttach);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_DetachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    HI_S32                  Ret;
    HI_HANDLE               hVdec;
    HI_HANDLE               hSync;
    VO_WIN_ATTACH_S         VoWinAttach;
    HI_UNF_AVPLAY_ATTR_S    AvplayAttr;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!hSrc)
    {
        HI_ERR_VO("para hSrc is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    if(HI_ID_VI == ((hSrc&0xff0000)>>16))
    {
        VoWinAttach.ModId = HI_ID_VI;
    }
    else if(HI_ID_AVPLAY == ((hSrc&0xff0000)>>16))
    {
        Ret = HI_MPI_AVPLAY_GetAttr(hSrc, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &AvplayAttr);
        if (HI_SUCCESS != Ret)
        {
            return HI_ERR_VO_INVALID_PARA;
        }

        VoWinAttach.ModId = HI_ID_AVPLAY;
    }
    else
    {
        return HI_ERR_VO_INVALID_PARA;
    }

    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_GetSyncVdecHandle(hSrc, &hVdec, &hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_VO("call HI_MPI_AVPLAY_GetVdecHandle failed.\n");
            return Ret;
        }
        VoWinAttach.hSrc = hVdec;
        VoWinAttach.hSync = hSync;
    }
    else
    {
        VoWinAttach.hSrc = hSrc;
    }

    VoWinAttach.hWindow = hWindow;

    if (HI_ID_AVPLAY == VoWinAttach.ModId)
    {
        Ret = HI_MPI_AVPLAY_DetachWindow(hSrc, hWindow);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_VO("call HI_MPI_AVPLAY_DetachWindow failed.\n");
            return Ret;
        }
    }

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_DETACH, &VoWinAttach);

    return Ret;
}

HI_S32 HI_MPI_VO_SetWindowRatio(HI_HANDLE hWindow, HI_U32 u32WinRatio)
{
    HI_S32           Ret;
    VO_WIN_RATIO_S   VoWinRatio;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinRatio.hWindow = hWindow;
    VoWinRatio.Ratio = u32WinRatio;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_RATIO, &VoWinRatio);

    return Ret;
}

HI_S32 HI_MPI_VO_FreezeWindow(HI_HANDLE hWindow, HI_BOOL bEnable, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode)
{
    HI_S32           Ret;
    VO_WIN_FREEZE_S  VoWinFreeze;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (enWinFreezeMode >= HI_UNF_WINDOW_FREEZE_MODE_BUTT)
    {
        HI_ERR_VO("para enWinFreezeMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinFreeze.hWindow = hWindow;
    VoWinFreeze.bEnable = bEnable;
    VoWinFreeze.WinFreezeMode = enWinFreezeMode;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_FREEZE, &VoWinFreeze);

    return Ret;
}

HI_S32 HI_MPI_VO_SetWindowFieldMode(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32           Ret;
    VO_WIN_FIELDMODE_S VoWinFieldMode;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinFieldMode.hWindow = hWindow;
    VoWinFieldMode.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_FIELDMODE, &VoWinFieldMode);

    return Ret;
}

HI_S32 HI_MPI_VO_SendFrame(HI_HANDLE hWindow, const HI_UNF_VO_FRAMEINFO_S *pFrameinfo)
{
    HI_S32             Ret;
    VO_WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pFrameinfo)
    {
        HI_ERR_VO("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;
    memcpy(&VoWinFrame.Frameinfo, pFrameinfo, sizeof(HI_UNF_VO_FRAMEINFO_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_SEND_FRAME, &VoWinFrame);

    return Ret;
}

HI_S32 HI_MPI_VO_PutFrame(HI_HANDLE hWindow, const HI_UNF_VO_FRAMEINFO_S *pFrameinfo)
{
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
    HI_S32             Ret;
    VO_WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pFrameinfo)
    {
        HI_ERR_VO("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;
    memcpy(&VoWinFrame.Frameinfo, pFrameinfo, sizeof(HI_UNF_VO_FRAMEINFO_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_PUT_FRAME, &VoWinFrame);

    return Ret;
#else
    HI_ERR_VO("Unsupport put frame.\n");
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_VO_GetFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo)
{
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
    HI_S32             Ret;
    VO_WIN_FRAME_S     VoWinFrame;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pFrameinfo)
    {
        HI_ERR_VO("para pFrameinfo is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinFrame.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_FRAME, &VoWinFrame);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    memcpy(pFrameinfo, &VoWinFrame.Frameinfo, sizeof(HI_UNF_VO_FRAMEINFO_S));

    return HI_SUCCESS;
#else
    HI_ERR_VO("Unsupport get frame.\n");
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}


HI_S32 HI_MPI_VO_ResetWindow(HI_HANDLE hWindow, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode)
{
    VO_WIN_RESET_S   VoWinReset;
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (enWinFreezeMode >= HI_UNF_WINDOW_FREEZE_MODE_BUTT)
    {
        HI_ERR_VO("para enWinFreezeMode is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinReset.hWindow = hWindow;
    VoWinReset.WinFreezeMode = enWinFreezeMode;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_RESET, &VoWinReset);

    return Ret;
}

HI_S32 HI_MPI_VO_PauseWindow(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    VO_WIN_PAUSE_S   VoWinPause;
    HI_S32           Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinPause.hWindow = hWindow;
    VoWinPause.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_PAUSE, &VoWinPause);

    return Ret;
}


HI_S32 HI_MPI_VO_GetWindowDelay(HI_HANDLE hWindow, HI_U32 *pDelay)
{
    VO_WIN_DELAY_S   VoWinDelay;
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pDelay)
    {
        HI_ERR_VO("para pDelay is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinDelay.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_DELAY, &VoWinDelay);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pDelay = VoWinDelay.Delay;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_VO_GetWindowLastFrameState(HI_HANDLE hWindow,HI_BOOL * pbLastFrame)
{
    VO_WIN_LAST_FRAME_S VoWinLastFrameState;
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pbLastFrame)
    {
        HI_ERR_VO("para bLastFrame is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    VoWinLastFrameState.hWindow = hWindow;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GET_LAST_FRAME_STATE, &VoWinLastFrameState);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbLastFrame = VoWinLastFrameState.bLastFrame;

    return HI_SUCCESS;

}


HI_S32 HI_MPI_VO_SetWindowStepMode(HI_HANDLE hWindow, HI_BOOL bStepMode)
{
    HI_S32              Ret;
    VO_WIN_STEP_MODE_S  WinStepMode;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    WinStepMode.hWindow = hWindow;
    WinStepMode.bStepMode = bStepMode;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_STEP_MODE, &WinStepMode);

    return Ret;
}

HI_S32 HI_MPI_VO_SetWindowStepPlay(HI_HANDLE hWindow)
{
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_STEP_PLAY, &hWindow);

    return Ret;
}

HI_S32 HI_MPI_VO_SetWindowDetect(HI_HANDLE hWindow, VO_WIN_DETECT_E detType, HI_BOOL enDet)
{
    HI_S32      Ret;
    VO_WIN_DETECT_S stDetType;
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();
    stDetType.hWindow = hWindow;
    stDetType.detType = detType;
    stDetType.enDet = enDet;
    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_DET_MODE, &stDetType);

    return Ret;

}
HI_S32 HI_MPI_VO_DisableDieMode(HI_HANDLE hWindow)
{
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_DIE_MODE, &hWindow);

    return Ret;
}

HI_S32 HI_MPI_VO_AttachExternBuffer(HI_HANDLE hWindow,HI_UNF_BUFFER_ATTR_S* pstBufAttr)
{
#ifdef HI_VDP_EXTERNALBUFFER_SUPPORT
    HI_S32      Ret;
    HI_S32      s32Index;
    VO_WIN_BUF_ATTR_S  bufferAttr;
    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    bufferAttr.hwin = hWindow;
    bufferAttr.FrameStride = pstBufAttr->s32Stride;
    bufferAttr.FrameNum = pstBufAttr->s32BuffNum;
    for(s32Index = 0;s32Index < pstBufAttr->s32BuffNum;s32Index++)
    {
        bufferAttr.u32PhyAddr[s32Index] = pstBufAttr->u32PhyAddr[s32Index];
        bufferAttr.u32FrameIndex[s32Index] = pstBufAttr->u32BuffIndex[s32Index];
    }
    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_ATTACH_EXTERNBUF, &bufferAttr);

    return Ret;
#else
    HI_ERR_VO("Unsupport external buffer.\n");
    return HI_ERR_VO_NOT_SUPPORT;
#endif
}


HI_S32 HI_MPI_VO_SetQuickOutputEnable(HI_HANDLE hWindow, HI_BOOL bQuickOutputEnable)
{
    VO_WIN_SET_QUICK_OUTPUT_S stQuickOutputAttr;
    HI_S32      Ret;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    stQuickOutputAttr.hWindow = hWindow;
    stQuickOutputAttr.bQuickOutputEnable = bQuickOutputEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_SET_QUICK_OUTPUT, &stQuickOutputAttr);

    return Ret;
}


HI_S32 HI_MPI_VO_UseDNRFrame(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32            Ret;
    VO_WIN_ENABLE_S   VoWinEnable;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    VoWinEnable.hWindow = hWindow;
    VoWinEnable.bEnable = bEnable;

    Ret = ioctl(g_VoDevFd, CMD_VO_USEDNRFRAME, &VoWinEnable);

    return Ret;
}


HI_S32 HI_MPI_VO_AlgControl(const HI_UNF_ALG_CONTROL_S *pAlgControl)
{
    HI_S32            Ret;
    HI_UNF_ALG_CONTROL_S VoAlgControl;

    if (NULL == pAlgControl)
    {
        HI_ERR_VO("para pAlgControl is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (HI_ALG_TYPE_BUTT <= pAlgControl->enAlgType)
    {
        HI_ERR_VO("para enAlgType is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((pAlgControl->bEnable != HI_TRUE)
            && (pAlgControl->bEnable != HI_FALSE))
    {
        HI_ERR_VO("para pAlgControl is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    memcpy(&VoAlgControl, pAlgControl, sizeof(HI_UNF_ALG_CONTROL_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_ALGCONTROL, &VoAlgControl);
    return Ret;
}



HI_S32 HI_MPI_VO_CapturePictureExt(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture,  HI_UNF_CAPTURE_MEM_MODE_S *pstCapMode)
{
    HI_S32            Ret;
    VO_WIN_CAPTURE_NEW_S VoWinCapture;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pstCapPicture)
    {
        HI_ERR_VO("para pstCapPicture is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    if (!pstCapMode)
    {
        HI_ERR_VO("para pstCapMode is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }


    if( pstCapMode->enAllocMemType == HI_UNF_CAPTURE_NO_ALLOC){
        HI_ERR_VO("v300 should not support HI_UNF_CAPTURE_NO_ALLOC mode.\n");
        return HI_ERR_VO_NOT_SUPPORT;
    }

    CHECK_VO_INIT();

    VoWinCapture.hWindow = hWindow;
    memcpy(&(VoWinCapture.MemMode), pstCapMode, sizeof(HI_UNF_CAPTURE_MEM_MODE_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CAPTURE_START, &VoWinCapture);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    memcpy(&(VoWinCapture.CapPicture.stOutAllocMode), &(VoWinCapture.MemMode), sizeof(HI_UNF_CAPTURE_MEM_MODE_S));
    memcpy(pstCapPicture, &VoWinCapture.CapPicture, sizeof(HI_UNF_CAPTURE_PICTURE_S));

    return HI_SUCCESS;
}



HI_S32 HI_MPI_VO_CapturePicture(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32            Ret ;
    //HI_SYS_VERSION_S pstVersion;
    HI_UNF_CAPTURE_MEM_MODE_S stCapMode;

    stCapMode.enAllocMemType = HI_UNF_CAPTURE_DRIVER_ALLOC;
    Ret = HI_MPI_VO_CapturePictureExt(hWindow, pstCapPicture,  &stCapMode);
    return Ret;
}


HI_S32 HI_MPI_VO_CapturePictureRelease(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32            Ret ;
    VO_WIN_CAPTURE_FREE_S   VoWinRls;
    //HI_SYS_VERSION_S pstVersion;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (!pstCapPicture)
    {
        HI_ERR_VO("para pstCapPicture is null.\n");
        return HI_ERR_VO_NULL_PTR;
    }

    CHECK_VO_INIT();

    /*  release freezed frame*/
    VoWinRls.hWindow = hWindow;

    memcpy(&(VoWinRls.MemMode), &(pstCapPicture->stOutAllocMode), sizeof(HI_UNF_CAPTURE_MEM_MODE_S));

    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_CAPTURE_FREE, &VoWinRls);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_VO("HI_MPI_VO_CapturePictureRelease fail (INVALID_PARA)\r\n");
        return Ret;
    }
    return HI_SUCCESS;
}


HI_S32 HI_MPI_VO_GetWindowFrameInfo(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S  *pFrame)
{
    HI_S32            Ret ;
    HI_UNF_VO_FRAMEINFO_S stFrame;
    VO_WIN_FRAMEINFO_S  stFrameInfo;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if (pFrame == HI_NULL)
    {
        HI_ERR_VO("pFrame is null .\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();
    stFrameInfo.hWin = hWindow;
    stFrameInfo.pFrameInfo = &stFrame;


    Ret = ioctl(g_VoDevFd, CMD_VO_WIN_GETLATESTFRAME, &stFrameInfo);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_VO("HI_MPI_VO_SetWinFrameRate fail (INVALID_PARA)\r\n");
        return Ret;
    }

    *pFrame = stFrame;

    return HI_SUCCESS;

}
HI_S32 HI_MPI_VO_SetWinRestHQ(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32              ret;
    VO_WIN_RESET_HQ_S   stRstHQ;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_VO("para hWindow is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
            &&(bEnable != HI_FALSE))
    {
        HI_ERR_VO("para bEnable is invalid.\n");
        return HI_ERR_VO_INVALID_PARA;
    }

    CHECK_VO_INIT();

    stRstHQ.hWin = hWindow;
    stRstHQ.bEnable = bEnable;

    ret = ioctl(g_VoDevFd, CMD_VO_WIN_SET_RESET_HQ, &stRstHQ);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_VO("HI_MPI_VO_SetWinRestHQ failed\r\n");
        return ret;
    }

    return HI_SUCCESS;
}
#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

