/*****************************************************************************
File Name   : apptimer.h

Description : API Interfaces for the STUART driver.

Copyright (C) 2001 STMicroelectronics

Reference   :

ST API Definition "UART Driver API" DVD-API-22 version 1.14.
*****************************************************************************/

/* Define to prevent recursive inclusion */
#ifndef __MAIN_CTR_TIMER_H
#define __MAIN_CTR_TIMER_H

/* Includes --------------------------------------------------------------- */

#include "mm_common.h"

#ifdef __cplusplus
extern "C" {
#endif

#define m_MaxParaLen 4
#define m_MaxDbsTimer 100
#define m_MaxUITimer 40


#define m_TimerFree 0
#define m_TimerUesd 1

#define m_TimerNotTrigger 0
#define m_TimerTrigger 1

#define m_TimerInvalidHdl 0xff

enum {
	m_noRepeat,
	m_Repeat,
	m_Today,
	m_EveryDay,
	m_EveryWeek,
	m_EveryMonth,
	m_EveryYear
};

typedef enum
{
	TIME_ZONE_M11_30 = 0,
	TIME_ZONE_M11_00,
	TIME_ZONE_M10_30,
	TIME_ZONE_M10_00,
	TIME_ZONE_M09_30,
	TIME_ZONE_M09_00,
	TIME_ZONE_M08_30,
	TIME_ZONE_M08_00,
	TIME_ZONE_M07_30,
	TIME_ZONE_M07_00,
	TIME_ZONE_M06_30,
	TIME_ZONE_M06_00,
	TIME_ZONE_M05_30,
	TIME_ZONE_M05_00,
	TIME_ZONE_M04_30,
	TIME_ZONE_M04_00,
	TIME_ZONE_M03_30,
	TIME_ZONE_M03_00,
	TIME_ZONE_M02_30,
	TIME_ZONE_M02_00,
	TIME_ZONE_M01_30,
	TIME_ZONE_M01_00,
	TIME_ZONE_M00_30,
	TIME_ZONE_00_00,
	TIME_ZONE_A00_30,
	TIME_ZONE_A01_00,
	TIME_ZONE_A01_30,
	TIME_ZONE_A02_00,
	TIME_ZONE_A02_30,
	TIME_ZONE_A03_00,
	TIME_ZONE_A03_30,
	TIME_ZONE_A04_00,
	TIME_ZONE_A04_30,
	TIME_ZONE_A05_00,
	TIME_ZONE_A05_30,
	TIME_ZONE_A06_00,
	TIME_ZONE_A06_30,
	TIME_ZONE_A07_00,
	TIME_ZONE_A07_30,
	TIME_ZONE_A08_00,
	TIME_ZONE_A08_30,
	TIME_ZONE_A09_00,
	TIME_ZONE_A09_30,
	TIME_ZONE_A10_00,
	TIME_ZONE_A10_30,
	TIME_ZONE_A11_00,
	TIME_ZONE_A11_30,
	TIME_ZONE_A12_00,
}TIME_ZONE;

typedef MBT_VOID (*Timer_TriggerNotifyCall)(MBT_U32 *pu32Para);

extern MBT_U8 TMF_SetDbsTimer(Timer_TriggerNotifyCall pNotifyCall, MBT_U32 * pu32Para, MBT_U32 u32WaitMilSec, MBT_U8 u8RepeatMode);
extern MBT_U8 TMF_SetUITimer(Timer_TriggerNotifyCall pNotifyCall,MBT_U32 *pu32Para,TIMER_M *pstTimer,MBT_U8 u8RepeatMode);
extern MBT_VOID TMF_CleanDbsTimerNotifyCall(Timer_TriggerNotifyCall pNotifyCall);

extern MBT_S32 TMF_CompareThe2Timers(TIMER_M stTimer1, TIMER_M stTimer2);
extern MBT_S32 TMF_GetTotalDays( TIMER_M stSys);

extern MBT_VOID TMF_TimeAdjustHalfHourPlus(TIMER_M *stTimer);
extern MBT_VOID TMF_TimeAdjustHalfHourMinus(TIMER_M *stTimer);
extern MBT_VOID TMF_TimeAdjustDatePlus(TIMER_M *stTimer);
extern MBT_VOID TMF_TimeAdjustDateMinus(TIMER_M *stTimer);
extern MBT_VOID TMF_CleanDbsTimer(MBT_U8 u8TimerHandle);
extern MBT_VOID TMF_CleanAllDbsTimer(MBT_VOID);
extern MBT_VOID TMF_CleanUITimer(MBT_U8 u8TimerHandle);
extern MBT_VOID TMF_CleanAllUITimer(MBT_VOID);
extern MBT_VOID TMF_GetSysTime(TIMER_M *pstTimer);
extern MBT_VOID TMF_SetSysTime(TIMER_M *pstTimer);
extern MMT_STB_ErrorCode_E  TMF_TimerInit(MBT_VOID(* pSecTickCall)(MBT_VOID));
extern MBT_BOOL TMF_LeapYear(MBT_S32 year);


#ifdef __cplusplus
}
#endif

#endif /* __MAIN_CTR_TIMER_H */

/* End of stuart.h */

