/*******************************************************************************

File name   : sr_prgbase.c
Description : Database implementation
Revision    :  1.2.0

COPYRIGHT (C) STMicroelectronics 2003.

Date		Modification				Name
----		------------				----
25.06-2004  Adapted to 5517FTACI Beta tree  Louie
27.07-2003	Added functions to support 		Tony
		The new user interface		

17.07-2003	Modified to adapt to maly_2		BKP
		software architecture
                   
27.12.96	Original Work				THT
*********************************************************************************/
#include "dbs_share.h"

typedef	struct _prg_sort_node_
{
    DBST_PROG *pstService;
    MBT_U8 u8IsOldPrg;
    MBT_U8 u8Reserved;
    MBT_U16 u16ServiceID;                                            
} PRG_SORT_NODE;  

static PRO_LIST_NODE dbsv_stProgramHead = {0,0,MM_NULL};
static PRO_LIST_NODE dbsv_stMntPrgHead = {0,0,MM_NULL};
static MBT_U32 dbsv_u32PrgListType = m_ChannelList;
static MET_Sem_T dbsv_semPrgAccess = MM_INVALID_HANDLE;
static MBT_U8 dbsv_u8PrgListFreeed = 1;
static MBT_U8 dbsv_u8LCNOnOff = 1;/*1打开,0关闭*/
static MBT_U16 dbsv_u16PrevServiceID = dbsm_InvalidID;


static DBSE_StoreType ListMntGetUpdatePrgArray(PRO_LIST_NODE * pstMntPrgList,PRO_LIST_NODE * pstSrchPrgList,DBST_PROG * pstService,MBT_BOOL *pbAddOrDelPrg,MBT_S32 *ps32ValidPrgNum,MBT_S32 *ps32UpdatePrgNum,MBT_BOOL bGetNIT,MBT_BOOL bGetBat,MBT_BOOL bNetworkIDUpdated);

#define Sem_PrgList_P()  MLMF_Sem_Wait(dbsv_semPrgAccess,MM_SYS_TIME_INIFIE) 
                                                        
#define Sem_PrgList_V()  MLMF_Sem_Release(dbsv_semPrgAccess)

/*只有ecm增加时才返回true*/
static MBT_BOOL ListPutEcmCtr2List(DBS_stCAEcmCtr *pstEcmCtr,MBT_U16 u16ListLen,MBT_U16 u16ServiceID,MBT_U16 u16EcmPID,MBT_U16 u16StreamPID)
{
    MBT_U16 i,k,m;
    DBS_stCAEcmCtr *pstFreeNode;
    DBS_st2CAPIDInfo *pstPIDInfo;
    MET_PTI_PID_T *pstStreamPID;
    
    if(MM_NULL == pstEcmCtr)
    {
        return MM_FALSE;
    }

    if(dbsm_InvalidPID == u16EcmPID)
    {
        return MM_FALSE;
    }
    //MLMF_Print("ListPutEcmCtr2List u16ServiceID = %x u16EcmPID = %x\n",u16ServiceID,u16EcmPID);
    pstFreeNode = MM_NULL;
    for(i = 0;i < u16ListLen;i++)
    {
        if(pstEcmCtr[i].u16ServiceID == u16ServiceID)
        {
            pstPIDInfo = pstEcmCtr[i].stDecPidInfo;
            for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k++)
            {
                if(pstPIDInfo[k].stEcmPid == u16EcmPID)
                {
                    pstStreamPID = pstPIDInfo[k].stStreamPid;
                    for(m = 0;m < pstPIDInfo[k].u8StreamPIDNum;m++)
                    {
                        if(pstStreamPID[m] == u16StreamPID)
                        {
                            return MM_FALSE;
                        }
                    }
                    //MLMF_Print("ListPutEcmCtr2List Add streampidnode i = %d k = %d m = %d streampid = %x u16ServiceID = %x u16EcmPID = %x\n",i,k,m,u16StreamPID,u16ServiceID,u16EcmPID);
                    pstStreamPID[m] = u16StreamPID;
                    pstPIDInfo[k].u8StreamPIDNum++;
                    return MM_FALSE;
                }
            }
            //MLMF_Print("ListPutEcmCtr2List Add ecmnode i = %d k = %d streampid = %x u16ServiceID = %x u16EcmPID = %x\n",i,k,u16StreamPID,u16ServiceID,u16EcmPID);
            pstPIDInfo[k].u8Valid = 1;
            pstPIDInfo[k].u8StreamPIDNum = 1;
            pstPIDInfo[k].stStreamPid[0] = u16StreamPID;
            pstPIDInfo[k].stEcmPid = u16EcmPID;
            pstEcmCtr[i].u8EcmPIDNum++;
            return MM_TRUE;
        }
        
        if(0 == pstEcmCtr[i].u8Valid&&MM_NULL == pstFreeNode)
        {
            //MLMF_Print("ListPutEcmCtr2List Add ecctrnode i = %d\n",i);
            pstFreeNode = &pstEcmCtr[i];
        }
    }


    if(MM_NULL != pstFreeNode)
    {
        //MLMF_Print("streampid = %x u16ServiceID = %x u16EcmPID = %x\n",u16StreamPID,u16ServiceID,u16EcmPID);
        pstFreeNode->u8Valid = 1;
        pstFreeNode->u8EcmPIDNum = 1;
        pstFreeNode->u16ServiceID = u16ServiceID;
        pstPIDInfo = pstFreeNode->stDecPidInfo;
        pstPIDInfo[0].u8Valid = 1;
        pstPIDInfo[0].u8StreamPIDNum = 1;
        pstPIDInfo[0].stStreamPid[0] = u16StreamPID;
        pstPIDInfo[0].stEcmPid = u16EcmPID;
        return MM_TRUE;
    }
    return MM_FALSE;
}


static MBT_BOOL ListHaveSamePID(MET_PTI_PID_T stSpecifyPID,PRG_PIDINFO *pstPIDList,MBT_U32 u32PIDNumber)
{
    MBT_BOOL bRet = MM_FALSE;
    MBT_S32 i;
    
    if(MM_NULL == pstPIDList)
    {
        return bRet;
    }
    
    for(i = 0;i < u32PIDNumber;i++)
    {
        if(pstPIDList[i].Pid == stSpecifyPID)
        {
            bRet = MM_TRUE;
            break;
        }
    }

    return bRet;
}

static inline MBT_BOOL ListCheckGenreList(MBT_U16 *pu16BouquetID,MBT_U16 u16BouquetID)
{
    MBT_U16 u16Num = pu16BouquetID[0];
    MBT_U16 *pu16Pos = pu16BouquetID + 1;
    MBT_U8 i;
    
    if(u16Num > m_MaxGenreType)
    {
        return MM_FALSE;
    }
    
    for(i = 0;i < u16Num;i++)
    {
        if(*pu16Pos == u16BouquetID)
        {
            return MM_TRUE;
        }
        pu16Pos++;
    }
    
    return MM_FALSE;
}


static MBT_VOID ListDelInvalidPrgNode(PRO_LIST_NODE *pstPrgList)
{
    PRO_NODE *pListNode;
    PRO_NODE *pBackNode;   
    PRO_NODE *pstHead;   
    MBT_S32 iPrgNum;
    MBT_S32 iVirtPrgNum;
    MBT_S32 iRefNum;
    MBT_S32 s32NumPids;
    MBT_S32 iDummyLcn;
    MBT_BOOL bForceDel;
    MBT_BOOL bForceContinue;
#if (1 == M_SAVE_Prg_NONAME)   
    MBT_S32 iLocalPrgNum;
#endif    
    MBT_S32 i;
    MBT_U16 *pu16RefServiceID;
    
    if(MM_NULL == pstPrgList)
    {
        return;
    }

    if(MM_NULL == pstPrgList->stPrgNode)
    {
        return;
    }

    pu16RefServiceID = OSPMalloc(MAX_NO_OF_PROGRAMS*2);
    if(MM_NULL == pu16RefServiceID)
    {
        return;
    }

    iRefNum = 0;
    iDummyLcn = 1000;
    pstHead = pstPrgList->stPrgNode;
    pListNode = pstHead;    
    do
    {
        if(STTAPI_SERVICE_NVOD_REFERENCE == pListNode->stService.cProgramType)
        {
            pu16RefServiceID[iRefNum] = pListNode->stService.u16ServiceID;
            iRefNum++;
        }
        
        if(dbsm_InvalidLCN == pListNode->stService.usiChannelIndexNo)
        {
            pListNode->stService.usiChannelIndexNo = iDummyLcn;
            iDummyLcn++;
        }
        DBS_DEBUG(("%s 0 type = %x 1 type = %x\n",pListNode->stService.cServiceName,pListNode->stService.Pids[0].Type,pListNode->stService.Pids[1].Type));
        if(STTAPI_SERVICE_TELEVISION == pListNode->stService.cProgramType&&(MM_STREAMTYPE_H264 == pListNode->stService.Pids[0].Type||MM_STREAMTYPE_H264 == pListNode->stService.Pids[1].Type))
        {
            pListNode->stService.u8IsHDPrg = 1;
        }
        
        pListNode->stService.u8ValidMask = PRG_ALL_VALID_MASK;
        pListNode = pListNode->pNextPrgNode;
    }while(pListNode != pstHead);

#if (1 == M_SAVE_Prg_NONAME)   
    iLocalPrgNum = 0;
#endif    
    pstHead = pstPrgList->stPrgNode;
    pListNode = pstHead;    
    do
    {
        bForceContinue = MM_FALSE;            
        bForceDel = MM_FALSE;
        
        if(PRG_ALL_VALID_MASK == (PRG_ALL_VALID_MASK&(pListNode->stService.u8ValidMask)))
        {
            //MLMF_Print("Check cProgramType %d serviceid = %x pmtpid = %x %s  transinfo = %x\n",pListNode->stService.cProgramType,pListNode->stService.u16ServiceID,pListNode->stService.sPmtPid,pListNode->stService.cServiceName,pListNode->stService.stPrgTransInfo.u32TransInfo);
            if(STTAPI_SERVICE_RADIO == pListNode->stService.cProgramType ||STTAPI_SERVICE_TELEVISION == pListNode->stService.cProgramType)
            {
                if(dbsm_InvalidTransInfo == pListNode->stService.stPrgTransInfo.u32TransInfo)
                {
                    bForceDel = MM_TRUE;
                }
                else
                {
                    if(dbsm_InvalidLCN != pListNode->stService.usiChannelIndexNo)
                    {
                        if(' ' == pListNode->stService.cServiceName[0]||0x21 >= (MBT_U8)pListNode->stService.cServiceName[0])
                        {
                            
#if (1 == M_SAVE_Prg_NONAME)   
                            sprintf(pListNode->stService.cServiceName,"LOCAL %d",iLocalPrgNum);
                            iLocalPrgNum++;
#else                            
                            bForceDel = MM_TRUE;
#endif                            
                        }
                    }
                    
                    //MLMF_Print("name %s BouquetNum %d %x\n",pListNode->stService.cServiceName,pListNode->stService.u16BouquetID[0],pListNode->stService.u16BouquetID[1]);
                }
             }
            else if(STTAPI_SERVICE_NVOD_TIME_SHIFT == pListNode->stService.cProgramType)
            {
                for(i = 0;i < iRefNum;i++)
                {
                    if(pListNode->stService.uReferenceServiceID == pu16RefServiceID[i])
                    {
                        break;
                    }
                }
                
                if(i == iRefNum)
                {
                    bForceDel = MM_TRUE;
                }
            }
            else
            {
                if(STTAPI_SERVICE_DATA_BROADCAST < pListNode->stService.cProgramType||STTAPI_SERVICE_RESERVED == pListNode->stService.cProgramType)
                {
                    MBT_BOOL bGetAudioPID = MM_FALSE;
                    MBT_BOOL bGetVideoPID = MM_FALSE;
                    PRG_PIDINFO *pstPids = pListNode->stService.Pids;
                    s32NumPids = pListNode->stService.NumPids;
                    for(i = 0;i < s32NumPids;i++)
                    {
                        switch(pstPids[i].Type)
                        {
                            case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
                            case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
                            case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
                                break;
                            case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
                            case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
                            case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
                            case MM_STREAMTYPE_H264: /* Video    : H264                                 */
                            case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
                            case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
                            case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                                bGetVideoPID = MM_TRUE;
                                i = s32NumPids;
                                break;
                    
                            case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
                                break;
                            case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
                            case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
                            case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
                            case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
                            case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
                            case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
                            case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
                            case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
                            case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
                            case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
                            case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
                            case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                                bGetAudioPID = MM_TRUE;
                                break;
                        }
                    }

                    if(MM_TRUE == bGetVideoPID)
                    {
                        pListNode->stService.cProgramType = STTAPI_SERVICE_TELEVISION;
                    }
                    else if(MM_TRUE == bGetAudioPID)
                    {
                        pListNode->stService.cProgramType = STTAPI_SERVICE_RADIO;
                    }
                    else
                    {
                        bForceDel = MM_TRUE;
                    }
                }
            }
        }
        else
        {
            bForceDel = MM_TRUE;
        }
        
        if(MM_TRUE == bForceDel)
        {
            /*判断列表是否只有一个节目*/
            if(pListNode == pListNode->pNextPrgNode)
            {
                pstPrgList->s32ActualProNum = 0;
                pstPrgList->s32VirtProNum = 0;
                pstPrgList->stPrgNode = MM_NULL;
                pstHead = pstPrgList->stPrgNode;                
                MLMF_Free(pListNode);
                break;
            }
            
            if(pListNode == pstHead)
            {
                pstPrgList->stPrgNode = pListNode->pNextPrgNode;
                pstHead = pstPrgList->stPrgNode;                
                bForceContinue = MM_TRUE;            
            }

            ((PRO_NODE *)(pListNode->pPrevPrgNode))->pNextPrgNode = pListNode->pNextPrgNode;                
            ((PRO_NODE *)(pListNode->pNextPrgNode))->pPrevPrgNode = pListNode->pPrevPrgNode;                
            pBackNode = pListNode;
            //MLMF_Print("del serviceid = %x %s type = %x frenq = %d usiChannelIndexNo = %x u8ValidMask = %x u32TransInfo = %x u8ValidMask = %x\n",pListNode->stService.u16ServiceID,pListNode->stService.cServiceName,pListNode->stService.cProgramType,pListNode->stService.stPrgTransInfo.uBit.uiTPFreq,pListNode->stService.usiChannelIndexNo,pListNode->stService.u8ValidMask,pListNode->stService.stPrgTransInfo.u32TransInfo,pListNode->stService.u8ValidMask);
            pListNode = pListNode->pNextPrgNode;
            MLMF_Free(pBackNode);
        }
        else
        {
            pListNode = pListNode->pNextPrgNode;
        }
    }while(pListNode != pstHead||MM_TRUE == bForceContinue);

    
    iPrgNum = 0;
    iVirtPrgNum = 0;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL != pstHead)
    {
        pListNode = pstHead;
        do
        {
            iPrgNum++;
            if(dbsm_InvalidLCN != pListNode->stService.usiChannelIndexNo)
            {
                iVirtPrgNum++;
            }
            pListNode = pListNode->pNextPrgNode;
        }
        while(pListNode != pstHead);
    }
    pstPrgList->s32ActualProNum = iPrgNum; 
    pstPrgList->s32VirtProNum = iVirtPrgNum; 
    DBS_DEBUG(("[ListDelInvalidPrgNode] s32ActualProNum %d\n",pstPrgList->s32ActualProNum));
    OSPFree(pu16RefServiceID);
}

static DBST_PROG *ListCreatePrgArray(PRO_LIST_NODE *pstPrgList,MBT_S32 *pPrgNum) 
{
    PRO_NODE *pstHead;
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstStartNode;
    DBST_PROG *pstPrgArray = MM_NULL;
    MBT_S32 iNum;
    
    if(MM_NULL == pPrgNum||MM_NULL == pstPrgList)
    {
        return MM_NULL;
    }
    
    *pPrgNum = 0;    
    
    if(MM_NULL == pstPrgList->stPrgNode)
    {
        pstPrgList->s32ActualProNum = 0;
        pstPrgList->s32VirtProNum = 0;
        return pstPrgArray;
    }

    iNum = pstPrgList->s32ActualProNum;
    DBS_DEBUG(("[ListCreatePrgArray] iNum = %d\n",iNum));
    pstPrgArray = OSPMalloc(iNum*sizeof(DBST_PROG));
    if(MM_NULL == pstPrgArray)
    {
        return pstPrgArray;
    }
    
    DBS_DEBUG(("ListCreatePrgArray\n"));

    pstHead = pstPrgList->stPrgNode;
    pstStartNode = pstHead;
    pstPrgNode = pstHead->pNextPrgNode;
    if(1 == dbsv_u8LCNOnOff)
    {
        do
        {
            if(pstPrgNode->stService.usiChannelIndexNo < pstStartNode->stService.usiChannelIndexNo)
            {
                pstStartNode = pstPrgNode;
            }
            pstPrgNode = pstPrgNode->pNextPrgNode;
        }while(pstPrgNode != pstHead);
    }
    else
    {
        do
        {
            if(pstPrgNode->stService.u16ServiceID < pstStartNode->stService.u16ServiceID)
            {
                pstStartNode = pstPrgNode;
            }
            pstPrgNode = pstPrgNode->pNextPrgNode;
        }while(pstPrgNode != pstHead);
    }

    pstHead = pstStartNode;
    pstPrgNode = pstHead;
    do
    {
        //DBS_DEBUG(("name = %s,type = %d\n",pstPrgNode->stService.cServiceName,pstPrgNode->stService.cProgramType));
        if((*pPrgNum) < iNum)
        {
            pstPrgArray[*pPrgNum] = pstPrgNode->stService;
            (*pPrgNum)++;
        }
        else
        {
            break;
        }
        pstPrgNode = pstPrgNode->pNextPrgNode;
    }while(pstPrgNode != pstHead);
    return pstPrgArray;
}


static MBT_VOID ListParseSortLCN(PRO_LIST_NODE *pstPrgList)
{
    PRO_NODE *pstHead;
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstStartNode;
    PRO_NODE *pListSortNode ;
    PRO_NODE *pBackNode ;
    MBT_S32 s32VirtNum;
    MBT_S32 s32VideoNum;
    MBT_S32 s32AudioNum;
    MBT_S32 iFavRadioIndex;
    MBT_S32 iFavTvIndex;
    MBT_U16 u16HeadLcn;
    
    if(MM_NULL == pstPrgList)
    {
        return;
    }
    pstHead = pstPrgList->stPrgNode;

    if(pstHead)
    {
        pstStartNode = MM_NULL;
        pstPrgNode = pstHead;
        if(1 == dbsv_u8LCNOnOff)
        {
            u16HeadLcn = pstPrgNode->stService.usiChannelIndexNo;
            do
            {
                if(dbsv_u16PrevServiceID == pstPrgNode->stService.u16ServiceID)
                {
                    pstStartNode = pstPrgNode;
                }
                
                if(pstPrgNode->stService.usiChannelIndexNo < u16HeadLcn)
                {
                    pstPrgList->stPrgNode = pstPrgNode;
                    pstHead = pstPrgList->stPrgNode;
                    u16HeadLcn = pstPrgNode->stService.usiChannelIndexNo;
                }
                pstPrgNode = pstPrgNode->pNextPrgNode;
            }while(pstPrgNode != pstHead);
            
            
            pstHead = pstPrgList->stPrgNode;
            for(pstPrgNode = pstHead->pNextPrgNode;pstPrgNode != pstHead;)
            {
                pBackNode = pstPrgNode;
                for(pListSortNode = pstPrgNode;pListSortNode != pstHead;pListSortNode = pListSortNode->pNextPrgNode)
                {
                    if(pBackNode->stService.usiChannelIndexNo > pListSortNode->stService.usiChannelIndexNo)
                    {
                        pBackNode = pListSortNode;
                    }
                }
            
                if(pBackNode != pstPrgNode)
                {
                    (pBackNode->pPrevPrgNode)->pNextPrgNode = pBackNode->pNextPrgNode;
                    (pBackNode->pNextPrgNode)->pPrevPrgNode = pBackNode->pPrevPrgNode;
            
                    pBackNode->pNextPrgNode = pstPrgNode;
                    pBackNode->pPrevPrgNode = pstPrgNode->pPrevPrgNode;
                    (pstPrgNode->pPrevPrgNode)->pNextPrgNode = pBackNode;
                    pstPrgNode->pPrevPrgNode = pBackNode;
                }
                else
                {
                    pstPrgNode = pstPrgNode->pNextPrgNode;
                }
            }
            
            pstPrgNode = pstHead;
            s32VirtNum = 0;
            iFavRadioIndex = 0;
            iFavTvIndex = 0;        
            do
            {
                if(dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo)
                {
                    s32VirtNum++;
                }
            
                if(STTAPI_SERVICE_TELEVISION == pstPrgNode->stService.cProgramType)
                {
                    if(SKIP_BIT_MASK != (pstPrgNode->stService.ucProgram_status&SKIP_BIT_MASK))
                    {
                        pstPrgNode->u16LogicNum = pstPrgNode->stService.usiChannelIndexNo;
                    }
                    else
                    {
                        pstPrgNode->u16LogicNum = dbsm_InvalidLCN;
                    }
                    
                    if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK)
                    {
                        iFavTvIndex++;
                    }
                    pstPrgNode->u8FavListLcn = iFavTvIndex;
                }
                else if(STTAPI_SERVICE_RADIO == pstPrgNode->stService.cProgramType)
                {
                    if(SKIP_BIT_MASK != (pstPrgNode->stService.ucProgram_status&SKIP_BIT_MASK))
                    {
                        pstPrgNode->u16LogicNum = pstPrgNode->stService.usiChannelIndexNo;
                    }
                    else
                    {
                        pstPrgNode->u16LogicNum = dbsm_InvalidLCN;
                    }
                    
                    if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK)
                    {
                        iFavRadioIndex++;
                    }
                    pstPrgNode->u8FavListLcn = iFavRadioIndex;
                }
                else
                {
                    pstPrgNode->u16LogicNum = pstPrgNode->stService.usiChannelIndexNo;
                }
            
                pstPrgNode = pstPrgNode->pNextPrgNode;
            }while(pstPrgNode != pstHead);
        }
        else
        {
            u16HeadLcn = pstPrgNode->stService.u16ServiceID;
            do
            {
                if(dbsv_u16PrevServiceID == pstPrgNode->stService.u16ServiceID)
                {
                    pstStartNode = pstPrgNode;
                }
                
                if(pstPrgNode->stService.u16ServiceID < u16HeadLcn)
                {
                    pstPrgList->stPrgNode = pstPrgNode;
                    pstHead = pstPrgList->stPrgNode;
                    u16HeadLcn = pstPrgNode->stService.u16ServiceID;
                }
                pstPrgNode = pstPrgNode->pNextPrgNode;
            }while(pstPrgNode != pstHead);
            
            
            pstHead = pstPrgList->stPrgNode;
            for(pstPrgNode = pstHead->pNextPrgNode;pstPrgNode != pstHead;)
            {
                pBackNode = pstPrgNode;
                for(pListSortNode = pstPrgNode;pListSortNode != pstHead;pListSortNode = pListSortNode->pNextPrgNode)
                {
                    if(pBackNode->stService.u16ServiceID > pListSortNode->stService.u16ServiceID)
                    {
                        pBackNode = pListSortNode;
                    }
                }
            
                if(pBackNode != pstPrgNode)
                {
                    (pBackNode->pPrevPrgNode)->pNextPrgNode = pBackNode->pNextPrgNode;
                    (pBackNode->pNextPrgNode)->pPrevPrgNode = pBackNode->pPrevPrgNode;
            
                    pBackNode->pNextPrgNode = pstPrgNode;
                    pBackNode->pPrevPrgNode = pstPrgNode->pPrevPrgNode;
                    (pstPrgNode->pPrevPrgNode)->pNextPrgNode = pBackNode;
                    pstPrgNode->pPrevPrgNode = pBackNode;
                }
                else
                {
                    pstPrgNode = pstPrgNode->pNextPrgNode;
                }
            }

            
            pstPrgNode = pstHead;
            s32VirtNum = 0;
            s32VideoNum = 0;
            s32AudioNum = 0;
            iFavRadioIndex = 0;
            iFavTvIndex = 0;        
            do
            {
                if(dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo)
                {
                    s32VirtNum++;
                }
            
                if(STTAPI_SERVICE_TELEVISION == pstPrgNode->stService.cProgramType)
                {
                    if(SKIP_BIT_MASK != (pstPrgNode->stService.ucProgram_status&SKIP_BIT_MASK))
                    {
                        s32VideoNum++;
                        pstPrgNode->u16LogicNum = s32VideoNum;
                    }
                    else
                    {
                        pstPrgNode->u16LogicNum = dbsm_InvalidLCN;
                    }
                    
                    if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK)
                    {
                        iFavTvIndex++;
                    }
                    pstPrgNode->u8FavListLcn = iFavTvIndex;
                }
                else if(STTAPI_SERVICE_RADIO == pstPrgNode->stService.cProgramType)
                {
                    if(SKIP_BIT_MASK != (pstPrgNode->stService.ucProgram_status&SKIP_BIT_MASK))
                    {
                        s32AudioNum++;
                        pstPrgNode->u16LogicNum = s32AudioNum;
                    }
                    else
                    {
                        pstPrgNode->u16LogicNum = dbsm_InvalidLCN;
                    }
                    
                    if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK)
                    {
                        iFavRadioIndex++;
                    }
                    pstPrgNode->u8FavListLcn = iFavRadioIndex;
                }
                else
                {
                    pstPrgNode->u16LogicNum = pstPrgNode->stService.usiChannelIndexNo;
                }
            
                pstPrgNode = pstPrgNode->pNextPrgNode;
            }while(pstPrgNode != pstHead);
        }



        if(MM_NULL != pstStartNode)
        {
            pstPrgList->stPrgNode = pstStartNode;
        }
        pstPrgList->s32VirtProNum = s32VirtNum;
    }
}


static MBT_BOOL ListSortInsertPrgNode(PRO_NODE *pInsertNode,PRO_LIST_NODE *pstPrgList)
{
    PRO_NODE *p,*head;
    
    if(MM_NULL == pstPrgList)
    {
        return MM_FALSE;
    }
    
    if(pstPrgList->s32ActualProNum >= MAX_NO_OF_PROGRAMS)
    {
        return MM_FALSE;
    }
    pstPrgList->s32ActualProNum++;
    //DBS_DEBUG(("[ListSortInsertPrgNode] ProNum = %d\n",pstPrgList->s32ActualProNum));
    head = pstPrgList->stPrgNode;
    if (head == MM_NULL )
    {
        pstPrgList->stPrgNode = pInsertNode;
        pInsertNode->pNextPrgNode= pInsertNode;
        pInsertNode->pPrevPrgNode= pInsertNode; 
        return MM_TRUE;
    }

    p = head;
    do
    {
        if(p->stService.u16ServiceID > pInsertNode->stService.u16ServiceID)
        {
            break;
        }
        p = p->pNextPrgNode;
    }while(p != head);

    ((PRO_NODE *)(p->pPrevPrgNode))->pNextPrgNode = pInsertNode;
    pInsertNode->pPrevPrgNode = p->pPrevPrgNode;
    p->pPrevPrgNode = pInsertNode;
    pInsertNode->pNextPrgNode = p;

    if (pInsertNode->stService.u16ServiceID < head->stService.u16ServiceID)
    {
        pstPrgList->stPrgNode = pInsertNode;
    }
    
    return MM_TRUE;
}

static PRO_NODE *ListGetPrgNodeWithTsIDSvcID(PRO_NODE *pstPrgNode,MBT_U16 u16TsID,MBT_U16 u16ServiceID)
{
    PRO_NODE *pstNode;

    if (pstPrgNode == MM_NULL )
    {
        return MM_NULL;
    }

    pstNode = pstPrgNode;
    do
    {
        if(u16ServiceID == pstNode->stService.u16ServiceID)
        {
            if(u16TsID == pstNode->stService.u16TsID)
            {
                return pstNode;
            }
        }
        pstNode = pstNode->pNextPrgNode;
    }while(pstNode != pstPrgNode);
    
    return MM_NULL;
}

static PRO_NODE *ListGetPrgNodeWithTransSvcID(PRO_NODE *pstPrgNode,MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    PRO_NODE *pstNode;

    if (pstPrgNode == MM_NULL )
    {
        return MM_NULL;
    }

    pstNode = pstPrgNode;
    do
    {
        if(u16ServiceID == pstNode->stService.u16ServiceID)
        {
            if(pstNode->stService.stPrgTransInfo.u32TransInfo == u32TransInfo)
            {
                return pstNode;
            }
        }
        pstNode = pstNode->pNextPrgNode;
    }while(pstNode != pstPrgNode);
    
    return MM_NULL;
}




static PRO_NODE *ListMallocPrgNodeWithTransSvcID(PRO_LIST_NODE *pstPrgList,MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    PRO_NODE *pstPrgNode;

    if(MM_NULL == pstPrgList)
    {
        return MM_NULL;
    }
    if(pstPrgList->s32ActualProNum >= MAX_NO_OF_PROGRAMS)
    {
        DBS_DEBUG(("[ListMallocPrgNodeWithTsIDSvcID] faile s32ActualProNum %d\n",pstPrgList->s32ActualProNum));
        return MM_NULL;
    }
    
    pstPrgNode = ListGetPrgNodeWithTransSvcID(pstPrgList->stPrgNode,u32TransInfo,u16ServiceID);
    if(MM_NULL == pstPrgNode)
    {
        pstPrgNode = MLMF_Malloc(sizeof(PRO_NODE));
        if(MM_NULL == pstPrgNode)
        {
            DBS_DEBUG(("[ListMallocPrgNodeWithTsIDSvcID] malloc fail %d\n",sizeof(PRO_NODE)));
            return MM_NULL;
        }
        dbsf_ListSrchMntInitPrgInfo(pstPrgNode);
        pstPrgNode->stService.stPrgTransInfo.u32TransInfo = u32TransInfo;
        pstPrgNode->stService.u16ServiceID = u16ServiceID;
        ListSortInsertPrgNode(pstPrgNode,pstPrgList);
    }
    return pstPrgNode;
}

static PRO_NODE *ListMallocPrgNodeWithTsIDSvcID(PRO_LIST_NODE *pstPrgList,MBT_U16 u16TsID,MBT_U16 u16ServiceID)
{
    PRO_NODE *pstPrgNode;

    if(MM_NULL == pstPrgList)
    {
        return MM_NULL;
    }
    if(pstPrgList->s32ActualProNum >= MAX_NO_OF_PROGRAMS)
    {
        DBS_DEBUG(("[ListMallocPrgNodeWithTsIDSvcID] faile s32ActualProNum %d\n",pstPrgList->s32ActualProNum));
        return MM_NULL;
    }
    
    pstPrgNode = ListGetPrgNodeWithTsIDSvcID(pstPrgList->stPrgNode,u16TsID,u16ServiceID);
    if(MM_NULL == pstPrgNode)
    {
        pstPrgNode = MLMF_Malloc(sizeof(PRO_NODE));
        if(MM_NULL == pstPrgNode)
        {
            DBS_DEBUG(("[ListMallocPrgNodeWithTsIDSvcID] malloc fail %d\n",sizeof(PRO_NODE)));
            return MM_NULL;
        }
        dbsf_ListSrchMntInitPrgInfo(pstPrgNode);
        pstPrgNode->stService.u16TsID = u16TsID;
        pstPrgNode->stService.u16ServiceID = u16ServiceID;
        ListSortInsertPrgNode(pstPrgNode,pstPrgList);
    }
    return pstPrgNode;
}

static MBT_BOOL ListCopyGenreList(MBT_U16 *pu16SrcGen,MBT_U16 *pu16DesGen)
{
    MBT_U8 i;
    MBT_U8 k;
    MBT_U16 u16DesLen;
    MBT_U16 u16SrcLen;
    MBT_U16 *pu16Des;
    MBT_U16 *pu16Src;
    MBT_BOOL bUpdate = MM_FALSE;

    if(NULL == pu16SrcGen||NULL == pu16DesGen)
    {
        return bUpdate;
    }
    
    u16DesLen = pu16DesGen[0];
    u16SrcLen= pu16SrcGen[0];

    if(u16SrcLen >= m_MaxGenreType||u16DesLen >= m_MaxGenreType)
    {
        return bUpdate;
    }
    

    pu16Src = pu16SrcGen + 1;    
    pu16Des = pu16DesGen + 1;
    for(i = 0;i <u16SrcLen;i++)
    {
        for(k = 0;k <u16DesLen;k++)
        {
            if(pu16Des[k] == pu16Src[i])
            {
                break;
            }
        }

        if(k >= u16DesLen)
        {
            pu16Des[u16DesLen] = pu16Src[i];
            u16DesLen++;
            bUpdate = MM_TRUE;
            if(u16DesLen >= m_MaxGenreType)
            {
                break;
            }
        }
    }

    pu16DesGen[0] = u16DesLen;
    /*{
        MLMF_Print("genre %d\n##########",pu16DesGen[0]);
        for(i = 0;i < pu16DesGen[0];i++)
        {
            MLMF_Print("%02x ",pu16DesGen[i+1]);
        }
        MLMF_Print("\n");
    }
    */
    return bUpdate;
}

MBT_VOID ListFreePrgList(PRO_LIST_NODE *pstPrgList)
{
    PRO_NODE *pstProgram;
    PRO_NODE *pstHead;
    PRO_NODE *pstNext;
    
    if(MM_NULL == pstPrgList)
    {
        return;
    }
    
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        pstPrgList->s32ActualProNum = 0;
        pstPrgList->s32VirtProNum = 0;
        return;
    }
    
    pstProgram = pstHead;
    do
    {
        pstNext = pstProgram->pNextPrgNode;
        MLMF_Free(pstProgram);
        pstProgram = pstNext;
    }while(pstProgram != pstHead);

    pstPrgList->s32ActualProNum = 0;
    pstPrgList->s32VirtProNum = 0;
    pstPrgList->stPrgNode = MM_NULL;
    //DBS_DEBUG(("[ListFreePrgList] s32ActualProNum %d\n",pstPrgList->s32ActualProNum));
}

//extern MBT_U32 dbsv_TestUpdateStart;
static PRG_SORT_NODE *ListSrchMntPrgNode(PRG_SORT_NODE *pstMntPrgSortArray,MBT_U32 u32MntPrgNum,MBT_U16 u16ServiceID)
{
    MBT_S32 s32LeftIndex;
    MBT_S32 s32RightIndex;
    MBT_S32 s32MidIndex;
    MBT_U16 u16MidServiceID;

    if(MM_NULL == pstMntPrgSortArray||0 == u32MntPrgNum)
    {
        return MM_NULL;
    }
    
    s32LeftIndex = 0;
    s32RightIndex = u32MntPrgNum-1;
    while (s32LeftIndex <= s32RightIndex)
    {
        s32MidIndex = ((s32LeftIndex + s32RightIndex)>>1);
        u16MidServiceID = pstMntPrgSortArray[s32MidIndex].u16ServiceID;
        if(u16ServiceID < u16MidServiceID)
        {
            s32RightIndex = s32MidIndex - 1;
        }
        else if(u16ServiceID > u16MidServiceID)
        {
            s32LeftIndex = s32MidIndex + 1;
        }
        else
        {
            //MLMF_Print("u16TSID %x TransInfo %x uiTPFreq = %d\n",u16TSID,pstTransInfo[s32MidIndex].stTPTrans.u32TransInfo,pstTransInfo[s32MidIndex].stTPTrans.uBit.uiTPFreq);
            return (&(pstMntPrgSortArray[s32MidIndex]));
        }
    }

    return MM_NULL;
}

static inline MBT_BOOL ListIsGenreListSame(MBT_U16 *pu16BouquetID1,MBT_U16 *pu16BouquetID2,MBT_U16 u16Num)
{
    MBT_U32 i;
    MBT_U32 k;
    //MLMF_Print("ListIsGenreListSame u8Num %d\n",u8Num);
    for(i = 0;i < u16Num;i++)
    {
        //MLMF_Print("genre1[%d]%x genre2[%d]%x\n",i,pu8Genre2[i],i,pu8Genre1[i]);
        for(k = 0;k < u16Num;k++)
        {
            if(pu16BouquetID2[k] == pu16BouquetID1[i])
            {
                break;
            }
        }
        
        if(k >= u16Num)
        {
            return MM_FALSE;
        }
    }
    return MM_TRUE;
}

static inline MBT_BOOL ListMntPutSdtTSID(MBT_U16 *pu16TSIDArray,MBT_S32 s32ValidNum,MBT_U16 u16TSID)
{
    MBT_S32 i;
    if(MM_NULL == pu16TSIDArray||s32ValidNum >= dbsm_MaxTransNum)
    {
        return MM_FALSE;
    }

    for(i = 0;i < s32ValidNum;i++)
    {
        if(u16TSID == pu16TSIDArray[i])
        {
            return MM_FALSE;
        }
    }

    pu16TSIDArray[s32ValidNum] = u16TSID;
    return MM_TRUE;
}

static inline MBT_U16 ListGetStdTSID(MBT_U16 *pu16TSIDArray,MBT_S32 s32ValidNum,MBT_U16 u16TSID)
{
    MBT_S32 s32LeftIndex;
    MBT_S32 s32RightIndex;
    MBT_S32 s32MidIndex;
    MBT_U16 u16MidTSID;

    if(MM_NULL == pu16TSIDArray||0 == s32ValidNum)
    {
        return dbsm_InvalidID;
    }

    s32LeftIndex = 0;
    s32RightIndex = s32ValidNum-1;
    while (s32LeftIndex <= s32RightIndex)
    {
        s32MidIndex = ((s32LeftIndex + s32RightIndex)>>1);
        u16MidTSID = pu16TSIDArray[s32MidIndex];
        if(u16TSID < u16MidTSID)
        {
            s32RightIndex = s32MidIndex - 1;
        }
        else if(u16TSID > u16MidTSID)
        {
            s32LeftIndex = s32MidIndex + 1;
        }
        else
        {
            //MLMF_Print("Get u16TSID\n",u16TSID);
            return (pu16TSIDArray[s32MidIndex]);
        }
    }

    return dbsm_InvalidID;
}


static DBSE_StoreType ListMntGetUpdatePrgArray(PRO_LIST_NODE * pstMntPrgList,PRO_LIST_NODE *pstSrchPrgList,DBST_PROG *pstService,MBT_BOOL *pbAddOrDelPrg,MBT_S32 *ps32ValidPrgNum,MBT_S32 *ps32UpdatePrgNum,MBT_BOOL bGetNIT,MBT_BOOL bGetBat,MBT_BOOL bNetworkIDUpdated)
{
    PRO_NODE *pstMntPrg;
    PRO_NODE *pstSrchPrg;
    PRO_NODE *stMntPrgHead;
    PRO_NODE *stSrchPrgHead;
    PRO_NODE *stMntStartNode;
    MBT_BOOL bEditPrgInfo; 
    MBT_BOOL bForceDel;
    MBT_BOOL bLcnChanged = MM_FALSE;
    MBT_BOOL bDelPrg = MM_FALSE;
    MBT_BOOL bListReplace;
    MBT_U32 u32UpdatePrgNum = 0;
    MBT_U32 u32MntPrgNum;
    MBT_U32 u32SortArrayLen;
    MBT_U32 u32ValidPrgNum = 0;
    MBT_U32 u32GetPrgNum = 0;
    MBT_U16 u16TSIDArray[dbsm_MaxTransNum];
    MBT_U32 i,k;
    MBT_S32 s32ValidTSIDNum = 0;
#if (1 == M_SAVE_Prg_NONAME)
    MBT_S32 iLocalPrgNum = 0;
#endif
    MBT_U32 u8Mask;
    MBT_U16 u16ServiceID = 0xffff;
    MBT_U16 u16PrevLCN;
    PRG_SORT_NODE *pstMntPrgSortArray;
    PRG_SORT_NODE *pstMntPrgSortNode;
    DBST_PROG *pstMntService;
    DBSE_StoreType eStoreType = m_StoreNone;

    /*update onlye*/
    if(MM_NULL == pstMntPrgList||MM_NULL == pstSrchPrgList||MM_NULL == pstService||MM_NULL == pbAddOrDelPrg||MM_NULL == ps32ValidPrgNum||MM_NULL == ps32UpdatePrgNum)
    {
        return eStoreType;
    }
    *ps32ValidPrgNum= 0;
    *pbAddOrDelPrg = MM_FALSE;
    stMntPrgHead = pstMntPrgList->stPrgNode;
    if(MM_NULL == stMntPrgHead)
    {
        return eStoreType;
    }

    u32SortArrayLen = pstMntPrgList->s32ActualProNum+50;
    DBS_DEBUG(("ListMntGetUpdatePrgArray Enter\n"));
    pstMntPrgSortArray = dbsf_ForceMalloc(sizeof(DBST_PROG)*u32SortArrayLen);
    if(MM_NULL == pstMntPrgSortArray)
    {
        //MLMF_Print("ListMntGetUpdatePrgArray malloc faile\n");
        return eStoreType;
    }

    /*查找serviceid最小的节点*/
    pstMntPrg = stMntPrgHead;
    stMntStartNode = pstMntPrg;
    do
    {
        if (u16ServiceID > pstMntPrg->stService.u16ServiceID)
        {
            u16ServiceID = pstMntPrg->stService.u16ServiceID;
            stMntStartNode = pstMntPrg;
        }
        pstMntPrg = pstMntPrg->pNextPrgNode;
    }while(pstMntPrg != stMntPrgHead);

    /*选出有效节目组成有序数组*/
    u32MntPrgNum = 0;
    stMntPrgHead = stMntStartNode;
    pstMntPrgList->stPrgNode = stMntStartNode;
    pstMntPrg = stMntPrgHead;
    do
    {
        u8Mask = pstMntPrg->stService.u8ValidMask;
        if((PRG_SDT_VALID_MASK) == ((PRG_SDT_VALID_MASK)&u8Mask))
        {
            pstMntPrgSortArray[u32MntPrgNum].u16ServiceID = pstMntPrg->stService.u16ServiceID;
            pstMntPrgSortArray[u32MntPrgNum].u8IsOldPrg = 0;
            pstMntPrgSortArray[u32MntPrgNum].pstService = &(pstMntPrg->stService);
            if(PRG_SDT_VALID_MASK == (PRG_SDT_VALID_MASK&u8Mask))
            {
                if(MM_TRUE == ListMntPutSdtTSID(u16TSIDArray,s32ValidTSIDNum,pstMntPrg->stService.u16TsID))
                {
                    s32ValidTSIDNum++;
                }
            }
            DBS_DEBUG(("%s 0 type = %x 1 type = %x\n",pstMntPrg->stService.cServiceName,pstMntPrg->stService.Pids[0].Type,pstMntPrg->stService.Pids[1].Type));
            if(STTAPI_SERVICE_TELEVISION == pstMntPrg->stService.cProgramType&&(MM_STREAMTYPE_H264 == pstMntPrg->stService.Pids[0].Type||MM_STREAMTYPE_H264 == pstMntPrg->stService.Pids[1].Type))
            {
                pstMntPrg->stService.u8IsHDPrg = 1;
            }

            DBS_DEBUG(("Mntprglist %s serviceid %x lcn %x\n",pstMntPrg->stService.cServiceName,pstMntPrg->stService.u16ServiceID,pstMntPrg->stService.usiChannelIndexNo));
            u32MntPrgNum++;
            if(u32MntPrgNum >= u32SortArrayLen)
            {
                break;
            }
        }
        pstMntPrg = pstMntPrg->pNextPrgNode;
    }while(pstMntPrg != stMntPrgHead);

    /*对tsidarray进行排序,以便后面采用二分法查找*/
    DBS_DEBUG(("Mntprglist s32ValidTSIDNum %d\n",s32ValidTSIDNum));
    for(i = 0;i < s32ValidTSIDNum;i++)
    {
        for(k = i+1;k < s32ValidTSIDNum;k++)
        {
            if(u16TSIDArray[i] > u16TSIDArray[k])
            {
                u16ServiceID = u16TSIDArray[i];
                u16TSIDArray[i] = u16TSIDArray[k];
                u16TSIDArray[k] = u16ServiceID;
            }
        }
    }
    
    stSrchPrgHead = pstSrchPrgList->stPrgNode;
    pstSrchPrg = stSrchPrgHead;
    if(MM_NULL != stSrchPrgHead)
    {
        do
        {
            pstSrchPrg->u8Reserved = 0;
            if(dbsv_stCurTransInfo.u32TransInfo == pstSrchPrg->stService.stPrgTransInfo.u32TransInfo)
            {
                pstMntPrgSortNode = ListSrchMntPrgNode(pstMntPrgSortArray,u32MntPrgNum,pstSrchPrg->stService.u16ServiceID);
                if(MM_NULL != pstMntPrgSortNode)
                {
                    DBS_DEBUG(("Getprg %s serviceid %x usiChannelIndexNo %x\n",pstSrchPrg->stService.cServiceName,pstSrchPrg->stService.u16ServiceID,pstSrchPrg->stService.usiChannelIndexNo));
                    pstMntPrgSortNode->u8IsOldPrg = 1;
                    pstMntService = pstMntPrgSortNode->pstService;
                    u8Mask = pstMntService->u8ValidMask;
                    u32GetPrgNum++;
                    bEditPrgInfo = MM_FALSE;
    
                    DBS_DEBUG(("pstMntService cServiceName %s,sPmtPid %x\n",pstMntService->cServiceName,pstMntService->sPmtPid));
                    if(dbsm_InvalidPID != pstMntService->sPmtPid&&' ' !=pstMntService->cServiceName[0]&&0x21 < (MBT_U8)pstMntService->cServiceName[0])
                    {
                        if(dbsm_InvalidLCN == pstSrchPrg->stService.usiChannelIndexNo)
                        {
                            pstSrchPrg->stService.usiChannelIndexNo = pstSrchPrg->stService.u16ServiceID;
                            bEditPrgInfo = MM_TRUE;
                        }
                    }
                    
                    if(dbsm_InvalidPID !=pstMntService->sPmtPid)
                    {
                        if(pstMntService->sPmtPid != pstSrchPrg->stService.sPmtPid)
                        {
                            DBS_DEBUG(("ListMntGetUpdatePrgArray sPmtPid %x->%x\n",pstSrchPrg->stService.sPmtPid,pstMntService->sPmtPid));
                            //MLMF_Print("ListMntGetUpdatePrgArray sPmtPid %x->%x\n",pstSrchPrg->stService.sPmtPid,pstMntService->sPmtPid);
                            pstSrchPrg->stService.sPmtPid =pstMntService->sPmtPid;
                            bEditPrgInfo = MM_TRUE;
                        }
                    }
    
                    u16PrevLCN = pstSrchPrg->stService.usiChannelIndexNo;
                    if(MM_TRUE == bGetNIT)
                    {
                        if(dbsm_InvalidLCN != pstMntService->usiChannelIndexNo)
                        {
                            if(pstMntService->usiChannelIndexNo != pstSrchPrg->stService.usiChannelIndexNo)
                            {
                                DBS_DEBUG(("ListMntGetUpdatePrgArray %s usiChannelIndexNo %x->%x\n",pstSrchPrg->stService.cServiceName,pstSrchPrg->stService.usiChannelIndexNo,pstMntService->usiChannelIndexNo));
                                pstSrchPrg->stService.usiChannelIndexNo = pstMntService->usiChannelIndexNo;
                            }
                        }
                    }
            
                    /*BAT表中删除的节目*/
                    if(PRG_BAT_VALID_MASK == (PRG_BAT_VALID_MASK&(u8Mask)))
                    {
                        if(pstMntService->u16BouquetID[0] <= m_MaxGenreType)
                        {
                            if(pstMntService->u16BouquetID[0] != pstSrchPrg->stService.u16BouquetID[0])
                            {
                                //MLMF_Print("ListMntGetUpdatePrgArray genlist changed 1 mntgenre num %d prg genre num %d %s\n",pstMntService->u16BouquetID[0],pstSrchPrg->stService.u16BouquetID[0],pstSrchPrg->stService.cServiceName);
                                memcpy(pstSrchPrg->stService.u16BouquetID,pstMntService->u16BouquetID,pstMntService->u16BouquetID[0]+1);
                                DBS_DEBUG(("ListMntGetUpdatePrgArray genlist changed 1\n"));
                                bEditPrgInfo = MM_TRUE;
                            }
                            else
                            {
                                if(MM_FALSE == ListIsGenreListSame(pstSrchPrg->stService.u16BouquetID+1,pstMntService->u16BouquetID+1,pstMntService->u16BouquetID[0]))
                                {
                                    memcpy(pstSrchPrg->stService.u16BouquetID,pstMntService->u16BouquetID,pstMntService->u16BouquetID[0]+1);
                                    DBS_DEBUG(("ListMntGetUpdatePrgArray genlist changed 2\n"));
                                    ////MLMF_Print("ListMntGetUpdatePrgArray genlist changed 2 %s\n",pstSrchPrg->stService.cServiceName);
                                    bEditPrgInfo = MM_TRUE;
                                }
                            }
                        }
                    }
                    
                    /*NIT表中删除的节目*/
                    if(PRG_SDT_VALID_MASK == (PRG_SDT_VALID_MASK&(u8Mask)))
                    {
                        if(' ' ==pstMntService->cServiceName[0]||0x21 >= (MBT_U8)pstMntService->cServiceName[0])
                        {
                            if(STTAPI_SERVICE_TELEVISION == pstMntService->cProgramType||STTAPI_SERVICE_TELEVISION == pstMntService->cProgramType)
                            {
                                pstSrchPrg->stService.usiChannelIndexNo = dbsm_InvalidLCN;
                            }
                        }
                        else
                        {
                            if(0 != strcmp(pstMntService->cServiceName,pstSrchPrg->stService.cServiceName))
                            {
                                DBS_DEBUG(("ListMntGetUpdatePrgArray name %s->%s\n",pstSrchPrg->stService.cServiceName,pstMntService->cServiceName));
                                //MLMF_Print("ListMntGetUpdatePrgArray name %s->%s\n",pstSrchPrg->stService.cServiceName,pstMntService->cServiceName);
                                strcpy(pstSrchPrg->stService.cServiceName,pstMntService->cServiceName);
                                bEditPrgInfo = MM_TRUE;
                            }
                        }
                    }
                    else if(dbsm_InvalidID != ListGetStdTSID(u16TSIDArray,s32ValidTSIDNum,pstMntService->u16TsID))
                    {
                        /*收到了该频点的sdt表，却没有该节目描述，说明已经删除*/
                        DBS_DEBUG(("Delete from sdt %x\n",pstMntService->u16ServiceID));
                        pstSrchPrg->stService.usiChannelIndexNo = dbsm_InvalidLCN;
                    }
                    
            
                    if(u16PrevLCN != pstSrchPrg->stService.usiChannelIndexNo)
                    {
                        bEditPrgInfo = MM_TRUE;
                        bLcnChanged = MM_TRUE;
                    }
            
            
                    if(MM_TRUE == bEditPrgInfo)
                    {
                        if(u32UpdatePrgNum < MAX_NO_OF_PROGRAMS)
                        {
                            DBS_DEBUG(("update %d serviceid = %x %s  lcn = %x u32TransInfo %x\n",u32UpdatePrgNum,pstSrchPrg->stService.u16ServiceID,pstSrchPrg->stService.cServiceName,pstSrchPrg->stService.usiChannelIndexNo,pstSrchPrg->stService.stPrgTransInfo.u32TransInfo));
                            pstService[u32UpdatePrgNum] = pstSrchPrg->stService;
                            if(dbsm_InvalidLCN == pstService[u32UpdatePrgNum].usiChannelIndexNo)
                            {
                                pstService[u32UpdatePrgNum].usiChannelIndexNo = pstService[u32UpdatePrgNum].u16ServiceID;
                            }
                            u32UpdatePrgNum++;
                        }
                    }
                    u32ValidPrgNum++;
                }
                else
                {
                    DBS_DEBUG(("Can not Get %s serviceid %x sPmtPid = %x usiChannelIndexNo %x\n",pstSrchPrg->stService.cServiceName,pstSrchPrg->stService.u16ServiceID,pstSrchPrg->stService.sPmtPid,pstSrchPrg->stService.usiChannelIndexNo));
#if ((1 == M_MNTNITPrgList)&&(1 == M_MNTBATPrgList))
                    if(MM_TRUE == bGetBat||MM_TRUE == bGetNIT)
                    {
                        /*新节目列表中不存在的节目，或是个别被删除，或是整个列表更新，先设置标志后面判断*/
                        pstSrchPrg->stService.usiChannelIndexNo = dbsm_InvalidLCN;
                        pstSrchPrg->u8Reserved = 1;
                        bDelPrg = MM_TRUE;
                    }
#endif
                }
            }
        
            pstSrchPrg = pstSrchPrg->pNextPrgNode;
        }while(pstSrchPrg != stSrchPrgHead);
    }
#if (1 == M_SAVE_Prg_NONAME)
    iLocalPrgNum = 0;
#endif
    /*检查是否有增加的节目*/
    for(i = 0;i < u32MntPrgNum;i++)
    {
        if(0 == pstMntPrgSortArray[i].u8IsOldPrg)
        {
            bForceDel = MM_FALSE;            
            pstMntService = pstMntPrgSortArray[i].pstService;
#if ((1 == M_MNTNITPrgList)&&(1 == M_MNTBATPrgList))
            if(PRG_ALL_VALID_MASK == (PRG_ALL_VALID_MASK&(pstMntService->u8ValidMask)))
#else
            if(PRG_SDT_VALID_MASK == (PRG_SDT_VALID_MASK&(pstMntService->u8ValidMask)))
#endif
            {
                DBS_DEBUG(("Check cProgramType %d serviceid = %x pmtpid = %x %s  lcn = %x u32TransInfo %x\n",pstMntService->cProgramType,pstMntService->u16ServiceID,pstMntService->sPmtPid,pstMntService->cServiceName,pstMntService->usiChannelIndexNo,pstMntService->stPrgTransInfo.u32TransInfo));
                if(STTAPI_SERVICE_RADIO == pstMntService->cProgramType ||STTAPI_SERVICE_TELEVISION == pstMntService->cProgramType)
                {
                    if(dbsm_InvalidTransInfo == pstMntService->stPrgTransInfo.u32TransInfo)
                    {
                        bForceDel = MM_TRUE;
                    }
                    else
                    {
                        if(' ' == pstMntService->cServiceName[0]||0x21 >= (MBT_U8)pstMntService->cServiceName[0])
                        {
#if (1 == M_SAVE_Prg_NONAME)
                            sprintf(pstMntService->cServiceName,"LOCAL %d",iLocalPrgNum);
                            iLocalPrgNum++;
#else
                            bForceDel = MM_TRUE;
#endif
                        }
                    }
                }
                else if(STTAPI_SERVICE_DATA_BROADCAST < pstMntService->cProgramType||STTAPI_SERVICE_RESERVED == pstMntService->cProgramType)
                {
                    bForceDel = MM_TRUE;
                }
            }
            else
            {
                bForceDel = MM_TRUE;
            }

            if(MM_FALSE == bForceDel)
            {
                DBS_DEBUG(("Add %x name = %s\n",pstMntService->u16ServiceID,pstMntService->cServiceName));
                if(u32UpdatePrgNum < MAX_NO_OF_PROGRAMS)
                {
                    if(dbsm_InvalidLCN == pstMntService->usiChannelIndexNo)
                    {
                        pstMntService->usiChannelIndexNo = pstMntService->u16ServiceID;
                    }
                    pstService[u32UpdatePrgNum] = *pstMntService;
                    u32UpdatePrgNum++;
                }
                u32ValidPrgNum++;
                *pbAddOrDelPrg = MM_TRUE;
            }
        }
    }

    bListReplace = MM_FALSE;
    if(MM_TRUE == bNetworkIDUpdated)
    {
        if(u32UpdatePrgNum > 0)
        {
            eStoreType = m_ResetAdd_Prg;
        }
        bListReplace = MM_TRUE;
        DBS_DEBUG(("ListMntGetUpdatePrgArray MM_TRUE == bNetworkIDUpdated\n"));
    }
    else
    {
        if(0 != u32ValidPrgNum)
        {
            /*存在10%以上的相同节目,只是更新不是替换*/
            DBS_DEBUG(("ListMntGetUpdatePrgArray u32UpdatePrgNum = %d u32ValidPrgNum = %d\n",u32UpdatePrgNum,u32ValidPrgNum));
            if((u32UpdatePrgNum*100/u32ValidPrgNum) >= 90)
            {
                bListReplace = MM_TRUE;
                eStoreType = m_ResetAdd_Prg;
            }
        }
    }
    
    if(MM_TRUE == bListReplace)
    {
        /*删除新的列表中的无效节目,*/
        for(i = 0;i < u32UpdatePrgNum;i++)
        {
            bForceDel = MM_FALSE;            
            pstMntPrgSortNode = ListSrchMntPrgNode(pstMntPrgSortArray,u32MntPrgNum,pstService[i].u16ServiceID);
            if(MM_NULL != pstMntPrgSortNode)
            {
                if(' ' == pstMntPrgSortNode->pstService->cServiceName[0]||0x21 >= (MBT_U8)pstMntPrgSortNode->pstService->cServiceName[0])
                {
                    bForceDel = MM_TRUE;            
                    DBS_DEBUG(("noname del u16ServiceID %x\n",pstService[i].u16ServiceID));
                }
            }
            else
            {
                bForceDel = MM_TRUE;            
                DBS_DEBUG(("Can not find node u16ServiceID %x\n",pstService[i].u16ServiceID));
            }

            if(MM_TRUE == bForceDel)
            {
                pstService[i].usiChannelIndexNo = dbsm_InvalidLCN;
            }
            DBS_DEBUG(("%d %s lcn %x\n",i,pstService[i].cServiceName,pstService[i].usiChannelIndexNo));
        }
    }
    else
    {
        //MLMF_Print("have more than 10 persend same prg update\n");
        if(MM_NULL != stSrchPrgHead)
        {
            if(MM_TRUE == bDelPrg)
            {
                pstSrchPrg = stSrchPrgHead;
                do
                {
                    if(1 == pstSrchPrg->u8Reserved)
                    {
                        if(dbsm_InvalidLCN == pstSrchPrg->stService.usiChannelIndexNo)
                        {
                            DBS_DEBUG(("del %d serviceid = %x %s lcn = %x u32TransInfo %x\n",u32UpdatePrgNum,pstSrchPrg->stService.u16ServiceID,pstSrchPrg->stService.cServiceName,pstSrchPrg->stService.usiChannelIndexNo,pstSrchPrg->stService.stPrgTransInfo.u32TransInfo));
                            if(u32UpdatePrgNum < MAX_NO_OF_PROGRAMS)
                            {
                                pstService[u32UpdatePrgNum] = pstSrchPrg->stService;
                                u32UpdatePrgNum++;
                            }
                            u32ValidPrgNum++;
                        }
                    }
                
                    pstSrchPrg = pstSrchPrg->pNextPrgNode;
                }while(pstSrchPrg != stSrchPrgHead);
            }
            
            if(MM_FALSE == *pbAddOrDelPrg&&MM_TRUE == bLcnChanged)
            {
                dbsv_u16PrevServiceID = stSrchPrgHead->stService.u16ServiceID;
                ListParseSortLCN(pstSrchPrgList);
            }
        }
    }

    dbsf_ForceFree(pstMntPrgSortArray);
    *ps32ValidPrgNum = u32ValidPrgNum;
    *ps32UpdatePrgNum = u32UpdatePrgNum;
    DBS_DEBUG(("ListMntGetUpdatePrgArray u32ValidPrgNum = %d u32GetPrgNum = %d u32UpdatePrgNum = %d eStoreType = %d\n",u32ValidPrgNum,u32GetPrgNum,u32UpdatePrgNum,eStoreType));
    return eStoreType;
}


MBT_VOID dbsf_ListPutNode2PrgList(MBT_U32 u32Num,DBST_PROG *pstProgInfo)
{	
    PRO_NODE *pstPrgNode;
    PRO_LIST_NODE *pstPrgList;
    DBST_PROG *pstPrgPos;
    MBT_S32  i;
    MBT_U8  u8PrgType;

    if(0 == u32Num||MM_NULL == pstProgInfo)
    {
        return;
    }

    Sem_PrgList_P(); 
    dbsv_u8PrgListFreeed = 0;
    pstPrgList = &dbsv_stProgramHead;
    pstPrgPos = pstProgInfo;
    for(i = 0;i < u32Num;i++)
    {
        u8PrgType = pstPrgPos->cProgramType;
        pstPrgNode = ListGetPrgNodeWithTransSvcID(pstPrgList->stPrgNode,pstPrgPos->stPrgTransInfo.u32TransInfo,pstPrgPos->u16ServiceID);
        if(MM_NULL == pstPrgNode)
        {
            pstPrgNode = MLMF_Malloc(sizeof(PRO_NODE));
            if(MM_NULL == pstPrgNode)
            {
                Sem_PrgList_V();
                return ;
            }
            memset(pstPrgNode,0,sizeof(PRO_NODE));
            pstPrgNode->stService = *pstPrgPos;
            ListSortInsertPrgNode(pstPrgNode,pstPrgList);
            if(dbsm_InvalidLCN != pstPrgPos->usiChannelIndexNo)
            {
                pstPrgList->s32VirtProNum++;
            }
        }
        else
        {
            pstPrgNode->stService = *pstPrgPos;
        }

        if(STTAPI_SERVICE_NVOD_REFERENCE == u8PrgType)
        {
            dbsf_NvdPutRefPrgListNode(pstPrgPos);
        }
        else if(STTAPI_SERVICE_NVOD_TIME_SHIFT == u8PrgType)
        {
            dbsf_NvdPutTShiftPrgListNode(pstPrgPos,i);
        }
        pstPrgPos++;
    }
    ListParseSortLCN(pstPrgList);
    dbsf_NvdSortPrgList();
    Sem_PrgList_V();
}


MBT_VOID dbsf_ListLCNOn(MBT_VOID)
{
    dbsv_u8LCNOnOff = 1;
}

MBT_VOID dbsf_ListLCNOff(MBT_VOID)
{
    dbsv_u8LCNOnOff = 0;
}

MBT_VOID dbsf_ListFreePrgList(MBT_VOID)
{
    PRO_LIST_NODE *pstPrgList;
    //MLMF_Print("dbsf_ListFreePrgList\n");
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    if(MM_NULL != pstPrgList->stPrgNode)
    {
        dbsv_u16PrevServiceID = pstPrgList->stPrgNode->stService.u16ServiceID;
    }
    ListFreePrgList(&dbsv_stProgramHead);
    dbsv_u8PrgListFreeed = 1;
    Sem_PrgList_V();
}

MBT_U8 dbsf_ListIsFreeed(MBT_VOID)
{
    return dbsv_u8PrgListFreeed;
}

DBST_PROG *dbsf_ListCreatePrgArray(MBT_S32 *pPrgNum) 
{
    DBST_PROG *pstPrgArray = MM_NULL;
    if(MM_NULL == pPrgNum)
    {
        return MM_NULL;
    }
    Sem_PrgList_P();
    pstPrgArray = ListCreatePrgArray(&dbsv_stProgramHead,pPrgNum);
    Sem_PrgList_V();
    return pstPrgArray;
}


MBT_VOID dbsf_ListPrgEdit (DBST_PROG *pstService)
{
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    MBT_S32 s32TPFreq = pstService->stPrgTransInfo.uBit.uiTPFreq;
    MBT_U16 u16ServiceID = pstService->u16ServiceID;
    MBT_BOOL bForward = MM_FALSE;
    MBT_BOOL bNeedrebuildIndex = MM_FALSE;
    PRO_LIST_NODE *pstPrgList;
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return ;
    }

    if(1 == dbsv_u8LCNOnOff)
    {
        if(pstService->usiChannelIndexNo > pstHead->stService.usiChannelIndexNo)
        {
            bForward = MM_TRUE;
        }
    }
    else
    {
        if(pstService->u16ServiceID > pstHead->stService.u16ServiceID)
        {
            bForward = MM_TRUE;
        }
    }
    
    if(MM_TRUE == bForward)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
                {
                    if(s32TPFreq == pstDbsPro->stService.stPrgTransInfo.uBit.uiTPFreq)
                    {
                        if(((pstDbsPro->stService.ucProgram_status&FAVOURITE_BIT_MASK) != (pstService->ucProgram_status&FAVOURITE_BIT_MASK))||((pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK) != (pstService->ucProgram_status&SKIP_BIT_MASK)))
                        {
                            bNeedrebuildIndex = MM_TRUE;
                        }
                        pstDbsPro->stService = *pstService;
                        break;
                    }
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
            {
                if(s32TPFreq == pstDbsPro->stService.stPrgTransInfo.uBit.uiTPFreq)
                {
                    if(((pstDbsPro->stService.ucProgram_status&FAVOURITE_BIT_MASK) != (pstService->ucProgram_status&FAVOURITE_BIT_MASK))||((pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK) != (pstService->ucProgram_status&SKIP_BIT_MASK)))
                    {
                        bNeedrebuildIndex = MM_TRUE;
                    }
                    pstDbsPro->stService = *pstService;
                    break;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }

    if(MM_TRUE == bNeedrebuildIndex)
    {   
        /*Only free it,when create again it will be a right list*/
        pstHead = pstPrgList->stPrgNode;
        if(MM_NULL != pstHead)
        {
            PRO_NODE *pstNext;
            pstDbsPro = pstHead;
            do
            {
                pstNext = pstDbsPro->pNextPrgNode;
                MLMF_Free(pstDbsPro);
                pstDbsPro = pstNext;
            }while(pstDbsPro != pstHead);
        }
        dbsv_u8PrgListFreeed = 1;
        pstPrgList->s32ActualProNum = 0;
        pstPrgList->s32VirtProNum = 0;
        pstPrgList->stPrgNode = MM_NULL;
    }
    Sem_PrgList_V();
}



MBT_VOID dbsf_ListSrchMntInitPrgInfo(PRO_NODE *pstPrgInfo)
{
    if(MM_NULL == pstPrgInfo)
    {
        return;
    }
    
    memset(pstPrgInfo,0,sizeof(PRO_NODE));
    pstPrgInfo->stService.u8ValidMask = PRG_BAT_VALID_MASK;
    pstPrgInfo->stService.usiChannelIndexNo = dbsm_InvalidLCN;
    pstPrgInfo->stService.stPrgTransInfo.u32TransInfo = dbsm_InvalidTransInfo;
    pstPrgInfo->stService.u16OrinetID = dbsm_InvalidID;
    pstPrgInfo->stService.u16TsID = dbsm_InvalidID;
    pstPrgInfo->stService.u16ServiceID = dbsm_InvalidID;
    pstPrgInfo->stService.uReferenceServiceID = dbsm_InvalidID;
    pstPrgInfo->stService.sPmtPid = dbsm_InvalidPID;
    pstPrgInfo->stService.u16FavGroup = 0;
    pstPrgInfo->stService.u8Volume = dbsm_defaultVolume;
    pstPrgInfo->stService.cProgramType = 0xff;
    pstPrgInfo->stService.ucProgram_status = 2;/**left audio**/
    pstPrgInfo->stService.NumPids = 0;
    pstPrgInfo->stService.Pids[0].EcmPid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[0].Pid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[1].EcmPid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[1].Pid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[2].EcmPid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[2].Pid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[3].EcmPid = dbsm_InvalidPID;
    pstPrgInfo->stService.Pids[3].Pid = dbsm_InvalidPID;
    pstPrgInfo->stService.u16CurAudioPID = dbsm_InvalidPID;
    pstPrgInfo->stService.u8IsHDPrg = 0;
    pstPrgInfo->stService.u16BouquetID[0] = 0;
    pstPrgInfo->stService.cServiceName[0] = 0;
    pstPrgInfo->u8Reserved = 0;
    pstPrgInfo->u8FavListLcn = 0;
    pstPrgInfo->u16LogicNum = 0xfffe;//for ca test 08/04.24
}

MBT_VOID dbsf_ListSrchWritePrgInfo(PRO_NODE *pstPrgInfo,MBT_U8 u8TableID)
{
    PRO_NODE *pstlistPrgInfo;
    DBST_PROG *pstSrcService;
    DBST_PROG *pstDesService;

    if(MM_NULL == pstPrgInfo)
    {
        return;
    }

    pstSrcService = &(pstPrgInfo->stService);
    
    if(dbsm_InvalidID == pstSrcService->u16ServiceID)
    {
        DBS_DEBUG(("dbsf_ListSrchWritePrgInfo Error seviceid = dbsm_InvalidID \n"));
        return;
    }
    
    if(dbsm_InvalidTransInfo == pstSrcService->stPrgTransInfo.u32TransInfo&&dbsm_InvalidID == pstSrcService->u16TsID)
    {
        DBS_DEBUG(("dbsf_ListSrchWritePrgInfo Error u32TransInfo = dbsm_InvalidTransInfo u16TsID = dbsm_InvalidID\n"));
        return;
    }
    Sem_PrgList_P();
    if(dbsm_InvalidID == pstSrcService->u16TsID)
    {
        pstlistPrgInfo = ListMallocPrgNodeWithTransSvcID(&dbsv_stProgramHead,pstSrcService->stPrgTransInfo.u32TransInfo,pstSrcService->u16ServiceID);
    }
    else
    {
        pstlistPrgInfo = ListMallocPrgNodeWithTsIDSvcID(&dbsv_stProgramHead,pstSrcService->u16TsID,pstSrcService->u16ServiceID);
    }
    if(MM_NULL == pstlistPrgInfo)
    {
        DBS_DEBUG(("dbsf_ListSrchWritePrgInfo Error MM_NULL == pstlistPrgInfo\n"));
        Sem_PrgList_V();
        return;
    }
    
    pstDesService = &(pstlistPrgInfo->stService);
    //DBS_DEBUG(("dbsf_ListSrchWritePrgInfo get tsid %x u16ServiceID = %x uiTPFreq = %d\n",pstDesService->u16TsID,pstDesService->u16ServiceID,pstDesService->stPrgTransInfo.uBit.uiTPFreq));
    if(dbsm_InvalidLCN != pstSrcService->usiChannelIndexNo)
    {
        pstDesService->usiChannelIndexNo = pstSrcService->usiChannelIndexNo;
    }
    
    if(dbsm_InvalidID != pstSrcService->u16TsID)
    {
        pstDesService->u16TsID = pstSrcService->u16TsID;
    }

    if(dbsm_InvalidID != pstSrcService->u16OrinetID)
    {
        pstDesService->u16OrinetID = pstSrcService->u16OrinetID;
    }

    if(dbsm_InvalidTransInfo != pstSrcService->stPrgTransInfo.u32TransInfo)
    {
        pstDesService->stPrgTransInfo = pstSrcService->stPrgTransInfo;
    }

    if(dbsm_InvalidID != pstSrcService->uReferenceServiceID)
    {
        pstDesService->uReferenceServiceID = pstSrcService->uReferenceServiceID;
    }

    if(dbsm_InvalidPID != pstSrcService->sPmtPid)
    {
        pstDesService->sPmtPid = pstSrcService->sPmtPid;
    }

    if(PMT_TABLE_ID == u8TableID)
    {
        /*优先使用SDT表中的节目类型,PMT表中只是猜测*/
        if(0xff == pstDesService->cProgramType||0== pstDesService->cProgramType)
        {
            pstDesService->cProgramType = pstSrcService->cProgramType;
        }
    }
    else
    {
        if(0xff != pstSrcService->cProgramType)
        {
            pstDesService->cProgramType = pstSrcService->cProgramType;
        }
    }

    if(2 != pstSrcService->ucProgram_status)
    {
        pstDesService->ucProgram_status = pstSrcService->ucProgram_status;
    }

    if(0 != pstSrcService->NumPids)
    {
        pstDesService->NumPids = pstSrcService->NumPids;
        memcpy(pstDesService->Pids,pstSrcService->Pids,pstSrcService->NumPids*sizeof(PRG_PIDINFO));
        //DBS_DEBUG(("dbsf_ListSrchWritePrgInfo NumPids %d tsid %x u16ServiceID = %x uiTPFreq = %d\n",pstDesService->NumPids,pstDesService->u16TsID,pstDesService->u16ServiceID,pstDesService->stPrgTransInfo.uBit.uiTPFreq));
    }

    if(dbsm_InvalidPID != pstSrcService->u16CurAudioPID)
    {
        pstDesService->u16CurAudioPID = pstSrcService->u16CurAudioPID;
    }

    if(0 != pstSrcService->u16BouquetID[0])
    {
        if(pstSrcService->u16BouquetID[0] <= m_MaxGenreType)
        {
            ListCopyGenreList(pstSrcService->u16BouquetID,pstDesService->u16BouquetID);
        }
    }

    /*优先取other里的*/
    if(SDT_ACTUAL_TS_TABLE_ID == u8TableID)
    {
        if(0 != pstSrcService->cServiceName[0])
        {
            if(0 == pstDesService->cServiceName[0])
            {
                strcpy(pstDesService->cServiceName,pstSrcService->cServiceName);
            }
        }
    }
    else
    {
        if(0 != pstSrcService->cServiceName[0])
        {
            strcpy(pstDesService->cServiceName,pstSrcService->cServiceName);
        }
    }
    
    if(0 != pstPrgInfo->u8FavListLcn)
    {
        pstlistPrgInfo->u8FavListLcn = pstPrgInfo->u8FavListLcn;
    }

    if(0xfffe != pstPrgInfo->u16LogicNum)
    {
        pstlistPrgInfo->u16LogicNum = pstPrgInfo->u16LogicNum;
    }
    
    pstDesService->u8ValidMask |= pstSrcService->u8ValidMask;
    
    Sem_PrgList_V();
}


MBT_VOID dbsf_ListMntWritePrgInfo(PRO_NODE *pstPrgInfo,MBT_U8 u8TableID)
{
    PRO_NODE *pstlistPrgInfo;
    DBST_PROG *pstSrcService;
    DBST_PROG *pstDesService;

    if(MM_NULL == pstPrgInfo)
    {
        return;
    }

    pstSrcService = &(pstPrgInfo->stService);
    
    if(dbsm_InvalidID == pstSrcService->u16ServiceID)
    {
        DBS_DEBUG(("dbsf_ListMntWritePrgInfo Error seviceid = dbsm_InvalidID \n"));
        return;
    }
    
    if(dbsm_InvalidTransInfo == pstSrcService->stPrgTransInfo.u32TransInfo&&dbsm_InvalidID == pstSrcService->u16TsID)
    {
        DBS_DEBUG(("dbsf_ListMntWritePrgInfo Error u32TransInfo = dbsm_InvalidTransInfo u16TsID = dbsm_InvalidID\n"));
        return;
    }
    Sem_PrgList_P();
    if(dbsm_InvalidID == pstSrcService->u16TsID)
    {
        pstlistPrgInfo = ListMallocPrgNodeWithTransSvcID(&dbsv_stMntPrgHead,pstSrcService->stPrgTransInfo.u32TransInfo,pstSrcService->u16ServiceID);
    }
    else
    {
        pstlistPrgInfo = ListMallocPrgNodeWithTsIDSvcID(&dbsv_stMntPrgHead,pstSrcService->u16TsID,pstSrcService->u16ServiceID);
    }
    
    if(MM_NULL == pstlistPrgInfo)
    {
        DBS_DEBUG(("dbsf_ListMntWritePrgInfo Error MM_NULL == pstlistPrgInfo\n"));
        Sem_PrgList_V();
        return;
    }
    
    pstDesService = &(pstlistPrgInfo->stService);
   // DBS_DEBUG(("dbsf_ListMntWritePrgInfo get tsid %x u16ServiceID = %x uiTPFreq = %d s32ActualProNum = %d\n",pstDesService->u16TsID,pstDesService->u16ServiceID,pstDesService->stPrgTransInfo.uBit.uiTPFreq,dbsv_stMntPrgHead.s32ActualProNum));
    if(dbsm_InvalidLCN != pstSrcService->usiChannelIndexNo)
    {
        pstDesService->usiChannelIndexNo = pstSrcService->usiChannelIndexNo;
    }

    if(dbsm_InvalidID != pstSrcService->u16TsID)
    {
        pstDesService->u16TsID = pstSrcService->u16TsID;
    }

    if(dbsm_InvalidID != pstSrcService->u16OrinetID)
    {
        pstDesService->u16OrinetID = pstSrcService->u16OrinetID;
    }
    
    if(dbsm_InvalidTransInfo != pstSrcService->stPrgTransInfo.u32TransInfo)
    {
        pstDesService->stPrgTransInfo = pstSrcService->stPrgTransInfo;
    }

    if(dbsm_InvalidID != pstSrcService->uReferenceServiceID)
    {
        pstDesService->uReferenceServiceID = pstSrcService->uReferenceServiceID;
    }


    if(dbsm_InvalidPID != pstSrcService->sPmtPid)
    {
        pstDesService->sPmtPid = pstSrcService->sPmtPid;
    }

    if(0xff != pstSrcService->cProgramType&&0 != pstSrcService->cProgramType)
    {
        pstDesService->cProgramType = pstSrcService->cProgramType;
    }

    if(2 != pstSrcService->ucProgram_status)
    {
        pstDesService->ucProgram_status = pstSrcService->ucProgram_status;
    }

    if(0 != pstSrcService->NumPids)
    {
        pstDesService->NumPids = pstSrcService->NumPids;
        memcpy(pstDesService->Pids,pstSrcService->Pids,pstSrcService->NumPids*sizeof(PRG_PIDINFO));
        //DBS_DEBUG(("dbsf_ListMntWritePrgInfo NumPids %d tsid %x u16ServiceID = %x uiTPFreq = %d\n",pstDesService->NumPids,pstDesService->u16TsID,pstDesService->u16ServiceID,pstDesService->stPrgTransInfo.uBit.uiTPFreq));
    }

    if(dbsm_InvalidPID != pstSrcService->u16CurAudioPID)
    {
        pstDesService->u16CurAudioPID = pstSrcService->u16CurAudioPID;
    }

    if(0 != pstSrcService->u16BouquetID[0])
    {
        if(pstSrcService->u16BouquetID[0] <= m_MaxGenreType)
        {
            //MLMF_Print("name %s\n",pstSrcService->cServiceName);
            ListCopyGenreList(pstSrcService->u16BouquetID,pstDesService->u16BouquetID);
        }
    }

    /*优先取other里的*/
    if(SDT_ACTUAL_TS_TABLE_ID == u8TableID)
    {
        if(0 != pstSrcService->cServiceName[0])
        {
            if((0 == pstDesService->cServiceName[0])||('L' == pstDesService->cServiceName[0]&&'O' == pstDesService->cServiceName[1]&&'C' == pstDesService->cServiceName[2]))
            {
                strcpy(pstDesService->cServiceName,pstSrcService->cServiceName);
            }
        }
    }
    else
    {
        if(0 != pstSrcService->cServiceName[0])
        {
            strcpy(pstDesService->cServiceName,pstSrcService->cServiceName);
        }
    }

    if(0 != pstPrgInfo->u8FavListLcn)
    {
        pstlistPrgInfo->u8FavListLcn = pstPrgInfo->u8FavListLcn;
    }

    if(0xfffe != pstPrgInfo->u16LogicNum)
    {
        pstlistPrgInfo->u16LogicNum = pstPrgInfo->u16LogicNum;
    }
    pstDesService->u8ValidMask |= pstSrcService->u8ValidMask;
    Sem_PrgList_V();
}

DBST_PROG *dbsf_ListSrchCheck2CreatePrgArray(MBT_S32 *pPrgNum) 
{
    DBST_PROG *pstPrgArray;

    Sem_PrgList_P();   

    ListDelInvalidPrgNode(&dbsv_stProgramHead);

    ListParseSortLCN(&dbsv_stProgramHead);
    
    pstPrgArray = ListCreatePrgArray(&dbsv_stProgramHead,pPrgNum);

    Sem_PrgList_V();

    return pstPrgArray;
}

MBT_VOID dbsf_ListPrgInit(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    if(MM_INVALID_HANDLE== dbsv_semPrgAccess)    
    {
        MLMF_Sem_Create(&dbsv_semPrgAccess,1); 
    }
    
    dbsv_u32PrgListType = pstBoxInfo->ucBit.u32PrgListType;
}

MBT_VOID dbsf_ListPrgTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_semPrgAccess)    
    {
        MLMF_Sem_Destroy(dbsv_semPrgAccess); 
        dbsv_semPrgAccess = MM_INVALID_HANDLE;
    }
}


MBT_BOOL dbsf_ListHaveVideoPrg( MBT_VOID )
{
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return MM_FALSE;
    }
    
    pstPrgNode = pstHead;
    do
    {
        if (pstPrgNode->stService.cProgramType == STTAPI_SERVICE_TELEVISION)
        {
            if (dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo)
            {
                Sem_PrgList_V();
                return MM_TRUE;
            }
        }
        pstPrgNode = pstPrgNode->pNextPrgNode;
    }while(pstPrgNode != pstHead);
    Sem_PrgList_V();
    return MM_FALSE;
}

MBT_BOOL dbsf_ListHaveFavVideoPrg( MBT_VOID )
{
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return MM_FALSE;
    }
    
    pstPrgNode = pstHead;
    do
    {
        if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK) 
        {
            if((pstPrgNode->stService.cProgramType == STTAPI_SERVICE_TELEVISION)&&(dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo))
            {
                Sem_PrgList_V();
                return MM_TRUE;
            }
        }
        pstPrgNode = pstPrgNode->pNextPrgNode;
    }while(pstPrgNode != pstHead);
    Sem_PrgList_V();
    return MM_FALSE;
}

MBT_BOOL dbsf_ListHaveRadioPrg( MBT_VOID )
{
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return MM_FALSE;
    }
    
    pstPrgNode = pstHead;
    do
    {
        if (pstPrgNode->stService.cProgramType == STTAPI_SERVICE_RADIO )
        {
            if (dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo)
            {
                Sem_PrgList_V();
                return MM_TRUE;
            }
        }
        pstPrgNode = pstPrgNode->pNextPrgNode;
    }while(pstPrgNode != pstHead);
    Sem_PrgList_V();
    return MM_FALSE;
}

MBT_BOOL dbsf_ListHaveFavRadioPrg( MBT_VOID )
{
    PRO_NODE *pstPrgNode;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return MM_FALSE;
    }
    pstPrgNode = pstHead;
    do
    {
        if(pstPrgNode->stService.ucProgram_status&FAVOURITE_BIT_MASK) 
        {
            if((pstPrgNode->stService.cProgramType == STTAPI_SERVICE_RADIO)&&(dbsm_InvalidLCN != pstPrgNode->stService.usiChannelIndexNo))
            {
                Sem_PrgList_V();
                return MM_TRUE;
            }
        }
        pstPrgNode = pstPrgNode->pNextPrgNode;
    }while(pstPrgNode != pstHead);
    Sem_PrgList_V();
    return MM_FALSE;
}

MBT_S32 dbsf_ListPosPrgTransXServiceID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();     
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    if(dbsm_InvalidID == u16ServiceID)
    {
        pstPrgInfo->stService = pstHead->stService;
        pstPrgInfo->u16LogicNum = pstHead->u16LogicNum;
        pstPrgInfo->u8FavListLcn = pstHead->u8FavListLcn;
        iRet = pstHead->stService.stPrgTransInfo.u32TransInfo;
        Sem_PrgList_V();
        return iRet ;
    }

    if(u16ServiceID > pstHead->stService.u16ServiceID)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
                {
                    if(u32TransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        pstPrgList->stPrgNode = pstDbsPro;
                        iRet = u32TransInfo;
                        Sem_PrgList_V();
                        return  iRet ;
                    }
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
            {
                if(u32TransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    pstPrgList->stPrgNode = pstDbsPro;
                    iRet = u32TransInfo;
                    Sem_PrgList_V();
                    return  iRet ;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
   
    Sem_PrgList_V();
    return	iRet ;
}



MBT_S32 dbsf_ListPosPrg2XLCN(MBT_S32 iPrgLCN,UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType)
{
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstDestNode;
    PRO_NODE *pstHead;
    MBT_U8 ucProgramType;
    MBT_S32 iRet = DVB_INVALID_LINK;
    MBT_U32 u32Mask;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }
    ucProgramType = (VIDEO_STATUS ==  u8TVRadioType) ? STTAPI_SERVICE_TELEVISION : STTAPI_SERVICE_RADIO;
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    pstDestNode = MM_NULL;
    if(iPrgLCN > pstHead->u16LogicNum)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if(iPrgLCN == pstDbsPro->u16LogicNum)
                {
                    if(ucProgramType == pstDbsPro->stService.cProgramType)
                    {
                        pstDestNode = pstDbsPro;
                        break;
                    }
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if(iPrgLCN == pstDbsPro->u16LogicNum)
            {
                if(ucProgramType == pstDbsPro->stService.cProgramType)
                {
                    pstDestNode = pstDbsPro;
                    break;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }

    if(MM_NULL != pstDestNode)
    {
        pstPrgInfo->stService = pstDestNode->stService;
        pstPrgInfo->u16LogicNum = pstDestNode->u16LogicNum;
        pstPrgInfo->u8FavListLcn = pstDestNode->u8FavListLcn;
        iRet = pstDestNode->stService.stPrgTransInfo.u32TransInfo;
        pstPrgList->stPrgNode = pstDestNode;
        
        if(m_ChannelList > dbsv_u32PrgListType)
        {
            u32Mask = dbsv_u32PrgListType;
            if(MM_FALSE == ListCheckGenreList(pstDestNode->stService.u16BouquetID,u32Mask))
            {
                dbsv_u32PrgListType = m_ChannelList;
            }
        }
        else if(m_ChannelList < dbsv_u32PrgListType&&dbsv_u32PrgListType < m_HD_Channel)
        {
            u32Mask = dbsv_u32PrgListType - m_ChannelList;
            if(0 == (u32Mask&(pstDestNode->stService.u16FavGroup)))
            {
                dbsv_u32PrgListType = m_ChannelList;
            }
        }
        else if(dbsv_u32PrgListType == m_HD_Channel)
        {
            if(0 == pstPrgInfo->stService.u8IsHDPrg)
            {
                dbsv_u32PrgListType = m_ChannelList;
            }
        }        
    }
    
    Sem_PrgList_V();
    return iRet;
}




MBT_S32 dbsf_ListPos2NextUnlockPrg(UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType)
{
    PRO_NODE *pstDbsPro ;
    PRO_NODE *pstHead;
    MBT_U8 ucProgramType;
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }
    
    ucProgramType = (VIDEO_STATUS ==  u8TVRadioType) ? STTAPI_SERVICE_TELEVISION : STTAPI_SERVICE_RADIO;
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    pstDbsPro = pstHead->pNextPrgNode;
    if(MM_NULL != pstDbsPro)
    {
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType &&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK)&&LOCK_BIT_MASK != (pstDbsPro->stService.ucProgram_status&LOCK_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                    pstPrgList->stPrgNode = pstDbsPro;
                    Sem_PrgList_V();
                    return iRet;
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    Sem_PrgList_V();
    return iRet;
}

 

MBT_S32 dbsf_ListPrevPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 uVideoAudio)
{
    MBT_U8 ucProgramType;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    ucProgramType = (VIDEO_STATUS ==  uVideoAudio) ? STTAPI_SERVICE_TELEVISION : STTAPI_SERVICE_RADIO;
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }
    
    if(MM_NULL == pstHead->pPrevPrgNode)
    {
        Sem_PrgList_V();
        return iRet;
    }
    
    if(m_ChannelList > dbsv_u32PrgListType)
    {
        MBT_U32 u32PrgType = dbsv_u32PrgListType;
        pstDbsPro = pstHead->pPrevPrgNode;
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType &&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    if(MM_TRUE == ListCheckGenreList(pstDbsPro->stService.u16BouquetID,u32PrgType))
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else if(m_ChannelList < dbsv_u32PrgListType&&dbsv_u32PrgListType < m_HD_Channel)
    {
        MBT_U16 u16FavMask = dbsv_u32PrgListType - m_ChannelList;
        pstDbsPro = pstHead->pPrevPrgNode;
        do
        {
            if(u16FavMask&(pstDbsPro->stService.u16FavGroup))
            {
                if( pstDbsPro->stService.cProgramType == ucProgramType &&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else if(m_HD_Channel == dbsv_u32PrgListType)
    {
        pstDbsPro = pstHead->pPrevPrgNode;
        do
        {
            if(1 == pstDbsPro->stService.u8IsHDPrg)
            {
                if( pstDbsPro->stService.cProgramType == ucProgramType &&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else
    {
        pstDbsPro = pstHead->pPrevPrgNode;
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType &&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                    pstPrgList->stPrgNode = pstDbsPro;
                    Sem_PrgList_V();
                    return iRet;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }

    Sem_PrgList_V();
    return iRet;
}


MBT_S32 dbsf_ListNextPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 uVideoAudio)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_LIST_NODE *pstPrgList;
    MBT_U8 ucProgramType;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }
    ucProgramType = (VIDEO_STATUS ==  uVideoAudio) ? STTAPI_SERVICE_TELEVISION : STTAPI_SERVICE_RADIO;
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }
    
    if(MM_NULL == pstHead->pNextPrgNode)
    {
        Sem_PrgList_V();
        return iRet;
    }

    if(m_ChannelList > dbsv_u32PrgListType)
    {
        MBT_U32 u32PrgType = dbsv_u32PrgListType;
        
        pstDbsPro = pstHead->pNextPrgNode;
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType&&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    if(MM_TRUE == ListCheckGenreList(pstDbsPro->stService.u16BouquetID,u32PrgType))
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else if(m_ChannelList < dbsv_u32PrgListType&&dbsv_u32PrgListType < m_HD_Channel)
    {
        MBT_U16 u16FavMask = dbsv_u32PrgListType - m_ChannelList;
        pstDbsPro = pstHead->pNextPrgNode;
        do
        {
            if(u16FavMask&(pstDbsPro->stService.u16FavGroup))
            {
                if( pstDbsPro->stService.cProgramType == ucProgramType&&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else if(m_HD_Channel == dbsv_u32PrgListType)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        do
        {
            if(1 == pstDbsPro->stService.u8IsHDPrg)
            {
                if( pstDbsPro->stService.cProgramType == ucProgramType&&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                        pstPrgList->stPrgNode = pstDbsPro;
                        Sem_PrgList_V();
                        return iRet;
                    }
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    else
    {
        pstDbsPro = pstHead->pNextPrgNode;
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType&&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                    pstPrgList->stPrgNode = pstDbsPro;
                    Sem_PrgList_V();
                    return iRet;
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }

    Sem_PrgList_V();
    return iRet;
}




/*======================================================================================
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 dbsf_ListGetPrgByServiceID(UI_PRG * pstPrgInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_NODE *pstHead;
    PRO_NODE *pstDbsPro;      
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    if(u16ServiceID > pstHead->stService.u16ServiceID)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if( pstDbsPro->stService.u16ServiceID== u16ServiceID)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                    Sem_PrgList_V();
                    return iRet;
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if( pstDbsPro->stService.u16ServiceID == u16ServiceID)
            {
                pstPrgInfo->stService = pstDbsPro->stService;
                pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                Sem_PrgList_V();
                return iRet;
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
    Sem_PrgList_V();
    return iRet;
}

MBT_S32 dbsf_ListGetPrgTransXPID(UI_PRG * pstPrgInfo,MBT_U32 u32TransInfo,MET_PTI_PID_T stVideoPID,MET_PTI_PID_T stAudioPID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_LIST_NODE *pstPrgList;
    PRO_NODE *pstHead;
    PRO_NODE *pstDbsPro;      
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    pstDbsPro = pstHead->pNextPrgNode;
    if(MM_NULL != pstDbsPro)
    {
        do
        {
            if( pstDbsPro->stService.stPrgTransInfo.u32TransInfo== u32TransInfo
                 &&MM_TRUE == ListHaveSamePID(stVideoPID,pstDbsPro->stService.Pids,pstDbsPro->stService.NumPids)
                 &&MM_TRUE == ListHaveSamePID(stAudioPID,pstDbsPro->stService.Pids,pstDbsPro->stService.NumPids))
            {
                pstPrgInfo->stService = pstDbsPro->stService;
                pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                Sem_PrgList_V();
                return iRet;
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    Sem_PrgList_V();
    return iRet;
}

/************************************************************************************************
*
*	获取由u32TransInfo及u16ServiceID指定的prog,并通过pstPrgInfo返回
*	此函数仅用于获取节目信息，而不改变当前播放的节目
*
*************************************************************************************************/
MBT_S32 dbsf_ListGetPrgTransXServicID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();     
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    if(dbsm_InvalidID == u16ServiceID)
    {
        Sem_PrgList_V();
        return iRet ;
    }

    if(u16ServiceID > pstHead->stService.u16ServiceID)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
                {
                    if(u32TransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                    {
                        pstPrgInfo->stService = pstDbsPro->stService;
                        pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                        pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                        iRet = u32TransInfo;
                        Sem_PrgList_V();
                        return  iRet ;
                    }
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if(u16ServiceID == pstDbsPro->stService.u16ServiceID)
            {
                if(u32TransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = u32TransInfo;
                    Sem_PrgList_V();
                    return  iRet ;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }
   
    Sem_PrgList_V();
    return	iRet ;
}





MBT_S32 dbsf_ListGetPrgArrayTransX(MBT_U32 u32TransInfo,UI_PRG *pstPrgInfo,MBT_U32 u32ArrayLen)
{
    PRO_NODE *pstDbsPro;      
    PRO_NODE *pstHead;
    MBT_S32 s32PgNum = 0;
    PRO_LIST_NODE *pstPrgList;
    if(MM_NULL != pstPrgInfo)
    {
        return s32PgNum;
    }
    
    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return s32PgNum;
    }

    pstDbsPro = pstHead->pNextPrgNode;
    if(MM_NULL != pstDbsPro)
    {
        do
        {
            if( pstDbsPro->stService.stPrgTransInfo.u32TransInfo == u32TransInfo)
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    pstPrgInfo[s32PgNum].stService = pstDbsPro->stService;
                    pstPrgInfo[s32PgNum].u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo[s32PgNum].u8FavListLcn = pstDbsPro->u8FavListLcn;
                    s32PgNum++;
                    if(s32PgNum >= u32ArrayLen)
                    {
                        break;
                    }
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }
    Sem_PrgList_V();
    return s32PgNum;
}

MBT_S32 dbsf_ListCurPrgInfo(UI_PRG * pstPrgInfo)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    MBT_U8 ucProgramType;
    PRO_LIST_NODE *pstPrgList;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstHead;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    memset(pstPrgInfo,0,sizeof(UI_PRG));
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return iRet;
    }

    if(dbsm_InvalidLCN != pstHead->stService.usiChannelIndexNo)
    {
        pstPrgInfo->stService = pstHead->stService;
        pstPrgInfo->u16LogicNum = pstHead->u16LogicNum;
        pstPrgInfo->u8FavListLcn = pstHead->u8FavListLcn;
        iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
        Sem_PrgList_V();
        return iRet;
    }


    ucProgramType = pstHead->stService.cProgramType;
    pstDbsPro = pstHead->pNextPrgNode;
    if(MM_NULL != pstDbsPro)
    {
        do
        {
            if( pstDbsPro->stService.cProgramType == ucProgramType&&SKIP_BIT_MASK != (pstDbsPro->stService.ucProgram_status&SKIP_BIT_MASK))
            {
                if(dbsm_InvalidLCN != pstDbsPro->stService.usiChannelIndexNo)
                {
                    pstPrgInfo->stService = pstDbsPro->stService;
                    pstPrgInfo->u16LogicNum = pstDbsPro->u16LogicNum;
                    pstPrgInfo->u8FavListLcn = pstDbsPro->u8FavListLcn;
                    iRet = pstPrgInfo->stService.stPrgTransInfo.u32TransInfo;
                    pstPrgList->stPrgNode = pstDbsPro;
                    Sem_PrgList_V();
                    return iRet;
                }
            }
            pstDbsPro = pstDbsPro->pNextPrgNode;
        }while(pstDbsPro != pstHead);
    }

    Sem_PrgList_V();
    return iRet;
}


/*****************************************************************************************************
  * PURPOSE		:	Read a program info by the specified Index.
 *****************************************************************************************************/
MBT_S32 dbsf_ListGetActualListPrgNum(MBT_VOID)
{
    MBT_S32 iRet;
    Sem_PrgList_P();  
    iRet = dbsv_stProgramHead.s32ActualProNum;
    Sem_PrgList_V();
    return iRet;
}

MBT_S32 dbsf_ListGetVirtLisPrgNum(MBT_VOID)
{
    MBT_S32 iRet;
    Sem_PrgList_P();  
    iRet = dbsv_stProgramHead.s32VirtProNum;
    Sem_PrgList_V();
    return iRet;
}



MBT_S32 dbsf_ListGetEcmCtrList(DBS_stCAEcmCtr *pstEcmCtr,MBT_U32 u32EcmCtrLen,MBT_U32 u32CurTransInfo,MBT_U16 u16CurServiceID)
{
    MBT_U32 u32TempEcmNum;
    MBT_S32 s32AllServiceNum = 0;
    MBT_U32 u32EcmCurPrg;
    MBT_U32 u32ServiceNum;
    MBT_U32 u32SideLimit = (u32EcmCtrLen-1)/2;
    MBT_U32 i;
    MBT_BOOL bExit;
    MBT_BOOL bGetService;
    PRO_NODE *pstHead;
    PRO_NODE *pstDbsPro;
    PRO_NODE *pstSpecifyNode = MM_NULL;
    PRG_PIDINFO *pstPIDInfo;
    PRO_LIST_NODE *pstPrgList;
    
    if(MM_NULL == pstEcmCtr||dbsm_InvalidID == u16CurServiceID)
    {
        return s32AllServiceNum;
    }
    
    memset(pstEcmCtr,0,sizeof(DBS_stCAEcmCtr)*u32EcmCtrLen);
    Sem_PrgList_P();
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return DVB_INVALID_LINK;
    }

    if(u16CurServiceID > pstHead->stService.u16ServiceID)
    {
        pstDbsPro = pstHead->pNextPrgNode;
        if(MM_NULL != pstDbsPro)
        {
            do
            {
                if(u16CurServiceID == pstDbsPro->stService.u16ServiceID)
                {
                    if(u32CurTransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                    {
                        pstSpecifyNode = pstDbsPro;
                        break;
                    }
                }
                pstDbsPro = pstDbsPro->pNextPrgNode;
            }while(pstDbsPro != pstHead);
        }
    }
    else
    {
        pstDbsPro = pstHead;
        do
        {
            if(u16CurServiceID == pstDbsPro->stService.u16ServiceID)
            {
                if(u32CurTransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
                {
                    pstSpecifyNode = pstDbsPro;
                    break;
                }
            }
            pstDbsPro = pstDbsPro->pPrevPrgNode;
        }while(pstDbsPro != pstHead);
    }

    if(MM_NULL == pstSpecifyNode)
    {
        Sem_PrgList_V();
        return s32AllServiceNum;
    }

    u32ServiceNum = 0;
    u32TempEcmNum = 0;
    bExit = MM_FALSE;
    pstDbsPro = pstSpecifyNode;
    do
    {
        if(u32CurTransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
        {
            bGetService = MM_FALSE;
            if(pstDbsPro->stService.NumPids > 0)
            {
                u32EcmCurPrg = 0;
                for(i = 0;i < pstDbsPro->stService.NumPids;i++)
                {
                    if(dbsm_InvalidPID != pstDbsPro->stService.Pids[i].EcmPid)
                    {
                        u32EcmCurPrg++;
                    }
                }

                if(u32TempEcmNum + u32EcmCurPrg > dbsm_MaxEdcmCtrNum)
                {
                    bExit = MM_TRUE;
                }
                else
                {
                    //MLMF_Print("Right ServiceID %x pstEcmCtr PIDNum %d EcmNum %d\n",pstDbsPro->stService.u16ServiceID,pstDbsPro->stService.NumPids,u32EcmCurPrg);
                    pstPIDInfo = pstDbsPro->stService.Pids;
                    for(i = 0;i < pstDbsPro->stService.NumPids;i++)
                    {
                        if(dbsm_InvalidPID != pstPIDInfo[i].EcmPid)
                        {
                            if(MM_TRUE == ListPutEcmCtr2List(pstEcmCtr,u32EcmCtrLen,pstDbsPro->stService.u16ServiceID,pstPIDInfo[i].EcmPid,pstPIDInfo[i].Pid))
                            {
                                u32TempEcmNum++;
                                bGetService = MM_TRUE;
                                if(u32TempEcmNum >= dbsm_MaxEdcmCtrNum)
                                {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            
            if(MM_TRUE == bGetService)
            {
                s32AllServiceNum++;
                u32ServiceNum++;
                if(u32ServiceNum >= u32SideLimit+1)
                {
                    bExit = MM_TRUE;
                }
            }
        }
        pstDbsPro = pstDbsPro->pNextPrgNode;
    }while(pstDbsPro != pstSpecifyNode&&MM_FALSE == bExit);

    u32ServiceNum = 0;
    u32TempEcmNum = 0;
    bExit = MM_FALSE;
    pstDbsPro = pstSpecifyNode->pPrevPrgNode;
    do
    {
        if(u32CurTransInfo == pstDbsPro->stService.stPrgTransInfo.u32TransInfo)
        {
            bGetService = MM_FALSE;
            if(pstDbsPro->stService.NumPids > 0)
            {
                u32EcmCurPrg = 0;
                for(i = 0;i < pstDbsPro->stService.NumPids;i++)
                {
                    //MLMF_Print("u16ServiceID %x PIDIndex %d ECMPID %x\n",pstDbsPro->stService.u16ServiceID,i,pstDbsPro->stService.Pids[i].EcmPid);
                    if(dbsm_InvalidPID != pstDbsPro->stService.Pids[i].EcmPid)
                    {
                        u32EcmCurPrg++;
                    }
                }

                //MLMF_Print("u32TempEcmNum %d,u32EcmCurPrg %d\n",u32TempEcmNum,u32EcmCurPrg);
                if(u32TempEcmNum + u32EcmCurPrg > dbsm_MaxEdcmCtrNum)
                {
                    bExit = MM_TRUE;
                }
                else
                {
                    //MLMF_Print("Left ServiceID %x pstEcmCtr PIDNum %d EcmNum %d\n",pstDbsPro->stService.u16ServiceID,pstDbsPro->stService.NumPids,u32EcmCurPrg);
                    pstPIDInfo = pstDbsPro->stService.Pids;
                    for(i = 0;i < pstDbsPro->stService.NumPids;i++)
                    {
                        if(dbsm_InvalidPID != pstPIDInfo[i].EcmPid)
                        {
                            if(MM_TRUE == ListPutEcmCtr2List(pstEcmCtr,u32EcmCtrLen,pstDbsPro->stService.u16ServiceID,pstPIDInfo[i].EcmPid,pstPIDInfo[i].Pid))
                            {
                                u32TempEcmNum++;
                                bGetService = MM_TRUE;
                                if(u32TempEcmNum >= dbsm_MaxEdcmCtrNum)
                                {
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            if(MM_TRUE == bGetService)
            {
                s32AllServiceNum++;
                u32ServiceNum++;
                if(u32ServiceNum >= u32SideLimit)
                {
                    bExit = MM_TRUE;
                }
                //MLMF_Print("dbsf_ListGetEcmCtrList s32AllServiceNum = %d u16ServiceID = %x\n",s32AllServiceNum,pstDbsPro->stService.u16ServiceID);
            }
        }
        pstDbsPro = pstDbsPro->pPrevPrgNode;
    }while(pstDbsPro != pstSpecifyNode&&MM_FALSE == bExit);
    Sem_PrgList_V();
/*
    {
        MBT_U32 k,m;
        MLMF_Print("dbsf_ListGetEcmCtrList pstEcmCtr s32AllServiceNum = %d\n",s32AllServiceNum);
        for(i = 0;i < s32AllServiceNum;i++)
        {
            MLMF_Print("[%d]u16ServiceID = %x u8Valid = %d u8EcmPIDNum = %d\n",i,pstEcmCtr[i].u16ServiceID,pstEcmCtr[i].u8Valid,pstEcmCtr[i].u8EcmPIDNum);
            for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k++)
            {
                MLMF_Print("[%d]stEcmPid = %x u8Valid = %d u8StreamPIDNum = %d\n",k,pstEcmCtr[i].stDecPidInfo[k].stEcmPid,pstEcmCtr[i].stDecPidInfo[k].u8Valid,pstEcmCtr[i].stDecPidInfo[k].u8StreamPIDNum);
                for(m = 0;m < pstEcmCtr[i].stDecPidInfo[k].u8StreamPIDNum;m++)
                {
                    MLMF_Print("[%d]stStreamPid = %x\n",m,pstEcmCtr[i].stDecPidInfo[k].stStreamPid[m]);
                }
            }
        }
    }
*/

    return	s32AllServiceNum;
}

/*只在切换频点时调用*/
MBT_VOID dbsf_ListFreeMntPrgList(MBT_VOID)
{
    Sem_PrgList_P();
    ListFreePrgList(&dbsv_stMntPrgHead);
    Sem_PrgList_V();
}



DBSE_UpdateType dbsf_ListMntCheck2UpdatePrgList(MBT_BOOL bNetworkIDUpdated,MBT_BOOL bGetNIT,MBT_BOOL bGetBat)
{
    DBSE_StoreType eSaveMode;
    DBSE_UpdateType eUpdateType = dbsm_NoUpdate;
    DBST_PROG *pstService;
    MBT_S32 s32MntValidPrgNum;
    MBT_S32 s32UpdateNum = 0;
    MBT_BOOL bAddOrDelPrg = MM_FALSE;
    
    pstService = dbsf_ForceMalloc(MAX_NO_OF_PROGRAMS*sizeof(DBST_PROG));
    if(MM_NULL == pstService)
    {
        return eUpdateType;
    }

    Sem_PrgList_P();
    eSaveMode = ListMntGetUpdatePrgArray(&dbsv_stMntPrgHead,&dbsv_stProgramHead,pstService,&bAddOrDelPrg,&s32MntValidPrgNum,&s32UpdateNum,bGetNIT,bGetBat,bNetworkIDUpdated);
    /*Free monitor prglist*/
    Sem_PrgList_V();


    if(0 != s32UpdateNum&&s32UpdateNum < MAX_NO_OF_PROGRAMS)
    {
        if(m_ResetAdd_Prg == eSaveMode)
        {
            MLMF_Print("Over write prg list\n");
            dbsf_FileOverWriteCurTPPrg(pstService,s32UpdateNum);
            dbsf_DataSaveBatInfo();
            MLMF_Print("Over write prg list OK\n");
        }
        else
        {
            MLMF_Print("Update write prg list\n");
            dbsf_FilePutPrg2File(pstService,s32UpdateNum);
            MLMF_Print("Update write prg list OK\n");
        }
        
        eUpdateType = dbsm_UpdateList;

        if(MM_TRUE == bAddOrDelPrg||m_ResetAdd_Prg == eSaveMode)
        {
            DBST_PROG *pstServiceInfo;
            MBT_U32 u32Num;
            dbsf_ListFreePrgList();
            
            pstServiceInfo = dbsf_FileCreatePrgArray(&u32Num);
            if(0 != u32Num)
            {
                dbsf_ListPutNode2PrgList(u32Num,pstServiceInfo);
            }
            
            if(MM_NULL != pstServiceInfo)
            {
                MLMF_Free(pstServiceInfo);
            }
        }
        MLMF_Print("update prg list OK\n");
    }

    dbsf_ForceFree(pstService);

    return eUpdateType;
}


/****************************************************************************************
*
*	若bIsTv为TRUE，则返回当前已搜索到的TV数,否则返回当前搜索到的Radio数
*
****************************************************************************************/
MBT_VOID DBSF_ListSrchGetPrgNumByTypeAndTrans(MBT_S32 *ps32TVNum,MBT_S32 *ps32RadioNum,TRANS_INFO trans)
{
    PRO_NODE *pstPrgInfo;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    
    if(MM_NULL == ps32TVNum||MM_NULL == ps32RadioNum)
    {
        return;
    }
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        Sem_PrgList_V();
        return;
    }

    *ps32TVNum = 0;
    *ps32RadioNum = 0;
    //DBS_DEBUG(("DBSF_ListSrchGetPrgNumByTypeAndTrans u32TransInfo = %x uiTPFreq = %d\n",trans.u32TransInfo,trans.uBit.uiTPFreq));
    pstPrgInfo = pstHead;

	do
	{
        if(trans.u32TransInfo == pstPrgInfo->stService.stPrgTransInfo.u32TransInfo)
        {
            //DBS_DEBUG(("%x %s frenq = %d serviceid = %x u16TsID = %x NumPids = %x\n",pstPrgInfo,pstPrgInfo->stService.cServiceName,pstPrgInfo->stService.stPrgTransInfo.uBit.uiTPFreq,pstPrgInfo->stService.u16ServiceID,pstPrgInfo->stService.u16TsID,pstPrgInfo->stService.NumPids));
            if(0x21 < (MBT_U8)pstPrgInfo->stService.cServiceName[0]&&' ' != pstPrgInfo->stService.cServiceName[0])
            {
                if(STTAPI_SERVICE_TELEVISION == pstPrgInfo->stService.cProgramType)
                {
                    *ps32TVNum += 1;
                }
                else if(STTAPI_SERVICE_RADIO == pstPrgInfo->stService.cProgramType)
                {
                    *ps32RadioNum += 1;
                }
            }
        }
        pstPrgInfo = pstPrgInfo->pNextPrgNode;
	}while(pstPrgInfo != pstHead);
	
    Sem_PrgList_V();
    DBS_DEBUG(("DBSF_ListSrchGetPrgNumByTypeAndTrans *ps32TVNum = %d*ps32RadioNum = %d\n",*ps32TVNum,*ps32RadioNum));
}



/****************************************************************************************
*
*	若bIsTv为TRUE，则返回当前已搜索到的TV数,否则返回当前搜索到的Radio数
*
****************************************************************************************/
MBT_VOID DBSF_ListSrchGetPrgNumByType(MBT_S32 *ps32TVNum,MBT_S32 *ps32RadioNum)
{
    PRO_NODE *pstPrgInfo;
    PRO_NODE *pstHead;
    PRO_LIST_NODE *pstPrgList;
    
    if(MM_NULL == ps32TVNum||MM_NULL == ps32RadioNum)
    {
        return;
    }
    
    Sem_PrgList_P();  
    pstPrgList = &dbsv_stProgramHead;
    pstHead = pstPrgList->stPrgNode;
    if(MM_NULL == pstHead)
    {
        DBS_DEBUG(("DBSF_ListSrchGetPrgNumByType MM_NULL == pstHead\n"));
        Sem_PrgList_V();
        return;
    }

    *ps32TVNum = 0;
    *ps32RadioNum = 0;
    //DBS_DEBUG(("DBSF_ListSrchGetPrgNumByTypeAndTrans u32TransInfo = %x uiTPFreq = %d\n",trans.u32TransInfo,trans.uBit.uiTPFreq));
    pstPrgInfo = pstHead;

	do
	{
	    if(dbsm_InvalidTransInfo != pstPrgInfo->stService.stPrgTransInfo.u32TransInfo)
	    {
            //DBS_DEBUG(("%x %s frenq = %d serviceid = %x u16TsID = %x NumPids = %x\n",pstPrgInfo,pstPrgInfo->stService.cServiceName,pstPrgInfo->stService.stPrgTransInfo.uBit.uiTPFreq,pstPrgInfo->stService.u16ServiceID,pstPrgInfo->stService.u16TsID,pstPrgInfo->stService.NumPids));
            if(0x21 < (MBT_U8)pstPrgInfo->stService.cServiceName[0]&&' ' != pstPrgInfo->stService.cServiceName[0])
            {
                if(STTAPI_SERVICE_TELEVISION == pstPrgInfo->stService.cProgramType)
                {
                    *ps32TVNum += 1;
                }
                else if(STTAPI_SERVICE_RADIO == pstPrgInfo->stService.cProgramType)
                {
                    *ps32RadioNum += 1;
                }
            }
	    }
        pstPrgInfo = pstPrgInfo->pNextPrgNode;
	}while(pstPrgInfo != pstHead);
	
    Sem_PrgList_V();
    DBS_DEBUG(("DBSF_ListSrchGetPrgNumByType *ps32TVNum = %d*ps32RadioNum = %d\n",*ps32TVNum,*ps32RadioNum));
}

MBT_VOID DBSF_ListSetPrgListType(MBT_U32 u32PrgListType)
{
    if(u32PrgListType > m_FavListA)
    {
        return;
    }

    Sem_PrgList_P();
    dbsv_u32PrgListType = u32PrgListType;
    Sem_PrgList_V();
    //MLMF_Print("DBSF_ListSetPrgListType PrgListType = %x\n",dbsv_u32PrgListType);
}

MBT_U32 DBSF_ListGetPrgListType(MBT_CHAR *pstrName)
{
    MBT_U32 u32Type;
    
    if(MM_NULL == pstrName)
    {
        return m_ListInvalid;
    }
    
    Sem_PrgList_P();
    if(dbsv_u32PrgListType == m_ListInvalid)
    {
        dbsv_u32PrgListType = m_ChannelList;
    }
    u32Type = dbsv_u32PrgListType;
    Sem_PrgList_V();
    

    if(m_ChannelList > u32Type)
    {
        DBS_GenreINFO stGenreInfo;
        if(MM_TRUE == dbsf_GenreListGetSpecifyIDGenreNode(&stGenreInfo,u32Type))
        {
            strcpy(pstrName,stGenreInfo.strGenreName);
        }
    }
    else if(m_ChannelList < u32Type&&u32Type < m_HD_Channel)
    {
        switch(u32Type)
        {
            case m_FavList1:
                strcpy(pstrName,"FAV1");
                break;
            case m_FavList2:
                strcpy(pstrName,"FAV2");
                break;
            case m_FavList3:
                strcpy(pstrName,"FAV3");
                break;
            case m_FavList4:
                strcpy(pstrName,"FAV4");
                break;
            case m_FavList5:
                strcpy(pstrName,"FAV5");
                break;
            case m_FavList6:
                strcpy(pstrName,"FAV6");
                break;
            case m_FavList7:
                strcpy(pstrName,"FAV7");
                break;
            case m_FavList8:
                strcpy(pstrName,"FAV8");
                break;
            case m_FavList9:
                strcpy(pstrName,"FAV9");
                break;
            case m_FavListA:
                strcpy(pstrName,"FAV10");
                break;
        }
    }
    else if(m_HD_Channel == u32Type)
    {
        strcpy(pstrName,"HD CHANNEL");
    }
    else
    {
        strcpy(pstrName,"TV CHANNEL");
    }
    
    //MLMF_Print("DBSF_ListGetPrgListType pstrName %s\n",pstrName);
    return u32Type;
}


MBT_U8 DBSF_ListGetLCNStatus(MBT_VOID)
{
    return dbsv_u8LCNOnOff;
}


