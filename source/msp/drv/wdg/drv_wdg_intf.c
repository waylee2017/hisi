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
#include <linux/timer.h>
#include <linux/miscdevice.h>
#include <linux/watchdog.h>
#include <linux/fs.h>
#include <linux/notifier.h>
#include <linux/reboot.h>
#include <linux/init.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>
#include <linux/kthread.h>
#include <linux/string.h>

//#include "himedia.h"
#include "drv_wdg_ioctl.h"
#include "drv_wdg.h"
#include "hi_common.h"

#include "hi_module.h"
#include "hi_drv_module.h"
#include "drv_sys_ext.h"
#include "drv_dev_ext.h"

#define WDG_CLK_HZ (24 * 1000 * 1000)  /* select crystal,freq fix:24M*/

#define SC_WDG_RST_CTRL 0x101E0050 //SC_WDG_RST_CTRL

/* define watchdog IO */
#define HIWDT_BASE 0x10201000
#define HIWDT_REG(x) (HIWDT_BASE + (x))

#define HIWDT_LOAD 0x000
#define HIWDT_VALUE 0x004
#define HIWDT_CTRL 0x008
#define HIWDT_INTCLR 0x00C
#define HIWDT_RIS 0x010
#define HIWDT_MIS 0x014
#define HIWDT_LOCK 0xC00

#define HIWDT_UNLOCK_VAL 0x1ACCE551

#define hiwdt_readl(x) readl(IO_ADDRESS(HIWDT_REG(x)))
#define hiwdt_writel(v, x) writel(v, IO_ADDRESS(HIWDT_REG(x)))

static unsigned long wdg_load  = 0;
static unsigned long wdg_value = 0;
static unsigned long wdg_ris = 0;
static unsigned long wdg_mis = 0;

static unsigned long g_bWdgPmocing = 0;

/* debug */

//#define HIDOG_PFX "HiDog: "

/* module param */
#define HIDOG_TIMER_MARGIN (60)  /*60 Second*/
static int default_margin = HIDOG_TIMER_MARGIN; /* in second */
module_param(default_margin, int, 0);
MODULE_PARM_DESC(default_margin,
                 "Watchdog default_margin in second. (0<default_margin<80, default=" __MODULE_STRING(HIDOG_TIMER_MARGIN) ")");

/* local var */
static DEFINE_SPINLOCK(hidog_lock);
static int cur_margin = HIDOG_TIMER_MARGIN;

static unsigned char wdg_open_flag = 0;
static int options = WDIOS_DISABLECARD; //WDIOS_ENABLECARD;

static void hidog_set_timeout(unsigned int nr)
{
    unsigned long flags;
    int cnt = nr;

    spin_lock_irqsave(&hidog_lock, flags);

    if (nr == 0)
    {
        cnt = ~0x0;
    }

    //HI_PRINT("set timeout cnt=0x%x\n", cnt);

    /* unlock watchdog registers */
    hiwdt_writel(HIWDT_UNLOCK_VAL, HIWDT_LOCK);
    hiwdt_writel(cnt, HIWDT_LOAD);
    hiwdt_writel(cnt, HIWDT_VALUE);

    /* lock watchdog registers */
    hiwdt_writel(0, HIWDT_LOCK);
    spin_unlock_irqrestore(&hidog_lock, flags);
};

static void hidog_feed(void)
{
    unsigned long flags;

    spin_lock_irqsave(&hidog_lock, flags);

    /* unlock watchdog registers */
    hiwdt_writel(HIWDT_UNLOCK_VAL, HIWDT_LOCK);

    /* clear watchdog */
    hiwdt_writel(0x00, HIWDT_INTCLR);

    /* lock watchdog registers */
    hiwdt_writel(0, HIWDT_LOCK);
    spin_unlock_irqrestore(&hidog_lock, flags);
};

static void hidog_reset_board(void)
{
    unsigned long flags;
    HI_CHIP_TYPE_E enChipType=HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipID=HI_CHIP_VERSION_BUTT;

	/* add by z00149549 for DTS2012123104700 in MV300  */
    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipID);

    if ((HI_CHIP_TYPE_HI3716M == enChipType) && (HI_CHIP_VERSION_V300 == enChipID))
    {
		writel(0x2, IO_ADDRESS(0x1020301C));
		writel(0x1, IO_ADDRESS(0x10203030));
		writel(0x1, IO_ADDRESS(0x10203034));
		writel(0x1, IO_ADDRESS(0x1020304C));
		writel(0x1, IO_ADDRESS(0x10203050));
		writel(0x1, IO_ADDRESS(0x1020306C));
		writel(0x3, IO_ADDRESS(0x10203074));
	}

    spin_lock_irqsave(&hidog_lock, flags);

    /* unlock watchdog registers */
    hiwdt_writel(HIWDT_UNLOCK_VAL, HIWDT_LOCK);

    /** set load value */
    hiwdt_writel(1, HIWDT_LOAD);

    /* clear watchdog */
    hiwdt_writel(0x00, HIWDT_INTCLR);

    /* lock watchdog registers */
    hiwdt_writel(0, HIWDT_LOCK);
    spin_unlock_irqrestore(&hidog_lock, flags);
}

/* parameter : timeout time by second*/
static int hidog_set_heartbeat(int t)
{
    int ret = 0;
    unsigned int u32WdgLoad;

    if (t > ((0xffffffff / WDG_CLK_HZ) * 2))
    {
        //HI_PRINT("too large timeout value, then set to 0xffffffff\n");
        u32WdgLoad = 0xffffffff;
        cur_margin = ((0xffffffff / WDG_CLK_HZ) * 2);
		ret = 1;
    }
    else
    {
        /* crystal :24M, calculate out initial value */
        u32WdgLoad = WDG_CLK_HZ / 2 * t;

        //HI_PRINT("set wdg timeout clk cnt: 0x%x\n", u32WdgLoad);
        cur_margin = t;
    }

    hidog_set_timeout(u32WdgLoad);
    hidog_feed();

    return ret;
}

static void hidog_start(void)
{
    unsigned long flags;

    //	unsigned long t;

    spin_lock_irqsave(&hidog_lock, flags);

    /* unlock watchdog registers */
    hiwdt_writel(HIWDT_UNLOCK_VAL, HIWDT_LOCK);
    hiwdt_writel(0x00, HIWDT_CTRL);
    hiwdt_writel(0x00, HIWDT_INTCLR);
    hiwdt_writel(0x03, HIWDT_CTRL);

    /* lock watchdog registers */
    hiwdt_writel(0, HIWDT_LOCK);

    /* use soft to control WDG reset, can not open
       0: not send reset signal, 1: send reset signal by WDG_RST pin */

    //writel(0x1, IO_ADDRESS(SC_WDG_RST_CTRL));
    spin_unlock_irqrestore(&hidog_lock, flags);

    options = WDIOS_ENABLECARD;
}

static void hidog_stop(void)
{
    unsigned long flags;

    //	unsigned long t;

    spin_lock_irqsave(&hidog_lock, flags);

    /* disable watchdog clock */
    writel(0x0, IO_ADDRESS(SC_WDG_RST_CTRL));

    /* unlock watchdog registers */
    hiwdt_writel(HIWDT_UNLOCK_VAL, HIWDT_LOCK);

    /* stop watchdog timer */
    hiwdt_writel(0x00, HIWDT_CTRL);
    hiwdt_writel(0x00, HIWDT_INTCLR);

    /* lock watchdog registers */
    hiwdt_writel(0, HIWDT_LOCK);

    spin_unlock_irqrestore(&hidog_lock, flags);

    hidog_set_timeout(0);

    options = WDIOS_DISABLECARD;
}

static int hidog_open(struct inode *inode, struct file *file)
{
    int ret = 0;

    if (wdg_open_flag)
    {
        return -EBUSY;
    }

    /*
     *	Activate timer
     */
    wdg_open_flag=1;
    hidog_feed();

    return ret;
}

static int hidog_release(struct inode *inode, struct file *file)
{
    wdg_open_flag=0;

    return 0;
}

static long hidog_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    void __user *argp = (void __user *)arg;
    int __user *p = argp;
    int new_margin;

    switch (cmd)
    {
    case WDIOC_KEEPALIVE:
        hidog_feed();
        return 0;

    case WDIOC_SETTIMEOUT:
        if (get_user(new_margin, p))
        {
            return -EFAULT;
        }

        if (hidog_set_heartbeat(new_margin))
        {
            return -EINVAL;
        }

        hidog_feed();
        return 0;

    case WDIOC_GETTIMEOUT:
        return put_user(cur_margin, p);

    case WDIOC_SETOPTIONS:
        if (arg & WDIOS_ENABLECARD)
        {
            hidog_start();
            hidog_set_heartbeat(cur_margin);
            return 0;
        }
        else if (arg & WDIOS_DISABLECARD)
        {
            hidog_stop();
            return 0;
        }
        else if (arg & WDIOS_RESET_BOARD)
        {
            hidog_reset_board();
            return 0;
        }
        else
        {
            return -WDIOS_UNKNOWN;
        }

    default:
        return -ENOIOCTLCMD;
    }
}

/*
 *	Kernel Interfaces
 */

static struct file_operations hidog_fops =
{
    .owner   = THIS_MODULE,
    .llseek  = no_llseek,

    //	.write		= hidog_write,
    .unlocked_ioctl   = hidog_ioctl,
    .open    = hidog_open,
    .release = hidog_release,
};

#define WDG_PM

#ifdef WDG_PM
static int wdg_suspend (PM_BASEDEV_S *pdev, pm_message_t state)
{
    if (WDIOS_ENABLECARD == options)
    {
        wdg_ris   = hiwdt_readl(HIWDT_RIS);
        wdg_mis   = hiwdt_readl(HIWDT_MIS);
        wdg_load  = hiwdt_readl(HIWDT_LOAD);
        wdg_value = hiwdt_readl(HIWDT_VALUE); //After resume, the time of timeout will continue(subtract the time consume before suspend)
        //HI_PRINT("> %s: [%d], 0x%x, wdg_mis=0x%x\n", __FUNCTION__, __LINE__, wdg_ris, wdg_mis);
        //HI_PRINT("> %s: [%d], 0x%x, wdg_value=0x%x\n", __FUNCTION__, __LINE__, wdg_load, wdg_value);
        if ((0 != wdg_ris) && (0 != wdg_mis)) //have already produce one interrupt
        {
            wdg_value = wdg_value / 2;
        }
        else
        {
            wdg_value = (wdg_load + wdg_value) / 2;
        }

        options = WDIOS_DISABLECARD; //WDIOS_ENABLECARD;
        hidog_stop();
        g_bWdgPmocing = 1;
    }

    return 0;
}

static int wdg_resume(PM_BASEDEV_S *pdev)
{
    if ((WDIOS_DISABLECARD == options) && (1 == g_bWdgPmocing))
    {
        hidog_set_timeout(wdg_value);
        hidog_feed();

        hidog_start();
    }

    //wdg_value = hiwdt_readl(HIWDT_VALUE);
    //HI_PRINT("> %s: [%d], 0x%x, wdg_value=0x%x\n", __FUNCTION__, __LINE__, wdg_load, wdg_value);
    return 0;
}

static PM_BASEOPS_S wdg_baseOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = wdg_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = wdg_resume
};

static PM_DEVICE_S wdg_hidev = {
    .minor    = HIMEDIA_DYNAMIC_MINOR,
    .name     = "watchdog",
    .owner    = THIS_MODULE,
    .app_ops  = &hidog_fops,
    .base_ops = &wdg_baseOps
};

#else
static struct miscdevice wdg_hidev =
{
    .minor = WATCHDOG_MINOR,
    .name  = "watchdog",
    .fops  = &hidog_fops,
};
#endif

HI_S32 WDG_DRV_ModInit(HI_VOID)
{
    int ret = 0;

    (HI_VOID)HI_DRV_MODULE_Register(HI_ID_WDG, "HI_WDG", HI_NULL);

    cur_margin = default_margin;

    /* Check that the default_margin value is within it's range ; if not reset to the default */
    if (hidog_set_heartbeat(default_margin))
    {
        default_margin = HIDOG_TIMER_MARGIN;
        hidog_set_heartbeat(HIDOG_TIMER_MARGIN);

        //HI_PRINT(KERN_WARNING HIDOG_PFX "default_margin value error, using %d\n", HIDOG_TIMER_MARGIN);
    }

#ifdef WDG_PM
    ret = HI_DRV_PM_Register(&wdg_hidev);
    if (ret)
    {
        //HI_PRINT (KERN_ERR HIDOG_PFX "HI_DRV_PM_Register err (err=%d)\n", ret);
        goto watchdog_init_errB;
    }

#else
    ret = misc_register(&wdg_hidev);
    if (ret)
    {
        //HI_PRINT (KERN_ERR HIDOG_PFX "cannot register miscdev on minor=%d (err=%d)\n",
        //		WATCHDOG_MINOR, ret);
        goto watchdog_init_errB;
    }
#endif

    return ret;

watchdog_init_errB:
    return ret;
}

HI_VOID WDG_DRV_ModExit(HI_VOID)
{
    HI_DRV_MODULE_UnRegister(HI_ID_WDG);

#ifdef WDG_PM
    HI_DRV_PM_UnRegister(&wdg_hidev);
#else
    misc_deregister(&wdg_hidev);
#endif

    hidog_set_timeout(0);
}

#ifdef MODULE
module_init(WDG_DRV_ModInit);
module_exit(WDG_DRV_ModExit);
#endif

MODULE_AUTHOR("Liu Jiandong");
MODULE_DESCRIPTION("Hisilicon Watchdog Device Driver");
MODULE_LICENSE("GPL");
MODULE_ALIAS_MISCDEV(WATCHDOG_MINOR);
