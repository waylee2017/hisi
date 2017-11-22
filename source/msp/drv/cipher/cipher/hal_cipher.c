/******************************************************************************

  Copyright (C), 2011-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hal_cipher.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/

#include <linux/jiffies.h>
#include <asm/barrier.h>    /* mb() */
#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "hi_error_mpi.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_reg.h"
#include "hal_cipher.h"
#include "drv_advca_ext.h"
#include "hi_drv_mmz.h"
#include "hi_drv_cipher.h"
//#include "hi_drv_reg.h"
#include "drv_reg_ext.h"
#include "hi_reg_common.h"
#include "drv_hash.h"

/***************************** Macro Definition ******************************/
/*process of bit*/
#define HAL_SET_BIT(src, bit)        ((src) |= (1<<bit))
#define HAL_CLEAR_BIT(src,bit)       ((src) &= ~(1<<bit))

#if 0
#ifndef HI_REG_READ32
#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))
#endif
#ifndef HI_REG_WRITE32
#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))
#endif
#endif

/******************************* API declaration *****************************/
HI_S32 HAL_Cipher_SetInBufNum(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    /* register0~15 bit is valid, others bits reserved */
    regAddr = CIPHER_REG_CHANn_IBUF_NUM(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%#x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufNum(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr  = 0;
    HI_U32 regValue = 0;

    if (CIPHER_PKGx1_CHAN == chnId || HI_NULL == pNum)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_NUM(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    
    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetInBufCnt(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" HAL_Cipher_SetInBufCnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufCnt(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IBUF_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    *pNum = regValue;
    
    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetInBufEmpty(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IEMPTY_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetInBufEmpty(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_IEMPTY_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);
    
    *pNum = regValue;
    
    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetOutBufNum(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_NUM(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER("chn=%d cnt=%u\n", chnId, num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufNum(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_NUM(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetOutBufCnt(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER("SetOutBufCnt=%u, chnId=%u\n", num,chnId);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufCnt(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OBUF_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" HAL_Cipher_GetOutBufCnt=%u\n", regValue);
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetOutBufFull(HI_U32 chnId, HI_U32 num)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OFULL_CNT(chnId);

    if (num > 0xffff)
    {
        HI_ERR_CIPHER("value err:%x, set to 0xffff\n", num);
        num = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, num);
    
    HI_INFO_CIPHER(" cnt=%u\n", num);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetOutBufFull(HI_U32 chnId, HI_U32 *pNum)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    if ( (CIPHER_PKGx1_CHAN == chnId) || (HI_NULL == pNum) )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHANn_OFULL_CNT(chnId);
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    *pNum = regValue;

    HI_INFO_CIPHER(" cnt=%u\n", regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_WaitIdle(HI_VOID)
{
    HI_S32 i = 0;
    HI_U32 u32RegAddr = 0;
    HI_U32 u32RegValue = 0;

    /* channel 0 configuration register [31-2]:reserved, [1]:ch0_busy, [0]:ch0_start 
         * [1]:channel 0 status signal, [0]:channel 0 encrypt/decrypt start signal
         */

    u32RegAddr = CIPHER_REG_CHAN0_CFG;
    for (i = 0; i < CIPHER_WAIT_IDEL_TIMES; i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &u32RegValue);
        if (0x0 == ((u32RegValue >> 1) & 0x01))
        {
            return HI_SUCCESS;
        }
        else
        {
            //udelay(1);
        }
    }

    return HI_FAILURE;
}
/*
just only check for channel 0
 */
HI_BOOL HAL_Cipher_IsIdle(HI_U32 chn)
{
    HI_U32 u32RegValue = 0;

    HI_ASSERT(CIPHER_PKGx1_CHAN == chn);

    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CHAN0_CFG, &u32RegValue);
    if (0x0 == ((u32RegValue >> 1) & 0x01))
    {
        return HI_TRUE;
    }

    return HI_FALSE;
}

HI_S32 HAL_Cipher_SetDataSinglePkg(HI_DRV_CIPHER_DATA_INFO_S * info)
{
    HI_U32 regAddr = 0;
    HI_U32 i = 0;

    regAddr = CIPHER_REG_CHAN0_CIPHER_DIN(0);
    
    /***/
    for (i = 0; i < (16/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), (*(info->u32DataPkg + i)) );
    }
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_ReadDataSinglePkg(HI_U32 *pData)
{
    HI_U32 regAddr = 0;
    HI_U32 i = 0;

    regAddr = CIPHER_REG_CHAN0_CIPHER_DOUT(0);

    /***/
    for (i = 0; i < (16/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(regAddr + (i * sizeof(HI_U32)), &(*(pData+ i)));
    }
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_StartSinglePkg(HI_U32 chnId)
{
    HI_U32 u32RegAddr = 0;
    HI_U32 u32RegValue = 0;

    HI_ASSERT(CIPHER_PKGx1_CHAN == chnId);

    u32RegAddr = CIPHER_REG_CHAN0_CFG;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &u32RegValue);
    
    u32RegValue |= 0x1;
    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, u32RegValue); /* start work */
    
    return HI_SUCCESS;
}


HI_S32 HAL_Cipher_SetBufAddr(HI_U32 chnId, CIPHER_BUF_TYPE_E bufType, HI_U32 addr)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_BUF_TYPE_IN == bufType)
    {
        regAddr = CIPHER_REG_CHANn_SRC_LST_SADDR(chnId);
    }
    else if (CIPHER_BUF_TYPE_OUT == bufType)
    {
        regAddr = CIPHER_REG_CHANn_DEST_LST_SADDR(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetBufAddr type err:%x.\n", bufType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }


    HI_INFO_CIPHER("Set chn%d '%s' BufAddr to:%x.\n",chnId,
        (CIPHER_BUF_TYPE_IN == bufType)?"In":"Out",  addr);

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, addr);

    return HI_SUCCESS;
}



HI_VOID HAL_Cipher_Reset(HI_VOID)
{

    //(HI_VOID)HAL_CIPHER_WriteReg(CIPHER_SOFT_RESET_ADDR, 1);
    return;
}

HI_S32 HAL_Cipher_GetOutIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN != chnId)
    {
        regAddr = CIPHER_REG_CHAN0_CIPHER_IVIN(0);
    }
    else
    {
        regAddr = CIPHER_REG_CHAN_CIPHER_IVOUT(chnId);
    }


    /***/
    for (i = 0; i < (CI_IV_SIZE/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_ReadReg(regAddr + (i * sizeof(HI_U32)), &(pCtrl->u32IV[i]));
    }

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetInIV(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN != chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    regAddr = CIPHER_REG_CHAN0_CIPHER_IVIN(0);

    /***/
    for (i = 0; i < (CI_IV_SIZE/sizeof(HI_U32)); i++)
    {
        (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), pCtrl->u32IV[i]);
    }

    return HI_SUCCESS;
}

extern ADVCA_EXPORT_FUNC_S  *s_pAdvcaFunc;

HI_S32 HAL_Cipher_SetKey(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 i = 0;
    HI_U32 regAddr = 0;
    DRV_ADVCA_EXTFUNC_PARAM_S stADVCAFuncParam = {0};

    regAddr = CIPHER_REG_CIPHER_KEY(chnId);

    if(NULL == pCtrl)
    {
        HI_ERR_CIPHER("Error, null pointer!\n");
        return HI_ERR_CA_INVALID_PARA;
    }

    if (HI_FALSE == pCtrl->bKeyByCA)
    {
        for (i = 0; i < (CI_KEY_SIZE/sizeof(HI_U32)); i++)
        {
            (HI_VOID)HAL_CIPHER_WriteReg(regAddr + (i * sizeof(HI_U32)), pCtrl->u32Key[i]);
        }
    }
    else
    {
        if (s_pAdvcaFunc && s_pAdvcaFunc->pfnAdvcaCrypto)
        {
            memset(&stADVCAFuncParam, 0, sizeof(stADVCAFuncParam));
            stADVCAFuncParam.enCAType = pCtrl->enCaType;
            stADVCAFuncParam.AddrID = chnId;
            /* Ignore evenOrOdd value here */
            stADVCAFuncParam.EvenOrOdd = 0;
            stADVCAFuncParam.pu8Data = (HI_U8 *)pCtrl->u32Key;
            stADVCAFuncParam.bIsDeCrypt = HI_TRUE;
            stADVCAFuncParam.enTarget = DRV_ADVCA_CA_TARGET_MULTICIPHER;
            return (s_pAdvcaFunc->pfnAdvcaCrypto)(stADVCAFuncParam); 
        }
		else
		{
            HI_ERR_CIPHER("Error, Advca Crypto function is null!\n");
            return HI_FAILURE;
		}
    }

    HI_INFO_CIPHER("SetKey: chn%u,Key:%#x, %#x, %#x, %#x.\n", chnId, pCtrl->u32Key[0], pCtrl->u32Key[1], pCtrl->u32Key[2], pCtrl->u32Key[3]);
    
    return HI_SUCCESS;
}

static HI_S32 HAL_CIPHER_IsCABusy(HI_VOID)
{
    HI_U32 cnt = 0;
    HI_U32 u32CAState = 0;

    while (cnt < 50)
    {
        u32CAState = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CA_STATE, &u32CAState);
        if( ((u32CAState >> 31) & 0x1) == 0)
        {
            break;
        }
        msleep(10);
        cnt++;
    }

    if (cnt >= 50)
    {
        HI_ERR_CIPHER("Error Time out! \n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HAL_CIPHER_LoadSTBRootKey(HI_U32 u32ChID)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_CA_STB_KEY_CTRL_U unSTBKeyCtrl;
    CIPHER_CA_CONFIG_STATE_U unConfigState;

    unConfigState.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_CA_CONFIG_STATE, &unConfigState.u32);
    if(unConfigState.bits.st_vld != 1)
    {
        HI_ERR_CIPHER("Error: ca unStatus.bits.st_vld != 1\n");
        return HI_FAILURE;
    }

    ret = HAL_CIPHER_IsCABusy();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("CA time out!\n");
        return HI_FAILURE;
    }

    unSTBKeyCtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_REG_STB_KEY_CTRL, &unSTBKeyCtrl.u32);
    unSTBKeyCtrl.bits.key_addr = u32ChID;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_STB_KEY_CTRL, unSTBKeyCtrl.u32);

    ret = HAL_CIPHER_IsCABusy();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("CA time out!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


/*
=========channel n control register==========
[31:22]             weight [in 64bytes, just only for multi-packet channel encrypt or decrypt, otherwise reserved.]
[21:17]             reserved
[16:14]     RW    key_adder [current key sequence number]
[13]          RW    key_sel [key select control, 0-CPU keys, 1-keys from key Ladder]
[12:11]             reserved
[10:9]      RW      key_length[key length control
                                            (1).AES, 00-128 bits key, 01-192bits 10-256bits, 11-128bits
                                            (2).DES, 00-3 keys, 01-3keys, 10-3keys, 11-2keys]
[8]                     reserved
[7:6]       RW      width[bits width control
                                 (1).for DES/3DES, 00-64bits, 01-8bits, 10-1bit, 11-64bits
                                 (2).for AES, 00-128bits, 01-8bits, 10-1bit, 11-128bits]
[5:4]       RW      alg_sel[algorithm type, 00-DES, 01-3DES, 10-AES, 11-DES]
[3:1]       RW      mode[mode control, 
                                  (1).for AES, 000-ECB, 001-CBC, 010-CFB, 011-OFB, 100-CTR, others-ECB
                                  (2).for DES, 000-ECB, 001-CBC, 010-CFB, 011-OFB, others-ECB]
[0]         RW      decrypt[encrypt or decrypt control, 0 stands for encrypt, 1 stands for decrypt]
*/
HI_S32 HAL_Cipher_Config(HI_U32 chnId, HI_BOOL bDecrypt, HI_BOOL bIVChange, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_U32 keyId = 0;
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    HI_BOOL bKeyByCA = pCtrl->bKeyByCA;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        /* channel 0, single packet encrypt or decrypt channel */
        regAddr = CIPHER_REG_CHAN0_CIPHER_CTRL;
    }
    else
    {
        regAddr = CIPHER_REG_CHANn_CIPHER_CTRL(chnId);
    }

    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (HI_FALSE == bDecrypt)/* encrypt */
    {
        regValue &= ~(1 << 0);
    }
    else /* decrypt */
    {
        regValue |= 1;
    }

    /* set mode */
    regValue &= ~(0x07 << 1);/* clear bit1~bit3 */
    regValue |= ((pCtrl->enWorkMode & 0x7) << 1);

    /* set algorithm bits */
    regValue &= ~(0x03 << 4); /* clear algorithm bits*/
    regValue |= ((pCtrl->enAlg & 0x3) << 4);

    /* set bits width */
    regValue &= ~(0x03 << 6);
    regValue |= ((pCtrl->enBitWidth & 0x3) << 6);

    regValue &= ~(0x01 << 8);
    regValue |= ((bIVChange & 0x1) << 8);
    if (bIVChange) ///?
    {
        HAL_Cipher_SetInIV(chnId, pCtrl);
    }

    regValue &= ~(0x03 << 9);
    regValue |= ((pCtrl->enKeyLen & 0x3) << 9);

    regValue &= ~(0x01 << 13);
    regValue |= ((bKeyByCA & 0x1) << 13);

//    if (HI_FALSE == bKeyByCA) /* By User */
//    {
        keyId = chnId;/**/

        //HAL_Cipher_SetKey(chnId, pCtrl->u32Key);

        regValue &= ~(0x07 << 14);
        regValue |= ((keyId & 0x7) << 14);
//    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetAGEThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_INT_TYPE_IN_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_IAGE_CNT(chnId);
    }
    else if (CIPHER_INT_TYPE_OUT_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_OAGE_CNT(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetAGEThreshold type err:%x.\n", intType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (value > 0xffff)
    {
        HI_ERR_CIPHER("SetAGEThreshold value err:%x, set to 0xffff\n", value);
        value = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, value);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetIntThreshold(HI_U32 chnId, CIPHER_INT_TYPE_E intType, HI_U32 value)
{
    HI_U32 regAddr = 0;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (CIPHER_INT_TYPE_IN_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_INT_ICNTCFG(chnId);
    }
    else if (CIPHER_INT_TYPE_OUT_BUF == intType)
    {
        regAddr = CIPHER_REG_CHANn_INT_OCNTCFG(chnId);
    }
    else
    {
        HI_ERR_CIPHER("SetIntThreshold type err:%x.\n", intType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (value > 0xffff)
    {
        HI_ERR_CIPHER("SetIntThreshold value err:%x, set to 0xffff\n", value);
        value = 0xffff;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, value);

    return HI_SUCCESS;
}

/*
interrupt enable
[31]-----cipher module unitary interrupt enable
[30:16]--reserved
[15] channel 7 output queue data interrupt enable
[14] channel 6 output queue data interrupt enable
[... ] channel ... output queue data interrupt enable
[9]   channel 1 output queue data interrupt enable
[8]   channel 0 data dispose finished interrupt enble
[7] channel 7 input queue data interrupt enable
[6] channel 6 input queue data interrupt enable
...
[1] channel 1 input queue data interrupt enable
[0] reserved
*/
HI_S32 HAL_Cipher_EnableInt(HI_U32 chnId, int intType)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    regValue |= (1 << 31); /* sum switch int_en */
    #if defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) || defined(CHIP_TYPE_hi3798mv100_a) || defined(CHIP_TYPE_hi3798mv100)
    regValue |= (1 << 30); /* sec_int_en */
    #endif

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        regValue |= (1 << 8);
    }
    else
    {
        if (CIPHER_INT_TYPE_OUT_BUF == (CIPHER_INT_TYPE_OUT_BUF & intType))
        {
            regValue |= (1 << (8 + chnId));
        }

        /* NOT else if */
        if (CIPHER_INT_TYPE_IN_BUF == (CIPHER_INT_TYPE_IN_BUF & intType))
        {
            regValue |= (1 << (0 + chnId));
        }
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);

    HI_INFO_CIPHER("HAL_Cipher_EnableInt: Set INT_EN:%#x\n", regValue);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_DisableInt(HI_U32 chnId, int intType)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (CIPHER_PKGx1_CHAN == chnId)
    {
        regValue &= ~(1 << 8);
    }
    else
    {
        if (CIPHER_INT_TYPE_OUT_BUF == (CIPHER_INT_TYPE_OUT_BUF & intType))
        {
            regValue &= ~(1 << (8 + chnId));
        }

        /* NOT else if */
        if (CIPHER_INT_TYPE_IN_BUF == (CIPHER_INT_TYPE_IN_BUF & intType))
        {
            regValue &= ~(1 << (0 + chnId));
        }
    }

    if (0 == (regValue & 0x7fffffff))
    {
        regValue &= ~(1 << 31); /* regValue = 0; sum switch int_en */
    }

    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);

    HI_INFO_CIPHER("HAL_Cipher_DisableInt: Set INT_EN:%#x\n", regValue);

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_DisableAllInt(HI_VOID)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    regValue = 0;
    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
}

/*
interrupt status register
[31:16]--reserved
[15] channel 7 output queue data interrupt enable
[14] channel 6 output queue data interrupt enable
[... ] channel ... output queue data interrupt enable
[9]   channel 1 output queue data interrupt enable
[8]   channel 0 data dispose finished interrupt enble
[7] channel 7 input queue data interrupt enable
[6] channel 6 input queue data interrupt enable
...
[1] channel 1 input queue data interrupt enable
[0] reserved
*/

HI_VOID HAL_Cipher_GetIntState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_STATUS;
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

   HI_INFO_CIPHER("HAL_Cipher_GetIntState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_GetIntEnState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

   HI_INFO_CIPHER("HAL_Cipher_GetIntEnState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_GetRawIntState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_RAW;
    
    (HI_VOID)HAL_CIPHER_ReadReg(regAddr, &regValue);

    if (pState)
    {
        *pState = regValue;
    }

    HI_INFO_CIPHER("HAL_Cipher_GetRawIntState=%#x\n", regValue);
}

HI_VOID HAL_Cipher_ClrIntState(HI_U32 intStatus)
{
    HI_U32 regAddr;
    HI_U32 regValue;

    regAddr = CIPHER_REG_INT_RAW;
    regValue = intStatus;
    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
}

HI_VOID HAL_Cipher_EnableAllSecChn(HI_VOID)
{
	HI_U32 regAddr = CIPHER_REG_SEC_CHN_CFG;
	HI_U32 regValue = 0;

	regValue = 0xffffffff;
    (HI_VOID)HAL_CIPHER_WriteReg(regAddr, regValue);
	return;
}

HI_VOID HAL_Cipher_Init(void)
{
    U_PERI_CRG48 unCipherCrg;

    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    /* reset request */
    #if !(defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) \
        || defined(CHIP_TYPE_hi3798mv100_a) || defined(CHIP_TYPE_hi3798mv100) \
        || defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) \
        || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv330))
    unCipherCrg.bits.ca_kl_srst_req = 1;
    #endif
    unCipherCrg.bits.ca_ci_srst_req = 1;
    unCipherCrg.bits.otp_srst_req = 1;
    /* ca clock select : 200M */
    unCipherCrg.bits.ca_ci_clk_sel = 0;
//    unCipherCrg.bits.ca_ci_clk_sel = 1;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;

    mdelay(1);

    unCipherCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    #if !(defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) \
        || defined(CHIP_TYPE_hi3798mv100_a) || defined(CHIP_TYPE_hi3798mv100) \
        || defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) \
        || defined(CHIP_TYPE_hi3110ev500)|| defined (CHIP_TYPE_hi3716mv330))
    unCipherCrg.bits.ca_kl_srst_req = 0;
    #endif
    unCipherCrg.bits.ca_ci_srst_req = 0;
    unCipherCrg.bits.otp_srst_req = 0;
    /* make sure ca clock select : 200M */
    unCipherCrg.bits.ca_ci_clk_sel = 0;
//    unCipherCrg.bits.ca_ci_clk_sel = 1;
    g_pstRegCrg->PERI_CRG48.u32 = unCipherCrg.u32;

    /* hash sw reset */  
#ifdef CFG_HI_CIPHER_HASH_SUPPORT
    (HI_VOID)HAL_Cipher_HashSoftReset();
#endif


    return;
}

HI_VOID HAL_Cipher_DeInit(void)
{
    return;
}
