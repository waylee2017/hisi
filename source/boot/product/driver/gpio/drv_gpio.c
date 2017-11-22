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

#include "hi_boot_common.h"
#include "drv_gpio_ext.h"

#include "hi_reg.h"
#include "hi_boot_common.h"

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
#define     HI_GPIO_GROUP_NUM 6
#else
#define     HI_GPIO_GROUP_NUM          13
#endif
#define     HI_MV300_GPIO_GROUP_NUM    10
#define     HI_GPIO_BIT_NUM            8
//#define     HI_GPIO_MAX_BIT_NUM        (HI_GPIO_GROUP_NUM * HI_GPIO_BIT_NUM - 1)

#define 	HI_GPIO_SPACE_SIZE         0x1000

#define     HI_GPIO_0_ADDR             0x101e6000
#define     HI_GPIO_1_ADDR             0x101e7000
#define     HI_GPIO_2_ADDR             0x101e8000
#define     HI_GPIO_3_ADDR             0x101e9000
#define     HI_GPIO_4_ADDR             0x101ea000
#define     HI_GPIO_5_ADDR             0x101e4000
#define     HI_GPIO_6_ADDR             0x101ec000
#define     HI_GPIO_7_ADDR             0x101ed000
#define     HI_GPIO_8_ADDR             0x101ee000
#define     HI_GPIO_9_ADDR             0x101ef000
#define     HI_GPIO_10_ADDR            0x101f0000
#define     HI_GPIO_11_ADDR            0x101f1000
#define     HI_GPIO_12_ADDR            0x101f2000

#define     HI_GPIO_DIR_REG            0x400

#define     HI_GPIO_OUTPUT             1
#define	  	HI_GPIO_INPUT              0
#define     REG_USR_ADDR(RegAddr)      *((volatile HI_U32 *)(RegAddr))

HI_U32 g_GpioRegAddr[HI_GPIO_GROUP_NUM];
static HI_U8 g_u8GpioGrpNum, g_u8GpioMaxNum;

static HI_BOOL DRV_GPIO_Convert(HI_U32 u32GpioNo, HI_U32 *pu32GroupNo, HI_U32 *pu32BitNo)
{
	if (u32GpioNo >= g_u8GpioMaxNum)
    {
        return HI_FALSE;
    }

    *pu32GroupNo = u32GpioNo / HI_GPIO_BIT_NUM;
	*pu32BitNo   = u32GpioNo % HI_GPIO_BIT_NUM;
	
	return HI_TRUE;
}

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define GPIO_DEGUB(format...) 
#else
#define GPIO_DEGUB(format...)    HI_INFO_BOOT(2, format)
#endif

HI_S32 HI_DRV_GPIO_GetPin(HI_U32 u32GpioConfBaseAddr, HI_U32 offset, HI_U32* pOption)
{
	HI_U32 ConfigAddr, tmp;
	if (u32GpioConfBaseAddr < 0x10000000 )
	{
		GPIO_DEGUB("gpio_ReadPinFunc u32GpioConfBaseAddr para error !\n");
		return HI_ERR_GPIO_INVALID_PARA;
	}

	if (offset > 0x1000 )
	{
		GPIO_DEGUB("gpio_ReadPinFunc offset para error !\n");
		return HI_ERR_GPIO_INVALID_PARA;
	}

	if (NULL == pOption )
	{
		GPIO_DEGUB("gpio_ReadPinFunc pOption para is NULL !\n");
		return HI_ERR_GPIO_NULL_PTR;
	}

	ConfigAddr =  u32GpioConfBaseAddr + offset;

	HI_REG_READ(ConfigAddr, tmp);
	*pOption = tmp ;

	return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_SetPin(HI_U32 u32GpioConfBaseAddr, HI_U32 offset, HI_U32 u32Option)
{
	HI_U32 ConfigAddr;
	if (u32GpioConfBaseAddr < 0x10000000 )
	{
		GPIO_DEGUB("gpio_ReadPinFunc u32GpioConfBaseAddr para error !\n");
		return HI_ERR_GPIO_INVALID_PARA;
	}

	if (offset > 0x1000 )
	{
		GPIO_DEGUB("gpio_ReadPinFunc offset para error !\n");
		return HI_ERR_GPIO_INVALID_PARA;
	}

	if (u32Option > 7 )
	{
		GPIO_DEGUB("gpio_ReadPinFunc u32Option para error !\n");
		return HI_ERR_GPIO_INVALID_PARA;
	}

	ConfigAddr =  u32GpioConfBaseAddr + offset;
	
	HI_REG_WRITE(ConfigAddr, u32Option);

	return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_SetDirBit(HI_U32 u32GpioNo, HI_U32 u32DirBit)
{
    HI_S32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
	HI_U32 u32GroupNo;
	HI_U32 u32BitX;

    if (HI_FALSE == DRV_GPIO_Convert(u32GpioNo, &u32GroupNo, &u32BitX))
    {
		return HI_ERR_GPIO_INVALID_PARA;
	}
#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
	if (u32GroupNo==4)
		return HI_ERR_GPIO_INVALID_PARA;
#endif
    if ((u32DirBit != HI_TRUE)
        && (u32DirBit != HI_FALSE)
    )
    {
        GPIO_DEGUB("para bInput is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }

    GpioUsrAddr = g_GpioRegAddr[u32GroupNo];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    if (!u32DirBit)   /*0 output */
    {
        GpioDirtValue |= (HI_GPIO_OUTPUT << u32BitX);
        REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG) = GpioDirtValue;
	
    }
    else /*1 input */
    {
        GpioDirtValue &= (~(1 << u32BitX));
        REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG) = GpioDirtValue;

    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_GetDirBit(HI_U32 u32GpioNo, HI_U32* pu32DirBit)
{
    HI_S32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
	HI_U32 u32GroupNo;
	HI_U32 u32BitX;

    if (HI_FALSE == DRV_GPIO_Convert(u32GpioNo, &u32GroupNo, &u32BitX))
    {
		return HI_ERR_GPIO_INVALID_PARA;
	}
#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
	if (u32GroupNo==4)
		return HI_ERR_GPIO_INVALID_PARA;
#endif


    if (!pu32DirBit)
    {
        GPIO_DEGUB("para pu32DirBit is null.\n");
        return HI_ERR_GPIO_NULL_PTR;
    }


    GpioUsrAddr = g_GpioRegAddr[u32GroupNo];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << u32BitX);

    if (GpioDirtValue == 0)
    {
        *pu32DirBit = HI_TRUE;		/*input*/
    }
    else
    {
        *pu32DirBit = HI_FALSE;		/*output*/
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_WriteBit(HI_U32 u32GpioNo, HI_U32 u32BitValue)
{
    HI_S32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
	HI_U32 u32GroupNo;
	HI_U32 u32BitX;

    if (HI_FALSE == DRV_GPIO_Convert(u32GpioNo, &u32GroupNo, &u32BitX))
    {
		return HI_ERR_GPIO_INVALID_PARA;
	}
#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
	if (u32GroupNo==4)
		return HI_ERR_GPIO_INVALID_PARA;
#endif

    if ((u32BitValue != HI_TRUE)
        && (u32BitValue != HI_FALSE)
    )
    {
        GPIO_DEGUB("para u32BitValue is invalid.\n");
        return HI_ERR_GPIO_INVALID_PARA;
    }


    GpioUsrAddr = g_GpioRegAddr[u32GroupNo];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << u32BitX);

    GpioDirtValue = GpioDirtValue >> u32BitX;

    if (GpioDirtValue != HI_GPIO_OUTPUT)
    {
        GPIO_DEGUB("GPIO Direction is input, write can not operate.\n");
        return HI_ERR_GPIO_INVALID_OPT;
    }

    if (u32BitValue)
    {
        REG_USR_ADDR(GpioUsrAddr + (4 << u32BitX)) = 1 << u32BitX;
    }
    else
    {
        REG_USR_ADDR(GpioUsrAddr + (4 << u32BitX)) = 0;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_ReadBit(HI_U32 u32GpioNo, HI_U32* pu32BitValue)
{
    HI_S32 GpioDirtValue;
    HI_U32 GpioUsrAddr;
	HI_U32 u32GroupNo;
	HI_U32 u32BitX;

    if (HI_FALSE == DRV_GPIO_Convert(u32GpioNo, &u32GroupNo, &u32BitX))
    {
		return HI_ERR_GPIO_INVALID_PARA;
	}
#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
	if (u32GroupNo==4)
		return HI_ERR_GPIO_INVALID_PARA;
#endif

    if (!pu32BitValue)
    {
        GPIO_DEGUB("para pu32BitValue is null.\n");
        return HI_ERR_GPIO_NULL_PTR;
    }

    GpioUsrAddr = g_GpioRegAddr[u32GroupNo];

    GpioDirtValue = REG_USR_ADDR(GpioUsrAddr + HI_GPIO_DIR_REG);

    GpioDirtValue &= (1 << u32BitX);

    if (GpioDirtValue != HI_GPIO_INPUT)
    {
        GPIO_DEGUB("GPIO Direction is output,read can not operate\n");
        return HI_ERR_GPIO_INVALID_OPT;
    }

    *pu32BitValue = REG_USR_ADDR(GpioUsrAddr + (4 << u32BitX)) >> u32BitX;

    return HI_SUCCESS;
}

HI_S32 HI_DRV_GPIO_Init(void)
{
	HI_CHIP_TYPE_E enChipType=HI_CHIP_TYPE_BUTT;
	HI_CHIP_VERSION_E enChipVersion=HI_CHIP_VERSION_BUTT;
	
	HI_DRV_SYS_GetChipVersion( &enChipType, &enChipVersion );
	if (HI_CHIP_TYPE_HI3716M == enChipType && HI_CHIP_VERSION_V300 == enChipVersion)
    {
        g_u8GpioGrpNum = HI_MV300_GPIO_GROUP_NUM; 
    }
    else
    {
        g_u8GpioGrpNum = HI_GPIO_GROUP_NUM;
    }
    
    g_u8GpioMaxNum = g_u8GpioGrpNum * HI_GPIO_BIT_NUM;

    g_GpioRegAddr[0] = (HI_GPIO_0_ADDR);
    g_GpioRegAddr[1] = (HI_GPIO_1_ADDR);
    g_GpioRegAddr[2] = (HI_GPIO_2_ADDR);
    g_GpioRegAddr[3] = (HI_GPIO_3_ADDR);
    g_GpioRegAddr[4] = (HI_GPIO_4_ADDR);
    g_GpioRegAddr[5] = (HI_GPIO_5_ADDR);

    //GPIO_DEGUB("init hi_gpio success.\t\n");
    return HI_SUCCESS;
}



