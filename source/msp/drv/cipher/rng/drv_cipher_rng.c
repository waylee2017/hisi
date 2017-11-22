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

#include "drv_cipher_rng.h"
//nclude <asm/io.h>
//#include <linux/semaphore.h>
//nclude <linux/delay.h>
//nclude <linux/time.h>
//nclude <linux/wait.h>
//#include <linux/interrupt.h>
//#include <asm/system.h>
//#include <linux/signal.h>
//#include <linux/spinlock.h>
//#include <linux/seq_file.h>
//#include <asm/atomic.h>
#include "hi_kernel_adapt.h"

#include <linux/proc_fs.h>
//nclude <linux/module.h>
//#include <linux/signal.h>
//#include <linux/spinlock.h>
//#include <linux/personality.h>
//#include <linux/ptrace.h>
//#include <linux/kallsyms.h>
//#include <linux/init.h>
//#include <linux/seq_file.h>
//#include <linux/himedia.h>

//#include <asm/atomic.h>
//#include <asm/cacheflush.h>
//#include <asm/io.h>
//#include <asm/system.h>
//#include <asm/uaccess.h>
//#include <asm/unistd.h>
//#include <asm/traps.h>

//#include <linux/miscdevice.h>

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

HI_DECLARE_MUTEX(g_RngMutexKernel);

HI_S32 HAL_Cipher_GetRandomNumber(CIPHER_RNG_S *pstRNG)
{
    HI_U32 u32RngStat = 0;
    HI_U32 u32RngCtrl = 0;

	if(NULL == pstRNG)
	{
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_FAILURE;
	}

	/* select rng source: 2 */
    (HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_BASE_ADDR), &u32RngCtrl);
    if ((0x01 == (u32RngCtrl & 0x03)) || (0x0 == (u32RngCtrl & 0x03))) /* 0x01 and 0x00 is not used */
    {
        u32RngCtrl &= 0xfffffffc;
        u32RngCtrl |= 0x2;		/* select rng source 0x2, but 0x03 is ok too */
        (HI_VOID)HAL_CIPHER_WriteReg(IO_ADDRESS(REG_RNG_BASE_ADDR), u32RngCtrl);
		//msleep(2);
    }

    /* config post_process_depth */
	(HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_BASE_ADDR), &u32RngCtrl);
    if (0 == (u32RngCtrl & 0x00009000))
    {
        u32RngCtrl |= 0x00009000;
        (HI_VOID)HAL_CIPHER_WriteReg(IO_ADDRESS(REG_RNG_BASE_ADDR), u32RngCtrl);
    }

    /* config post_process_enable andd drop_enable */
	(HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_BASE_ADDR), &u32RngCtrl);
    if (0 == (u32RngCtrl & 0x000000a0))
    {
        u32RngCtrl |= 0x000000a0;
        (HI_VOID)HAL_CIPHER_WriteReg(IO_ADDRESS(REG_RNG_BASE_ADDR), u32RngCtrl);
    }

	if(0 == pstRNG->u32TimeOutUs)
	{
		/* low 3bit(RNG_data_count[2:0]), indicate how many RNGs in the fifo is available now */
	    (HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_STAT_ADDR), &u32RngStat);
	    if((u32RngStat & 0x7) <= 0)
	    {
	        return HI_ERR_CIPHER_NO_AVAILABLE_RNG;
	    }
	}
	else
	{
	    while(1)
	    {
	    	/* low 3bit(RNG_data_count[2:0]), indicate how many RNGs in the fifo is available now */
	        (HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_STAT_ADDR), &u32RngStat);
	        if((u32RngStat & 0x7) > 0)
	        {
	            break;
	        }

			msleep(1);
	    }
	}

    (HI_VOID)HAL_CIPHER_ReadReg(IO_ADDRESS(REG_RNG_NUMBER_ADDR), &pstRNG->u32RNG);

    return HI_SUCCESS;
}


HI_S32 HI_DRV_CIPHER_GetRandomNumber(CIPHER_RNG_S *pstRNG)
{
	HI_S32 ret = HI_SUCCESS;

    if(NULL == pstRNG)
    {
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_FAILURE;
    }

    if(down_interruptible(&g_RngMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    ret = HAL_Cipher_GetRandomNumber(pstRNG);

	up(&g_RngMutexKernel);
	return ret;
}

HI_VOID RNG_DRV_ModInit(HI_VOID)
{
    return ;
}

HI_VOID RNG_DRV_ModExit(HI_VOID)
{
    return ;
}

//EXPORT_SYMBOL(HI_DRV_CIPHER_GetRandomNumber);

/*
#ifdef MODULE
module_init(RNG_DRV_ModInit);
module_exit(RNG_DRV_ModExit);
#endif*/

MODULE_AUTHOR("Hi3720 MPP GRP");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
