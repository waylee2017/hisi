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
#ifndef __CA_SSD_H__
#define __CA_SSD_H__

#ifdef HI_ADVCA_TYPE_NAGRA
#include "nasc1x_ssd.h"
#endif
#include "../../api/src/ca_ssd.h"

typedef HI_S32 (*SSD_Burn_CallBack)(HI_HANDLE hFlash, 
									HI_U64 u64FlashAddress, 
									HI_U8 *pBuf, 
									HI_U32 u32Len, 
									HI_U32 u32Flags);


#ifdef HI_ADVCA_SUPPORT
/* 
 Descryption： Loader SSD的初始化。
 return：HI_SUCCESS为成功。
 */
HI_S32 CA_SSD_Init(HI_VOID);

/* 
 Descryption:   Loader SSD的去初始化
 return：HI_SUCCESS为成功。
*/

HI_S32 CA_SSD_DeInit(HI_VOID);

/*
 Descryption： 解密升级数据包
 param pu8StartVirAddr [in/out]: 需要解密的升级数据包Buffer起始地址。
 param u32Len [in]: 需要解密的升级数据包总长度。
 return：HI_SUCCESS为成功。
 */
HI_S32 CA_SSD_DecryptUpgradeImage(HI_U8 *pu8StartVirAddr, HI_U32 u32Len);

/*
 Descryption： 对将要升级的整个数据包进行预处理，优先处理特殊分区。
 param pu32LoaderHeader [in]: 解密后的整个数据包buffer起始地址。
 param u32HeaderLen [in]: 数据包总长度。
 return：HI_SUCCESS为成功。
 */
HI_S32 CA_SSD_AuthenticatePrepare(const HI_U32 *pu32LoaderHeader, HI_U8 *pu8FileBuffer, HI_U32 u32HeaderLen);

/* 
 Descryption： 校验Loader升级镜像，包括解密镜像、校验镜像两部分操作。其中参数u32StartFlashAddr 和u32EndFlashAddr 用于判断：是否有和CADATA分区（conax）冲突或是否存在DA2分区（nagra）。
 param pu8StartVirAddr [in]:需要校验的Buffer起始地址。
 param u32Len [in]： 需要校验的Buffer的长度。
 param u32StartFlashAddr [in]： 需升级的Flash起始地址。
 param u32EndFlashAddr [in]： 需升级的Flash的结束地址。
 return：HI_SUCCESS为成功。
*/
HI_S32 CA_SSD_Authenticate(HI_U8 *ppu8Buffer, HI_U32 *pu32Len, HI_U32 u32FlashStartAddr, HI_U32 u32FlashType);

HI_S32 CA_SSD_BurnImageToFlash(HI_HANDLE hFlash, 
										HI_U64 u64FlashAddress, 
										HI_U8 *pBuf, 
										HI_U32 u32Len, 
										HI_U32 u32Flags,
										HI_FLASH_TYPE_E enFlashType,
										SSD_Burn_CallBack pFuncCallBackBurnData);

#else           /*#ifdef HI_ADVCA_SUPPORT*/

static inline HI_S32 CA_SSD_Init(HI_VOID){ return HI_SUCCESS;}

static inline HI_S32 CA_SSD_DeInit(HI_VOID) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_DecryptUpgradeImage(HI_U8 *pu8StartVirAddr, HI_U32 u32Len) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_AuthenticatePrepare(const HI_U32 *pu32LoaderHeader, HI_U8 *pu8FileBuffer, HI_U32 u32HeaderLen) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_Authenticate(HI_U8 *pu8StartVirAddr, HI_U32 *pu32Len, HI_U32 u32FlashStartAddr, HI_U32 u32FlashType) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_BurnImageToFlash(HI_HANDLE hFlash, 
										HI_U64 u64FlashAddress, 
										HI_U8 *pBuf, 
										HI_U32 u32Len, 
										HI_U32 u32Flags,
										HI_FLASH_TYPE_E enFlashType,
										SSD_Burn_CallBack pFuncCallBackBurnData)
{
	return pFuncCallBackBurnData(hFlash, u64FlashAddress, pBuf, u32Len, u32Flags);
}

#endif  /*HI_ADVCA_SUPPORT*/

#else
/* crypto key type */
typedef enum CA_SSD_KEY_TYPE
{
    CA_SSD_KEY_GROUP1,
    CA_SSD_KEY_GROUP2,
    CA_SSD_KEY_BUTT,
}CA_SSD_KEY_TYPE;

static inline HI_S32 CA_SSD_DecryptImage(HI_U8 *pu8StartVirAddr, HI_U32 u32Len, CA_SSD_KEY_TYPE enKeyType) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_EncryptImage(HI_U8 *pu8StartVirAddr, HI_U32 u32Len, CA_SSD_KEY_TYPE enKeyType) { return HI_SUCCESS;}

static inline HI_S32 CA_SSD_AuthenticateEx(HI_U8 *ppu8Buffer, HI_U32 *pu32Len) { return HI_SUCCESS;}

#endif  /*__CA_SSD_H__*/

