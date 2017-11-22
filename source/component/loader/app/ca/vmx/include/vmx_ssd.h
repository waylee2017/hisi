/******************************************************************************
Copyright (C), 2001-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : vmx_ssd.h
Version       : Initial Draft
Author        : Hisilicon hisecurity team
Created       : 2014/09/24
Last Modified :
Description   : 
Function List :
History       :
******************************************************************************/

#ifndef __LOADER_VMX_SSD_H__
#define __LOADER_VMX_SSD_H__

#include "../../../../api/src/cx_ssd.h"


#define VMX_SSD_MAX_PARTITIONS	(128)
#define VMX_SSD_HEADER_LEN		(16)
#define VMX_SSD_SIG_LEN			(256)

typedef struct
{
	HI_BOOL bIsValid;
	HI_BOOL bBurnFlag;
	HI_U64  u64FlashAddress;
}HI_VMX_SSD_S;

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[out] CodeAddr  real Code address CNcomment:length 正真可用软件镜像的地址
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 VMX_Authenticate(HI_U8* pu8StartVirAddr,HI_U32* pu32CodeOffset);

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  Addrlength  data  length CNcomment:Addrlength 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 VMX_CommonVerify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength);

/**
\brief authenticate the data CNcomment:对数据进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  length  data  length CNcomment:length 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 VMX_CommonVerify_AuthenticateEx(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength, HI_CASignImageTail_S *pstSignImageInfo);

/**
\brief authenticate the data, no matter the authenticate type is common or special CNcomment:对数据进行校验，不需区分Common或Special
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[in]  Addrlength  data  length CNcomment:Addrlength 数据长度
\decryption:Signature data use the structure of HI_CASignImageTail_S.
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 VMX_Verify_Authenticate(HI_U8* pu8StartVirAddr, HI_U32 u32Addrlength, HI_U32 u32FlashStartAddr, HI_U32 u32FlashType);

HI_S32 HI_VMX_Authenticate(HI_U8* BlockStartAddr, HI_S32 Blocklength, HI_U8* sign);

#endif /* __LOADER_VMX_SSD_H__ */

