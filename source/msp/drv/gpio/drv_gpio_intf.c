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

#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/sched.h>
#include <linux/delay.h>
#include <linux/string.h>
#include <linux/poll.h>
#include <linux/interrupt.h>
#include <linux/cdev.h>
#include <linux/ioctl.h>
#include <mach/hardware.h>
#include <asm/irq.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <linux/miscdevice.h>

#include "hi_kernel_adapt.h"
#include "hi_common.h"
#include "hi_error_mpi.h"
#include "drv_gpio.h"
#include "drv_gpio_ioctl.h"
#include "drv_gpio_ext.h"

static struct semaphore g_GpioSemIntf;   // kf39117 g_GpioSemIntf;

static long hi_gpio_ioctl(struct file *filp, HI_U32 cmd, unsigned long arg)
{
    long Ret = HI_SUCCESS;

    HI_VOID __user *argp = (HI_VOID __user*)arg;
    GPIO_DATA_S GPIOData;
    GPIO_INT_S GpioIntValue;

    Ret = down_interruptible(&g_GpioSemIntf);
    if (Ret)
    {
        HI_INFO_GPIO("Semaphore lock is  error. \n");
        return HI_FAILURE;
    }

    switch (cmd)
    {
    case CMD_GPIO_SET_INT_TYPE:
    {
        if (copy_from_user(&GPIOData, argp, sizeof(GPIO_DATA_S)))
        {
            HI_INFO_GPIO("copy data from user fail!\n");
            Ret = HI_FAILURE;
            break;
        }

        Ret = HI_DRV_GPIO_SetIntType(GPIOData.u32GpioNo, GPIOData.enIntType);
        break;
    }

    case CMD_GPIO_SET_INT_ENABLE:
    {
        if (copy_from_user(&GPIOData, argp, sizeof(GPIO_DATA_S)))
        {
            HI_INFO_GPIO("copy data from user fail!\n");
            Ret = HI_FAILURE;
            break;
        }

        if (HI_TRUE == GPIOData.bEnable)
        {
            Ret = HI_DRV_GPIO_ClearBitInt(GPIOData.u32GpioNo);
        }

        Ret |= HI_DRV_GPIO_SetBitIntEnable(GPIOData.u32GpioNo, GPIOData.bEnable);

        break;
    }

    case CMD_GPIO_GET_INT:
    {
        if (copy_from_user(&GpioIntValue, argp, sizeof(GPIO_INT_S)))
        {
            HI_INFO_GPIO("copy data from user fail!\n");
            Ret = HI_FAILURE;
            break;
        }

        Ret = DRV_GPIO_QueryInt (&GpioIntValue);
        if (HI_SUCCESS == Ret)
        {
            if (copy_to_user(argp, &GpioIntValue, sizeof(GPIO_INT_S)))
            {
                HI_INFO_GPIO("copy data to user fail!\n");
                Ret = HI_FAILURE;
            }
        }
        else
        {
            Ret = HI_ERR_GPIO_FAILED_GETINT;
        }

        break;
    }

    case CMD_GPIO_GET_GPIONUM:
    {
        GPIO_GET_GPIONUM_S GpioNum;
        HI_DRV_GPIO_GetGpioNum(&GpioNum);

        if (copy_to_user(argp, &GpioNum, sizeof(GPIO_GET_GPIONUM_S)))
        {
            HI_INFO_GPIO("copy data to user fail!\n");
            Ret = HI_FAILURE;
        }

        Ret = HI_SUCCESS;
        break;
    }

    default:
    {
        up(&g_GpioSemIntf);
        return -ENOIOCTLCMD;
    }
    }

    up(&g_GpioSemIntf);
    return Ret;
}

static struct file_operations hi_gpio_fops =
{
    .read			= NULL,
    .write			= NULL,
    .open			= DRV_GPIO_Open,
    .release		= DRV_GPIO_Close,
    .unlocked_ioctl = hi_gpio_ioctl,
};

//#define GPIO_PM
#ifdef GPIO_PM
 #include "himedia.h"
static HI_S32 gpio_suspend (PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_PRINT("gpio_suspend ok \n");
    return 0;
}

static HI_S32 gpio_resume  (PM_BASEDEV_S *pdev)
{
    HI_PRINT("gpio_resume ok \n");
    return 0;
}

static PM_BASEOPS_S gpio_baseOps =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = gpio_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = gpio_resume
};

static PM_DEVICE_S hi_gpio_dev =
{
    .minor    = HIMEDIA_DYNAMIC_MINOR,
    .name     = "hi_gpio",
    .owner    = THIS_MODULE,
    .app_ops  = &hi_gpio_fops,
    .base_ops = &gpio_baseOps
};

#else
static struct miscdevice hi_gpio_dev =
{
    MISC_DYNAMIC_MINOR,
    "hi_gpio",
    &hi_gpio_fops
};
#endif

HI_S32 GPIO_DRV_ModInit(HI_VOID)
{
    HI_S32 ret = 0;

    HI_INIT_MUTEX(&g_GpioSemIntf);

#ifndef HI_MCE_SUPPORT
 #ifndef HI_KEYLED_CT1642_KERNEL_SUPPORT
    HI_DRV_GPIO_Init();
 #endif
#endif

#ifdef GPIO_PM
    ret = HI_DRV_PM_Register(&hi_gpio_dev);
    if (ret)
    {
        HI_INFO_GPIO("HI_DRV_PM_Register err ! \n");
        goto err0;
    }

#else
    /*misc_register gpio*/
    ret = misc_register(&hi_gpio_dev);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_GPIO("gpio device register failed\n");
        goto err0;
    }
#endif

#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("Load hi_gpio.ko success.\t(%s)\n", VERSION_STRING);
#endif
#endif

    return HI_SUCCESS;

err0:
#ifndef HI_MCE_SUPPORT
 #ifndef HI_KEYLED_CT1642_KERNEL_SUPPORT
    HI_DRV_GPIO_DeInit();
 #endif
#endif
    return -EFAULT;
}

HI_VOID GPIO_DRV_ModExit(HI_VOID)
{
#ifdef GPIO_PM
    HI_DRV_PM_UnRegister(&hi_gpio_dev);
#else
    misc_deregister(&hi_gpio_dev);
#endif

#ifndef HI_MCE_SUPPORT
 #ifndef HI_KEYLED_CT1642_KERNEL_SUPPORT
    HI_DRV_GPIO_DeInit();
 #endif
#endif

#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("remove hi_gpio.ko ok!\n");
#endif
#endif
    return;
}

#ifdef MODULE
module_init(GPIO_DRV_ModInit);
module_exit(GPIO_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
