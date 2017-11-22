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

#ifndef __PROTOCOL_H__
#define __PROTOCOL_H__

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

typedef enum tagPROTOCOL_TYPE_E
{
    PROTOCOL_TYPE_SSU,
    PROTOCOL_TYPE_HISI_OTA,
    PROTOCOL_TYPE_HISI_FILE,
    PROTOCOL_TYPE_HISI_CAOTA,
    PROTOCOL_TYPE_SSU_CAOTA,
    PROTOCOL_TYPE_HISI_CAFILE,
    PROTOCOL_TYPE_BUTT
} PROTOCOL_TYPE_E;

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_11 */
/** @{ */  /** <!-- [USB upgrade UI] */

/**
 \brief initialize protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32	LOADER_PROTOCOL_Init(HI_LOADER_TYPE_E enDownloadType, HI_VOID * pDownloadPara);

/**
 \brief deinitialize hisi file protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_DeInit(HI_VOID);

/**
 \brief get version of hisi file protocol upgrade file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo);

/**
 \brief get partition infomation of hisi file protocol upgrade file.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum, HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_Process(HI_U32 u32MaxMemorySize);

HI_S32	LOADER_PROTOCOL_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/** @} */  /** <!-- ==== API declaration end ==== */
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
#endif /*__PROTOCOL_H__*/
