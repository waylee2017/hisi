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
#ifndef __NASC1X_SSD_H__
#define __NASC1X_SSD_H__
#include "hi_flash.h"

#define  NAGRA_SSD_DA1_FLASH_TYPE                 HI_FLASH_TYPE_NAND_0
#define  NAGRA_SSD_DA2_FLASH_TYPE                 HI_FLASH_TYPE_NAND_0
#define  NAGRA_SSD_GLOBALKEY_FLASH_TYPE           HI_FLASH_TYPE_NAND_0

#define CA_MEM_ADDR                               (0x9ff00000)
#define CA_MEM_LEN                                (0x100000)

/*  DA1 [512Bytes] */
#define NAGRA_DA1_ADDR_DDR                        (0x9ff00000)
#define NAGRA_DA1_SIZE                            (512)

/*  DA2 [8KBytes]  */
#define NAGRA_DA2_ADDR_DDR                        (0x9ff01000)
#define NAGRA_DA2_SIZE                            (8*1024)

/*  Max len is oxfffff-1 ,cipher */   
#define SSD_CIPHER_MAX_CRYPT_LEN                  (0x80000)

#define NAGRA_GLOBAL_KEY_ADDR_FLASH               (0xe2000)
#define NAGRA_DA1_ADDR_FLASH                      (0x1100)
#define NAGRA_DA2_ADDR_FLASH                      (0x100000)
/* global_key [16Bytes] */
#define NAGRA_GLOBAL_KEY_SIZE                     (16)
#define SBP_SIG_HEADER_SIZE                       (4)
#define SSD_SIG_HEADER_SIZE                       (4)


/* 
 * u32BlockOffset:  upgrade block offset in the upgrade block,excluding ssd sig header
 * u32BlockSize:   the block size, including sbp header and sig
*/
typedef struct  HI_SSD_BLOCK_INFO_STRU
{
    HI_U32 u32BlockOffset;
    HI_U32 u32BlockSize;
}HI_SSD_BlockInfo_S;


/**
 *  @brief
 *    memory map the physical addr.Init the nagra ssd operation, call csdInit func.
 *    copy DA1,DA2 to corresponding physic address. copy Global Key
 *    and decrypt it using key ladder to user space which will be used to decrypt the 
 *    upgrate data later.
 *
 *  @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *  @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_Init(HI_VOID);

/**
 *  @brief
 *    Call the csdTerminate operation. Memory-unmap physical addr. 
 *
 *  @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *  @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_DeInit(HI_VOID);

/**
 *  @brief
 *    Decrypt the upgrade image. 
 *
 *   @param[in/out]  pu8DataBuf : buffer to be decrypt.
 *   @param[in]      u32DataLen:    buffer length to be decrypt.
 *   @param[in]      pu8HostKey:    decrypt key input.
 *   @param[in]      u32HostKeyLen: key length.
 *  @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *  @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_DecryptUpgradeImage(HI_U8 *pu8DataBuf, HI_U32 u32DataLen);

/**
 *   @brief
 *    execute SSD Authenticate operation, including block decyption and the signature verifying.
 *    Tell the caller the blockOffset and blockSize.
 *
 *   @param[in]      pu8Buf
 *                   user virtual memory pointer for upgrate data.
 *   @param[in]      u32Size
 *                   Size in bytes of memmory.
 *   @param[out]  pstAuthBlockInfo
 *                   structure, including the offset and size of the block.
 *
 *   @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *   @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_Authenticate(HI_U8 *pu8Buf, HI_U32 u32Size, HI_SSD_BlockInfo_S *pstAuthBlockInfo);

/**
 *  @brief
 *    get the DA2's address  and max DA2 size in the corresponding flash, and also get the flash type where the DA2 stored.
 *
 *  @param[out]  pu32Addr
 *                   address of the DA2 int the flash.
 *  @param[out]  pu32Size
 *                   size in bytes of the DA2.
 *  @param[out]  penFlashType
 *                   the flash type where the DA2 stored
 *
 *  @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *  @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_GetDA2Address(HI_FLASH_TYPE_E *penFlashType , HI_U32 *pu32Addr, HI_U32 *pu32Size);

/**
 *  @brief
 *    compare the DA2 in the flash with DA2 in the upgrade-data , if they are different, write DA2 in the upgrade-data to flash.
 *
 *  @param[in]  pu32UpgrdDA2Addr
 *                   address of the DA2 int the upgrade data.
 *  @param[in]  pu32Size
 *                   size in bytes of the DA2.
 *
 *  @retval   HI_SUCCESS
 *              The intended operation was executed successfully.
 *  @retval   HI_FAILURE
 *           The intended operation was failed.             
 */
HI_S32 HI_SSD_DA2_Process(const HI_U32 *pu32UpgrdDA2Addr, HI_U32 pu32UpgrdDA2Size);

#endif

