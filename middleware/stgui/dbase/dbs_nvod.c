 
/*******************************************************************************
File name   : sr_dbase.c
Description : Database implementation
Revision    : 2.2.0

COPYRIGHT (C) STMicroelectronics 2003.

Date         Name       Modification
----		 ----       ------------
25-06-2004   Louie      Adapted to 5517FTACI Beta tree
14-03-2004   TM         Adapted to Alpha1 tree
17-03-2004	 CS         Modified to adapt HD STB software architecture + 
                        using STPTI

17-07-2003	 BKP        Modified to adapt to maly_2 software architecture
		
07-09-1996   THT        Original Work

*********************************************************************************/

/*------------enviroment variable added for complation--------------*/
#include "dbs_share.h"

typedef	struct _timeshift_event_item_
{
    MBT_U16 u16ServiceID;                                                    
    MBT_U16 uReferencedServiceID;                                                    
    MBT_U16 uTstEventMark;                                                    
    MBT_U16 ureserved;                                            
    MBT_U8 uStartTime[5];
    MBT_U8 uDutationTime[3];
    MBT_VOID *pNextEventNode;
} DBST_TSHIFT_EVENT;  

typedef	struct _reference_event_item_
{
    MBT_U16 event_id;
    MBT_U16 u16ServiceID;
    MBT_U16 uRefEventMark;                                                    
    MBT_U16 uTShiftEventIndex;                                                    
    MBT_CHAR *event_name;
    MBT_CHAR *item_description;
    DBST_TSHIFT_EVENT *pTimeshiftEventHead;
    struct _reference_event_item_ *pNextEventNode;
} DBST_REF_EVENT;  

typedef	struct _nvod_pro_
{
    MBT_U16 u16ServiceID;
    MBT_U16 u16TSID;
    MBT_U8 cProgramType;
    MBT_U16 u16Reserved; 
    TRANS_INFO  stPrgTransInfo;
    MBT_VOID *pEventList;
    MBT_VOID *pNextServiceNode;
} NVOD_PRO;  

typedef	struct _NVOD_timeshift_service_
{
    NVOD_PRO DbPogram;
    struct _NVOD_timeshift_service_ *pNextTimeshiftNode;
} DBST_TSHIFT_PRO;  

typedef	struct _NVOD_feference_service_
{
    NVOD_PRO DbPogram;
    MBT_CHAR    cServiceName [ MAX_SERVICE_NAME_LENGTH + 1 ];
    DBST_TSHIFT_PRO *pTimeShiftHead;
    DBST_REF_EVENT *pReferenceEventList;
    struct _NVOD_feference_service_ *pNextReferenceNode;
} DBST_REF_PRO;  

typedef struct _Time_2Com_
{
    MBT_U8 u8Time[4];
    MBT_U16 u16RefMark;
}TIME_2COM;

typedef	struct _dbs_nvod_version_
{
    MBT_U16 u16Reserved;                                                    
    MBT_U16 u16TSID;                                                    
    MBT_U8 u8Version;
    MBT_U8 u8Completed;
    MBT_U8 u8TotalNum;
    MBT_U8 u8GottedNum;
} ST_DBS_VERSON;  

typedef	struct _dbs_nvod_refnode_
{
    MBT_U8 u8TotalNum;
    MBT_U8 u8GottedNum;
    MBT_U16 u16ServiceID;
    struct _dbs_nvod_refnode_ *pNext;
}ST_DBS_REF_NODE;  

typedef	struct _dbs_nvod_reftable_version_
{
    MBT_U8 u8Version;
    MBT_U8 u8Completed;
    MBT_U16 u16TSID;                                                    
    ST_DBS_REF_NODE *pstRefNode;
} ST_DBS_REF_VERSON;  

static ST_DBS_REF_VERSON dbsv_stNvdEitScheduleCtr = {0xff,0,0xffff,MM_NULL};
static ST_DBS_VERSON dbsv_stNvdEitScheduleActualCtr = {0,0xffff,0xff,0,0,0};
static ST_DBS_VERSON dbsv_stNvdEitScheduleLateCtr = {0,0xffff,0xff,0,0,0};
static MET_Sem_T dbsv_nvodTableAccess= MM_INVALID_HANDLE;
static DBST_REF_PRO *dbsv_pstNvodRefPrgList = MM_NULL;
static MBT_U16 dbsv_u16RefEventMark = 0;
static MBT_U16 dbsv_u16EitTickCount = 0;
static MBT_U16 dbsv_u16EitPrevTickCount = 0;
static MBT_U8 dbsv_u8NvodEitTimerHandle = 0xff;
static MBT_U8 dbsv_NvodTaskProcess = 0;
static MBT_U8 dbsv_NvodSrchTransIndex = 0;

static MBT_VOID (*dbsf_pNvdTaskprocessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans)  = MM_NULL;

#define SEM_NvodPrgList_P()  MLMF_Sem_Wait(dbsv_nvodTableAccess,MM_SYS_TIME_INIFIE)
                                                        
#define SEM_NvodPrgList_V()  MLMF_Sem_Release(dbsv_nvodTableAccess)

static MBT_S32 NvdfIsEventOutdate(DBST_TSHIFT_EVENT  *me_Eventnode,TIMER_M stTempTime);
static MBT_VOID NvdfCreateSrchTransList(MBT_VOID);
static MBT_VOID NvdfFreeRefEventList(DBST_REF_EVENT *pCur);
static MBT_VOID NvdfSrchTunerCallBack(MMT_TUNER_TunerStatus_E stTunerState,MBT_U32 u32TunerID,MBT_U32 u32Frenq,MBT_U32 u32Sym,MMT_TUNER_QamType_E stQam);
static MBT_VOID NvdfEitTimeout(MBT_U32 *pu32Para);
static MBT_VOID NvdfCreateRefEventCopy(UI_REF_EVENT *pDest ,DBST_REF_EVENT *pSrc);
static MBT_VOID NvdfCreateTSEventCopy(UI_TSHIFT_EVENT *pDest ,DBST_TSHIFT_EVENT *pSrc);
static MBT_VOID NvdFreeAllEvent(DBST_REF_PRO *pRefList);
static MBT_VOID NvdfEitSrchStep(MBT_VOID);



static MBT_VOID NvdfFreeTimeshiftPrgList(DBST_TSHIFT_PRO *pTimeShiftHead)
{
    DBST_TSHIFT_PRO *pCur ;
    DBST_TSHIFT_PRO *pNext;
    pCur = pTimeShiftHead;
    while(pCur)
    {
        pNext = pCur->pNextTimeshiftNode;
        OSPFree(pCur);
        pCur = pNext;
    }
}



static DBST_REF_EVENT *NvdfGetRefEvent(DBST_REF_PRO *pCur,MBT_U16 uReferencedEventID)
{
    DBST_REF_EVENT *pReferenceEvent = MM_NULL;
    if(MM_NULL == pCur)
    {
        return MM_NULL;
    }

    pReferenceEvent = pCur->pReferenceEventList;
    while(pReferenceEvent)
    {
        if(pReferenceEvent->event_id == uReferencedEventID)
        {
            return pReferenceEvent;
        }
        pReferenceEvent = pReferenceEvent->pNextEventNode;
    }

    pReferenceEvent = OSPMalloc(sizeof(DBST_REF_EVENT));
    if(MM_NULL == pReferenceEvent)
    {
        return pReferenceEvent;
    }

    memset(pReferenceEvent,0,sizeof(DBST_REF_EVENT));
    pReferenceEvent->event_id = uReferencedEventID;
    pReferenceEvent->u16ServiceID = pCur->DbPogram.u16ServiceID;
    pReferenceEvent->uRefEventMark = dbsv_u16RefEventMark;
    dbsv_u16RefEventMark++;
    pReferenceEvent->pNextEventNode = pCur->pReferenceEventList;
    pCur->pReferenceEventList = pReferenceEvent;
    return pReferenceEvent;
}

static MBT_VOID NvdfFreeTimeshiftEventList(DBST_TSHIFT_EVENT *pCur)
{
    DBST_TSHIFT_EVENT *pNext ;
    while(pCur)
    {
        pNext = pCur->pNextEventNode;
        OSPFree(pCur);
        pCur = pNext;
    }
}

static MBT_VOID NvdfFreeRefEventList(DBST_REF_EVENT *pCur)
{
    DBST_REF_EVENT *pNext ;
    while(pCur)
    {
        pNext = pCur->pNextEventNode;
        NvdfFreeTimeshiftEventList(pCur->pTimeshiftEventHead);
        if(MM_NULL != pCur->event_name)
        {
            OSPFree(pCur->event_name);
        }
        if(MM_NULL != pCur->item_description)
        {
            OSPFree(pCur->item_description);
        }
        OSPFree(pCur);
        pCur = pNext;
    }
}

/*根据serviceid可能返回参考节目也可能返回时移节目节点*/
static DBST_REF_PRO *NvdfGetPrgNode(MBT_U16 u16TSID,MBT_U16 u16ServiceID,DBST_REF_PRO *pstRefPrgNode,MBT_BOOL *pBIsRefPrg)
{
    DBST_TSHIFT_PRO *pstTShiftPrgNode;
    while(pstRefPrgNode)
    {
        if(pstRefPrgNode->DbPogram.u16ServiceID == u16ServiceID)
        {
            if(u16TSID == pstRefPrgNode->DbPogram.u16TSID)
            {
                *pBIsRefPrg = MM_TRUE;
                return pstRefPrgNode;
            }
        }

        pstTShiftPrgNode = pstRefPrgNode->pTimeShiftHead;
        while(pstTShiftPrgNode)
        {
            if(pstTShiftPrgNode->DbPogram.u16ServiceID == u16ServiceID)
            {
                if(u16TSID == pstTShiftPrgNode->DbPogram.u16TSID)
                {
                    *pBIsRefPrg = MM_FALSE;
                    return pstRefPrgNode;
                }
            }
            pstTShiftPrgNode = pstTShiftPrgNode->pNextTimeshiftNode;
        }            
        pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
    }
    *pBIsRefPrg = MM_FALSE;
    return pstRefPrgNode;
}

static MBT_BOOL NvdfCheckIsGetAllRefEvent(MBT_U16 u16TSID,DBST_REF_PRO *pstRefPrgNode)
{
    while(pstRefPrgNode)
    {
        if(u16TSID == pstRefPrgNode->DbPogram.u16TSID)
        {
            if(MM_NULL == pstRefPrgNode->pReferenceEventList)
            {
                return MM_FALSE;
            }
            else
            {
                if(MM_NULL == pstRefPrgNode->pReferenceEventList->event_name)
                {
                    return MM_FALSE;
                }
            }
        }

        pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
    }
    return MM_TRUE;
}

/*
返回-1为已过
返回0为正在播放
返回1为还未到
*/
static MBT_S32 NvdfIsEventOutdate(DBST_TSHIFT_EVENT  *me_Eventnode,TIMER_M stTempTime)
{
	DBST_TSHIFT_EVENT *ptemp = me_Eventnode;
	MBT_S8 	month ;
	MBT_S8 	Date;
	MBT_S8 	hour;
	MBT_S8 	minute;
	MBT_S32 year  ;
	MBT_U8 uDurationHour;
	MBT_U8 uDurationMunite;
	TIMER_M stTime;
	if(MM_NULL == ptemp)
	{
		return 0;
	}
	DBSF_TdtTime2SystemTime(ptemp->uStartTime, &stTime);
	uDurationHour = m_BcdToHex(ptemp->uDutationTime[0]);
	uDurationMunite = m_BcdToHex(ptemp->uDutationTime[1]);
	month = stTime.month;
	Date = stTime.date;
	hour= stTime.hour;
	minute = stTime.minute;
	year = stTime.year + 1900 ;
	minute += uDurationMunite;
	//DBS_DEBUG(("year = %d month = %d Date = %d hour = %d minute = %d\n",year,month,Date,hour,minute));
	if(minute >= 60)
	{
		minute -= 60;
		hour++;
	}

	hour += uDurationHour;
	if(hour >= 24)
	{
		hour -= 24;
		Date++;
		switch( month )
		{
			case 1:  
			case 3:  
			case 5: 
			case 7:
			case 8: 
			case 10:
			case 12:	 
				if( Date > 31 ) 
				{
				Date -= 31;
				month ++;
				}
				break ;
				
			case 2 :
				if( year%400==0 || (year%100 != 0 && year %4==0) )
				{
				if( Date > 29 ) 
				{
				Date -= 29;
				month ++;
				}
				}
				else
				{
				if( Date > 28 ) 
				{
				Date -= 28;
				month ++;
				}
				}
				break ;
				
			case 4: 
			case 6:  
			case 9:  
			case 11:
				if( Date > 30 ) 
				{
				Date -= 30;
				month ++;
				}
				break ;
				
			default: 
				break;
		}

		if(month>12)
		{
			month -= 12;
			year ++;
		}
	}


	year -= 1900;

	if(year < stTempTime.year)
	{
        DBS_DEBUG(("TimeshiftEvent %d-%d-%d %02d:%02d outdate delete!\n",year,month,Date,hour,minute));
		return -1;
	}
	else   if(year == stTempTime.year)
	{
		if(month < stTempTime.month)
		{
            DBS_DEBUG(("TimeshiftEvent %d-%d-%d %02d:%02d outdate delete!\n",year,month,Date,hour,minute));
			return -1;
		}
		else  if(month == stTempTime.month)
		{
			MBT_U32 iEndTime;
			MBT_U32 iCurTime;
			iEndTime = minute+hour*60+Date*1440;
			iCurTime = stTempTime.minute+stTempTime.hour*60+stTempTime.date*1440;
			if(iEndTime<=iCurTime)
			{               
                DBS_DEBUG(("TimeshiftEvent %d-%d-%d %02d:%02d outdate delete!\n",year,month,Date,hour,minute));
				return -1;
			}
		}
	}

	month = stTime.month;
	Date = stTime.date;
	hour= stTime.hour;
	minute = stTime.minute;
	year = stTime.year ;

	if(year < stTempTime.year)
	{
		return 0;
	}
	else   if(year == stTempTime.year)
	{
		if(month < stTempTime.month)
		{
			return 0;
		}
		else  if(month == stTempTime.month)
		{
			MBT_U32 iEndTime;
			MBT_U32 iCurTime;
			iEndTime = minute+hour*60+Date*1440;
			iCurTime = stTempTime.minute+stTempTime.hour*60+stTempTime.date*1440;
			if(iEndTime<=iCurTime)
			{               
				return 0;
			}
		}
	}

	return 1;
}



/*返回值为得到的频点总数*/
static MBT_VOID  NvdfCreateSrchTransList(MBT_VOID)
{
    DBST_TSHIFT_PRO *pTShiftPrg; 
    DBST_REF_PRO *pstRefPrg;
    DBST_TRANS stDbsTrans;

    dbsf_TPListFreeTransList();
    SEM_NvodPrgList_P();
    pstRefPrg = dbsv_pstNvodRefPrgList;
    while(pstRefPrg)
    {
        if(0xffffffff != pstRefPrg->DbPogram.stPrgTransInfo.u32TransInfo)
        {
            stDbsTrans.stTPTrans = pstRefPrg->DbPogram.stPrgTransInfo;
            dbsf_TPListPutTransNode(&stDbsTrans);
        }
        
        pTShiftPrg = pstRefPrg->pTimeShiftHead;
        while(pTShiftPrg)
        {
            if(0xffffffff != pTShiftPrg->DbPogram.stPrgTransInfo.u32TransInfo)
            {
                stDbsTrans.stTPTrans = pTShiftPrg->DbPogram.stPrgTransInfo;
                //MLMF_Print("NvdfCreateSrchTransList u16ServiceID %x frenq %d uiTPSymbolRate %d uiTPQam %d\n",pTShiftPrg->DbPogram.u16ServiceID,stDbsTrans.stTPTrans.uBit.uiTPFreq,stDbsTrans.stTPTrans.uBit.uiTPSymbolRate,stDbsTrans.stTPTrans.uBit.uiTPQam);
                dbsf_TPListPutTransNode(&stDbsTrans);
            }
            pTShiftPrg = pTShiftPrg->pNextTimeshiftNode;
        }
        pstRefPrg = pstRefPrg->pNextReferenceNode;
    }
    SEM_NvodPrgList_V();
}

static MBT_VOID NvdfCreateRefEventCopy(UI_REF_EVENT *pDest ,DBST_REF_EVENT *pSrc)
{
    MBT_S32 iStrLen;

   DBS_DEBUG(("NvdfCreateRefEventCopy %x %s\n",pSrc->event_name,pSrc->event_name));
    if(MM_NULL != pSrc->event_name)
    {
        iStrLen = strlen(pSrc->event_name);
        iStrLen = iStrLen>MAX_EVENT_NAME_LENGTH ? MAX_EVENT_NAME_LENGTH :iStrLen;
        memcpy(pDest->event_name,pSrc->event_name,iStrLen);
        pDest->event_name[iStrLen] = 0;
    }
    else
    {
        memset(pDest->event_name,0,sizeof(pDest->event_name));
    }

    if(MM_NULL != pSrc->item_description)
    {
        iStrLen = strlen(pSrc->item_description);
        iStrLen = iStrLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH :iStrLen;
        memcpy(pDest->item_description,pSrc->item_description,iStrLen);
        pDest->item_description[iStrLen] = 0;
    }
    else
    {
        memset(pDest->item_description,0,MAX_EVENT_DESCRIPTOR_LENGTH+1);
    }
}


static MBT_VOID NvdfCreateTSEventCopy(UI_TSHIFT_EVENT *pDest ,DBST_TSHIFT_EVENT *pSrc)
{
    pDest->uReferencedServiceID = pSrc->uReferencedServiceID;
    pDest->u16ServiceID= pSrc->u16ServiceID;
    memcpy(pDest->uDutationTime,pSrc->uDutationTime,3);
    memcpy(pDest->uStartTime,pSrc->uStartTime,5);
}

static MBT_VOID NvdFreeRefNodeList(ST_DBS_REF_NODE *pstRefNode)
{
    ST_DBS_REF_NODE *pstNextNode;
    while(MM_NULL != pstRefNode)
    {
        pstNextNode = pstRefNode->pNext;
        OSPFree(pstRefNode);
        pstRefNode = pstNextNode;
    }
}

static MBT_BOOL NvdCheckRefNodeList(ST_DBS_REF_NODE *pstNode)
{
    while(MM_NULL != pstNode)
    {
        if(pstNode->u8GottedNum < pstNode->u8TotalNum)
        {
            return MM_FALSE;
        }
        pstNode = pstNode->pNext;
    }
    
    return MM_TRUE;
}


static MBT_BOOL NvdPut2RefNodeList(ST_DBS_REF_VERSON *pstRefVerList,MBT_U16 u16ServiceID,MBT_U8 u8SectionNum)
{
    ST_DBS_REF_NODE *pstNode;

    if(MM_NULL == pstRefVerList)
    {
        return MM_FALSE;
    }

    pstNode = pstRefVerList->pstRefNode;
    while(MM_NULL != pstNode)
    {
        if(u16ServiceID == pstNode->u16ServiceID)
        {
            break;
        }
        pstNode = pstNode->pNext;
    }

    if(MM_NULL != pstNode)
    {
        pstNode->u8GottedNum += 1;
        if(pstNode->u8GottedNum >= pstNode->u8TotalNum)
        {
            return MM_TRUE;
        }
        return MM_FALSE;
    }

    pstNode = OSPMalloc(sizeof(ST_DBS_REF_NODE));
    if(MM_NULL == pstNode)
    {
        return MM_FALSE;
    }

    pstNode->u16ServiceID = u16ServiceID;
    pstNode->u8TotalNum = u8SectionNum;
    pstNode->u8GottedNum = 1;
    pstNode->pNext = pstRefVerList->pstRefNode;
    pstRefVerList->pstRefNode = pstNode;
    if(pstNode->u8GottedNum >= pstNode->u8TotalNum)
    {
        return MM_TRUE;
    }
    return MM_FALSE;
}

MBT_VOID dbsf_NVDInitSrchCtr(MBT_VOID)
{
    ST_DBS_VERSON *pstVersionCtr;
    ST_DBS_REF_VERSON *pstRefVersionCtr;
    pstVersionCtr = &dbsv_stNvdEitScheduleActualCtr;
    pstVersionCtr->u16TSID = dbsm_InvalidID;
    pstVersionCtr->u8Version = 0xff;
    pstVersionCtr->u8Completed = 0;
    pstVersionCtr->u8TotalNum = 0;
    pstVersionCtr->u8GottedNum = 0;
    pstVersionCtr = &dbsv_stNvdEitScheduleLateCtr;
    pstVersionCtr->u16TSID = dbsm_InvalidID;
    pstVersionCtr->u8Version = 0xff;
    pstVersionCtr->u8Completed = 0;
    pstVersionCtr->u8TotalNum = 0;
    pstVersionCtr->u8GottedNum = 0;
    pstRefVersionCtr = &dbsv_stNvdEitScheduleCtr;
    pstRefVersionCtr->u16TSID = dbsm_InvalidID;
    pstRefVersionCtr->u8Version = 0xff;
    pstRefVersionCtr->u8Completed = 0;
}

MBT_VOID  dbsf_NVDParseEIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{	
    MBT_S32 iDescLoopLen;
    MBT_S32 iNoOfDataBytes;
    DBST_REF_EVENT *pCurEvent = MM_NULL;
    DBST_REF_EVENT *pNextEvent;
    DBST_TSHIFT_EVENT *pCurTimeShift ;
    DBST_TSHIFT_EVENT *pNextTimeShift ;
    MBT_U16 uReferencedServiceID;
    MBT_U16 uReferencedEventID;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    MBT_U8 *cDescPtr;
    MBT_U8 *puStartTime;
    MBT_U8 *puDurationTime;
    MBT_U8 *puPrevDesc;
    MBT_U8 u8EventNameLen;
    MBT_U8 u8TdtTime[5];
    MBT_U8 u8TableID;
    MBT_U8 u8EndTime[5];
    MBT_U8 u8Version;
    MBT_U8 u8SectionNum;
    MBT_U8 u8CurSection;
    DBST_REF_PRO *pstEpgListNode = MM_NULL;
    MBT_U16 u16ServiceID;
    MBT_U16 u16TSID;
    MBT_U16 uEventId;
    MBT_S32 iTempLen;
    MBT_S32 iTemp;
    MBT_BOOL bFinishCurTP = MM_FALSE;
    MBT_BOOL bIsRefPrg = MM_FALSE;
    MBT_VOID **ppPoint = MM_NULL;
    ST_DBS_VERSON *pstVersionCtr = MM_NULL;
    //DBS_DEBUG(("dbsf_NVDParseEIT tableid = %x\n",pu8MsgData[0]));
    if(m_DbsSearchNvod != dbsv_DbsWorkState&&m_DbsPlayNvod != dbsv_DbsWorkState)
    {
        dbsf_StopEpgSearch(dbsf_NVDParseEIT);
        DBS_DEBUG(("Not m_DbsSearchEpg\n"));
        return;
    }

    u8TableID = pu8MsgData [0];
    u16ServiceID = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    u8Version = ((pu8MsgData [5]&0x3e)>>1);
    u8CurSection = pu8MsgData[6];
    u8SectionNum = pu8MsgData[7]+1;
    u16TSID = ((pu8MsgData [ 8 ]<<8)|pu8MsgData [ 9 ]);

    dbsf_MntGetTdtTime(u8TdtTime);
    SEM_NvodPrgList_P();  
    pstEpgListNode = NvdfGetPrgNode(u16TSID,u16ServiceID,dbsv_pstNvodRefPrgList,&bIsRefPrg);
    if(MM_NULL == pstEpgListNode)
    {
        SEM_NvodPrgList_V();  
        dbsf_StopEpgSearch(dbsf_NVDParseEIT);
        return ;
    }

    
    iMsgLen -=  4;
    pu8End = pu8MsgData + iMsgLen;
    pu8MsgData += 14 ;	
    
   // MLMF_Print("Sectiong Checklen %d\n",pu8End - pu8MsgData);
    while (pu8MsgData < pu8End)
    {
        uEventId = ((( pu8MsgData [0] << 8 ) & 0xff00) | pu8MsgData [1]); 		
        iDescLoopLen = (((pu8MsgData[10] << 8 ) & 0x0f00) | pu8MsgData [11]); 

        puStartTime = pu8MsgData+2;
        puDurationTime = pu8MsgData+7;
        pu8MsgData += 12;  
        pu8End1 = pu8MsgData + iDescLoopLen;
        //MLMF_Print("desc Checklen %d iDescLoopLen = %d\n",pu8End1 - pu8MsgData,iDescLoopLen);
        while ( pu8MsgData < pu8End1 )
        {
            cDescPtr = pu8MsgData;
            iNoOfDataBytes = pu8MsgData[1]+2;
            //MLMF_Print("Tag serviceid = %x desclen = %d pu8MsgData = %x\n",cDescPtr[0],iNoOfDataBytes,(MBT_U32)pu8MsgData);
            switch(cDescPtr[0])
            {
                case SHORT_EVENT_DESC:  
                    //MLMF_Print("REFERENCE_EVENT_DESC serviceid = %x uEventId = %x\n",pstEpgListNode->DbPogram.u16ServiceID,uEventId);
                    pCurEvent = pstEpgListNode->pReferenceEventList;
                    ppPoint = (MBT_VOID**)&(pstEpgListNode->pReferenceEventList);
                    pNextEvent = pCurEvent;
                    while(pCurEvent)
                    {
                        if(uEventId == pCurEvent->event_id)
                        {
                            if(u16ServiceID == pCurEvent->u16ServiceID)
                            {
                                break;
                            }
                        }
                        ppPoint = (MBT_VOID**)&(pCurEvent->pNextEventNode);
                        pCurEvent = pCurEvent->pNextEventNode;
                        pNextEvent = pCurEvent;
                    }

                    if(MM_NULL == pCurEvent)
                    {
                        pCurEvent = OSPMalloc(sizeof(DBST_REF_EVENT));
                        if(MM_NULL == pCurEvent)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return;
                        }
                        pCurEvent->pTimeshiftEventHead = MM_NULL;
                        pCurEvent->event_name = MM_NULL;
                        pCurEvent->item_description = MM_NULL;
                        pCurEvent->uTShiftEventIndex = 0;
                        pCurEvent->pNextEventNode = pNextEvent;
                        pCurEvent->u16ServiceID = u16ServiceID;
                        pCurEvent->uRefEventMark = dbsv_u16RefEventMark;
                        dbsv_u16RefEventMark++;
                        *ppPoint = pCurEvent;
                        dbsv_u16EitTickCount++;
                    }	 
                    else
                    {
                        /*已经有了该结点,但是如果该结点是在添加时移事件时加上来的(以pCurEvent->event_name[0]做标志)则不能退出*/  
                        if(MM_NULL != pCurEvent->event_name)
                        {
                            break;
                        }                                
                    }


                    pCurEvent->event_id = uEventId;
                    cDescPtr += 5 ;
                    iTemp = 0;                                                
                    while((0x21 > cDescPtr [1 +iTemp])&&(iTemp < cDescPtr [ 0 ]))
                    {
                        iTemp++;
                    }
                    if(iTemp > 0)
                    {
                        u8EventNameLen = cDescPtr [ 0 ] - iTemp;
                        cDescPtr += 1+iTemp;
                    }
                    else
                    {
                        u8EventNameLen = cDescPtr [ 0 ];
                        cDescPtr += 1;
                    }

                    iTempLen = u8EventNameLen>MAX_EVENT_NAME_LENGTH ? MAX_EVENT_NAME_LENGTH :u8EventNameLen;
                    pCurEvent->event_name = OSPMalloc(iTempLen+1);
                    if(MM_NULL == pCurEvent->event_name)
                    {
                        NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                        SEM_NvodPrgList_V();
                        dbsf_EpgFreeAllEvent();
                        return ;
                    }
                    memcpy(pCurEvent->event_name,cDescPtr,iTempLen);
                    pCurEvent->event_name[iTempLen] = 0;

                    cDescPtr += u8EventNameLen ;

                    iTemp = 0;                                                
                    while((0x21 > cDescPtr [1 +iTemp])&&(iTemp < cDescPtr [ 0 ]))
                    {
                        iTemp++;
                    }
                    if(iTemp > 0)
                    {
                        u8EventNameLen = cDescPtr [ 0 ] - iTemp;
                        cDescPtr += 1+iTemp;
                    }
                    else
                    {
                        u8EventNameLen = cDescPtr [ 0 ];
                        cDescPtr += 1;
                    }

                    if(0 == u8EventNameLen)
                    {
                        break;
                    }
                    
                    if(MM_NULL == pCurEvent->item_description)
                    {
                        iTempLen = u8EventNameLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : u8EventNameLen;
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return ;
                        }
                        memcpy(pCurEvent->item_description,cDescPtr,iTempLen); 
                        pCurEvent->item_description[iTempLen] = 0;
                    }
                    else
                    {
                        iTemp = strlen(pCurEvent->item_description);
                        puPrevDesc = OSPMalloc(iTemp+1);
                        if(MM_NULL == puPrevDesc)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return;
                        }
                        
                        memcpy(puPrevDesc,pCurEvent->item_description,iTemp);
                        iTempLen = u8EventNameLen + iTemp+1;/*中间加入一个换行符*/
                        iTempLen = iTempLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : iTempLen;
                        OSPFree(pCurEvent->item_description);
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            OSPFree(puPrevDesc);
                            dbsf_EpgFreeAllEvent();
                            return ;
                        }

                        u8EventNameLen = (u8EventNameLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : u8EventNameLen);
                        memcpy(pCurEvent->item_description,cDescPtr,u8EventNameLen); 
                        pCurEvent->item_description[u8EventNameLen] = '\n';
                        if(iTempLen > u8EventNameLen+1)
                        {
                            memcpy(pCurEvent->item_description+u8EventNameLen+1,puPrevDesc,iTempLen - u8EventNameLen-1); 
                        }
                        pCurEvent->item_description[iTempLen] = 0;
                        OSPFree(puPrevDesc);
                    }
                    break;
                case TIMESHIFT_EVENT_DESC:
                    uReferencedServiceID = (cDescPtr[2]<<8)|cDescPtr[3];
                    if(pstEpgListNode->DbPogram.u16ServiceID != uReferencedServiceID)
                    {
                        break;
                    }
                    
                    dbsf_GetEndTime(puStartTime,puDurationTime,u8EndTime);
                    if(FIRST_LATE == DBSF_CompareTime(u8TdtTime, u8EndTime, 5))  
                    {
                        break;
                    }
                    
                    uReferencedEventID = (cDescPtr[4]<<8)|cDescPtr[5];
                    pCurEvent = NvdfGetRefEvent(pstEpgListNode,uReferencedEventID);
                    if(MM_NULL == pCurEvent)
                    {
                        NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                        SEM_NvodPrgList_V();
                        dbsf_EpgFreeAllEvent();
                        return;
                    }

                    pCurTimeShift = pCurEvent->pTimeshiftEventHead;
                    pNextTimeShift = pCurTimeShift;
                    ppPoint = (MBT_VOID**)(&(pCurEvent->pTimeshiftEventHead));

                    while(pCurTimeShift)
                    {
                        iTemp = DBSF_CompareTime(pCurTimeShift->uStartTime, puStartTime, 5);
                        if(SAME == iTemp)
                        {                                               
                            break;
                        }
                        else if(FIRST_LATE == iTemp)/*新来的比pCurEvent早,应该插入*/
                        {
                            pCurTimeShift = MM_NULL;
                            break;
                        }
                        ppPoint = &(pCurTimeShift->pNextEventNode);
                        pCurTimeShift = pCurTimeShift->pNextEventNode;
                        pNextTimeShift = pCurTimeShift;
                    }

                    if(MM_NULL == pCurTimeShift)/*如果不存在*/
                    {
                        pCurTimeShift = OSPMalloc(sizeof(DBST_TSHIFT_EVENT));
                        if(MM_NULL == pCurTimeShift)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return;
                        }
                        dbsv_u16EitTickCount++;
                       // MLMF_Print("add tshift eventid = %x  uReferencedEventID = %x \n",uEventId,uReferencedEventID);
                        *ppPoint = pCurTimeShift;
                        pCurTimeShift->pNextEventNode = pNextTimeShift;
                        memcpy(pCurTimeShift->uStartTime,puStartTime,5);
                        memcpy(pCurTimeShift->uDutationTime,puDurationTime,3);
                        pCurTimeShift->uReferencedServiceID = uReferencedServiceID;
                        pCurTimeShift->u16ServiceID = u16ServiceID;
                        pCurTimeShift->uTstEventMark = pCurEvent->uTShiftEventIndex;
                        pCurEvent->uTShiftEventIndex++;
                    }
                    break;
                case EXTENDED_EVENT_DESC:
#if 0                   
                    DBS_DEBUG(("REFERENCE_EVENT_DESC serviceid = %x uEventId = %x\n",pstEpgListNode->DbPogram.u16ServiceID,uEventId));
                    pCurEvent = pstEpgListNode->pReferenceEventList;
                    ppPoint = (MBT_VOID**)&(pstEpgListNode->pReferenceEventList);
                    pNextEvent = pCurEvent;
                    while(pCurEvent)
                    {
                        if(uEventId == pCurEvent->event_id&&u16ServiceID == pCurEvent->u16ServiceID)
                        {
                            break;
                        }
                        ppPoint = (MBT_VOID**)&(pCurEvent->pNextEventNode);
                        pCurEvent = pCurEvent->pNextEventNode;
                        pNextEvent = pCurEvent;
                    }

                    if(MM_NULL == pCurEvent)
                    {
                        pCurEvent = OSPMalloc(sizeof(DBST_REF_EVENT));
                        if(MM_NULL == pCurEvent)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return;
                        }

                        pCurEvent->pTimeshiftEventHead = MM_NULL;
                        pCurEvent->event_name = MM_NULL;
                        pCurEvent->item_description = MM_NULL;
                        pCurEvent->uTShiftEventIndex = 0;
                        pCurEvent->pNextEventNode = pNextEvent;
                        pCurEvent->u16ServiceID = u16ServiceID;
                        pCurEvent->uRefEventMark = dbsv_u16RefEventMark;
                        dbsv_u16RefEventMark++;
                        *ppPoint = pCurEvent;
                    }	 


                    pCurEvent->event_id = uEventId;
                    cDescPtr += 6 ;
                    u8EventNameLen = cDescPtr [ 0 ];
                    ++cDescPtr ;
                    cDescPtr += u8EventNameLen ;

                    iTemp = 0;                                                
                    while((0x21 > cDescPtr [1 +iTemp])&&(iTemp < cDescPtr [ 0 ]))
                    {
                        iTemp++;
                    }
                    if(iTemp > 0)
                    {
                        u8EventNameLen = cDescPtr [ 0 ] - iTemp;
                        cDescPtr += 1+iTemp;
                    }
                    else
                    {
                        u8EventNameLen = cDescPtr [ 0 ];
                        cDescPtr += 1;
                    }

                    if(0 == u8EventNameLen)
                    {
                        break;
                    }

                    if(MM_NULL == pCurEvent->item_description)
                    {
                        iTempLen = u8EventNameLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH :u8EventNameLen;
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return;
                        }
                        memcpy(pCurEvent->item_description,cDescPtr,iTempLen); 
                        pCurEvent->item_description[iTempLen] = 0;
                    }
                    else
                    {
                        iTemp = strlen(pCurEvent->item_description);
                        puPrevDesc = OSPMalloc(iTemp+1);
                        if(MM_NULL == puPrevDesc)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            dbsf_EpgFreeAllEvent();
                            return ;
                        }
                        
                        memcpy(puPrevDesc,pCurEvent->item_description,iTemp);
                        iTempLen = u8EventNameLen + iTemp+1;
                        iTempLen = iTempLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : iTempLen;
                        OSPFree(pCurEvent->item_description);
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
                            SEM_NvodPrgList_V();
                            OSPFree(puPrevDesc);
                            dbsf_EpgFreeAllEvent();
                            return;
                        }

                        iTemp = iTempLen>iTemp ? iTemp : iTempLen;
                        memcpy(pCurEvent->item_description,puPrevDesc,iTemp); 
                        pCurEvent->item_description[iTemp] = '\n';
                        if(iTempLen > iTemp+1)
                        {
                            memcpy(pCurEvent->item_description+iTemp+1,cDescPtr,iTempLen - iTemp-1); 
                        }
                        pCurEvent->item_description[iTempLen] = 0;
                        OSPFree(puPrevDesc);
                    }
#endif
                    break;
            }
            pu8MsgData += iNoOfDataBytes;
        }
    }
    
    if(m_DbsSearchNvod == dbsv_DbsWorkState)
    {
        if(MM_TRUE == bIsRefPrg)
        {
            ST_DBS_REF_VERSON *pstRefVersionCtr = MM_NULL;
            MLMF_Print("MM_TRUE == bIsRefPrg serviceid %x tableid %x u8SectionNum %d cusection %d\n",u16ServiceID,u8TableID,u8SectionNum,u8CurSection);
            pstRefVersionCtr = &dbsv_stNvdEitScheduleCtr;
            if(u8Version != pstRefVersionCtr->u8Version||u16TSID != pstRefVersionCtr->u16TSID)
            {
                NvdFreeRefNodeList(pstRefVersionCtr->pstRefNode);
                pstRefVersionCtr->pstRefNode = MM_NULL;
                pstRefVersionCtr->u16TSID = u16TSID;
                pstRefVersionCtr->u8Version = u8Version;
                pstRefVersionCtr->u8Completed = 0;
                //MLMF_Print("New table u16TSID = %x,u8Version %x\n",u16TSID,u8Version);
            }
        
            if(1 == pstRefVersionCtr->u8Completed)
            {
                bFinishCurTP = MM_TRUE;
            }
            else
            {
                if(MM_TRUE == NvdPut2RefNodeList(pstRefVersionCtr,u16ServiceID,u8SectionNum))
                {
                    if(MM_TRUE == NvdCheckRefNodeList(pstRefVersionCtr->pstRefNode))
                    {
                        bFinishCurTP = NvdfCheckIsGetAllRefEvent(u16TSID,dbsv_pstNvodRefPrgList);
                        if(MM_TRUE == bFinishCurTP)
                        {
                            pstRefVersionCtr->u8Completed = 1;
                            MLMF_Print("Get all event\n");
                        }
                    }
                }
            }
            //MLMF_Print("After check EIT_TABLE_PF_ACTUAL_ID\n");
        }
    }

    SEM_NvodPrgList_V(); 
    if(m_DbsSearchNvod != dbsv_DbsWorkState)
    {
        return;
    }

    if(EIT_TABLE_SCHEDULE_ACTUAL_ID == u8TableID)
    {
        pstVersionCtr = &dbsv_stNvdEitScheduleActualCtr;
        //MLMF_Print("ACTUAL sectionnun %d iMsgLen = %d\n",pu8MsgData[6],iMsgLen);
    }
    else if(EIT_TABLE_SCHEDULE_LATE_ID == u8TableID)
    {
        pstVersionCtr = &dbsv_stNvdEitScheduleLateCtr;
        //MLMF_Print("Other sectionnun %d iMsgLen = %d\n",pu8MsgData[6],iMsgLen);
    }

    if(MM_NULL != pstVersionCtr)
    {
        if(u8Version != pstVersionCtr->u8Version||u16TSID != pstVersionCtr->u16TSID||0 == pstVersionCtr->u8TotalNum)
        {
            pstVersionCtr->u16TSID = u16TSID;
            pstVersionCtr->u8Version = u8Version;
            pstVersionCtr->u8Completed = 0;
            pstVersionCtr->u8TotalNum = 1+(pu8MsgData [7]/8);
            pstVersionCtr->u8GottedNum = 0;
        }
        
        if(pstVersionCtr->u8TotalNum > 0)
        {
            pstVersionCtr->u8GottedNum += 1;
            if(pstVersionCtr->u8GottedNum >= pstVersionCtr->u8TotalNum)
            {
                pstVersionCtr->u8Completed = 1;
            }
        }
    }

    if(MM_TRUE == bFinishCurTP)
    {
        MBT_BOOL bGotActul = MM_FALSE;
        MBT_BOOL bGotLate = MM_FALSE;
        pstVersionCtr = &dbsv_stNvdEitScheduleActualCtr;
        if(1 == pstVersionCtr->u8Completed)
        {
            bGotActul = MM_TRUE;
        }
        pstVersionCtr = &dbsv_stNvdEitScheduleLateCtr;
        if(1 == pstVersionCtr->u8Completed)
        {
            bGotLate = MM_TRUE;
        }
        
        if(MM_TRUE == bGotActul)
        {
            pstVersionCtr = &dbsv_stNvdEitScheduleLateCtr;
            if(pstVersionCtr->u8TotalNum > 0)
            {
                if(1 == pstVersionCtr->u8Completed)
                {
                    bGotLate = MM_TRUE;
                }
            }
            else
            {
                bGotLate = MM_TRUE;
            }
        }
        else if(MM_TRUE == bGotLate)
        {
            pstVersionCtr = &dbsv_stNvdEitScheduleActualCtr;
            if(pstVersionCtr->u8TotalNum > 0)
            {
                if(1 == pstVersionCtr->u8Completed)
                {
                    bGotActul = MM_TRUE;
                }
            }
            else
            {
                bGotActul = MM_TRUE;
            }
        }

        
        if(MM_TRUE == bGotActul&&MM_TRUE == bGotLate)
        {
            MLMF_Print("Complete actuleget = %d,lategot %d\n",dbsv_stNvdEitScheduleActualCtr.u8GottedNum,dbsv_stNvdEitScheduleLateCtr.u8GottedNum);
            NvdfEitSrchStep();
        }
    }
}



static MBT_VOID NvdfSrchTunerCallBack(MMT_TUNER_TunerStatus_E stTunerState, MBT_U32 u32TunerID, MBT_U32 u32Frenq, MBT_U32 u32Sym,MMT_TUNER_QamType_E stQam)
{
    if(m_DbsSearchNvod != dbsv_DbsWorkState)
    {
        return;
    }

    dbsf_MntNimNotify(stTunerState);
    if(MM_TUNER_LOCKED == stTunerState)
    {
        //MLMF_Print("NvdfSrchTunerCallBack locked uiTPFreq = %d\n",dbsv_stCurTransInfo.uBit.uiTPFreq);
        dbsf_MntStartTable(TDT_PID,TDT_TABLE_ID,-1);
        dbsf_NVDInitSrchCtr();
        dbsf_StartEpgSearch(dbsf_NVDParseEIT);
        if(0xff == dbsv_u8NvodEitTimerHandle)
        {
            MBT_U32 u32Para[4];
            u32Para[0] = dbsv_stCurTransInfo.u32TransInfo;
            u32Para[1] = 0;
            u32Para[2] = 0;
            u32Para[3] = 0;
            dbsv_u8NvodEitTimerHandle = TMF_SetDbsTimer(NvdfEitTimeout,u32Para,5000,m_Repeat);
        }
    }
    else
    {
        //MLMF_Print("NvdfSrchTunerCallBack unlocked uiTPFreq = %d\n",dbsv_stCurTransInfo.uBit.uiTPFreq);
        NvdfEitSrchStep();
    }
}

static MBT_VOID NvdfEitSrchStep(MBT_VOID)
{
    DBST_TRANS stDbsTrans;
    
    if(0xff != dbsv_u8NvodEitTimerHandle)
    {
        TMF_CleanDbsTimer(dbsv_u8NvodEitTimerHandle);
        dbsv_u8NvodEitTimerHandle = 0xff;
       // MLMF_Print("NvdfEitTimeout dbsv_u8NvodEitTimerHandle = 0xff\n");
    }
    
    dbsf_StopEpgSearch(dbsf_NVDParseEIT);
    if(DVB_INVALID_LINK == dbsf_TPListGetTransInfo(&stDbsTrans,dbsv_NvodSrchTransIndex))
    {
        /*找不到后面的频点,说明已经搜索完所有频点*/
        dbsv_NvodTaskProcess = 100;
        //MLMF_Print("NvdfEitTimeout  Complete\n");
    }
    else
    {
        dbsv_NvodSrchTransIndex++;
        dbsv_NvodTaskProcess =100 *dbsv_NvodSrchTransIndex/(dbsf_TPListGetTransNum() + 1);
        
        if(dbsv_NvodTaskProcess >= 100)
        {
            dbsv_NvodTaskProcess = 98;
        }
        dbsv_stCurTransInfo = stDbsTrans.stTPTrans;
        //MLMF_Print("NvdfEitTimeout  Srch uiTPFreq %d dbsv_NvodTaskProcess %d\n",dbsv_stCurTransInfo.uBit.uiTPFreq,dbsv_NvodTaskProcess);
        MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,dbsv_stCurTransInfo.uBit.uiTPSymbolRate,dbsv_stCurTransInfo.uBit.uiTPQam,NvdfSrchTunerCallBack);
    }

    
    if(dbsf_pNvdTaskprocessNotify)
    {
        dbsf_pNvdTaskprocessNotify(dbsv_NvodTaskProcess,dbsv_stCurTransInfo);
    }
}

static MBT_VOID NvdfEitTimeout(MBT_U32 *pu32Para)
{
    //MLMF_Print("NvdfEitTimeout dbsv_u8NvodEitTimerHandle = %x dbsv_DbsWorkState = %d\n",dbsv_u8NvodEitTimerHandle,dbsv_DbsWorkState);
    if(m_DbsSearchNvod != dbsv_DbsWorkState||0xff == dbsv_u8NvodEitTimerHandle)
    {
        return;
    }

    if(pu32Para[0] != dbsv_stCurTransInfo.u32TransInfo)
    {
        return;
    }
    
    /*1.5秒没有收到新的section说明本频点已经搜索完成*/
    //MLMF_Print("NvdfEitTimeout dbsv_u16EitTickCount = %d dbsv_u16EitPrevTickCount = %d\ndbsv_NvodTaskProcess = %d\n",dbsv_u16EitTickCount,dbsv_u16EitPrevTickCount,dbsv_NvodTaskProcess);
    if(dbsv_u16EitTickCount == dbsv_u16EitPrevTickCount)
    {
        NvdfEitSrchStep();
    }
    else
    {
        dbsv_u16EitPrevTickCount = dbsv_u16EitTickCount;
    }
}

static MBT_VOID NvdFreeAllEvent(DBST_REF_PRO *pRefList)
{
    DBST_REF_PRO *pCur ;
    pCur = pRefList;
    while(pCur)
    {
        NvdfFreeRefEventList(pCur->pReferenceEventList);
        pCur->pReferenceEventList = MM_NULL;
        pCur = pCur->pNextReferenceNode;
    }
}

MBT_VOID dbsf_NvdFreeAllEvent(MBT_VOID)
{
    SEM_NvodPrgList_P();  
    NvdFreeAllEvent(dbsv_pstNvodRefPrgList);
    SEM_NvodPrgList_V();
}

MBT_VOID dbsf_NvdFreeRefPrgList(MBT_VOID)
{
    DBST_REF_PRO *pCur ;
    DBST_REF_PRO *pNext;
    SEM_NvodPrgList_P();  
    pCur = dbsv_pstNvodRefPrgList;
    while(pCur)
    {
        pNext = pCur->pNextReferenceNode;
        NvdfFreeRefEventList(pCur->pReferenceEventList);
        NvdfFreeTimeshiftPrgList(pCur->pTimeShiftHead);
        OSPFree(pCur);
        pCur = pNext;
    }
    dbsv_pstNvodRefPrgList = MM_NULL;
    SEM_NvodPrgList_V();
}



MBT_VOID dbsf_NvdSortPrgList(MBT_VOID)
{	
    MBT_VOID **ppRefPoint = MM_NULL;
    MBT_VOID **ppPrevPoint = MM_NULL;
    MBT_VOID **ppCheckPoint = MM_NULL;
    MBT_U16 u16TSID;
    MBT_U16 u16ServiceID;
    //MBT_U16 u16RefNum;
    DBST_REF_PRO *pstRefPrgNode ;
    DBST_REF_PRO *pstCheckNode ;
    DBST_REF_PRO *pstMinTSIDSvcNode ;

    //MLMF_Print("nvodref ProgramTyp %x serviceid = %x name = %s frenq = %d\n",pstPrgInfo->cProgramType,pstPrgInfo->u16ServiceID,pstPrgInfo->cServiceName,pstPrgInfo->stPrgTransInfo.uBit.uiTPFreq);
    SEM_NvodPrgList_P();
    ppRefPoint = (MBT_VOID **)(&(dbsv_pstNvodRefPrgList));
    ppPrevPoint = ppRefPoint;
    pstRefPrgNode = dbsv_pstNvodRefPrgList;
    while(pstRefPrgNode)
    { 
        u16ServiceID = 0xffff;
        u16TSID = 0xffff;
        pstMinTSIDSvcNode = MM_NULL;
        pstCheckNode = pstRefPrgNode;
        while(pstCheckNode)
        {
            if(pstCheckNode->DbPogram.u16TSID < u16TSID)
            {
                u16TSID = pstCheckNode->DbPogram.u16TSID;
                u16ServiceID = pstCheckNode->DbPogram.u16ServiceID;
                pstMinTSIDSvcNode = pstCheckNode;
                ppCheckPoint = ppPrevPoint;
            }
            else if(pstCheckNode->DbPogram.u16TSID == u16TSID)
            {
                if(pstCheckNode->DbPogram.u16ServiceID < u16ServiceID)
                {
                    u16ServiceID = pstCheckNode->DbPogram.u16ServiceID;
                    pstMinTSIDSvcNode = pstCheckNode;
                    ppCheckPoint = ppPrevPoint;
                }
            }
            ppPrevPoint = (MBT_VOID **)(&(pstCheckNode->pNextReferenceNode));
            pstCheckNode = pstCheckNode->pNextReferenceNode;
        }
        if(MM_NULL != pstMinTSIDSvcNode)
        {
            //MLMF_Print("MinNode TSID %x serviceid = %x name = %s frenq = %d\n",pstMinTSIDSvcNode->DbPogram.u16TSID,pstMinTSIDSvcNode->DbPogram.u16ServiceID,pstMinTSIDSvcNode->cServiceName,pstMinTSIDSvcNode->DbPogram.stPrgTransInfo.uBit.uiTPFreq);
            *ppCheckPoint = pstMinTSIDSvcNode->pNextReferenceNode;
            pstMinTSIDSvcNode->pNextReferenceNode = *ppRefPoint;
            *ppRefPoint = pstMinTSIDSvcNode;
            ppRefPoint = (MBT_VOID **)(&(pstMinTSIDSvcNode->pNextReferenceNode));
            pstRefPrgNode = pstMinTSIDSvcNode->pNextReferenceNode;
        }
        else
        {
            ppRefPoint = (MBT_VOID **)(&(pstRefPrgNode->pNextReferenceNode));
            pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
        }
        ppPrevPoint = ppRefPoint;
    }
    /*u16RefNum = 0;
    pstRefPrgNode = dbsv_pstNvodRefPrgList;
    while(pstRefPrgNode)
    { 
        MLMF_Print("nvodref %d TSID %x serviceid = %x name = %s frenq = %d\n",u16RefNum,pstRefPrgNode->DbPogram.u16TSID,pstRefPrgNode->DbPogram.u16ServiceID,pstRefPrgNode->cServiceName,pstRefPrgNode->DbPogram.stPrgTransInfo.uBit.uiTPFreq);
        pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
        u16RefNum++;
    }
    */
    SEM_NvodPrgList_V();
}

MBT_VOID dbsf_NvdPutRefPrgListNode(DBST_PROG *pstPrgInfo)
{	
    DBST_REF_PRO *pstRefPrgNode ;
    //MLMF_Print("nvodref ProgramTyp %x serviceid = %x name = %s frenq = %d\n",pstPrgInfo->cProgramType,pstPrgInfo->u16ServiceID,pstPrgInfo->cServiceName,pstPrgInfo->stPrgTransInfo.uBit.uiTPFreq);

    if(STTAPI_SERVICE_NVOD_REFERENCE != pstPrgInfo->cProgramType)
    {
        return;
    }
    
    SEM_NvodPrgList_P();
    pstRefPrgNode = dbsv_pstNvodRefPrgList;
    while(pstRefPrgNode)
    {                
        if(pstRefPrgNode->DbPogram.u16ServiceID == pstPrgInfo->u16ServiceID)
        {
            if(pstRefPrgNode->DbPogram.stPrgTransInfo.u32TransInfo == pstPrgInfo->stPrgTransInfo.u32TransInfo)
            {
                /*如果此结点是timeshift节目添加上来的,则无名字，需要重新付值*/
                strcpy(pstRefPrgNode->cServiceName,pstPrgInfo->cServiceName);
                SEM_NvodPrgList_V();
                return;
            }
        }
        pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
    }

    pstRefPrgNode = OSPMalloc(sizeof(DBST_REF_PRO));
    if(MM_NULL == pstRefPrgNode)
    {
        SEM_NvodPrgList_V();
        return;
    }
    
    pstRefPrgNode->pReferenceEventList = MM_NULL;
    pstRefPrgNode->pTimeShiftHead = MM_NULL;
    pstRefPrgNode->DbPogram.cProgramType = pstPrgInfo->cProgramType;
    pstRefPrgNode->DbPogram.stPrgTransInfo = pstPrgInfo->stPrgTransInfo;
    pstRefPrgNode->DbPogram.u16ServiceID = pstPrgInfo->u16ServiceID;
    pstRefPrgNode->DbPogram.u16TSID = pstPrgInfo->u16TsID;
    strcpy(pstRefPrgNode->cServiceName,pstPrgInfo->cServiceName);
    pstRefPrgNode->pNextReferenceNode = dbsv_pstNvodRefPrgList;
    dbsv_pstNvodRefPrgList = pstRefPrgNode;
    SEM_NvodPrgList_V();
}


MBT_VOID dbsf_NvdPutTShiftPrgListNode(DBST_PROG *pstPrgInfo,MBT_U16 uChannelNumber)
{	
    DBST_REF_PRO *pstRefPrgNode ;
    DBST_TSHIFT_PRO *pstTShiftPrgNode;
    int iIndex = 0;
    if(STTAPI_SERVICE_NVOD_TIME_SHIFT != pstPrgInfo->cProgramType)
    {
        return;
    }

    DBS_DEBUG(("Tshift serviceid = %x refserviceid = %x frenq = %d\n",pstPrgInfo->u16ServiceID,pstPrgInfo->uReferenceServiceID,pstPrgInfo->stPrgTransInfo.uBit.uiTPFreq));
    SEM_NvodPrgList_P();  
    pstRefPrgNode = dbsv_pstNvodRefPrgList;
    while(pstRefPrgNode)
    {                
        if(pstRefPrgNode->DbPogram.u16ServiceID== pstPrgInfo->uReferenceServiceID)
        {
            if(pstRefPrgNode->DbPogram.stPrgTransInfo.u32TransInfo == pstPrgInfo->stPrgTransInfo.u32TransInfo)
            {
                break;
            }
        }
        iIndex++;
        pstRefPrgNode = pstRefPrgNode->pNextReferenceNode;
    }

    if(MM_NULL == pstRefPrgNode)
    {    
        pstRefPrgNode = OSPMalloc(sizeof(DBST_REF_PRO));
        if(MM_NULL == pstRefPrgNode)
        {
            return;
        }
        pstRefPrgNode->pReferenceEventList = MM_NULL;
        pstRefPrgNode->pTimeShiftHead = MM_NULL;
        pstRefPrgNode->DbPogram.cProgramType = STTAPI_SERVICE_NVOD_REFERENCE;
        pstRefPrgNode->DbPogram.u16ServiceID = pstPrgInfo->uReferenceServiceID;
        pstRefPrgNode->DbPogram.u16TSID = pstPrgInfo->u16TsID;
        pstRefPrgNode->DbPogram.stPrgTransInfo = pstPrgInfo->stPrgTransInfo;
        sprintf(pstRefPrgNode->cServiceName,"nvodref%d",iIndex);
        DBS_DEBUG(("dbsf_NvdPutTShiftPrgListNode Add ref node serviceid %x\n",pstPrgInfo->uReferenceServiceID));
        pstRefPrgNode->pNextReferenceNode = dbsv_pstNvodRefPrgList;
        dbsv_pstNvodRefPrgList = pstRefPrgNode;
    }

    pstTShiftPrgNode = pstRefPrgNode->pTimeShiftHead;
    while(pstTShiftPrgNode)
    {                
        if(pstTShiftPrgNode->DbPogram.u16ServiceID == pstPrgInfo->u16ServiceID)
        {
            if(pstTShiftPrgNode->DbPogram.u16TSID == pstPrgInfo->u16TsID)
            {
                SEM_NvodPrgList_V();
                return;
            }
        }
        pstTShiftPrgNode = pstTShiftPrgNode->pNextTimeshiftNode;
    }

    pstTShiftPrgNode = OSPMalloc(sizeof(DBST_TSHIFT_PRO));
    if(MM_NULL == pstTShiftPrgNode)
    {
        SEM_NvodPrgList_V();
        return;
    }
    
    pstTShiftPrgNode->DbPogram.cProgramType = pstPrgInfo->cProgramType;
    pstTShiftPrgNode->DbPogram.stPrgTransInfo = pstPrgInfo->stPrgTransInfo;
    pstTShiftPrgNode->DbPogram.u16ServiceID = pstPrgInfo->u16ServiceID;
    pstTShiftPrgNode->DbPogram.u16TSID = pstPrgInfo->u16TsID;
    pstTShiftPrgNode->pNextTimeshiftNode = pstRefPrgNode->pTimeShiftHead;
    pstRefPrgNode->pTimeShiftHead = pstTShiftPrgNode;
    SEM_NvodPrgList_V();
}





MBT_VOID dbsf_NvodInit(MBT_VOID)
{
    if(MM_INVALID_HANDLE== dbsv_nvodTableAccess)    
    {
        MLMF_Sem_Create(&dbsv_nvodTableAccess,1); 
    }
}

MBT_VOID dbsf_NvodTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_nvodTableAccess)    
    {
        MLMF_Sem_Destroy(dbsv_nvodTableAccess); 
        dbsv_nvodTableAccess = MM_INVALID_HANDLE;
    }
}


MBT_S32 DBSF_NVDGetTaskProcess(TRANS_INFO *pstTPTrans)
{
    if(MM_NULL != pstTPTrans)
    {
        *pstTPTrans = dbsv_stCurTransInfo;
    }
    return dbsv_NvodTaskProcess;
}

MBT_BOOL DBSF_NVDHavePrg(MBT_VOID)
{
    MBT_BOOL bRet = MM_FALSE;
    SEM_NvodPrgList_P();  
    if(dbsv_pstNvodRefPrgList)
    {
        bRet = MM_TRUE;
    }
    SEM_NvodPrgList_V();  
    return bRet;
}


MBT_S32 DBSF_NVDStartSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess, TRANS_INFO stTrans))
{	
    DBST_TRANS stDbsTrans;
    MBT_S32 iTransNumber;
    
    dbsf_SetDbsState(m_DbsSearchNvod);
    dbsf_ListFreeMntPrgList();
    NvdfCreateSrchTransList();
    iTransNumber = dbsf_TPListGetTransNum();
    if(0 == iTransNumber)
    {
        dbsf_SetDbsState(m_DbsIdle);
        return iTransNumber;
    }	

    if(DVB_INVALID_LINK == dbsf_TPListGetTransInfo(&stDbsTrans,0))
    {
        dbsf_SetDbsState(m_DbsIdle);
        return 0;
    }
    
    dbsf_pNvdTaskprocessNotify = pProcessNotify;
    dbsv_NvodSrchTransIndex = 1;
    dbsv_NvodTaskProcess = 0;
    dbsv_stCurTransInfo = stDbsTrans.stTPTrans;
    SRSTF_CancelAllSectionReq();
    //MLMF_Print("DBSF_NVDStartSrch uiTPFreq = %d\n",dbsv_stCurTransInfo.uBit.uiTPFreq);
    MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,dbsv_stCurTransInfo.uBit.uiTPSymbolRate,dbsv_stCurTransInfo.uBit.uiTPQam,NvdfSrchTunerCallBack);
    return iTransNumber;
}


MBT_VOID DBSF_NVDEndSrch(MBT_VOID)
{	
    if(0xff != dbsv_u8NvodEitTimerHandle)
    {
        TMF_CleanDbsTimer(dbsv_u8NvodEitTimerHandle);
        dbsv_u8NvodEitTimerHandle = 0xff;
        //MLMF_Print("DBSF_NVDEndSrch dbsv_u8NvodEitTimerHandle = 0xff\n");
    }
    dbsf_SetDbsState(m_DbsSearchEpg);
    dbsv_NvodSrchTransIndex = 0;
    dbsv_NvodTaskProcess = 0;
}


MBT_S32 DBSF_NVDGetCertainRefPrg(MBT_U16 u16RefPrgServiceID,UI_PRG * pstPrgInfo)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    MBT_S32 iLogicNumber = 0;
    DBST_REF_PRO * pTempService;
    if(MM_NULL == pstPrgInfo
        ||dbsm_InvalidID == u16RefPrgServiceID)
    {
        return iRet;
    }

    SEM_NvodPrgList_P();
    pTempService = dbsv_pstNvodRefPrgList;
    while ( pTempService )
    {
        iLogicNumber++;
        if( u16RefPrgServiceID ==  pTempService->DbPogram.u16ServiceID)
        {
            pstPrgInfo->stService.cProgramType = pTempService->DbPogram.cProgramType;
            pstPrgInfo->stService.stPrgTransInfo = pTempService->DbPogram.stPrgTransInfo;
            pstPrgInfo->stService.u16ServiceID = pTempService->DbPogram.u16ServiceID;
            pstPrgInfo->stService.u8Volume = dbsm_defaultVolume;
            pstPrgInfo->stService.ucProgram_status = 2;
            pstPrgInfo->u16LogicNum = iLogicNumber;
            sprintf(pstPrgInfo->stService.cServiceName,"%s",pTempService->cServiceName);
            iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
            break;
        }
        pTempService = pTempService->pNextReferenceNode;		
    }
    SEM_NvodPrgList_V();
    if(DVB_INVALID_LINK == iRet)
    {
        memset(pstPrgInfo,0,sizeof(UI_PRG));
    }
    return iRet;
}


MBT_BOOL  DBSF_NVDGetCertainRefEvent(MBT_U16 u16RefEventID,UI_REF_EVENT *pstRefEvent)
{
    MBT_BOOL bRet = MM_FALSE;
    DBST_REF_PRO * pstRefPrgList = MM_NULL;
    DBST_REF_EVENT* pEvent = MM_NULL;

    if(MM_NULL == pstRefEvent||dbsm_InvalidID == u16RefEventID)
    {
        return bRet;
    }
    
    SEM_NvodPrgList_P();  
    pstRefPrgList = dbsv_pstNvodRefPrgList;
    while (MM_NULL != pstRefPrgList)
    {
        pEvent = pstRefPrgList->pReferenceEventList;
        while(MM_NULL != pEvent)
        {
            if(u16RefEventID == pEvent->uRefEventMark)
            {
                NvdfCreateRefEventCopy(pstRefEvent, pEvent);
                bRet = MM_TRUE;
                break;
            }
            pEvent = pEvent->pNextEventNode;
        }
        pstRefPrgList = pstRefPrgList->pNextReferenceNode;
    }
    
    if(MM_FALSE == bRet)
    {
        memset(pstRefEvent,0,sizeof(UI_REF_EVENT));
    }

    SEM_NvodPrgList_V();
    return bRet;
}

MBT_S32 DBSF_NVDGetTShiftEventNum(MBT_U16 u16RefEventID,MBT_U16 * pu16EventIdList,MBT_BOOL *pUpdate)
{
    MBT_S32 iTotal = 0;
    DBST_REF_PRO *pstRefPrgList;
    *pUpdate = MM_FALSE;

    if(MM_NULL == pu16EventIdList||dbsm_InvalidID == u16RefEventID)
    {
        return iTotal;
    }

    SEM_NvodPrgList_P();  
    pstRefPrgList = dbsv_pstNvodRefPrgList;
    while(MM_NULL != pstRefPrgList)
    {
        DBST_REF_EVENT *pstCurEvent = pstRefPrgList->pReferenceEventList;
        while(MM_NULL != pstCurEvent)
        {
            if(u16RefEventID == pstCurEvent->uRefEventMark)
            {
                DBST_TSHIFT_EVENT *pTimeshiftEvent = pstCurEvent->pTimeshiftEventHead;
                TIMER_M stTempTime;
                MBT_VOID **pPoint = (MBT_VOID **)(&(pstCurEvent->pTimeshiftEventHead));

                TMF_GetSysTime(&stTempTime);
                while(pTimeshiftEvent)
                {
                    if(-1 == NvdfIsEventOutdate(pTimeshiftEvent, stTempTime))
                    {
                        *pPoint = (MBT_VOID*)(pTimeshiftEvent->pNextEventNode);
                        OSPFree(pTimeshiftEvent);
                        pTimeshiftEvent = *pPoint;
                    }
                    else
                    {
                        if(pu16EventIdList[iTotal] != pTimeshiftEvent->uTstEventMark)
                        {
                            *pUpdate = MM_TRUE;
                            pu16EventIdList[iTotal] = pTimeshiftEvent->uTstEventMark;
                        }
                        iTotal ++;
                        if(iTotal >= 1000)/*不允许超过1000个*/
                        {
                            break;
                        }
                        pPoint = (MBT_VOID*)(&(pTimeshiftEvent->pNextEventNode));
                        pTimeshiftEvent = pTimeshiftEvent->pNextEventNode;
                    }
                }
                break;
            }
            pstCurEvent = pstCurEvent->pNextEventNode;
        }
        
        pstRefPrgList = pstRefPrgList->pNextReferenceNode;
    }

    SEM_NvodPrgList_V();  
    return iTotal;
}

MBT_BOOL  DBSF_NVDGetCertainTShiftEventInfo(MBT_U16 u16RefEventID,MBT_U16 u16EventID,UI_TSHIFT_EVENT *pstTShiftEvent)
{
    MBT_BOOL bRet = MM_FALSE;
    DBST_REF_PRO *pstRefPrgList;

    if(MM_NULL == pstTShiftEvent||dbsm_InvalidID == u16RefEventID||dbsm_InvalidID == u16EventID)
    {
        return bRet;
    }

    SEM_NvodPrgList_P();
    pstRefPrgList = dbsv_pstNvodRefPrgList;
    while(MM_NULL != pstRefPrgList)
    {
        DBST_REF_EVENT *pstEvent = pstRefPrgList->pReferenceEventList;
        while(MM_NULL != pstEvent)
        {
            if(u16RefEventID == pstEvent->uRefEventMark)
            {
                DBST_TSHIFT_EVENT *pTimeshiftEvent; 
                pTimeshiftEvent = pstEvent->pTimeshiftEventHead;
                while(pTimeshiftEvent)
                {        
                    if(u16EventID== pTimeshiftEvent->uTstEventMark)
                    {
                        NvdfCreateTSEventCopy(pstTShiftEvent, pTimeshiftEvent);
                        bRet = MM_TRUE;
                        break;
                    }
                    pTimeshiftEvent = pTimeshiftEvent->pNextEventNode;
                }
                break;
            }
            pstEvent = pstEvent->pNextEventNode;
        }
        pstRefPrgList = pstRefPrgList->pNextReferenceNode;
    }
    SEM_NvodPrgList_V();

    if(MM_FALSE == bRet)
    {
        memset(pstTShiftEvent,0,sizeof(UI_TSHIFT_EVENT));
    }
    return bRet;
}




MBT_U32 DBSF_NVDGetTShiftPrgTransInfo(MBT_U16 u16RefServiceID,MBT_U16 u16ServiceID)
{
    MBT_U32 u32Ret = 0xffffffff;
    DBST_REF_PRO *pTempService;
    DBST_TSHIFT_PRO *pTempTimeShiftService = MM_NULL;
    SEM_NvodPrgList_P();  
    pTempService= dbsv_pstNvodRefPrgList;
    while(pTempService)
    {
        if(pTempService->DbPogram.u16ServiceID == u16RefServiceID)
        {
            pTempTimeShiftService = pTempService->pTimeShiftHead;
            while(pTempTimeShiftService)
            {
                if(pTempTimeShiftService->DbPogram.u16ServiceID == u16ServiceID)
                {
                    u32Ret = pTempTimeShiftService->DbPogram.stPrgTransInfo.u32TransInfo;
                    //MLMF_Print("DBSF_NVDGetTShiftPrgTransInfo Got u32Ret %x\n",u32Ret);
                    break;
                }
                pTempTimeShiftService = pTempTimeShiftService->pNextTimeshiftNode;
            }
            break;
        }

        pTempService = pTempService->pNextReferenceNode;
    }
    SEM_NvodPrgList_V();

    return u32Ret;
}



/*
最多支持dbsm_MaxNvodRefPrgNum(500)个
*/
MBT_S32 DBSF_NVDGetAllRefPrgServiceID(MBT_U16 *pu16ServiceIdList)
{
    MBT_S32 iPrgTotal=0;
    DBST_REF_PRO * pTempService = MM_NULL;
    MBT_BOOL bLoop = MM_TRUE;

    if(MM_NULL == pu16ServiceIdList)
    {
        return iPrgTotal;
    }

    SEM_NvodPrgList_P();  
    pTempService = dbsv_pstNvodRefPrgList;
    while (MM_NULL != pTempService&&bLoop)
    {
        pu16ServiceIdList[iPrgTotal] = pTempService->DbPogram.u16ServiceID;
        iPrgTotal ++;
        if(iPrgTotal >= dbsm_MaxNvodRefPrgNum)/*不允许超过500个*/
        {
            bLoop = MM_FALSE;
            break;
        }
        pTempService = pTempService->pNextReferenceNode;		
    }
    SEM_NvodPrgList_V();
    DBS_DEBUG(("DBSF_NVDGetAllRefPrgServiceID():iPrgTotal = %d\n", iPrgTotal));
    return iPrgTotal;
}


/*
最多支持dbsm_MaxNvodRefEventNum(500)个
*/

#if 0
MBT_S32 DBSF_NVDGetEventIDListFromCertainRefPrg(MBT_U16 *pu16EventIdList,MBT_BOOL *pUpdate)
{
    MBT_S32 i;
    MBT_S32 j;
    MBT_S32 iEventTotal=0;
    DBST_REF_PRO * pTempService = MM_NULL;
    DBST_REF_EVENT* pEvent = MM_NULL;	
    TIME_2COM *pTime2Com;
    TIME_2COM stTime2Com;

    
    if(MM_NULL == pu16EventIdList||MM_NULL == pUpdate)
    {
        return iEventTotal;
    }
    *pUpdate = MM_FALSE;
    pTime2Com = dbsf_ForceMalloc(dbsm_MaxNvodRefEventNum*sizeof(TIME_2COM));
    if(MM_NULL == pTime2Com)
    {
        return iEventTotal;
    }

    SEM_NvodPrgList_P();  
    pTempService = dbsv_pstNvodRefPrgList;
    while (MM_NULL != pTempService)
    {
        pEvent = pTempService->pReferenceEventList;
        while(MM_NULL != pEvent)
        {
            if(MM_NULL != pEvent->event_name)
            {
                pTime2Com[iEventTotal].u16RefMark = pEvent->uRefEventMark;
                if(MM_NULL != pEvent->pTimeshiftEventHead)
                {
                    memcpy(pTime2Com[iEventTotal].u8Time,pEvent->pTimeshiftEventHead->uStartTime,4);
                }        
                else
                {
                    memset(pTime2Com[iEventTotal].u8Time,0xff,4);
                }
                iEventTotal ++;
                if(iEventTotal >= dbsm_MaxNvodRefEventNum)
                {
                    break;
                }
            }
            
            pEvent = pEvent->pNextEventNode;
        }
        pTempService = pTempService->pNextReferenceNode;		
    }
    SEM_NvodPrgList_V();
    
    for(i = 0;i < iEventTotal;i++)
    {
        for(j = i;j < iEventTotal;j++)
        {
            if(FIRST_LATE == DBSF_CompareTime(pTime2Com[i].u8Time, pTime2Com[j].u8Time, 5))
            {
                stTime2Com = pTime2Com[i];
                pTime2Com[i] = pTime2Com[j];
                pTime2Com[j] = stTime2Com;
            }
        }

        if(pu16EventIdList[i] != pTime2Com[i].u16RefMark)
        {
            *pUpdate = MM_TRUE;
            pu16EventIdList[i] = pTime2Com[i].u16RefMark;
        }
    }
    dbsf_ForceFree(pTime2Com);
    MLMF_Print("DBSF_NVDGetEventIDListFromCertainRefPrg():iEventTotal = %d\n", iEventTotal);
    return iEventTotal;
}
#else
MBT_S32 DBSF_NVDGetEventIDListFromCertainRefPrg(MBT_U16 *pu16EventIdList,MBT_BOOL *pUpdate)
{
    MBT_S32 iEventTotal=0;
    DBST_REF_PRO * pTempService = MM_NULL;
    DBST_REF_EVENT* pEvent = MM_NULL;	

    
    if(MM_NULL == pu16EventIdList||MM_NULL == pUpdate)
    {
        return iEventTotal;
    }
    *pUpdate = MM_FALSE;

    SEM_NvodPrgList_P();  
    pTempService = dbsv_pstNvodRefPrgList;
    while (MM_NULL != pTempService)
    {
        pEvent = pTempService->pReferenceEventList;
        while(MM_NULL != pEvent)
        {
            if(MM_NULL != pEvent->event_name)
            {
                if(pu16EventIdList[iEventTotal] != pEvent->uRefEventMark)
                {
                    *pUpdate = MM_TRUE;
                    pu16EventIdList[iEventTotal] = pEvent->uRefEventMark;
                }
                iEventTotal ++;
                if(iEventTotal >= dbsm_MaxNvodRefEventNum)
                {
                    break;
                }
            }
            
            pEvent = pEvent->pNextEventNode;
        }
        pTempService = pTempService->pNextReferenceNode;		
    }
    SEM_NvodPrgList_V();
    
    //MLMF_Print("DBSF_NVDGetEventIDListFromCertainRefPrg():iEventTotal = %d\n",iEventTotal);
    return iEventTotal;
}
#endif

