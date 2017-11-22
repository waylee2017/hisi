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

#include "hi_type.h"
#include "hi_boot_common.h"

//#include "malloc.h"
//#include "common.h"
#include "hi_unf_disp.h"
#include "hi_unf_grc.h"
//#include "hi_boot_pdm.h"

#include "hi_vo_wrap.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/**********************************************************
 * platform definitions
 **********************************************************/

#define  LEO_DEBUG 1
#define IRQ_HANDLED 0

#define HI_DRV_MMZ_UnmapAndRelease  HI_MMZ_Release
#define HI_DRV_MMZ_AllocAndMap      HI_MMZ_Alloc
#define IO_ADDRESS(addr) (addr)

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HI_FATAL_DISP(format...)  HI_FATAL_BOOT(0, format)
#define HI_ERR_DISP(format...)  HI_ERR_BOOT(0, format)
#define HI_WARN_DISP(format...)  HI_WARN_BOOT(0, format)
#define HI_INFO_DISP(format...)  HI_INFO_COMMON(0, format)
#define HI_DBG_DISP(format...)   HI_INFO_BOOT(0, format)
#else
#define HI_FATAL_DISP(format...)
#define HI_ERR_DISP(format...)
#define HI_WARN_DISP(format...)
#define HI_INFO_DISP(format...)
#define HI_DBG_DISP(format...)
#endif

#define HI_ERR_DISP_DEV_NOT_EXIST           (HI_S32)(0x80100001)
#define HI_ERR_DISP_NOT_DEV_FILE            (HI_S32)(0x80100002)
#define HI_ERR_DISP_DEV_OPEN_ERR            (HI_S32)(0x80100003)
#define HI_ERR_DISP_DEV_CLOSE_ERR           (HI_S32)(0x80100004)
#define HI_ERR_DISP_NULL_PTR                (HI_S32)(0x80100005)
#define HI_ERR_DISP_NO_INIT                 (HI_S32)(0x80100006)
#define HI_ERR_DISP_INVALID_PARA            (HI_S32)(0x80100007)
#define HI_ERR_DISP_CREATE_ERR              (HI_S32)(0x80100008)
#define HI_ERR_DISP_DESTROY_ERR             (HI_S32)(0x80100009)
#define HI_ERR_DISP_NOT_EXIST               (HI_S32)(0x8010000A)
#define HI_ERR_DISP_INVALID_OPT             (HI_S32)(0x8010000B)
#define HI_ERR_DISP_NOT_SUPPORT_FMT         (HI_S32)(0x8010000C)
#define HI_ERR_DISP_NOT_SUPPORT         (HI_S32)(0x8010000D)

typedef enum tagOPTM_DISP_LCD_FMT_E
{
    OPTM_DISP_LCD_FMT_861D_640X480_60HZ = 0,
    OPTM_DISP_LCD_FMT_VESA_800X600_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1024X768_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X720_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X800_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X1024_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1360X768_60HZ,        //Rowe
    OPTM_DISP_LCD_FMT_VESA_1366X768_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1400X1050_60HZ,       //Rowe
    OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ_RB,
    OPTM_DISP_LCD_FMT_VESA_1600X900_60HZ_RB,
    OPTM_DISP_LCD_FMT_VESA_1600X1200_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1680X1050_60HZ,        //Rowe
    OPTM_DISP_LCD_FMT_VESA_1920X1080_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1920X1200_60HZ,
    OPTM_DISP_LCD_FMT_VESA_2048X1152_60HZ,
    OPTM_DISP_LCD_FMT_CUSTOMER_DEFINE,   // for lvds
    OPTM_DISP_LCD_FMT_BUTT,
}OPTM_DISP_LCD_FMT_E;


/*
 *  #define OPTM_PLATFORM_PILOT_FPGA  1
 */

#define OPTM_V101_VERSION1 0x76756F76uL
#define OPTM_V101_VERSION2 0x30303134uL

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

#define OPTM_REGS_BASE_ADDR   0x10110000

#define OPTM_REGS_HD0_CLK_SET 0x101f5044


#define OPTM_REGS_SC_BASE_ADDRESS 0x101e0000


#define OPTM_REGS_HD0_PLL01_SET 0x101e0020



#define OPTM_REGS_HD0_PIN_FOR_LCD_P0      0x10203014
#define OPTM_REGS_HD0_PIN_FOR_LCD_VALUE0 0x2

#define OPTM_REGS_HD0_PIN_FOR_LCD_P1      0x10203024
#define OPTM_REGS_HD0_PIN_FOR_LCD_VALUE1 0x2

#else

/* VOU interrupt number */
#define OPTM_IRQ_NUM          66

/* physical base address of VOU registers' list */
#define OPTM_REGS_BASE_ADDR   0x10110000

/* registers of VOU system clock-control */
#define OPTM_REGS_HD0_CLK_SET 0x101f5044

/* System control registers */
#define OPTM_REGS_SC_BASE_ADDRESS 0x101e0000

/* VOU PLL 0 1 registers */
#define OPTM_REGS_HD0_PLL01_SET 0x101e0020


/*  output pins multiplex of VOU LCD  */
#define OPTM_REGS_HD0_PIN_FOR_LCD_P0      0x10203014
#define OPTM_REGS_HD0_PIN_FOR_LCD_VALUE0 0x2

#define OPTM_REGS_HD0_PIN_FOR_LCD_P1      0x10203024
#define OPTM_REGS_HD0_PIN_FOR_LCD_VALUE1 0x2

#endif


#define OPTM_VGA_INTF_ORDER_RGB  0x00
#define OPTM_VGA_INTF_ORDER_BGR  0x01


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
//
/* video layer number: VHD/VAD/VSD */
#define OPTM_DISP_VIDEO_LAYER_MAX_NUMBER 3
//
/* graphic layer number: GFX_0/GFX_1 */
#define OPTM_DISP_GFX_LAYER_MAX_NUMBER 2
//
/* layer number: VHD/VAD/VSD/GFX_0/GFX_1 */
#define OPTM_TOTAL_LAYER_NUMBER (OPTM_DISP_VIDEO_LAYER_MAX_NUMBER + OPTM_DISP_GFX_LAYER_MAX_NUMBER)

//
#define OPTM_DISP_MAX_WIDTH 1920
#define OPTM_DISP_MAX_HEIGHT 1080
//added by t59295
#define OPTM_DISP_HD_WIDTH  1280
#define OPTM_DISP_HD_HEIGHT 720
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

