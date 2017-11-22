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
 * \brief CA wrapper call
 */
#ifndef __WRAPPER_CA_H__
#define __WRAPPER_CA_H__

#ifdef __PROTOCOL_HISI_OTA_CA_C__
/*The following global variables and functions are from protocol_hisi_ota.c */
extern HI_U32 g_u32MagicNum;
extern LOADER_DATA_INFO_S g_stDataInfo;
extern HI_U8 g_u8download_tableid;
extern HI_U32 g_u32DataGramSize;
extern HI_U32 g_u32Pid;
extern HI_S32 OTA_Hisi_ParseDatagramSection(const HI_U8 *pu8SectionData, HI_S32 s32Length);
extern HI_S32 OTA_Hisi_ParsePartitionControlSection(const HI_U8 *pu8SectionData, HI_S32 s32Length);
extern HI_S32 GetIndexByOTAId(HI_U32 u32PartId, HI_U32 *pu32Index);
#endif

#ifdef __PROTOCOL_SSU_OTA_CA_C__
/*The following global variables and functions are from protocol_ssu_ota.c */
extern HI_U32 g_u32GroupId;
extern LOADER_DATA_INFO_S g_stDataInfo;
extern HI_U32 g_u32DataGramSize;
extern HI_U32 g_u32Pid;
extern HI_S32 SSU_ParseDSMCC(const HI_U8 *pu8SectionData, HI_S32 s32Length);
extern HI_S32 SSU_GetIndexById(HI_U16 u16ModuleId, HI_U32 *pu32Index);
#endif

#ifdef __PROTOCOL_HISI_FILE_CA_C__
/*The following global variables and functions are from protocol_hisi_file.c */
extern UsbManuInfo *s_pstManu;
extern LOADERCALLBACKSET_S *g_pstCallback;
extern HI_U32 getBits (const HI_U8 *pBuf, HI_U32 u32ByteOffset, HI_U32 u32Startbit, HI_U32 u32Bitlen);
extern HI_VOID ParseHeader(HI_U8 *pBuf, UsbHeader *pstHeader);
extern HI_S32 InitUpgradeBuff(UsbManuInfo *pstManuInfo);
extern HI_S32 FreeMemory(HI_VOID);
#endif

#ifdef __BURN_CA_C__
/*The following global variables and functions are from burn.c */
extern LOADER_OSD_CALLBACK g_pfnOSDCallback;
extern HI_S32 GetIndexById(HI_U32 id, HI_U32 *pu32Index);
#endif

#endif  /*__WRAPPER_CA_H__*/
