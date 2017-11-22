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

#ifndef __DRV_SYS_EXT_H__
#define __DRV_SYS_EXT_H__

/* add include here */
#include <linux/version.h>

#include "hi_type.h"
#include "hi_common.h"
#include "drv_dev_ext.h"


#ifdef __cplusplus
extern "C" {
#endif

/** @addtogroup H_SYS */
/** @{ */

/***************************** Macro Definition ******************************/
#define MAX_MPP_MODULES HI_ID_BUTT

#if defined(CHIP_TYPE_hi3716cv200) || defined(CHIP_TYPE_hi3716cv200es)
#define SYS_REG_SYSID           IO_ADDRESS(0xf8000ee0)
#else
#define SYS_REG_SYSID0          IO_ADDRESS(0x101e0ee0)
#define SYS_REG_SYSID1          (SYS_REG_SYSID0 + 0x04)
#define SYS_REG_SYSID2          (SYS_REG_SYSID0 + 0x08)
#define SYS_REG_SYSID3          (SYS_REG_SYSID0 + 0x0c)
#define SYS_REG_BASE_ADDR_PHY1  IO_ADDRESS(0x101f5000)
#define SYS_REG_BASE_ADDR_PHY2  IO_ADDRESS(0x10200000)
#endif

#define HI_DRV_SYS_WRITE_REG(base, offset, value) \
    (*(volatile HI_U32   *)((HI_U32)(base) + (offset)) = (value))
#define HI_DRV_SYS_READ_REG(base, offset) \
    (*(volatile HI_U32   *)((HI_U32)(base) + (offset)))


#if LINUX_VERSION_CODE > KERNEL_VERSION(2,6,14)

#ifndef  SA_INTERRUPT
#define  SA_INTERRUPT IRQF_DISABLED
#endif /* ! SA_INTERRUPT */

#ifndef  SA_SHIRQ
#define  SA_SHIRQ     IRQF_SHARED
#endif /* ! SA_SHIRQ */

#endif /* ! LINUX_VERSION_CODE */

/******************************* API declaration *****************************/
extern HI_S32  HI_DRV_SYS_Init(HI_VOID);
extern HI_VOID HI_DRV_SYS_Exit(HI_VOID);

extern HI_S32  HI_DRV_SYS_KInit(HI_VOID);
extern HI_VOID HI_DRV_SYS_KExit(HI_VOID);

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);
extern HI_S32  HI_DRV_SYS_GetTimeStampMs(HI_U32 *pu32TimeMs);

extern HI_S32 HI_DRV_SYS_GetDolbySupport(HI_U32 *pu32Support);
extern HI_S32 HI_DRV_SYS_GetDtsSupport(HI_U32 *pu32Support);
extern HI_S32 HI_DRV_SYS_GetRoviSupport(HI_U32 *pu32Support);
extern HI_S32 HI_DRV_SYS_GetAdvcaSupport(HI_U32 *pu32Support);
extern HI_S32 HI_DRV_SYS_GetMemConfig(HI_SYS_MEM_CONFIG_S *pstConfig);
extern HI_S32 HI_DRV_SYS_GetDieID(HI_U64 *pu64dieid);

/** @} */


#ifdef __cplusplus
}
#endif

#endif /* __DRV_SYS_EXT_H__ */

