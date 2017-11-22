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
#ifndef HI_LOADER_BOOTLOADER
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#endif
#include "hi_type.h"
#ifndef HI_LOADER_BOOTLOADER
#include "hi_common.h"
#else
#include "hi_boot_common.h"
#endif
#include "hi_flash.h"
#include "ca_ssd.h"

#if defined(HI_ADVCA_SUPPORT) && !defined(HI_ADVCA_TYPE_NAGRA)
#include "cx_ssd.h"
#ifndef HI_LOADER_BOOTLOADER
#include "hi_unf_advca.h"
#endif
#endif

#define LOADER_BOOT         "boot"
#define LOADER_CADATA       "cadata"

#define SWPK_LEN            (16)
#define SWPK_OFFSET         (0x1800)
#define SWPK_ENC_FLAG       (0x48)

HI_U8 g_M2MEncryptedSWPK[SWPK_LEN] = {0x0};
HI_BOOL g_bDA2BurnedAlready = HI_FALSE;

/********************ADVCA CMAC parameter***********************/
#define CMAC_VALUE_LEN 16

/*The data strcutue must be 16Bytes align*/
typedef struct hi_CaCMACDataHead_S
{   
    HI_U8  au8MagicNumber[32];
    HI_U32 u32Version;
    HI_U32 u32CMACDataLen;                       //Data length
    HI_U32 u32Reserve[6];                        //Reserve for forture  
    HI_U8  u8CMACValue[CMAC_VALUE_LEN]; 
    HI_U8  u8HeaderCMACValue[CMAC_VALUE_LEN];
} HI_CaCMACDataHead_S;

static HI_U8 s_u8InputKey[16]= {0x23,0x34,0x34,0x52,0x34,0x55,0x45,0x84,0x54,0x54,0x84,0x53,0x34,0x47,0x34,0x47};
/**************************************************************************/


#ifdef HI_ADVCA_SUPPORT

HI_S32 CA_SSD_DecryptImage(HI_U8 *pu8Buffer, HI_U32 u32Len, CA_SSD_KEY_TYPE enKeyType)
{
#ifndef HI_ADVCA_TYPE_VERIMATRIX
#ifndef HI_ADVCA_TYPE_NAGRA
    HI_S32 s32Ret = HI_SUCCESS;
    HI_CA_KEY_GROUP_E enKeyGroup;

    if ( (NULL == pu8Buffer) || (0 == u32Len) || (0xFFFFFFFF == u32Len) || (CA_SSD_KEY_BUTT == enKeyType) )
    {
        HI_ERR_CA_SSD("Invalid parameter input.\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    if ( CA_SSD_KEY_GROUP2 == enKeyType )
    {
        enKeyGroup = HI_CA_KEY_GROUP_2;
    }
    else
    {
        enKeyGroup = HI_CA_KEY_GROUP_1;
    }

    
    s32Ret = CA_DecryptImageUsingR2RKeyladder(enKeyGroup, pu8Buffer, u32Len);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("Decrypt image failed.\n");
        return HI_ERR_CA_SSD_DEC_FAILED;
    }
#else
    HI_INFO_CA_SSD("No need to decrypt image for nagra.\n");
#endif
#else
    HI_INFO_CA_SSD("No need to decrypt image for verimatrix.\n");
#endif

    return HI_SUCCESS;
}

HI_S32 CA_SSD_EncryptImage(HI_U8 *pu8Buffer, HI_U32 u32Len, CA_SSD_KEY_TYPE enKeyType)
{
#ifndef HI_ADVCA_TYPE_VERIMATRIX
#ifndef HI_ADVCA_TYPE_NAGRA
    HI_S32 s32Ret = HI_SUCCESS;
    HI_CA_KEY_GROUP_E enKeyGroup;

    if ( (NULL == pu8Buffer) || (0 == u32Len) || (0xFFFFFFFF == u32Len) || (CA_SSD_KEY_BUTT == enKeyType) )
    {
        HI_ERR_CA_SSD("Invalid parameter input.\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    if ( CA_SSD_KEY_GROUP2 == enKeyType )
    {
        enKeyGroup = HI_CA_KEY_GROUP_2;
    }
    else
    {
        enKeyGroup = HI_CA_KEY_GROUP_1;
    }

    s32Ret = CA_EncryptImageUsingR2RKeyladder(enKeyGroup, pu8Buffer, u32Len);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("Encrypt image failed.\n");
        return HI_ERR_CA_SSD_ENC_FAILED;
    }
#else
    HI_INFO_CA_SSD("No need to encrypt image for nagra.\n");
#endif
#else

    HI_INFO_CA_SSD("No need to encrypt image for verimatrix.\n");
#endif
    return HI_SUCCESS;
}

HI_S32 CA_SSD_AuthenticateEx(HI_U8 *ppu8Buffer, HI_U32 *pu32Len)
{
#ifndef HI_ADVCA_TYPE_VERIMATRIX
    HI_S32 s32Ret = HI_SUCCESS;
#ifndef HI_ADVCA_TYPE_NAGRA
    HI_U32 u32CodeOffset = 0;
#endif

    if ( (NULL == ppu8Buffer) || (NULL == pu32Len) )
    {
        HI_ERR_CA_SSD("Invalid parameter input.\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

#ifndef HI_ADVCA_TYPE_NAGRA
    s32Ret = CA_AuthenticateEx(ppu8Buffer, &u32CodeOffset);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("ssd authenticate failed.\n");
        return HI_ERR_CA_SSD_AUTH_FAILED;
    }
#endif
#else
	HI_INFO_CA_SSD("Not needed\n");
#endif
    return HI_SUCCESS;
}

HI_S32 CA_DecryptAndCheckCMAC(HI_U8 *pucInputBuf, HI_U32 u32BufLen, HI_U32 *pu32RawDataOffset)
{
#ifdef HI_ADVCA_TYPE_CONAX
    HI_S32 s32Ret = HI_FAILURE;
	HI_CaCMACDataHead_S *pstCaCMACDataHeader;
    HI_U8  au8OutputMAC[CMAC_VALUE_LEN];    
    HI_U32 u32TmpLen, u32HeaderLen, u32DataOffset;   

   if (pucInputBuf == HI_NULL || pu32RawDataOffset == HI_NULL)
   {
       HI_ERR_CA_SSD("%s: prameter error!\n", __FUNCTION__);
       return HI_FAILURE;
   }

   /**********************Verify whether the head is valid********************************/
    u32HeaderLen = sizeof(HI_CaCMACDataHead_S);
    pstCaCMACDataHeader = (HI_CaCMACDataHead_S *)pucInputBuf;
    
    s32Ret = CA_SSD_DecryptImage(&pucInputBuf[0], u32HeaderLen, CA_SSD_KEY_GROUP2);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("%s: Fail to decrypt header\n", __FUNCTION__);
    	return HI_FAILURE;
    }   
    
    u32TmpLen = u32HeaderLen - CMAC_VALUE_LEN; 
    s32Ret = HI_UNF_ADVCA_CalculteAES_CMAC(&pucInputBuf[0], u32TmpLen, s_u8InputKey, au8OutputMAC);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("%s: Fail to calculate header CMAC\n", __FUNCTION__);
        return HI_FAILURE;
    }    
    
    if (0 != memcmp(au8OutputMAC, pstCaCMACDataHeader->u8HeaderCMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA_SSD(": Header CMAC check error\n", __FUNCTION__);
        return HI_FAILURE;
    }
    
    /************************************************************************************/
    if (u32HeaderLen + pstCaCMACDataHeader->u32CMACDataLen > u32BufLen)
    {
         HI_ERR_CA_SSD("%s: buffer length is too short!\n", __FUNCTION__);
         return HI_FAILURE;
    }

   /**********************Verify whether the data is valid********************************/
    s32Ret = CA_SSD_DecryptImage(&pucInputBuf[u32HeaderLen], pstCaCMACDataHeader->u32CMACDataLen, CA_SSD_KEY_GROUP2);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("%s: Fail to decrypte loader parameter data!\n", __FUNCTION__);
    	return HI_FAILURE;
    }
    
    u32DataOffset = u32HeaderLen;
    s32Ret = HI_UNF_ADVCA_CalculteAES_CMAC(&pucInputBuf[u32DataOffset], pstCaCMACDataHeader->u32CMACDataLen, s_u8InputKey, au8OutputMAC);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("%s:Fail to calc CMAC\n", __FUNCTION__);
        return HI_FAILURE;
    }
    
    if (0 != memcmp(au8OutputMAC, pstCaCMACDataHeader->u8CMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA_SSD("%s: Data CMAC check error\n", __FUNCTION__);
        return HI_FAILURE;
    }

    if (pu32RawDataOffset != HI_NULL)
    {
       *pu32RawDataOffset = u32DataOffset;
    }
#else
	if (pu32RawDataOffset != HI_NULL)
    {
       *pu32RawDataOffset = 0;
    }
    HI_INFO_CA_SSD("No need to decrypt and check CMAC.\n");
#endif
    return HI_SUCCESS;
}


HI_S32 CA_GenerateCMACAndEncrypt(HI_U8 *pucInputBuf, HI_U8 *pDataParam, HI_U32 u32DataLen)
{
#ifdef HI_ADVCA_TYPE_CONAX
    HI_S32 s32Ret = HI_FAILURE;
	HI_CaCMACDataHead_S *pstCaCMACDataHeader;
    HI_U8  au8OutputMAC[CMAC_VALUE_LEN];    
    HI_U32 u32TmpLen = 0;
	HI_U32 u32HeaderLen = 0;   

   if (pucInputBuf == HI_NULL || pDataParam == HI_NULL)
   {
       HI_ERR_CA_SSD("%s: prameter error!\n", __FUNCTION__);
       return HI_FAILURE;
   }
   
   /**********************generate the CMAC value for loader paremeter data********************************/
    u32HeaderLen = sizeof(HI_CaCMACDataHead_S);
    
    if (0 != (u32DataLen%16))
    {
       HI_ERR_CA_SSD("%s:The Loade info data is not align to 16 byte, adjust it!\n", __FUNCTION__);
       u32TmpLen = u32DataLen + 16 - (u32DataLen%16); // align to 16 bytes
    }  
    
    memset(pucInputBuf, 0xFF, u32HeaderLen + u32TmpLen);
    memcpy(&pucInputBuf[u32HeaderLen], pDataParam, u32DataLen);
    
    s32Ret = HI_UNF_ADVCA_CalculteAES_CMAC(&pucInputBuf[u32HeaderLen], u32TmpLen, s_u8InputKey, au8OutputMAC);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("%s: Fail to calculate header CMAC\n",__FUNCTION__);
        return HI_FAILURE;
    }
    

    //memset(&pucInputBuf[0], 0x00, u32HeaderLen); //use 0 to initize header
    pstCaCMACDataHeader = (HI_CaCMACDataHead_S *)pucInputBuf;
    pstCaCMACDataHeader->u32CMACDataLen = u32TmpLen;
    memcpy(pstCaCMACDataHeader->u8CMACValue, au8OutputMAC, CMAC_VALUE_LEN);    
    
    /**********************generate the CMAC value for loader parameter header********************************/
    u32TmpLen = u32HeaderLen - CMAC_VALUE_LEN; 
    s32Ret = HI_UNF_ADVCA_CalculteAES_CMAC(&pucInputBuf[0], u32TmpLen, s_u8InputKey, au8OutputMAC);    
    if (HI_SUCCESS != s32Ret) 
    {
        HI_ERR_CA_SSD("%s: Fail to calc head CMAC\n",__FUNCTION__);
        return HI_FAILURE;
    }    

    memcpy(pstCaCMACDataHeader->u8HeaderCMACValue, au8OutputMAC, CMAC_VALUE_LEN);

    u32TmpLen = u32HeaderLen + pstCaCMACDataHeader->u32CMACDataLen;
    s32Ret = CA_SSD_EncryptImage(pucInputBuf, u32TmpLen, CA_SSD_KEY_GROUP2);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("%s:Fail to call CA_SSD_EncryptImage\n",__FUNCTION__);
        return HI_FAILURE;
    }    
#else
	if (pucInputBuf == HI_NULL || pDataParam == HI_NULL)
   	{
       return HI_FAILURE;
   	}
   
   	memcpy(pucInputBuf, pDataParam, u32DataLen);
    HI_INFO_CA_SSD("No need to generate CMAC and encrypt.\n");
#endif

    return HI_SUCCESS;
}


#endif  /*HI_ADVCA_SUPPORT*/

