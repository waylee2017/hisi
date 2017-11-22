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
#ifndef __DRV_TIMER_COMMON_H__
#define __DRV_TIMER_COMMON_H__

#include "hal_aiao_common.h"

#define  TIMER_MAX_TOTAL_NUM          (2)
#define  TIMER_CHNID_MASK             0xffff

#define TIMER_INTERRUPT_PERIOD_DF  (5)
#define TIMER_INTERRUPT_CONFIG_DF (HI_UNF_SAMPLE_RATE_48K/1000*TIMER_INTERRUPT_PERIOD_DF)

typedef struct
{
    AIAO_TIMER_ID_E enTimerID;
    HI_U32          u32Config;
    AIAO_IfTimerAttr_S stIfAttr;
} TIMER_CHANNEL_STATE_S;

typedef struct hiTIMER_GLOBAL_RESOURCE_S
{                            
    TIMER_CHANNEL_STATE_S       *pstTIMER_ATTR_S[TIMER_MAX_TOTAL_NUM];

}TIMER_GLOBAL_RESOURCE_S;

#endif
