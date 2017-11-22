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


#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/kthread.h>
#include <asm/unistd.h>

#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
//#include <linux/smp_lock.h>

#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0))
#include <asm/system.h>
#endif
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>

//#include <kcom/mmz.h>

#include <mach/hardware.h>
#include <asm/signal.h>
#include <linux/time.h>

#include <linux/unistd.h>

#include <linux/delay.h>
#include <linux/mm.h>

#include "hi_common.h"
#include "drv_gpioi2c_ext.h"
#include "drv_gpioi2c.h"
#include "hi_drv_gpioi2c.h"
#include "drv_i2c_ioctl.h"
#include "drv_gpio_ext.h"
#include "drv_sys_ext.h"

#if 0
static int gpioidclock = 11;
static int gpioiddata = 12;
static int clockbit = 3;
static int databit = 5;
module_param(gpioidclock, int, S_IRUGO);
module_param(gpioiddata, int, S_IRUGO);
module_param(clockbit, int, S_IRUGO);
module_param(databit, int, S_IRUGO);
static HI_CHIP_TYPE_E g_enChipType;
static HI_CHIP_VERSION_E g_enChipVersion;
#endif
extern int i2cmode;
module_param(i2cmode, int, S_IRUGO);

/*************************************************************************/

//#define GPIO_I2C_PM
#ifdef GPIO_I2C_PM
 #include <linux/himedia.h>

extern int     gpio_i2c_suspend (PM_BASEDEV_S *pdev, pm_message_t state);
extern int     gpio_i2c_resume(int I2cNum, PM_BASEDEV_S *pdev);

static PM_BASEOPS_S gpio_i2c_baseOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = gpio_i2c_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = gpio_i2c_resume
};

static struct file_operations gpio_i2c_fopts =
{
    .owner   = THIS_MODULE,
    .open    = NULL,
    .release = NULL,
    .ioctl   = NULL
};

 #define GPIO_I2C_NAME "gpio_i2c"

static PM_DEVICE_S gpio_i2c_hidev = {
    .minor    = HIMEDIA_DYNAMIC_MINOR,
    .name     = GPIO_I2C_NAME,
    .owner    = THIS_MODULE,
    .app_ops  = &gpio_i2c_fopts,
    .base_ops = &gpio_i2c_baseOps
};
#endif

HI_S32 GPIOI2C_DRV_ModInit(HI_VOID)
{
    //HI_S32 ret = 0;

#ifndef HI_MCE_SUPPORT
    HI_DRV_GPIOI2C_Init();
#endif

#if 0
    HI_DRV_SYS_GetChipVersion( &g_enChipType, &g_enChipVersion );

    if ((HI_CHIP_TYPE_HI3716M == g_enChipType) && (HI_CHIP_VERSION_V300 == g_enChipVersion))
    {
        if ((gpioidclock < HI_MV300_GPIO_GROUP_NUM) && (gpioiddata < HI_MV300_GPIO_GROUP_NUM)    \
            && (clockbit < HI_GPIO_BIT_NUM) && (databit < HI_GPIO_BIT_NUM))
        {
            if (DRV_GPIOI2C_Config(HI_I2C_MAX_NUM_USER, gpioidclock, gpioiddata, clockbit, databit))
            {
                return HI_FAILURE;
            }

            HI_INFO_I2C("GPIO control for I2C has been initialized(SLC=gpio%d_%d, SDA=gpio%d_%d, i2cmode=%d).\n",
                        gpioidclock, clockbit, gpioiddata, databit, i2cmode);
        }
        else
        {
            HI_INFO_I2C("info:not support gpio number (SLC=gpio%d_%d, SDA=gpio%d_%d, i2cmode=%d).\n", gpioidclock,
                        clockbit, gpioiddata, databit, i2cmode);
        }
    }
    else
    {
        if ((gpioidclock < HI_GPIO_GROUP_NUM) && (gpioiddata < HI_GPIO_GROUP_NUM)    \
            && (clockbit < HI_GPIO_BIT_NUM) && (databit < HI_GPIO_BIT_NUM))
        {
            if (DRV_GPIOI2C_Config(HI_I2C_MAX_NUM_USER, gpioidclock, gpioiddata, clockbit, databit))
            {
                return HI_FAILURE;
            }

            HI_INFO_I2C("GPIO control for I2C has been initialized(SLC=gpio%d_%d, SDA=gpio%d_%d, i2cmode=%d).\n",
                        gpioidclock, clockbit, gpioiddata, databit, i2cmode);
        }
        else
        {
            HI_INFO_I2C("info:not support gpio number (SLC=gpio%d_%d, SDA=gpio%d_%d, i2cmode=%d).\n", gpioidclock,
                        clockbit, gpioiddata, databit, i2cmode);
        }
    }
#endif

#ifdef GPIO_I2C_PM
    ret = HI_DRV_PM_Register(&gpio_i2c_hidev);
    if (ret)
    {
        //HI_PRINT("HI_DRV_PM_Register err ! \n");
        goto err0;
    }
#endif

#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("Load hi_gpioi2c.ko success.\t(%s)\n", VERSION_STRING);
#endif
#endif
    return HI_SUCCESS;

#ifdef GPIO_I2C_PM
err0:
 #ifndef HI_MCE_SUPPORT
    HI_DRV_GPIOI2C_DeInit();
 #endif
    return -EFAULT;
#endif
}

HI_VOID GPIOI2C_DRV_ModExit(HI_VOID)
{
#ifdef GPIO_I2C_PM
    HI_DRV_PM_UnRegister(&gpio_i2c_hidev);
#endif

#ifndef HI_MCE_SUPPORT
    HI_DRV_GPIOI2C_DeInit();
#endif

    return;
}

#ifdef MODULE
module_init(GPIOI2C_DRV_ModInit);
module_exit(GPIOI2C_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("HISILICON");
