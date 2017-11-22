/******************************************************************************

Copyright (C), 2004-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_pub.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-11-15
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __CA_PUB_H__
#define __CA_PUB_H__

#include "hi_type.h"


typedef enum hiCA_KEY_GROUP_E
{
    HI_CA_KEY_GROUP_1 = 0,
    HI_CA_KEY_GROUP_2,
}HI_CA_KEY_GROUP_E;

HI_S32 CA_AuthenticateInit(HI_CA_KEY_GROUP_E enKeyGroup);
HI_VOID CA_AuthenticateDeInit(HI_VOID);
HI_S32 CA_DataEncrypt(HI_U8 *pPlainText, HI_U32 TextLen, HI_U8 *pCipherText);
HI_S32 CA_DataDecrypt(HI_U8 *pPlainText, HI_U32 TextLen, HI_U8 *pCipherText);


#endif/*__CA_PUB_H__*/
