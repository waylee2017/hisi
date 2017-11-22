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
 * \brief CA protocol function
 */
#ifndef __PROTOCOL_CA_H__
#define __PROTOCOL_CA_H__

#include "hi_type.h"
#include "loader_upgrade.h"
#include "hi_loader_info.h"

#if defined(HI_ADVCA_SUPPORT)
/************************Prototype for CAFILE**********************************/
/**
 \brief initialize hisi file protocol for OTA .
 \attention \n
 \param[in] NULL
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Init_OTA(HI_VOID);

/**
 \brief deinitialize hisi file protocol for OTA .
 \attention \n
 \param[in] NULL
 \retval ::NO
 */
HI_VOID LOADER_PROTOCOL_HisiFILE_DeInit_OTA(HI_VOID);

/**
 \brief initialize hisi CA file protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

/**
 \brief deinitialize hisi CA file protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */

HI_VOID LOADER_PROTOCOL_HisiCAFILE_DeInit(HI_VOID);

/**
 \brief get version of hisi OTA file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_GetVersionInfo_OTA(LOADER_VERSION_INFO_S * pstVersionInfo,
                                                const HI_U8 *pu8Data, HI_U32 u32Len);

/**
 \brief get version of hisi CA file protocol upgrade file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_GetVersionInfo(LOADER_VERSION_INFO_S * pstVersionInfo);

/**
 \brief process the OTA file, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Process_OTA(HI_U32 u32MaxMemorySize, const HI_U8 *pu8Data, HI_U32 u32Len);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_Process(HI_U32 u32MaxMemorySize);


/************************Prototype for CAOTA**********************************/
/**
 \brief initialize hisi CA ota protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiCAOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

HI_S32 LOADER_PROTOCOL_HisiCAOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/**
 \brief deinitialize hisi CA ota protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_HisiCAOTA_DeInit(HI_VOID);

/**
 \brief get partition infomation of hisi ca ota protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAOTA_Process(HI_U32 u32MaxMemorySize);

/************************Prototype for CAOTA**********************************/
/**
 \brief initialize SSU CA ota protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_SSUCAOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

HI_S32 LOADER_PROTOCOL_SSUCAOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/**
 \brief deinitialize SSU CA ota protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_SSUCAOTA_DeInit(HI_VOID);

/**
 \brief get partition infomation of hisi ca ota protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_SSUCAOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_SSUCAOTA_Process(HI_U32 u32MaxMemorySize);

#else

/************************Prototype for NONCA FILE**********************************/

static inline HI_S32 LOADER_PROTOCOL_HisiFILE_Init_OTA(HI_VOID) {return HI_SUCCESS;}

static inline HI_VOID LOADER_PROTOCOL_HisiFILE_DeInit_OTA(HI_VOID) {return;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAFILE_Init(HI_LOADER_TYPE_E enType, HI_VOID * para) {return HI_SUCCESS;}

static inline HI_VOID LOADER_PROTOCOL_HisiCAFILE_DeInit(HI_VOID) {return;}

static inline HI_S32 LOADER_PROTOCOL_HisiFILE_GetVersionInfo_OTA(LOADER_VERSION_INFO_S * pstVersionInfo,
                                                const HI_U8 *pu8Data, HI_U32 u32Len) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAFILE_GetVersionInfo(LOADER_VERSION_INFO_S * pstVersionInfo) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_HisiFILE_Process_OTA(HI_U32 u32MaxMemorySize, const HI_U8 *pu8Data, HI_U32 u32Len) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAFILE_Process(HI_U32 u32MaxMemorySize) {return HI_SUCCESS;}


/************************Prototype for NONHISICA OTA**********************************/
static inline HI_S32 LOADER_PROTOCOL_HisiCAOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback) {return HI_SUCCESS;}

static inline HI_VOID LOADER_PROTOCOL_HisiCAOTA_DeInit(HI_VOID) {return;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_HisiCAOTA_Process(HI_U32 u32MaxMemorySize) {return HI_SUCCESS;}

/************************Prototype for NONSSUCA OTA**********************************/
static inline HI_S32 LOADER_PROTOCOL_SSUCAOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_SSUCAOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback) {return HI_SUCCESS;}

static inline HI_VOID LOADER_PROTOCOL_SSUCAOTA_DeInit(HI_VOID) {return;}

static inline HI_S32 LOADER_PROTOCOL_SSUCAOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum) {return HI_SUCCESS;}

static inline HI_S32 LOADER_PROTOCOL_SSUCAOTA_Process(HI_U32 u32MaxMemorySize) {return HI_SUCCESS;}


#endif          /*HI_ADVCA_SUPPORT*/

#endif          /*__PROTOCOL_CA_H__*/
