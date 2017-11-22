#ifndef  __HI_DRV_PMOC_H__
#define  __HI_DRV_PMOC_H__

#include "hi_unf_pmoc.h"
#include "hi_debug.h"

/* add register macro */

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
#define C51_BASE             0x600b0000
#define C51_SIZE             0x8000 /*32k*/
#define C51_DATA             0x7000 /*28k*/
#define MCU_CODE_MAXSIZE     0x5800 /*22k*/
#elif defined(CHIP_TYPE_hi3716mv330)
#define C51_BASE             0x0
#define C51_SIZE             0x4000
#define C51_DATA             0x3e00
#define MCU_CODE_MAXSIZE     0x3000
#else
#error YOU MUST DEFINE  CHIP_TYPE!
#endif

#define LOW_POWER_CTRL       0x101e0040
#define SRST_REQ_CTRL        0x101e0048
//#define SC_GEN6              0x101e0098
//#define SC_GEN7              0x101e009c
//#define SC_GEN10             0x101e00a8
#define ETH_FW_FLAG          0x1211beef

#define HI_FATAL_PM(fmt...) HI_FATAL_PRINT(HI_ID_PM, fmt)

#define HI_ERR_PM(fmt...)   HI_ERR_PRINT(HI_ID_PM, fmt)

#define HI_WARN_PM(fmt...)  HI_WARN_PRINT(HI_ID_PM, fmt)

#define HI_INFO_PM(fmt...)  HI_INFO_PRINT(HI_ID_PM, fmt)

HI_S32 HI_DRV_PMOC_Init(HI_VOID);
HI_S32 HI_DRV_PMOC_DeInit(HI_VOID);
HI_S32 HI_DRV_PMOC_SwitchSystemMode(HI_UNF_PMOC_MODE_E enSystemMode, HI_UNF_PMOC_ACTUAL_WKUP_E * penWakeUpStatus);
HI_S32 HI_DRV_PMOC_SetWakeUpAttr(HI_UNF_PMOC_WKUP_S_PTR pstAttr);
HI_S32 HI_DRV_PMOC_SetStandbyDispMode(HI_UNF_PMOC_STANDBY_MODE_S_PTR pstStandbyMode);
HI_S32 HI_DRV_PMOC_SetScene(HI_UNF_PMOC_SCENE_E eScene);
HI_S32 HI_DRV_PMOC_SetDevType(HI_UNF_PMOC_DEV_TYPE_S_PTR pdevType);

#endif  /*  __HI_DRV_PMOC_H__ */

