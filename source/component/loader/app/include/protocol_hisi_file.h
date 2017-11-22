/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

/**
 * \file
 * \brief USB upgrade UI
 */

#ifndef __PROTOCOL_HISI_FILE_H__
#define __PROTOCOL_HISI_FILE_H__

/*include header files*/
#include "hi_type.h"
#include "loader_upgrade.h"

/* C++ support */
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus  */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_9 */
/** @{ */  /** <!-- [USB upgrade data structure] */

/**A maximum of 10 arrays are supported for data structure UsbImgMap.*/

#define USB_IMG_MAX_NUM 64

/**A maximum of 3 arrays are supported for data structure UsbManuInfo.*/
#define USB_MANU_MAX_NUM 3

#define MAX_FILE_HEAD_LENGHT  (8 * 1024)

typedef struct tagUsbImgMap
{
    HI_U32 u32FileLength;    /**< File length*/
    HI_U32 u32Offset;          /**< Address offset*/
    HI_U32 u32FlashAddr;     /**< Address in the flash*/
    HI_U32 uPartition_endaddr;/**< The end address of flash partition*/
    HI_U32 uFlashType;           /**<Flash type*/
    HI_U32 lFlashIndex;      /**<Flash chip select*/
    HI_U32 u32DataCRC;
} UsbImgMap;

typedef struct tagUsbManuInfo
{
    HI_U32    u32ManuId;        /**< Vendor ID*/
    HI_U32    u32HardVersion;   /**< Hardware version*/
    HI_U32    u32SoftVersion;   /**< Software version*/
    HI_U32    u32SNStart;       /**< Start digit of the serial number*/
    HI_U32    u32SNEnd;         /**< End digit of the serial number*/
    HI_U32    u32DownloadType;  /**< USB upgrade download mode */
    HI_U32    u32Reserved;      /**< Reserved for future expansion*/
    HI_U16    u16ImgMapNum;     /**< Count of data strucure UsbImagMap */
    UsbImgMap astImgMap[USB_IMG_MAX_NUM]; /**< Array of data structure UsbImgMap*/
} UsbManuInfo;

typedef struct tagUsbHeader
{
    HI_U32      u32MagicNum;   /**< Magic number */
    HI_U32      u32HeaderCrc;    /**< cyclic redundancy check(CRC) random number*/
    HI_U32      u32HeaderLen;  /**< Length of a file head. */
    HI_U32      u32FileLen;    /**< Length of File.*/
    HI_U16      u16ManuNum;    /**< Count of data structure UsbManuInfo.*/
    UsbManuInfo astManuInfo[USB_MANU_MAX_NUM];  /**< Array of data structure UsbManuInfo*/
} UsbHeader;

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_11 */
/** @{ */  /** <!-- [USB upgrade UI] */

/**
 \brief initialize hisi file protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32	LOADER_PROTOCOL_HisiFILE_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

/**
 \brief deinitialize hisi file protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_HisiFILE_DeInit(HI_VOID);

/**
 \brief get version of hisi file protocol upgrade file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiFILE_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo);

/**
 \brief get partition infomation of hisi file protocol upgrade file.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiFILE_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                  HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiFILE_Process(HI_U32 u32MaxMemorySize);

HI_S32	LOADER_PROTOCOL_HisiFILE_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/** @} */  /** <!-- ==== API declaration end ==== */
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
#endif /*__PROTOCOL_HISI_FILE_H__*/
