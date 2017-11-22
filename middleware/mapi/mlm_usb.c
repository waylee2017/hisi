/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/
#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "mapi_inner.h"
#include "mlm_usb.h"



#if 0
#define MLUSB_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLUSB_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLUSB_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLUSB_DEBUG(fmt, args...) {}
#endif

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


typedef void (*USBDevCallback)(MMT_USB_DeviceStatus_E type, MBT_CHAR *pstringName);



/*
*说明：注册设备回调函数。
*输入参数：
*USBDevCallback: 输入参数，注册的回调函数指针，当有USB设备插入或拔出时调用此函数通知上层。参数type为设备的状态，插入或者拔出，pstringName为设备名字。
*输出参数:
*			无。
*		返回：
*		         MM_NO_ERROR:成功。
*			错误号：失败。
*/
MBT_VOID MLMF_USB_RigesterCallback(MBT_VOID (* USBDevCallback)(MMT_USB_DeviceStatus_E type,MBT_CHAR*pstringName))
{
    //gpfusbCB = USBDevCallback;
}

/*
*说明：获取设备的逻辑设备数。有的设备会划分成逻辑设备，每个逻辑设备都有一个设备号。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		USB设备数量。这里暂时只关心存储设备。
*/
MBT_U32 MLMF_USB_GetDevVolNum(MBT_VOID)
{
	
}
/*
*说明：读取USB设备信息。
*输入参数：
*			pstUsbDevInfo: 设备信息的buffer。
*			u32DevNumber: 设备信息buffer的长度。
*输出参数:
*			pstUsbDevInfo：设备信息。
*		返回：
*		         MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_USB_ReadDevInfo(MST_USB_DeviceVInfo_T *pstUsbDevInfo,MBT_U32 u32DevNumber,MBT_U32 *pu32ReadNumber)
{
	
}

/*************************************************************
Function: USBAPI_UsbVfsInfo
Description: Get the information of the usb
Input: RTT_U8 *pu8Root
Output: USBAPIT_UsbVfsInfo *pstVfsInfo
return: ST_ErrorCode_t
*************************************************************/
MMT_STB_ErrorCode_E MLMF_USB_VfsInfo(MBT_CHAR *pstrMountName, MST_USB_VfsInfo_T *pstVfsInfo)
{
	
}

MMT_STB_ErrorCode_E MLMF_USB_Format(MBT_U8 *MountPath, MBT_U8 *DevicePath)
{
	
}

MMT_STB_ErrorCode_E MLF_UsbInit(MBT_VOID)
{
	
}

MMT_STB_ErrorCode_E MLF_UsbTerm(MBT_VOID)
{
	
}

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */


