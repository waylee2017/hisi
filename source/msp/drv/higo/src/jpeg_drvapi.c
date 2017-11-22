/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_drvapi.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/mman.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>
#include <linux/string.h>
#include <linux/list.h>
#include <asm/cacheflush.h>
#include <linux/time.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
#include <linux/smp_lock.h>
#endif

#include "drv_jpeg_ext.h" /** 通过函数注册获取函数指针 **/
#include "hi_drv_jpeg.h"
#include "hi_module.h"
#include "hi_drv_module.h"

#include "jpeg_common.h"
#include "jpeg_type.h"
#include "hi_jpeg_reg.h"

/*****************************************************************************/


/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static HI_VOID *s_pRegAddr = HI_NULL; 

JPEG_EXPORT_FUNC_S  *ps_JpegExportFuncs = NULL;

/******************************* API declaration *****************************/


/******************************* API realize *****************************/


/***************************************************************************************
* func          : HI_JPG_Open
* description   : CNcomment: 打开jpeg设备，函数指针初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_JPG_Open(HI_VOID)
{
	HI_DRV_MODULE_GetFunction(HI_ID_JPGDEC, (HI_VOID**)&ps_JpegExportFuncs);
    if(NULL == ps_JpegExportFuncs)
    {
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : HI_JPG_Close
* description   : CNcomment: 关闭解码器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_JPG_Close(HI_VOID)
{
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : JPGDRV_GetDevice
* description   : CNcomment: 获取解码设备，阻塞APP解码器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGDRV_GetDevice(HI_VOID)
{
    HI_S32 Ret;
	Ret = ps_JpegExportFuncs->pfnJpegGetDev();
    if(HI_FAILURE == Ret)
	{
        return Ret;
    }
    return HI_SUCCESS;
}
HI_S32 JPGDRV_ReleaseDevice(HI_VOID)
{
    return HI_SUCCESS;
}
/***************************************************************************************
* func          : JPGDRV_GetRegisterAddr
* description   : CNcomment: 获取硬件寄存器地址 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGDRV_GetRegisterAddr(HI_VOID **pRegPtr, HI_VOID **pRstRegPtr, HI_VOID **pVhbRegPtr)
{

    *pRegPtr = ioremap_nocache(JPGD_REG_BASEADDR, JPGD_REG_LENGTH);
    s_pRegAddr = *pRegPtr;
    {
        HI_U32  *pMaskReg = (HI_U32 *)s_pRegAddr + JPGD_REG_INTMASK;
        pMaskReg[0] = 0x0;
    }	
    return HI_SUCCESS;
	
}

HI_S32 JPGDRV_GetIntStatus(JPG_INTTYPE_E *pIntType, HI_U32 TimeOut)
{
    HI_S32 Ret;
    JPG_GETINTTYPE_S GetIntType;
   
    GetIntType.IntType = JPG_INTTYPE_BUTT;
    GetIntType.TimeOut = 1000;//TimeOut;

	Ret = ps_JpegExportFuncs->pfnJpegGetIntStatus(&GetIntType);
    if (HI_SUCCESS != Ret)
    {   
        return Ret;
    }
    
    *pIntType = GetIntType.IntType;
    
    return HI_SUCCESS;

}
