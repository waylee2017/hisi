/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_usb.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-14
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_USB_H__ /* 防止头文件被重复引用 */
#define	__MLM_USB_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
/*------------------------Module Constants---------------------------*/
#define mm_usb_nameLen 32
/*------------------------Module Types---------------------------*/
typedef enum _m_usb_devicestatus_e
{
    MM_DEVICE_INSERT,
    MM_DEVICE_REMOVE,
    MM_DEVICE_UNKNOW
}MMT_USB_DeviceStatus_E;

typedef enum _m_usb_devicedrvType_e
{
    MM_DEVICE_DRIVE_TYPE_REMOVEABLE,//设备可移除的
    MM_DEVICE_DRIVE_TYPE_FIXED,//设备不可移除
    MM_DEVICE_DRIVE_TYPE_RAMDISK,//内存盘
    MM_DEVICE_DRIVE_TYPE_UNKNOW
}MMT_USB_DeviceDrvType_E;

typedef struct _m_usb_devicevinfo_t
{
    MMT_USB_DeviceDrvType_E stType;
    MBT_CHAR strMountName[mm_usb_nameLen];
    MBT_CHAR strDeviceName[mm_usb_nameLen];
	MBT_VOID *devId;
}MST_USB_DeviceVInfo_T;	

typedef struct _m_usb_Vfsinfo_t
{
    MBT_CHAR ms8FSType[8];
    MBT_U32 mu32Totalsize;
    MBT_U32 mu32freesize;
    MBT_U32 mu32Usedsize;	
}MST_USB_VfsInfo_T;

/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
/*
*说明：注册设备回调函数。
*输入参数：
*USBDevCallback: 输入参数，注册的回调函数指针，当有USB设备插入或拔出时调用此函数通知上层。参数type为设备的状态，插入或者拔出，pu32Index为设备索引号。
*输出参数:
*			无。
*		返回：
 *		        无。
*/
extern MBT_VOID MLMF_USB_RigesterCallback(MBT_VOID (* USBDevCallback)(MMT_USB_DeviceStatus_E type,MBT_CHAR*pstringName));

/*
*说明：获取设备的逻辑设备数。有的设备会划分成逻辑设备，每个逻辑设备都有一个设备号。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		USB设备数量。这里暂时只关心存储设备。
*/
extern MBT_U32 MLMF_USB_GetDevVolNum(MBT_VOID);


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
extern MMT_STB_ErrorCode_E MLMF_USB_ReadDevInfo(MST_USB_DeviceVInfo_T *pstUsbDevInfo,MBT_U32 u32DevNumber,MBT_U32 *pu32ReadNumber);


/*
*说明：获取存储器的信息。
*输入参数：
*			pstrMountName:目录名字。
*输出参数:
*			pstVfsInfo：设备信息。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_USB_VfsInfo(MBT_CHAR *pstrMountName, MST_USB_VfsInfo_T *pstVfsInfo);

extern MMT_STB_ErrorCode_E MLMF_USB_Format(MBT_U8 *MountPath, MBT_U8 *DevicePath);


/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_USB_H__ */

/*----------------------End of mlm_usb.h-------------------------*/

