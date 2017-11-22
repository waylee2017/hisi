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
#ifndef __DRV_STAT_EXT_H__
#define __DRV_STAT_EXT_H__

#include "hi_type.h"


/** @defgroup KERNEL_MODE In kernel mode 
    @brief The following interfaces should be only called in kernel mode. */

/** @{ */

/** @defgroup H_DEV Device operation
    @brief Devices operation interfaces for other CBB in kernel mode */
/** @defgroup H_FILE File opertation 
    @brief Simple file operation interfaces in kernel mode */

/** @defgroup H_MEM Memory operation 
    @brief Memory allocate interfaces in kernel mode */
    
/** @defgroup H_MMZ MMZ operation 
    @brief MMZ memory interfaces in kernel mode */

/** @defgroup H_MODULE Module register
    @brief Module register interfaces in kernel mode */
    
/** @defgroup H_PROC Proc operation
    @brief Proc operation interfaces in kernel mode */

/** @defgroup H_SYS System operation
    @brief System operation interfaces in kernel mode */

/** @} */



#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

typedef enum
{
    STAT_ISR_AUDIO = 0x0,
    STAT_ISR_VIDEO,
    STAT_ISR_DEMUX,
    STAT_ISR_SYNC,
    STAT_ISR_VO,
    STAT_ISR_TDE,

    STAT_ISR_BUTT
}STAT_ISR_E;

typedef enum tagSTAT_EVENT
{
    STAT_EVENT_KEYIN,
    STAT_EVENT_KEYOUT,
    STAT_EVENT_ASTOP,
    STAT_EVENT_VSTOP,
    STAT_EVENT_CONNECT,
    STAT_EVENT_LOCKED,
    STAT_EVENT_ASTART,
    STAT_EVENT_VSTART,
    STAT_EVENT_CWSET,
    STAT_EVENT_STREAMIN,
    STAT_EVENT_ISTREAMGET,
    STAT_EVENT_IFRAMEOUT,
    STAT_EVENT_PRESYNC,
    STAT_EVENT_BUFREADY,
    STAT_EVENT_FRAMEDISP,
    STAT_EVENT_IFRAMEINTER,
    STAT_EVENT_BUTT
    
}STAT_EVENT_E;


typedef HI_VOID (*STAT_Event_Fun)(STAT_EVENT_E, HI_U32);

HI_S32  HI_DRV_STAT_EventFunc_Register(HI_VOID* pFunc);
HI_VOID HI_DRV_STAT_EventFunc_UnRegister(HI_VOID);
HI_S32  HI_DRV_STAT_KInit(HI_VOID);
HI_VOID HI_DRV_STAT_KExit(HI_VOID);

HI_S32  HI_DRV_STAT_Init(HI_VOID);
HI_VOID HI_DRV_STAT_Exit(HI_VOID);

/*interrupt cost time in kernel-state*/
/*CNcomment:内核态中断耗时统计*/
#if defined(HI_STAT_ISR_SUPPORTED)
HI_VOID HI_DRV_STAT_IsrReset(HI_VOID);
HI_VOID HI_DRV_STAT_IsrEnable(HI_VOID);
HI_VOID HI_DRV_STAT_IsrDisable(HI_VOID);

HI_VOID HI_DRV_STAT_IsrBegin(STAT_ISR_E isr);
HI_VOID HI_DRV_STAT_IsrEnd(STAT_ISR_E isr);
#endif

HI_VOID HI_DRV_STAT_Event(STAT_EVENT_E enEvent, HI_U32 Value);
HI_U32  HI_DRV_STAT_GetTick(HI_VOID);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


#endif /* __CMPI_STAT_H__ */

