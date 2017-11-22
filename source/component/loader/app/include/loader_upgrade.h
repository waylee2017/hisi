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
#ifndef __LOADER_UPGRADE_H__
#define __LOADER_UPGRADE_H__

#include "hi_type.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif/* __cpluscplus */
#endif /* __cpluscplus */

#define MAX_UPGRADE_IMAGE_NUM (256)

typedef struct tagLOADER_PARTITION_INFO_S
{
    HI_U32 u32PartitionId;        /**< Partition id */
    HI_U32 u32FlashType;          /**< Flash type */
    HI_U32 u32FlashStartAddr;     /**< Partition start Address in Flash */
    HI_U32 u32FlashEndAddr;       /**< Partition end Address in Flash */
    HI_U32 u32ImageFS;            /**< Image file system */
    HI_U32 u32ImageDataSize;      /**< Image Size */
    HI_U32 u32ImageDataCRC32;     /**< CRC of Image data*/
} LOADER_PARTITION_INFO_S;

typedef struct tagDATA_PARTITION_INFO_S
{
    HI_U32       u32PartitionId;            /**< the partition id data belong to*/
    HI_U8       *u8DataBuff;                /**< data buffer*/
    HI_U32       u32DataSize;               /**< Size to data*/
    HI_BOOL      bLastData;                 /**< 注释 */
} LOADER_DATA_S;

typedef struct tagLOADER_VERSION_INFO_S
{
    HI_U32 u32FactoryId;                   /**<  Vendor ID */
    HI_U32 u32Softwarever;             /**< Software version- High level */
    HI_U32 u32HardwareVer;                 /**<  Hardware version */
    HI_U32 u32StartSn;                     /**< Start serial number*/
    HI_U32 u32EndSn;                       /**< End serial number*/
} LOADER_VERSION_INFO_S;

typedef struct tagLOADER_DATA_INFO_S
{
    HI_U32                   u32DataFullSize;                   /**< Size of the entire upgrade data package*/
    HI_U32                   u32DataFullCRC32;                   /**<  CRC information to be updated*/
    HI_BOOL                  bCheckFullCRC32;                   /**< whether to check total data CRC*/
    HI_U32                   u32PartitionNum;
    LOADER_PARTITION_INFO_S *pstPartitionInfo;          /**< Partition infomation*/
} LOADER_DATA_INFO_S;

typedef enum DATA_EVENT_TYPE_E
{
    DATA_EVENT_TYPE_BEGIN,
    DATA_EVENT_TYPE_DATA,
    DATA_EVENT_TYPE_OVER,
    DATA_EVENT_TYPE_BUTT
} DATA_EVENT_TYPE_E;

// 在process中回调main的DataCallBack. 当前partition数据
typedef HI_S32 (*LOADER_DATA_CALLBACK)(LOADER_DATA_S * pstData, HI_U32 u32Number);  //返回之后数据就释放

typedef enum tagOSD_EVENT_TYPE_E
{
    OSD_EVENT_TYPE_DOWNLOAD,
    OSD_EVENT_TYPE_CRC,
    OSD_EVENT_TYPE_BURN,
    OSD_EVENT_TYPE_BUTT
} OSD_EVENT_TYPE_E;

typedef HI_S32 (*LOADER_OSD_CALLBACK)(OSD_EVENT_TYPE_E enType, HI_U32 u32CurSize, HI_U32 u32TotalSize);

typedef struct tagLOADERCALLBACKSET_S
{
    LOADER_DATA_CALLBACK pfnDataCallback;
    LOADER_OSD_CALLBACK  pfnOSDCallback;
} LOADERCALLBACKSET_S;

HI_S32 LOADER_App(HI_VOID);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif/* __cpluscplus */
#endif /* __cpluscplus */

#endif /* __LOADER_UPGRADE_H__ */
