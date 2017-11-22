/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_driver.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_DRIVER_H_
#define _JPEG_DRIVER_H_


/*********************************add include here******************************/
#include "jpeg_type.h"
#include "hi_drv_jpeg.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/*******************************************************************************
 * Function:        HI_JPG_Open
 * Description:   open deivce. CNcomment:打开JPEG硬件解码器
 * Input:           none
 * Output:          none
 * Return:          HI_SUCCESS:  success.   CNcomment:成功
 *                  HI_FAILURE    system error. CNcomment:系统调用错误
 * Others: 
*******************************************************************************/
HI_S32 HI_JPG_Open(HI_VOID);

/*******************************************************************************
 * Function:        HI_JPG_Close
 * Description:    close jpg device. CNcomment:关闭JPEG硬件解码器
 * Input:           none
 * Output:          HI_SUCCESS Success.     CNcomment:成功
 *                  HI_FAILURE    system error. CNcomment:系统错误
 *                    
 * Return:          none
 * Others:    
*******************************************************************************/
HI_S32 HI_JPG_Close(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_GetDevice
 * Description:     get jpg device. CNcomment:获取JPG硬件解码设备 
 * Data Accessed:   
 * Data Updated:  
 * Input:           none
 * Output:         none
 * Return:          HI_SUCCESS  Success.     CNcomment:成功       
 *                  HI_ERR_JPG_DEV_NOOPEN  device not open. CNcomment:设备未开启
 *                  HI_ERR_JPG_DEC_BUSY   busy. CNcomment:设备忙
 *                  HI_FAILURE             system error. CNcomment:系统错误
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetDevice(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_ReleaseDevice
 * Description:    release the jpg hardware. CNcomment:释放JPG硬件解码设备
 * Data Accessed:   
 * Data Updated:  
 * Input:           none
 * Output:          none
 * Return:          HI_SUCCESS    Success. CNcomment:成功         
 *                  HI_ERR_JPG_DEV_NOOPEN  device not open. CNcomment:设备未开启
 *                  HI_FAILURE             system error. CNcomment:系统错误
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_ReleaseDevice(HI_VOID);

/*******************************************************************************
 * Function:        JPGDRV_GetRegisterAddr
 * Description:    get user address of register. CNcomment:获取寄存器用户态地址
 * Data Accessed:   
 * Data Updated:  
 * Input:           none
 * Output:          pRegPtr :pointer of address that is map to user space. CNcomment:寄存器映射到用户态的地址指针
 * Return:          HI_SUCCESS     Success. CNcomment:成功        
 *                  HI_ERR_JPG_DEV_NOOPEN  device not open. CNcomment:设备未开启
 *                  HI_FAILURE             system error. CNcomment:系统错误
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetRegisterAddr(HI_VOID **pRegPtr, HI_VOID **pRstRegPtr, HI_VOID **pVhbRegPtr);

/*******************************************************************************
 * Function:        JPGDRV_GetIntStatus
 * Description:    get interrupt state. CNcomment:获取中断状态
 * Data Accessed:   
 * Data Updated:  
 * Input:           TimeOut       : time out value. CNcomment:超时值
 * Output:          pu32IntStatus : the state of interrupt. CNcomment:中断状态
 * Return:          HI_SUCCESS      Success. CNcomment:成功       
 *                  HI_ERR_JPG_DEV_NOOPEN  device not open. CNcomment:设备未开启
 *                  HI_ERR_JPG_TIME_OUT    time out error.  CNcomment:超时错误
 *                  HI_FAILURE             system error. CNcomment:系统错误
 * Others:       
*******************************************************************************/
HI_S32 JPGDRV_GetIntStatus(JPG_INTTYPE_E *pIntType, HI_U32 TimeOut);


#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_DRIVER_H_ */
