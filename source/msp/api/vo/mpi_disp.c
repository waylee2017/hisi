/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_disp.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
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

#include "hi_mpi_disp.h"
#include "drv_struct_ext.h"
#include "hi_error_mpi.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif


static HI_S32            g_DispDevFd    = -1;
static const HI_CHAR     g_DispDevName[] ="/dev/"UMAP_DEVNAME_DISP;
static pthread_mutex_t   g_DispMutex = PTHREAD_MUTEX_INITIALIZER;

#define HI_DISP_LOCK()       (void)pthread_mutex_lock(&g_DispMutex);
#define HI_DISP_UNLOCK()     (void)pthread_mutex_unlock(&g_DispMutex);

#define CHECK_DISP_INIT()\
do{\
    HI_DISP_LOCK();\
    if (g_DispDevFd < 0)\
    {\
        HI_ERR_DISP("DISP is not init.\n");\
        HI_DISP_UNLOCK();\
        return HI_ERR_DISP_NO_INIT;\
    }\
    HI_DISP_UNLOCK();\
}while(0)


HI_S32 HI_MPI_DISP_Init(HI_VOID)
{
    HI_DISP_LOCK();

    //HI_INFO_DISP("%s\n", s_version);

    if (g_DispDevFd > 0)
    {
        HI_DISP_UNLOCK();
        return HI_SUCCESS;
    }

    g_DispDevFd = open(g_DispDevName, O_RDWR|O_NONBLOCK, 0);

    if (g_DispDevFd < 0)
    {
        HI_FATAL_DISP("open DISP err.\n");
        HI_DISP_UNLOCK();
        return HI_ERR_DISP_DEV_OPEN_ERR;
    }

    HI_DISP_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_DeInit(HI_VOID)
{
    HI_S32 Ret;

    HI_DISP_LOCK();

    if (g_DispDevFd < 0)
    {
        HI_DISP_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = close(g_DispDevFd);

    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_DISP("DeInit DISP err.\n");
        HI_DISP_UNLOCK();
        return HI_ERR_DISP_DEV_CLOSE_ERR;
    }

    g_DispDevFd = -1;

    HI_DISP_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32          Ret;
    DISP_ATTACH_S   DispAttach;

    if (enDstDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDstDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enSrcDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enSrcDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispAttach.enDstDisp = enDstDisp;
    DispAttach.enSrcDisp = enSrcDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_ATTACH, &DispAttach);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32          Ret;
    DISP_ATTACH_S   DispAttach;

    if (enDstDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDstDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enSrcDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enSrcDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispAttach.enDstDisp = enDstDisp;
    DispAttach.enSrcDisp = enSrcDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_DETACH, &DispAttach);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_Open(HI_UNF_DISP_E enDisp)
{
    HI_S32         Ret;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    Ret = ioctl(g_DispDevFd, CMD_DISP_OPEN, &enDisp);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_Close(HI_UNF_DISP_E enDisp)
{
    HI_S32      Ret;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    Ret = ioctl(g_DispDevFd, CMD_DISP_CLOSE, &enDisp);

    return Ret;
}

HI_S32 HI_MPI_DISP_AttachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer)
{
    HI_S32       Ret;
    DISP_OSD_S   DispOsd;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enLayer >= HI_UNF_DISP_FREE_LAYER_BUTT)
    {
        HI_ERR_DISP("para enLayer is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispOsd.enDisp = enDisp;
    DispOsd.enLayer = enLayer;

    Ret = ioctl(g_DispDevFd, CMD_DISP_AttachOsd, &DispOsd);

    return Ret;
}

HI_S32 HI_MPI_DISP_DetachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer)
{
    HI_S32       Ret;
    DISP_OSD_S   DispOsd;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enLayer >= HI_UNF_DISP_FREE_LAYER_BUTT)
    {
        HI_ERR_DISP("para enLayer is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispOsd.enDisp = enDisp;
    DispOsd.enLayer = enLayer;

    Ret = ioctl(g_DispDevFd, CMD_DISP_DetachOsd, &DispOsd);

    return Ret;
}

HI_S32 HI_MPI_DISP_SetEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    HI_S32          Ret;
    DISP_ENABLE_S   DispEnable;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para bEnable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispEnable.enDisp = enDisp;
    DispEnable.bEnable = bEnable;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_ENABLE, &DispEnable);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable)
{
    HI_S32          Ret;
    DISP_ENABLE_S   DispEnable;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pbEnable)
    {
        HI_ERR_DISP("para pbEnable is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispEnable.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_ENABLE, &DispEnable);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pbEnable = DispEnable.bEnable;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enIntfType)
{
    HI_S32          Ret;
    DISP_INTF_S     DispIntf;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enIntfType >= HI_UNF_DISP_INTF_TYPE_BUTT)
    {
        HI_ERR_DISP("para enIntfType is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispIntf.enDisp = enDisp;
    DispIntf.IntfType = enIntfType;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_INTF, &DispIntf);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType)
{
    HI_S32          Ret;
    DISP_INTF_S     DispIntf;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!penIntfType)
    {
        HI_ERR_DISP("para penIntfType is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispIntf.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_INTF, &DispIntf);
    if (Ret != HI_SUCCESS)
	{
		return Ret;
	}

    *penIntfType = DispIntf.IntfType;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat)
{
    HI_S32          Ret;
    DISP_FORMAT_S   DispFormat;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enEncodingFormat > HI_UNF_ENC_FMT_VESA_2048X1152_60)
    {
        HI_ERR_DISP("para enEncodingFormat is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispFormat.enDisp = enDisp;
    DispFormat.EncodingFormat = enEncodingFormat;

    if ((enEncodingFormat >= HI_UNF_ENC_FMT_861D_640X480_60) && (enEncodingFormat <= HI_UNF_ENC_FMT_VESA_2048X1152_60))
    {
        Ret = HI_MPI_DISP_SetIntfType(enDisp, HI_UNF_DISP_INTF_TYPE_LCD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_DISP("call HI_MPI_DISP_SetIntfType failed.\n");
            return Ret;
        }

        Ret = HI_MPI_DISP_SetLcdDefaultPara(enDisp, ((HI_U32)enEncodingFormat - (HI_U32)HI_UNF_ENC_FMT_861D_640X480_60));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_DISP("call HI_MPI_DISP_GetLcdDefaultPara failed.\n");
            return Ret;
        }
    }
    else
    {
        Ret = HI_MPI_DISP_SetIntfType(enDisp, HI_UNF_DISP_INTF_TYPE_TV);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_DISP("call HI_MPI_DISP_SetIntfType failed.\n");
            return Ret;
        }

        Ret = ioctl(g_DispDevFd, CMD_DISP_SET_FORMAT, &DispFormat);
        if (Ret != HI_SUCCESS)
        {
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncodingFormat)
{
    HI_S32                   Ret;
    DISP_FORMAT_S            DispFormat;
    HI_UNF_DISP_INTF_TYPE_E  enIntfType;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!penEncodingFormat)
    {
        HI_ERR_DISP("para penEncodingFormat is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    Ret = HI_MPI_DISP_GetIntfType(enDisp, &enIntfType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_DISP("call HI_MPI_DISP_GetIntfType failed.\n");
        return Ret;
    }

    DispFormat.enDisp = enDisp;

    if (HI_UNF_DISP_INTF_TYPE_LCD == enIntfType)
    {
        Ret = ioctl(g_DispDevFd, CMD_DISP_GET_LCD_FORMAT, &DispFormat);
        if (Ret != HI_SUCCESS)
    	{
    		return Ret;
    	}

        *penEncodingFormat = (HI_UNF_ENC_FMT_E)((int)DispFormat.EncodingFormat + (int)HI_UNF_ENC_FMT_861D_640X480_60);
    }
    else
    {
        Ret = ioctl(g_DispDevFd, CMD_DISP_GET_FORMAT, &DispFormat);
        if (Ret != HI_SUCCESS)
    	{
    		return Ret;
    	}

        *penEncodingFormat = DispFormat.EncodingFormat;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetDacMode(const HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    HI_S32          Ret;
    HI_U32          i;

    if (!pstDacMode)
    {
        HI_ERR_DISP("para pstDacMode is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if ((pstDacMode->bScartEnable != HI_TRUE)
      &&(pstDacMode->bScartEnable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para pstDacMode->bScartEnable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((pstDacMode->bBt1120Enable!= HI_TRUE)
      &&(pstDacMode->bBt1120Enable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para pstDacMode->bBt1120Enable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((pstDacMode->bBt656Enable!= HI_TRUE)
      &&(pstDacMode->bBt656Enable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para pstDacMode->bBt656Enable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    for (i=0; i<MAX_DAC_NUM; i++)
    {
        if (pstDacMode->enDacMode[i] >= HI_UNF_DISP_DAC_MODE_BUTT)
        {
            HI_ERR_DISP("para pstDacMode->enDacMode[%d] is invalid.\n", i);
            return HI_ERR_DISP_INVALID_PARA;
        }
    }

    CHECK_DISP_INIT();

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_DAC, pstDacMode);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    HI_S32          Ret;

    if (!pstDacMode)
    {
        HI_ERR_DISP("para pstDacMode is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_DAC, pstDacMode);
    if (Ret != HI_SUCCESS)
	{
		return Ret;
	}

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_ERR_DISP("not support Set Custom LCD Timing.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_GetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_ERR_DISP("not support Set Custom LCD Timing.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}


HI_S32 HI_MPI_DISP_GetLcdDefaultPara(HI_U32 enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
#ifdef HI_DISP_LCD_SUPPORT
    HI_S32          Ret;
    DISP_GET_LCD_DEFAULTPARA_S DispLcdGetDefaultParm;

    if (!pstLcdPara)
    {
        HI_ERR_DISP("para pstLcdPara is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispLcdGetDefaultParm.enLcdFmt = enLcdFmt;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_LCD_DEF_PARA, &DispLcdGetDefaultParm);
    if (Ret != HI_SUCCESS)
    {
    	return Ret;
    }

    memcpy(pstLcdPara, &DispLcdGetDefaultParm.LcdPara, sizeof(HI_UNF_DISP_LCD_PARA_S));

    return HI_SUCCESS;
#else
    HI_ERR_DISP("Unsupport LCD.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SetLcdDefaultPara(HI_UNF_DISP_E enDisp, HI_U32 enLcdFmt)
{
#ifdef HI_DISP_LCD_SUPPORT
    HI_S32          Ret;
    DISP_SET_LCD_DEFAULTPARA_S DispLcdSetDefaultParm;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enLcdFmt >= HI_UNF_ENC_FMT_BUTT)
    {
        HI_ERR_DISP("para enEncodingFormat is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispLcdSetDefaultParm.enDisp   = enDisp;
    DispLcdSetDefaultParm.enLcdFmt = enLcdFmt;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_LCD_DEF_PARA, &DispLcdSetDefaultParm);
    if (Ret != HI_SUCCESS)
    {
    	return Ret;
    }

    return HI_SUCCESS;
#else
    HI_ERR_DISP("Unsupport LCD.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_LAYER_ZORDER_E enZFlag)
{
	HI_S32			 Ret;
	DISP_ZORDER_S	 DispZorder;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enLayer >= HI_UNF_DISP_LAYER_BUTT)
    {
        HI_ERR_DISP("para enLayer is invalid.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if (enZFlag >= HI_LAYER_ZORDER_BUTT)
    {
        HI_ERR_DISP("para enZFlag is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

	DispZorder.enDisp = enDisp;
	DispZorder.Layer = enLayer;
	DispZorder.ZFlag = enZFlag;

	Ret = ioctl(g_DispDevFd, CMD_DISP_SET_ZORDER, &DispZorder);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_U32 *pu32Zorder)
{
    HI_S32			 Ret;
    DISP_ORDER_S     DispOrder;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enLayer >= HI_UNF_DISP_LAYER_BUTT)
	{
		HI_ERR_DISP("para enLayer is invalid.\n");
		return HI_ERR_DISP_NULL_PTR;
	}

    if (!pu32Zorder)
    {
        HI_ERR_DISP("para pu32Zorder is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

	DispOrder.enDisp = enDisp;
	DispOrder.Layer = enLayer;

	Ret = ioctl(g_DispDevFd, CMD_DISP_GET_ORDER, &DispOrder);
    if (Ret != HI_SUCCESS)
	{
		return Ret;
	}

    *pu32Zorder = DispOrder.Order;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetBgColor(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32          Ret;
    DISP_BGC_S      DispBgc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstBgColor)
    {
        HI_ERR_DISP("para pstBgColor is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispBgc.enDisp = enDisp;
    memcpy(&DispBgc.BgColor, pstBgColor, sizeof(HI_UNF_DISP_BG_COLOR_S));

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_BGC, &DispBgc);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32          Ret;
    DISP_BGC_S      DispBgc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstBgColor)
    {
        HI_ERR_DISP("para pstBgColor is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispBgc.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_BGC, &DispBgc);
    if (Ret != HI_SUCCESS)
	{
		return Ret;
	}

    memcpy(pstBgColor, &DispBgc.BgColor, sizeof(HI_UNF_DISP_BG_COLOR_S));

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 u32Brightness)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (u32Brightness > 100)
    {
        HI_ERR_DISP("para u32Brightness is %d invalid.\n", u32Brightness);
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;
    DispCsc.CscValue = u32Brightness;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_BRIGHT, &DispCsc);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetBrightness(HI_UNF_DISP_E enDisp, HI_U32 *pu32Brightness)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pu32Brightness)
    {
        HI_ERR_DISP("para pu32Brightness is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_BRIGHT, &DispCsc);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32Brightness = DispCsc.CscValue;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 u32Contrast)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (u32Contrast > 100)
    {
        HI_ERR_DISP("para u32Contrast is %d invalid.\n", u32Contrast);
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;
    DispCsc.CscValue = u32Contrast;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_CONTRAST, &DispCsc);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetContrast(HI_UNF_DISP_E enDisp, HI_U32 *pu32Contrast)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pu32Contrast)
    {
        HI_ERR_DISP("para pu32Contrast is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_CONTRAST, &DispCsc);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32Contrast = DispCsc.CscValue;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 u32Saturation)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (u32Saturation > 100)
    {
        HI_ERR_DISP("para u32Saturation is %d invalid.\n", u32Saturation);
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;
    DispCsc.CscValue = u32Saturation;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_SATURATION, &DispCsc);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetSaturation(HI_UNF_DISP_E enDisp, HI_U32 *pu32Saturation)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pu32Saturation)
    {
        HI_ERR_DISP("para pu32Saturation is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_SATURATION, &DispCsc);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32Saturation = DispCsc.CscValue;

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 u32HuePlus)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (u32HuePlus > 100)
    {
        HI_ERR_DISP("para u32HuePlus is %d invalid.\n", u32HuePlus);
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;
    DispCsc.CscValue = u32HuePlus;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_HUE, &DispCsc);

    return Ret;
}

HI_S32 HI_MPI_DISP_GetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 *pu32HuePlus)
{
    HI_S32          Ret;
    DISP_CSC_S      DispCsc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pu32HuePlus)
    {
        HI_ERR_DISP("para pu32HuePlus is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispCsc.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_HUE, &DispCsc);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *pu32HuePlus = DispCsc.CscValue;

    return HI_SUCCESS;
}


HI_S32 HI_MPI_DISP_SetColorTemperature(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_COLORTEMPERATURE_S *colortemp)
{
    HI_S32          Ret;
    DISP_COLORTEMP_S      DispColorTemp;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if(!colortemp)
    {
        HI_ERR_DISP("ptr color tempe is null.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((colortemp->u32Kr > 100)
        || (colortemp->u32Kg > 100)
        || (colortemp->u32Kb > 100))
    {
        HI_ERR_DISP("param color tempe is larger than 100.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }


    CHECK_DISP_INIT();

    DispColorTemp.enDisp = enDisp;

    DispColorTemp.colortempvalue.u32Kr = colortemp->u32Kr;
    DispColorTemp.colortempvalue.u32Kg = colortemp->u32Kg;
    DispColorTemp.colortempvalue.u32Kb = colortemp->u32Kb;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_COLORTEMP, &DispColorTemp);

    return Ret;

}

HI_S32 HI_MPI_DISP_GetColorTemperature(HI_UNF_DISP_E enDisp, HI_UNF_DISP_COLORTEMPERATURE_S *colortemp)
{
   HI_S32          Ret;
   DISP_COLORTEMP_S      DispColorTemp;

   if (enDisp >= HI_UNF_DISP_BUTT)
   {
       HI_ERR_DISP("para enDisp is invalid.\n");
       return HI_ERR_DISP_INVALID_PARA;
   }

   if(!colortemp)
   {
       HI_ERR_DISP("ptr color tempe is null.\n");
       return HI_ERR_DISP_INVALID_PARA;
   }

   CHECK_DISP_INIT();

   DispColorTemp.enDisp = enDisp;

   Ret = ioctl(g_DispDevFd, CMD_DISP_GET_COLORTEMP, &DispColorTemp);

   colortemp->u32Kr = DispColorTemp.colortempvalue.u32Kr;
   colortemp->u32Kg = DispColorTemp.colortempvalue.u32Kg;
   colortemp->u32Kb = DispColorTemp.colortempvalue.u32Kb;
   return Ret;

}

HI_S32 HI_MPI_DISP_SetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
#ifdef HI_DISP_ACC_SUPPORT
    HI_S32          Ret;
    DISP_ACC_S      DispAcc;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((bEnable != HI_TRUE)
      &&(bEnable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para bEnable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispAcc.enDisp = enDisp;
    DispAcc.bEnable = bEnable;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_ACC, &DispAcc);

    return Ret;
#else
    HI_ERR_DISP("Unsupport ACC.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SendTtxData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_TTX_DATA_S *pstTtxData)
{
#ifdef HI_DISP_TTX_SUPPORT
    HI_S32          Ret;
    DISP_TTX_S      DispTtx;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstTtxData)
    {
        HI_ERR_DISP("para pstTtxData is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if (!(pstTtxData->pu8DataAddr))
    {
        HI_ERR_DISP("para pstTtxData->pu8DataAddr is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if (!(pstTtxData->u32DataLen))
    {
        return HI_SUCCESS;
    }

    CHECK_DISP_INIT();

    DispTtx.enDisp = enDisp;
    memcpy(&DispTtx.TtxData, pstTtxData, sizeof(HI_UNF_DISP_TTX_DATA_S));

    Ret = ioctl(g_DispDevFd, CMD_DISP_SEND_TTX, &DispTtx);

    return Ret;
#else
    HI_ERR_DISP("Unsupport TTX.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SendVbiData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_VBI_DATA_S *pstVbiData)
{
#ifdef HI_DISP_CC_SUPPORT
    HI_S32          Ret;
    DISP_VBI_S      DispVbi;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstVbiData)
    {
        HI_ERR_DISP("para pstVbiData is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if (!(pstVbiData->pu8DataAddr))
    {
        HI_ERR_DISP("para pstVbiData->pu8DataAddr is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if (!(pstVbiData->u32DataLen))
    {
        return HI_SUCCESS;
    }

    CHECK_DISP_INIT();

    DispVbi.enDisp = enDisp;
    memcpy(&DispVbi.VbiData, pstVbiData, sizeof(HI_UNF_DISP_VBI_DATA_S));

    Ret = ioctl(g_DispDevFd, CMD_DISP_SEND_VBI, &DispVbi);

    return Ret;
#else
    HI_ERR_DISP("Unsupport VBI.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SetWss(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_WSS_DATA_S *pstWssData)
{
#ifdef HI_DISP_CGMS_SUPPORT
    HI_S32          Ret;
    DISP_WSS_S      DispWss;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstWssData)
    {
        HI_ERR_DISP("para pstWssData is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    if ((pstWssData->bEnable != HI_TRUE)
      &&(pstWssData->bEnable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para pstWssData->bEnable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispWss.enDisp = enDisp;
    memcpy(&DispWss.WssData, pstWssData, sizeof(HI_UNF_DISP_WSS_DATA_S));

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_WSS, &DispWss);

    return Ret;
#else
    HI_ERR_DISP("Unsupport WSS.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMode)
{
#ifdef HI_DISP_MACROVISION_SUPPORT
    HI_S32          Ret;
    DISP_MCRVSN_S   DispMcrvsn;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (enMode >= HI_UNF_DISP_MACROVISION_MODE_BUTT)
    {
        HI_ERR_DISP("para enMode is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    CHECK_DISP_INIT();

    DispMcrvsn.enDisp = enDisp;
    DispMcrvsn.Mcrvsn = enMode;

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_MCRVSN, &DispMcrvsn);

    return Ret;
#else
    HI_ERR_DISP("Unsupport MACROVISION.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_GetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E *penMode)
{
#ifdef HI_DISP_MACROVISION_SUPPORT
    HI_S32          Ret;
    DISP_MCRVSN_S   DispMcrvsn;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!penMode)
    {
        HI_ERR_DISP("para penMode is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispMcrvsn.enDisp = enDisp;

    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_MCRVSN, &DispMcrvsn);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    *penMode = DispMcrvsn.Mcrvsn;

    return HI_SUCCESS;
#else
    HI_ERR_DISP("Unsupport MACROVISION.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}

HI_S32 HI_MPI_DISP_SetHdmiIntf(HI_UNF_DISP_E enDisp, const DISP_HDMI_SETTING_S *pstCfg)
{
    HI_S32          Ret;
    DISP_HDMIINF_S  DispHmdiIntf;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstCfg)
    {
        HI_ERR_DISP("para pstCfg is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispHmdiIntf.enDisp = enDisp;
    memcpy(&(DispHmdiIntf.HDMIInf), pstCfg, sizeof(DISP_HDMI_SETTING_S));
    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_HDMI_INTF, &DispHmdiIntf);
    //printf("CMD_DISP_SET_HDMI_INTF invoke (%d):0x%x\n", g_DispDevFd, Ret);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_DISP_GetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg)
{
    HI_S32          Ret;
    DISP_HDMIINF_S  DispHmdiIntf;

    if (enDisp >= HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (!pstCfg)
    {
        HI_ERR_DISP("para pstCfg is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    CHECK_DISP_INIT();

    DispHmdiIntf.enDisp = enDisp;
    Ret = ioctl(g_DispDevFd, CMD_DISP_GET_HDMI_INTF, &DispHmdiIntf);
    //printf("CMD_DISP_GET_HDMI_INTF invoke (%d):0x%x\n", g_DispDevFd, Ret);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    memcpy(pstCfg, &(DispHmdiIntf.HDMIInf), sizeof(DISP_HDMI_SETTING_S));

    return HI_SUCCESS;
}

/* MPI_disp interface for CGMS; 2011-06-02, Huang Minghu */
HI_S32 HI_MPI_DISP_SetCgms(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_CGMS_CFG_S *pstCgmsCgf)
{
#ifdef HI_DISP_CGMS_SUPPORT
    HI_S32      Ret = 0;
    DISP_CGMS_S DispCgms;

    /* DISP validity check */
    if(enDisp > HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* pointer validity check */
    if (!pstCgmsCgf)
    {
        HI_ERR_DISP("para pstCgmsCgf is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    /* check DISP initialization status */
    CHECK_DISP_INIT();

    /* parameters assignment */
    DispCgms.enDisp    = enDisp;
    DispCgms.stCgmsCfg = *pstCgmsCgf;

    /* check validity of pstCgmsCgf->bEnable */
    if (  (pstCgmsCgf->bEnable != HI_TRUE)
        &&(pstCgmsCgf->bEnable != HI_FALSE)
       )
    {
        HI_ERR_DISP("para pstCgmsCgf->bEnable is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* check validity of pstCgmsCgf->enType */
    if (  (pstCgmsCgf->enType != HI_UNF_DISP_CGMS_TYPE_A)
        && (pstCgmsCgf->enType != HI_UNF_DISP_CGMS_TYPE_B)
       )
    {
        HI_ERR_DISP("para pstCgmsCgf->enType is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* check validity of pstCgmsCgf->enMode */
    if (  (pstCgmsCgf->enMode != HI_UNF_DISP_CGMS_MODE_COPY_FREELY)
        && (pstCgmsCgf->enMode != HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE)
        && (pstCgmsCgf->enMode != HI_UNF_DISP_CGMS_MODE_COPY_ONCE)
        && (pstCgmsCgf->enMode != HI_UNF_DISP_CGMS_MODE_COPY_NEVER)
       )
    {
        HI_ERR_DISP("para pstCgmsCgf->enMode is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* call SET_CGMS by kernel */
    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_CGMS, &DispCgms);

    return Ret;
#else
    HI_ERR_DISP("Unsupport CGMS.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
#endif
}
/* MPI_disp interface for Set display output rect */
HI_S32 HI_MPI_DISP_SetOutputWin(HI_UNF_DISP_E enDisp, const HI_UNF_RECT_S *pstOutRect)
{
    HI_S32      Ret = 0;
    DISP_OUTRECT_S  DispOutRect;


    /* DISP validity check */
    if(enDisp > HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("para enDisp is invalid.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* pointer validity check */
    if (!pstOutRect)
    {
        HI_ERR_DISP("para pstOutRect is null.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    /* check DISP initialization status */
    CHECK_DISP_INIT();

    DispOutRect.enDisp = enDisp;
    memcpy(&(DispOutRect.stOutRectCfg), pstOutRect, sizeof(HI_UNF_RECT_S));

    /* call SET_CGMS by kernel */
    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_DISP_WIN, &DispOutRect);

    return Ret;

}


HI_S32 HI_MPI_DISP_SetCsc(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
	DISP_TCCSC_S TcCsc_enable;
	HI_S32          Ret;
	static HI_S32            g_DispDevFd_tmp = -1;

	if(g_DispDevFd != -1){
		HI_FATAL_DISP("func:%s should be called first.\n");
		return HI_ERR_DISP_INVALID_OPT;
	}

	HI_DISP_LOCK();

	g_DispDevFd_tmp = open(g_DispDevName, O_RDWR|O_NONBLOCK, 0);

	if (g_DispDevFd_tmp < 0)
	{
		HI_FATAL_DISP("open DISP err.\n");
		HI_DISP_UNLOCK();
		return HI_ERR_DISP_DEV_OPEN_ERR;
	}

	TcCsc_enable.enDisp = enDisp;
	TcCsc_enable.bEnable = bEnable;

	Ret = ioctl(g_DispDevFd_tmp, CMD_DISP_SET_TCCSC, &TcCsc_enable);

	close(g_DispDevFd_tmp);
	g_DispDevFd_tmp = -1;

	HI_DISP_UNLOCK();
	return Ret;

}


HI_S32 HI_MPI_DISP_CreateCast(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CAST_CFG_S *pstCfg, HI_HANDLE *phCast)
{
    HI_FATAL_DISP("Not  Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_DestroyCast(HI_HANDLE phCast)
{
    HI_FATAL_DISP("Not  Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_SetCastEnable(HI_HANDLE phCast, HI_BOOL bEnable)
{
    HI_FATAL_DISP("Not Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_GetCastEnable(HI_HANDLE phCast, HI_BOOL *pbEnable)
{
    HI_FATAL_DISP("Not Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_AcquireCastFrame(HI_HANDLE phCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame)
{
    HI_FATAL_DISP("Not Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_ReleaseCastFrame(HI_HANDLE phCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame)
{
    HI_FATAL_DISP("Not Support Cast.\n");
    return HI_ERR_DISP_NOT_SUPPORT;
}

HI_S32 HI_MPI_DISP_SetDefaultParam(HI_VOID)
{
    HI_S32      Ret = 0;

	HI_UNF_DISP_E enDisp = HI_UNF_DISP_HD0;

    CHECK_DISP_INIT();

    Ret = ioctl(g_DispDevFd, CMD_DISP_SET_DISP_DEFAUL, &enDisp);

    return Ret;
}


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

