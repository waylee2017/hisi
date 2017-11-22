 
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

#define m_MaxEpgBuf 0x1000000
#define UTC_2HOUR_SECOND		(2*60*60)//two hours in second

typedef	struct _event_list_item_
{
    MBT_U16 event_id;
    MBT_U16 u16EventType;
    MBT_U8 uStartTime[5];
    MBT_U8 uDutationTime[3];
    MBT_CHAR *event_name;
    MBT_CHAR *item_description;
    MBT_VOID *pNextEventNode;
} DBST_EVENT;  

typedef	struct _epg_prg_node_
{
    MBT_U32 u32TransInfo;
    MBT_U16 u16ServiceID;
    MBT_U16 u16TSID;
    MBT_VOID *pEventList;
#ifdef COMPONENT_SUPORT
    MBT_VOID *pstComponent;
#endif    
    struct _epg_prg_node_ *pPrevPrgNode;
    struct _epg_prg_node_ *pNextPrgNode;
} EPG_PRG_NODE;  

static MBT_U8 dbsv_u8ForceResrchEpg = MM_TRUE;
static MBT_U32 dbsv_u32MaxEpgNum = 0;
static MBT_U32 dbsv_u32CurEpgNum = 0;
static EPG_PRG_NODE *dbsf_pstEpgPrgList = MM_NULL;
static MET_Sem_T dbsv_semEpgListAccess = MM_INVALID_HANDLE;

#define Sem_EpgList_P()  MLMF_Sem_Wait(dbsv_semEpgListAccess,MM_SYS_TIME_INIFIE) 
                                                        
#define Sem_EpgList_V()  MLMF_Sem_Release(dbsv_semEpgListAccess)

static MBT_VOID EpgCreateEventCopy(UI_EVENT *pDest ,DBST_EVENT *pSrc)
{
    MBT_S32 iStrLen;

    pDest->u16EventType = pSrc->u16EventType;
    memcpy(pDest->uDutationTime,pSrc->uDutationTime,3);
    memcpy(pDest->uStartTime,pSrc->uStartTime,5);
    if(MM_NULL != pSrc->event_name)
    {
        iStrLen = strlen(pSrc->event_name);
        iStrLen = iStrLen>MAX_EVENT_NAME_LENGTH ? MAX_EVENT_NAME_LENGTH : iStrLen;
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


static MBT_VOID EpgFreeEventList(MBT_VOID *pstEventList)
{
    DBST_EVENT *pCur = pstEventList;
    DBST_EVENT *pNext;

    while(pCur)
    {
        pNext = pCur->pNextEventNode;
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

static EPG_PRG_NODE *EpgGetPrgNodeWithTransSvcID(EPG_PRG_NODE *pstPrgNode,MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    EPG_PRG_NODE *pstEpgListNode;

    if (pstPrgNode == MM_NULL )
    {
        return MM_NULL;
    }

    pstEpgListNode = pstPrgNode;
    do
    {
        if(u16ServiceID == pstEpgListNode->u16ServiceID)
        {
            if(pstEpgListNode->u32TransInfo == u32TransInfo)
            {
                return pstEpgListNode;
            }
        }
        pstEpgListNode = pstEpgListNode->pNextPrgNode;
    }while(pstEpgListNode != pstPrgNode);
    
    return MM_NULL;
}

static MBT_BOOL EpgInsertPrgListNode(EPG_PRG_NODE *pInsertNode)
{
    EPG_PRG_NODE *p,*head;

    head = dbsf_pstEpgPrgList;
    if (head == MM_NULL )
    {
        dbsf_pstEpgPrgList = pInsertNode;
        pInsertNode->pNextPrgNode= pInsertNode;
        pInsertNode->pPrevPrgNode= pInsertNode; 
        return MM_TRUE;
    }

    p = head;
    do
    {
        if(p->u16ServiceID > pInsertNode->u16ServiceID)
        {
            break;
        }
        p = p->pNextPrgNode;
    }while(p != head);

    ((EPG_PRG_NODE *)(p->pPrevPrgNode))->pNextPrgNode = pInsertNode;
    pInsertNode->pPrevPrgNode = p->pPrevPrgNode;
    p->pPrevPrgNode = pInsertNode;
    pInsertNode->pNextPrgNode = p;

    if (pInsertNode->u16ServiceID < head->u16ServiceID)
    {
        dbsf_pstEpgPrgList = pInsertNode;
    }
    
    return MM_TRUE;
}


static EPG_PRG_NODE *EpgMallocPrgNodeWithTransSvcID(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    EPG_PRG_NODE *pstEpgListNode;

    pstEpgListNode = EpgGetPrgNodeWithTransSvcID(dbsf_pstEpgPrgList,u32TransInfo,u16ServiceID);
    if(MM_NULL == pstEpgListNode)
    {
        pstEpgListNode = MLMF_Malloc(sizeof(EPG_PRG_NODE));
        if(MM_NULL == pstEpgListNode)
        {
            return MM_NULL;
        }
        memset(pstEpgListNode,0,sizeof(EPG_PRG_NODE));
        pstEpgListNode->u32TransInfo = u32TransInfo;
        pstEpgListNode->u16ServiceID = u16ServiceID;
        EpgInsertPrgListNode(pstEpgListNode);
    }
    return pstEpgListNode;
}

static MBT_VOID EpgFreeAllEvent(EPG_PRG_NODE *pstEpgPrgList)
{
    if(MM_NULL != pstEpgPrgList)
    {
        EPG_PRG_NODE *pstNext;
        EPG_PRG_NODE *stProgram = pstEpgPrgList;
        do
        {
            pstNext = stProgram->pNextPrgNode;
            EpgFreeEventList(stProgram->pEventList);
#ifdef COMPONENT_SUPORT
            dbsf_FreeComponentList(stProgram->pstComponent);
#endif        
            MLMF_Free(stProgram);
            stProgram = pstNext;
        }while(stProgram != pstEpgPrgList);
    }
    dbsv_u32CurEpgNum = 0;
}

MBT_VOID dbsf_EpgFreeAllEvent(MBT_VOID)
{
    dbsv_u8ForceResrchEpg = MM_TRUE;
    Sem_EpgList_P();
    EpgFreeAllEvent(dbsf_pstEpgPrgList);
    dbsf_pstEpgPrgList = MM_NULL;
    Sem_EpgList_V();
}


MBT_VOID dbsf_SetForceSrchEpgFlag(MBT_BOOL bForceState)
{
    dbsv_u8ForceResrchEpg = bForceState;
}

MBT_BOOL dbsf_GetForceSrchEpgFlag(MBT_VOID)
{
    return dbsv_u8ForceResrchEpg;
}


/***********************************************************************************************************************
 * CODE		 	:	dbsf_ParseEIT
 * TYPE		 	:	subroutine
 *
 * PURPOSE		:
 *		Parses the SDT table, once if the particular TDT section is collected
 *		completely.
 *
 *	THEORY OF OPERATION:
 ***********************************************************************************************************************/
MBT_VOID  dbsf_ParseEIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{	
    MBT_S32 iDescLoopLen;
    MBT_S32 iNoOfDataBytes;
    MBT_U32 u32EventNum;
    DBST_EVENT  *pCurEvent  = MM_NULL;
    DBST_EVENT  *pNextEvent ;
#ifdef COMPONENT_SUPORT
    PRG_COMPONENT  *pCurComponent  = MM_NULL;
    PRG_COMPONENT  *pNextComponent;
    LANGUAGE_CODE_DESC  *pCurLanguageCode  = MM_NULL;
    MBT_U32 ISO_639_language_code;
#endif    
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    MBT_U8 *cDescPtr;
    MBT_U8 *puStartTime;
    MBT_U8 *puDurationTime;
    MBT_U8 *puPrevDesc;
    MBT_U8 u8EventNameLen;
    MBT_U8 u8TdtTime[5];
    MBT_U8 u8EndTime[5];
    MBT_U16 u16EventType ;
    EPG_PRG_NODE *pstEpgListNode = MM_NULL;
    MBT_U16 u16ServiceID;
    MBT_U16 uEventId;
    MBT_S32 iTempLen;
    MBT_S32 iTemp;
    MBT_VOID **ppPoint = MM_NULL;

    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {
        dbsf_StopEpgSearch(dbsf_ParseEIT);
        DBS_DEBUG(("Not m_DbsSearchEpg\n"));
        return;
    }

    u16ServiceID = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    
    dbsf_MntGetTdtTime(u8TdtTime);
    Sem_EpgList_P();  
    if(dbsv_u32CurEpgNum > dbsv_u32MaxEpgNum)
    {
        EpgFreeAllEvent(dbsf_pstEpgPrgList);
        dbsf_pstEpgPrgList = MM_NULL;
    }
    pstEpgListNode = EpgMallocPrgNodeWithTransSvcID(dbsv_stCurTransInfo.u32TransInfo,u16ServiceID);
    if(MM_NULL == pstEpgListNode)
    {
        Sem_EpgList_V();  
        dbsf_StopEpgSearch(dbsf_ParseEIT);
        return ;
    }

    iMsgLen -=  4;
    pu8MsgData += 14 ;	
    pu8End = pu8MsgData + iMsgLen - 11 - 16;
    while (pu8MsgData < pu8End)
    {
        uEventId = ((( pu8MsgData [0] << 8 ) & 0xff00) | pu8MsgData [1]); 		
        iDescLoopLen = ((( pu8MsgData [10] << 8 ) & 0x0f00) | pu8MsgData [11]); 

        puStartTime = pu8MsgData+2;
        puDurationTime = pu8MsgData+7;
        dbsf_GetEndTime(puStartTime,puDurationTime,u8EndTime);
        if(FIRST_LATE == DBSF_CompareTime(u8TdtTime, u8EndTime, 5))
        {
            pu8MsgData += (iDescLoopLen+12);
            continue;
        }

        u16EventType = 0;
        pu8MsgData += 12;  
        pu8End1 = pu8MsgData + iDescLoopLen;
        while ( pu8MsgData < pu8End1 )
        {
            cDescPtr = pu8MsgData;
            iNoOfDataBytes = pu8MsgData[1]+2;
            switch(cDescPtr[0])
            {
                case SHORT_EVENT_DESC:        			            
                    pCurEvent = pstEpgListNode->pEventList;
                    ppPoint = &(pstEpgListNode->pEventList);
                    u32EventNum = 0;
                    pNextEvent = pCurEvent;
                    while(pCurEvent)
                    {
                        iTemp = DBSF_CompareTime(pCurEvent->uStartTime, puStartTime,5);
                        if(SAME == iTemp)
                        {                                               
                            break;
                        }
                        else if(FIRST_LATE == iTemp)/*新来的比pCurEvent早,应该插入*/
                        {
                            pCurEvent = MM_NULL;
                            break;
                        }

                        u32EventNum ++;
                        ppPoint = (MBT_VOID**)&(pCurEvent->pNextEventNode);
                        pCurEvent = pCurEvent->pNextEventNode;
                        pNextEvent = pCurEvent;
                    }

                    if(u32EventNum > 350)
                    {
                        Sem_EpgList_V();     
                        return ;
                    }

                    if(MM_NULL == pCurEvent)
                    {
                        pCurEvent = OSPMalloc(sizeof(DBST_EVENT));
                        if(MM_NULL == pCurEvent)
                        {
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }
                        pCurEvent->u16EventType = u16EventType;
                        pCurEvent->event_name = MM_NULL;
                        pCurEvent->item_description = MM_NULL;
                        pCurEvent->pNextEventNode = pNextEvent;
                        dbsv_u32CurEpgNum++;
                        *ppPoint = pCurEvent;
                    }	 
                    else
                    {
                        /*已经有了该结点*/     
                        break;
                    }
                    pCurEvent->event_id = uEventId;
                    memcpy(pCurEvent->uStartTime,puStartTime,5);
                    memcpy(pCurEvent->uDutationTime,puDurationTime,3);
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
                        EpgFreeAllEvent(dbsf_pstEpgPrgList);
                        dbsf_pstEpgPrgList = MM_NULL;
                        Sem_EpgList_V();
                        dbsf_NvdFreeAllEvent();
                        DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
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
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
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
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }
                        
                        memcpy(puPrevDesc,pCurEvent->item_description,iTemp);
                        iTempLen = u8EventNameLen + iTemp+1;/*中间加入一个换行符*/
                        iTempLen = iTempLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : iTempLen;
                        OSPFree(pCurEvent->item_description);
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            OSPFree(puPrevDesc);
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
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
                case EXTENDED_EVENT_DESC:
                    pCurEvent = pstEpgListNode->pEventList;
                    while(pCurEvent)
                    {
                        if(uEventId == pCurEvent->event_id)
                        {
                            break;
                        }
                        pCurEvent = pCurEvent->pNextEventNode;
                    }

                    if(MM_NULL == pCurEvent)
                    {
                        break;
                    }	 
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
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();   
                            dbsf_NvdFreeAllEvent();
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
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }
                        
                        memcpy(puPrevDesc,pCurEvent->item_description,iTemp);
                        iTempLen = u8EventNameLen + iTemp+1;
                        iTempLen = iTempLen>MAX_EVENT_DESCRIPTOR_LENGTH ? MAX_EVENT_DESCRIPTOR_LENGTH : iTempLen;
                        OSPFree(pCurEvent->item_description);
                        pCurEvent->item_description = OSPMalloc(iTempLen+1);
                        if(MM_NULL == pCurEvent->item_description)
                        {
                            OSPFree(puPrevDesc);
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();  
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
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

                    break;
                case CONTENT_DESC:
                    u16EventType |= 0x0001<<((cDescPtr[2]>>4)&0x0f);		
                    if(pCurEvent)
                    {
                        if(0 == pCurEvent->u16EventType)
                        {
                            pCurEvent->u16EventType = u16EventType;
                        }
                    }
                    break;
                    
#ifdef COMPONENT_SUPORT
                case AUDIO_COMPONENT_DESC:
                    //MLMF_Print("AUDIO_COMPONENT_DESC component_tag = %x\n",cDescPtr[4]);
                    pCurComponent = pstEpgListNode->pstComponent;
                    ppPoint = &(pstEpgListNode->pstComponent);
                    pNextComponent = pCurComponent;
                    while(pCurComponent)
                    {
                        if(cDescPtr[4]/*component_tag*/ == pCurComponent->component_tag)
                        {                                               
                            break;
                        }

                        ppPoint = &(pCurComponent->pstNextComponent);
                        pCurComponent = pCurComponent->pstNextComponent;
                        pNextComponent = pCurComponent;
                    }

                    if(MM_NULL == pCurComponent)
                    {
                        pCurComponent = OSPMalloc(sizeof(PRG_COMPONENT));
                        if(MM_NULL == pCurComponent)
                        {
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();    
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }
                        memset(pCurComponent,0,sizeof(sizeof(PRG_COMPONENT)));
                        pCurComponent->pstNextComponent = pNextComponent;
                        *ppPoint = pCurComponent;
                        pCurComponent->component_tag = cDescPtr[4]/*component_tag*/;
                    }
                    
                    ISO_639_language_code = ((cDescPtr[5]<<16)|(cDescPtr[6]<<8)|cDescPtr[7]);
                    pCurLanguageCode  = pCurComponent->pstLanguageCode;
                    while(pCurLanguageCode)
                    {
                        if(ISO_639_language_code == pCurLanguageCode->ISO_639_language_code)
                        {
                            break;
                        }
                        pCurLanguageCode = pCurLanguageCode->pstNextCodeDesc;
                    }
                    
                    if(MM_NULL == pCurLanguageCode)
                    {
                        pCurLanguageCode = OSPMalloc(sizeof(LANGUAGE_CODE_DESC));
                        if(MM_NULL == pCurLanguageCode)
                        {
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();   
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }

                        memset(pCurLanguageCode,0,sizeof(LANGUAGE_CODE_DESC));
                        pCurLanguageCode->ISO_639_language_code = ISO_639_language_code;
                        pCurLanguageCode->pstNextCodeDesc = pCurComponent->pstLanguageCode;
                        pCurComponent->pstLanguageCode = pCurLanguageCode;
                    }

                    if(MM_NULL == pCurLanguageCode->ptrTextChar)
                    {
                        iTempLen = cDescPtr[1]-6;
                        pCurLanguageCode->ptrTextChar = OSPMalloc(iTempLen+1);
                        if(MM_NULL != pCurLanguageCode->ptrTextChar)
                        {
                            MBT_CHAR buf[20];
                            memcpy(pCurLanguageCode->ptrTextChar,&cDescPtr[8],iTempLen);
                            pCurLanguageCode->ptrTextChar[iTempLen] = 0;                              
                            memcpy(buf,&cDescPtr[5],3);
                            buf[3] = 0;                                
                            //MLMF_Print("component_tag = %x %s %s\n",pCurComponent->component_tag,buf,pCurLanguageCode->ptrTextChar);
                        }
                    }
                    break;
                    
                case MULTILANGUAGE_COMPONENT_DESC:
                    //MLMF_Print("MULTILANGUAGE_COMPONENT_DESC\n");
                    pCurComponent = pstEpgListNode->pstComponent;
                    ppPoint = &(pstEpgListNode->pstComponent);
                    pNextComponent = pCurComponent;
                    while(pCurComponent)
                    {
                        if(cDescPtr[2]/*component_tag*/ == pCurComponent->component_tag)
                        {                                               
                            break;
                        }

                        ppPoint = &(pCurComponent->pstNextComponent);
                        pCurComponent = pCurComponent->pstNextComponent;
                        pNextComponent = pCurComponent;
                    }

                    if(MM_NULL == pCurComponent)
                    {
                        pCurComponent = OSPMalloc(sizeof(PRG_COMPONENT));
                        if(MM_NULL == pCurComponent)
                        {
                            EpgFreeAllEvent(dbsf_pstEpgPrgList);
                            dbsf_pstEpgPrgList = MM_NULL;
                            Sem_EpgList_V();
                            dbsf_NvdFreeAllEvent();
                            DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                            return ;
                        }
                        memset(pCurComponent,0,sizeof(sizeof(PRG_COMPONENT)));
                        pCurComponent->pstNextComponent = pNextComponent;
                        *ppPoint = pCurComponent;
                        pCurComponent->component_tag = cDescPtr[2]/*component_tag*/;
                    }

                    iTemp = cDescPtr[1]-1;
                    cDescPtr += 3;
                    while(iTemp >= 4)
                    {
                        ISO_639_language_code = ((cDescPtr[0]<<16)|(cDescPtr[1]<<8)|cDescPtr[2]);
                        pCurLanguageCode  = pCurComponent->pstLanguageCode;
                        while(pCurLanguageCode)
                        {
                            if(ISO_639_language_code == pCurLanguageCode->ISO_639_language_code)
                            {
                                break;
                            }
                            pCurLanguageCode = pCurLanguageCode->pstNextCodeDesc;
                        }
                        
                        if(MM_NULL == pCurLanguageCode)
                        {
                            pCurLanguageCode = OSPMalloc(sizeof(LANGUAGE_CODE_DESC));
                            if(MM_NULL == pCurLanguageCode)
                            {
                                EpgFreeAllEvent(dbsf_pstEpgPrgList);
                                dbsf_pstEpgPrgList = MM_NULL;
                                Sem_EpgList_V();  
                                dbsf_NvdFreeAllEvent();
                                DBS_DEBUG(("malloc faile MBT_S32 eit\n"));
                                return ;
                            }

                            memset(pCurLanguageCode,0,sizeof(LANGUAGE_CODE_DESC));
                            pCurLanguageCode->ISO_639_language_code = ISO_639_language_code;
                            pCurLanguageCode->pstNextCodeDesc = pCurComponent->pstLanguageCode;
                            pCurComponent->pstLanguageCode = pCurLanguageCode;
                        }

                        iTempLen = cDescPtr[3];
                        
                        if(MM_NULL == pCurLanguageCode->ptrTextChar)
                        {
                            pCurLanguageCode->ptrTextChar = OSPMalloc(iTempLen+1);
                            if(MM_NULL != pCurLanguageCode->ptrTextChar)
                            {
                                MBT_CHAR buf[20];
                                memcpy(pCurLanguageCode->ptrTextChar,&cDescPtr[3],iTempLen);
                                pCurLanguageCode->ptrTextChar[iTempLen] = 0;                              
                                memcpy(buf,&cDescPtr[0],3);
                                buf[3] = 0;                                
                                //MLMF_Print("%s %s\n",buf,pCurLanguageCode->ptrTextChar);
                            }
                        }

                        iTempLen += 4;
                        if(iTemp >= iTempLen )
                        {
                            iTemp -= iTempLen;
                        }
                        else
                        {
                            iTemp = 0;
                        }
                    }
                    break;
#endif
        		}
            pu8MsgData += iNoOfDataBytes;
        }
    }
    Sem_EpgList_V();  
}

MBT_VOID dbsf_StopEpgSearch(ParseCallBack ParseTable)
{
    SRSTF_StopSpecifyFilter(EIT_FILTER1,ParseTable);
    SRSTF_StopSpecifyFilter(EIT_FILTER2,ParseTable);
    SRSTF_StopSpecifyFilter(EIT_FILTER3,ParseTable);
}

MBT_VOID dbsf_StartEpgSearch(ParseCallBack ParseTable)
{
    MBT_U8     u8Data[FILTER_DEPTH_SIZE];
    MBT_U8     u8Mask[FILTER_DEPTH_SIZE];
    MBT_S32 iSlotBuffer = 512*1024;

    memset(u8Data,0,FILTER_DEPTH_SIZE);
    memset(u8Mask,0,FILTER_DEPTH_SIZE);
    u8Data[0] = EIT_TABLE_PF_ACTUAL_ID;
    u8Mask[0] = 0xff;
    //u8Data[0] = 0x40;
    //u8Mask[0] = 0x40;

    SRSTF_SetSpecifyFilter(EIT_FILTER1,
                                                ParseTable, 
                                                MM_NULL, 
                                                u8Data, 
                                                u8Mask, 
                                                1, 
                                                EIT_PID, 
                                                81920,
                                                0, 
                                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                                MM_NULL);
    u8Data[0] = EIT_TABLE_SCHEDULE_ACTUAL_ID;
    u8Mask[0] = 0xff;
    //u8Data[0] = 0x40;
    //u8Mask[0] = 0x40;

    SRSTF_SetSpecifyFilter(EIT_FILTER2,
                                                ParseTable, 
                                                MM_NULL, 
                                                u8Data, 
                                                u8Mask, 
                                                1, 
                                                EIT_PID, 
                                                iSlotBuffer,
                                                0, 
                                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                                MM_NULL);

    u8Data[0] = EIT_TABLE_SCHEDULE_LATE_ID;
    u8Mask[0] = 0xff;
    //u8Data[0] = 0x40;
    //u8Mask[0] = 0x40;

    SRSTF_SetSpecifyFilter(EIT_FILTER3,
                                                ParseTable, 
                                                MM_NULL, 
                                                u8Data, 
                                                u8Mask, 
                                                1, 
                                                EIT_PID, 
                                                iSlotBuffer,
                                                0, 
                                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                                MM_NULL);
}




MBT_VOID dbsf_EpgInit(MBT_VOID)
{
    dbsv_u32MaxEpgNum = m_MaxEpgBuf/(sizeof(DBST_EVENT)+MAX_EVENT_NAME_LENGTH+1);
    if(MM_INVALID_HANDLE== dbsv_semEpgListAccess)    
    {
        MLMF_Sem_Create(&dbsv_semEpgListAccess,1); 
    }
}

MBT_VOID dbsf_EpgTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_semEpgListAccess)    
    {
        MLMF_Sem_Destroy(dbsv_semEpgListAccess); 
        dbsv_semEpgListAccess = MM_INVALID_HANDLE;
    }
}

#ifdef COMPONENT_SUPORT

static MBT_VOID dbsf_FreeLanguageCodeList(MBT_VOID *pstLanguageCodeList)
{
    LANGUAGE_CODE_DESC *pCur = pstLanguageCodeList;
    LANGUAGE_CODE_DESC *pNext;

    while(pCur)
    {
        pNext = pCur->pstNextCodeDesc;
        if(MM_NULL != pCur->ptrTextChar)
        {
            OSPFree(pCur->ptrTextChar);
        }
        OSPFree(pCur);
        pCur = pNext;
    }
}

MBT_VOID dbsf_FreeComponentList(MBT_VOID *pstComponentList)
{
    PRG_COMPONENT *pCur = pstComponentList;
    PRG_COMPONENT *pNext;

    while(pCur)
    {
        pNext = pCur->pstNextComponent;
        dbsf_FreeLanguageCodeList(pCur->pstLanguageCode);
        OSPFree(pCur);
        pCur = pNext;
    }
}
#endif

/*返回得到的event个数*/
MBT_U8  DBSF_EpgGetPFEvent(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,UI_EVENT * pstCurEvent, UI_EVENT * pstNextEvent)
{
    EPG_PRG_NODE *pstEpgListNode;
    MBT_S32 iStartTimeCompare;
    MBT_S32 iEndTimeCompare;
    MBT_U8 uTdtime[5];
    MBT_U8 uEndime[5];
    MBT_U8 uRet = 0;
    MBT_U8 u8Find;
    DBST_EVENT  *pCurEvent;

    if(MM_NULL == pstCurEvent||MM_NULL == pstNextEvent)
    {
        return uRet;
    }

    dbsf_MntGetTdtTime(uTdtime);
    Sem_EpgList_P();
    if(MM_NULL == dbsf_pstEpgPrgList)
    {
        Sem_EpgList_V();
        memset(pstCurEvent,0,sizeof(UI_EVENT));
        memset(pstNextEvent,0,sizeof(UI_EVENT));
        return uRet;
    }

    u8Find = 0;
    if(u16ServiceID > dbsf_pstEpgPrgList->u16ServiceID)
    {
        pstEpgListNode = dbsf_pstEpgPrgList->pNextPrgNode;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pNextPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }
    else
    {
        pstEpgListNode = dbsf_pstEpgPrgList;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pPrevPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }

    if(0 == u8Find)
    {
        Sem_EpgList_V();
        memset(pstCurEvent,0,sizeof(UI_EVENT));
        memset(pstNextEvent,0,sizeof(UI_EVENT));
        return uRet;
    }

    dbsf_pstEpgPrgList = pstEpgListNode;
    pCurEvent = pstEpgListNode->pEventList;
    if( 0 != uTdtime[0]||0 != uTdtime[0])
    {
        while(pCurEvent)
        {    
            //MLMF_Print("Free %s\n",pCurEvent->event_name);
            dbsf_GetEndTime(pCurEvent->uStartTime,pCurEvent->uDutationTime, uEndime);
            iStartTimeCompare = DBSF_CompareTime(uTdtime,pCurEvent->uStartTime,5);
            iEndTimeCompare = DBSF_CompareTime(uTdtime,uEndime,5);
            if(FIRST_LATE == iEndTimeCompare  )
            {
                pstEpgListNode->pEventList = pCurEvent->pNextEventNode;
                if(MM_NULL != pCurEvent->event_name)
                {
                    OSPFree(pCurEvent->event_name);
                }
                if(MM_NULL != pCurEvent->item_description)
                {
                    OSPFree(pCurEvent->item_description);
                }
                OSPFree(pCurEvent);
                pCurEvent = pstEpgListNode->pEventList;
                continue;
            }
            else if(FIRST_EARLY != iStartTimeCompare&&FIRST_LATE != iEndTimeCompare  )
            {
                break;
            }
            pCurEvent = pCurEvent->pNextEventNode;
        }        
    }

    if(pCurEvent)
    {
        uRet = 1;
        EpgCreateEventCopy(pstCurEvent,pCurEvent);
        pCurEvent = pCurEvent->pNextEventNode;
        if(pCurEvent)
        {
            uRet = 2;
            EpgCreateEventCopy(pstNextEvent,pCurEvent);
        }
        else
        {
            memset(pstNextEvent,0,sizeof(UI_EVENT));
        }
    }
    else
    {
        memset(pstCurEvent,0,sizeof(UI_EVENT));
        memset(pstNextEvent,0,sizeof(UI_EVENT));
    }
    Sem_EpgList_V();
    return  uRet;
}


MBT_BOOL DBSF_GetEventByEventID(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,MBT_U16 u16EventId,UI_EVENT *pEventItem)
{
    MBT_U8 u8Find;
    MBT_BOOL bRet = MM_FALSE;
    DBST_EVENT *pstEventList ;
    EPG_PRG_NODE *pstEpgListNode;

    if(MM_NULL == pEventItem)
    {
        return bRet;
    }
    
    Sem_EpgList_P();
    if(MM_NULL == dbsf_pstEpgPrgList)
    {
        Sem_EpgList_V();
        memset(pEventItem,0,sizeof(UI_EVENT));
        return bRet;
    }
    u8Find = 0;
    if(u16ServiceID > dbsf_pstEpgPrgList->u16ServiceID)
    {
        pstEpgListNode = dbsf_pstEpgPrgList->pNextPrgNode;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pNextPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }
    else
    {
        pstEpgListNode = dbsf_pstEpgPrgList;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pPrevPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }

    if(1 == u8Find )
    {
        dbsf_pstEpgPrgList = pstEpgListNode;
        pstEventList = pstEpgListNode->pEventList;
        while(pstEventList)
        {
            if(u16EventId  == pstEventList->event_id)
            {
                EpgCreateEventCopy(pEventItem,pstEventList);
                bRet = MM_TRUE;
                break;
            }
            pstEventList = pstEventList->pNextEventNode;
        }
    }
    Sem_EpgList_V();

    if(MM_FALSE == bRet)
    {
        memset(pEventItem,0,sizeof(UI_EVENT));
    }

    return bRet;
}


MBT_S32 DBSF_GetXDayEventNumber(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,TIMER_M stCurTime,MBT_U16 *pu16EventId,MBT_BOOL *pUpdate)
{
    DBST_EVENT *pstEventList;
    TIMER_M sTStartTime;
    TIMER_M stSysTime;
    MBT_U8 u8Find;
    MBT_U8 puTdtTime[5];
    MBT_U8 puEndTime[5];
    EPG_PRG_NODE *pstEpgListNode;
    MBT_S32 iTotalevent  = 0;

    if(MM_NULL == pu16EventId||MM_NULL == pUpdate)
    {
        return iTotalevent;
    }
    *pUpdate = MM_FALSE;
    Sem_EpgList_P();
    if(MM_NULL == dbsf_pstEpgPrgList)
    {
        Sem_EpgList_V();
        return 0;
    }
    u8Find = 0;
    TMF_GetSysTime(&stSysTime);
    dbsf_MntGetTdtTime(puTdtTime);
    if(u16ServiceID > dbsf_pstEpgPrgList->u16ServiceID)
    {
        pstEpgListNode = dbsf_pstEpgPrgList->pNextPrgNode;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pNextPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }
    else
    {
        pstEpgListNode = dbsf_pstEpgPrgList;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pPrevPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }

    if(1 == u8Find )
    {
        dbsf_pstEpgPrgList = pstEpgListNode;
        /*Free old node*/
        pstEventList = pstEpgListNode->pEventList;
        while(pstEventList)
        {
            dbsf_GetEndTime(pstEventList->uStartTime,pstEventList->uDutationTime,puEndTime);
            if(FIRST_LATE == DBSF_CompareTime(puTdtTime, puEndTime, 5))
            {
                pstEpgListNode->pEventList = pstEventList->pNextEventNode;
                if(MM_NULL != pstEventList->event_name)
                {
                    OSPFree(pstEventList->event_name);
                }
                if(MM_NULL != pstEventList->item_description)
                {
                    OSPFree(pstEventList->item_description);
                }
                OSPFree(pstEventList);
                pstEventList = pstEpgListNode->pEventList;
            }
            else
            {
                break;
            }
        }
        
        /*Free old node*/
        pstEventList = pstEpgListNode->pEventList;
        if(stCurTime.year == stSysTime.year&&stCurTime.month==stSysTime.month&&stCurTime.date == stSysTime.date)
        {
            MBT_U8 puAdjustTime[5];
            TIMER_M sTEndTime;
            while(pstEventList)
            {
                dbsf_GetEndTime(pstEventList->uStartTime, pstEventList->uDutationTime, puAdjustTime);
                DBSF_TdtTime2SystemTime(pstEventList->uStartTime,&sTStartTime);
                DBSF_TdtTime2SystemTime(puAdjustTime,&sTEndTime);
                if((stCurTime.year == sTStartTime.year&&stCurTime.month==sTStartTime.month&&stCurTime.date == sTStartTime.date)||(stCurTime.year == sTEndTime.year&&stCurTime.month==sTEndTime.month&&stCurTime.date == sTEndTime.date))
                {
                    if(pu16EventId[iTotalevent]  != pstEventList->event_id)
                    {
                        *pUpdate = MM_TRUE;
                        pu16EventId[iTotalevent] = pstEventList->event_id;
                    }
                    iTotalevent++;
                    if(iTotalevent >= 1000)/*不允许超过1000个*/
                    {
                        break;
                    }
                }
                else
                {
                    if(iTotalevent)
                    {
                        break;
                    }
                }
                pstEventList = pstEventList->pNextEventNode;
            }
        }
        else
        {
            while(pstEventList)
            {
                DBSF_TdtTime2SystemTime(pstEventList->uStartTime,&sTStartTime);
                if(stCurTime.year == sTStartTime.year&&stCurTime.month==sTStartTime.month&&stCurTime.date == sTStartTime.date)
                {
                    if(pu16EventId[iTotalevent]  != pstEventList->event_id)
                    {
                        *pUpdate = MM_TRUE;
                        pu16EventId[iTotalevent] = pstEventList->event_id;
                    }
                    iTotalevent++;
                    if(iTotalevent >= 1000)/*不允许超过1000个*/
                    {
                        break;
                    }
                }
                else
                {
                    if(iTotalevent)
                    {
                        break;
                    }
                }
                pstEventList = pstEventList->pNextEventNode;
            }
        }
    }
    Sem_EpgList_V();
    return iTotalevent;
}

MBT_S32 DBSF_GetTwoHourEventNumber(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,TIMER_M stCurTime,MBT_U16 *pu16EventId,MBT_BOOL *pUpdate)
{
    DBST_EVENT *pstEventList;
    TIMER_M sTStartTime;
    TIMER_M stSysTime;
    MBT_U8 u8Find;
    MBT_U8 puTdtTime[5];
    MBT_U8 puEndTime[5];
    EPG_PRG_NODE *pstEpgListNode;
    MBT_S32 iTotalevent  = 0;

	MBT_U8 puAdjustTime[5];
	TIMER_M sTEndTime;
    if(MM_NULL == pu16EventId||MM_NULL == pUpdate)
    {
        return iTotalevent;
    }
    *pUpdate = MM_FALSE;
    Sem_EpgList_P();
    if(MM_NULL == dbsf_pstEpgPrgList)
    {
        Sem_EpgList_V();
        return 0;
    }
    u8Find = 0;
    TMF_GetSysTime(&stSysTime);
    dbsf_MntGetTdtTime(puTdtTime);
    if(u16ServiceID > dbsf_pstEpgPrgList->u16ServiceID)
    {
        pstEpgListNode = dbsf_pstEpgPrgList->pNextPrgNode;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pNextPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }
    else
    {
        pstEpgListNode = dbsf_pstEpgPrgList;
        do
        {
            if( pstEpgListNode->u16ServiceID == u16ServiceID)
            {
                if(pstEpgListNode->u32TransInfo == u32TransInfo)
                {
                    u8Find = 1;
                    break;
                }
            }
            pstEpgListNode = pstEpgListNode->pPrevPrgNode;
        }while(pstEpgListNode != dbsf_pstEpgPrgList);
    }

    if(1 == u8Find )
    {
        dbsf_pstEpgPrgList = pstEpgListNode;
        /*Free old node*/
        pstEventList = pstEpgListNode->pEventList;
        while(pstEventList)
        {
            dbsf_GetEndTime(pstEventList->uStartTime,pstEventList->uDutationTime,puEndTime);
            if(FIRST_LATE == DBSF_CompareTime(puTdtTime, puEndTime, 5))
            {
                pstEpgListNode->pEventList = pstEventList->pNextEventNode;
                if(MM_NULL != pstEventList->event_name)
                {
                    OSPFree(pstEventList->event_name);
                }
                if(MM_NULL != pstEventList->item_description)
                {
                    OSPFree(pstEventList->item_description);
                }
                OSPFree(pstEventList);
                pstEventList = pstEpgListNode->pEventList;
            }
            else
            {
                break;
            }
        }
        
        /*Free old node*/
        pstEventList = pstEpgListNode->pEventList;
		while(pstEventList)
		{
			dbsf_GetEndTime(pstEventList->uStartTime, pstEventList->uDutationTime, puAdjustTime);
			DBSF_TdtTime2SystemTime(pstEventList->uStartTime,&sTStartTime);
			DBSF_TdtTime2SystemTime(puAdjustTime,&sTEndTime);
			sTStartTime.u32UtcTimeSecond = sTStartTime.u32UtcTimeSecond - sTStartTime.u32UtcTimeSecond%60;
			sTEndTime.u32UtcTimeSecond = sTEndTime.u32UtcTimeSecond - sTEndTime.u32UtcTimeSecond%60;
			if((stCurTime.u32UtcTimeSecond >= sTStartTime.u32UtcTimeSecond&&stCurTime.u32UtcTimeSecond<sTEndTime.u32UtcTimeSecond)||(stCurTime.u32UtcTimeSecond <= sTStartTime.u32UtcTimeSecond&&(stCurTime.u32UtcTimeSecond + UTC_2HOUR_SECOND)>sTStartTime.u32UtcTimeSecond))
			{
				if(pu16EventId[iTotalevent]  != pstEventList->event_id)
				{
					*pUpdate = MM_TRUE;
					pu16EventId[iTotalevent] = pstEventList->event_id;
				}
				iTotalevent++;
				if(iTotalevent >= 60)/*不允许超过60个*/
				{
					break;
				}
			}
			else
			{
				if(iTotalevent)
				{
					break;
				}
			}
			pstEventList = pstEventList->pNextEventNode;
		}
    }
	pu16EventId[iTotalevent] = 0;
    Sem_EpgList_V();
    return iTotalevent;
}




