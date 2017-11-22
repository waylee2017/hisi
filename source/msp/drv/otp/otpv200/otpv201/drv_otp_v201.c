/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp_v201.c
  Version       : Initial Draft
  Author        : 
  Created       : 
  Last Modified :
  Description   : OTP REG DEFINE
  Function List :
  History       :
******************************************************************************/
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <asm/delay.h>
#include <linux/kernel.h>
#include <linux/delay.h>   //msleep
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/memory.h>
#include "hi_type.h"
#include "drv_otp.h"
#include "drv_otp_common.h"
#include "drv_otp_reg_v201.h"
#include "drv_otp_v200.h"
#include "hi_error_mpi.h"
#include "drv_otp_ext.h"
#include "drv_otp_ioctl.h"


HI_S32 OTP_V201_SetHdcpRootKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32    i = 0;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;
    HI_U8     u8HdcpOTPKey[OTP_HDCP_ROOT_KEY_LEN] = {0};
    HI_BOOL OTPMatchingFlag = HI_TRUE;

    if (NULL == pu8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    /* check if locked or not */
    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.esck_lock)
    {
        HI_ERR_OTP("HDCPKEY set ERROR! secret key lock!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
	for (i = 0; i < OTP_HDCP_ROOT_KEY_LEN; i++)
	{
	    ret = HAL_OTP_V200_WriteByte(OTP_V200_INTERNAL_ESCK_0 + i, pu8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_OTP("ERROR: Set HDCP Root Key Error!\n");
            return ret;
        }
	}

    /* read from otp */
    for ( i = 0 ; i < OTP_HDCP_ROOT_KEY_LEN ; i++ )
	{
        u8HdcpOTPKey[i] = (HI_U8)HAL_OTP_V200_ReadByte(OTP_V200_INTERNAL_ESCK_0 + i);
	}
    
    /* Compare HDCP key */
    OTPMatchingFlag = HI_TRUE;
	for(i = 0; i < OTP_HDCP_ROOT_KEY_LEN; i ++)
	{
	    if(u8HdcpOTPKey[i] != pu8Key[i])
	    {
	        OTPMatchingFlag = HI_FALSE; //not equal£¡
	        break;
	    }
	}

    /* Check Compare result! */
	if(HI_FALSE == OTPMatchingFlag)
	{
	    HI_ERR_OTP("Error: Burn HDCP Root key Error\n");
	    ret = HI_FAILURE;
	}

	return ret;
}

HI_S32 OTP_V201_GetHdcpRootKey(HI_U8 *pu8Key)
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32 i = 0;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    if (NULL == pu8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.esck_lock)
    {
        HI_ERR_OTP("HDCP Root KEY get ERROR! Hdcp root key lock!\n");
        return HI_FAILURE;
    }
    
    /* read from OTP */
	for (i = 0; i < OTP_HDCP_ROOT_KEY_LEN; i++)
	{
	    pu8Key[i] = HAL_OTP_V200_ReadByte(OTP_V200_INTERNAL_ESCK_0 + i);
	}

	return ret;
}

HI_S32 OTP_V201_SetHdcpRootKeyLock(HI_VOID)
{
    HI_S32    ret = HI_SUCCESS;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    DataLock_0.u32 = 0;
    DataLock_0.bits.esck_lock = 1;
    ret = HAL_OTP_V200_Write(OTP_V200_INTERNAL_DATALOCK_0, DataLock_0.u32);
    
	return ret;
}

HI_S32 OTP_V201_GetHdcpRootKeyLock(HI_BOOL *pBLock)
{
    HI_S32    ret = HI_SUCCESS;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    if (NULL == pBLock)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    *pBLock = DataLock_0.bits.esck_lock;

	return ret;
}

HI_S32 OTP_V201_SetSTBRootKey(HI_U8 u8Key[16])
{
    HI_S32    ret = HI_SUCCESS;
    HI_U32    i = 0;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;
    HI_U8     u8STBRootKey[16] = {0};
    HI_BOOL OTPMatchingFlag = HI_TRUE;

    if (NULL == u8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    /* check if locked or not */
    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.stb_rootkey_lock)
    {
        HI_ERR_OTP("STB root key set ERROR! Is locked!\n");
        return HI_FAILURE;
    }

    /* write to OTP */
	for (i = 0; i < OTP_STB_ROOT_KEY_LEN; i++)
	{
	    ret = HAL_OTP_V200_WriteByte(OTP_V200_INTERNAL_STB_ROOTKEY_0 + i, u8Key[i]);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_OTP("ERROR: Set STB Root Key Error!\n");
            return ret;
        }
	}

    /* read from otp */
    for ( i = 0 ; i < OTP_STB_ROOT_KEY_LEN ; i++ )
	{
        u8STBRootKey[i] = (HI_U8)HAL_OTP_V200_ReadByte(OTP_V200_INTERNAL_STB_ROOTKEY_0 + i);
	}
    
    /* Compare */
    OTPMatchingFlag = HI_TRUE;
	for(i = 0; i < OTP_STB_ROOT_KEY_LEN; i ++)
	{
	    if(u8STBRootKey[i] != u8Key[i])
	    {
	        OTPMatchingFlag = HI_FALSE;
	        break;
	    }
	}

    /* Check Compare result! */
	if(HI_FALSE == OTPMatchingFlag)
	{
	    HI_ERR_OTP("Error: Burn STB root key Error\n");
	    ret = HI_FAILURE;
	}

	return ret;
}

HI_S32 OTP_V201_GetSTBRootKey(HI_U8 u8Key[16])
{
    HI_U32 i = 0;
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    if (NULL == u8Key)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    if (1 == DataLock_0.bits.stb_rootkey_lock)
    {
        HI_ERR_OTP("STB root key get ERROR! Is locked!\n");
        return HI_FAILURE;
    }
    
    /* read from OTP */
	for (i = 0; i < OTP_STB_ROOT_KEY_LEN; i++)
	{
	    u8Key[i] = HAL_OTP_V200_ReadByte(OTP_V200_INTERNAL_STB_ROOTKEY_0 + i);
	}

	return HI_SUCCESS;
}

HI_S32 OTP_V201_LockSTBRootKey(HI_VOID)
{
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    DataLock_0.u32 = 0;
    DataLock_0.bits.stb_rootkey_lock = 1;
    
	return HAL_OTP_V200_Write(OTP_V200_INTERNAL_DATALOCK_0, DataLock_0.u32);;
}

HI_S32 OTP_V201_GetSTBRootKeyLockFlag(HI_BOOL *pBLock)
{
    OTP_V200_INTERNAL_DATALOCK_0_U DataLock_0;

    if (NULL == pBLock)
    {
        return HI_ERR_CA_INVALID_PARA;
    }

    DataLock_0.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_DATALOCK_0);
    *pBLock = DataLock_0.bits.stb_rootkey_lock;

	return HI_SUCCESS;
}

HI_S32 OTP_V201_Get_DDPLUS_Flag(HI_BOOL *pu32DDPlusFlag)
{
	HI_S32    ret = HI_SUCCESS;
	OTP_V200_INTERNAL_PV_1_U PV_1;

    if (NULL == pu32DDPlusFlag)
    {
        return HI_ERR_CA_INVALID_PARA;
    }
    
	PV_1.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_PV_1);

    if (1 == PV_1.bits.dolby_flag)  /*0:support DDPLUS(default); 1: do not support DDPLUS*/
    {
        *pu32DDPlusFlag = HI_FALSE;
    }
    else
    {
        *pu32DDPlusFlag = HI_TRUE;
    }

    return ret;
}

HI_S32 OTP_V201_Get_DTS_Flag(HI_BOOL *pu32DTSFlag)
{
	HI_S32    ret = HI_SUCCESS;
	OTP_V200_INTERNAL_PV_1_U PV_1;

    if (NULL == pu32DTSFlag)
    {
        return HI_ERR_CA_INVALID_PARA;
    }
    
	PV_1.u32 = HAL_OTP_V200_Read(OTP_V200_INTERNAL_PV_1);

    if (1 == PV_1.bits.dts_flag)  /*0:do not support DTS(default); 1: support DTS*/
    {
        *pu32DTSFlag = HI_TRUE;
    }
    else
    {
        *pu32DTSFlag = HI_FALSE;
    }

    return ret;
}

HI_S32 OTP_V201_SoftReset(HI_VOID)
{
    OTP_V201_CRG29_CA_U stCrgCA;

/* RESET */
    stCrgCA.u32 = otp_read_reg(OTP_V201_CRG_CA_ADDR);
    stCrgCA.bits.ca_efuse_srst_req = 1;
 	otp_write_reg(OTP_V201_CRG_CA_ADDR, stCrgCA.u32);

	msleep(1);
	
/* CANCEL RESET */
    stCrgCA.u32 = otp_read_reg(OTP_V201_CRG_CA_ADDR);;
    stCrgCA.bits.ca_efuse_srst_req = 0;
 	otp_write_reg(OTP_V201_CRG_CA_ADDR, stCrgCA.u32);

    return HI_SUCCESS;
}
/*--------------------------------------END--------------------------------------*/
