/***********************************************************************************
*              Copyright 2004 - 2011, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: hi_gpio.h
* Description:use gpio opreate
*
* History:
* Version   Date                Author       DefectNum    Description
* 0.01    2011-3-17      chenqiang      NULL           Create this file.
***********************************************************************************/
#ifndef __DRV_GPIO_EXT_H__
#define __DRV_GPIO_EXT_H__

#include "hi_type.h"

#define HI_ERR_GPIO_NOT_INIT                        (HI_S32)(0x80470003)
#define HI_ERR_GPIO_INVALID_PARA                    (HI_S32)(0x80470004)
#define HI_ERR_GPIO_NULL_PTR                        (HI_S32)(0x80470005)
#define HI_ERR_GPIO_INVALID_OPT                     (HI_S32)(0x80470006)


HI_S32 HI_DRV_GPIO_GetPin(HI_U32 u32GpioConfBaseAddr, HI_U32 offset, HI_U32* pOption);
HI_S32 HI_DRV_GPIO_SetPin(HI_U32 u32GpioConfBaseAddr, HI_U32 offset, HI_U32 u32Option);
HI_S32 HI_DRV_GPIO_SetDirBit(HI_U32 u32GpioNo, HI_U32 u32DirBit);
HI_S32 HI_DRV_GPIO_GetDirBit(HI_U32 u32GpioNo, HI_U32* pu32DirBit );
HI_S32 HI_DRV_GPIO_ReadBit(HI_U32 u32GpioNo, HI_U32* pu32BitValue);
HI_S32 HI_DRV_GPIO_WriteBit(HI_U32 u32GpioNo, HI_U32 u32BitValue);
HI_S32 HI_DRV_GPIO_Init(void);



#endif
