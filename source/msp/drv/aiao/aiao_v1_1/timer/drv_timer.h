/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
File Name     : drv_timer.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2013/03/09
Last Modified :
Description   : aiao
Function List :
History       :
* main\1    2012-03-09       init.
******************************************************************************/
#ifndef __HI__AIAO_TIMER_H__
#define __HI__AIAO_TIMER_H__

#include "hi_type.h"
#include "drv_timer_private.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
HI_S32 HI_DRV_Timer_GetDefParam(AIAO_TIMER_ID_E enTimerID,AIAO_TIMER_Attr_S *pstParam);
HI_S32 HI_DRV_Timer_Create(HI_HANDLE *phHandle,AIAO_TimerIsrFunc *pFunc,void * substream);
HI_S32 HI_DRV_Timer_Destroy(HI_HANDLE handle);
HI_S32 HI_DRV_Timer_SetAttr(HI_HANDLE handle,HI_U32 u32Config,AIAO_SAMPLE_RATE_E enRate);

HI_S32 HI_DRV_Timer_SetEnable(HI_HANDLE handle,HI_BOOL bEnalbe);



#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */


#endif
