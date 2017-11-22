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

#ifndef __OTA_DATAMANAGER_H__
#define __OTA_DATAMANAGER_H__

#ifdef __cplusplus
extern "C" {
#endif /* end of__cplusplus */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_1*/
/** @{ */  /** <!?a[Forced upgrade data structure] */

/**Definition of button types for infrared response*/

/** @} */  /** <!-- ==== Structure Definition end ==== */

typedef enum tagDOWNLOAD_STATUS_E
{
    DOWNLOAD_STATUS_NON_COMPLETE,
    DOWNLOAD_STATUS_PIECE_COMPLETE,
    DOWNLOAD_STATUS_ALL_COMPLETE,
    DOWNLOAD_STATUS_BUTT
} DOWNLOAD_STATUS_E;

/******************************* API declaration *****************************/
/** \addtogroup      H_1_1 */
/** @{ */  /** <! [OTA datamanager API] */
HI_S32            OTA_StoreSectionData(HI_U32 u32PartNum, HI_U32 u32DatagramNum, const HI_U8 *pubData, HI_U32 u32Lenth);

HI_S32            OTA_InitUpgradeBuff(LOADER_DATA_INFO_S *pstUpgradeInfo, HI_U32 u32DataGramSize);

HI_S32 			  OTA_AllocateUpgradeBuff(HI_U8 *pBuff, HI_U32 u32MaxMemorySize);
DOWNLOAD_STATUS_E OTA_CheckDownloadStatus(LOADER_DATA_S *pstData, HI_U32 u32BufNum, HI_U32 *pu32Num);

HI_U32            OTA_GetDownLoadDataSize(HI_VOID);

HI_S32            OTA_FreeMemory(HI_VOID);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__OTA_DATAMANAGER_H__*/
