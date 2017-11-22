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

#ifndef __OTA_HISI_H__
#define __OTA_HISI_H__

#include "loader_upgrade.h"

#ifdef __cplusplus
extern "C" {
#endif /* end of__cplusplus */

/**Corrupt flag. The flash data is corrupted. */
#define DESTORY_FLAG 1

/**Corrupt flag. The flash data is not corrupted.*/
#define NONDESTORY_FLAG 0

/**Enable flag. Starts normally and enters the kernel. */
#define NORMAL_FLAG 1

/**Enable flag. Starts abnormally and does not enter the kernel. */
#define NONNORMAL_FLAG 0

/**Product type length definition for system information.*/
/**String length limitation for product type */
#define PRODUCTMODE_STR_LEN 40

/**Upgrade description length */
/**String length limitation for upgrade cause description*/
#define UPGRD_DESCRIPTION_LENGTH 80

/**Number of sections for upgrading one datagram package*/
#define UPGRD_DATAGRAMSEC_NUM 8

/** Data length of each section */
#define UPGRD_DATAGRAMSEC_LENGTH 1024

/**define codeDownLoad Constants of the descriptor */
#define NONFORCE_UPGRD 0
#define FORCE_UPGRD 1

/**Range of the frequency */
/** Minimum frequency */
#define FRE_MIN_VAL 45000

/**Maximum frequency*/
#define FRE_MAX_VAL 900000

/**Minimum symbol rate*/
#define SYMRATE_MIN_VAL 3500000

/**Maximum symbol rate*/
#define SYMRATE_MAX_VAL 7000000

/** Mode to update local data */
#define PARTMODE 0
#define FILEMODE 1

/**datagram information structure*/
typedef struct hiUpgrdDatagram_S
{
    HI_U8  u8PartNum;           /**< Partition number of the datagram section*/
    HI_U16 u16DatagramNum;      /**< Datagram number of the datagram section*/
    HI_U8  u8SecNum;            /**< Current section number*/
} UpgrdDatagram_S;

/**Partition information structure*/
typedef struct hiUPGRD_UpgrdPartInfo_S
{
    HI_U32   u32Download_mode;          /**< Upgrade mode, partition, and file*/
    HI_U32   u32Download_old_size;      /**< Original size*/
    HI_U32   u32Download_old_ver_start; /**< Original initial version*/
    HI_U32   u32Download_old_ver_end;   /**< Original end version*/
    HI_U32   u32Download_ver;           /**< Version to upgrade*/
    HI_U32   u32Download_FlashType;     /**< Flash type*/
    HI_U32   u32Download_FlashIndex;    /**< Flash chip select*/
    HI_U32   u32Download_addr;          /**< Address to upgrade*/
    HI_U32   u32Partition_endaddr;      /**< End address of upgrade partition*/
    HI_U32   u32Download_size;          /**< Size to upgrade*/
    HI_U32   u32Download_CRC32;         /**< CRC to upgrade*/
    HI_U32   u32Datagram_number;        /**< Number datagrams*/
    HI_U32   u32Datagram_start_addr;    /**< Partition address*/
    HI_U32   u32Download_string_len;    /**< Name length of the file to be upgraded*/
    HI_CHAR* pDownload_string;          /**< Name length pointer of the file to be upgraded*/
} UPGRD_UpgrdPartInfo_S;

/**Version information data structure*/
typedef struct hiPARTVER_S
{
    HI_U32 u32LOGO_ver;
    HI_U32 u32Webbrowser_ver;
    HI_U32 u32Kernel_ver;
    HI_U32 u32CA_ver;
    HI_U32 u32LOADER_ver;
    HI_U32 u32BootLoader_ver;
} PARTVER_S;

typedef enum hiUPGRD_PARTVER_E
{
    app = 0x01,
    kernel = 0x02,
    CA = 0x04,
    BootLoader = 0x08,
    loader = 0x10,
    logo = 0x20,
    BUTT = 0xff
} UPGRD_PARTVER_E;

/**Upgrade package control information structure*/
typedef struct hiHISI_OTA_INFO_S
{
    HI_U8                  u8Download_table_id;        /**< Upgrade package table_id*/
    HI_U8                  u8Partiton_number;          /**< Number of partitions to upgrade*/
    HI_U16                 u16FactoryId;               /**<  Vendor ID */
    HI_U32                 u32Software_ver;            /**< Software version- High level */
    HI_U32                 u32HardwareVer;             /**<  Hardware version */
    HI_U32                 u32Download_data_totalsize; /**< Size of the entire upgrade data package*/
    UPGRD_UpgrdPartInfo_S *pPartInfo;                  /**< Partition information pointer*/
    HI_CHAR                strUpgrdReason[UPGRD_DESCRIPTION_LENGTH];/**<  Upgrade description information*/
    HI_U32                 u32appver;                  /**< Application version  */
    HI_U32                 u32loaderver;               /**< loader  version */
    HI_U32                 u32logover;                 /**<  Startup picture version */
    HI_U32                 u32downloaddate;            /**<  Download date and time */
    HI_U32                 u32startSn;                 /**< Start serial number*/
    HI_U32                 u32endSn;                   /**< End serial number*/
    HI_U32                 u32Full_CRC32;              /**<  CRC information to be updated*/
    HI_U32                 u32MagicNum;                /**< Magic number for packaging the upgrade stream */
} HISI_OTA_INFO_S;

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_1*/
/** @{ */  /** <!?a[Forced upgrade data structure] */

/**Definition of button types for infrared response*/

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_1 */
/** @{ */  /** <! [Forced upgrade API] */

/**
 \brief initialize hisi ota protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32	LOADER_PROTOCOL_HisiOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

/**
 \brief deinitialize hisi ota protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_HisiOTA_DeInit(HI_VOID);

/**
 \brief get version of hisi ota protocol upgrade stream.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiOTA_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo);

/**
 \brief get partition infomation of hisi ota protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                 HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_HisiOTA_Process(HI_U32 u32MaxMemorySize);

HI_S32	LOADER_PROTOCOL_HisiOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__OTA_HISI_H__*/
