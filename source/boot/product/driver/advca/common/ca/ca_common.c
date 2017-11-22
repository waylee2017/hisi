/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_common.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#include "ca_reg.h"
#include "otp.h"
#include "ca_common.h"

static HI_UNF_ADVCA_ALG_TYPE_E g_R2RAlgType = HI_UNF_ADVCA_ALG_TYPE_TDES;
static HI_UNF_ADVCA_KEYLADDER_LEV_E g_R2RLadderSel = HI_UNF_ADVCA_KEYLADDER_LEV2;
HI_U32 DRV_ADVCA_ReadReg(HI_U32 addr);
HI_VOID DRV_ADVCA_WriteReg(HI_U32 addr, HI_U32 val);

/*========================interface of CAV300======================================*/
HI_VOID DRV_ADVCA_WriteReg(HI_U32 addr, HI_U32 val)
{
    ca_wtReg(addr, val);
	return;
}

HI_U32 DRV_ADVCA_ReadReg(HI_U32 addr)
{
	HI_U32 val;
    ca_rdReg(addr, val);
	return val;
}

HI_VOID DRV_ADVCA_Wait(HI_U32 us)
{
	return;
}

static HI_S32 HAL_ADVCA_V300_WaitStat(HI_VOID)
{
    HI_U32 cnt = 0;
    CA_V300_CA_STATE_U CAStatus;
    HI_S32 errState = 0;
    
    /* wait for KeyLadder calc done */
    // corform one value when test, about 500
    while (cnt < 1000)
    {
        CAStatus.u32 = 0;
        CAStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CA_STATE);
        if (CAStatus.bits.klad_busy == 0)
        {
            //HI_INFO_CA("ca_decrypted finished, cnt:%d\n", cnt);
            break;
        }
        udelay(1000);
        cnt++;
    }

    if (cnt >= 100)
    {
        HI_ERR_CA("\n Error CA handle too long !!!!!!!!!!! \n");
        return HI_FAILURE;      /* time out */
    }

    /* success */
    errState = CAStatus.bits.err_state; 
    return errState;
}

static HI_U16 CA_OTP_CalculateCRC16 (const HI_U8 *pu8Data, HI_U32 u32DataLen)
{
    HI_U16 crc_value = 0xff;
    HI_U16 polynomial = 0x8005;
    HI_U16 data_index = 0;
    HI_U32 l = 0;
    HI_BOOL flag = HI_FALSE;
    HI_U8 byte0 = 0;
    HI_U8 au8CrcInput[17];

    if (NULL == pu8Data)
    {
        HI_ERR_CA("Input param error, null pointer!\n");
        return crc_value;
    }

    if (u32DataLen == 0)
    {
        HI_ERR_CA("Input param error, length = 0!\n");
        return crc_value;
    }

    memset(au8CrcInput, 0, sizeof(au8CrcInput));
    au8CrcInput[0] = 0x55;
    memcpy(au8CrcInput + 1, pu8Data, u32DataLen);
    u32DataLen += 1;
    
    for (data_index = 0; data_index < u32DataLen; data_index++)
    {
        byte0 = au8CrcInput[data_index];
        crc_value ^= byte0 * 256;

        for (l=0; l<8; l++)
        {
            flag = ((crc_value & 0x8000) == 32768);
            crc_value = (crc_value & 0x7FFF)*2;
            if (HI_TRUE == flag)
            {
                crc_value ^= polynomial;
            }
        }
    }

    return crc_value;
}

HI_S32 CA_GetR2RLadder(HI_UNF_ADVCA_KEYLADDER_LEV_E *penSel)
{
    HI_S32 Ret = HI_SUCCESS;

    CA_CheckPointer(penSel);
    Ret = OTP_GetR2RLadderLevel((OTP_KEY_LEVEL_E *)&g_R2RLadderSel);
    *penSel = g_R2RLadderSel;
    
    return Ret;
}
// limited, only aes
HI_S32 CA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E type)
{
    if ((type != HI_UNF_ADVCA_ALG_TYPE_TDES) && (type != HI_UNF_ADVCA_ALG_TYPE_AES))
    {
        HI_ERR_CA("R2R Algorithm Error = %d ! \n", type);
        return HI_ERR_CA_INVALID_PARA;
    }
    g_R2RAlgType = type;
    
    return HI_SUCCESS;
}
HI_S32 CA_CryptR2R(HI_UNF_ADVCA_KEYLADDER_LEV_E enLevel,HI_U32 *pu32DataIn,HI_U32 AddrID,HI_BOOL bIsDeCrypt)
{
    HI_S32 Ret = HI_SUCCESS;
    CA_V300_CONFIG_STATE_U unConfigStatus;
    CA_V300_R2R_CTRL_U R2RCtrl;

    /* para check*/
    if (HI_NULL == pu32DataIn)
    {
       HI_ERR_CA("HI_NULL == pDataIn\n");
       return HI_ERR_CA_INVALID_PARA;
    }
#ifndef CHIP_TYPE_hi3716mv330
    //(1)	先读寄存器CONIFG_STATE.st_vld，只有其值为1时，ca的寄存器值才是有效的，才能对寄存器操作。
    //一旦CONIFG_STATE.st_vld变高之后，会一直保持。只需上电之后查询一次。
    unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
    if(unConfigStatus.bits.st_vld != 1)
    {
        HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA("Keyladder is busy now!\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }

    /*2  put DVB_RootKey（CK2）to CA register(DATA input) */
    //(2)	配置寄存器CA_DIN0，CA_DIN1，CA_DIN2，CA_DIN3，这是解密(加密)的输入数据。
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN0, pu32DataIn[0]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN1, pu32DataIn[1]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN2, pu32DataIn[2]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN3, pu32DataIn[3]);

    //(3)	配置寄存器R2R_CTRL，之后逻辑会启动运算，逻辑同时把CA_STATE.klad_busy置高
    R2RCtrl.u32 = 0;
    R2RCtrl.bits.level_sel = enLevel;
    R2RCtrl.bits.mc_alg_sel = 0;//Multicipher Algorithm. default setting
    R2RCtrl.bits.tdes_aes_sel = g_R2RAlgType;
    R2RCtrl.bits.key_addr = AddrID & 0xFF; //Demux DescambleKey ID
    DRV_ADVCA_WriteReg(CA_V300_R2R_CTRL, R2RCtrl.u32); //CAStatus.bits.klad_busy will be set to 1
    
    //Now Wait until CAStatus.bits.klad_busy == 0 
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_FAILURE == Ret)
    {
        HI_ERR_CA("key ladder timeout\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }
    else if (R2R_SP_SYMMETRIC_KEY_ERROR == Ret)
    {
        HI_ERR_CA("R2R key ladder error: symmetric key usage\n");
        return HI_FAILURE;
    }
    else if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }
    DRV_ADVCA_Wait(100);
    return HI_SUCCESS;
}

static CA_KEYLADDER_INFO_S g_MiscInfo = {0};
static CA_KEYLADDER_INFO_S g_SPInfo = {0};

static HI_S32 s_CA_CheckVmxAdvanced(HI_BOOL *pbVmxAdvanced)
{
    HI_S32 ret = 0;
	HI_U32 u32CAVendorId = 0;
	HI_UNF_ADVCA_KEYLADDER_LEV_E enValue = HI_UNF_ADVCA_KEYLADDER_BUTT;

	(HI_VOID)CA_GetCAVendorId(&u32CAVendorId);
	ret = CA_GetMiscKlLevel(&enValue);
	if(HI_SUCCESS != ret)
	{
		HI_ERR_CA("CA_GetMiscKlLevel failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	if( (0x7 == u32CAVendorId) && (HI_UNF_ADVCA_KEYLADDER_LEV5 == enValue) )
	{
		*pbVmxAdvanced = HI_TRUE;
	}
	else
	{
		*pbVmxAdvanced = HI_FALSE;
	}

	return HI_SUCCESS;
}

HI_S32 CA_GetCAVendorId(HI_U32 *pu32VendorId)
{
	HI_U32 value = 0;
    HI_U32 addr = 0xac;

	if(NULL == pu32VendorId)
	{
		return HI_FAILURE;
	}

	value = HI_OTP_Read(addr);
	*pu32VendorId = value & 0xff;

	return HI_SUCCESS;
}

HI_S32 CA_GetMiscKlLevel(HI_UNF_ADVCA_KEYLADDER_LEV_E *penValue)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 addr = 0x4;
	HI_U32 u32Value = 0;
	CA_OTP_V200_INTERNAL_PV_1_U PV_1;

    if ( NULL == penValue)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    PV_1.u32 = 0;
    PV_1.u32 = HI_OTP_Read(addr);
    
    if( (0x00 == PV_1.bits.misc_lv_sel) && (0x00 == PV_1.bits.misc_lv_sel_2) )
    {
        *penValue = HI_UNF_ADVCA_KEYLADDER_LEV2;
    }
    else if( (0x01 == PV_1.bits.misc_lv_sel) && (0x00 == PV_1.bits.misc_lv_sel_2) )
    {
        *penValue = HI_UNF_ADVCA_KEYLADDER_LEV3;
    }
    else if( (0x00 == PV_1.bits.misc_lv_sel) && (0x01 == PV_1.bits.misc_lv_sel_2) )
    {
        *penValue = HI_UNF_ADVCA_KEYLADDER_LEV4;
    }
    else if( (0x01 == PV_1.bits.misc_lv_sel) && (0x01 == PV_1.bits.misc_lv_sel_2) )
    {
        *penValue = HI_UNF_ADVCA_KEYLADDER_LEV5;
    }

    return HI_SUCCESS;
}

HI_S32 CA_MISCKeyLadder_Open(HI_VOID)
{
	HI_S32 ret = HI_SUCCESS;
	HI_BOOL bVmxAdvanced = 0;

	ret = s_CA_CheckVmxAdvanced(&bVmxAdvanced);
	if(HI_SUCCESS != ret)
	{
        HI_ERR_CA("s_CA_CheckVmxAdvanced failed.\n");
        return HI_FAILURE;
	}

	if(HI_TRUE == bVmxAdvanced)
	{
		/* Important: for vmx advanced !!! */
		g_SPInfo.OpenFlag = HI_TRUE;
	}
	else
	{
		g_MiscInfo.OpenFlag = HI_TRUE;
	}

	return HI_SUCCESS;
}

HI_S32 CA_MISCKeyLadder_Close(HI_VOID)
{
	HI_S32 ret = HI_SUCCESS;
	HI_BOOL bVmxAdvanced = 0;

	ret = s_CA_CheckVmxAdvanced(&bVmxAdvanced);
	if(HI_SUCCESS != ret)
	{
        HI_ERR_CA("s_CA_CheckVmxAdvanced failed.\n");
        return HI_FAILURE;
	}

	if(HI_TRUE == bVmxAdvanced)
	{
		g_SPInfo.OpenFlag = HI_FALSE;
	}
	else
	{
		g_MiscInfo.OpenFlag = HI_FALSE;
	}

	return HI_SUCCESS;
}

HI_S32 CA_SetMiscAlgorithm(HI_UNF_ADVCA_ALG_TYPE_E enType)
{
	HI_S32 ret = HI_SUCCESS;
	HI_BOOL bVmxAdvanced = 0;

    if ((enType != HI_UNF_ADVCA_ALG_TYPE_TDES) && (enType != HI_UNF_ADVCA_ALG_TYPE_AES))
    {
        HI_ERR_CA("Invalid Misc Keyladder algorithm (%d)!\n", enType);
        return HI_ERR_CA_INVALID_PARA;
    }

	ret = s_CA_CheckVmxAdvanced(&bVmxAdvanced);
	if(HI_SUCCESS != ret)
	{
        HI_ERR_CA("s_CA_CheckVmxAdvanced failed.\n");
        return HI_FAILURE;
	}

	if(HI_TRUE == bVmxAdvanced)
	{
		/* Important: for vmx advanced !!! */
    	g_SPInfo.Alg = enType;
	}
	else
	{
    	g_MiscInfo.Alg = enType;
	}
    
    return HI_SUCCESS;
}

HI_S32 CA_V300_GetMiscAlgorithm(HI_UNF_ADVCA_ALG_TYPE_E *penType)
{
    if( NULL == penType)
    {
        HI_ERR_CA("Invalid param ,NULL pointer !\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    *penType = g_MiscInfo.Alg;
    
    return HI_SUCCESS;
}

HI_S32 CA_DecryptMisc(HI_UNF_ADVCA_KEYLADDER_LEV_E enLevel, 
                            HI_U32 *pu32DataIn,
                            HI_U32 AddrID,
                            HI_BOOL bEvenOrOdd,
                            DRV_ADVCA_CA_TARGET_E enCwTarget)
{
    HI_S32 Ret = HI_SUCCESS;
    CA_V300_CONFIG_STATE_U unConfigStatus;
    CA_V300_MISC_CTRL_U unMiscCtrl;

    if (HI_NULL == pu32DataIn)
    {
       HI_ERR_CA("HI_NULL == pDataIn\n");
       return HI_ERR_CA_INVALID_PARA;
    }
#ifndef CHIP_TYPE_hi3716mv330
    /* Read CONIFG_STATE.st_vld first, we can operate registers once CONIFG_STATE.st_vld set to 1. 
       The value of CONIFG_STATE.st_vld will be not changed when powered on after it set to 1. */
    unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
    if(unConfigStatus.bits.st_vld != 1)
    {
        HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA("Keyladder is busy now!\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }

    /* Config the input data for crypto : CA_DIN0, CA_DIN1, CA_DIN2, CA_DIN3 */
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN0, pu32DataIn[0]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN1, pu32DataIn[1]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN2, pu32DataIn[2]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN3, pu32DataIn[3]);
    
    /* Config GDRM_CTRL, and then CA_STATE.klad_busy would be set */
    unMiscCtrl.u32 = 0;
    if(enLevel == HI_UNF_ADVCA_KEYLADDER_LEV5)
    {
        unMiscCtrl.bits.level_sel_5 = 1;
    }
    else
    {
        unMiscCtrl.bits.level_sel = enLevel;
    }
    unMiscCtrl.bits.tdes_aes_sel = g_MiscInfo.Alg;
    unMiscCtrl.bits.target_sel = enCwTarget;
    if (0 == unMiscCtrl.bits.target_sel)
    {
        /* Demux DescambleKey ID + even_or_odd */
        unMiscCtrl.bits.key_addr = ((AddrID & 0x7F) << 1) + bEvenOrOdd;
        unMiscCtrl.bits.dsc_mode = g_MiscInfo.enDscMode;  //set demux DscMode
    }
    else
    {
        /* multicipher channel ID */
        unMiscCtrl.bits.key_addr = AddrID & 0xFF;
    }
  
    /* CAStatus.bits.klad_busy will be set to 1 */
    DRV_ADVCA_WriteReg(CA_V300_MISC_CTRL, unMiscCtrl.u32);
    
    /* Now Wait until CAStatus.bits.klad_busy == 0 */
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_FAILURE == Ret)
    {
        HI_ERR_CA("Key ladder timeout\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }
    else if (MISC_KL_LEVEL_ERROR == Ret)
    {
        HI_ERR_CA("MISC key ladder error: keyladder level is 2 in otp, but start 3rd level actually.\n");
        return HI_FAILURE;
    }
    else if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    DRV_ADVCA_Wait(100);

    return HI_SUCCESS;
}

HI_S32 CA_DecryptSP(HI_UNF_ADVCA_KEYLADDER_LEV_E enLevel, 
                            HI_U32 *pu32DataIn,
                            HI_U32 AddrID,
                            HI_BOOL bEvenOrOdd,
                            DRV_ADVCA_CA_TARGET_E enCwTarget)
{
    HI_S32 Ret = HI_SUCCESS;
    CA_V300_CONFIG_STATE_U unConfigStatus;
    CA_V300_SP_CTRL_U unSPCtrl;

    if (HI_NULL == pu32DataIn)
    {
       HI_ERR_CA("HI_NULL == pDataIn\n");
       return HI_ERR_CA_INVALID_PARA;
    }
#ifndef CHIP_TYPE_hi3716mv330
    /* Read CONIFG_STATE.st_vld first, we can operate registers once CONIFG_STATE.st_vld set to 1. 
       The value of CONIFG_STATE.st_vld will be not changed when powered on after it set to 1. */
    unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
    if(unConfigStatus.bits.st_vld != 1)
    {
        HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA("Keyladder is busy now!\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }

    /* Config the input data for crypto : CA_DIN0, CA_DIN1, CA_DIN2, CA_DIN3 */
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN0, pu32DataIn[0]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN1, pu32DataIn[1]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN2, pu32DataIn[2]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN3, pu32DataIn[3]);
    
    /* Config GDRM_CTRL, and then CA_STATE.klad_busy would be set */
    unSPCtrl.u32 = 0;
    if(enLevel == HI_UNF_ADVCA_KEYLADDER_LEV5)
    {
        unSPCtrl.bits.level_sel_5 = 1;
    }
    else
    {
        unSPCtrl.bits.level_sel = enLevel;
    }
    unSPCtrl.bits.tdes_aes_sel = g_SPInfo.Alg;

    /* multicipher channel ID */
	unSPCtrl.bits.raw_mode = 1;
    unSPCtrl.bits.key_addr = AddrID & 0xFF;
  
    /* CAStatus.bits.klad_busy will be set to 1 */
    DRV_ADVCA_WriteReg(CA_V300_SP_CTRL, unSPCtrl.u32);
    
    /* Now Wait until CAStatus.bits.klad_busy == 0 */
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_FAILURE == Ret)
    {
        HI_ERR_CA("Key ladder timeout\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }
    else if (HI_SUCCESS != Ret)
    {
    	HI_ERR_CA("SP Key ladder error, ret:0x%x\n", Ret);
        return HI_FAILURE;
    }

    DRV_ADVCA_Wait(100);

    return HI_SUCCESS;
}

HI_S32 CA_SetMISCSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret = 0;
	HI_BOOL bVmxAdvanced = 0;

	ret = s_CA_CheckVmxAdvanced(&bVmxAdvanced);
	if(HI_SUCCESS != ret)
	{
        HI_ERR_CA("s_CA_CheckVmxAdvanced failed.\n");
        return HI_FAILURE;
	}

	if(HI_TRUE == bVmxAdvanced)
	{
		/* Important: for vmx advanced !!! */
	    ret = CA_DecryptSP(enStage,pu8Key,0,0, 0);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("CA_DecryptSP failed, ret:0x%x\n", ret);
			return HI_FAILURE;
		}
	}
	else
	{
	    ret = CA_DecryptMisc(enStage,pu8Key,0,0, 0);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("CA_DecryptMisc failed, ret:0x%x\n", ret);
			return HI_FAILURE;
		}
	}

    return HI_SUCCESS;
}

/* New UNF interface: HI_UNF_ADVCA_EncryptSwpk */
HI_S32 CA_EncryptSwpk(HI_U32 *pClearSwpk,HI_U32 *pEncryptSwpk)
{
    HI_U32 index;
    HI_S32 Ret = HI_SUCCESS;
    CA_V300_CONFIG_STATE_U unConfigStatus;
    
    /* Key Ladder internal use TDES.
    Just Need to input data. */

    if ((HI_NULL == pClearSwpk) || (HI_NULL == pEncryptSwpk))
    {
       HI_ERR_CA("HI_NULL == pClearSwpk, pEncryptSwpk\n");
       return HI_ERR_CA_INVALID_PARA;
    }
#ifndef CHIP_TYPE_hi3716mv330
    /* Read CONIFG_STATE.st_vld first, we can operate registers once CONIFG_STATE.st_vld set to 1. 
       The value of CONIFG_STATE.st_vld will be not changed when powered on after it set to 1. */
    unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
    if(unConfigStatus.bits.st_vld != 1)
    {
        HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA("Keyladder is busy now!\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }

    /*2  put DVB_RootKey（CK2）to CA register(DATA input) */
    //(2)	配置寄存器CA_DIN0，CA_DIN1，CA_DIN2，CA_DIN3，这是解密(加密)的输入数据。
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN0, pClearSwpk[0]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN1, pClearSwpk[1]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN2, pClearSwpk[2]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN3, pClearSwpk[3]);
    
    //(3)	配置寄存器BL_CTRL_ENC，之后逻辑会启动运算，逻辑同时把CA_STATE.klad_busy置高
#if defined (CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3110ev500) || defined(CHIP_TYPE_hi3716mv320)        
    DRV_ADVCA_WriteReg(CA_V300_BL_CTRL_ENC, 0x01);//0x1c Set Register
#else
    DRV_ADVCA_WriteReg(CA_V300_BL_CTRL, 0x01);
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (Ret > 0)
    {
        HI_ERR_CA("key ladder timeout\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }

    for(index = 0; index < 16; index += 4) //Data Result is 128bit(16Bytes) data
    {
        pEncryptSwpk[(index / 4)] = DRV_ADVCA_ReadReg(CA_V300_BLK_ENC_RSLT + index);
    }

    return HI_SUCCESS;
}

/* Called by HAL_Cipher_SetKey */
HI_S32 CA_DecryptSwpk(HI_U32 AddrID, HI_U32 *pEncryptSwpk)
{
    HI_S32 Ret = HI_SUCCESS;
    CA_V300_CONFIG_STATE_U unConfigStatus;
    
    //Key Ladder internal use TDES.
    //Just Need to input data.
    /* para check*/
    if (HI_NULL == pEncryptSwpk)
    {
       HI_ERR_CA("HI_NULL == pEncryptSwpk\n");
       return HI_ERR_CA_INVALID_PARA;
    }
#ifndef CHIP_TYPE_hi3716mv330
    /* Read CONIFG_STATE.st_vld first, we can operate registers once CONIFG_STATE.st_vld set to 1. 
       The value of CONIFG_STATE.st_vld will be not changed when powered on after it set to 1. */
    unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
    if(unConfigStatus.bits.st_vld != 1)
    {
        HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA("Keyladder is busy now!\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }
    /*2  put EncryptData to CA register(DATA input) */
    //(2)	配置寄存器CA_DIN0，CA_DIN1，CA_DIN2，CA_DIN3，这是解密(加密)的输入数据。
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN0, pEncryptSwpk[0]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN1, pEncryptSwpk[1]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN2, pEncryptSwpk[2]);
    DRV_ADVCA_WriteReg(CA_V300_CA_DIN3, pEncryptSwpk[3]);
    
#if defined (CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3110ev500) || defined(CHIP_TYPE_hi3716mv320)
    DRV_ADVCA_WriteReg(CA_V300_BL_CTRL_DEC, (AddrID & 0x3F) << 8);//0x1c Set Register
#else
    DRV_ADVCA_WriteReg(CA_V300_BL_CTRL, (AddrID & 0xFF) << 8);
#endif
    Ret = HAL_ADVCA_V300_WaitStat();
    if (HI_FAILURE == Ret)
    {
        HI_ERR_CA("key ladder timeout\n");
        return HI_ERR_CA_WAIT_TIMEOUT;
    }
    else if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 CA_CryptHCA(HI_U32 AddrID)
{
        HI_S32 Ret = HI_SUCCESS;
        CA_V300_CONFIG_STATE_U unConfigStatus;
        CA_V300_CAUK_CTRL_U unCaukCtrl;
#ifndef CHIP_TYPE_hi3716mv330
        //(1)   先读寄存器CONIFG_STATE.st_vld，只有其值为1时，ca的寄存器值才是有效的，才能对寄存器操作。
        //一旦CONIFG_STATE.st_vld变高之后，会一直保持。只需上电之后查询一次。
        unConfigStatus.u32 = DRV_ADVCA_ReadReg(CA_V300_CONFIG_STATE);
        if(unConfigStatus.bits.st_vld != 1)
        {
            HI_ERR_CA("Error: ConfigStatus.bits.st_vld != 1\n");
            return HI_FAILURE;
        }
#endif    
        Ret = HAL_ADVCA_V300_WaitStat();
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_CA("Keyladder is busy now!\n");
            return HI_ERR_CA_WAIT_TIMEOUT;
        }
    
        //(3)   配置寄存器CAUK_CTRL，之后逻辑会启动运算，逻辑同时把CA_STATE.klad_busy置高
        unCaukCtrl.u32 = 0;
        unCaukCtrl.bits.key_addr = AddrID & 0xFF;
        DRV_ADVCA_WriteReg(CA_V300_CAUK_CTRL, unCaukCtrl.u32); //CAStatus.bits.klad_busy will be set to 1
    
        //Now Wait until CAStatus.bits.klad_busy == 0 
        Ret = HAL_ADVCA_V300_WaitStat();
        if (HI_FAILURE == Ret)
        {
            HI_ERR_CA("key ladder timeout\n");
            return HI_ERR_CA_WAIT_TIMEOUT;
        }
        else if (HI_SUCCESS != Ret)
        {
            return HI_FAILURE;
        }
        DRV_ADVCA_Wait(100);
    
        return HI_SUCCESS;
}

/*========================interface of CA  Common======================================*/

HI_S32 CA_Init(HI_VOID)
{
    HI_UNF_ADVCA_KEYLADDER_LEV_E enKLadder = HI_UNF_ADVCA_KEYLADDER_BUTT;
    
    OTP_Init();
    CA_GetR2RLadder(&g_R2RLadderSel);

	memset(&g_SPInfo, 0, sizeof(CA_KEYLADDER_INFO_S));
    memset(&g_MiscInfo, 0, sizeof(CA_KEYLADDER_INFO_S));
    g_MiscInfo.OpenFlag = HI_FALSE;
    g_MiscInfo.Alg = HI_UNF_ADVCA_ALG_TYPE_TDES;
    CA_GetMiscKlLevel(&enKLadder);
    g_MiscInfo.MaxLevel = enKLadder + 1;
    
    return HI_SUCCESS;
}

HI_S32 CA_DeInit(HI_VOID)
{
    OTP_DeInit();
    
    return HI_SUCCESS;
}

/* Called by HAL_Cipher_SetKey */
HI_S32 CA_DecryptCipher(HI_U32 AddrID, HI_U32 *pDataIn)
{
	HI_S32 ret = 0;

	if(HI_TRUE == g_MiscInfo.OpenFlag)
	{
		ret = CA_DecryptMisc(HI_UNF_ADVCA_KEYLADDER_LEV5, pDataIn, AddrID, 0, 1); //target : multi-cipher
	}
	else if(HI_TRUE == g_SPInfo.OpenFlag)
	{
		ret = CA_DecryptSP(HI_UNF_ADVCA_KEYLADDER_LEV5, pDataIn, AddrID, 0, 1); //target : multi-cipher
	}
	else
	{
		ret = CA_CryptR2R(g_R2RLadderSel, pDataIn, AddrID, 1);		//target : multi-cipher
	}

	return ret;
}

/* New UNF interface: HI_UNF_ADVCA_SetR2RSessionKey */
HI_S32 CA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key)
{
    HI_S32 ret = 0;
    CA_CRYPTPM_S cryptPm;
    
    memset(&cryptPm, 0, sizeof(CA_CRYPTPM_S));
    cryptPm.ladder = enStage;
    memcpy(cryptPm.pDin, pu8Key, 16);

    CA_ASSERT(CA_CryptR2R(cryptPm.ladder,cryptPm.pDin,0,1),ret);

    return ret;
}

HI_S32 CA_SetRSAKeyLockFlag(HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr)
{
    HI_S32 ret = HI_SUCCESS;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;

	if(NULL == pstOtpFuseAttr)
	{
		HI_ERR_CA("CA_SetRSAKeyLockFlag pstOtpFuseAttr is null\n");        
		return HI_ERR_CA_INVALID_PARA;
	}

	if(HI_TRUE == pstOtpFuseAttr->unOtpFuseAttr.stRSAKeyLockFlag.bIsLocked)
	{
		DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
		if(1 == DataLock_1.bits.rsa_key_lock)
		{
			return HI_SUCCESS;
		}

		DataLock_1.bits.rsa_key_lock = 1;
		ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_1, DataLock_1);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("Write rsa key lock flag failed, ret:0x%x\n", ret);
			return HI_ERR_CA_INVALID_PARA;
		}
	}

	return HI_SUCCESS;
}
HI_S32 CA_GetRSAKeyLockFlag(HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr)
{
    HI_S32 ret = HI_SUCCESS;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;

	if(NULL == pstOtpFuseAttr)
	{
		return HI_ERR_CA_INVALID_PARA;
	}

	DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
	if(0 == DataLock_1.bits.rsa_key_lock)
	{
		pstOtpFuseAttr->unOtpFuseAttr.stRSAKeyLockFlag.bIsLocked = HI_FALSE;
	}
	else
	{
		pstOtpFuseAttr->unOtpFuseAttr.stRSAKeyLockFlag.bIsLocked = HI_TRUE;
	}

	return HI_SUCCESS;
}


HI_S32 CA_SetCSA2RootKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32 i = 0;
    CA_OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;
    CA_OTP_V200_INTERNAL_CHECKSUMLOCK_U ChecksumLock;
    CA_OTP_V200_ONE_WAY_0_U OneWay_0;
    HI_U16 u16CRCValue = 0;
    HI_U8 u8CheckSum = 0;
    HI_U8 u8CheckSumCmp = 0;

    if (NULL == pu8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    /* check if key locked */
    DataLock_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.secret_key_lock)
    {
        HI_ERR_CA("CSA2 key set ERROR! secret key lock!\n");
        return HI_FAILURE;
    }

    /* check if checksum locked */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 == ChecksumLock.bits.locker_CSA2_RootKey)
    {
        HI_ERR_CA("Error! Checksum Locked before set key!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
    for (i = 0; i < 16; i++)
    {
        ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CSA2_ROOTKEY_0 + i, pu8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Fail to write OTP!\n");
            return ret;
        }
    }

    /* set checksum */
    u16CRCValue = CA_OTP_CalculateCRC16(pu8Key, 16);
    u8CheckSum = u16CRCValue & 0xff;
    ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CHECKSUM_CSA2_ROOT_KEY, u8CheckSum);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum!\n");
        return ret;
    }

    OneWay_0.u32 = 0;
    OneWay_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_ONEWAY_0);
    if(0 == OneWay_0.bits.checksum_read_disable)
    {
        u8CheckSumCmp = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_CHECKSUM_CSA2_ROOT_KEY);
        if (u8CheckSumCmp != u8CheckSum)
        {
            HI_ERR_CA("Fail to write checksum!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CA("checksum_read_disable is set to 1, can not verify chechsum write correct or not.\n");
    }

    /* lock checksum */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    ChecksumLock.bits.locker_CSA2_RootKey = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_CHECKSUMLOCK, ChecksumLock.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum lock!\n");
        return ret;
    }
   
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 != ChecksumLock.bits.locker_CSA2_RootKey)
    {
        HI_ERR_CA("Fail to write checksum Lock!\n");
        return HI_FAILURE;
    }
   

    /* lock csa2_root_key */
    DataLock_0.u32 = 0;
    DataLock_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_0);

    DataLock_0.bits.secret_key_lock = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_0, DataLock_0.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write OTP!\n");
        return ret;
    }

    return ret;
}

HI_S32 CA_SetR2RRootKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32 i = 0;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;
    CA_OTP_V200_INTERNAL_CHECKSUMLOCK_U ChecksumLock;
	CA_OTP_V200_ONE_WAY_0_U OneWay_0;
    HI_U16 u16CRCValue = 0;
    HI_U8 u8CheckSum = 0;
    HI_U8 u8CheckSumCmp = 0;

    if (NULL == pu8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    /* check if key locked */
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    if (1 == DataLock_1.bits.R2R_RootKey_lock)
    {
        HI_ERR_CA("Failed to set R2R_RootKey, locked!\n");
        return HI_FAILURE;
    }

    /* check if checksum locked */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 == ChecksumLock.bits.locker_R2R_RootKey)
    {
        HI_ERR_CA("Error! Checksum Locked before set key!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
    for (i = 0; i < 16; i++)
    {
        ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_R2R_ROOTKEY_0 + i, pu8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Fail to set R2R_RootKey!\n");
            return ret;
        }
    }

    /* set checksum */
    u16CRCValue = CA_OTP_CalculateCRC16(pu8Key, 16);
    u8CheckSum = u16CRCValue & 0xff;
    ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CHECKSUM_R2R_ROOT_KEY, u8CheckSum);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum!\n");
        return ret;
    }
  
	OneWay_0.u32 = 0;
	OneWay_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_ONEWAY_0);
	if(0 == OneWay_0.bits.checksum_read_disable)
	{
	    u8CheckSumCmp = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_CHECKSUM_R2R_ROOT_KEY);
	    if (u8CheckSumCmp != u8CheckSum)
	    {
	        HI_ERR_CA("Fail to write checksum!\n");
	        return HI_FAILURE;
	    }
	}
	else 
	{
		HI_ERR_CA("checksum_read_disable is set to 1, can not verify chechsum write correct or not.\n");
	}

    /* lock checksum */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    ChecksumLock.bits.locker_R2R_RootKey = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_CHECKSUMLOCK, ChecksumLock.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum lock!\n");
        return ret;
    }
  
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 != ChecksumLock.bits.locker_R2R_RootKey)
    {
        HI_ERR_CA("Fail to write checksum Lock!\n");
        return HI_FAILURE;
    }

    /* lock r2r_root_key */
    DataLock_1.u32 = 0;
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);

    DataLock_1.bits.R2R_RootKey_lock = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_1, DataLock_1.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to set R2R_RootKey_lock!\n");
        return ret;
    }

    return ret;
}


HI_S32 CA_SetCSA3RootKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32 i = 0;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;
    CA_OTP_V200_INTERNAL_CHECKSUMLOCK_U ChecksumLock;
    CA_OTP_V200_ONE_WAY_0_U OneWay_0;
    HI_U16 u16CRCValue = 0;
    HI_U8 u8CheckSum = 0;
    HI_U8 u8CheckSumCmp = 0;

    if (NULL == pu8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    /* check if key locked */
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    if (1 == DataLock_1.bits.CSA3_RootKey_lock)
    {
        HI_ERR_CA("CSA3 key set CSA3_RootKey, locked!\n");
        return HI_FAILURE;
    }

    /* check if checksum locked */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 == ChecksumLock.bits.locker_CSA3_RootKey)
    {
        HI_ERR_CA("Error! Checksum Locked before set key!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
    for (i = 0; i < 16; i++)
    {
        ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CSA3_ROOTKEY_0 + i, pu8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Fail to write OTP!\n");
            return ret;
        }
    }

    /* set checksum */
    u16CRCValue = CA_OTP_CalculateCRC16(pu8Key, 16);
    u8CheckSum = u16CRCValue & 0xff;
    ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CHECKSUM_CSA3_ROOT_KEY, u8CheckSum);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum!\n");
        return ret;
    }

    OneWay_0.u32 = 0;
    OneWay_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_ONEWAY_0);
    if(0 == OneWay_0.bits.checksum_read_disable)
    {
        u8CheckSumCmp = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_CHECKSUM_CSA3_ROOT_KEY);
        if (u8CheckSumCmp != u8CheckSum)
        {
            HI_ERR_CA("Fail to write checksum!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CA("checksum_read_disable is set to 1, can not verify chechsum write correct or not.\n");
    }

    /* lock checksum */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    ChecksumLock.bits.locker_CSA3_RootKey = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_CHECKSUMLOCK, ChecksumLock.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum lock!\n");
        return ret;
    }
  
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 != ChecksumLock.bits.locker_CSA3_RootKey)
    {
        HI_ERR_CA("Fail to write checksum Lock!\n");
        return HI_FAILURE;
    }

    /* lock key */
    DataLock_1.u32 = 0;
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    DataLock_1.bits.CSA3_RootKey_lock = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_1, DataLock_1.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to set CSA3_RootKey_lock!\n");
        return ret;
    }

    return ret;
}

HI_S32 CA_SetJtagKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32 i = 0;
	HI_U8 au8ChipId[8] = {0};
    HI_U16 u16CRCValue = 0;
    HI_U8 u8CheckSum = 0;
    HI_U8 u8CheckSumCmp = 0;
    HI_U8 u8ChecksumInput[16];
    CA_OTP_V200_INTERNAL_CHECKSUMLOCK_U ChecksumLock;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;

    if (NULL == pu8Key)
    {
        HI_ERR_CA("Get chipid ERROR!\n");
        return HI_FAILURE;
    }

	for(i = 0; i < 8; i++)
	{
	    au8ChipId[i] = HI_OTP_ReadByte(OTP_CHIP_ID_ADDR + i);
	}

    /* check if key locked */
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    if (1 == DataLock_1.bits.JTAG_Key_lock)
    {
        HI_ERR_CA("JTAG key set ERROR! Locked!\n");
        return HI_FAILURE;
    }

    /* check if checksum locked */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 == ChecksumLock.bits.locker_JTAGKey_ChipID)
    {
        HI_ERR_CA("Error! Checksum Locked before set key!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
    for (i = 0; i < 8; i++)
    {
        ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_JTAG_KEY_0 + i, pu8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Fail to write JTAG_Key!\n");
            return ret;
        }
    }
    memset(u8ChecksumInput, 0, sizeof(u8ChecksumInput));
    memcpy(u8ChecksumInput, pu8Key, 8);
    memcpy(u8ChecksumInput + 8, au8ChipId, 8);

    /* set checksum */
    u16CRCValue = CA_OTP_CalculateCRC16(u8ChecksumInput, 16);
    u8CheckSum = u16CRCValue & 0xff;

    ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_CHECKSUM_JTAGKEY_CHIPID, u8CheckSum);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write checksum!\n");
        return ret;
    }
  
    u8CheckSumCmp = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_CHECKSUM_JTAGKEY_CHIPID);
    if (u8CheckSumCmp != u8CheckSum)
    {
        HI_ERR_CA("Fail to write checksum!\n");
        return HI_FAILURE;
    }
   

    /* lock checksum */
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    ChecksumLock.bits.locker_JTAGKey_ChipID = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_CHECKSUMLOCK, ChecksumLock.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write locker_JTAGKey_ChipID!\n");
        return ret;
    }
  
    ChecksumLock.u32 = 0;
    ChecksumLock.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_CHECKSUMLOCK);
    if( 1 != ChecksumLock.bits.locker_JTAGKey_ChipID )
    {
        HI_ERR_CA("Fail to write locker_JTAGKey_ChipID!\n");
        return HI_FAILURE;
    }

    /* lock jtag_key */
    DataLock_1.u32 = 0;
    DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);

    DataLock_1.bits.JTAG_Key_lock = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_1, DataLock_1.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to set JTAG_Key_lock!\n");
        return ret;
    }

    return ret;
}


HI_S32 CA_GetR2rRootKeyLock(HI_U32 *pu32Lock)
{
    HI_S32    ret = HI_SUCCESS;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DATALOCK_1;
    
    if (NULL == pu32Lock)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DATALOCK_1.u32 = 0;
    DATALOCK_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    
    *pu32Lock = DATALOCK_1.bits.R2R_RootKey_lock;
    
    return ret;
}


HI_S32 CA_GetJtagKeyLock(HI_U32 *pu32Lock)
{
    HI_S32    ret = HI_SUCCESS;
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DATALOCK_1;
    
    if (NULL == pu32Lock)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DATALOCK_1.u32 = 0;
    DATALOCK_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);
    
    *pu32Lock = DATALOCK_1.bits.JTAG_Key_lock;
    
    return ret;
}


HI_S32 CA_SetRSAKey(HI_U8 *pkey)
{
	HI_S32 ret = HI_SUCCESS;
	HI_U8 au8KeyOut[512] = {0};
	HI_U8 u8Tmp = 0;
	HI_U32 index = 0;
	HI_U8 *ptr = NULL;
	HI_U32 rsa_e_offset = (512 - 16);
    CA_OTP_V200_INTERNAL_DATALOCK_1_U DataLock_1;

	if(NULL == pkey)
	{
		HI_ERR_CA("Invalid param, null pointer.\n");
		return HI_ERR_CA_INVALID_PARA;
	}

	/* check if rsa key is locked or not */
	DataLock_1.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_1);	//0x14[0]: rsa_key_lock
	if(1 == DataLock_1.bits.rsa_key_lock)
	{
		HI_ERR_CA("RSA Key has already been locked, can not be set any more.\n");
		return HI_FAILURE;
	}

	/* write rsa key */
	ptr = pkey + rsa_e_offset;
	for(index = 0; index < 16; index++)
	{
		ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_RSA_KEY_E_BASE + index, ptr[index]);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("Set RSA_Key_E failed ,ret:0x%x, index:0x%x.\n", ret, index);
			return HI_FAILURE;
		}
	}

	ptr = pkey;
	for(index = 0; index < 256; index++)
	{
		ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_RSA_KEY_N_BASE + index, ptr[index]);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("Set RSA_Key_N failed ,ret:0x%x, index:0x%x.\n", ret, index);
			return HI_FAILURE;
		}
	}

	/* Read rsa key and compare it with the original rsa key */
	memset(au8KeyOut, 0, sizeof(au8KeyOut));
	
	ptr = au8KeyOut + rsa_e_offset;
	for(index = 0; index < 16; index++)
	{
		ptr[index] = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_RSA_KEY_E_BASE + index);
	}

	ptr = au8KeyOut;
	for(index = 0; index < 256; index++)
	{
		ptr[index] = HI_OTP_ReadByte(CA_OTP_V200_INTERNAL_RSA_KEY_N_BASE + index);
	}

	ret = memcmp(pkey, au8KeyOut, sizeof(au8KeyOut));
	if(0 != ret)
	{
		HI_ERR_CA("Memcmp failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

    return HI_SUCCESS;
}


HI_S32 CA_SetStbSn(HI_U8 au8Input[4])
{
    HI_S32    ret = HI_SUCCESS;
    CA_OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;
    HI_U32 i = 0;
    
    DataLock_0.u32 = HI_OTP_Read(CA_OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.stbsn0_lock)
    {
		HI_ERR_CA("STBSN has already been set !!!\n");
        return HI_ERR_CA_SETPARAM_AGAIN;
    }

    //Write STBSN
    for ( i = 0 ; i < 4 ; i++ )
    {
        
        ret = HI_OTP_WriteByte(CA_OTP_V200_INTERNAL_STB_SN_0 + i, au8Input[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Fail to write OTP!\n");
            return ret;
        }
    }

    //Set stbsn_lock
    DataLock_0.u32 = 0;
    DataLock_0.bits.stbsn0_lock = 1;
    ret = HI_OTP_Write(CA_OTP_V200_INTERNAL_DATALOCK_0, DataLock_0.u32);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to write OTP!\n");
        return ret;
    }
    
    return HI_SUCCESS;
}
