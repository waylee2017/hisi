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

//#include <linux/module.h>
//#include <linux/kernel.h>
//#include <linux/module.h>
//#include <linux/delay.h>
//#include <linux/i2c.h>
//#include <linux/clk.h>
//#include <linux/errno.h>
//#include <linux/sched.h>
//#include <linux/err.h>
//#include <linux/interrupt.h>
//#include <linux/platform_device.h>
//#include <linux/io.h>

#include "hi_type.h"
#include "hi_drv_cipher.h"
#include "drv_hash.h"
#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "drv_cipher_define.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_ext.h"
#include "drv_advca_ext.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_mem.h"
#include "hi_drv_mmz.h"
#include "hi_drv_module.h"
#include "hal_cipher.h"
#include "drv_cipher.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

static HI_U32 g_u32HashHandleSeed = 0xa0000000;
static HI_HANDLE g_hashHandle = -1;

/* Set the defualt timeout value for hash calculating (5000 ms)*/
#define HASH_MAX_DURATION (5000)
#define HASH_PADDING_LEGNTH     8

HI_DECLARE_MUTEX(g_HashMutexKernel);

typedef enum
{
    HASH_READY,
    REC_READY,
    DMA_READY,
}HASH_WAIT_TYPE;

HI_U32 g_u32HashCount = 0;
HI_U32 g_u32RecLen = 0;

inline HI_S32 HASH_WaitReady(HI_UNF_CIPHER_HASH_TYPE_E enHashType,
							HASH_WAIT_TYPE enType,
							HI_BOOL bRecRdy)		/* only for REC_READY, 0: use rec_len1, 1:use rec_rdy */
{
    CIPHER_SHA_STATUS_U unCipherSHAstatus;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

    HI_SIZE_T ulStartTime2 = 0;
    HI_SIZE_T ulLastTime2 = 0;
    HI_SIZE_T ulDuraTime2 = 0;

	HI_U32 u32RecDmaLen = 0;

    /* wait for hash_rdy */
    ulStartTime = jiffies;
    while(1)
    {
        unCipherSHAstatus.u32 = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_STATUS_ADDR, &unCipherSHAstatus.u32);
        if(HASH_READY == enType)
        {
            if(1 == unCipherSHAstatus.bits.hash_rdy)
            {
                break;
            }
        }
        else if (REC_READY == enType)
        {
			if(0 == bRecRdy)
			{
			    ulStartTime2 = jiffies;
			    while(1)
			    {
			        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_REC_LEN1, &u32RecDmaLen);
			        if( (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == enHashType)
			         || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == enHashType) )
			        {
			            /* if(g_u32RecLen == (u32RecDmaLen - 0x40)) */   /* for Harware HMAC */
			            if(g_u32RecLen == u32RecDmaLen)
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

			        ulLastTime2 = jiffies;
			        ulDuraTime2 = jiffies_to_msecs(ulLastTime2 - ulStartTime2);
			        if (ulDuraTime2 >= HASH_MAX_DURATION )
			        {
			            HI_ERR_CIPHER("Error! Hash time out!g_u32RecLen = 0x%08x, u32RecDmaLen = 0x%08x, enHashType:%d\n", g_u32RecLen, u32RecDmaLen, enHashType);
			            (HI_VOID)HAL_Cipher_HashSoftReset();
			            return HI_FAILURE;
			        }
					msleep(1);
			    }
				break;
			}
			else
			{
	            if(1 == unCipherSHAstatus.bits.rec_rdy)
	            {
	                break;
	            }
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

        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        { 
            HI_ERR_CIPHER("Error! Hash time out!\n");
            return HI_FAILURE;
        }
		msleep(1);
    }

    return HI_SUCCESS;
}

inline HI_S32 HASH_WaitReadyPadding(HI_U32 u32HashDataLength)
{
#if 0
    CIPHER_SHA_STATUS_U unCipherSHAstatus;
    HI_U32 u32Data = 0;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

    /* wait for hash_pading */
    ulStartTime = jiffies;
    while(1)
    {
        unCipherSHAstatus.u32 = 0;
        u32Data = 0;
        (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_REC_LEN1, &u32Data);
        if (unCipherSHAstatus.u32 >= u32HashDataLength)
        {
            break;
        }

        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION )
        { 
            unCipherSHAstatus.u32 = 0;
            u32Data = 0;
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_REC_LEN1, &u32Data);

            HI_ERR_CIPHER("Error! Hash time out! \n");
            HI_ERR_CIPHER("CIPHER_HASH_REG_REC_LEN1 = %x \n", u32Data);
            u32Data = 0;
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_REC_LEN2, &u32Data);
            HI_ERR_CIPHER("CIPHER_HASH_REG_REC_LEN2 = %x \n", u32Data);
            HI_ERR_CIPHER("u32HashDataLength = %x \n", u32HashDataLength);
            return HI_FAILURE;
        }

		msleep(1);
    }
#endif
    return HI_SUCCESS;
}


/* check if hash module is idle or not */
static HI_S32 HAL_CIPHER_WaitHashIdle(HI_VOID)
{
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;

__HASH_WAIT__:
    ulStartTime = jiffies;
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    while(0 != (unCipherSHACtrl.bits.usedbyarm | unCipherSHACtrl.bits.usedbyc51))
    {
        ulLastTime = jiffies;
        ulDuraTime = jiffies_to_msecs(ulLastTime - ulStartTime);
        if (ulDuraTime >= HASH_MAX_DURATION)
        { 
            HI_ERR_CIPHER("Error! Hash module is busy now!\n");
            return HI_FAILURE;
        }
        else
        {
            msleep(1);
            unCipherSHACtrl.u32 = 0;
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
            continue;
        }
    }

    /* set bit 6 */
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    /* check if set bit 6 valid or not */
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
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
            (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
            unCipherSHACtrl.bits.usedbyarm = 0;
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);
            goto __HASH_WAIT__;
        }
        case 0x0:
        case 0x2:
        {
            return HI_FAILURE;
        }
        default:
        {
            return HI_FAILURE;
        }
    }
}

static HI_VOID HAL_CIPHER_MarkHashIdle(HI_VOID)
{
    CIPHER_SHA_CTRL_U unCipherSHACtrl;

    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
    unCipherSHACtrl.bits.usedbyarm = 0x0;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

    return;
}

HI_S32 HAL_Cipher_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_SHA_CTRL_U unCipherSHACtrl;
    CIPHER_SHA_START_U unCipherSHAStart;

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
    ret = HASH_WaitReady(pCipherHashData->enShaType, HASH_READY, 0);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

#if 0
    /* set hmac-sha key */
    if( ((HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType) || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        && (HI_CIPHER_HMAC_KEY_FROM_CPU == pCipherHashData->enHMACKeyFrom) )
    {
        for( i = 0; i < CIPHER_HMAC_KEY_LEN; i = i + 4)
        {
            u32WriteData = (pCipherHashData->pu8HMACKey[3+i] << 24) |
                           (pCipherHashData->pu8HMACKey[2+i] << 16) |
                           (pCipherHashData->pu8HMACKey[1+i] << 8)  |
                           (pCipherHashData->pu8HMACKey[0+i]);
            (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_MCU_KEY0 + i, u32WriteData);
        }
    }
#endif

    /* write total len low and high */
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_TOTALLEN_LOW_ADDR, 0xFFFFFFFF);
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_TOTALLEN_HIGH_ADDR, 0);

    /* config sha_ctrl : read by dma first, and by cpu in the hash final function */
    unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
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
		/* unCipherSHACtrl.bits.hardkey_hmac_flag = 1; */
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x0;
		/* unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom; */
    }
    else if( HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType )
    {
        unCipherSHACtrl.bits.hardkey_hmac_flag = 0;
        unCipherSHACtrl.bits.sha_sel= 0x1;
		/* unCipherSHACtrl.bits.hardkey_sel = pCipherHashData->enHMACKeyFrom; */
    }
    else
    {
        HI_ERR_CIPHER("Invalid hash type input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);    
    
    /* config sha_start */
    unCipherSHAStart.u32 = 0;
    unCipherSHAStart.bits.sha_start = 1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_START_ADDR, unCipherSHAStart.u32);

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;
#if 0
    HI_U32 u32RecDmaLen = 0;
    HI_SIZE_T ulStartTime = 0;
    HI_SIZE_T ulLastTime = 0;
    HI_SIZE_T ulDuraTime = 0;
#endif

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    ret= HASH_WaitReady(pCipherHashData->enShaType, REC_READY, 0);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_START_ADDR, pCipherHashData->stMMZBuffer.u32StartPhyAddr);
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_LEN, pCipherHashData->u32InputDataLen);
    g_u32HashCount += pCipherHashData->u32InputDataLen;
    g_u32RecLen += pCipherHashData->u32InputDataLen;

/*
    ret = HASH_WaitReadyPadding(g_u32HashCount);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Padding Error! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }*/

    //0x60170000
    ret = HASH_WaitReady(pCipherHashData->enShaType, REC_READY, 0);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed! g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_SHA_STATUS_U unCipherSHAStatus;
	HI_U32 sha_out;
    HI_U32 i = 0;
	CIPHER_SHA_CTRL_U unCipherSHACtrl;

    if(NULL == pCipherHashData)
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

	/* write the input data by DMA */
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_START_ADDR, pCipherHashData->stMMZBuffer.u32StartPhyAddr);
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DMA_LEN, pCipherHashData->u32InputDataLen - 8);
    g_u32HashCount += pCipherHashData->u32InputDataLen - 8;
    g_u32RecLen += pCipherHashData->u32InputDataLen - 8;

    /* wait for rec_ready instead of hash_ready */
    ret= HASH_WaitReady(pCipherHashData->enShaType, REC_READY, 0);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed, u32HashCount_g = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

	/* write the last 8 bytes by CPU */
	unCipherSHACtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_CTRL_ADDR, &unCipherSHACtrl.u32);
	unCipherSHACtrl.bits.read_ctrl = 1;
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_CTRL_ADDR, unCipherSHACtrl.u32);

	for(i = 0; i < 8; i+=4)
	{
	    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_HASH_REG_DATA_IN, *(HI_U32 *)(pCipherHashData->au8Padding + pCipherHashData->u32PaddingLen - 8 + i));
	    g_u32HashCount += 4;
	    g_u32RecLen += 4;
		
	    /* wait for rec_ready instead of hash_ready */
	    ret= HASH_WaitReady(pCipherHashData->enShaType, REC_READY, 0);
	    if(HI_SUCCESS != ret)
	    {
	        HI_ERR_CIPHER("Hash wait ready failed, g_u32HashCount = 0x%08x\n", g_u32HashCount);
	        (HI_VOID)HAL_Cipher_HashSoftReset();
	        return HI_FAILURE;
	    }
	}

    HI_INFO_CIPHER("***********  u32TotalDataLen=%d, u32Rec_len=%d ********\n", pCipherHashData->u32TotalDataLen, g_u32RecLen);

    /* wait for rec_ready instead of hash_ready */
    ret= HASH_WaitReady(pCipherHashData->enShaType, REC_READY, 1);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Hash wait ready failed, g_u32HashCount = 0x%08x\n", g_u32HashCount);
        (HI_VOID)HAL_Cipher_HashSoftReset();
        return HI_FAILURE;
    }

    /* read digest */
    unCipherSHAStatus.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_STATUS_ADDR, &unCipherSHAStatus.u32);

    if( 0x00 == unCipherSHAStatus.bits.error_state )
    {
        if( (HI_UNF_CIPHER_HASH_TYPE_SHA1 == pCipherHashData->enShaType)
         || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1 == pCipherHashData->enShaType))
        {            
    		for(i = 0; i < 5; i++)
    		{
    		    /* small endian */
                (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT1+ i*4, &sha_out);
#if defined (CHIP_TYPE_hi3716mv330)
    			pCipherHashData->u8Output[i * 4] = sha_out >> 24;
    			pCipherHashData->u8Output[i * 4 + 1] = sha_out >> 16;
    			pCipherHashData->u8Output[i * 4 + 2] = sha_out >> 8;
    			pCipherHashData->u8Output[i * 4 + 3] = sha_out;
#else
    			pCipherHashData->u8Output[i * 4 + 3] = sha_out >> 24;
    			pCipherHashData->u8Output[i * 4 + 2] = sha_out >> 16;
    			pCipherHashData->u8Output[i * 4 + 1] = sha_out >> 8;
    			pCipherHashData->u8Output[i * 4]     = sha_out;
#endif
    		}
            pCipherHashData->u32OutputLen = 20;
        }
        else if( (HI_UNF_CIPHER_HASH_TYPE_SHA256 == pCipherHashData->enShaType )
              || (HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256 == pCipherHashData->enShaType))
        {

    		for(i = 0; i < 8; i++)
    		{
    		    (HI_VOID)HAL_CIPHER_ReadReg(CIPHER_HASH_REG_SHA_OUT1+ i*4, &sha_out);
#if defined (CHIP_TYPE_hi3716mv330)
    			pCipherHashData->u8Output[i * 4] = sha_out >> 24;
    			pCipherHashData->u8Output[i * 4 + 1] = sha_out >> 16;
    			pCipherHashData->u8Output[i * 4 + 2] = sha_out >> 8;
    			pCipherHashData->u8Output[i * 4 + 3]     = sha_out;
#else
    			pCipherHashData->u8Output[i * 4 + 3] = sha_out >> 24;
    			pCipherHashData->u8Output[i * 4 + 2] = sha_out >> 16;
    			pCipherHashData->u8Output[i * 4 + 1] = sha_out >> 8;
    			pCipherHashData->u8Output[i * 4]     = sha_out;
#endif
    		}
            pCipherHashData->u32OutputLen = 32;
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

    (HI_VOID)HAL_Cipher_HashSoftReset();
    (HI_VOID)HAL_CIPHER_MarkHashIdle();

    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_HashSoftReset(HI_VOID)
{
#if defined (CHIP_TYPE_hi3716mv330)
    U_PERI_CRG48 unShaCrg;

/* reset request */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 1;
    g_pstRegCrg->PERI_CRG48.u32 = unShaCrg.u32;

    mdelay(1);

/* cancel reset */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG48.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 0;
    g_pstRegCrg->PERI_CRG48.u32 = unShaCrg.u32;
#else
    U_PERI_CRG49 unShaCrg;

/* reset request */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 1;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;

    mdelay(1);

/* cancel reset */
    unShaCrg.u32 = g_pstRegCrg->PERI_CRG49.u32;
    unShaCrg.bits.sha_cken = 1;
    unShaCrg.bits.sha_srst_req = 0;
    g_pstRegCrg->PERI_CRG49.u32 = unShaCrg.u32;
#endif

    (HI_VOID)HAL_CIPHER_MarkHashIdle();
    return HI_SUCCESS;
}

#if 0
static HI_S32 Cipher_CalcHashInit_Sw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 ticks;
    struct timeval tv;

    do_gettimeofday(&tv);
    ticks = tv.tv_sec + tv.tv_usec;
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0))
    srandom32 (ticks);  //set the seed of random data
    g_hashHandle = random32();
#else
    g_hashHandle = (HI_HANDLE)ticks;
#endif

    switch(pCipherHashData->enShaType)
    {
        case HI_UNF_CIPHER_HASH_TYPE_SHA1:
            sha1_starts(&g_sha1Context);
            pCipherHashData->hHandle = g_hashHandle;
            break;

        case HI_UNF_CIPHER_HASH_TYPE_SHA256:
            g_is224 = HI_FALSE;
            sha2_starts(&g_sha2Context, g_is224);
            pCipherHashData->hHandle = g_hashHandle;
            break;

        default:
           HI_ERR_CIPHER("Invalid hash type!\n");
           pCipherHashData->hHandle = -1;
           Ret = HI_FAILURE;
           break;
    }

    return Ret;
}
#endif

HI_S32 Cipher_CalcHashInit_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;

	if(NULL == pCipherHashData)
	{
        HI_ERR_CIPHER("Invalid param, null pointer!\n");
        return HI_FAILURE;
	}
	
    g_hashHandle = g_u32HashHandleSeed++;
    pCipherHashData->hHandle = g_hashHandle;

    ret = HAL_Cipher_CalcHashInit(pCipherHashData);
    if( HI_SUCCESS != ret )
    {
        HI_ERR_CIPHER("Cipher hash init failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 Cipher_CalcHashUpdate_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        return HI_FAILURE;
    }

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }

    ret = HAL_Cipher_CalcHashUpdate(pCipherHashData);
    if(HI_FAILURE == ret)
    {
        HI_ERR_CIPHER("Cipher hash update failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 Cipher_CalcHashFinal_Hw(CIPHER_HASH_DATA_S *pCipherHashData)
{
    HI_S32 ret = HI_SUCCESS;

    if( NULL == pCipherHashData )
    {
        HI_ERR_CIPHER("Error, Null pointer input!\n");
        return HI_FAILURE;
    }

    if(pCipherHashData->hHandle != g_hashHandle)
    {
        HI_ERR_CIPHER("Invalid hash handle!\n");
        return HI_FAILURE;
    }

    ret = HAL_Cipher_CalcHashFinal(pCipherHashData);
    if(HI_FAILURE == ret)
    {
        HI_ERR_CIPHER("Cipher hash final failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_CIPHER_CalcHashInit(CIPHER_HASH_DATA_S *pCipherHashData)
{
	HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_HashMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    ret = Cipher_CalcHashInit_Hw(pCipherHashData);

	up(&g_HashMutexKernel);
	return ret;
}

HI_S32 HI_DRV_CIPHER_CalcHashUpdate(CIPHER_HASH_DATA_S *pCipherHashData)
{
	HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_HashMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    ret = Cipher_CalcHashUpdate_Hw(pCipherHashData);

	up(&g_HashMutexKernel);
	return ret;
}

HI_S32 HI_DRV_CIPHER_CalcHashFinal(CIPHER_HASH_DATA_S *pCipherHashData)
{
	HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_HashMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    ret = Cipher_CalcHashFinal_Hw(pCipherHashData);

	up(&g_HashMutexKernel);
	return ret;
}

HI_S32 HAL_Cipher_CbcMacAuth(CIPHER_CBCMAC_DATA_S *pstParam)
{
    HI_U8 *pu32TmpBuf;
    HI_U32 i;
    HI_U32 u32Value;

    pu32TmpBuf = (HI_U8*)pstParam->pu8RefCbcMac;

    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HL_APP_LEN, pstParam->u32AppLen);

    for (i = 0; i < 4; i++)
    {
        u32Value = (pu32TmpBuf[4 * (3 - i)] << 24)
                                | (pu32TmpBuf[4 * (3 - i) + 1] << 16)
                                | (pu32TmpBuf[4 * (3 - i) + 2] << 8)
                                | (pu32TmpBuf[4 * (3 - i) + 3]);            
        (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HL_APP_CBC_MAC_REF + i * 4, u32Value);
    }
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HL_APP_CBC_CTRL, 0x01);

    return HI_SUCCESS;
}

HI_S32 DRV_CIPHER_CbcMacAuth(CIPHER_CBCMAC_DATA_S *pstParam)
{
    return HAL_Cipher_CbcMacAuth(pstParam);
}

HI_S32 HI_DRV_CIPHER_CbcMacAuth(CIPHER_CBCMAC_DATA_S *pstParam)
{
    HI_S32 ret = 0;

    if(down_interruptible(&g_HashMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    ret = DRV_CIPHER_CbcMacAuth(pstParam);
	up(&g_HashMutexKernel);
    return ret;
}

HI_S32 HAL_Cipher_ClearCbcVerifyFlag()
{
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HL_APP_CBC_CTRL, 0x0);

    return HI_SUCCESS;
}

HI_VOID HASH_DRV_ModInit(HI_VOID)
{
    return ;
}

#ifdef MODULE
//module_init(HASH_DRV_ModInit);
//module_exit(HASH_DRV_ModExit);
#endif

EXPORT_SYMBOL(HI_DRV_CIPHER_CalcHashInit);
EXPORT_SYMBOL(HI_DRV_CIPHER_CalcHashUpdate);
EXPORT_SYMBOL(HI_DRV_CIPHER_CalcHashFinal);


MODULE_AUTHOR("Hi3720 MPP GRP");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
