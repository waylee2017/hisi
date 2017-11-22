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

#ifndef __OTA_SSU_H__
#define __OTA_SSU_H__

#include "loader_upgrade.h"

#ifdef __cplusplus
extern "C" {
#endif /* end of__cplusplus */

#define GETFOURBYTE(n, p) \
    do {\
        n  = 0 | (*p << 24) | (*(p + 1) << 16) | (*(p + 2) << 8) | (*(p + 3)); \
        p += 4; \
    } while (0)

#define SECTION_BUFFER_LENGTH (4096)

#define DSMCC_MESSAGE_HEADER_LENTH (12)

#define DSI_TABLE_ID (0x3B)
#define DII_TABLE_ID (0x3B)
#define DBB_TABLE_ID (0x3C)

#define DSI_MESSAGE_ID (0x1006)
#define DII_MESSAGE_ID (0x1002)
#define DBB_MESSAGE_ID (0x1003)

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_1*/
/** @{ */  /** <!?a[Forced upgrade data structure] */

/**Definition of button types for infrared response*/

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_1 */
/** @{ */  /** <! [Forced upgrade API] */

/**
 \brief initialize ssu protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32	LOADER_PROTOCOL_SSU_Init(HI_LOADER_TYPE_E enType, HI_VOID * para);

/**
 \brief deinitialize ssu protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_SSU_DeInit(HI_VOID);

/**
 \brief get version of ssu protocol upgrade stream.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_SSU_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo);

/**
 \brief get partition infomation of ssu protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_SSU_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                             HI_U32 *pu32PartNum);

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32	LOADER_PROTOCOL_SSU_Process(HI_U32 u32MaxMemorySize);

HI_S32	LOADER_PROTOCOL_SSU_RegisterCallback(LOADERCALLBACKSET_S *pstCallback);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__OTA_SSU_H__*/
