/******************************************************************************
 *    COPYRIGHT (C) 2014 Hisilicon
 *    All rights reserved.
 * ***
 *    Create by hisilicon
 *
******************************************************************************/

#ifndef HISFC400_OSH
#define HISFC400_OSH

/*****************************************************************************/

#include <linux/init.h>
#include <linux/module.h>
#include <linux/device.h>
#include <linux/interrupt.h>
#include <linux/slab.h>
#include <linux/mtd/mtd.h>
#include <linux/mtd/partitions.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <asm/errno.h>
#include <asm/setup.h>
#include <linux/io.h>
#include <linux/dma-mapping.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/platform_device.h>
#include <linux/mtd/nand.h>

#include <mach/clkdev.h>
#include <linux/clk.h>
#include <linux/clkdev.h>

#include "../hinfc_gen.h"

#if (LINUX_VERSION_CODE >= KERNEL_VERSION(3, 4, 5))
#  include "../../mtdcore.h"
#endif

/*****************************************************************************/
#ifndef CONFIG_HISFC400_REG_BASE_ADDRESS
#  define CONFIG_HISFC400_REG_BASE_ADDRESS            (0x60040000)
#  warning NOT config CONFIG_HISFC400_REG_BASE_ADDRESS,\
	used default value, maybe invalid.
#endif /* CONFIG_HISFC400_REG_BASE_ADDRESS */

#define HISFC400_REG_BASE_ADDRESS_LEN	0x100

#ifndef CONFIG_HISFC400_BUFFER_BASE_ADDRESS
#  define CONFIG_HISFC400_BUFFER_BASE_ADDRESS         (0x2A000000)
#  warning NOT config CONFIG_HISFC400_BUFFER_BASE_ADDRESS,\
	used default value, maybe invalid.
#endif /* CONFIG_HISFC400_BUFFER_BASE_ADDRESS */

#define HISFC400_BUFFER_BASE_ADDRESS_LEN		(2048 + 256)

#ifndef CONFIG_HISFC400_PERIPHERY_REGBASE
#  define CONFIG_HISFC400_PERIPHERY_REGBASE           (0x101F5000)
#  warning NOT config CONFIG_HISFC400_PERIPHERY_REGBASE\
	used default value, maybe invalid.
#endif /* CONFIG_HISFC400_PERIPHERY_REGBASE*/

#ifndef CONFIG_HISFC400_MAX_CHIP
#  define CONFIG_HISFC400_MAX_CHIP                    (1)
#  warning NOT config CONFIG_HISFC400_MAX_CHIP, \
	used default value, maybe invalid.
#endif /* CONFIG_HISFC400_MAX_CHIP */

/*****************************************************************************/
#define SPI_NAND_MAX_PAGESIZE		4096
#define SPI_NAND_MAX_OOBSIZE		256

#define PR_BUG(fmt, args...) do { \
	printk("%s(%d): bug " fmt, __FILE__, __LINE__, ##args); \
	asm("b ."); \
} while (0)

#if 1
#  define DBG_MSG(_fmt, arg...)
#else
#  define DBG_MSG(_fmt, arg...) \
	printk(KERN_INFO "%s(%d): " _fmt, __FILE__, __LINE__, ##arg);
#endif

#endif /* HISFC400_OSH */

