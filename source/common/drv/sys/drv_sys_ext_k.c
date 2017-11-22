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
#include <linux/fs.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <mach/hardware.h>
#include <asm/uaccess.h>
#include <linux/sched.h>
#include <linux/math64.h>

#include <linux/hikapi.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "drv_struct_ext.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "drv_sys_ext.h"
#include "hi_reg_common.h"
#include "drv_reg_ext.h"

#include "drv_sys_ioctl.h"

#define DIV_NS_TO_MS  1000000
#define HI_OTP_BASE_ADDR 0x10180000

HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion)
{
    HI_U32  ChipId;
    HI_CHIP_TYPE_E      ChipType    = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E   ChipVersion = HI_CHIP_VERSION_BUTT;

      /* penChipType or penChipVersion maybe NULL, but not both */
    if (HI_NULL == penChipType && HI_NULL == penChipVersion)
    {
        HI_ERR_SYS("invalid input parameter\n");
        return;
    }
    
#if defined(CHIP_TYPE_hi3716cv200es) || defined(CHIP_TYPE_hi3716cv200)
    ChipId = HI_DRV_SYS_READ_REG(SYS_REG_SYSID, 0);
    if (0x19400200 == ChipId)
    {
        ChipType = HI_CHIP_TYPE_HI3716CES;
        ChipVersion = HI_CHIP_VERSION_V200;
    }
	else if(0x37160200 == ChipId)
    {
        ChipType = HI_CHIP_TYPE_HI3716C;
        ChipVersion = HI_CHIP_VERSION_V200;
    }
#else
    ChipId = (0xff & HI_DRV_SYS_READ_REG(SYS_REG_SYSID0, 0));
    ChipId |= (0xff & HI_DRV_SYS_READ_REG(SYS_REG_SYSID1, 0)) << 8;
    ChipId |= (0xff & HI_DRV_SYS_READ_REG(SYS_REG_SYSID2, 0)) << 16;
    ChipId |= (0xff & HI_DRV_SYS_READ_REG(SYS_REG_SYSID3, 0)) << 24;
#if defined(CHIP_TYPE_hi3716h) \
 || defined(CHIP_TYPE_hi3716c) \
 || defined(CHIP_TYPE_hi3720)  \
 || defined(CHIP_TYPE_hi3716m)
 
    if ((ChipId & 0xffff) == 0xb010)
    {
        HI_U32 regv = 0;
        HI_U32 regChipType = 0;

        regv = HI_DRV_SYS_READ_REG(SYS_REG_BASE_ADDR_PHY1,0);
        regChipType = regv >> 14;
        regChipType &= 0x1f;
        /*
        chip version
        0000:Hi3720V100£»
        0001:Hi3716C£»
        0010:Hi3716H£»
        0011:Hi3716M£»
        other: reserve
        */
        switch(regChipType)
        {
            case 0x03:
                ChipType = HI_CHIP_TYPE_HI3716M;
                break;
            case 0x02:
                ChipType = HI_CHIP_TYPE_HI3716H;
                break;
            case 0x01:
                ChipType = HI_CHIP_TYPE_HI3716C;
                break;
            default:
                ChipType = HI_CHIP_TYPE_HI3720;
                break;
        }
        ChipVersion = HI_CHIP_VERSION_V100;
    }
    else if((ChipId & 0xffff) == 0x200)
    {
        HI_U32 regv = 0;
        HI_U32 regChipType = 0;

        regv = HI_DRV_SYS_READ_REG(SYS_REG_BASE_ADDR_PHY2,0);
        regChipType = regv >> 14;
        regChipType &= 0x1f;
        
        /*
        chip version
        00000:Hi3716L£»
        01000:Hi3716M£»
        01101:Hi3716H£»
        11110:Hi3716C£»
        other: reserve
        */
        switch(regChipType)
        {
            case 0x08:
                ChipType = HI_CHIP_TYPE_HI3716M;
                break;
            case 0x0d:
                ChipType = HI_CHIP_TYPE_HI3716H;
                break;
            case 0x1e:
                ChipType = HI_CHIP_TYPE_HI3716C;
                break;
            default:
                ChipType = HI_CHIP_TYPE_HI3720;
                break;
        }
        if(ChipId == 0x37200200)
        {
            ChipVersion = HI_CHIP_VERSION_V101;
        }
        else
        {
            ChipVersion = HI_CHIP_VERSION_V200;
        }
     }
#elif  defined(CHIP_TYPE_hi3716mv300)
    if (ChipId == 0x37160300)
    {
        ChipType = HI_CHIP_TYPE_HI3716M;
        ChipVersion = HI_CHIP_VERSION_V300;
    }
#elif  defined(CHIP_TYPE_hi3716mv310) \
     ||defined(CHIP_TYPE_hi3716mv320) \
     ||defined(CHIP_TYPE_hi3110ev500)

    if (ChipId == 0x37160310)
    {
        switch (g_pstRegPeri->PERI_SOC_FUSE_0.bits.chip_id)
        {
        	case 0x0:
            case 0x1:
             	ChipType    = HI_CHIP_TYPE_HI3716M;
                ChipVersion = HI_CHIP_VERSION_V310;
                break;
            case 0x10:
            case 0x11:
                ChipType   = HI_CHIP_TYPE_HI3716M;
                ChipVersion = HI_CHIP_VERSION_V320;
                break;
            case 0x18:
            case 0x19:
                ChipType    = HI_CHIP_TYPE_HI3110E;
                ChipVersion = HI_CHIP_VERSION_V500;
                break;
            default:
                ChipType    = HI_CHIP_TYPE_HI3716M;
                ChipVersion = HI_CHIP_VERSION_V310;
                break;
        }
    }
#elif defined(CHIP_TYPE_hi3716mv330)
    if (ChipId == 0x37160330)
    {
        ChipType    = HI_CHIP_TYPE_HI3716M;
        ChipVersion = HI_CHIP_VERSION_V330;
    }
#elif defined(CHIP_TYPE_hi3712)
    if (ChipId == 0x37120100)
    {
        ChipType = HI_CHIP_TYPE_HI3712;
        ChipVersion = HI_CHIP_VERSION_V100;
    }
#endif    
    else
    {
        ChipType = HI_CHIP_TYPE_BUTT;
        ChipVersion = HI_CHIP_VERSION_BUTT;
        HI_WARN_SYS("Get CHIP ID error :%x!\n", ChipId);
    }

    if (penChipType)
    {
        *penChipType = ChipType;
    }

    if (penChipVersion)
    {
        *penChipVersion = ChipVersion;
    }
#endif
}

/*
 * from datasheet, the value of dolby_flag meaning: 0: support; 1: not_support .
 * but we change its meaning for return parameter : 0:not support; 1:support.
 */
HI_S32 HI_DRV_SYS_GetDolbySupport(HI_U32 *pu32Support)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3716mv330) \
    ||defined(CHIP_TYPE_hi3110ev500)
    *pu32Support = !(g_pstRegPeri->CHIPSET_INFO.bits.dolby_flag);
#else
    *pu32Support = 0;
#endif

    return HI_SUCCESS;
}

/*
 * 1:support; 0:not_support
 */
HI_S32 HI_DRV_SYS_GetDtsSupport(HI_U32 *pu32Support)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3716mv330) \
    ||defined(CHIP_TYPE_hi3110ev500)
    *pu32Support = g_pstRegPeri->CHIPSET_INFO.bits.dts_flag;
#else
    *pu32Support = 0;
#endif

    return HI_SUCCESS;
}

/*
 * 1:support; 0:not_support
 */
HI_S32 HI_DRV_SYS_GetRoviSupport(HI_U32 *pu32Support)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3110ev500)
    *pu32Support = g_pstRegPeri->PERI_SOC_FUSE_0.bits.mven;
#else
    *pu32Support = 0;
#endif

    return HI_SUCCESS;
}

/*
 * 0: not_advca_support; 1: advca_support
 */
HI_S32 HI_DRV_SYS_GetAdvcaSupport(HI_U32 *pu32Support)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3716mv330) \
    ||defined(CHIP_TYPE_hi3110ev500)

    HI_U32 AdvcaFlag;

    HI_REG_READ(IO_ADDRESS(HI_ADVCA_REG), AdvcaFlag);

    if (HI_CHIP_ADVCA == AdvcaFlag)
    {
        *pu32Support = 1;
    }
    else if (HI_CHIP_NON_ADVCA == AdvcaFlag)
    {
        *pu32Support = 0;
    }
    else
    {
        HI_ERR_SYS("invalid advca flag\n");
        return HI_FAILURE;
    }
#else
       *pu32Support = 0;
#endif

    return HI_SUCCESS;
}

HI_S32 HI_DRV_SYS_GetMemConfig(HI_SYS_MEM_CONFIG_S *pstConfig)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3716mv330) \
    ||defined(CHIP_TYPE_hi3110ev500)

    HI_U32      Ret;

    extern int get_mem_size(unsigned int *size, int flags);
    if (HI_NULL != pstConfig)
    {
        Ret = get_mem_size(&(pstConfig->u32TotalSize), HIKAPI_GET_RAM_SIZE);
#ifdef CONFIG_CMA
        Ret |= get_mem_size(&(pstConfig->u32MMZSize), HIKAPI_GET_CMA_SIZE);
#else
		Ret |= get_mem_size(&(pstConfig->u32MMZSize), HIKAPI_GET_MMZ_SIZE);
#endif
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_SYS("get_mem_size ERR, Ret=%#x\n", Ret);
            return HI_FAILURE;
        }
    }
    else
    {
        HI_ERR_SYS("invalid DDR conf ptr\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
#else
    return HI_FAILURE;
#endif
}

HI_S32 HI_DRV_SYS_GetTimeStampMs(HI_U32 *pu32TimeMs)
{
    HI_U64 u64TimeNow;

    if (HI_NULL == pu32TimeMs)
    {
        HI_ERR_SYS("null pointer error\n");
        return HI_FAILURE;
    }

    u64TimeNow = sched_clock();

    do_div(u64TimeNow, DIV_NS_TO_MS);

    *pu32TimeMs = (HI_U32)u64TimeNow;

    return HI_SUCCESS;
}

HI_S32 HI_DRV_SYS_GetDieID(HI_U64 *pu64dieid)
{
#if   defined(CHIP_TYPE_hi3716mv310) \
    ||defined(CHIP_TYPE_hi3716mv320) \
    ||defined(CHIP_TYPE_hi3716mv330) \
    ||defined(CHIP_TYPE_hi3110ev500)
    
    HI_U64 id0 = 0;
    HI_U64 id0_0 = 0, id0_1 = 0;
    HI_U64 id1 = 0;
    HI_U64 id2 = 0;
    HI_LENGTH_T timeend = 0;
    HI_S64 timeout = 0;
    HI_U32 crgValueOri = 0;

    if (HI_NULL == pu64dieid)
    {
        HI_ERR_SYS("invalid die ID ptr\n");
        return HI_FAILURE;
    }

    crgValueOri = HI_REG_ReadBits(HI_CRG_BASE_ADDR + 0xc0, 0xffffffff);
#ifdef CHIP_TYPE_hi3716mv330
    HI_REG_WRITE(IO_ADDRESS(HI_CRG_BASE_ADDR + 0xc0), crgValueOri | 0x8);//reset otp 
    HI_REG_WRITE(IO_ADDRESS(HI_CRG_BASE_ADDR + 0xc0), crgValueOri & ~0x8);//resume reset otp
#else
    HI_REG_WRITE(IO_ADDRESS(HI_CRG_BASE_ADDR + 0xc0), crgValueOri | 0x400);//reset otp 
    HI_REG_WRITE(IO_ADDRESS(HI_CRG_BASE_ADDR + 0xc0), crgValueOri & ~0x400);//resume reset otp
#endif

    /** wait state and timeout after 1 second*/
    timeend = jiffies+1*HZ;

    while(!HI_REG_ReadBits(HI_OTP_BASE_ADDR + 0xc, 0x1) && (timeout=time_before(jiffies, timeend)));

    if (HI_NULL == timeout)
    {
        HI_ERR_SYS("get die ID timeout\n");
        return HI_FAILURE;
    }

    id0_0 = HI_REG_ReadBits(HI_OTP_BASE_ADDR + 0x0170, 0xfffffff0)>>4; /**bit mask is 0xfffffff0 */
    id0_1 = HI_REG_ReadBits(HI_OTP_BASE_ADDR + 0x0174, 0xff); /** bit mask is 0xff*/
    id0_1 = id0_1 << 28;
    id0 = id0_0 |id0_1;                                  /**id0 is 36 bit */
    id1 = (HI_REG_ReadBits(HI_OTP_BASE_ADDR + 0x0174, 0x1f00)  >> 8);      /**id1 is 5bit, bit mask is 0x1f00 */ 
    id2 = (HI_REG_ReadBits(HI_OTP_BASE_ADDR + 0x0174, 0x1fffe000)  >> 13);   /**id2 is 16bit, bit mask is 0x1fffe000 */
    *pu64dieid =  id0 | (id1 << 36) | (id2<< 41);               /** put id0 id1 and id2 together*/
    return HI_SUCCESS;
#else
    *pu64dieid = 0;
    return HI_SUCCESS;
#endif
}

HI_S32 HI_DRV_SYS_KInit(HI_VOID)
{
    return 0;
}

HI_VOID HI_DRV_SYS_KExit(HI_VOID)
{
    return ;
}

EXPORT_SYMBOL(HI_DRV_SYS_GetChipVersion);
EXPORT_SYMBOL(HI_DRV_SYS_GetTimeStampMs);
EXPORT_SYMBOL(HI_DRV_SYS_GetDolbySupport);
EXPORT_SYMBOL(HI_DRV_SYS_GetDtsSupport);
EXPORT_SYMBOL(HI_DRV_SYS_GetAdvcaSupport);
EXPORT_SYMBOL(HI_DRV_SYS_GetRoviSupport);
EXPORT_SYMBOL(HI_DRV_SYS_GetDieID);


