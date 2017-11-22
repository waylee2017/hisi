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

#ifndef __CX_SSD_H__
#define __CX_SSD_H__

#include "../../../../api/src/cx_ssd.h"

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[out] CodeAddr  real Code address CNcomment:length 正真可用软件镜像的地址
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_Authenticate(HI_U8* pu8StartVirAddr,HI_U32* pu32CodeOffset);

/**
\brief authenticate the data CNcomment:对于 flash 数据区，根据数据的结构体长度，返回被加密内容长度
\param[in]  u32StructureLen length of flash data area structure CNcomment:u32StructureLen flash 分区数据结构体长度
\param[out] EncryptedImageLen  encrypted image length:EncryptedImage被加密内容长度
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_GetEncryptedImageLenByStructureLen(HI_U32 u32StructureLen, HI_U32* pu32EncryptedImageLen);

/**
\brief encrypt the data  CNcomment:解密原始升级流
\param[in]  StartVirAddr start address of data CNcomment:StartVirAddr 数据起始地址
\param[int] length  data  length CNcomment:length 数据长度
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_DecryptUpgradeImage(HI_U8* pu8StartVirAddr,HI_U32 u32Length, HI_U8 au8M2MEncryptedSWPK[16]);

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  Addrlength  data  length CNcomment:Addrlength 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_CommonVerify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength);

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  length  data  length CNcomment:length 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_CommonVerify_AuthenticateEx(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength, HI_CASignImageTail_S *pstSignImageInfo);

/**
\brief authenticate the data, no matter the authenticate type is common or special CNcomment:对数据进行校验，不需区分Common或Special
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  Addrlength  data  length CNcomment:Addrlength 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_Verify_Authenticate(HI_U8* pu8StartVirAddr, HI_U32 u32Addrlength);

#endif

