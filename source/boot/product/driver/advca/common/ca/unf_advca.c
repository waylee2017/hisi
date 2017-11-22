/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : unf_advca.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2014-09-16
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#include "ca_common.h"
#include "hi_unf_cipher.h"
#include "drv_cipher.h"
#include "otp.h"

#define CA_CheckPointer(p) \
    do {  \
        if (HI_NULL == p)\
        {\
            HI_ERR_CA("pointer parameter is NULL.\n"); \
            return -1; \
        } \
    } while (0)
HI_S32 HI_UNF_ADVCA_Init(HI_VOID)
{
    return CA_Init();
}

HI_S32 HI_UNF_ADVCA_DeInit(HI_VOID)
{
     return CA_DeInit();
}

HI_S32 HI_UNF_ADVCA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
    return CA_SetR2RAlg(enType);
}
HI_S32 HI_UNF_ADVCA_GetR2RKeyLadderStage(HI_UNF_ADVCA_KEYLADDER_LEV_E *penStage)
{
    return CA_GetR2RLadder(penStage);
}
HI_S32 HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
	return CA_SetR2RSessionKey(enStage, pu8Key);
}

HI_S32 HI_UNF_ADVCA_SetRSAKey(HI_U8 *pkey)
{
    HI_S32 ret = HI_SUCCESS;
    if (HI_NULL == pkey)
    {
		HI_ERR_CA("Invalid param, null pointer.\n");
        return HI_ERR_CA_INVALID_PARA;
    }
    ret = CA_SetRSAKey(pkey);
	return ret;
}

HI_S32 HI_UNF_ADVCA_GetRSAKey(HI_U8 *pkey)
{
	HI_S32 ret = HI_SUCCESS;
	HI_U8 *ptr = NULL;
	HI_U32 index = 0;

	if(NULL == pkey)
	{
		HI_ERR_CA("Invalid param, null pointer.\n");
		return HI_ERR_CA_INVALID_PARA;
	}


	memset(pkey, 0, 512);

	ptr = pkey + 512 - 16;
	for(index = 0; index < 16; index++)
	{
		ptr[index] = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_RSA_KEY_E_BASE + index);
	}

	ptr = pkey;
	for(index = 0; index < 256; index++)
	{
		ptr[index] = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_RSA_KEY_N_BASE + index);
	}

	return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_SetOtpFuse(HI_UNF_ADVCA_OTP_FUSE_E enOtpFuse, HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr)
{
	HI_S32 ret = HI_SUCCESS;
    HI_U8 *pu8TmBuf = NULL;


	if((NULL == pstOtpFuseAttr) || (enOtpFuse >= HI_UNF_ADVCA_OTP_BUTT))
	{
		HI_ERR_CA("Invalid params input, enOtpFuse:0x%x.\n", enOtpFuse);
		return HI_ERR_CA_INVALID_PARA;
	}

	switch(enOtpFuse)
	{
		case HI_UNF_ADVCA_OTP_RSA_KEY_LOCK_FLAG:
		{
			ret = CA_SetRSAKeyLockFlag(pstOtpFuseAttr);
			break;
		}
        case HI_UNF_ADVCA_OTP_CSA2_ROOTKEY:
        {
	        pu8TmBuf = pstOtpFuseAttr->unOtpFuseAttr.stKeyladderRootKey.u8RootKey;
	        ret = CA_SetCSA2RootKey(pu8TmBuf);            
            break;
        }
        case HI_UNF_ADVCA_OTP_R2R_ROOTKEY:
        {
	        pu8TmBuf = pstOtpFuseAttr->unOtpFuseAttr.stKeyladderRootKey.u8RootKey;
	        ret = CA_SetR2RRootKey(pu8TmBuf);
            break;
        }
        case HI_UNF_ADVCA_OTP_CSA3_ROOTKEY:
        {

	        pu8TmBuf = pstOtpFuseAttr->unOtpFuseAttr.stKeyladderRootKey.u8RootKey;
	        ret = CA_SetCSA3RootKey(pu8TmBuf);
            break;
        }
        case HI_UNF_ADVCA_OTP_JTAG_KEY:
        {

	        pu8TmBuf = pstOtpFuseAttr->unOtpFuseAttr.stJtagKey.u8JtagKey;
	        ret = CA_SetJtagKey(pu8TmBuf);
            break;
        }
		default:
		{
			HI_ERR_CA("Invalid params input, enOtpFuse:0x%x.\n", enOtpFuse);
			return HI_ERR_CA_INVALID_PARA;
		}
	}

	return ret;
}

HI_S32 HI_UNF_ADVCA_GetOtpFuse(HI_UNF_ADVCA_OTP_FUSE_E enOtpFuse, HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr)
{
	HI_S32 ret = HI_SUCCESS;
    HI_BOOL bEnable;

	if((NULL == pstOtpFuseAttr) || (enOtpFuse >= HI_UNF_ADVCA_OTP_BUTT))
	{
		HI_ERR_CA("Invalid params input, enOtpFuse:0x%x.\n", enOtpFuse);
		return HI_ERR_CA_INVALID_PARA;
	}

	switch(enOtpFuse)
	{
		case HI_UNF_ADVCA_OTP_RSA_KEY_LOCK_FLAG:
		{
			ret = CA_GetRSAKeyLockFlag(pstOtpFuseAttr);
			break;
		}
        case HI_UNF_ADVCA_OTP_R2R_ROOTKEY_LOCK_FLAG:
        {
            ret = CA_GetR2rRootKeyLock((HI_U32*)&bEnable);
            if (ret == HI_SUCCESS)
            {
                pstOtpFuseAttr->unOtpFuseAttr.stDefaultAttr.bEnable = bEnable;
            } 
            break;
        }
        case HI_UNF_ADVCA_OTP_JTAG_KEY_LOCK_FLAG:
        {
            ret = CA_GetJtagKeyLock((HI_U32*)&bEnable);
            if (ret == HI_SUCCESS)
            {
                pstOtpFuseAttr->unOtpFuseAttr.stDefaultAttr.bEnable = bEnable;
            } 
            break;
        }

		default:
		{
			HI_ERR_CA("Invalid params input, enOtpFuse:0x%x.\n", enOtpFuse);
			return HI_ERR_CA_INVALID_PARA;
		}
	}

	return ret;
}
static HI_S32 ADVCA_AuthCbcMac(HI_U8 *pu8RefCbcMac, HI_U32 u32AppLen)
{
    HI_S32 Ret;

    if (pu8RefCbcMac == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return HI_FAILURE;
    }    
  
    if (u32AppLen % 16 != 0)
    {
        HI_ERR_CA("Invalid parameter, u32AppLen should be algined with 16 byte!\n");
        return HI_FAILURE;
    }

    Ret = DRV_Cipher_AuthCbcMac(pu8RefCbcMac, u32AppLen);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }
    return HI_SUCCESS;
}

static HI_S32 ADVCA_CalCbcMac(HI_U8 *pInputData, HI_U32 u32InputDataLen, HI_U8 *pOutputMAC, HI_BOOL bIsLastBlock)
{
    HI_S32 Ret = HI_SUCCESS;
    static HI_BOOL bIsFirstBlock = HI_TRUE;
    static HI_HANDLE hHashHandle;
    HI_UNF_CIPHER_HASH_ATTS_S stCipherHash;

     if(pInputData == NULL || pOutputMAC == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return HI_FAILURE;
    }

    if(u32InputDataLen % 16 != 0)
    {
        HI_ERR_CA("Invalid length, should be aligned with 16 byte!\n");
        return HI_FAILURE;
    }

    if(bIsFirstBlock)
    {
        memset(&stCipherHash, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
        stCipherHash.eShaType = HI_UNF_CIPHER_HASH_TYPE_IRDETO_CBCMAC;
        CA_ASSERT(HI_UNF_CIPHER_HashInit(&stCipherHash, &hHashHandle), Ret);
        bIsFirstBlock = HI_FALSE;
    }

   Ret = HI_UNF_CIPHER_HashUpdate(hHashHandle, pInputData, u32InputDataLen);
   if(Ret != HI_SUCCESS)
   {
        HI_ERR_CA("HI_UNF_CIPHER_HashUpdate failed! Ret = 0x%x\n", Ret);
        return Ret;
   }

    if(bIsLastBlock)
    {
        bIsFirstBlock = HI_TRUE;

        Ret = HI_UNF_CIPHER_HashFinal(hHashHandle, pOutputMAC);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_CA("HI_UNF_CIPHER_HashFinal failed! Ret = 0x%x\n", Ret);
            return Ret;
        }        
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_CaVendorOperation(HI_UNF_ADVCA_VENDORID_E enCaVendor, HI_UNF_ADVCA_CA_VENDOR_OPT_S *pstCaVendorOpt)
{
    HI_S32 ret = HI_SUCCESS;
    HI_ADVCA_CA_VENDOR_OPT_E enCaVendorOpt = HI_ADVCA_CAVENDOR_ATTR_BUTT;

    if(enCaVendor >= HI_ADVCA_VENDORIDE_BUTT)
    {
        HI_ERR_CA("Invalid parameter, enCaVendor = %d\n", enCaVendor);
        return HI_ERR_CA_INVALID_PARA;
    }

    if(pstCaVendorOpt == NULL)
    {
        HI_ERR_CA("Invalid parameter, pstCaVendorOpt = NULL\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    enCaVendorOpt = pstCaVendorOpt->enCaVendorOpt;
    switch(enCaVendorOpt)
    {
	    case HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_CALC:
		{
	        ret = ADVCA_CalCbcMac(pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.pu8InputData,
	                                                        pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u32InputDataLen,
	                                                        pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u8OutputCbcMac,
	                                                        HI_TRUE);
	        break;
		}
	    case HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_AUTH:
    	{
	        ret = ADVCA_AuthCbcMac(pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u8RefCbcMAC, 
	                                                        pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u32AppLen);        
	        ret |= ADVCA_CalCbcMac(pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.pu8InputData,
	                                                        pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u32InputDataLen,
	                                                        pstCaVendorOpt->unCaVendorOpt.stIrdetoCbcMac.u8OutputCbcMac,
	                                                        HI_TRUE);
	        break;
		}
	    default:
    	{
	        HI_ERR_CA("Invalid parameter, enCaVendorOpt = %d\n", enCaVendorOpt);
	        break;
	    }
    }

    return ret;
}

HI_S32 HI_UNF_ADVCA_GetVendorID(HI_U32 *pu32VendorID)
{
    HI_S32    ret = HI_SUCCESS;

    if (NULL == pu32VendorID)
    {
        return HI_ERR_CA_COMMON_INVALID_PARA;
    }
    
    *pu32VendorID = otp_read_reg(OTP_V200_CA_VENDOR_ID) & 0xff;

    return ret;
}

static HI_VOID ReverseChipId(HI_U32* pu32ChipID)
{
    HI_U32 U32ChipID = 0;
    HI_U32 U32ReverseChipID = 0;
    U32ChipID = *pu32ChipID;
    HI_U8* pu8IDBuf = (HI_U8*)&U32ChipID;
    U32ReverseChipID = (*pu8IDBuf<<24) + (*(pu8IDBuf + 1)<<16) + (*(pu8IDBuf + 2)<<8) + *(pu8IDBuf + 3);
    *pu32ChipID = U32ReverseChipID;
    return;
}

HI_S32 HI_UNF_ADVCA_GetChipId(HI_U32 *pu32ChipId)
{
    HI_U32 u32VendorId = 0;
	
    OTP_V200_getChipID(pu32ChipId);

    HI_UNF_ADVCA_GetVendorID(&u32VendorId);
	
    if ((0x03 != u32VendorId) && (0x01 != u32VendorId))
    {
        ReverseChipId(pu32ChipId);
    }
    return HI_SUCCESS;
}

HI_S32 HI_UNF_ADVCA_GetSecBootStat(HI_BOOL *pbSecBootEn, HI_UNF_ADVCA_FLASH_TYPE_E *penFlashType)
{
	HI_U32 u32Tmp = 0;
	
	if( (pbSecBootEn == NULL) || (penFlashType == NULL) )
    {
    	HI_ERR_CA("Invalid parameter!\n");
        return HI_ERR_CA_COMMON_INVALID_PARA;
    }

    u32Tmp = otp_read_reg(OTP_V200_SecureBootEn);
    *pbSecBootEn = (HI_BOOL)(u32Tmp & 0x1);

/*
	[boot_mode_sel_1,boot_mode_sel_0] indicates:
	00:SPI NorFlash; 
	01:Nand Flash;
	10:SPI NandFlash.
	11:reserved
*/
    u32Tmp = otp_read_reg(OTP_V200_CHANNEL_SEL);
	u32Tmp = u32Tmp & 0x3;	/* the first two bits */

	switch(u32Tmp)
	{
		case 0://00
		{
			*penFlashType = HI_UNF_ADVCA_FLASH_TYPE_SPI;
			break;
		}
		case 1://01
		{
			*penFlashType = HI_UNF_ADVCA_FLASH_TYPE_NAND;
			break;
		}
		case 2://10
		{
			*penFlashType = HI_UNF_ADVCA_FLASH_TYPE_SPI_NAND;
			break;
		}
		default://11
		{
			HI_ERR_CA("Error, not supported flash type(0x%x)!\n", u32Tmp);
			*penFlashType = HI_UNF_ADVCA_FLASH_TYPE_BUTT;
			return HI_FAILURE;
		}
	}
	
    return HI_SUCCESS; 
}


HI_S32 HI_UNF_ADVCA_GetStbSn(HI_U8 au8StbSn[4])
{
    unsigned int id;
	
    if (au8StbSn == NULL)
    {
        return HI_ERR_CA_COMMON_INVALID_PARA;
    }
	
    id = otp_read_reg(OTP_V200_STBSN);

    au8StbSn[0] = (id >> 24) & 0xff;
    au8StbSn[1] = (id >> 16) & 0xff;
    au8StbSn[2] = (id >> 8) & 0xff;
    au8StbSn[3] = id & 0xff;
	
    return HI_SUCCESS;
}


HI_S32 HI_UNF_ADVCA_SetStbSn(HI_U8 au8StbSn[4])
{
    HI_U8 au8Input[4] = {0};
    if (HI_NULL == au8StbSn)
    {
        HI_ERR_CA("Invalid params input stbsn is null\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    au8Input[0] = au8StbSn[3];
    au8Input[1] = au8StbSn[2];
    au8Input[2] = au8StbSn[1];
    au8Input[3] = au8StbSn[0];

    
    
    return CA_SetStbSn(au8Input);
}


HI_S32 HI_UNF_ADVCA_SetCSA2RootKey(HI_U8 *pKey)
{
    if (HI_NULL == pKey)
    {
		HI_ERR_CA("Invalid params input pkey is null\n");
		return HI_ERR_CA_INVALID_PARA;
    }

    return CA_SetCSA2RootKey(pKey);   
}

HI_S32 HI_UNF_ADVCA_SetCSA3RootKey(HI_U8 *pKey)
{
    if (HI_NULL == pKey)
    {
		HI_ERR_CA("Invalid params input pkey is null\n");
		return HI_ERR_CA_INVALID_PARA;
    }

    return CA_SetCSA3RootKey(pKey);   
}

HI_S32 HI_UNF_ADVCA_SetR2RRootKey(HI_U8 *pKey)
{
    if (HI_NULL == pKey)
    {
		HI_ERR_CA("Invalid params input pkey is null\n");
		return HI_ERR_CA_INVALID_PARA;
    }

    return CA_SetR2RRootKey(pKey);   
}

HI_S32 HI_UNF_ADVCA_SetJtagRootKey(HI_U8 *pKey)
{
    if (HI_NULL == pKey)
    {
		HI_ERR_CA("Invalid params input pkey is null\n");
		return HI_ERR_CA_INVALID_PARA;
    }

    return CA_SetJtagKey(pKey);   
}
HI_S32 HI_UNF_ADVCA_CalculteAES_CMAC(HI_U8 *buffer, HI_U32 Length, HI_U8 Key[16], HI_U8 MAC[16])
{
    HI_S32 ret = HI_FAILURE;
    HI_HANDLE hCipher = 0xffffffff;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_U8 au8SessionKey1[16] = {0x23,0x34,0x34,0x52,0x34,0x55,0x45,0x84,0x54,0x54,0x84,0x53,0x34,0x47,0x34,0x47};
    HI_U8 au8SessionKey2[16] = {0x56,0x34,0x88,0x52,0x34,0x89,0x45,0xa0,0x54,0x54,0x77,0x53,0x34,0x47,0x34,0x91};
    HI_UNF_ADVCA_KEYLADDER_LEV_E enStage = 0;
    HI_UNF_CIPHER_ATTS_S stCipherAttr;
    CA_CheckPointer(buffer);
    CA_CheckPointer(Key);
    CA_CheckPointer(MAC);
    CA_ASSERT(HI_UNF_ADVCA_Init(),ret);
    CA_ASSERT(HI_UNF_CIPHER_Init(),ret);
    CA_ASSERT(HI_UNF_ADVCA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_AES), ret);
    CA_ASSERT(HI_UNF_ADVCA_GetR2RKeyLadderStage(&enStage), ret);
    memset(&stCipherAttr, 0, sizeof(stCipherAttr));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAttr),ret);
    if(enStage >= HI_UNF_ADVCA_KEYLADDER_LEV2)
    {
        ret = HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV1, au8SessionKey1);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_CA("Fail to set R2R session key, level %d\n", HI_UNF_ADVCA_KEYLADDER_LEV1);
            goto ERROR_EXIT;
        }
    }
    if(enStage >= HI_UNF_ADVCA_KEYLADDER_LEV3)
    {
        ret = HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV2, au8SessionKey2);
        if (ret != HI_SUCCESS)
        {
           HI_ERR_CA("Fail to set R2R session key, level %d\n", HI_UNF_ADVCA_KEYLADDER_LEV2);
           goto ERROR_EXIT;
        }
    }
    memset(&CipherCtrl,0x00,sizeof(HI_UNF_CIPHER_CTRL_S));
    CipherCtrl.bKeyByCA = HI_TRUE;
    CipherCtrl.enCaType = HI_UNF_CIPHER_CA_TYPE_R2R;
    CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    CipherCtrl.stChangeFlags.bit1IV = 1;
    memcpy(CipherCtrl.u32Key, Key, 16);
    memset(CipherCtrl.u32IV, 0x0, 16);
    ret = HI_UNF_CIPHER_ConfigHandle(hCipher,&CipherCtrl);
    if (ret != HI_SUCCESS)
    {
       HI_ERR_CA("Fail to config cipher\n");
       goto ERROR_EXIT;
    }
    (HI_VOID)HI_UNF_CIPHER_CalcMAC(hCipher, buffer, Length, MAC, HI_TRUE);
     ret = HI_SUCCESS;
ERROR_EXIT:
    if (HI_SUCCESS != HI_UNF_CIPHER_DestroyHandle(hCipher))
    {
       HI_ERR_CA("Fail to destory cipher handle\n");
       return HI_FAILURE;
    }
    return ret;
}
