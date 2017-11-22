
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
 File Name     : optm_basic.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_BASIC_H__
#define __OPTM_BASIC_H__


#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>

#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
#include <linux/smp_lock.h>
#endif

#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <linux/list.h>

#include <asm/io.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0))
#include <asm/system.h>
#endif
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <asm/signal.h>
#include <linux/time.h>
#include <linux/unistd.h>
#include <linux/delay.h>
#include <linux/sched.h>

#include <mach/hardware.h>
#include "hi_drv_mem.h"

//#include "mpi_priv_disp.h"
#include "drv_disp_ioctl.h"

#include "hi_error_mpi.h"

//#include "mpi_priv_vo.h"
#include "drv_vo_ioctl.h"

#include "hi_error_mpi.h"

//#include "common_mem.h"


#include "hi_drv_mmz.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/**********************************************************
 * platform definitions
 **********************************************************/




#define OPTM_PLATFORM_CHIP_3720   1

/*
 *  #define OPTM_PLATFORM_PILOT_FPGA  1
 */

/* V101 VOU version  */
#define OPTM_V101_VERSION1 0x76756F76uL
#define OPTM_V101_VERSION2 0x30303134uL

/* V200 VOU version */
#define OPTM_V200_VERSION1 0x76756F76uL
#define OPTM_V200_VERSION2 0x30313134uL


/* V300 VOU version */
#define OPTM_V300_VERSION1 0x76756F76uL
#define OPTM_V300_VERSION2 0x30303334uL

/* definition of capacity set */
#if  defined (CHIP_TYPE_fpga)
#define OPTM_CAPABILITY_DIE_FOR_HD 0
#else
#define OPTM_CAPABILITY_DIE_FOR_HD 1
#endif


#ifdef OPTM_PLATFORM_PILOT_FPGA

/* VOU iterrupt number */
#define OPTM_IRQ_NUM          14

/* physical base address of VOU registers' list */
#define OPTM_REGS_BASE_ADDR   0x10110000

/* registers of VOU system clock-control */
#define OPTM_REGS_HD0_CLK_SET 0x101f5044

/* VOU PLL 0 1 registers */
#define OPTM_REGS_HD0_PLL01_SET   0x101e0020

#else

/* VOU interrupt number */
#define OPTM_IRQ_NUM          66

/* physical base address of VOU registers' list */
#define OPTM_REGS_BASE_ADDR   0x10110000

/* registers of VOU system clock-control */
#define OPTM_REGS_HD0_CLK_SET 0x101f5044

/* VOU PLL 0 1 registers */
#define OPTM_REGS_HD0_PLL01_SET 0x101e0020

/*
 * vga_intf_order definition
 * 0:RGB mode; 1:BGR mode.
 */
#define OPTM_VGA_INTF_ORDER_RGB  0x00
#define OPTM_VGA_INTF_ORDER_BGR  0x01


#endif


/* physical base address of VOU registers' list */
#define OPTM_REGS_BASE_ADDR 0x10110000

#define OPTM_REGS_HD0_CLK_SET 0x101f5044

#define OPTM_REGS_ADDR_CRG53 0x101f50d4
#define OPTM_REGS_ADDR_CRG54 0x101f50d8
#define OPTM_REGS_ADDR_CRG68 0x101f5110
#define OPTM_REGS_ADDR_CRG71 0x101f511c

#ifdef CHIP_TYPE_hi3716mv330
#define OPTM_REGS_ADDR_VPLL0 0x101f5018
#define OPTM_REGS_ADDR_VPLL1 0x101f501c
#else
#define OPTM_REGS_ADDR_VPLL0 0x101f5020
#define OPTM_REGS_ADDR_VPLL1 0x101f5024
#endif

/**********************************************************
 *               definitions of constants                 *
 **********************************************************/
/* number of disp channel: DHD/DSD */
#define OPTM_DISP_CHN_MAX_NUMBER 2

/* video layer number: VHD/VAD/VSD */
#define OPTM_DISP_VIDEO_LAYER_MAX_NUMBER 3

/* graphic layer number: GFX_0/GFX_1 */
#define OPTM_DISP_GFX_LAYER_MAX_NUMBER 2

/* layer number: VHD/VAD/VSD/GFX_0/GFX_1 */
#define OPTM_TOTAL_LAYER_NUMBER (OPTM_DISP_VIDEO_LAYER_MAX_NUMBER + OPTM_DISP_GFX_LAYER_MAX_NUMBER)

/* the maximum width and height of disp equipment */
#define OPTM_DISP_MAX_WIDTH 1920
#define OPTM_DISP_MAX_HEIGHT 1080

/** added by t59295 */

#define OPTM_DISP_HD_WIDTH  1920//1280
#define OPTM_DISP_HD_HEIGHT 1080//720


#define OPTM_DISP_SD_WIDTH  720
#define OPTM_DISP_SD_HEIGHT 576


/**********************************************************
 *                definitions of functional units         *
 **********************************************************/
#define D_OPTM_MAX(a, b, ret) \
do{ret = (a>b) ? a: b;        \
}while(0)

#define D_OPTM_MIN(a, b, ret) \
do{ret = (a<b) ? a: b;        \
}while(0)

#if 0
#define HI_OPTM_PRINT(fmt...) printk(fmt)

#define HI_OPTM_POS() \
do {                                     \
    printk("  >File     : " __FILE__ "\n" \
           "  >Function : %s\n"       \
           "  >Line     : %d\n"       \
           , __FUNCTION__, __LINE__);  \
} while (0)
#else

#define HI_OPTM_PRINT(fmt...)

#define HI_OPTM_POS()

#endif

#ifdef CHIP_TYPE_hi3716mv330
#define VDP_USE_DEI_FB_OPTIMIZE
#define VDP_CONFIG_POINT_PERCENT (85)
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_BASIC_H__ */

