#include <string.h>
#include "apptimer.h"
#include "appblast.h"
#include "ui_api.h"

#define m_dbsStartTimer_Step  200

typedef struct _dbs_timer_
{
	MBT_U32	u32Para[m_MaxParaLen];	
	MBT_U8	u8RepeatMode;	
	MBT_U8	u8Used;	
	MBT_U32	u32WaitMilSec;	
	MBT_U32  u32TimePass;
	Timer_TriggerNotifyCall pNotifyCall;	
} DBS_TIMER;



typedef struct _ui_timer_
{
	TIMER_M 	stTimer;
	MBT_U32	u32Para[m_MaxParaLen];	
	MBT_U8	u8Used;	
	MBT_U8	u8RepeatMode;	
	MBT_U8	u8Trigger;	
	MBT_U8	u8Reserve;	
	Timer_TriggerNotifyCall pNotifyCall;	
} UI_TIMER;

//#define APPTIMER_DEBUG(x)   MLMF_Print x
#define APPTIMER_DEBUG(x) 

static MBT_U8 tmv_u8DbsWorkNum = 0;
static MBT_U8 tmv_u8UIWorkNum = 0;
static MBT_U8 tmv_u8DbsWorkTimerIndex[m_MaxDbsTimer];
static MBT_U8 tmv_u8UIWorkTimerIndex[m_MaxUITimer];

static DBS_TIMER tmv_pDbsTimer[m_MaxDbsTimer];
static UI_TIMER tmv_pUITimer[m_MaxUITimer];
static TIMER_M  usiv_stSystemtime = {
    .durationhour = 0,
    .durationMinute = 0,
    .u16ServiceID = 0,
    .uTimerProgramNo = 0,
    .u32UtcTimeSecond = 0,
    .year = 0,
    .dateofWeek = 0,
    .Weekday = 0,
    .month = 1,
    .date = 1,
    .hour = 0,
    .minute = 0,
    .second = 0,
    .uTimeZone = TIME_ZONE_00_00,
};
static  Timer_TriggerNotifyCall pTimerNotifyCall[m_MaxDbsTimer];	
static  MBT_U32 u32TimerTrigerPara[m_MaxDbsTimer][m_MaxParaLen];	

static MBT_VOID (*tmv_pSecTickCall)(MBT_VOID)  = MM_NULL;

static MET_Sem_T semDbsTimer = MM_INVALID_HANDLE;   
static MET_Sem_T semUITimer = MM_INVALID_HANDLE;   
//static MET_Sem_T timerv_semSysTime = MM_INVALID_HANDLE;   
static MBT_U32 tmv_u32TimerStep = 200;


static MBT_VOID tmf_SetTimeStep (MBT_U32 u32Step);


#define Sem_dbsTimer_P()  MLMF_Sem_Wait(semDbsTimer,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_dbsTimer_V()  MLMF_Sem_Release(semDbsTimer)



#define Sem_uiTimer_P()  MLMF_Sem_Wait(semUITimer,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_uiTimer_V()  MLMF_Sem_Release(semUITimer)


//#define Sem_SysTime_P()  MLMF_Sem_Wait(timerv_semSysTime,MM_SYS_TIME_INIFIE)
                                                        
//#define Sem_SysTime_V()  MLMF_Sem_Release(timerv_semSysTime)

MBT_BOOL TMF_LeapYear( MBT_S32 year )
{
    MBT_BOOL bRet = MM_FALSE;
    if ((year%400==0) || ((year%100!=0) && (year%4==0)))
    {
        bRet = MM_TRUE;
    }
    return bRet ;
}

MBT_S32 TMF_GetTotalDays( TIMER_M stSys)
{
	MBT_S32 iLoop1 = 0, iAccDays = 0;

	for (iLoop1 = 1; iLoop1 < 12; iLoop1++)
	{
		switch (iLoop1)
		{
    		case 1:
    		case 3:
    		case 5:
    		case 7:
    		case 8:
    		case 10:
    		case 12:
    			iAccDays += 31;
    			break;

    		case 2:
    			if (TMF_LeapYear(stSys.year + 1900))
    			{
    				iAccDays += 29;
    			}
    			else
    			{
    				iAccDays += 28;
    			}
    			break;

    		case 4:
    		case 6:
    		case 9:
    		case 11:
    			iAccDays += 30;

    		default:
    			break;
		}
	}

	iAccDays += stSys.date; 

	return iAccDays;
}



/***************************************************************
      Name :TMF_CompareThe2Timers
      Description: compare the two timers (not compare the second)
                    
                
      Input Para.:  stTimer1 timer 1
                         stTimer2  timer 2
      Return Para.:      1    timer 1 > timer 2
                                0    timer 1 =  timer 2   (minute,not including second)
                                -1    timer 1 < timer 2
      Return value : non
      Modification:
	1.
	Date:             2006.04.24
	Author: sunzehui
	Description: Create
*****************************************************************/    

MBT_S32 TMF_CompareThe2Timers(TIMER_M stTimer1, TIMER_M stTimer2)
{
    MBT_S32 ret = 1;
    MBT_U32 iEndTime;
    MBT_U32 iCurTime;
    stTimer1.year  = stTimer1.year%100;
    stTimer2.year  = stTimer2.year%100;
    if(stTimer1.year < stTimer2.year)
    {
        ret = -1;
    }
    else if(stTimer1.year== stTimer2.year)
    {
        if(stTimer1.month < stTimer2.month)
        {
            ret = -1;
        }
        else if(stTimer1.month == stTimer2.month)
        {
            iEndTime = stTimer1.minute+stTimer1.hour*60+stTimer1.date*1440;
            iCurTime = stTimer2.minute+stTimer2.hour*60+stTimer2.date*1440;
            if(iEndTime<iCurTime)
            {
                ret = -1;
            }
            else if(iEndTime==iCurTime)
            {
                ret = 0;
            }
        }
    }
    return ret;
}


MBT_U8 TMF_SetDbsTimer(Timer_TriggerNotifyCall pNotifyCall,MBT_U32 *pu32Para,MBT_U32 u32WaitMilSec,MBT_U8 u8RepeatMode)
{
    MBT_U8 u8Ret = 0xff;
    MBT_U32 u32SmallTick = 200;
    if(0 != u32WaitMilSec)
    {
        MBT_S32 i;
        DBS_TIMER *pstTempDbsTimer;
        Sem_dbsTimer_P();
        pstTempDbsTimer = tmv_pDbsTimer;
        
        for(i = 0; i < tmv_u8DbsWorkNum; i ++)
        {
            pstTempDbsTimer = tmv_pDbsTimer + tmv_u8DbsWorkTimerIndex[i];
            if(u32SmallTick > pstTempDbsTimer->u32WaitMilSec)
            {
                u32SmallTick = pstTempDbsTimer->u32WaitMilSec;
            }
        }        
        
        pstTempDbsTimer = tmv_pDbsTimer;
        for(i = 0; i < m_MaxDbsTimer; i ++)
        {
            if(m_TimerFree == pstTempDbsTimer->u8Used)
            {
                if(pu32Para)
                {
                    memcpy(pstTempDbsTimer->u32Para,pu32Para,m_MaxParaLen*sizeof(MBT_U32));
                }
                pstTempDbsTimer->u8Used = m_TimerUesd;
                pstTempDbsTimer->u32WaitMilSec = u32WaitMilSec;
                pstTempDbsTimer->pNotifyCall = pNotifyCall;
                pstTempDbsTimer->u32TimePass = 0;
                pstTempDbsTimer->u8RepeatMode = u8RepeatMode;
                u8Ret = i;
                tmv_u8DbsWorkTimerIndex[tmv_u8DbsWorkNum] = u8Ret;
                tmv_u8DbsWorkNum ++;
                if(u32SmallTick > u32WaitMilSec)
                {
                    u32SmallTick = u32WaitMilSec;
                }
                tmf_SetTimeStep(u32SmallTick);
                break;
            }
            pstTempDbsTimer++;
        }
        Sem_dbsTimer_V();
        if(i >= m_MaxDbsTimer)
        {
            APPTIMER_DEBUG(("TMF_SetDbsTimer Faile Nofree timer\n"));
        }
    }
    //MLMF_Print("TMF_SetDbsTimer u32WaitMilSec = %d handle = %d\n",u32WaitMilSec,u8Ret);
    return u8Ret;
}

MBT_VOID TMF_CleanDbsTimer(MBT_U8 u8TimerHandle)
{
    //MLMF_Print("TMF_CleanDbsTimer u8TimerHandle = %d\n",u8TimerHandle);
    if(m_MaxDbsTimer > u8TimerHandle)
    {
        MBT_S32 i;
        MBT_U8 u8OK = 0;
        Sem_dbsTimer_P();
        for(i = 0;i < tmv_u8DbsWorkNum;i++)
        {
            if(u8TimerHandle == tmv_u8DbsWorkTimerIndex[i])
            {
                if(i < m_MaxDbsTimer-1)
                {
                    memmove(tmv_u8DbsWorkTimerIndex+i,tmv_u8DbsWorkTimerIndex+i+1,m_MaxDbsTimer - i-1);
                }
                tmv_u8DbsWorkNum--;
                u8OK = 1;
                break;
            }
        }

        
        if(0 == u8OK)
        {
            APPTIMER_DEBUG(("TMF_CleanDbsTimer Faile u8TimerHandle = %d\n",u8TimerHandle));
        }
        memset(tmv_pDbsTimer + u8TimerHandle,0,sizeof(DBS_TIMER));
        Sem_dbsTimer_V();
    }
}

MBT_VOID TMF_CleanDbsTimerNotifyCall(Timer_TriggerNotifyCall pNotifyCall)
{
    MBT_S32 i;
    Sem_dbsTimer_P();
    for(i = 0;i < tmv_u8DbsWorkNum;i++)
    {
        if(pNotifyCall == tmv_pDbsTimer[tmv_u8DbsWorkTimerIndex[i]].pNotifyCall)
        {
            if(i < m_MaxDbsTimer-1)
            {
                memmove(tmv_u8DbsWorkTimerIndex+i,tmv_u8DbsWorkTimerIndex+i+1,m_MaxDbsTimer - i-1);
            }
            tmv_u8DbsWorkNum--;
            break;
        }
    }
    memset(tmv_pDbsTimer + tmv_u8DbsWorkTimerIndex[i],0,sizeof(DBS_TIMER));
    Sem_dbsTimer_V();
}

MBT_VOID TMF_CleanAllDbsTimer(MBT_VOID)
{
	Sem_dbsTimer_P();
	memset(tmv_pDbsTimer,0,sizeof(tmv_pDbsTimer));
	tmv_u8DbsWorkNum = 0;
	Sem_dbsTimer_V();
}



static MBT_VOID tmf_DbsTimerTriger(MBT_U32 u32PassTime)
{
    MBT_S32 i;
    MBT_S32 iTrigerNum = 0;
    DBS_TIMER *pstDbsTimer;	
    //MLMF_Print("tmv_u8DbsWorkNum = %d\n",tmv_u8DbsWorkNum);
    Sem_dbsTimer_P();
    for(i = 0; i < tmv_u8DbsWorkNum; i ++)
    {
        pstDbsTimer = tmv_pDbsTimer + tmv_u8DbsWorkTimerIndex[i];
        switch(pstDbsTimer->u8RepeatMode)
        {
            case m_noRepeat:
                pstDbsTimer->u32TimePass += u32PassTime;
                //MLMF_Print("m_noRepeat %d u32TimePass %d u32WaitMilSec = %d\n",tmv_u8DbsWorkTimerIndex[i],pstDbsTimer->u32TimePass,pstDbsTimer->u32WaitMilSec);
                if(pstDbsTimer->u32TimePass >= pstDbsTimer->u32WaitMilSec)
                {
                    if(pstDbsTimer->pNotifyCall)
                    {
                        pTimerNotifyCall[iTrigerNum] = pstDbsTimer->pNotifyCall;
                        memcpy(u32TimerTrigerPara[iTrigerNum],pstDbsTimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                        memmove(tmv_u8DbsWorkTimerIndex+i,tmv_u8DbsWorkTimerIndex+i+1,m_MaxDbsTimer - i-1);
                        tmv_u8DbsWorkNum--;
                        iTrigerNum ++;
                    }
                    memset(pstDbsTimer,0,sizeof(DBS_TIMER));
                }
                break;
            case m_Repeat:
                pstDbsTimer->u32TimePass += u32PassTime;
                //MLMF_Print("m_Repeat %d u32TimePass %d u32WaitMilSec = %d\n",tmv_u8DbsWorkTimerIndex[i],pstDbsTimer->u32TimePass,pstDbsTimer->u32WaitMilSec);
                if(pstDbsTimer->u32TimePass >= pstDbsTimer->u32WaitMilSec)
                {
                    if(pstDbsTimer->pNotifyCall)
                    {
                        pTimerNotifyCall[iTrigerNum] = pstDbsTimer->pNotifyCall;
                        memcpy(u32TimerTrigerPara[iTrigerNum],pstDbsTimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                        iTrigerNum ++;
                    }
                    pstDbsTimer->u32TimePass = 0;
                }
                break;
            case m_EveryDay:
                break;
            case m_EveryWeek:
                break;
            case m_EveryMonth:
                break;
            case m_EveryYear:
                break;
        }
    }
    Sem_dbsTimer_V();	

    for(i = 0; i < iTrigerNum; i ++)
    {
        pTimerNotifyCall[i](u32TimerTrigerPara[i]);
    }
}


MBT_U8 TMF_SetUITimer(Timer_TriggerNotifyCall pNotifyCall,MBT_U32 *pu32Para,TIMER_M *pstTimer,MBT_U8 u8RepeatMode)
{
	MBT_S32 i;
	MBT_U8 u8Ret = 0xff;
	TIMER_M *pstTempTime;
	UI_TIMER *pstUITimer;
	Sem_uiTimer_P();
	pstUITimer = tmv_pUITimer;
	for(i = 0; i < m_MaxUITimer; i ++)
	{
		if(m_TimerUesd == pstUITimer->u8Used
			&&u8RepeatMode == pstUITimer->u8RepeatMode)
		{
			pstTempTime = &(pstUITimer->stTimer);
			switch(u8RepeatMode)
			{
				case m_noRepeat:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute)
						&&(pstTempTime->date == pstTimer->date)
						&&(pstTempTime->month==pstTimer->month)
						&&(pstTempTime->year==pstTimer->year))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}

					break;
				case m_Repeat:
					break;
					
				case m_Today:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}

					break;
					
				case m_EveryDay:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}
					break;
					
				case m_EveryWeek:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute)
						&&(pstTempTime->Weekday==pstTimer->Weekday))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}
					break;
					
				case m_EveryMonth:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute)
						&&(pstTempTime->date == pstTimer->date))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}
					break;
					
				case m_EveryYear:
					if((pstTempTime->hour==pstTimer->hour)
						&&(pstTempTime->minute==pstTimer->minute)
						&&(pstTempTime->date == pstTimer->date)
						&&(pstTempTime->month==pstTimer->month))
					{
						u8Ret = i;
						i = m_MaxUITimer;
					}
					break;
			}
		}
		pstUITimer++;
	}

	if(0xff == u8Ret)
	{
		pstUITimer = tmv_pUITimer;
		for(i = 0; i < m_MaxUITimer; i ++)
		{
			if(m_TimerFree == pstUITimer->u8Used)
			{
				if(pu32Para)
				{
					memcpy(pstUITimer->u32Para,pu32Para,m_MaxParaLen*sizeof(MBT_U32));
				}
				pstUITimer->u8Used = m_TimerUesd;
				pstUITimer->stTimer = *pstTimer;
				pstUITimer->pNotifyCall = pNotifyCall;
				pstUITimer->u8RepeatMode = u8RepeatMode;
				u8Ret = i;
                tmv_u8UIWorkTimerIndex[tmv_u8UIWorkNum] = u8Ret;
                tmv_u8UIWorkNum ++;
				break;
			}
			pstUITimer++;
		}
	}
	Sem_uiTimer_V();

	return u8Ret;
}

MBT_VOID TMF_CleanUITimer(MBT_U8 u8TimerHandle)
{
    if(m_MaxUITimer > u8TimerHandle)
    {
        MBT_S32 i;
        Sem_uiTimer_P();
        for(i = 0;i < tmv_u8UIWorkNum;i++)
        {
            if(u8TimerHandle == tmv_u8UIWorkTimerIndex[i])
            {
                memmove(tmv_u8UIWorkTimerIndex+i,tmv_u8UIWorkTimerIndex+i+1,m_MaxUITimer - i-1);
                tmv_u8UIWorkNum--;
                break;
            }
        }
        memset(tmv_pUITimer + u8TimerHandle,0,sizeof(UI_TIMER));
        Sem_uiTimer_V();
    }
}

MBT_VOID TMF_CleanAllUITimer(MBT_VOID)
{
	Sem_uiTimer_P();
	memset(tmv_pUITimer,0,sizeof(tmv_pUITimer));
	tmv_u8UIWorkNum = 0;
	Sem_uiTimer_V();
}


static MBT_VOID tmf_TrigerUITimer(TIMER_M*  pstCurTime)
{
	MBT_S32 i;
	MBT_S32 iTrigerNum = 0;
	TIMER_M*  pstTempTime;
	UI_TIMER *pstUITimer;

	Sem_uiTimer_P();
	for(i = 0; i < tmv_u8UIWorkNum; i ++)
	{
        pstUITimer = tmv_pUITimer + tmv_u8UIWorkTimerIndex[i];
		pstTempTime = &(pstUITimer->stTimer);
		switch(pstUITimer->u8RepeatMode)
		{
			case m_noRepeat:
				if((pstTempTime->hour==pstCurTime->hour)
					&&(pstTempTime->minute==pstCurTime->minute)
					&&(pstTempTime->date == pstCurTime->date)
					&&(pstTempTime->month==pstCurTime->month)
					&&(pstTempTime->year==pstCurTime->year))
				{
					if(m_TimerNotTrigger == pstUITimer->u8Trigger)
					{
						//if(pstTempTime->second <= pstCurTime->second)
						{
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                memmove(tmv_u8UIWorkTimerIndex+i,tmv_u8UIWorkTimerIndex+i+1,m_MaxUITimer - i-1);
                                tmv_u8UIWorkNum--;
                                iTrigerNum ++;
							}
							pstUITimer->u8Trigger = m_TimerTrigger;
							memset(pstUITimer,0,sizeof(UI_TIMER));
						}
					}
				}
				else
				{
					if(1 == TMF_CompareThe2Timers(*pstCurTime,*pstTempTime))  
					{       
						memset(pstUITimer,0,sizeof(UI_TIMER));
                        memmove(tmv_u8UIWorkTimerIndex+i,tmv_u8UIWorkTimerIndex+i+1,m_MaxUITimer - i-1);
                        tmv_u8UIWorkNum--;
					}
				}

				break;
			case m_Repeat:
				break;
				
			case m_Today:
				if(pstTempTime->hour==pstCurTime->hour)
				{
					if(pstTempTime->minute == pstCurTime->minute)
					{
						if(/*pstTempTime->second <= pstCurTime->second&&*/m_TimerNotTrigger == pstUITimer->u8Trigger)
						{
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                memmove(tmv_u8UIWorkTimerIndex+i,tmv_u8UIWorkTimerIndex+i+1,m_MaxUITimer - i-1);
                                tmv_u8UIWorkNum--;
                                iTrigerNum ++;
							}
							memset(pstUITimer,0,sizeof(UI_TIMER));
						}
					}
				}
				break;
				
			case m_EveryDay:
				if(pstTempTime->hour==pstCurTime->hour)
				{
					if(pstTempTime->minute < pstCurTime->minute)
					{
						pstUITimer->u8Trigger = m_TimerNotTrigger;
					}
					else if(pstTempTime->minute == pstCurTime->minute)
					{
						if(/*pstTempTime->second <= pstCurTime->second&&*/m_TimerNotTrigger == pstUITimer->u8Trigger)
						{
							pstUITimer->u8Trigger = m_TimerTrigger;
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                iTrigerNum ++;
							}
						}
					}
				}
				break;
			case m_EveryWeek:
				if(pstTempTime->hour==pstCurTime->hour
				&&pstTempTime->Weekday==pstCurTime->Weekday)
				{
					if(pstTempTime->minute < pstCurTime->minute)
					{
						pstUITimer->u8Trigger = m_TimerNotTrigger;
					}
					else if(pstTempTime->minute == pstCurTime->minute)
					{
						if(/*pstTempTime->second <= pstCurTime->second&&*/m_TimerNotTrigger == pstUITimer->u8Trigger)
						{
							pstUITimer->u8Trigger = m_TimerTrigger;
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                iTrigerNum ++;
							}
						}
					}
				}
				break;
			case m_EveryMonth:
				if(pstTempTime->hour==pstCurTime->hour
				&&pstTempTime->date==pstCurTime->date)
				{
					if(pstTempTime->minute < pstCurTime->minute)
					{
						pstUITimer->u8Trigger = m_TimerNotTrigger;
					}
					else if(pstTempTime->minute == pstCurTime->minute)
					{
						if(/*pstTempTime->second <= pstCurTime->second&&*/m_TimerNotTrigger == pstUITimer->u8Trigger)
						{
							pstUITimer->u8Trigger = m_TimerTrigger;
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                iTrigerNum ++;
							}
						}
					}
				}
				break;
			case m_EveryYear:
				if(pstTempTime->hour==pstCurTime->hour
				&&pstTempTime->date==pstCurTime->date
				&&pstTempTime->month==pstCurTime->month)
				{
					if(pstTempTime->minute < pstCurTime->minute)
					{
						pstUITimer->u8Trigger = m_TimerNotTrigger;
					}
					else if(pstTempTime->minute == pstCurTime->minute)
					{
						if(/*pstTempTime->second <= pstCurTime->second&&*/m_TimerNotTrigger == pstUITimer->u8Trigger)
						{
							pstUITimer->u8Trigger = m_TimerTrigger;
							if(pstUITimer->pNotifyCall)
							{
                                pTimerNotifyCall[iTrigerNum] = pstUITimer->pNotifyCall;
                                memcpy(u32TimerTrigerPara[iTrigerNum],pstUITimer->u32Para,m_MaxParaLen*sizeof(MBT_U32));
                                iTrigerNum ++;
							}
						}
					}
				}
				break;
			}
		}
	Sem_uiTimer_V();	
	
	for(i = 0; i < iTrigerNum; i ++)
	{
	    pTimerNotifyCall[i](u32TimerTrigerPara[i]);
	}
}




MBT_VOID TMF_GetSysTime(TIMER_M *pstTimer)
{
    if(pstTimer)
    {
        //Sem_SysTime_P();
        *pstTimer = usiv_stSystemtime;
        //Sem_SysTime_V();
    }
}

MBT_VOID TMF_SetSysTime(TIMER_M *pstTimer)
{
    //Sem_SysTime_P();
    usiv_stSystemtime = *pstTimer;
    //Sem_SysTime_V();
}


/***************************************************************
	函数名:TMF_TimeAdjustHalfHourPlus
	功能描述: update the half hour
	输入参数: non
      输出参数: non
      返回值: non

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2006.04.06
	修改人:      sunzehui
	描述: add commnets

	2. 
	时间:             2006.04.08
	修改人:      sunzehui
	描述: 修改该函数参数表;
	             遵义标书要求预定的节目播出前的1分钟
	             出现节目即将播出的提示信息
	
***************************************************************/
MBT_VOID TMF_TimeAdjustHalfHourPlus(TIMER_M *stTimer)
{
    TIMER_M stTempTimer = *stTimer;
    MBT_S32 tempyear = stTempTimer.year+1900;
    stTempTimer.minute += 30;   
	if(stTempTimer.minute >= 60)
    {
		stTempTimer.minute %= 60;
		stTempTimer.hour++;
	}
	if(stTempTimer.hour >= 24)
    {
		stTempTimer.hour %= 24;
		stTempTimer.date++;      // day ++ 
		stTempTimer.Weekday++;      // day ++ 
	}
    if(stTempTimer.Weekday > 7)
    {
        stTempTimer.Weekday = 1;
    }
    
    switch(stTempTimer.month)
    {      
        case 1:  
        case 3:  
        case 5: 
        case 7:
        case 8: 
        case 10:
            if(stTempTimer.date>31) 
            {
                stTempTimer.date = 1;  
                stTempTimer.month++;
            }            
            break;      
            
        case 12:            
            if(stTempTimer.date>31) 
            {
                stTempTimer.date = 1;  
                stTempTimer.month++;
                stTempTimer.month = 1;
                tempyear++;
                if((tempyear % 100) > 99)
                {
                    tempyear = 0;
                }
            }
            
            break;           
        case 2:  
            if (TMF_LeapYear(tempyear))
            {
                if(stTempTimer.date>29)
                {
                    stTempTimer.date = 1;
                    stTempTimer.month++;
                }
            }
            else
            {
                if(stTempTimer.date>28) 
                {
                    stTempTimer.date = 1;
                    stTempTimer.month++;
                }
            }
            break;             
        case 4: 
        case 6:  
        case 9:  
        case 11: 
            if(stTempTimer.date>30)
            {
                stTempTimer.date = 1;
                stTempTimer.month++;
            }
            
            break;

        default:
            break;  
    }

    stTempTimer.year = tempyear - 1900;
    *stTimer = stTempTimer;
}

/***************************************************************
	函数名:TMF_TimeAdjustHalfHourMinus
	功能描述: update the date
	输入参数: non
      输出参数: non
      返回值: non

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2006.04.06
	修改人:      sunzehui
	描述: add commnets

	2. 
	时间:             2006.04.08
	修改人:      sunzehui
	描述: 修改该函数参数表;
	             遵义标书要求预定的节目播出前的1分钟
	             出现节目即将播出的提示信息
	
***************************************************************/
MBT_VOID TMF_TimeAdjustHalfHourMinus(TIMER_M *stTimer)
{
    TIMER_M stTempTimer = *stTimer;
    MBT_S32 tempyear = stTempTimer.year+1900;
	MBT_S8	temphour = stTempTimer.hour;
	MBT_S8  tempminute = stTempTimer.minute;
    tempminute -= 30;   
	if(tempminute < 0)
    {
		tempminute += 60;
		temphour--;
	}
	stTempTimer.minute = tempminute;
	if(temphour < 0)
    {
		temphour += 24;
		stTempTimer.date--;      // day -- 
		stTempTimer.Weekday--;      // day --
	}
	stTempTimer.hour = temphour;
    if(stTempTimer.Weekday < 1)
    {
        stTempTimer.Weekday = 7;
    }
    
    switch(stTempTimer.month)
    {      
        case 2:  
        case 4:  
        case 6: 
        case 8:
        case 9: 
        case 11:
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 31;  
                stTempTimer.month--;
            }            
            break;           
        case 1:	 		
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 31;  
                stTempTimer.month = 12;
                tempyear--;
                if((tempyear % 100) > 99)
                {
                    tempyear = 0;
                }
            }            
            break;           
        case 3:  
            if(stTempTimer.date<1) 
            {
                if (TMF_LeapYear(tempyear))
                {
                    stTempTimer.date = 29;
                    stTempTimer.month = 2;
                }
                else
                {
                    stTempTimer.date = 28;
                    stTempTimer.month = 2;
                }
            }
            break;             
        case 5: 
        case 7:  
        case 10:  
        case 12: 
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 30;
                stTempTimer.month--;
            }            
            break;

        default:
            break;  
    }

    stTempTimer.year = tempyear - 1900;
    *stTimer = stTempTimer;
}

/***************************************************************
	函数名:TMF_TimeAdjustDatePlus
	功能描述: update the date
	输入参数: non
      输出参数: non
      返回值: non

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2006.04.06
	修改人:      sunzehui
	描述: add commnets

	2. 
	时间:             2006.04.08
	修改人:      sunzehui
	描述: 修改该函数参数表;
	             遵义标书要求预定的节目播出前的1分钟
	             出现节目即将播出的提示信息
	
***************************************************************/
MBT_VOID TMF_TimeAdjustDatePlus(TIMER_M *stTimer)
{
    TIMER_M stTempTimer = *stTimer;
    MBT_S32 tempyear = stTempTimer.year+1900;
    stTempTimer.date++;      // day ++ 
    stTempTimer.Weekday++;      // day ++ 
    if(stTempTimer.Weekday > 7)
    {
        stTempTimer.Weekday = 1;
    }
    
    switch(stTempTimer.month)
    {      
        case 1:  
        case 3:  
        case 5: 
        case 7:
        case 8: 
        case 10:
            if(stTempTimer.date>31) 
            {
                stTempTimer.date = 1;  
                stTempTimer.month++;
            }            
            break;      
            
        case 12:            
            if(stTempTimer.date>31) 
            {
                stTempTimer.date = 1;  
                stTempTimer.month++;
                stTempTimer.month = 1;
                tempyear++;
                if((tempyear % 100) > 99)
                {
                    tempyear = 0;
                }
            }
            
            break;           
        case 2:  
            if (TMF_LeapYear(tempyear))
            {
                if(stTempTimer.date>29)
                {
                    stTempTimer.date = 1;
                    stTempTimer.month++;
                }
            }
            else
            {
                if(stTempTimer.date>28) 
                {
                    stTempTimer.date = 1;
                    stTempTimer.month++;
                }
            }
            break;             
        case 4: 
        case 6:  
        case 9:  
        case 11: 
            if(stTempTimer.date>30)
            {
                stTempTimer.date = 1;
                stTempTimer.month++;
            }
            
            break;

        default:
            break;  
    }

    stTempTimer.year = tempyear - 1900;
    *stTimer = stTempTimer;
}


/***************************************************************
	函数名:TMF_TimeAdjustDateMinus
	功能描述: update the date
	输入参数: non
      输出参数: non
      返回值: non

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2006.04.06
	修改人:      sunzehui
	描述: add commnets

	2. 
	时间:             2006.04.08
	修改人:      sunzehui
	描述: 修改该函数参数表;
	             遵义标书要求预定的节目播出前的1分钟
	             出现节目即将播出的提示信息
	
***************************************************************/
MBT_VOID TMF_TimeAdjustDateMinus(TIMER_M *stTimer)
{
    TIMER_M stTempTimer = *stTimer;
    MBT_S32 tempyear = stTempTimer.year+1900;
    stTempTimer.date--;      // day -- 
    stTempTimer.Weekday--;      // day --
    if(stTempTimer.Weekday < 1)
    {
        stTempTimer.Weekday = 7;
    }
    
    switch(stTempTimer.month)
    {      
        case 2:  
        case 4:  
        case 6: 
        case 8:
        case 9: 
        case 11:
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 31;  
                stTempTimer.month--;
            }            
            break;           
        case 1:	 		
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 31;  
                stTempTimer.month = 12;
                tempyear--;
                if((tempyear % 100) > 99)
                {
                    tempyear = 0;
                }
            }            
            break;           
        case 3:  
            if(stTempTimer.date<1) 
            {
                if (TMF_LeapYear(tempyear))
                {
                    stTempTimer.date = 29;
                    stTempTimer.month = 2;
                }
                else
                {
                    stTempTimer.date = 28;
                    stTempTimer.month = 2;
                }
            }
            break;             
        case 5: 
        case 7:  
        case 10:  
        case 12: 
            if(stTempTimer.date<1) 
            {
                stTempTimer.date = 30;
                stTempTimer.month--;
            }            
            break;

        default:
            break;  
    }

    stTempTimer.year = tempyear - 1900;
    *stTimer = stTempTimer;
}


static MBT_VOID tmf_SetTimeStep (MBT_U32 u32Step)
{
    if(0 == u32Step)
    {
        return;
    }

    if(u32Step >= 200)
    {
        //MLMF_Print("step = 200\n");
        tmv_u32TimerStep = 200;
        return;
    }

    if(u32Step < 10)
    {
        //MLMF_Print("step = 5\n");
        tmv_u32TimerStep = 10;
        return;
    }

    tmv_u32TimerStep = u32Step;
    //MLMF_Print("tmv_u32TimerStep = %d\n",tmv_u32TimerStep);
}

static MBT_VOID tmf_TimerCTRTask ( MBT_VOID *pvParam )
{
    MBT_U32 u32PrevTime;
    MBT_U32 u32CurTime;
    MBT_U32 u32FPTime = 0;
    MBT_U32 u32TimeRun = 0;
    TIMER_M  stSystemtime;
    MBT_U32 u32PassTime;
    u32PrevTime = MLMF_SYS_GetMS();
    UNUSED_PARAM(pvParam);
    
    while (MM_TRUE)
    {
            MLMF_Task_Sleep(tmv_u32TimerStep);
            u32CurTime = MLMF_SYS_GetMS();
            u32PassTime = u32CurTime - u32PrevTime;
            u32PrevTime = u32CurTime;
            //MLMF_Print("\n\ntmv_u32TimerStep %d u32WaitMilSec %d\n",tmv_u32TimerStep,u32PassTime);
            u32FPTime += u32PassTime;
            if(u32FPTime >= 200)
            {
                u32FPTime = 0;
                BLASTF_CheckFPKey();
            }

            u32TimeRun += u32PassTime;
            if(u32TimeRun >= 1000)
            {
                u32TimeRun = 0;
                tmf_TrigerUITimer(&stSystemtime);
                if(MM_NULL != tmv_pSecTickCall)
                {
                    tmv_pSecTickCall();
                }
                //Sem_SysTime_P();
                usiv_stSystemtime.second++;// 走时1 秒
                usiv_stSystemtime.u32UtcTimeSecond++;
                if(usiv_stSystemtime.second >= 60)
                {
                    usiv_stSystemtime.second=0;
                    if(++usiv_stSystemtime.minute>=60)
                    {
                        usiv_stSystemtime.minute=0;
                        if(++usiv_stSystemtime.hour>=24)
                        {
                            usiv_stSystemtime.hour=0;
                            TMF_TimeAdjustDatePlus(&usiv_stSystemtime);
                        }
                    }
                }
                stSystemtime = usiv_stSystemtime;
                //Sem_SysTime_V();
            }
            
            tmf_DbsTimerTriger(u32PassTime);
        }
}


/*
 * CODE							:	TMF_TimerInit
 * PROTOTYPE					:  
 *			MMT_STB_ErrorCode_E	TMF_TimerInit ( MBT_VOID );
 *
 * STACK							:	callers stack
 * INPUT							:	nothing
 * OUTPUT						    : 	
 *		a.	initialisation_status		boolean
 *			If the module is successfuly initialised then it will be MM_FALSE else
 *			MM_TRUE
 *
 * GLOBAL VARIABLES USED	:
 *			a.	usif_mbx 				symbol type mailbox 	( R )
 *			b.	usif_pool				symbol type mailbox 	( R )
 *			c. usif_msg_poolid		    mboxid_t				( W )
 *			d.	usif_mboxid				mboxid_t				( W )
 *
 * DEVICES ACCESSED			:	nothing
 * FUNCTIONS CALLED			:  
 * CALLERS					:	
 * 		a.	main			..\..\MAIN\SOURCE\MAIN.C
 *
 * PURPOSE		:	
 *		Initialise the keyboard module
 */
/*{{{ DVBKeyboardInit ()*/
MMT_STB_ErrorCode_E  TMF_TimerInit (MBT_VOID(* pSecTickCall)(MBT_VOID))
{
    MET_Task_T timeHandle = MM_INVALID_HANDLE;
    
    MLMF_Sem_Create(&semDbsTimer,1);   
    
    MLMF_Sem_Create(&semUITimer,1);   
    
    //MLMF_Sem_Create(&timerv_semSysTime,1);   

    
    Sem_dbsTimer_P();
    memset(tmv_pDbsTimer,0,sizeof(tmv_pDbsTimer));
    Sem_dbsTimer_V();
    
    Sem_uiTimer_P();
    memset(tmv_pUITimer,0,sizeof(tmv_pUITimer));
    Sem_uiTimer_V();

    tmv_pSecTickCall = pSecTickCall;
    
    if ( (  MLMF_Task_Create ( tmf_TimerCTRTask , 
                                        MM_NULL,
                                        TIMER_PROCESS_WORKSPACE,	
                                        TIMER_PROCESS_PRIORITY,
                                        &timeHandle,
                                        "tmf_TimerCTRTask") ) != MM_NO_ERROR)
    {
        return  MM_ERROR_NO_MEMORY;
    }
    return	MM_NO_ERROR;
}

