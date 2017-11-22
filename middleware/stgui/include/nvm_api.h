/*******************************************************************************
* File name : nvm_api.h
* COPYRIGHT (C) Blossoms Digital Tech Co. Ltd.
* Description : This API is called to drive the flash mem.
* History:
* Date						Modification								Revision
* 19.Nev.05					Created by Wesharp    						1.0.0
*******************************************************************************/

#ifndef  __NVM_API_H__ 
#define  __NVM_API_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "mm_common.h"


#define FLASH_8M    1
#define FLASH_16M   2
#if 0
#define FLASH_SIZE_CFG  FLASH_8M
#endif

#if(FLASH_SIZE_CFG == FLASH_8M)

#define MASK_ADDRESS	0x007FFFFF
#define FLASH_MAINBLOCK_SIZE 0x10000
#define FSLC_FlashBaseAddress 	0x00480000
#define FSLC_FlashTopAddress 	0x00700000
#define FSLC_FfsFormatFlagAddr 	0x00710000
#define EFUSEDID_Address            0x00720000
#define CADATA_BlockA_FlashAddress1 	0x00730000
#define CADATA_BlockA_FlashAddress2 	0x00750000
#define CADATA_BlockB_FlashAddress1 	0x00740000
#define CADATA_BlockB_FlashAddress2 	0x00760000
#define FACTORY_SN_BASE_ADDR 0x00770000 
#define SW_UPDATE_PARA_BASE_ADDR 0x00780000  // 'O' 'T' 'A'三字节 + 1字节的标记
#define ENV_PARA_BACKUP_BASE_ADDR 0x007E0000   
#define ENV_PARA_BASE_ADDR 0x007F0000
#define NETWORK_INFO_ADDR 0x00790000

#elif(FLASH_SIZE_CFG == FLASH_16M)

#define MASK_ADDRESS	0x00FFFFFF
#define FLASH_MAINBLOCK_SIZE 0x10000
#define FSLC_FlashBaseAddress 	0x00600000
#define FSLC_FlashTopAddress 	0x00F00000
#define FSLC_FfsFormatFlagAddr 	0x00F10000
#define EFUSEDID_Address            0x00F20000
#define CADATA_BlockA_FlashAddress1 	0x00F30000
#define CADATA_BlockA_FlashAddress2 	0x00F50000
#define CADATA_BlockB_FlashAddress1 	0x00F40000
#define CADATA_BlockB_FlashAddress2 	0x00F60000
#define FACTORY_SN_BASE_ADDR 0x00F70000 
#define SW_UPDATE_PARA_BASE_ADDR 0x00F80000   
#define ENV_PARA_BACKUP_BASE_ADDR 0x00FE0000   
#define ENV_PARA_BASE_ADDR 0x00FF0000   
#define NETWORK_INFO_ADDR 0x00F90000
#endif

#define SW_DIRECT_UPDATE_FLAG_SIZE 4
#define SW_DIRECT_UPDATE_FLAG_BASE_ADDR SW_UPDATE_PARA_BASE_ADDR  // 'O' 'T' 'A'三字节 + 1字节的标记
#define SW_DIRECT_UPDATE_TP_ADDR (SW_DIRECT_UPDATE_FLAG_BASE_ADDR + 4)
#define SW_DIRECT_UPDATE_PARA_SIZE (sizeof(OTA_DIRECT_UPDATE_PARA)) 

/*main frenq*/
#define MAIN_FREQ_SIZE (sizeof(TRANS_INFO))
#define MAIN_FREQ_BASE_ADDR (SW_UPDATE_PARA_BASE_ADDR + FLASH_MAINBLOCK_SIZE - MAIN_FREQ_SIZE)


/*usb update mark*/
#define SW_USB_UPDATE_FLAG_SIZE 4
#define SW_USB_UPDATE_FLAG_BASE_ADDR (SW_UPDATE_PARA_BASE_ADDR+SW_DIRECT_UPDATE_FLAG_SIZE+SW_DIRECT_UPDATE_PARA_SIZE) 
#define SW_USB_UPDATE_FILE_NAME_SIZE 50
#define SW_USB_UPDATE_FILE_NAME_BASE_ADDR (SW_USB_UPDATE_FLAG_BASE_ADDR+SW_USB_UPDATE_FLAG_SIZE) 



extern MMT_STB_ErrorCode_E FLASHF_ErasePartition(MBT_U32 uiPartitionBaseAddr, MBT_U32 uiSize);
extern MMT_STB_ErrorCode_E FLASHF_Read(MBT_U32 u32FlashAddr,MBT_VOID *pusBuffer, MBT_U32 iSizeRead );
extern MMT_STB_ErrorCode_E FLASHF_ForceSaveFile(MBT_U32 u32PrgAddr,MBT_U8 *ptrBuffer,MBT_S32 iSize);
extern MMT_STB_ErrorCode_E MMF_GetHightAppVer(MBT_U16 *pu16Version);
extern MMT_STB_ErrorCode_E MMF_GetStbSerial(OUTSERIAL *ptrSerail);
extern MMT_STB_ErrorCode_E MMF_GetStbMac(MBT_U8 *ptru8Mac);
extern MMT_STB_ErrorCode_E MMF_GetStbHwInfo(DVB_HWINFO *ptrHwInfo);
extern MMT_STB_ErrorCode_E MMF_GetStbLoaderVersion(MBT_U8 *pu8Version);
extern MMT_STB_ErrorCode_E MMF_GetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8DestBuffer,MBT_U32 *pu32DestBufSize);
extern MMT_STB_ErrorCode_E MMF_SetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8SrcBuffer,MBT_U32 u32SrcBufSize);
extern MBT_S32 MMF_GetSpecifyImageSize(MMT_ImageType_E stImageType);
extern MBT_S32 FLASHF_FfsErase ( MBT_U32 u32Address );
extern MBT_S32 FLASHF_FfsRead(SULM_IN MBT_U32 u32Address, SULM_IN MBT_U8 * pu8Buffer, SULM_IN MBT_U32 u32Length);
extern MBT_S32 FLASHF_FfsWrite (MBT_U32 u32Address , MBT_U8 *pu8Buffer , MBT_U32 u32Length,MBT_U32 *pu32LengthActual );



#ifdef __cplusplus
}
#endif

#endif  /*__FLASH_H__*/
