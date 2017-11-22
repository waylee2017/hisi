/*******************************************************************************

File name   : sr_section.c
Description : Section filter implementation
Revision    :  1.2.0

COPYRIGHT (C) STMicroelectronics 2003.

Date		 Name        Modification
----		 ----        ------------
25-06-2004   Louie       Adpated to 5517FTACI Beta tree
14-03-2004   TM          Adapted to Alpha1 tree
17-03-2004	 CS          Adapted to HD STB software	Architecture
10.07-2003	 BKP         Created
                  
*********************************************************************************/

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "mm_common.h"
#include "apptimer.h"
#include "section_api.h"
#include "ospctr.h"

#define m_MaxDataParseChannel 2
#define MAX_NUMBER_OF_FILTERS              32
#define ptim_invalideFilterHandle  0xffffffff
#define ptim_invalideChannelHandle  0xffffffff

typedef enum _m_srctr_channle_work_status_e
{
    MM_CHANNLE_IDLE,					/* no section filter req for this slot */
    MM_CHANNLE_WORK				/* filtering is	in progress */
} MM_SRCTR_ChannelWorkState_E;


typedef enum _m_srctr_filter_status_e
{
    MM_FILTER_FREE,			        /* no section filter req for this slot */
    MM_FILTER_IN_USE				/* filtering is	in progress */
} MM_SRCTR_FilterState_E;

typedef enum _m_srctr_filter_work_status_e
{
    MM_FILTER_IDLE,			        /* no section filter req for this slot */
    MM_FILTER_WORK				/* filtering is	in progress */
} MM_SRCTR_FilterWorkState_E;

typedef struct section_ver_bytes
{
    MBT_U32 ucVerData[2];
    struct section_ver_bytes *pstNextHeadData;
}SECTION_VER_DATA;

typedef struct _callback_list_
{
   ParseCallBack    ParseSectionCall;
   MBT_U16 u16SectNum;
   MBT_U8 u8TimerHandle;   
   MBT_U8 u8Reserved;   
   struct _callback_list_ *pNextCallNode;
}CALLBACKLIST;


typedef struct _m_srctr_filter_ctr_t
{
   MBT_U8	FilterData [8];   
   MBT_U8	FilterMask [8];
   MBT_U8 ucFilterMode;   
   MBT_U16 u16PID;   
   MET_PTI_FilterHandle_T stFCTRFilterHandle;
   CALLBACKLIST *pstCallBackList;
   SECTION_VER_DATA *pstSectionVerData; 
   struct _m_srctr_filter_ctr_t*pstNextFilter;
}MM_SRCTR_FilterCTR_T;

typedef struct _m_srctr_channel_event_msg_t
{      
   MET_PTI_FilterHandle_T	stFilterHandle;			
   MBT_U8*		         pu8Data;
   MBT_S16                      iMsgLen;
   MET_PTI_PID_T          stCurPid;
}MM_SRCTR_FilterEventMsg_T;

/*---------------------External Functions----------------------------------------*/
/*------------------------Global Variable-----------------------------------------*/


static MM_SRCTR_FilterCTR_T *srstv_pstFilterCTRInfo = MM_NULL;
static MET_PTI_FilterHandle_T srstv_stMonitorFilter[MAX_MONITOR_SECTION];
static MET_Task_T srstv_DescTask = MM_INVALID_HANDLE;
static MET_Sem_T srstv_PtiCtrInfoAccess = MM_INVALID_HANDLE;
static MET_Msg_T srstv_SectionMsg = MM_INVALID_HANDLE;
static MBT_U8 srstv_u8DescRunning = 1;

#define Sem_Pti_P()  MLMF_Sem_Wait(srstv_PtiCtrInfoAccess,MM_SYS_TIME_INIFIE)


#define Sem_Pti_V()  MLMF_Sem_Release(srstv_PtiCtrInfoAccess)


//#define SECTION_DEBUG(x)   MLMF_Print x
#define SECTION_DEBUG(x) 


/*-------------------------Local Variable-----------------------------------------*/

/*-------------------------External Variables-----------------------------------------*/

/*-------------------------Local Functions----------------------------------------*/
static MBT_VOID srstf_FreeAllVerData(MM_SRCTR_FilterCTR_T * pstFilterCtrInfo);
static MBT_VOID srstf_FreeQueueList(MM_SRCTR_FilterCTR_T * pstFilterCtrInfo);   
static MBT_VOID srstf_AddQueueList(MM_SRCTR_FilterCTR_T * pstFilterCtrInfo,ParseCallBack ParseTable,MBT_U32 u32WaitSeconds,Timer_TriggerNotifyCall pTimeNotifyCall,MET_PTI_PID_T stPid);
static MBT_VOID srstf_ResetQueueList(MM_SRCTR_FilterCTR_T *pstFilterCtrInfo);
static inline MBT_BOOL srstf_SectionSame(MM_SRCTR_FilterCTR_T * pstFilterCtrInfo, MBT_U32 * pstTempBuffer);


/***************************************************************************/
MMT_STB_ErrorCode_E SRSTF_SectionFilterInit(MBT_VOID)
{
    MBT_U32 i;
    if(MM_INVALID_HANDLE == srstv_PtiCtrInfoAccess)
    {
        MLMF_Sem_Create(&srstv_PtiCtrInfoAccess,1);
        
        for(i = 0;i < MAX_MONITOR_SECTION;i++)
        {
            srstv_stMonitorFilter[i] = ptim_invalideFilterHandle;
        }
    }
    
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E SRSTF_SectionFilterTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != srstv_PtiCtrInfoAccess)
    {
        MLMF_Sem_Destroy(srstv_PtiCtrInfoAccess);
        srstv_PtiCtrInfoAccess = MM_INVALID_HANDLE;
    }
    return MM_NO_ERROR;
}

static MBT_VOID SRSTF_DescData(MBT_VOID *pvParam)
{
    MM_SRCTR_FilterEventMsg_T  stMsg;
    ParseCallBack GetParseCall[MAX_FILTER_PER_SLOT];
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo;
    CALLBACKLIST *pstCallBackList;
    MET_PTI_FilterHandle_T stFilterHandle[MAX_FILTER_PER_SLOT];	
    MBT_S32 iTemp;
    MBT_S32 iParsTableNum = 0;

    while(srstv_u8DescRunning)
    {
        if(MM_NO_ERROR == MLMF_Msg_WaitMsg(srstv_SectionMsg,&stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE))
        {
            iParsTableNum = 0;
            Sem_Pti_P();  
            pstFilterCtrInfo = srstv_pstFilterCTRInfo;
            while(pstFilterCtrInfo)
            {
                if(stMsg.stFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
                {
                    if (MM_FALSE == srstf_SectionSame( pstFilterCtrInfo,(MBT_U32 *)stMsg.pu8Data))
                    {
                        pstCallBackList = pstFilterCtrInfo->pstCallBackList;
                        while(pstCallBackList)
                        {
                            GetParseCall[iParsTableNum] = pstCallBackList->ParseSectionCall;
                            stFilterHandle[iParsTableNum] = pstFilterCtrInfo->stFCTRFilterHandle;
                            iParsTableNum++;                            
                            if(0xff != pstCallBackList->u8TimerHandle)
                            {
                                TMF_CleanDbsTimer(pstCallBackList->u8TimerHandle);
                                pstCallBackList->u8TimerHandle = 0xff;
                            }
                            pstCallBackList = pstCallBackList->pNextCallNode;
                        }
                    }

                    break;
                }
                 pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
            }
              
            Sem_Pti_V();	
           /* if(0 == iParsTableNum)
            {
                SECTION_DEBUG(("SRSTF_DescData get section tableid = %x pid = %d\n",stMsg.pu8Data[0],stMsg.stCurPid));
            }*/
            
            for(iTemp = 0;iTemp < iParsTableNum;iTemp++)
            {
                GetParseCall[iTemp](stMsg.stCurPid,stFilterHandle[iTemp],stMsg.pu8Data,stMsg.iMsgLen);
            }

            MLMF_PTI_FreeSectionBuffer(stMsg.stFilterHandle,stMsg.pu8Data);
        }
    }
    
    MLMF_Task_Exit();
}

static MMT_STB_ErrorCode_E srstf_SectionEventCall(MET_PTI_PID_T stCurPid,MBT_U8 *pbuff, MBT_U32 u32Len,MET_PTI_FilterHandle_T  stFileterHanel)
{
    MMT_STB_ErrorCode_E stRet = MM_ERROR_TIMEOUT;

    if(srstv_SectionMsg != MM_INVALID_HANDLE)
    {
        MM_SRCTR_FilterEventMsg_T  stMsg;
        memset(&stMsg,0,sizeof(stMsg));
        stMsg.stCurPid = stCurPid;
        stMsg.pu8Data = pbuff;
        stMsg.iMsgLen = (MBT_S16)u32Len;
        stMsg.stFilterHandle   = stFileterHanel;
        stRet = MLMF_Msg_SendMsg(srstv_SectionMsg, &stMsg,sizeof(stMsg),MM_SYS_TIME_IMEDIEA);                          
    }
    return stRet;
}

MBT_U32 SRSTF_OpenDataParseChannel(MBT_U32 uPriority,MBT_U32 iStackSize)
{  
    MBT_CHAR acDescName[20];
    MLMF_Msg_Create(sizeof(MM_SRCTR_FilterEventMsg_T),256,&srstv_SectionMsg);
    MLMF_PTI_SetNotify(srstf_SectionEventCall);
    sprintf(acDescName,"rcv%04d",MLMF_SYS_GetMS());
    MLMF_Task_Create(SRSTF_DescData, 
                                    MM_NULL, 
                                    iStackSize, 
                                    uPriority, 
                                    &srstv_DescTask,
                                    acDescName);
    return 1;
}

MBT_VOID SRSTF_CloseDataParseChannel(MBT_U32 Handle)
{
    srstv_u8DescRunning = 0;
    MLMF_Task_Destroy(srstv_DescTask);
    MLMF_Msg_Destroy(srstv_SectionMsg);
    srstv_DescTask = MM_INVALID_HANDLE;
    srstv_SectionMsg = MM_INVALID_HANDLE;
}



static MMT_STB_ErrorCode_E srstf_PtiStopFilter(MET_PTI_FilterHandle_T stFilterHandle)
{
    MM_SRCTR_FilterCTR_T * pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    while(pstFilterCtrInfo)
    {
        if(stFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
        {
            break;
        }
        pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
    }

    if(MM_NULL == pstFilterCtrInfo)
    {
        return MM_ERROR_INVALID_HANDLE;
    }

    MLMF_PTI_DisableFilter(stFilterHandle);
    srstf_FreeAllVerData(pstFilterCtrInfo);  
    
    return MM_NO_ERROR;
} /*srstf_PtiStopFilter ()*/

/*
static MMT_STB_ErrorCode_E srstf_PtiFree( ParseCallBack ParseTable,MET_PTI_FilterHandle_T stFilterHandle)
{
    MM_SRCTR_FilterCTR_T * pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    MM_SRCTR_FilterCTR_T *pstPrevFilterCtrInfo = MM_NULL;
    while(pstFilterCtrInfo)
    {
        if(stFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
        {
            break;
        }
        pstPrevFilterCtrInfo = pstFilterCtrInfo;    
        pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
    }

    if(MM_NULL == pstFilterCtrInfo)
    {
        return MM_ERROR_INVALID_HANDLE;
    }

    MLMF_PTI_DisableFilter(stFilterHandle);
    MLMF_PTI_DestroyFilter(stFilterHandle);

    if(MM_NULL == pstPrevFilterCtrInfo)
    {
        srstv_pstFilterCTRInfo = pstFilterCtrInfo->pstNextFilter;
    }
    else
    {
        pstPrevFilterCtrInfo->pstNextFilter = pstFilterCtrInfo->pstNextFilter;
    }
    
    srstf_FreeAllVerData(pstFilterCtrInfo);  
    srstf_FreeQueueList(pstFilterCtrInfo);
    MLMF_Free(pstFilterCtrInfo);
    
    return MM_NO_ERROR;
}*/
/*srstf_PtiFree ()*/

static MMT_PTI_DataSrc_E stDataScr = MM_PTI_HW_INJECT;

void srstf_SetDataScr(MBT_U8 DataScr)
{
    stDataScr = (MMT_PTI_DataSrc_E)DataScr;
}

static MMT_STB_ErrorCode_E srstf_PtiRequest( ParseCallBack ParseTable,
                                                            MET_PTI_PID_T stPid, 
                                                            MBT_U32 u32SlotBuffer, 
                                                            MBT_U8 * pstData, 
                                                            MBT_U8 * pstMask, 
                                                            MBT_U32 wide,
                                                            MBT_U8 u32WaitSeconds,
                                                            Timer_TriggerNotifyCall pTimeNotifyCall,
                                                            MBT_U8 uFilterMode,
                                                            MET_PTI_FilterHandle_T *pstFilterHandle)
{
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo;
    MET_PTI_FilterHandle_T stFilterHandle;
    MST_PTI_MaskData_T FilterValues;
    MMT_STB_ErrorCode_E stRet = MM_ERROR_NO_FREE_HANDLES;
    
    
    SECTION_DEBUG(("srstf_PtiRequest No channel createnew\n"));
    if(pstData[0] == 0x80 || pstData[0] == 0x81)
    {
        stRet = MLMF_PTI_CreateFilter(stPid,u32SlotBuffer,&stFilterHandle,stDataScr);
    }
    else
    {
        stRet = MLMF_PTI_CreateFilter(stPid,u32SlotBuffer,&stFilterHandle,MM_PTI_HW_INJECT);
    }
    if(MM_NO_ERROR != stRet) 
    {
        return stRet;
    }
    
    /* setup the filter DATA & MASK. */
    memset(&FilterValues,0,sizeof(MST_PTI_MaskData_T));
    memcpy(FilterValues.filter,pstData,wide);
    memcpy(FilterValues.mask,pstMask,wide);
    FilterValues.filter_len = wide;
    stRet = MLMF_PTI_SetFilter(stFilterHandle,&(FilterValues));
    if (MM_NO_ERROR != stRet) 
    {
        MLMF_PTI_DestroyFilter(stFilterHandle);
        return stRet;
    }
    
    stRet = MLMF_PTI_EnableFilter(stFilterHandle);
    if (MM_NO_ERROR != stRet) 
    {
        MLMF_PTI_DestroyFilter(stFilterHandle);
        return stRet;
    }
    

    pstFilterCtrInfo = MLMF_Malloc(sizeof(MM_SRCTR_FilterCTR_T));
    if(MM_NULL == pstFilterCtrInfo)
    {
        MLMF_PTI_DestroyFilter(stFilterHandle);
        return MM_ERROR_NO_MEMORY;
    }

    memset(pstFilterCtrInfo,0,sizeof(MM_SRCTR_FilterCTR_T));
    pstFilterCtrInfo->stFCTRFilterHandle = stFilterHandle;
    pstFilterCtrInfo->ucFilterMode = uFilterMode;
    pstFilterCtrInfo->u16PID = stPid;
    memcpy(pstFilterCtrInfo->FilterData,pstData,wide);
    memcpy(pstFilterCtrInfo->FilterMask,pstMask,wide);
    srstf_AddQueueList(pstFilterCtrInfo,ParseTable,u32WaitSeconds,pTimeNotifyCall,stPid);
    pstFilterCtrInfo->pstNextFilter = srstv_pstFilterCTRInfo;
    srstv_pstFilterCTRInfo = pstFilterCtrInfo;
    
    if(MM_NULL != pstFilterHandle)
    {
        *pstFilterHandle = stFilterHandle;
    }

    return stRet;
} /*srstf_PtiRequest ()*/





MMT_STB_ErrorCode_E SRSTF_DeleteFilter(MET_PTI_FilterHandle_T stFilterHandle)
{
    MMT_STB_ErrorCode_E Error = MM_NO_ERROR;
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo;
    MM_SRCTR_FilterCTR_T *pstPrevFilterCtr;

    Sem_Pti_P();
    /*指定filter管理数据置空*/
    pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    pstPrevFilterCtr = MM_NULL;
    while(pstFilterCtrInfo)
    {
        if(stFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
        {
            break;
        }
        pstPrevFilterCtr = pstFilterCtrInfo;
        pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
    }

    if(MM_NULL == pstFilterCtrInfo)
    {
        Sem_Pti_V();
        return Error;
    }



    if(MM_NULL == pstPrevFilterCtr)
    {
        srstv_pstFilterCTRInfo = pstFilterCtrInfo->pstNextFilter;
    }
    else
    {
        pstPrevFilterCtr->pstNextFilter = pstFilterCtrInfo->pstNextFilter;
    }
    
    Error |= MLMF_PTI_DisableFilter(stFilterHandle);
    Error |= MLMF_PTI_DestroyFilter(stFilterHandle);

    srstf_FreeAllVerData(pstFilterCtrInfo);  
    srstf_FreeQueueList(pstFilterCtrInfo);
    MLMF_Free(pstFilterCtrInfo);
    Sem_Pti_V();
    return Error;
}

    



MBT_BOOL SRSTF_FilterStopOrNot(MET_PTI_FilterHandle_T iFilterHandle,MBT_S32 iTatleSection,ParseCallBack ParseCall)
{
    MBT_BOOL bRet = MM_FALSE;
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo;
    MBT_BOOL bFilterShare;
    MBT_VOID **pPoint;
    CALLBACKLIST *pstHead;

    Sem_Pti_P();
    pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    while(pstFilterCtrInfo)
    {
        if(iFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
        {
            break;
        }
        pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
    }

    if(MM_NULL == pstFilterCtrInfo)
    {
        Sem_Pti_V();
        return MM_TRUE;
    }
    bFilterShare = MM_FALSE;
    pstHead =pstFilterCtrInfo->pstCallBackList;

    if(pstHead->ParseSectionCall == ParseCall)
    {
        pPoint = (MBT_VOID **)(&(pstFilterCtrInfo->pstCallBackList));
        if(MM_NULL != pstHead->pNextCallNode)
        {
            bFilterShare = MM_TRUE;
        }
    }
    else
    {
        bFilterShare = MM_TRUE;
        pPoint = (MBT_VOID **)(&(pstHead->pNextCallNode));
        pstHead = pstHead->pNextCallNode;
        while(pstHead)
        {
            if(pstHead->ParseSectionCall == ParseCall)
            {
                break;
            }
            pPoint = (MBT_VOID **)(&(pstHead->pNextCallNode));
            pstHead = pstHead->pNextCallNode;
        }
    }

    if(pstHead)
    {
        pstHead->u16SectNum++;
        if(pstHead->u16SectNum >= iTatleSection)
        {
            *pPoint = pstHead->pNextCallNode;
            MLMF_Free(pstHead);
            if(MM_FALSE == bFilterShare)
            {
                MLMF_PTI_DisableFilter(pstFilterCtrInfo->stFCTRFilterHandle);
                srstf_FreeAllVerData(pstFilterCtrInfo);
            }
            bRet = MM_TRUE;
        }
    }
    else
    {
        if(MM_NULL == pstFilterCtrInfo->pstCallBackList)
        {
            MLMF_PTI_DisableFilter(pstFilterCtrInfo->stFCTRFilterHandle);
            srstf_FreeAllVerData(pstFilterCtrInfo);
        }
        bRet = MM_TRUE;
    }

    Sem_Pti_V();
    return bRet;
}




MBT_VOID SRSTF_ClsTrigerTimer(MET_PTI_FilterHandle_T iFilterHandle,ParseCallBack ParseCall)
{
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo;
    CALLBACKLIST *pstCallBackList;

    if(MM_NULL == ParseCall)
    {
        return;
    }

    Sem_Pti_P();
    pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    while(pstFilterCtrInfo)
    {
        if(iFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
        {
            pstCallBackList = pstFilterCtrInfo->pstCallBackList;
            while(pstCallBackList)
            {
                if(pstCallBackList->ParseSectionCall == ParseCall)
                {
                    break;
                }
                pstCallBackList = pstCallBackList->pNextCallNode;
            }

            if(MM_NULL != pstCallBackList)
            {
                pstCallBackList->u8TimerHandle = 0xff;
            }
            break;
        }
        pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
    }
    Sem_Pti_V();
}


MMT_STB_ErrorCode_E SRSTF_SrchSectTable( ParseCallBack ParseTable,
                                                                    MET_PTI_PID_T stPid, 
                                                                    MBT_U32 u32SlotBuffer, 
                                                                    MBT_U8 * pstData, 
                                                                    MBT_U8 * pstMask, 
                                                                    MBT_U32 wide,
                                                                    MBT_U8 u32WaitSeconds,
                                                                    Timer_TriggerNotifyCall pTimeNotifyCall,
                                                                    MBT_U8 uFilterMode,
                                                                    MET_PTI_FilterHandle_T *pstFilterHandle)
{
    MMT_STB_ErrorCode_E stRet;
    Sem_Pti_P();
    stRet = srstf_PtiRequest(ParseTable,stPid,u32SlotBuffer, pstData, pstMask,wide,u32WaitSeconds, pTimeNotifyCall, uFilterMode,pstFilterHandle);
    Sem_Pti_V();
    return stRet;
}


MMT_STB_ErrorCode_E SRSTF_SetSpecifyFilter(MONITER_SECTION iFilterIndex,
                                                                ParseCallBack ParseTable,
                                                                Timer_TriggerNotifyCall pTimeNotifyCall,
                                                                MBT_U8* pbyFilter,
                                                                MBT_U8* pbyMask,
                                                                MBT_U8 byLen, 
                                                                MET_PTI_PID_T stPid, 
                                                                MBT_S32 iSlotBuffer,
                                                                MBT_U8 u32WaitSeconds,
                                                                MBT_U8 uFilterState,
                                                                MET_PTI_FilterHandle_T *pstFilterHandle)
{
    MET_PTI_FilterHandle_T stFilterHandle ;
    MMT_STB_ErrorCode_E stRet = MM_ERROR_NO_FREE_HANDLES;
    if(iFilterIndex > MAX_MONITOR_SECTION)
    {
        return stRet;
    }

    if(byLen > FILTER_DEPTH_SIZE)
    {
        byLen = FILTER_DEPTH_SIZE;
    }

    Sem_Pti_P(); 
    //MLMF_Print("SRSTF_SetSpecifyFilter pid = %x\n",stPid);
    stFilterHandle = srstv_stMonitorFilter[iFilterIndex];
    
    if(ptim_invalideFilterHandle != stFilterHandle)
    {
        MM_SRCTR_FilterCTR_T * pstFilterCtrInfo;
        MM_SRCTR_FilterCTR_T *pstPrevFilterCtrInfo;

        pstFilterCtrInfo = srstv_pstFilterCTRInfo;
        pstPrevFilterCtrInfo = MM_NULL;

        while(pstFilterCtrInfo)
        {
            if(stFilterHandle == pstFilterCtrInfo->stFCTRFilterHandle)
            {
                break;
            }
            pstPrevFilterCtrInfo = pstFilterCtrInfo;    
            pstFilterCtrInfo = pstFilterCtrInfo->pstNextFilter;
        }
        

        if(MM_NULL != pstFilterCtrInfo)
        {
            if(pstFilterCtrInfo->u16PID == stPid&&0 == memcmp(pstFilterCtrInfo->FilterData,pbyFilter,byLen)&&0 == memcmp(pstFilterCtrInfo->FilterMask,pbyMask,byLen))
            {
               // MLMF_Print("Same filter restart\n");
                pstFilterCtrInfo->ucFilterMode = uFilterState;
                srstf_FreeAllVerData(pstFilterCtrInfo);
                srstf_AddQueueList(pstFilterCtrInfo,ParseTable,u32WaitSeconds,pTimeNotifyCall,stPid);
                MLMF_PTI_EnableFilter(stFilterHandle);
                Sem_Pti_V();  
                if(MM_NULL != pstFilterHandle)
                {
                    *pstFilterHandle = stFilterHandle;
                }
                return MM_NO_ERROR;
            }

           // MLMF_Print("diffrent req free old filter pstFilterCtrInfo->u16PID %x stPid %x oldtableid %x newtableid %x\n",pstFilterCtrInfo->u16PID,stPid,pstFilterCtrInfo->FilterData[0],pbyFilter[0]);
            
            MLMF_PTI_DisableFilter(stFilterHandle);
            MLMF_PTI_DestroyFilter(stFilterHandle);
            
            if(MM_NULL == pstPrevFilterCtrInfo)
            {
                srstv_pstFilterCTRInfo = pstFilterCtrInfo->pstNextFilter;
            }
            else
            {
                pstPrevFilterCtrInfo->pstNextFilter = pstFilterCtrInfo->pstNextFilter;
            }
            
            srstf_FreeAllVerData(pstFilterCtrInfo);  
            srstf_FreeQueueList(pstFilterCtrInfo);
            MLMF_Free(pstFilterCtrInfo);
        }
    }

    //MLMF_Print("diffrent req req new filter\n");
    stFilterHandle = ptim_invalideFilterHandle;
    stRet = srstf_PtiRequest( ParseTable,
                                stPid, 
                                iSlotBuffer,
                                pbyFilter,
                                pbyMask,
                                byLen, 
                                u32WaitSeconds,
                                pTimeNotifyCall,
                                uFilterState,
                                &stFilterHandle);
    if (MM_NO_ERROR == stRet)
    {   
        srstv_stMonitorFilter[iFilterIndex] = stFilterHandle;
        //MLMF_Print("SRSTF_SetSpecifyFilter  srstf_PtiRequest OK stFilterHandle = %d\n",stFilterHandle);
    }   
    else
    {
        //MLMF_Print("SRSTF_SetSpecifyFilter  srstf_PtiRequest faile stRet = %d\n",stRet);
    }
    Sem_Pti_V();   
    
    
    if(MM_NULL != pstFilterHandle)
    {
        *pstFilterHandle = stFilterHandle;
    }
    return stRet;
}

MMT_STB_ErrorCode_E SRSTF_StopSpecifyFilter(MONITER_SECTION iFilterIndex,ParseCallBack ParseTable)
{
    Sem_Pti_P(); 
    if(ptim_invalideFilterHandle != srstv_stMonitorFilter[iFilterIndex])
    {
        srstf_PtiStopFilter(srstv_stMonitorFilter[iFilterIndex]);
    }
    Sem_Pti_V();              
    return MM_NO_ERROR;
}


MONITER_SECTION SRSTF_GetMonitorFilterIndex(MET_PTI_FilterHandle_T stFilterHandle)
{
    MONITER_SECTION u8Ret = MAX_MONITOR_SECTION;
    MBT_U32 u;

    Sem_Pti_P(); 
    for(u = 0;u < MAX_MONITOR_SECTION;u ++)
    {
        if(srstv_stMonitorFilter[u] == stFilterHandle)
        {
            u8Ret = u;
            break;
        }            
    }        

    Sem_Pti_V();              
    return u8Ret;
}




/***********************************************************************************/
MMT_STB_ErrorCode_E SRSTF_CancelAllSectionReq(MBT_VOID)
{
    MONITER_SECTION iFilterIndex;//ShareSlot;
    MM_SRCTR_FilterCTR_T *pstFilterCtrInfo ;
    MMT_STB_ErrorCode_E stRet = MM_NO_ERROR;

    Sem_Pti_P();  
    pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    while (pstFilterCtrInfo)
    {
        srstv_pstFilterCTRInfo = pstFilterCtrInfo->pstNextFilter;
        stRet |= MLMF_PTI_DisableFilter(pstFilterCtrInfo->stFCTRFilterHandle);
        stRet |= MLMF_PTI_DestroyFilter(pstFilterCtrInfo->stFCTRFilterHandle);
        srstf_FreeQueueList(pstFilterCtrInfo);
        srstf_FreeAllVerData(pstFilterCtrInfo);
        MLMF_Free(pstFilterCtrInfo);        
        pstFilterCtrInfo = srstv_pstFilterCTRInfo;
    }

    for(iFilterIndex = 0;iFilterIndex < MAX_MONITOR_SECTION;iFilterIndex++)
    {
        srstv_stMonitorFilter[iFilterIndex] = ptim_invalideFilterHandle;
    }
    Sem_Pti_V();
    return  stRet;
}

/************************************************************************************************/


static MBT_VOID srstf_FreeAllVerData(MM_SRCTR_FilterCTR_T *pstFilterCtrInfo)
{
    SECTION_VER_DATA *pstHead =pstFilterCtrInfo->pstSectionVerData;
    SECTION_VER_DATA *pstPrevHead;
    while(pstHead)
    {
        pstPrevHead = pstHead;
        pstHead = pstHead->pstNextHeadData;
        MLMF_Free( pstPrevHead);
    }
    pstFilterCtrInfo->pstSectionVerData = MM_NULL;
}

static MBT_VOID srstf_ResetQueueList(MM_SRCTR_FilterCTR_T *pstFilterCtrInfo)
{
    CALLBACKLIST *pstCallHead =pstFilterCtrInfo->pstCallBackList;
    while(pstCallHead)
    {
        pstCallHead->u16SectNum = 0;
        pstCallHead = pstCallHead->pNextCallNode;
    }
}

static MBT_VOID srstf_FreeQueueList(MM_SRCTR_FilterCTR_T *pstFilterCtrInfo)
{
    CALLBACKLIST *pstHead =pstFilterCtrInfo->pstCallBackList;
    CALLBACKLIST *pstPrevHead;
    while(pstHead)
    {
        pstPrevHead = pstHead;
        pstHead = pstHead->pNextCallNode;
        if(0xff != pstPrevHead->u8TimerHandle)
        {
            TMF_CleanDbsTimer(pstPrevHead->u8TimerHandle);
        }
        MLMF_Free( pstPrevHead);
    }
    pstFilterCtrInfo->pstCallBackList = MM_NULL;
}

static MBT_VOID srstf_AddQueueList(MM_SRCTR_FilterCTR_T * pstFilterCtrInfo, ParseCallBack ParseTable,MBT_U32 u32WaitSeconds,Timer_TriggerNotifyCall pTimeNotifyCall,MET_PTI_PID_T stPid)
{
    MBT_U32 u32Para[4];
    CALLBACKLIST *pstHead = pstFilterCtrInfo->pstCallBackList;
    while(pstHead)
    {
        if(ParseTable == pstHead->ParseSectionCall)
        {
            if(0xff != pstHead->u8TimerHandle)
            {
                TMF_CleanDbsTimer(pstHead->u8TimerHandle);
            }
            
            if(MM_NULL == pTimeNotifyCall||0 == u32WaitSeconds)
            {
                pstHead->u8TimerHandle  = 0xff;
            }
            else
            {
                u32Para[0] = pstFilterCtrInfo->stFCTRFilterHandle;
                u32Para[1] = 0;
                u32Para[2] = (MBT_U32)ParseTable;
                u32Para[3] = stPid;
                pstHead->u8TimerHandle  = TMF_SetDbsTimer(pTimeNotifyCall,u32Para,u32WaitSeconds*1000,m_noRepeat);
                SECTION_DEBUG(("--->[%d]Add Set timer:u8TimerHandle = 0x%x u32WaitSeconds = %ld\n",__LINE__,pstHead->u8TimerHandle,u32WaitSeconds));
            }
            return;
        }
        pstHead = pstHead->pNextCallNode;
    }

    pstHead = MLMF_Malloc( sizeof(CALLBACKLIST));
    if(pstHead)
    {
        pstHead->pNextCallNode = pstFilterCtrInfo->pstCallBackList;
        pstHead->ParseSectionCall = ParseTable;        
        pstHead->u16SectNum = 0;         
        
        if(MM_NULL == pTimeNotifyCall||0 == u32WaitSeconds)
        {
            pstHead->u8TimerHandle  = 0xff;
        }
        else
        {
            u32Para[0] = pstFilterCtrInfo->stFCTRFilterHandle;
            u32Para[1] = 0;
            u32Para[2] = (MBT_U32)ParseTable;
            u32Para[3] = stPid;
            pstHead->u8TimerHandle  = TMF_SetDbsTimer(pTimeNotifyCall,u32Para,u32WaitSeconds*1000,m_noRepeat);
            SECTION_DEBUG(("--->[%d]Add Set timer:u8TimerHandle = 0x%x u32WaitSeconds = %ld\n",__LINE__,pstHead->u8TimerHandle,u32WaitSeconds));
        }
        pstFilterCtrInfo->pstCallBackList =  pstHead;
    }
}



static inline MBT_BOOL srstf_SectionSame(MM_SRCTR_FilterCTR_T *pstFilterCtrInfo,MBT_U32 *pstTempBuffer )
{
    //MBT_U8 *pu8Data;
    MBT_U8 *pucVer;
    MBT_U8 *pucPrevVer;
    MBT_U32 *pu32Ver ;
    MBT_U32 u32Count;
    SECTION_VER_DATA *pstHead ;
    MBT_BOOL bSameFound = MM_FALSE;

    switch(pstFilterCtrInfo->ucFilterMode)
    {
        case IPANEL_FILTER_MONITOR_RECEIVE_MODE:  // 监控接收模式
            pstHead = pstFilterCtrInfo->pstSectionVerData;
            //SECTION_DEBUG(("IPANEL_FILTER_MONITOR_RECEIVE_MODE!!pstHead = %x\n",pstHead));
            if(MM_NULL == pstHead)
            {
                pstHead = MLMF_Malloc(sizeof(SECTION_VER_DATA));
                if(MM_NULL == pstHead)
                {
                    break;
                }                    
                pstHead->pstNextHeadData = MM_NULL;
                pu32Ver = pstHead->ucVerData;
                pu32Ver[0] = pstTempBuffer[0];
                pu32Ver[1] = pstTempBuffer[1];
                pstFilterCtrInfo->pstSectionVerData = pstHead;
            }
            else
            {
                pucPrevVer = ((MBT_U8 *)(pstFilterCtrInfo->pstSectionVerData->ucVerData)) + 3;
                pucVer = ((MBT_U8*)pstTempBuffer) + 3;

                if((((pucPrevVer[0] << 8) | pucPrevVer[1]) != ((pucVer[0]<< 8) | pucVer [1]))
                ||((pucPrevVer [2]& 0x3e) != (pucVer [2]& 0x3e)))  //已经改变
                {
                    // 释放已经捕获的历史数据
                    //存储这个extension_id 或version不同的新的段
                    //SECTION_DEBUG(("pmt change!!\n"));
                    pstHead = MLMF_Malloc(sizeof(SECTION_VER_DATA));
                    if(MM_NULL == pstHead)
                    {
                        SECTION_DEBUG(("Error: can't allocate memory for ucSectionData!!\n"));
                        break;
                    }                    
                    pstHead->pstNextHeadData = MM_NULL;
                    pu32Ver = pstHead->ucVerData;
                    pu32Ver[0] = pstTempBuffer[0];
                    pu32Ver[1] = pstTempBuffer[1];
                    srstf_FreeAllVerData(pstFilterCtrInfo);      
                    srstf_ResetQueueList(pstFilterCtrInfo);
                    pstFilterCtrInfo->pstSectionVerData = pstHead;
                }
                else  // 输送无重复数据
                {
                    while(MM_NULL != pstHead)
                    {
                        pu32Ver = pstHead->ucVerData;
                        if(pu32Ver[1] == pstTempBuffer[1]&&pu32Ver[0] == pstTempBuffer[0])
                        {       
                            bSameFound = MM_TRUE;
                            break;
                        }
                        pstHead = pstHead->pstNextHeadData;
                    }

                    if(!bSameFound)  // the section data has been collected
                    {
                        pstHead = MLMF_Malloc(sizeof(SECTION_VER_DATA));
                        if(MM_NULL == pstHead)
                        {
                            SECTION_DEBUG(("Error: can't allocate memory in incoming data 5!!\n"));
                            break;
                        }    

                        pu32Ver = pstHead->ucVerData;
                        pu32Ver[0] = pstTempBuffer[0];
                        pu32Ver[1] = pstTempBuffer[1];
                        pstHead->pstNextHeadData = pstFilterCtrInfo->pstSectionVerData;
                        pstFilterCtrInfo->pstSectionVerData = pstHead;
                    }
                }
            }
            break;
        case IPANEL_STRAIGHT_RECEIVE_MODE:   //直通接收数据模式, 不作重复性判?
            break;
        case IPANEL_BATCH_NO_VERSION_RECEIVE_MODE:  //批量接收模式
            SECTION_DEBUG(("Error: IPANEL_BATCH_NO_VERSION_RECEIVE_MODE\n"));
            break;
        case IPANEL_NO_VERSION_RECEIVE_MODE:   //无重复接收模式
            // SECTION_DEBUG((" IPANEL_NO_VERSION_RECEIVE_MODE\n"));
            //pu8Data = (MBT_U8 *)pstTempBuffer;
            u32Count = 0;
            pstHead = pstFilterCtrInfo->pstSectionVerData;
            //已经有过滤过的段
            while( pstHead)
            {
                pu32Ver = pstHead->ucVerData;
                if(pu32Ver[1] == pstTempBuffer[1]&&pu32Ver[0] == pstTempBuffer[0])
                {       
                    bSameFound = MM_TRUE;
                    break;
                }
                u32Count++;
                pstHead = pstHead->pstNextHeadData;
            }

            if(u32Count > 200)
            {
                SECTION_VER_DATA *pstPrevHead;
                pstHead =pstFilterCtrInfo->pstSectionVerData;
                while(pstHead)
                {
                    pstPrevHead = pstHead;
                    pstHead = pstHead->pstNextHeadData;
                    MLMF_Free( pstPrevHead);
                }
                pstFilterCtrInfo->pstSectionVerData = MM_NULL;
            }
            
            if(!bSameFound)  // the section data has been collected
            {                     
                pstHead = MLMF_Malloc(sizeof(SECTION_VER_DATA));
                if(MM_NULL == pstHead)
                {
                    SECTION_DEBUG(("Error: can't allocate memory in incoming data 5!!\n"));
                    break;
                }    

                pstHead->pstNextHeadData = pstFilterCtrInfo->pstSectionVerData;
                pu32Ver = pstHead->ucVerData;
                pu32Ver[0] = pstTempBuffer[0];
                pu32Ver[1] = pstTempBuffer[1];
                pstFilterCtrInfo->pstSectionVerData = pstHead;
            }
            break;
        default:
            SECTION_DEBUG(("Error:  default MODE\n"));
            break;
    }
    return bSameFound;
}



