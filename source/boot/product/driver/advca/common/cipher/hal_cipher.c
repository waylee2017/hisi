/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hal_cipher.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/

#include "hi_type.h"
#include "hi_reg_common.h"
#include "drv_cipher_define.h"
#include "drv_cipher_intf.h"
#include "drv_cipher_reg.h"
#include "hal_cipher.h"
#include "ca_authdefine.h"
#include "ca_common.h"
#include <config.h>
#include "hi_error_mpi.h"
#ifdef HI_MINIBOOT_SUPPORT
#include "delay.h"
#endif
#ifndef HI_MINIBOOT_SUPPORT
#include "asm/atomic.h"
#include "common.h"
#include <asm/io.h>
#endif

/***************************** Macro Definition ******************************/
/* cipher reg read and write macro define */
#ifndef CIPHER_READ_REG
#define CIPHER_READ_REG(reg, result) ((result) = *(volatile unsigned int *)(reg))
#endif

#ifndef CIPHER_WRITE_REG
#define CIPHER_WRITE_REG(reg, data) (*((volatile unsigned int *)(reg)) = (data))
#endif

/*process of bit*/
#define HAL_SET_BIT(src, bit)        ((src) |= (1<<bit))
#define HAL_CLEAR_BIT(src,bit)       ((src) &= ~(1<<bit))

#define HI_PANIC HI_ERR_CIPHER

#define HI_ASSERT(expr)                                     \
    do{                                                     \
        if (!(expr)) {                                      \
            HI_PANIC("\nASSERT failed at:\n  >File name: %s\n  >Function : %s\n  >Line No. : %d\n  >Condition: %s\n", \
				__FILE__,__FUNCTION__, __LINE__, #expr);    \
        }                                                   \
    }while(0)

/*************************** Structure Definition ****************************/
typedef enum
{
    HASH_READY,
    REC_READY,
    DMA_READY,
}HASH_WAIT_TYPE;

/******************************* API declaration *****************************/
#ifdef HI_MINIBOOT_SUPPORT
extern unsigned int get_timer_clock(void);
#define CONFIG_SYS_HZ           (get_timer_clock() >> 8)
#endif

static unsigned long ticks_to_msecs(unsigned long long ticks)
{
    unsigned long ulapsed;
    
    ulapsed = ticks = ((ticks * 1000000) / CONFIG_SYS_HZ);
    
    return (ulapsed / 1000);
}

inline HI_S32 HASH_WaitReady( HASH_WAIT_TYPE enType)
{
    CIPHER_SHA_STATUS_U unCipherSHAstatus;
    unsigned long long ulStartTime = 0;
    unsigned long long ulLastTime = 0;
    unsigned long long ulDuraTime = 0;

    /* wait for hash_rdy */
    ulStartTime = get_ticks();
    while(1)
    {
        unCipherSHAstatus.u32 = 0;
        CIPHER_READ_REG(CIPHER_HASH_REG_STATUS_ADDR, unCipherSHAstatus.u32);
        if(HASH_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.hash_rdy)
            {
                break;
            }
        }
        else if (REC_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.rec_rdy)
            {
                break;
            }
        }
        else if (DMA_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.dma_rdy)
            {
                break;
            }
        }
        else
        {
            HI_ERR_CIPHER("Error! Invalid wait type!\n");
            return HI_FAILURE;
        }

        ulLastTime = get_ticks();
        ulDuraTime = ticks_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        {
            HI_ERR_CIPHER("Error! Hash time out!\n");
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

/* check if hash module is idle or not */
static HI_S32 HAL_CIPHER_WaitHashIdle(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    unsigned long long ulStartTime = 0;
    unsigned long long ulLastTime = 0;
    unsigned long long ulDuraTime = 0;

__HASH_WAIT__:
    ulStartTime = get_ticks();
    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    while(0 != (unCipherSHACtrl.bits.usedbyarm | unCipherSHACtrl.bits.usedbyc51))
    {
        ulLastTime = get_ticks();
        ulDuraTime = ticks_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        { 
            HI_ERR_CIPHER("Error! Hash module is busy now!\n");
            return HI_FAILURE;
        }
        else
        {
            udelay(1000);
            unCipherSHACtrl.u32 = 0;
            CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
            continue;
        }
    }

    /* set bit 6 */
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x1;
    CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    /* check if set bit 6 valid or not */
    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.u32 = (unCipherSHACtrl.u32 >> 6) & 0x3;
    switch(unCipherSHACtrl.u32)
    {
        case 0x1:
        {
            return HI_SUCCESS;
        }
        case 0x3:
        {
            /* clear bit 6*/
            CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
            unCipherSHACtrl.bits.usedbyarm = 0;
            CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
            goto __HASH_WAIT__;
        }
        default:
        {
            goto __HASH_WAIT__;
        }
    }
}

static HI_VOID HAL_CIPHER_MarkHashIdle(HI_VOID)
{
    CIPHER_SHA_CTRL_U unCipherSHACtrl;

    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x0;
    CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    return;
}
//#endif

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

    CIPHER_WRITE_REG(regAddr, num);

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
    CIPHER_READ_REG(regAddr, regValue);
    
    *pNum = regValue;

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

    CIPHER_WRITE_REG(regAddr, num);

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
    CIPHER_READ_REG(regAddr, regValue);
    *pNum = regValue;

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

    CIPHER_WRITE_REG(regAddr, num);

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
    CIPHER_READ_REG(regAddr, regValue);
    
    *pNum = regValue;

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

    CIPHER_WRITE_REG(regAddr, num);

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
    CIPHER_READ_REG(regAddr, regValue);

    *pNum = regValue;

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

    CIPHER_WRITE_REG(regAddr, num);
        
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
    CIPHER_READ_REG(regAddr, regValue);

    *pNum = regValue;

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

    CIPHER_WRITE_REG(regAddr, num);
    
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
    CIPHER_READ_REG(regAddr, regValue);

    *pNum = regValue;

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
    for (i = 0; i < CIPHER_WAIT_IDLE_TIMES; i++)
    {
        CIPHER_READ_REG(u32RegAddr, u32RegValue);
        if (0x0 == ((u32RegValue >> 1) & 0x01))
        {
            return HI_SUCCESS;
        }
        else
        {
            udelay(1000);
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

    CIPHER_READ_REG(CIPHER_REG_CHAN0_CFG, u32RegValue);
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
        CIPHER_WRITE_REG(regAddr + (i * sizeof(HI_U32)), (*(info->u32DataPkg + i)) );
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
        CIPHER_READ_REG(regAddr + (i * sizeof(HI_U32)), (*(pData+ i)) );
    }
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_StartSinglePkg(HI_U32 chnId)
{
    HI_U32 u32RegAddr = 0;
    HI_U32 u32RegValue = 0;

    HI_ASSERT(CIPHER_PKGx1_CHAN == chnId);

    u32RegAddr = CIPHER_REG_CHAN0_CFG;
    CIPHER_READ_REG(u32RegAddr, u32RegValue);
    
    u32RegValue |= 0x1;
    CIPHER_WRITE_REG(u32RegAddr, u32RegValue); /* start work */
    
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

    CIPHER_WRITE_REG(regAddr, addr);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_Stat(HI_U32 chnId, HI_U32 *pCipherStat)
{
    HI_U32 u32RegAddr;
    HI_U32 u32RegValue;

    if (CIPHER_PKGx1_CHAN == chnId)
    {
    //    HI_ASSERT(CIPHER_PKGx1_CHAN == chnId);

        u32RegAddr = CIPHER_REG_CHAN0_CIPHER_CTRL;
        CIPHER_READ_REG(u32RegAddr, u32RegValue);

        *pCipherStat = u32RegValue & 0x02;
    }
    else
    {
        u32RegAddr = CIPHER_REG_INT_STATUS;
        CIPHER_READ_REG(u32RegAddr, u32RegValue);
        HAL_Cipher_ClrIntState(u32RegValue);

        *pCipherStat = (u32RegValue >> (chnId + 8)) & 0x01;
    }

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_Reset(HI_VOID)
{

    //CIPHER_WRITE_REG(CIPHER_SOFT_RESET_ADDR, 1);
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
        CIPHER_READ_REG(regAddr + (i * sizeof(HI_U32)), pCtrl->u32IV[i]);
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
        CIPHER_WRITE_REG(regAddr + (i * sizeof(HI_U32)), pCtrl->u32IV[i]);
    }

    return HI_SUCCESS;
}

extern HI_S32 CA_DecryptCipher(HI_U32 AddrID, HI_U32 *pDataIn);

HI_S32 HAL_Cipher_SetKey(HI_U32 chnId, HI_UNF_CIPHER_CTRL_S* pCtrl)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_U32 regAddr = 0;

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
            CIPHER_WRITE_REG(regAddr + (i * sizeof(HI_U32)), pCtrl->u32Key[i]);
        }
    }
    else
    {
        if(pCtrl->enCaType == HI_UNF_CIPHER_CA_TYPE_BLPK)
        {
            ret = CA_DecryptSwpk(chnId, pCtrl->u32Key);
        }
        else if(pCtrl->enCaType == HI_UNF_CIPHER_CA_TYPE_R2R)
        {
            ret = CA_DecryptCipher(chnId,pCtrl->u32Key);
        }
        else if(pCtrl->enCaType == HI_UNF_CIPHER_CA_TYPE_IRDETO_HCA)
        {
            ret = CA_CryptHCA(chnId);
        }
        
        if (HI_SUCCESS != ret)
        {
            return ret;
        }
    }
    
    return HI_SUCCESS;
}

static HI_S32 HAL_CIPHER_IsCABusy(HI_VOID)
{
    HI_U32 cnt = 0;
    HI_U32 u32CAState = 0;

    while (cnt < 50)
    {
        u32CAState = 0;
        CIPHER_READ_REG(CIPHER_REG_CA_STATE, u32CAState);
        if( ((u32CAState >> 31) & 0x1) == 0)
        {
            break;
        }
        mdelay(10);
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
    CIPHER_READ_REG(CIPHER_REG_CA_CONFIG_STATE, unConfigState.u32);
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
    CIPHER_READ_REG(CIPHER_REG_STB_KEY_CTRL, unSTBKeyCtrl.u32);
    unSTBKeyCtrl.bits.key_addr = u32ChID;
    CIPHER_WRITE_REG(CIPHER_REG_STB_KEY_CTRL, unSTBKeyCtrl.u32);

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

    CIPHER_READ_REG(regAddr, regValue);

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

    CIPHER_WRITE_REG(regAddr, regValue);
    
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

    CIPHER_WRITE_REG(regAddr, value);

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

    CIPHER_WRITE_REG(regAddr, value);

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
    CIPHER_READ_REG(regAddr, regValue);

    regValue |= (1 << 31); /* sum switch int_en */

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

    CIPHER_WRITE_REG(regAddr, regValue);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_DisableInt(HI_U32 chnId, int intType)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    CIPHER_READ_REG(regAddr, regValue);

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

    CIPHER_WRITE_REG(regAddr, regValue);

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_DisableAllInt(HI_VOID)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    regValue = 0;
    CIPHER_WRITE_REG(regAddr, regValue);
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
    CIPHER_READ_REG(regAddr, regValue);

    if (pState)
    {
        *pState = regValue;
    }
}

HI_VOID HAL_Cipher_GetIntEnState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_EN;
    
    CIPHER_READ_REG(regAddr, regValue);

    if (pState)
    {
        *pState = regValue;
    }
}

HI_VOID HAL_Cipher_GetRawIntState(HI_U32 *pState)
{
    HI_U32 regAddr = 0;
    HI_U32 regValue = 0;

    regAddr = CIPHER_REG_INT_RAW;
    
    CIPHER_READ_REG(regAddr, regValue);

    if (pState)
    {
        *pState = regValue;
    }
}

HI_VOID HAL_Cipher_ClrIntState(HI_U32 intStatus)
{
    HI_U32 regAddr;
    HI_U32 regValue;

    regAddr = CIPHER_REG_INT_RAW;
    regValue = intStatus;
    CIPHER_WRITE_REG(regAddr, regValue);
}

//#ifndef HI_MINIBOOT_SUPPORT
HI_S32 HAL_Cipher_HashSoftReset(HI_VOID)
{
#if defined (CHIP_TYPE_hi3716mv330)
    U_PERI_CRG48 unShaCrg;

/* reset request */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 1;
    g_pstRegCrg->PERI_CRG48.u32 = unShaCrg.u32;

/* cancel reset */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unShaCrg.u32;
#else	
    CIPHER_SHA_RST_U unShaCrg;

    unShaCrg.u32 = 0;
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 1;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;

    unShaCrg.u32 = 0;
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 0;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;
#endif

    return HI_SUCCESS;
}

HI_U32 g_u32HashCount = 0;
HI_U32 g_u32RecLen = 0;
HI_S32 HAL_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    CIPHER_SHA_START_U unCipherSHAStart;
    HI_U32 u32WriteData = 0;
    HI_U32 i = 0;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error! Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    ret = HAL_CIPHER_WaitHashIdle();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Time out!Hash is busy now!\n");
        (HI_VOID)HAL_CIPHER_MarkHashIdle();
        return HI_FAILURE;
    }

    g_u32HashCount = 0;
    g_u32RecLen = 0;

    /* wait for hash_rdy */
    ret = HASH_WaitReady(HASH_READY);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* set hmac-sha key */
    if( ((HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType) || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        && (HI_CIPHER_HMAC_KEY_FROM_CPU == pCipherHashData->enHMACKeyFrom) )
    {
        for( i = 0; i < CIPHER_HMAC_KEY_LEN; i = i + 4)
        {
#if defined (CHIP_TYPE_hi3716mv330)
            u32WriteData = (pCipherHashData->u8HMACKey[0+i] << 24) |
                           (pCipherHashData->u8HMACKey[1+i] << 16) |
                           (pCipherHashData->u8HMACKey[2+i] << 8)  |
                           (pCipherHashData->u8HMACKey[3+i]);
#else
            u32WriteData = (pCipherHashData->u8HMACKey[3+i] << 24) |
                           (pCipherHashData->u8HMACKey[2+i] << 16) |
                           (pCipherHashData->u8HMACKey[1+i] << 8)  |
                           (pCipherHashData->u8HMACKey[0+i]);
#endif
            CIPHER_WRITE_REG(CIPHER_HASH_REG_MCU_KEY0 + i, u32WriteData);
        }
    }

    /* write total len low and high */
    CIPHER_WRITE_REG(CIPHER_HASH_REG_TOTALLEN_LOW_ADDR, pCipherHashData->u32TotalDataLen + pCipherHashData->u32PaddingLen);
    CIPHER_WRITE_REG(CIPHER_HASH_REG_TOTALLEN_HIGH_ADDR, 0);

    /* config sha_ctrl : read by dma first, and by cpu in the hash final function */
    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 0;
    if( HI_UNF_CIPHER_HASH_TYPE_SHA1 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x0;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_SHA256 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x1;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 1;
        unCipherSHACtrl.bits.sha_sel= 0x0;
        unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom;
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 1;
        unCipherSHACtrl.bits.sha_sel= 0x1;
        unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom;
    }
    else
    {
        HI_ERR_CIPHER("Invalid hash type input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);    
    
    /* config sha_start */
    unCipherSHAStart.u32 = 0;
    unCipherSHAStart.bits.sha_start = 1;
    CIPHER_WRITE_REG(CIPHER_HASH_REG_START_ADDR, unCipherSHAStart.u32);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CIPHER_SHA_STATUS_U unCipherSHAStatus;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    HI_U32 u32MMZPhyAddr = 0;
    //MMZ_BUFFER_S stMMZBuffer = {0};
    HI_U32 u32WriteData = 0;
    HI_U32 u32WriteLength = 0;
    HI_U32 u32CPUWriteRound = 0;
    HI_U8 *pu8Ptr = NULL;
    HI_U32 u32MallocLen = 0;
    HI_U32 i = 0;
    HI_U32 u32RecDmaLen = 0;
    unsigned long long ulStartTime = 0;
    unsigned long long ulLastTime = 0;
    unsigned long long ulDuraTime = 0;

    if( (NULL == pCipherHashData) || ( NULL == pCipherHashData->pu8InputData) )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* wait for rec_ready */
    s32Ret= HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }
    
    unCipherSHAStatus.u32 = 0;
    u32WriteLength = pCipherHashData->u32InputDataLen & (~0x3f);

    if( 0 != u32WriteLength )
    {
#if 0
        /*Align with 4KB*/
        u32MallocLen = (pCipherHashData->u32InputDataLen + 0xfff) & 0xfffff000;
        s32Ret = HI_MEM_Alloc(&u32MMZPhyAddr, u32MallocLen);
        if( HI_SUCCESS != s32Ret )
        {
            HI_ERR_CIPHER("Error, mmz alloc and map failed!\n");
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }

        memcpy((HI_U8 *)u32MMZPhyAddr, pCipherHashData->pu8InputData, u32WriteLength);
#else
        u32MMZPhyAddr = (HI_U32)pCipherHashData->pu8InputData;
#endif
        //CIPHER_WRITE_REG(CIPHER_HASH_REG_DMA_START_ADDR, stMMZBuffer.u32StartPhyAddr);
		if ((u32MMZPhyAddr & 0x03) != 0)
        {
			unCipherSHACtrl.u32 = 0;
			CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
			unCipherSHACtrl.bits.read_ctrl = 1;
			CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 
	
			for(i=0; i<u32WriteLength; i+=4)
			{
				memcpy(&u32WriteData, pCipherHashData->pu8InputData + i, 4);
				CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);				
				if ((((i+4) % 64) == 0) && ((i+4) < u32WriteLength))
				{
					s32Ret  = HASH_WaitReady(REC_READY);
					if(HI_SUCCESS != s32Ret)
					{
						HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
						s32Ret = HI_FAILURE;
						(HI_VOID)HAL_Cipher_HashSoftReset();
						goto __QUIT__;
					}
				}
				g_u32HashCount += 4;
				g_u32RecLen += 4;
			}
        }
		else
		{
			unCipherSHACtrl.u32 = 0;
			CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
			unCipherSHACtrl.bits.read_ctrl = 0;
			CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

			CIPHER_WRITE_REG(CIPHER_HASH_REG_DMA_START_ADDR, u32MMZPhyAddr);
			CIPHER_WRITE_REG(CIPHER_HASH_REG_DMA_LEN, u32WriteLength);
			g_u32HashCount += u32WriteLength;
			g_u32RecLen += u32WriteLength;
			
			ulStartTime = get_ticks();
			while(1)
			{
				CIPHER_READ_REG(CIPHER_HASH_REG_REC_LEN1, u32RecDmaLen);
				if( (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType)
				 || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType) )
				{
					if(g_u32RecLen == (u32RecDmaLen - 0x40))
					{
						break;
					}
				}
				else
				{
					if(g_u32RecLen == u32RecDmaLen)
					{
						break;
					}
				}

				ulLastTime = get_ticks();
				ulDuraTime = ticks_to_msecs(ulLastTime - ulStartTime);
				if (ulDuraTime >= HASH_MAX_DURATION )
				{
					HI_ERR_CIPHER("Error! Hash time out!g_u32RecLen = 0x%08x, u32RecDmaLen = 0x%08x\n", g_u32RecLen, u32RecDmaLen);
					s32Ret = HI_FAILURE;
					(HI_VOID)HAL_Cipher_HashSoftReset();
					goto __QUIT__;
				}
			}
		}
    }

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        goto __QUIT__;
    }

    u32WriteLength = pCipherHashData->u32InputDataLen & 0x3f;

    if( 0 == u32WriteLength )
    {
        s32Ret = HI_SUCCESS;
        goto __QUIT__;
    }

    /* the last round , if input data is not 64bytes aligned */
    pu8Ptr = pCipherHashData->pu8InputData + pCipherHashData->u32InputDataLen - u32WriteLength;

    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 1;
    CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

    u32CPUWriteRound = u32WriteLength / 4;
    if( 0 != u32CPUWriteRound)
    {
        for(i = 0; i < u32CPUWriteRound * 4; i += 4 )
        {
            s32Ret  = HASH_WaitReady(REC_READY);
            if(HI_SUCCESS != s32Ret)
            {
                HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
                s32Ret = HI_FAILURE;
                (HI_VOID)HAL_Cipher_HashSoftReset();
                goto __QUIT__;
            }

            u32WriteData = ( pu8Ptr[i + 3] << 24)
                         | ( pu8Ptr[i + 2] << 16)
                         | ( pu8Ptr[i + 1] << 8 )
                         |   pu8Ptr[i];
            CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
        }
    }

    pu8Ptr += u32CPUWriteRound * 4;
    u32WriteLength = pCipherHashData->u32InputDataLen & 0x3;

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        s32Ret = HI_FAILURE;
        (HI_VOID)HAL_Cipher_HashSoftReset();
        goto __QUIT__;
    }

    switch(u32WriteLength)
    {
        case 1:
        {
            u32WriteData = ( pCipherHashData->u8Padding[2] << 24)
                         | ( pCipherHashData->u8Padding[1] << 16)
                         | ( pCipherHashData->u8Padding[0] << 8 )
                         |   pu8Ptr[0];
            CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        case 2:
        {
            u32WriteData = ( pCipherHashData->u8Padding[1] << 24)
                         | ( pCipherHashData->u8Padding[0] << 16)
                         | ( pu8Ptr[1] << 8 )
                         |   pu8Ptr[0];
            CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        case 3:
        {
            u32WriteData = ( pCipherHashData->u8Padding[0] << 24)
                         | ( pu8Ptr[2] << 16)
                         | ( pu8Ptr[1] << 8 )
                         |   pu8Ptr[0];
            CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);
            g_u32HashCount += 4;
            break;
        }
        default:
        {
            /* the input data is 4bytes aligned */
            break;
        }
    }

__QUIT__:
    //HI_DRV_MMZ_UnmapAndRelease(&stMMZBuffer);

    /* the last step: make sure rec_ready */
    if( HI_SUCCESS == s32Ret )
    {
        s32Ret= HASH_WaitReady(REC_READY);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            s32Ret = HI_FAILURE;
        }
    }

//    HI_MEM_Free((HI_VOID *)u32MMZPhyAddr);
    
    return s32Ret;
}

HI_S32 HAL_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    CIPHER_SHA_STATUS_U unCipherSHAStatus;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    HI_U32 u32WriteData = 0;
	HI_U32 sha_out;
    HI_U32 i = 0;
    HI_U32 u32WritePaddingLength = 0;
    HI_U32 u32DataLengthNotAligned = 0;
    HI_U32 u32StartFromPaddingBuffer = 0;

    if( (NULL == pCipherHashData) || (NULL == pCipherHashData->pu8Output) )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* write padding data */
    unCipherSHAStatus.u32 = 0;
    u32DataLengthNotAligned = pCipherHashData->u32TotalDataLen & 0x3;
    u32StartFromPaddingBuffer = (0 == u32DataLengthNotAligned)?(0):(4 - u32DataLengthNotAligned);
    u32WritePaddingLength = pCipherHashData->u32PaddingLen - u32StartFromPaddingBuffer;

    if( 0 != (u32WritePaddingLength & 0x3) )
    {
        HI_ERR_CIPHER("Error, Padding length not aligned: %d!\n", (u32WritePaddingLength & 0x3));
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    s32Ret  = HASH_WaitReady(REC_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    unCipherSHACtrl.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.read_ctrl = 1;
    CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

    for( i = u32StartFromPaddingBuffer; i < pCipherHashData->u32PaddingLen; i = i + 4)
    {
        s32Ret  = HASH_WaitReady(REC_READY);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }

        unCipherSHACtrl.u32 = 0;
        CIPHER_READ_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
        unCipherSHACtrl.bits.read_ctrl = 1;
        CIPHER_WRITE_REG(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32); 

        /* small endian */
        u32WriteData = (pCipherHashData->u8Padding[3+i] << 24) 
                     | (pCipherHashData->u8Padding[2+i] << 16) 
                     | (pCipherHashData->u8Padding[1+i] << 8) 
                     |  pCipherHashData->u8Padding[0+i];
        CIPHER_WRITE_REG(CIPHER_HASH_REG_DATA_IN, u32WriteData);
        g_u32HashCount += 4;
    }
 
    /* wait for hash_ready */
    s32Ret= HASH_WaitReady(HASH_READY);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* read digest */
    unCipherSHAStatus.u32 = 0;
    CIPHER_READ_REG(CIPHER_HASH_REG_STATUS_ADDR, unCipherSHAStatus.u32);

    if( 0x00 == unCipherSHAStatus.bits.error_state )
    {
        if( (HI_UNF_CIPHER_HASH_TYPE_SHA1 == pCipherHashData->enShaType)
         || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType))
        {
    		for(i = 0; i < 5; i++)
    		{
    		    /* small endian */
                (HI_VOID)CIPHER_READ_REG(CIPHER_HASH_REG_SHA_OUT1+ i*4, sha_out);
#if defined (CHIP_TYPE_hi3716mv330)
    			pCipherHashData->pu8Output[i * 4] = sha_out >> 24;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out >> 16;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out >> 8;
    			pCipherHashData->pu8Output[i * 4 + 3]     = sha_out;
#else
    			pCipherHashData->pu8Output[i * 4 + 3] = sha_out >> 24;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out >> 16;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out >> 8;
    			pCipherHashData->pu8Output[i * 4]     = sha_out;
#endif
    		}
        }
        else if( (HI_UNF_CIPHER_HASH_TYPE_SHA256 == pCipherHashData->enShaType )
              || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        {

    		for(i = 0; i < 8; i++)
    		{
    		    (HI_VOID)CIPHER_READ_REG(CIPHER_HASH_REG_SHA_OUT1+ i*4, sha_out);
#if defined (CHIP_TYPE_hi3716mv330)
    			pCipherHashData->pu8Output[i * 4] = sha_out >> 24;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out >> 16;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out >> 8;
    			pCipherHashData->pu8Output[i * 4 + 3]     = sha_out;
#else
    			pCipherHashData->pu8Output[i * 4 + 3] = sha_out >> 24;
    			pCipherHashData->pu8Output[i * 4 + 2] = sha_out >> 16;
    			pCipherHashData->pu8Output[i * 4 + 1] = sha_out >> 8;
    			pCipherHashData->pu8Output[i * 4]     = sha_out;
#endif
    		}
        }
        else
        {
            HI_ERR_CIPHER("Invalid hash type : %d!\n", pCipherHashData->enShaType);
            (HI_VOID)HAL_Cipher_HashSoftReset();
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_CIPHER("Error! SHA Status Reg: error_state = %d!\n", unCipherSHAStatus.bits.error_state);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    (HI_VOID)HAL_CIPHER_MarkHashIdle();

    return HI_SUCCESS;
}
//#endif

HI_VOID HAL_Cipher_Init(void)
{
    U_PERI_CRG48 unCRG;

    unCRG.u32 = 0;

#ifdef CHIP_TYPE_hi3716cv200es
    unCRG.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unCRG.bits.ca_kl_srst_req = 1;
    unCRG.bits.ca_ci_srst_req = 1;
    unCRG.bits.otp_srst_req = 1;
    /* clock open */
    unCRG.bits.ca_kl_bus_cken = 1;
    unCRG.bits.ca_ci_bus_cken = 1;
    unCRG.bits.ca_ci_cken = 1;

    /* ca clock select : 200M */
    unCRG.bits.ca_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCRG.u32;

    unCRG.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unCRG.bits.ca_kl_srst_req = 0;
    unCRG.bits.ca_ci_srst_req = 0;
    unCRG.bits.otp_srst_req = 0;

    /* make sure clock opened */
    unCRG.bits.ca_kl_bus_cken = 1;
    unCRG.bits.ca_ci_bus_cken = 1;
    unCRG.bits.ca_ci_cken = 1;
    /* make sure ca clock select : 200M */
    unCRG.bits.ca_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCRG.u32;

#else
    unCRG.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unCRG.bits.ca_ci_srst_req = 1;

    /* ca clock select : 200M */
    unCRG.bits.ca_ci_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCRG.u32;
    udelay(1000); 
    unCRG.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unCRG.bits.ca_ci_srst_req = 0;

    /* make sure ca clock select : 200M */
    unCRG.bits.ca_ci_clk_sel = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unCRG.u32;
    udelay(1000);     
#endif

	HAL_Cipher_HashSoftReset();

    return;
}
HI_VOID HAL_Cipher_DeInit(HI_VOID)
{
    /* use the same clock of CA */
    return;
}

HI_VOID HAL_Cipher_EnableAllSecChn(HI_VOID)
{
	HI_U32 regAddr = CIPHER_REG_SEC_CHN_CFG;
	HI_U32 regValue = 0;

	regValue = 0xffffffff;
    (HI_VOID)CIPHER_WRITE_REG(regAddr, regValue);
	return;
}

HI_VOID HAL_Cipher_AuthCbcMac(HI_U8 *pu8RefCbcMac, HI_U32 u32AppLen)
{
    HI_U32 regAddr;
    HI_U32 regValue = 0;
    HI_U32 i;

    regAddr = CIPHER_REG_HL_APP_LEN;
    regValue = u32AppLen;
    (HI_VOID)CIPHER_WRITE_REG(regAddr, regValue);
    
    for(i = 0; i < 4; i++)
    {
        regAddr = CIPHER_REG_HL_APP_CBC_MAC_REF + i * 4;
        regValue = (pu8RefCbcMac[4 * (3 - i)] << 24)
                                | (pu8RefCbcMac[4 * (3 - i) + 1] << 16)
                                | (pu8RefCbcMac[4 * (3 - i) + 2] << 8)
                                | pu8RefCbcMac[4 * (3 - i) + 3];
        (HI_VOID)CIPHER_WRITE_REG(regAddr, regValue);
    }
    
    regAddr = CIPHER_REG_HL_APP_CBC_CTRL;
    regValue = 1;
    (HI_VOID)CIPHER_WRITE_REG(regAddr, regValue);    
    
    return;
}

HI_VOID HAL_Cipher_ClearCbcMacVerifyFlag(HI_VOID)
{
	HI_U32 u32RegValue;
	
	CIPHER_READ_REG(CIPHER_REG_HL_APP_CBC_CTRL, u32RegValue);
	u32RegValue &= 0xFFFFFFFE;
    CIPHER_WRITE_REG(CIPHER_REG_HL_APP_CBC_CTRL, u32RegValue);  //clear irdeto_verify_flag

	return;
}

HI_S32 HAL_Cipher_GetRandomNumber(HI_U32 *pu32RandomNumber)
{
#if defined (CHIP_TYPE_hi3798cv200)|| defined(CHIP_TYPE_hi3798mv200) || defined(CHIP_TYPE_hi3798mv200_a) 
    HI_U32 u32RngStat = 0;
    HI_U32 u32TimeOut = 0;

    (HI_VOID)CIPHER_WRITE_REG(HISEC_COM_TRNG_CTRL, 0x0a);
    while(u32TimeOut ++ < 1000)
    {
        (HI_VOID)CIPHER_READ_REG(HISEC_COM_TRNG_DATA_ST, u32RngStat);
        if(((u32RngStat >> 8) & 0x3F) > 0)
        {
            break;
        }
    }
    if (u32TimeOut >= 1000)
    {
        return HI_ERR_CIPHER_NO_AVAILABLE_RNG;
    }

    (HI_VOID)CIPHER_READ_REG(HISEC_COM_TRNG_FIFO_DATA, *pu32RandomNumber);
    
#else
    HI_U32 u32RngStat = 0;
    HI_U32 u32TimeOut = 0;

    (HI_VOID)CIPHER_WRITE_REG(REG_RNG_BASE_ADDR, 0x90a2);

    while(u32TimeOut ++ < 1000)
    {
        (HI_VOID)CIPHER_READ_REG(REG_RNG_STAT_ADDR, u32RngStat);
        if((u32RngStat & 0x7) > 0)
        {
            break;
        }
		udelay(1000);
    }
    if (u32TimeOut >= 1000)
    {
        return HI_ERR_CIPHER_NO_AVAILABLE_RNG;
    }
    (HI_VOID)CIPHER_READ_REG(REG_RNG_NUMBER_ADDR, *pu32RandomNumber);
#endif
    return HI_SUCCESS;
}
