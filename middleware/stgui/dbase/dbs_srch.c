 
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

#define MOSAIC_ENTRY_TAG 0x80
#define m_MaxPrgInTP 100

#define m_srchAutoMode  0
#define m_srchFullBandMode  1
#define m_srchManualMode  2


typedef struct  
{
    MBT_U32 u3PmtStatus     : 3;
    MBT_U32 u13PmtPID        : 13;
    MBT_U32 u16ServiceID     : 16;
}DBSPMT_CTR;

typedef struct  
{
    MBT_U32 u8OtherSdtGot      : 8;
    MBT_U32 u8OtherSdtTotal    : 8;
    MBT_U32 u8NitGot           : 8;
    MBT_U32 u8NitTotal         : 8;
    MBT_U32 u8PrgAddType         :  2;
    MBT_U32 u8SchMode            :  2; 
    MBT_U32 u8NitTimeOut         :  1;  
    MBT_U32 u8ActrueSdtGot       :  1;
    MBT_U32 u8SdtActureTimeOut   :  1;  
    MBT_U32 u8SdtOtherTimeOut    :  1;  
    MBT_U32 u8BatTimeOut         :  1;  
    MBT_U32 u8PrgSrchTransIndex  :  7;    
    MBT_U32 u8PrgSrchTaskProcess :  8;
    MBT_U32 u8SrchTimer          :  8;  
    MBT_U32 u8SdtActureTimer            :  8;  
    MBT_U32 u8SdtOtherTimer             :  8;  
    MBT_U32 u8NitTimer                  :  8;  
    MBT_U32 u8BatTimer                  :  8;  
    MBT_U32 u8StartPmtNumber    :  8;
    MBT_U32 u8PmtGot            :  8;
    MBT_U32 u8PmtTotal          :  8;
    MBT_U32 u8SrchPmt           :  8;
    DBSPMT_CTR stPmtCtr[m_MaxPrgInTP];
}DBSSRCH_CTR;


/*
*用来记录搜索过程中的状态
*/
static DBSSRCH_CTR dbsv_stSearchState = 
{
    .u8OtherSdtGot = 0,
    .u8OtherSdtTotal = 0,
    .u8ActrueSdtGot = 0,
    .u8NitGot = 0,
    .u8NitTotal = 0,
    .u8PrgAddType = 0,
    .u8SchMode = m_srchAutoMode,
    .u8NitTimeOut = 0,
    .u8SdtActureTimeOut = 0,
    .u8SdtOtherTimeOut = 0,
    .u8BatTimeOut = 0,
    .u8BatTimer = 0xff,
    .u8PrgSrchTaskProcess = 0,
    .u8PrgSrchTransIndex = 0,
    .u8SrchTimer = 0xff,
    .u8SdtActureTimer = 0xff,
    .u8SdtOtherTimer = 0xff,
    .u8NitTimer = 0xff,
    .u8BatTimer = 0xff,
    .u8PmtGot = 0,
    .u8PmtTotal = 0,
    .u8StartPmtNumber = 0,
    .u8SrchPmt = 0,
};


MBT_U16 dbsv_u16BootupChannelServiceID = dbsm_InvalidID;
MBT_U16 dbsv_u16NetworkID = dbsm_InvalidID;
static MBT_U16 dbsv_u16FullbandSrchEndFrenq = 0;

static MBT_VOID (*dbsf_pTaskprocessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans)  = MM_NULL;
static MBT_VOID SrchNitSrchEnd(MBT_VOID);
static MBT_VOID SrchPrgXTransSrch(MBT_VOID);
static MBT_VOID SrchParsePAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen); 
static MBT_VOID SrchParsePMT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID SrchParseBAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID SrchParseNIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID SrchParseSDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID SrchBatTimerCall(MBT_U32 u32Para[]);
static MBT_VOID SrchXTableComplete(MBT_VOID);
static MBT_VOID SrchCheckNitSrchStatus(DBSSRCH_CTR *pstSrchCtr);
static MBT_VOID SrchClnCtrlTimer(MBT_VOID);
static MBT_VOID SrchNitSrchFaileCall(MBT_VOID);
static MBT_VOID SrchPmtFirstTimerCallBack(MBT_U32 u32Para[]);
//static MBT_VOID SrchXTransSrchRetry(MBT_VOID);
static MBT_S32 SrchBatDescript(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U8 u8Version,MBT_U16 u16BouquetID,MBT_U8 u8TableID);
static MBT_S32 SrchGetBouquetNameDesc(MBT_U8 *data,MBT_U8 u8Version,MBT_U16 u16BouquetID);
static MBT_S32 SrchLCNDesc(MBT_U8 *data,MBT_U16 u16TSID,MBT_U8 u8TableID);





static MBT_VOID SrchSdtTimerCall(MBT_U32 u32Para[])
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    if(0xff == pstSrchCtr->u8SdtActureTimer)
    {
        return;
    }
    pstSrchCtr->u8SdtActureTimer = 0xff;
    DBS_DEBUG(("SrchSdtTimerCall\n"));
    if(m_DbsSearchNit != dbsv_DbsWorkState&&m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }

    pstSrchCtr->u8SdtActureTimeOut = 1;

    SRSTF_StopSpecifyFilter(SDT_FILTER0,SrchParseSDT);
    if(m_DbsSearchPrg == dbsv_DbsWorkState)
    {
        SrchXTableComplete();
    }
    else if(m_DbsSearchNit == dbsv_DbsWorkState)
    {
        SrchCheckNitSrchStatus(pstSrchCtr);
    }
}


static MBT_VOID SrchSdtOtherTimerCall(MBT_U32 u32Para[])
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    if(0xff == pstSrchCtr->u8SdtOtherTimer)
    {
        return;
    }
    pstSrchCtr->u8SdtOtherTimer = 0xff;
    DBS_DEBUG(("SrchSdtOtherTimerCall\n"));
    if(m_DbsSearchNit != dbsv_DbsWorkState&&m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    
    pstSrchCtr->u8SdtOtherTimeOut = 1;
    SRSTF_StopSpecifyFilter(SDT_FILTER1,SrchParseSDT);
    if(m_DbsSearchPrg == dbsv_DbsWorkState)
    {
        SrchXTableComplete();
    }
    else if(m_DbsSearchNit == dbsv_DbsWorkState)
    {
        SrchCheckNitSrchStatus(pstSrchCtr);
    }
}


static MBT_VOID SrchNitTimerCall(MBT_U32 u32Para[])
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    SRSTF_StopSpecifyFilter(NIT_FILTER,SrchParseNIT);
    if(0xff == pstSrchCtr->u8NitTimer)
    {
        return;
    }
    pstSrchCtr->u8NitTimer = 0xff;
    DBS_DEBUG(("SrchNitTimerCall\n"));
    if(m_DbsSearchNit != dbsv_DbsWorkState )
    {
        return;
    }
    
    pstSrchCtr->u8NitTimeOut = 1;

    SrchCheckNitSrchStatus(pstSrchCtr);
}

static MBT_VOID SrchBatTimerCall(MBT_U32 u32Para[])
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    SRSTF_StopSpecifyFilter(BAT_FILTER,SrchParseBAT);
    if(0xff == pstSrchCtr->u8BatTimer)
    {
        return;
    }
    pstSrchCtr->u8BatTimer = 0xff;
    if(m_DbsSearchNit != dbsv_DbsWorkState )
    {
        return;
    }
    DBS_DEBUG(("SrchBatTimerCall\n"));
    pstSrchCtr->u8BatTimeOut = 1;
    SrchCheckNitSrchStatus(pstSrchCtr);
}




static MBT_VOID SrchServiceDescript(MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode,MBT_U8 u8TableID)
{
    MBT_S32	iLength;
    MBT_S32	iTemp;
    MBT_S32	iNoOfBytesParsed ;

    if(MM_NULL == pstCurPrgNode)
    {
        return;
    }

    pstCurPrgNode->stService.cProgramType = pu8MsgData[2];
    pu8MsgData += 3;
    //we dont need service provider name, so I skip it Peter 060731
    iLength = pu8MsgData [ 0 ];

	//deal with provider name,if it is not SKY NET,then delete this program
	pu8MsgData ++;

    //pu8MsgData += 1+iLength;				
    pu8MsgData += iLength;				

    //parsed service name
    iTemp = 0;                                                
    while((0x21 > pu8MsgData [1 +iTemp])&&iTemp < pu8MsgData [ 0 ])
    {
        iTemp++;
    }
    if(iTemp > 0)
    {
        iLength = pu8MsgData [ 0 ] - iTemp;
        pu8MsgData += 1+iTemp;
    }
    else
    {
        iLength = pu8MsgData [ 0 ];
        pu8MsgData += 1;
    }

    iNoOfBytesParsed = iLength> MAX_SERVICE_NAME_LENGTH ? MAX_SERVICE_NAME_LENGTH : iLength; /*test*/

    iTemp = 0;                                                
    while(0x1f < pu8MsgData [iTemp]&&iTemp < iNoOfBytesParsed)
    {
        iTemp++;
    }
    
    pstCurPrgNode->stService.u8ValidMask |= PRG_SDT_VALID_MASK;
    memcpy(pstCurPrgNode->stService.cServiceName, pu8MsgData,iTemp);      
    pstCurPrgNode->stService.cServiceName[iTemp] = 0;    
    DBS_DEBUG(("cProgramType %x serviceID = %x name = %s\n",pstCurPrgNode->stService.cProgramType,pstCurPrgNode->stService.u16ServiceID,pstCurPrgNode->stService.cServiceName));
}

static MBT_S32 SrchBatGtplBootUpChannel(MBT_U8 *data)
{
    MBT_U8 *pData = data;
    MBT_U8 *pEnd;
    MBT_U8 descriptor_length;

    if(NULL == pData)
    {
        return 4096;
    }

    descriptor_length = pData[1];

    pData += 2;
    pEnd = pData + descriptor_length;
    while(pData < pEnd)
    {
        if(0 == pData[2]&&0 == pData[3]&&0 == pData[4])
        {
            dbsv_u16BootupChannelServiceID = ((pData[0]<<8)|pData[1]);
            break;
        }
        pData += 5;
    }

    return (descriptor_length + 2);
}




static MBT_S32 SrchServiceListDesc(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U8 u8TableID,MBT_U16 u16BouquetID)
{
    MBT_S32 len;
    MBT_U8 * pData = pu8MsgData;
    MBT_U8 descriptor_length = pData[1];
    PRO_NODE stPrgInfo;

    if(MM_NULL == pu8MsgData)
    {
        return 0x7fffffff;
    }

    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    stPrgInfo.stService.u16TsID = u16TSID;
    len = descriptor_length;
    pData += 2;
    /*节目类型从BAT里面取*/
    if(BAT_TABLE_ID == u8TableID)
    {
        while (len > 0)
        {
            stPrgInfo.stService.u16ServiceID = ((pData[0]<<8)|pData[1]);
            stPrgInfo.stService.cProgramType = 0xff;
            stPrgInfo.stService.u8ValidMask |= PRG_BAT_VALID_MASK;
            stPrgInfo.stService.u16BouquetID[0] = 1;
            stPrgInfo.stService.u16BouquetID[1] = u16BouquetID;
            DBS_DEBUG(("u16BouquetID = %x u16ServiceID = %x\n",u16BouquetID,stPrgInfo.stService.u16ServiceID));
            dbsf_ListSrchWritePrgInfo(&stPrgInfo,u8TableID);
            len -= 3;
            pData += 3;
        }
    }
    else
    {
        while (len > 0)
        {
            stPrgInfo.stService.u16ServiceID = ((pData[0]<<8)|pData[1]);
            stPrgInfo.stService.cProgramType = 0xff;
            stPrgInfo.stService.u8ValidMask |= PRG_NIT_VALID_MASK;
            dbsf_ListSrchWritePrgInfo(&stPrgInfo,u8TableID);
            len -= 3;
            pData += 3;
        }
    }
    return (descriptor_length + 2);
}


/***************************************************************************************************
 * CODE			:	SrchBatDescript
 * TYPE		   	:	subroutine
 * PURPOSE		:
 *		Parses the descriptors and stores the relevant information into	the
 *		program/ transponder record pointed by u16TSID.
 *
 *	THEORY OF OPERATION:
 *	1.	read the first byte which will give you	the descriptor tag.
 *	2.	read and set the length	of the descriptor.
 *	3.	decode the descriptor and update the database
 *	4.	return descriptor length + 2;
 ***************************************************************************************************/
static MBT_S32 SrchBatDescript(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U8 u8Version,MBT_U16 u16BouquetID,MBT_U8 u8TableID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    switch ( pu8MsgData [ 0 ])
    {
		case BOUQUET_NAME_DESC:
            SrchGetBouquetNameDesc(pu8MsgData,u8Version,u16BouquetID);
            break;

        case m_Gtpl_BootUpChannelTag:
            SrchBatGtplBootUpChannel(pu8MsgData);
            break;

            
        case LCN_DESCRIPTOR82:
        case LCN_DESCRIPTOR83:
            SrchLCNDesc(pu8MsgData,u16TSID,NIT_ACTUAL_NETWORK_TABLE_ID);
            break;
            
        case NETWORK_NAME_DESC:				/*	0x40 */
            break;
            
        case SERVICE_LIST_DESC:				/* 0x41 */	
            SrchServiceListDesc(u16TSID,pu8MsgData,u8TableID,u16BouquetID);
            break;
            
        default:
            break;
    }
    return ( iDescriptorLength + 2 );
}



static MBT_VOID SrchXTableComplete(MBT_VOID)
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    MBT_BOOL bSdtActrueGot = MM_FALSE;
    MBT_BOOL bSdtOtherGot = MM_FALSE;
    MBT_BOOL bSrchEnd = MM_FALSE;

    if(1 == pstSrchCtr->u8ActrueSdtGot)
    {	
        DBS_DEBUG(("SrchXTableComplete Get sdt actrue\n"));
        bSdtActrueGot = MM_TRUE;
    }

    DBS_DEBUG(("SrchXTableComplete u8OtherSdtGot %d u8OtherSdtTotal %d\n",pstSrchCtr->u8OtherSdtGot,pstSrchCtr->u8OtherSdtTotal));
    if(pstSrchCtr->u8OtherSdtGot >= pstSrchCtr->u8OtherSdtTotal)
    {	
        bSdtOtherGot = MM_TRUE;
    }

    if((MM_TRUE == bSdtActrueGot)&&(MM_TRUE == bSdtOtherGot))
    {	
        bSrchEnd = MM_TRUE;
    }
    else
    {
        if((1 == pstSrchCtr->u8SdtActureTimeOut)&&(MM_TRUE == bSdtOtherGot))
        {
            bSrchEnd = MM_TRUE;
        }
        if((1 == pstSrchCtr->u8SdtOtherTimeOut)&&(MM_TRUE == bSdtActrueGot))
        {
            bSrchEnd = MM_TRUE;
        }
    }

    DBS_DEBUG(("SrchXTableComplete SrchEnd = %d u8PmtGot %d,u8PmtTotal %d\n",bSrchEnd,pstSrchCtr->u8PmtGot,pstSrchCtr->u8PmtTotal));
    if(MM_TRUE == bSrchEnd&&pstSrchCtr->u8PmtGot >= pstSrchCtr->u8PmtTotal)
    {
        SrchPrgXTransSrch();
    }
}



static MBT_VOID SrchComplete(MBT_VOID)
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    SrchClnCtrlTimer();
    DBS_DEBUG(("SrchComplete dbsv_DbsWorkState = %d\n",dbsv_DbsWorkState));
    if(m_DbsSearchNit != dbsv_DbsWorkState&&m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    SRSTF_CancelAllSectionReq();
    pstSrchCtr->u8PrgSrchTaskProcess = 100;
    if(dbsf_pTaskprocessNotify)
    {
        dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
    }
    
    DBS_DEBUG(("SrchComplete coplete set to m_DbsSearchEnd\n"));
    dbsf_SetDbsState(m_DbsSearchEnd);
}

static MBT_VOID pat_TimerCallBack(MBT_U32 u32Para[])
{
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    SRSTF_StopSpecifyFilter(PAT_FILTER,SrchParsePAT);
    DBS_DEBUG(("PAT Timeout\n"));
    SrchPrgXTransSrch();
}

static MBT_VOID SrchParsePAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)  
{
    MBT_U16	stPid;
    MBT_U16	stProgramNo;
    MBT_U16	stPrevProgramNo;
    MBT_U16	uTsId;
    MBT_U8 u8PmtTotal;
    MBT_U8 *pu8End;
    MMT_STB_ErrorCode_E stRet = MM_NO_ERROR;   
    DBSPMT_CTR *pstPmtCtr;
    PRO_NODE stPrgInfo;
    DBSSRCH_CTR *pstSrchCtr;
    MBT_U8 pstData[FILTER_DEPTH_SIZE];
    MBT_U8 pstMask[FILTER_DEPTH_SIZE];

    if(PAT_TABLE_ID != pu8MsgData[0])
    {
        return;
    }
    SRSTF_StopSpecifyFilter(PAT_FILTER,SrchParsePAT);
    if(m_DbsSearchPrg != dbsv_DbsWorkState )
    {
        return;
    }
    pu8End = pu8MsgData + iMsgLen - 4;
    uTsId = (pu8MsgData[3] << 8) | pu8MsgData[4];
    DBS_DEBUG(("[SrchParsePAT] tableid = %x iMsgLen = %d uTsId = %x\n",pu8MsgData[0],iMsgLen,uTsId));
    pu8MsgData = pu8MsgData + 8;
    pstSrchCtr = &dbsv_stSearchState;
    u8PmtTotal = 0;
    stPrevProgramNo = dbsm_InvalidID;
    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    stPrgInfo.stService.stPrgTransInfo = dbsv_stCurTransInfo;
    stPrgInfo.stService.u16TsID = uTsId;
    while ( pu8MsgData < pu8End)
    {
        stProgramNo	= *pu8MsgData;
        ++pu8MsgData;
        stProgramNo	= ((stProgramNo<<8)|(*pu8MsgData));
        ++pu8MsgData;
        stPid = (*pu8MsgData & 0x1F);
        ++pu8MsgData;
        stPid =((stPid<<8)| (*pu8MsgData));
        ++pu8MsgData;
        DBS_DEBUG(("SrchParsePAT stProgramNo = %x \n",stProgramNo));
        if (stProgramNo == 0 ||stPrevProgramNo == stProgramNo)
        {
            continue ;
        }

        stPrevProgramNo = stProgramNo;

        stPrgInfo.stService.u16ServiceID = stProgramNo;
        stPrgInfo.stService.sPmtPid =  stPid ;
        dbsf_ListSrchWritePrgInfo(&stPrgInfo,PAT_TABLE_ID);
        
        pstPmtCtr = &(pstSrchCtr->stPmtCtr[u8PmtTotal]);
        pstPmtCtr->u13PmtPID = stPid;
        pstPmtCtr->u3PmtStatus = dbsm_PmtWait;
        pstPmtCtr->u16ServiceID = stProgramNo;
        u8PmtTotal += 1;
        if(1 == pstSrchCtr->u8SrchPmt)
        {
            if(MM_NO_ERROR == stRet)
            {
                memset(pstData,0,sizeof(pstData));
                memset(pstMask,0,sizeof(pstMask));
                pstData[0] = PMT_TABLE_ID;
                pstMask[0] = 0xff;
                pstData[1] = ((stProgramNo>>8)&0x00ff);
                pstMask[1] = 0xff;
                pstData[2] = (stProgramNo&0x00ff);
                pstMask[2] = 0xff;
                DBS_DEBUG(("[SrchParsePAT] Start PMT\n"));
                stRet = SRSTF_SrchSectTable(SrchParsePMT,
                                            stPid, 
                                            1024, 
                                            pstData, 
                                            pstMask, 
                                            3,
                                            PMT_TIME_OUT,
                                            SrchPmtFirstTimerCallBack,
                                            IPANEL_NO_VERSION_RECEIVE_MODE,
                                            MM_NULL);

                if(MM_NO_ERROR == stRet)
                {
                    DBS_DEBUG(("SrchParsePAT, Pmt request pid  = %x serviceid = %x \n",stPid,stProgramNo));
                    pstPmtCtr->u3PmtStatus = dbsm_PmtStarted;
                    pstSrchCtr->u8StartPmtNumber++;
                }
                else
                {
                    DBS_DEBUG(("SrchParsePAT, Pmt request pid  = %x serviceid = %x faile\n",stPid,stProgramNo));
                }
            }
        }
        else
        {
            stRet = MM_ERROR_NO_FREE_HANDLES;
        }

        if(MM_ERROR_NO_FREE_HANDLES == stRet)
        {
            pstPmtCtr->u3PmtStatus = dbsm_PmtWait;
        }
    }

    pstSrchCtr->u8PmtTotal = u8PmtTotal;
    if(0 == pstSrchCtr->u8SrchPmt)
    {
        pstSrchCtr->u8StartPmtNumber = u8PmtTotal;
        pstSrchCtr->u8PmtGot = u8PmtTotal;
    }
}

static MBT_VOID dbsf_StartNewPmt(MBT_VOID)
{
    MBT_U8 pstData[FILTER_DEPTH_SIZE];
    MBT_U8 pstMask[FILTER_DEPTH_SIZE];
    MBT_U16 u16ServiceID;
    MBT_U16 i;
    DBSPMT_CTR *pstPmtCtr;
    DBSSRCH_CTR *pstSrchCtr;
    
    if(m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;
    if(pstSrchCtr->u8StartPmtNumber >= pstSrchCtr->u8PmtTotal)
    {
        return;
    }

    pstPmtCtr = pstSrchCtr->stPmtCtr;
    for(i = 0;i < m_MaxPrgInTP;i++)
    {
        if(pstPmtCtr->u3PmtStatus == dbsm_PmtWait)
        {
            break;
        }
        pstPmtCtr++;
    }
    
    if(m_MaxPrgInTP <= i)
    {
        return;
    }

    u16ServiceID = pstPmtCtr->u16ServiceID;
    memset(pstData,0,sizeof(pstData));
    memset(pstMask,0,sizeof(pstMask));
    pstData[0] = PMT_TABLE_ID;
    pstMask[0] = 0xff;
    pstData[1] = ((u16ServiceID>>8)&0x00ff);
    pstMask[1] = 0xff;
    pstData[2] = (u16ServiceID&0x00ff);
    pstMask[2] = 0xff;

    if(MM_NO_ERROR == SRSTF_SrchSectTable(SrchParsePMT,
                                        pstPmtCtr->u13PmtPID, 
                                        1024, 
                                        pstData, 
                                        pstMask, 
                                        3,
                                        PMT_TIME_OUT,
                                        SrchPmtFirstTimerCallBack,
                                        IPANEL_NO_VERSION_RECEIVE_MODE,
                                        MM_NULL))
    {
        DBS_DEBUG(("dbsf_StartNewPmt,Pmt request pid  = %x serviceid = %x \n",pstPmtCtr->u13PmtPID,u16ServiceID));
        pstPmtCtr->u3PmtStatus = dbsm_PmtStarted ;
        pstSrchCtr->u8StartPmtNumber++;
    }
}



static MBT_VOID pmt_SrchLastTimerCallBack(MBT_U32 u32Para[])
{
    DBS_DEBUG(("PmtTimeout pid  = %x  \n",u32Para[3]));
    SRSTF_DeleteFilter((MET_PTI_FilterHandle_T)u32Para[0]);
    dbsf_StartNewPmt();    
}
static MBT_VOID SrchPmtFirstTimerCallBack(MBT_U32 u32Para[])
{
    MBT_U8 pstData[FILTER_DEPTH_SIZE];
    MBT_U8 pstMask[FILTER_DEPTH_SIZE];
    MBT_U16 u16PmtPID = u32Para[3];
    MBT_U16 u16ServiceID = dbsm_InvalidID;
    MBT_U16 i;
    DBSPMT_CTR *pstPmtCtr;
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;

    DBS_DEBUG(("SrchPmtFirstTimerCallBack PmtTimeout pid  = %x  \n",u32Para[3]));
    SRSTF_DeleteFilter((MET_PTI_FilterHandle_T)u32Para[0]);

    pstPmtCtr = pstSrchCtr->stPmtCtr;
    for(i = 0;i < m_MaxPrgInTP;i++)
    {
        if(pstPmtCtr->u13PmtPID == u16PmtPID)
        {
            break;
        }
        pstPmtCtr++;
    }
    
    if(m_MaxPrgInTP <= i)
    {
        return;
    }
    u16ServiceID = pstPmtCtr->u16ServiceID;

    memset(pstData,0,sizeof(pstData));
    memset(pstMask,0,sizeof(pstMask));
    pstData[0] = PMT_TABLE_ID;
    pstMask[0] = 0xff;    
    pstData[0] = PMT_TABLE_ID;
    pstMask[0] = 0xff;
    pstData[1] = ((u16ServiceID>>8)&0x00ff);
    pstMask[1] = 0xff;
    pstData[2] = (u16ServiceID&0x00ff);
    pstMask[2] = 0xff;


    if(MM_NO_ERROR == SRSTF_SrchSectTable(SrchParsePMT,
                                                        u16PmtPID, 
                                                        1024, 
                                                        pstData, 
                                                        pstMask, 
                                                        3,
                                                        PMT_TIME_OUT,
                                                        pmt_SrchLastTimerCallBack,
                                                        IPANEL_NO_VERSION_RECEIVE_MODE,
                                                        MM_NULL))
    {
        DBS_DEBUG(("SrchPmtFirstTimerCallBack Pmt request pid  = %x \n",u16PmtPID));
    }
}


static MBT_S32 dbsf_GetCaDescript(MBT_U8 *pu8MsgData ,MET_PTI_PID_T *stCasPid)
{
    MBT_S32	siDescriptorLength = pu8MsgData [ 1 ] + 2;
    MBT_U16 u16EcmPid = (( ( pu8MsgData[4] & 0x1F) << 8 ) | pu8MsgData[5] );
    if(MM_NULL == pu8MsgData||MM_NULL == stCasPid||u16EcmPid >= dbsm_InvalidPID)
    {
        return siDescriptorLength;
    }
    if (dbsf_CTRCASCheckSysID(( pu8MsgData[2] << 8 ) | pu8MsgData[3]))
    {
        *stCasPid = u16EcmPid;
    }
    return siDescriptorLength;
}
        

static MBT_VOID SrchParsePMT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    MBT_S32	iEsInfoLength;
    MBT_S32	i;
    MET_PTI_PID_T stGlobleEcmPID = dbsm_InvalidPID;
    MET_PTI_PID_T stLocalEcmPID = dbsm_InvalidPID;
    PRO_NODE stPrgInfo;
    PRG_PIDINFO *pstPrgPIDInfo;
    MBT_U16	stProgramNo;
    MBT_U16	stTempData16;
    MET_PTI_PID_T stAudioPid = dbsm_InvalidPID;
    MET_PTI_PID_T stPrivitePid = dbsm_InvalidPID;
    MET_PTI_PID_T stPcrPid = dbsm_InvalidPID;
    MBT_U16 u16StreamType = 0;
    MBT_U8 u8AudioPIDNum = 0;
    MBT_U8 u8Encrypted = 0;
    PRG_PIDINFO stVideoPids = {dbsm_InvalidPID,dbsm_InvalidPID,0,{0,0,0}};
    PRG_PIDINFO stAudioPids[MAX_PRG_PID_NUM-2];
    DBSPMT_CTR *pstPmtCtr;
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    
    if(PMT_TABLE_ID != pu8MsgData[0])
    {
        //MLMF_Print("SrchParsePMT  rror tableid = %x \n",pu8MsgData[0]);
        return;
    }
    stProgramNo     = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    DBS_DEBUG(("SrchParsePMT Get pid  = %x serviceid = %x \n",stCurPid,stProgramNo));

    SRSTF_DeleteFilter(stFilterHandle);
    
    pstPmtCtr = pstSrchCtr->stPmtCtr;
    for(i = 0;i < m_MaxPrgInTP;i++)
    {
        if(pstPmtCtr->u16ServiceID == stProgramNo)
        {
            break;
        }
        pstPmtCtr++;
    }

    if(m_MaxPrgInTP <= i)
    {
        return;
    }

    
    if(dbsm_PmtComplete == pstPmtCtr->u3PmtStatus)
    {
        return;
    }
    pstPmtCtr->u3PmtStatus = dbsm_PmtComplete;
    
    
    memset(stAudioPids,0,sizeof(stAudioPids));
    stPcrPid = ((( pu8MsgData [ 8 ] & 0x1F)<<8)|pu8MsgData [ 9 ]);/*ahfu*/
    pstSrchCtr->u8PmtGot++;    
    iMsgLen -=  4;
    iInfoLength = (((pu8MsgData [ 10 ] & 0xF)<<8)|pu8MsgData [ 11 ]);
    pu8MsgData	+=  12;
    pu8End = pu8MsgData + iInfoLength;
    while ( pu8MsgData < pu8End )
    {
        if(dbsm_CaDesc_Tag == pu8MsgData [0])
        {
            u8Encrypted = 1;
            //DBS_DEBUG(("Prg %x Encrypt\n",stProgramNo));
            if(dbsm_InvalidPID == stGlobleEcmPID)
            {
                dbsf_GetCaDescript (pu8MsgData ,&stGlobleEcmPID);
            }
        }
        
        pu8MsgData += pu8MsgData [ 1 ] + 2;
    }
    
    u8AudioPIDNum = 0;
    pu8End = pu8MsgData + iMsgLen - iInfoLength - 13;
    while (pu8MsgData < pu8End)
    {
        iEsInfoLength = (((pu8MsgData [ 3 ] & 0xF)<<8)|pu8MsgData [ 4 ]);
        stTempData16 = (((pu8MsgData [ 1 ] & 0x1F)<<8)|pu8MsgData [ 2 ]);
        DBS_DEBUG(("streamtype = %x stTempData16 = %x\n",pu8MsgData [ 0 ],stTempData16));
        pstPrgPIDInfo = MM_NULL;
        switch (pu8MsgData [ 0 ])
        {
            case E_SI_STREAM_MPEG1_VID:            /* 0x01 */
                u16StreamType = MM_STREAMTYPE_MP1V;
                pstPrgPIDInfo = &stVideoPids;
                break;
                
            case E_SI_STREAM_MPEG2_VID:            /* 0x02 */
                u16StreamType = MM_STREAMTYPE_MP2V;
                pstPrgPIDInfo = &stVideoPids;
                break;
                
            case E_SI_STREAM_AVCH264_VID:            /* 0x1B */
                u16StreamType= MM_STREAMTYPE_H264;
                pstPrgPIDInfo = &stVideoPids;
                break;
                
            case E_SI_STREAM_MPEG1_AUD:            /* 0x03 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_MP1A;
                if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                    u8AudioPIDNum++;
                }
                break;
                
            case E_SI_STREAM_MPEG4_AUD:            /* 0x04 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_MP4A;
                if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                    u8AudioPIDNum++;
                }
                break;

            case E_SI_STREAM_MPEG2_AUD:            /* 0x04 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_MP2A;
                if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                    u8AudioPIDNum++;
                }
                break;
                
            case E_SI_STREAM_AAC_AUD:            /* 0x0f*/
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_AAC;
                if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                    u8AudioPIDNum++;
                }
                break;
            case E_SI_STREAM_AC3_AUD:            /* 0x81 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_AC3;
                if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                    u8AudioPIDNum++;
                }
                break;
                
            case 0x0B:            /* 0x05 */
            case E_SI_STREAM_PRIVATE_DATA:            /* 0x05 */
                if(dbsm_InvalidPID == stPrivitePid)
                {
                    stPrivitePid = stTempData16;
                    u16StreamType = pu8MsgData [ 0 ];
                }
                break;
                
            default:
                break;
        }

        stLocalEcmPID = stGlobleEcmPID;
        pu8MsgData += 5 ;
        pu8End1 = pu8MsgData + iEsInfoLength;

        while (pu8MsgData < pu8End1)
        {
            switch(pu8MsgData [0])
            {
                case dbsm_CaDesc_Tag:
                    u8Encrypted = 1;
                    if(dbsm_InvalidPID == stLocalEcmPID)
                    {
                        dbsf_GetCaDescript (pu8MsgData ,&stLocalEcmPID);
                    }
                    break;
                case MOSAIC_DESCRIPTOR:
                    break;
                case ISO_639_LANGUAGE_DESC:
                    if(MM_NULL != pstPrgPIDInfo)
                    {
                        memcpy(pstPrgPIDInfo->acAudioLanguage, pu8MsgData + 2, 3 ) ;
                    }
                    break;
                case AC3D__DESCRIPTOR:
                    if(dbsm_InvalidPID != stPrivitePid)
                    {
                        stAudioPid = stPrivitePid;
                        u16StreamType = MM_STREAMTYPE_AC3;
                        if(u8AudioPIDNum < MAX_PRG_PID_NUM-2)
                        {
                            pstPrgPIDInfo = &stAudioPids[u8AudioPIDNum];
                            u8AudioPIDNum++;
                        }
                    }
                    break;
                default:
                    break;
            }
            pu8MsgData += pu8MsgData [ 1 ] + 2 ;
        }
        
        if(MM_NULL != pstPrgPIDInfo&&0 != stTempData16)
        {
            pstPrgPIDInfo->Pid = stTempData16;
            pstPrgPIDInfo->EcmPid = stLocalEcmPID;
            pstPrgPIDInfo->Type = u16StreamType;
            DBS_DEBUG(("Pid = %x EcmPid = %x u16StreamType = %x\n",pstPrgPIDInfo->Pid,pstPrgPIDInfo->EcmPid,u16StreamType));
        }
        
        iInfoLength -= ( iEsInfoLength + 5 );
    }
    
    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    stPrgInfo.stService.NumPids= 0;
    if(dbsm_InvalidPID != stVideoPids.Pid)
    {
        stPrgInfo.stService.Pids[stPrgInfo.stService.NumPids] = stVideoPids;
        stPrgInfo.stService.NumPids++;
    }

    if(stPcrPid != dbsm_InvalidPID)
    {
        stPrgInfo.stService.Pids[stPrgInfo.stService.NumPids].Pid = stPcrPid;
        stPrgInfo.stService.Pids[stPrgInfo.stService.NumPids].Type = MM_STREAMTYPE_PCR;
        stPrgInfo.stService.NumPids++;
    }

    if(u8AudioPIDNum > 0)
    {
        memcpy(&stPrgInfo.stService.Pids[stPrgInfo.stService.NumPids],stAudioPids,u8AudioPIDNum*sizeof(PRG_PIDINFO));
        stPrgInfo.stService.u16CurAudioPID = stAudioPids[0].Pid;
        stPrgInfo.stService.NumPids += u8AudioPIDNum;
    }

    if(0xff == stPrgInfo.stService.cProgramType)
    {
        if(dbsm_InvalidPID!= stVideoPids.Pid)
        {
            stPrgInfo.stService.cProgramType = STTAPI_SERVICE_TELEVISION;
        }
        else if(dbsm_InvalidPID!= stAudioPid)
        {
            stPrgInfo.stService.cProgramType = STTAPI_SERVICE_RADIO;
        }
        else if(dbsm_InvalidPID == stPrivitePid)
        {
            pstPmtCtr->u3PmtStatus = dbsm_PmtStarted;
        }
    }
    else if(STTAPI_SERVICE_TELEVISION == stPrgInfo.stService.cProgramType&&dbsm_InvalidPID== stVideoPids.Pid)
    {
        //stPrgInfo.stService.cProgramType = 0xff;
        //pstPmtCtr->u3PmtStatus = dbsm_PmtStarted;
    }
    else if(STTAPI_SERVICE_RADIO == stPrgInfo.stService.cProgramType&&dbsm_InvalidPID== stAudioPid)
    {
        stPrgInfo.stService.cProgramType = 0xff;
        pstPmtCtr->u3PmtStatus = dbsm_PmtStarted;
    }
    
    stPrgInfo.stService.stPrgTransInfo = dbsv_stCurTransInfo;
    stPrgInfo.stService.u16ServiceID = stProgramNo;
    //DBS_DEBUG(("Pmt Get PID = %x seviceid = %x stPrgInfo.stService.NumPids = %d stPrgTransInfo = %x frenq = %d pstPmtCtr->u3PmtStatus = %d\n",stCurPid,stProgramNo,stPrgInfo.stService.NumPids,stPrgInfo.stService.stPrgTransInfo.u32TransInfo,stPrgInfo.stService.stPrgTransInfo.uBit.uiTPFreq,pstPmtCtr->u3PmtStatus));
    if(1 == u8Encrypted)
    {
        stPrgInfo.stService.ucProgram_status |= FREECA_BIT_MASK; 
    }
    else
    {
        stPrgInfo.stService.ucProgram_status &= ~FREECA_BIT_MASK;            
    }
    dbsf_ListSrchWritePrgInfo(&stPrgInfo,PMT_TABLE_ID);
    dbsf_StartNewPmt();    
    SrchXTableComplete();
}


static MBT_VOID SrchCheckNitSrchStatus(DBSSRCH_CTR *pstSrchCtr)
{
    MBT_BOOL bBatGot = MM_FALSE;
    MBT_BOOL bNitGot = MM_FALSE;
    if(MM_NULL == pstSrchCtr)
    {
        return;
    }

    if(1 == pstSrchCtr->u8BatTimeOut)
    {
        DBS_DEBUG(("SrchCheckNitSrchStatus BAT timeout\n"));
        bBatGot = MM_TRUE;
    }
    
    if(pstSrchCtr->u8NitGot >= pstSrchCtr->u8NitTotal)
    {
        DBS_DEBUG(("SrchCheckNitSrchStatus Got NIT\n"));
        bNitGot = MM_TRUE;
    }
    else if(1 == pstSrchCtr->u8NitTimeOut)
    {
        DBS_DEBUG(("SrchCheckNitSrchStatus NIT timeout\n"));
        bNitGot = MM_TRUE;
    }

    if(MM_TRUE == bNitGot&&MM_TRUE == bBatGot)
    {
        MBT_BOOL bSdtActrueGot = MM_FALSE;
        MBT_BOOL bSdtOtherGot = MM_FALSE;

        if(1 == pstSrchCtr->u8ActrueSdtGot)
        {	
            DBS_DEBUG(("SrchCheckNitSrchStatus Get sdt actrue\n"));
            bSdtActrueGot = MM_TRUE;
        }

        DBS_DEBUG(("SrchCheckNitSrchStatus u8OtherSdtGot %d u8OtherSdtTotal %d\n",pstSrchCtr->u8OtherSdtGot,pstSrchCtr->u8OtherSdtTotal));
        if(pstSrchCtr->u8OtherSdtGot >= pstSrchCtr->u8OtherSdtTotal)
        {	
            bSdtOtherGot = MM_TRUE;
        }
#if (1 == M_MNTSdtOther)
#else
        bSdtActrueGot = MM_TRUE;
        bSdtOtherGot = MM_TRUE;
#endif
        if((MM_TRUE == bSdtActrueGot)&&(MM_TRUE == bSdtOtherGot))
        {	
            DBS_DEBUG(("SrchCheckNitSrchStatus SrchNitSrchEnd\n"));
            SrchNitSrchEnd();
        }
        else
        {
            MBT_BOOL bJumpNext = MM_FALSE;
            if((1 == pstSrchCtr->u8SdtActureTimeOut)&&(MM_TRUE == bSdtOtherGot))
            {
                bJumpNext = MM_TRUE;
            }
            if((1 == pstSrchCtr->u8SdtOtherTimeOut)&&(MM_TRUE == bSdtActrueGot))
            {
                bJumpNext = MM_TRUE;
            }

            if(MM_TRUE == bJumpNext)
            {
                if(m_srchAutoMode == pstSrchCtr->u8SchMode||m_srchFullBandMode == pstSrchCtr->u8SchMode)
                {
                    DBS_DEBUG(("SrchCheckNitSrchStatus Got NIT and BAT\n"));
                    SrchNitSrchEnd();
                }
                else
                {
                    if(MM_TRUE == bSdtActrueGot)
                    {
                        SrchNitSrchEnd();
                    }
                    else
                    {
                        DBS_DEBUG(("SrchCheckNitSrchStatus Manual srch faile\n"));
                        SrchNitSrchFaileCall();
                    }
                }
            }
        }
    }
}


static MBT_S32 SrchGetBouquetNameDesc(MBT_U8 *data,MBT_U8 u8Version,MBT_U16 u16BouquetID)
{
    MBT_U8 *pData = data;
    MBT_U8 *pEnd;
    MBT_U8 descriptor_length;
    DBS_GenreINFO stGenreNode = {0};

    if(NULL == pData)
    {
        return 4096;
    }

    descriptor_length = pData[1];
    stGenreNode.u16BouquetID = u16BouquetID;
    stGenreNode.u16PrgNum = 0;
    stGenreNode.u8BatVersion = u8Version;
    stGenreNode.u16Reserved = 0;
    stGenreNode.u8GenreOrder = 0; 
    pData += 2;
    pEnd = pData + descriptor_length;

	if(descriptor_length < dbsm_GtplGenreNameLen)
	{
	    memcpy(stGenreNode.strGenreName,pData,descriptor_length);
	}
	else
	{
	    memcpy(stGenreNode.strGenreName,pData,dbsm_GtplGenreNameLen);
	}


	DBS_DEBUG(("SrchGetBouquetNameDesc name = %s u16BouquetID %x u8GenreOrder %x\n",stGenreNode.strGenreName,stGenreNode.u16BouquetID,stGenreNode.u8GenreOrder));
	dbsf_GenreListPutNode(&stGenreNode);

    return (descriptor_length + 2);
}



static MBT_VOID SrchShiftDescriptor(MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode)
{
    /*SDT独有的描述子,对于SDT来说传过来的第一个参数是当前的tsid*/
    if(MM_NULL == pstCurPrgNode)
    {
        return;
    }

    pstCurPrgNode->stService.uReferenceServiceID = (MBT_U16 )(( pu8MsgData [ 2 ] << 8 ) | pu8MsgData [ 3 ]);
    pstCurPrgNode->stService.cProgramType = STTAPI_SERVICE_NVOD_TIME_SHIFT;   
    DBS_DEBUG(("TShift prg serviceid = %x,refserviceid = %x frenq = %d\n",pstCurPrgNode->stService.u16ServiceID,pstCurPrgNode->stService.uReferenceServiceID,pstCurPrgNode->stService.stPrgTransInfo.uBit.uiTPFreq));
}




static MBT_VOID SrchReferenceDescriptor(MBT_U8 *pu8MsgData,MBT_S32 iDescriptorLength,MBT_U16 u16RefServiceID,MBT_U8 u8TableID)
{
    PRO_NODE stPrgInfo;
    MBT_U16 u16TSID;
    MBT_U16 u16ServiceID;
    MBT_U16 u16TransNum;
    MBT_U8 *pu8End = pu8MsgData + iDescriptorLength;
    DBST_TRANS *pstTransInfo;

    pstTransInfo = MLMF_Malloc(dbsm_MaxTransNum*sizeof(DBST_TRANS));
    if(MM_NULL == pstTransInfo)
    {
        return;
    }
    
    u16TransNum = dbsf_TPListGetNitCachOrderedTransList(pstTransInfo);

    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);

    pu8MsgData += 2;
    while ( pu8MsgData < pu8End )
    {
        u16TSID = ((pu8MsgData[0] << 8) | pu8MsgData[1]);  
        /*original_network_id = (pu8MsgData[2] << 8) | pu8MsgData[3]*/
        u16ServiceID = (((pu8MsgData[4] << 8) | pu8MsgData[5])); 
        stPrgInfo.stService.stPrgTransInfo.u32TransInfo = dbsf_CTRGetTransInfoFromList(pstTransInfo,u16TransNum,u16TSID);
        stPrgInfo.stService.u16TsID = u16TSID;
        stPrgInfo.stService.u16ServiceID = u16ServiceID;
        stPrgInfo.stService.uReferenceServiceID = u16RefServiceID;
        stPrgInfo.stService.u8ValidMask |= PRG_SDT_VALID_MASK;
        stPrgInfo.stService.cProgramType = STTAPI_SERVICE_NVOD_TIME_SHIFT;   
        DBS_DEBUG(("SrchReferenceDescriptor serviceid = %x,frenq = %d\n",stPrgInfo.stService.u16ServiceID,stPrgInfo.stService.stPrgTransInfo.uBit.uiTPFreq));
        dbsf_ListSrchWritePrgInfo(&stPrgInfo,u8TableID);
        pu8MsgData += 6;
    }
    MLMF_Free(pstTransInfo);
}


static MBT_S32 SrchSdtDescriptor( MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode,MBT_U8 u8TableID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    //DBS_DEBUG(("SrchSdtDescriptor tag = %x\n",pu8MsgData [ 0 ]));
    switch ( pu8MsgData [ 0 ])
    {
        case SERVICE_DESC:					/* 0x48 */	
            SrchServiceDescript( pu8MsgData,pstCurPrgNode,u8TableID);
            break;
        case NVOD_TIMESHIFT_DESCRIPTOR:					/* 0x4c */	
            SrchShiftDescriptor( pu8MsgData,pstCurPrgNode);
            break;
        case NVOD_REFERENCE_DESCRIPTOR:
            if(MM_NULL != pstCurPrgNode)
            {
                SrchReferenceDescriptor( pu8MsgData, iDescriptorLength,pstCurPrgNode->stService.u16ServiceID,u8TableID);
            }
            break;
    	case MOSAIC_DESCRIPTOR: // 0x51
    	     //dbsf_srchMosaicDescriptor(pu8MsgData, pstCurPrgNode);
    	     break;		
        case 0:
            iDescriptorLength = 4096;
            break;
        default:
            break;
    }
    return ( iDescriptorLength + 2 );
}


/***************************************************************
      Name :SrchParseBAT
      Description: To pick up the BAT info
				
      Input Para.:  stChannelHandle the slot ID to be parsed
      Return Para.: non
      Return value : non
      Modification:
	1.
	Date:             2006.06.12 
	Author: sunzehui
	Description: Create
*****************************************************************/	
static MBT_VOID SrchParseBAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData ,MBT_S32 iMsgLen)
{
    MBT_S32 s32CheckLen;
    MBT_U16 iTransportStreamID;
    MBT_U8  u8Version; 
    MBT_U16	u16BouquetID;
    DBSSRCH_CTR *pstSrchCtr;
    MBT_U8 u8TableID; 
    MBT_U8 *pu8End; 
    MBT_U8 *pu8End1; 

    pstSrchCtr = &dbsv_stSearchState;
    if(0xff != pstSrchCtr->u8BatTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8BatTimer);    
        pstSrchCtr->u8BatTimer= 0xff;
    }

    if(m_DbsSearchNit != dbsv_DbsWorkState )
    {
        SRSTF_StopSpecifyFilter(BAT_FILTER,SrchParseBAT);
        return;
    }

    u8TableID = pu8MsgData [ 0 ];
    u16BouquetID  = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    u8Version = ((pu8MsgData [ 5 ]&0x3e)>>1);

    DBS_DEBUG(("SrchParseBAT u16BouquetID = %x\n",u16BouquetID));
    s32CheckLen = ((pu8MsgData[8] & 0x0f) << 8) | pu8MsgData[9];

    // to parse the descriptor
    pu8MsgData = pu8MsgData + 10;
    pu8End = pu8MsgData + s32CheckLen;
    while ( pu8MsgData < pu8End )
    {         
        //DBS_DEBUG(("SrchParseBAT 1 pu8MsgData[0] = %x\n",pu8MsgData[0]));
        pu8MsgData += SrchBatDescript (dbsm_InvalidID,pu8MsgData,u8Version,u16BouquetID,u8TableID);
    }

    s32CheckLen = ((pu8MsgData[0] & 0x0f) << 8) | pu8MsgData[1];
    pu8MsgData += 2;
    pu8End = pu8MsgData + s32CheckLen;
    while (pu8MsgData < pu8End)
    {
        iTransportStreamID 	= ( pu8MsgData [ 0 ] << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        // iOriNetWordID = ( pu8MsgData [ 0 ] << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        s32CheckLen = ((pu8MsgData [ 0 ] & 0x0f) << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        pu8End1 = pu8MsgData + s32CheckLen;
        while (pu8MsgData < pu8End1)
        {
            //DBS_DEBUG(("SrchParseBAT 2 pu8MsgData[0] = %x\n",pu8MsgData[0]));
            pu8MsgData += SrchBatDescript (iTransportStreamID, pu8MsgData,u8Version,u16BouquetID,u8TableID);//8_30
        }
    }

    pstSrchCtr->u8BatTimer = TMF_SetDbsTimer(SrchBatTimerCall,MM_NULL,BAT_TIME_OUT*1000,m_noRepeat);
}


static MBT_S32 SrchLCNDesc(MBT_U8 *data,MBT_U16 u16TSID,MBT_U8 u8TableID)
{
    MBT_U8 *pData = data;
    MBT_U8 *pEnd;
    MBT_U8 descriptor_length;
    MBT_U16 u16LCNNum;
    MBT_U32 u32PrgMask;
    PRO_NODE stPrgInfo;

    if(NULL == pData)
    {
        return 4096;
    }


    if(NIT_ACTUAL_NETWORK_TABLE_ID == u8TableID)
    {
        u32PrgMask = PRG_NIT_VALID_MASK;
    }
    else
    {
        u32PrgMask = PRG_BAT_VALID_MASK;
    }

    descriptor_length = pData[1];

    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    stPrgInfo.stService.u16TsID = u16TSID;
    pData += 2;
    pEnd = pData + descriptor_length;
    while(pData < pEnd)
    {
        u16LCNNum = ((pData[2]<<8)|pData[3]);
        stPrgInfo.stService.u16ServiceID = ((pData[0]<<8)|pData[1]);
        stPrgInfo.stService.usiChannelIndexNo = (u16LCNNum&0x3ff);
        stPrgInfo.stService.u8ValidMask |= u32PrgMask;
        DBS_DEBUG(("SrchLCNDesc erviceid %x lcn %d\n",stPrgInfo.stService.u16ServiceID,u16LCNNum&0x3ff));
        dbsf_ListSrchWritePrgInfo(&stPrgInfo,u8TableID);
        pData += 4;
    }

    return (descriptor_length + 2);
}

static MBT_S32 SrchNitDescript(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U16 u16NetWorkID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    switch ( pu8MsgData [ 0 ])
    {
		case CABLE_DELIVERY_DESCRIPTOR:
            dbsf_SrchParseCableDeliveryDescript(pu8MsgData,u16TSID,u16NetWorkID);
            break;

        case LCN_DESCRIPTOR82:
        case LCN_DESCRIPTOR83:
            SrchLCNDesc(pu8MsgData,u16TSID,NIT_ACTUAL_NETWORK_TABLE_ID);
            break;
            
        case SERVICE_LIST_DESC:				/* 0x41 */	
            SrchServiceListDesc(u16TSID,pu8MsgData,NIT_ACTUAL_NETWORK_TABLE_ID,dbsm_InvalidID);
            break;
            
        default:
            break;
    }
    return ( iDescriptorLength + 2 );
}



/**************************************************************************************************************
 * CODE		   	:	SrchParseNIT
 * TYPE		   	:	subroutine
 * PURPOSE		:
 *		Parses the NIT table, once if the particular NIT section is collected
 *		completely.
 *
 *	THEORY OF OPERATION:
 *	1.	check whether the current table	to be processed	is same	as NIT_TABLE
 *		then proceed to	step 2,	else quit to the caller	by clearing this
 *		section	filter req from	the section database.
 *	2.	Read in	the network_id (16) and	store it temporarily.
 *	3.	Read the network descriptors, if any.
 *	4.	start read the transport stream	information of each transponder	on
 *		all the	network	and store them in the transponder database.
 *	5.	continue step 4	till all the information is processed.
 ***************************************************************************************************************/
static MBT_VOID SrchParseNIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    //MBT_S32 original_network_id ;
    MBT_U16 u16TSID;
    MBT_U8 u8TableID;
    MBT_U16 u16NetWorkID;
    DBSSRCH_CTR *pstSrchCtr;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    //MBT_U32 u32Sym;
    //MBT_U32 u32Polar;

    u8TableID = pu8MsgData [0];
    if(u8TableID != NIT_ACTUAL_NETWORK_TABLE_ID
        &&u8TableID != NIT_OTHER_NETWORK_TABLE_ID)
    {
        return;
    }
    
    pstSrchCtr = &dbsv_stSearchState;
    if(0xff != pstSrchCtr->u8NitTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8NitTimer);
        pstSrchCtr->u8NitTimer = 0xff;
    }

    if(m_DbsSearchNit != dbsv_DbsWorkState )
    {
        SRSTF_StopSpecifyFilter(NIT_FILTER,SrchParseNIT);
        return;
    }

    //MLMF_Tuner_CurTrans(0,&u32Frenq, &u32Sym, &u32Polar);
    //if(u32MainFrenq*1000 == u32Frenq)
    {
        dbsf_MntSetStremPrgVer((pu8MsgData [ 5 ]&0x3e)>>1);
    }
    
    pstSrchCtr->u8NitTotal = pu8MsgData [ 7 ] + 1;
    pstSrchCtr->u8NitGot++;
    u16NetWorkID = (((pu8MsgData [ 3 ] )<<8)|pu8MsgData [ 4 ]);
    dbsv_u16NetworkID = u16NetWorkID;
    //MLMF_Print("SrchParseNIT section %d pstSrchCtr->u8NitGot = %d\n",pu8MsgData [6],pstSrchCtr->u8NitGot);
    DBS_DEBUG(("SrchParseNIT cur section %d last_section_number = %x iMsgLen = %d\n",pu8MsgData [6],pu8MsgData [ 7 ],iMsgLen));
    iInfoLength = (((pu8MsgData [ 8 ] & 0xF)<<8)|pu8MsgData [ 9 ]);
    pu8MsgData  +=    10;
    pu8MsgData  +=    iInfoLength;
    
    iInfoLength = (((pu8MsgData [ 0 ] & 0xF)<<8)|pu8MsgData [1 ]);
    pu8MsgData += 2 ;
    pu8End = pu8MsgData + iInfoLength;
    
    while (pu8MsgData < pu8End)
    {
        u16TSID = ( pu8MsgData[0]<<8 ) | pu8MsgData[1] ;
        //original_network_id = ( pu8MsgData[2]<<8 ) | pu8MsgData[3] ;
        iInfoLength = (((pu8MsgData [ 4 ] & 0xF)<<8)|pu8MsgData [5 ]) ;
        pu8MsgData += 6 ;
        pu8End1 = pu8MsgData + iInfoLength;
        DBS_DEBUG(("u16TSID = %x \n",u16TSID));
        while (pu8MsgData < pu8End1)
        {
            pu8MsgData += SrchNitDescript(u16TSID, pu8MsgData,u16NetWorkID);
        }
    }
    
    if(pstSrchCtr->u8NitGot >= pstSrchCtr->u8NitTotal)
    {
        DBS_DEBUG(("SrchParseNIT SrchCheckNitSrchStatus\n"));
        pstSrchCtr->u8OtherSdtTotal = dbsf_TPListGetTransNum() - 1;
        SRSTF_StopSpecifyFilter(NIT_FILTER,SrchParseNIT);
        SrchCheckNitSrchStatus(pstSrchCtr);
    }
    else
    {
        pstSrchCtr->u8NitTimer = TMF_SetDbsTimer(SrchNitTimerCall,MM_NULL,NIT_TIME_OUT*1000,m_noRepeat);
    }
}


/////////////////////////////////////////////////////////////////////////////////////
/***********************************************************************************************************************
 * CODE		 	:	SrchParseSDT
 * TYPE		 	:	subroutine
 *
 * PURPOSE		:
 *		Parses the SDT table, once if the particular SDT section is collected
 *		completely.
 *
 *	THEORY OF OPERATION:
 ***********************************************************************************************************************/
static MBT_VOID SrchParseSDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    MBT_BOOL bCompleted;
    MBT_U16 sProgId;
    MBT_U16 stTransportStreamId;
    MBT_U16 u16OrigNetId;
    MBT_U8 table_id; 
    MBT_U8 u8SectionNum;
    MBT_U8 u8InvalidePmtNum;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    PRO_NODE stPrgInfo;
    DBSSRCH_CTR *pstSrchCtr;
    if(SDT_ACTUAL_TS_TABLE_ID != pu8MsgData[0]&&SDT_OTHER_TS_TABLE_ID != pu8MsgData[0])
    {
        return;
    }
    
    table_id = pu8MsgData[ 0 ];
    pstSrchCtr = &dbsv_stSearchState;
    u8SectionNum = pu8MsgData [7]+1;
    if(SDT_ACTUAL_TS_TABLE_ID == table_id)
    {
        if(0xff != pstSrchCtr->u8SdtActureTimer)
        {
            TMF_CleanDbsTimer(pstSrchCtr->u8SdtActureTimer);    
            pstSrchCtr->u8SdtActureTimer= 0xff;
        }
    }
    else
    {
        if(0xff != pstSrchCtr->u8SdtOtherTimer)
        {
            TMF_CleanDbsTimer(pstSrchCtr->u8SdtOtherTimer);    
            pstSrchCtr->u8SdtOtherTimer= 0xff;
        }
    }

    if(m_DbsSearchPrg != dbsv_DbsWorkState&&m_DbsSearchNit != dbsv_DbsWorkState)
    {
        SRSTF_StopSpecifyFilter(SDT_FILTER0,SrchParseSDT);
        SRSTF_StopSpecifyFilter(SDT_FILTER1,SrchParseSDT);
        DBS_DEBUG(("[%x][SrchParseSDT] dbsv_DbsWorkState =%d return\n",table_id,dbsv_DbsWorkState));
        return;
    }
    pu8End = pu8MsgData + iMsgLen - 4;
    stTransportStreamId = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    u16OrigNetId = ((pu8MsgData [ 8 ]<<8)|pu8MsgData [9 ]);
    DBS_DEBUG(("[%x][SrchParseSDT] stTransportStreamId =%d\n",table_id,stTransportStreamId));
    //DBS_DEBUG(("[SrchParseSDT] SRSTF_FilterStopOrNot down\n"));
    pu8MsgData +=  11;

    u8InvalidePmtNum = 0;
    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    if(SDT_ACTUAL_TS_TABLE_ID == table_id)
    {
        stPrgInfo.stService.stPrgTransInfo = dbsv_stCurTransInfo;
        //DBS_DEBUG(("SDT seviceid = %x stPrgTransInfo = %x frenq = %d\n",sProgId,stPrgInfo.stService.stPrgTransInfo.u32TransInfo,stPrgInfo.stService.stPrgTransInfo.uBit.uiTPFreq));
    }
    stPrgInfo.stService.u16TsID = stTransportStreamId;
    stPrgInfo.stService.u16OrinetID = u16OrigNetId;
    while ( pu8MsgData < pu8End)
    {
        sProgId 	= (( pu8MsgData [ 0 ] << 8 ) | pu8MsgData [ 1 ]);
        iInfoLength = ((( pu8MsgData [ 3 ] << 8 ) & 0x0F00) | pu8MsgData [ 4 ]);
        if(0x10&pu8MsgData[3])
        {
            stPrgInfo.stService.ucProgram_status |= FREECA_BIT_MASK;
        }
        else
        {
            stPrgInfo.stService.ucProgram_status &= ~FREECA_BIT_MASK;
        }
        //MLMF_Print("SrchParseSDT sProgId = %x\n",sProgId);
        stPrgInfo.stService.cProgramType = 0xff;
        stPrgInfo.stService.cServiceName[0] = 0;
        stPrgInfo.stService.u16ServiceID = sProgId;
        
        pu8MsgData += 5;
        pu8End1 = pu8MsgData + iInfoLength;
        while ( pu8MsgData < pu8End1)
        {
            pu8MsgData += SrchSdtDescriptor ( pu8MsgData,&stPrgInfo,table_id);
        }

        if(stPrgInfo.stService.cProgramType > STTAPI_SERVICE_DATA_BROADCAST)
        {
            u8InvalidePmtNum++;
        }
        dbsf_ListSrchWritePrgInfo(&stPrgInfo,table_id);
        DBS_DEBUG(("%x OK\n\n",sProgId));
    }

    bCompleted = MM_FALSE;
    if(SDT_ACTUAL_TS_TABLE_ID == table_id)
    {
        pstSrchCtr->u8ActrueSdtGot  = 1;
        pstSrchCtr->u8PmtGot += u8InvalidePmtNum;
        SRSTF_StopSpecifyFilter(SDT_FILTER0,SrchParseSDT);            
        bCompleted = MM_TRUE;
        DBS_DEBUG(("Acture u8ActrueSdtGot = %d bCompleted %d\n",pstSrchCtr->u8ActrueSdtGot,bCompleted));
    }
    else
    {
        pstSrchCtr->u8OtherSdtGot += 1;
        if(pstSrchCtr->u8OtherSdtGot >= pstSrchCtr->u8OtherSdtTotal)
        {
            SRSTF_StopSpecifyFilter(SDT_FILTER1,SrchParseSDT);
            bCompleted = MM_TRUE;
        }
        else
        {
            pstSrchCtr->u8SdtOtherTimer = TMF_SetDbsTimer(SrchSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
        }
        DBS_DEBUG(("Other stTransportStreamId =%x u8OtherSdtGot %d,u8OtherSdtTotal %d bCompleted = %d\n",stTransportStreamId,pstSrchCtr->u8OtherSdtGot,pstSrchCtr->u8OtherSdtTotal,bCompleted));
    }

    if(MM_TRUE == bCompleted)
    {
        if(m_DbsSearchPrg == dbsv_DbsWorkState)
        {
            DBS_DEBUG(("SrchParseSDT SrchXTableComplete\n"));
            SrchXTableComplete();
        }
        else if(m_DbsSearchNit == dbsv_DbsWorkState)
        {
            DBS_DEBUG(("SrchParseSDT SrchCheckNitSrchStatus\n"));
            SrchCheckNitSrchStatus(pstSrchCtr);
        }
    }
}




static MBT_VOID SrchNitSrchFaileCall(MBT_VOID)
{
    TRANS_INFO stTransInfo;
    DBSSRCH_CTR *pstSrchCtr;
    if(m_DbsSearchNit != dbsv_DbsWorkState)
    {
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;
    if(m_srchManualMode == pstSrchCtr->u8SchMode)
    {
        DBS_DEBUG(("SrchNitSrchFaileCall m_srchManualMode faile\n"));
        pstSrchCtr->u8PrgSrchTaskProcess = m_DbsNoNetInfo;    
        if(dbsf_pTaskprocessNotify)
        {
            dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
        }
    }
    else
    {
        MBT_U32 u32EndFrenq;
        DBS_DEBUG(("SrchNitSrchFaileCall m_srchAutoMode fullband\n"));
        DBSF_DataReadMainFreq(&stTransInfo);
        stTransInfo.uBit.uiTPFreq = 115;
        dbsf_TPListFreeTransList();
        if(m_srchFullBandMode == pstSrchCtr->u8SchMode)
        {
            u32EndFrenq = dbsv_u16FullbandSrchEndFrenq*1000;
        }
        else
        {
            u32EndFrenq = 874000;
        }
        dbsf_TPListSrchCreateTransList(stTransInfo, u32EndFrenq);
        SrchNitSrchEnd();
    }
}





static MBT_VOID SrchMainFrenqAutoSrchTunerCall(MMT_TUNER_TunerStatus_E stTunerState, MBT_U32 u32TunerID, MBT_U32 u32Frenq, MBT_U32 u32Sym,MMT_TUNER_QamType_E eQamType)
{
    DBSSRCH_CTR *pstSrchCtr;
    if(m_DbsSearchNit != dbsv_DbsWorkState)
    {
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;
    DBS_DEBUG(("SrchMainFrenqAutoSrchTunerCall stTunerState = %d\n",stTunerState));
    dbsf_MntNimNotify(stTunerState);
    if(MM_TUNER_LOCKED == stTunerState)
    {	
        MBT_U8 pstData[FILTER_DEPTH_SIZE];
        MBT_U8 pstMask[FILTER_DEPTH_SIZE];
        memset(pstData,0,sizeof(pstData));
        memset(pstMask,0,sizeof(pstMask));
        pstData[0] = NIT_ACTUAL_NETWORK_TABLE_ID;
        pstMask[0] = 0xff;

        SRSTF_SetSpecifyFilter(NIT_FILTER,
                                SrchParseNIT, 
                                MM_NULL, 
                                pstData, 
                                pstMask, 
                                1, 
                                NIT_PID, 
                                40960,
                                0, 
                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                MM_NULL);
                                                    
        pstData[0] = BAT_TABLE_ID;
        pstMask[0] = 0xff;
        SRSTF_SetSpecifyFilter(BAT_FILTER,
                                SrchParseBAT, 
                                MM_NULL, 
                                pstData, 
                                pstMask, 
                                1, 
                                SDT_PID, 
                                40960,
                                0, 
                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                MM_NULL);
#if (1 == M_MNTSdtOther)

        pstData[0] = SDT_ACTUAL_TS_TABLE_ID;
        pstMask[0] = 0xff;
        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] Start SDT\n"));
        SRSTF_SetSpecifyFilter(SDT_FILTER0,
                                SrchParseSDT, 
                                MM_NULL, 
                                pstData, 
                                pstMask, 
                                1,//3, 
                                SDT_PID, 
                                1024,
                                0, 
                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                MM_NULL);

        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] pstSrchCtr->u8OtherSdtTotal %d\n",pstSrchCtr->u8OtherSdtTotal));
        pstData[0] = SDT_OTHER_TS_TABLE_ID;
        pstMask[0] = 0xff;
        SRSTF_SetSpecifyFilter(SDT_FILTER1,
                                SrchParseSDT, 
                                MM_NULL, 
                                pstData, 
                                pstMask, 
                                1,
                                SDT_PID, 
                                1024*pstSrchCtr->u8OtherSdtTotal,
                                0, 
                                IPANEL_NO_VERSION_RECEIVE_MODE,
                                MM_NULL);

#endif
        dbsf_GenreListFreeList();
        SrchClnCtrlTimer();
        pstSrchCtr->u8NitTimer = TMF_SetDbsTimer(SrchNitTimerCall,MM_NULL,NIT_TIME_OUT*1000,m_noRepeat);
        pstSrchCtr->u8BatTimer = TMF_SetDbsTimer(SrchBatTimerCall,MM_NULL,BAT_TIME_OUT*1000,m_noRepeat);
#if (1 == M_MNTSdtOther)
        pstSrchCtr->u8SdtActureTimer = TMF_SetDbsTimer(SrchSdtTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
        pstSrchCtr->u8SdtOtherTimer = TMF_SetDbsTimer(SrchSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
#endif
        pstSrchCtr->u8PrgSrchTaskProcess = 1;
    }
    else
    {
        SrchNitSrchFaileCall();
    }
}

 static MBT_VOID SrchNitSrchEnd(MBT_VOID)
 {
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    MBT_S32 iNum;
    
    SrchClnCtrlTimer();
    DBS_DEBUG(("SrchNitSrchEnd dbsv_DbsWorkState = %d\n",dbsv_DbsWorkState));
    if(m_DbsSearchNit != dbsv_DbsWorkState )
    {
        return;
    }

    if(m_srchAutoMode == pstSrchCtr->u8SchMode)
    {
        pstSrchCtr->u8PrgAddType = m_ResetAdd_Prg;
    }
    else if(m_srchFullBandMode == pstSrchCtr->u8SchMode)
    {
        pstSrchCtr->u8PrgAddType = m_ResetAdd_Prg;
        dbsf_TPListSrchCreateTransList(dbsv_stCurTransInfo,dbsv_u16FullbandSrchEndFrenq*1000);
    }
    else
    {
        pstSrchCtr->u8PrgAddType = m_Update_Prg;
        dbsf_TPListSrchCreateTransList(dbsv_stCurTransInfo,dbsv_stCurTransInfo.uBit.uiTPFreq*1000);
    }

    iNum = dbsf_TPListGetTransNum();
    if(0 >= iNum)
    {
        pstSrchCtr->u8PrgSrchTaskProcess = m_DbsNoNetInfo;    
    }
    else
    {
        pstSrchCtr->u8PrgSrchTaskProcess = 100/(iNum + 2);
    }
    DBS_DEBUG(("SrchNitSrchEnd iNum = %d\n",iNum));
    if(dbsf_pTaskprocessNotify)
    {
        dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
    }
    
    if(0 < iNum)
    {
        pstSrchCtr->u8PrgSrchTransIndex = 0;
        dbsf_SetDbsState(m_DbsSearchPrg);
        SrchPrgXTransSrch();
    }
 }


#if 0
static MBT_S32 SrchGetStandardFreq( MBT_S32 iInputFreq )
{
	if ( iInputFreq < 115000 )
	{
		iInputFreq = 115000;
	}
	else if ( iInputFreq > 874000 )
	{
		iInputFreq = 874000;
	}
	else
	{
		if ( iInputFreq >= 474000 )
		{
			iInputFreq = ((iInputFreq-474000) / 8000)*8000+474000;
		}
		else
		{
			iInputFreq = ((iInputFreq-115000) / 8000)*8000+115000;
			if ( iInputFreq == 475000 )
			{
				iInputFreq = 474000;
			}
		}
	}
	return iInputFreq;
}
#endif

static MBT_VOID SrchPrgSrchTunerCallBack(MMT_TUNER_TunerStatus_E stTunerState, MBT_U32 u32TunerID, MBT_U32 u32Frenq, MBT_U32 u32Sym,MMT_TUNER_QamType_E eQamType)
{
    dbsf_MntNimNotify(stTunerState);
    DBSSRCH_CTR *pstSrchCtr;
    if(m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;
    //MLMF_Print("SrchPrgSrchTunerCallBack stTunerState = %d u32Frenq = %d\n",stTunerState,u32Frenq);
    if(MM_TUNER_LOCKED == stTunerState)
    {	
        MBT_U8 pstData[FILTER_DEPTH_SIZE];
        MBT_U8 pstMask[FILTER_DEPTH_SIZE];
        memset(pstData,0,sizeof(pstData));
        memset(pstMask,0,sizeof(pstMask));
        pstData[0] = PAT_TABLE_ID;
        pstMask[0] = 0xff;
        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] Locked and Start PAT\n"));
        SRSTF_SetSpecifyFilter(PAT_FILTER,
                                        SrchParsePAT, 
                                        pat_TimerCallBack, 
                                        pstData, 
                                        pstMask, 
                                        1, 
                                        PAT_PID, 
                                        1024,
                                        PAT_TIME_OUT, 
                                        IPANEL_STRAIGHT_RECEIVE_MODE,
                                        MM_NULL);
        pstData[0] = SDT_ACTUAL_TS_TABLE_ID;
        pstMask[0] = 0xff;
        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] Start SDT\n"));
        SRSTF_SetSpecifyFilter(SDT_FILTER0,
                                        SrchParseSDT, 
                                        MM_NULL, 
                                        pstData, 
                                        pstMask, 
                                        1,//3, 
                                        SDT_PID, 
                                        4096,
                                        SDT_TIME_OUT, 
                                        IPANEL_NO_VERSION_RECEIVE_MODE,
                                        MM_NULL);
#if (1 == M_MNTSdtOther)
        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] pstSrchCtr->u8OtherSdtTotal %d\n",pstSrchCtr->u8OtherSdtTotal));
        pstData[0] = SDT_OTHER_TS_TABLE_ID;
        pstMask[0] = 0xff;
        SRSTF_SetSpecifyFilter(SDT_FILTER1,
                                        SrchParseSDT, 
                                        MM_NULL, 
                                        pstData, 
                                        pstMask, 
                                        1,
                                        SDT_PID, 
                                        1024*pstSrchCtr->u8OtherSdtTotal,
                                        0, 
                                        IPANEL_NO_VERSION_RECEIVE_MODE,
                                        MM_NULL);
#endif
        if(0xff != pstSrchCtr->u8SdtActureTimer)
        {
            TMF_CleanDbsTimer(pstSrchCtr->u8SdtActureTimer);
            pstSrchCtr->u8SdtActureTimer = 0xff;
        }
        if(0xff != pstSrchCtr->u8SdtOtherTimer)
        {
            TMF_CleanDbsTimer(pstSrchCtr->u8SdtOtherTimer);    
            pstSrchCtr->u8SdtOtherTimer= 0xff;
        }
        pstSrchCtr->u8SdtActureTimer = TMF_SetDbsTimer(SrchSdtTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
#if (1 == M_MNTSdtOther)
        pstSrchCtr->u8SdtOtherTimer = TMF_SetDbsTimer(SrchSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
#endif
        pstSrchCtr->u8PrgSrchTaskProcess = 1;
    }
    else
    {
        DBS_DEBUG(("[SrchPrgSrchTunerCallBack] UnLocked\n"));
        pstSrchCtr->u8PrgSrchTaskProcess = m_DbsTunerUnLock;
        SrchPrgXTransSrch();
    }
    
    if(dbsf_pTaskprocessNotify)
    {
        dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
    }
}

static MBT_VOID dbsf_PrgXTransSrchFirstTimerCallBack(MBT_U32 *pu32Para)
{
    DBS_DEBUG(("[dbsf_PrgXTransSrchFirstTimerCallBack] \n"));
    //SrchXTransSrchRetry();
    SrchPrgXTransSrch();
}
#if 0

static MBT_VOID dbsf_PrgXTransSrchLastimerCallBack(MBT_U32 *pu32Para)
{
    DBS_DEBUG(("[dbsf_PrgXTransSrchLastimerCallBack] \n"));
    SrchPrgXTransSrch();
}


static MBT_VOID SrchXTransSrchRetry(MBT_VOID)
{	
    DBSSRCH_CTR *pstSrchCtr;
    if(m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    
    pstSrchCtr = &dbsv_stSearchState;
    if(0xff != pstSrchCtr->u8SrchTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8SrchTimer);
        pstSrchCtr->u8SrchTimer = 0xff;
    }

    SRSTF_CancelAllSectionReq();

    pstSrchCtr->u8SrchTimer  = TMF_SetDbsTimer(dbsf_PrgXTransSrchLastimerCallBack,MM_NULL,15*1000,m_noRepeat);
    pstSrchCtr->u8PrgSrchTransIndex ++;
    pstSrchCtr->u8PrgSrchTaskProcess =100 *pstSrchCtr->u8PrgSrchTransIndex/(dbsf_TPListGetTransNum() + 2);
    if(pstSrchCtr->u8PrgSrchTaskProcess > 100)
    {
        pstSrchCtr->u8PrgSrchTaskProcess = 98;
    }
    
    if(dbsf_pTaskprocessNotify)
    {
        dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
    }
    
    pstSrchCtr->u8OtherSdtGot = 0;
    pstSrchCtr->u8OtherSdtTotal  = 0;
    pstSrchCtr->u8ActrueSdtGot = 0;
    pstSrchCtr->u8NitGot  = 0;
    pstSrchCtr->u8NitTotal  = 0;
    pstSrchCtr->u8PmtGot = 0;
    pstSrchCtr->u8StartPmtNumber = 0;
    if(0 == pstSrchCtr->u8SrchPmt)
    {
        pstSrchCtr->u8PmtTotal = 0;
    }
    else
    {
        pstSrchCtr->u8PmtTotal = 1;
    }
    memset(pstSrchCtr->stPmtCtr,0,sizeof(pstSrchCtr->stPmtCtr));
    MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,
                                    dbsv_stCurTransInfo.uBit.uiTPSymbolRate,
                                    dbsv_stCurTransInfo.uBit.uiTPQam,
                                    SrchPrgSrchTunerCallBack);        

    if(100 == pstSrchCtr->u8PrgSrchTaskProcess)
    {
        dbsf_SetDbsState(m_DbsSearchEnd);
    }
    DBS_DEBUG(("SrchXTransSrchRetry pstSrchCtr->u8PrgSrchTransIndex = %d pstSrchCtr->u8PrgSrchTaskProcess = %d\n",pstSrchCtr->u8PrgSrchTransIndex,pstSrchCtr->u8PrgSrchTaskProcess));
}
#endif

static MBT_VOID SrchPrgXTransSrch(MBT_VOID)
{	
    DBST_TRANS stDbsTrans;
    DBSSRCH_CTR *pstSrchCtr;
    SrchClnCtrlTimer();

    if(m_DbsSearchPrg != dbsv_DbsWorkState)
    {
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;

    DBS_DEBUG(("SrchPrgXTransSrch start pstSrchCtr->u8PrgSrchTransIndex = %d\n",pstSrchCtr->u8PrgSrchTransIndex));
    if(DVB_INVALID_LINK == dbsf_TPListGetTransInfo(&stDbsTrans,pstSrchCtr->u8PrgSrchTransIndex))
    {
        /*找不到后面的频点,说明已经搜索完所有频点*/
        DBS_DEBUG(("SrchPrgXTransSrch Can not find trand info end\n"));
        SrchComplete();
    }
    else
    {
        SRSTF_CancelAllSectionReq();
        pstSrchCtr->u8SrchTimer  = TMF_SetDbsTimer(dbsf_PrgXTransSrchFirstTimerCallBack,MM_NULL,30*1000,m_noRepeat);
        pstSrchCtr->u8PrgSrchTransIndex ++;
        pstSrchCtr->u8PrgSrchTaskProcess =100 *pstSrchCtr->u8PrgSrchTransIndex/(dbsf_TPListGetTransNum() + 2);
        if(pstSrchCtr->u8PrgSrchTaskProcess > 100)
        {
            pstSrchCtr->u8PrgSrchTaskProcess = 98;
        }
        
        if(dbsf_pTaskprocessNotify)
        {
            dbsf_pTaskprocessNotify(pstSrchCtr->u8PrgSrchTaskProcess,dbsv_stCurTransInfo);
        }

        pstSrchCtr->u8OtherSdtGot = 0;
        pstSrchCtr->u8OtherSdtTotal  = 0;
        pstSrchCtr->u8ActrueSdtGot = 0;
        pstSrchCtr->u8NitGot  = 0;
        pstSrchCtr->u8NitTotal  = 0;
        pstSrchCtr->u8PmtGot = 0;
        pstSrchCtr->u8StartPmtNumber = 0;
        if(0 == pstSrchCtr->u8SrchPmt)
        {
            pstSrchCtr->u8PmtTotal = 0;
        }
        else
        {
            pstSrchCtr->u8PmtTotal = 1;
        }
        memset(pstSrchCtr->stPmtCtr,0,sizeof(pstSrchCtr->stPmtCtr));
        dbsv_stCurTransInfo = stDbsTrans.stTPTrans;
        DBS_DEBUG(("SrchPrgXTransSrch End check pstSrchCtr->u8PrgSrchTransIndex = %d uiTPFreq = %d\n",pstSrchCtr->u8PrgSrchTransIndex,dbsv_stCurTransInfo.uBit.uiTPFreq));
        MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,
                                        dbsv_stCurTransInfo.uBit.uiTPSymbolRate,
                                        dbsv_stCurTransInfo.uBit.uiTPQam,
                                        SrchPrgSrchTunerCallBack);        
    }

    if(100 == pstSrchCtr->u8PrgSrchTaskProcess)
    {
        DBS_DEBUG(("SrchPrgXTransSrch coplete set to m_DbsSearchEnd\n"));
        dbsf_SetDbsState(m_DbsSearchEnd);
    }
}


static MBT_VOID SrchClnCtrlTimer(MBT_VOID)
{
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    if(0xff != pstSrchCtr->u8SrchTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8SrchTimer);
        pstSrchCtr->u8SrchTimer = 0xff;
    }

    if(0xff != pstSrchCtr->u8NitTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8NitTimer);
        pstSrchCtr->u8NitTimer = 0xff;
    }
    if(0xff != pstSrchCtr->u8SdtActureTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8SdtActureTimer);
        pstSrchCtr->u8SdtActureTimer = 0xff;
    }
    if(0xff != pstSrchCtr->u8SdtOtherTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8SdtOtherTimer);    
        pstSrchCtr->u8SdtOtherTimer= 0xff;
    }
    if(0xff != pstSrchCtr->u8BatTimer)
    {
        TMF_CleanDbsTimer(pstSrchCtr->u8BatTimer);
        pstSrchCtr->u8BatTimer = 0xff;
    }
    
    pstSrchCtr->u8NitTimeOut = 0;
    pstSrchCtr->u8SdtActureTimeOut = 0;
    pstSrchCtr->u8SdtOtherTimeOut = 0;
    pstSrchCtr->u8BatTimeOut = 0;
}

MBT_VOID dbsf_SrchParseCableDeliveryDescript(MBT_U8 *pu8MsgData,MBT_U16 uTransID,MBT_U16 uNetworkid)
{
    MBT_S32 iTemp;
    MBT_S32 iFrenq;
    DBST_TRANS stTpInfo;
    pu8MsgData += 2;
    iTemp = ( ( pu8MsgData [ 0 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 0 ] & 0xF );
    iTemp = iTemp * 100 + ( ( pu8MsgData [ 1 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 1 ] & 0xF );
    iTemp = iTemp * 100 + ( ( pu8MsgData [ 2 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 2 ] & 0xF );
    iTemp = iTemp * 100 + ( ( pu8MsgData [ 3 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 3 ] & 0xF );
    iFrenq = iTemp/10;

    stTpInfo.stTPTrans.uBit.uiTPFreq =iFrenq/1000; 

    pu8MsgData += 6;  

    switch(pu8MsgData[0])
    {
        case 1:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_16;
            break;
        case 2:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_32;
            break;
        case 3:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_64;
            break;
        case 4:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_128;
            break;
        case 5:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_256;
            break;
        default:
            stTpInfo.stTPTrans.uBit.uiTPQam = MM_TUNER_QAM_64;
            break;
    }

     
    if(stTpInfo.stTPTrans.uBit.uiTPFreq <= 874&&stTpInfo.stTPTrans.uBit.uiTPFreq>=40&&MM_TUNER_QAM_256 >= stTpInfo.stTPTrans.uBit.uiTPQam)
    {
        pu8MsgData += 1;
        iTemp = ( ( pu8MsgData [ 0 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 0 ] & 0xF );
        iTemp = iTemp * 100 + ( ( pu8MsgData [ 1 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 1 ] & 0xF );
        iTemp = iTemp * 100 + ( ( pu8MsgData [ 2 ] >> 4 ) & 0xF ) * 10 + ( pu8MsgData [ 2 ] & 0xF );
        iTemp = iTemp * 10 + ( ( pu8MsgData [ 3 ] >> 4 ) & 0xF );
        stTpInfo.stTPTrans.uBit.uiTPSymbolRate = iTemp / 10 ;
        //DBS_DEBUG(("frenq = %d  uTransID = %x\n",stTpInfo.stTPTrans.uBit.uiTPFreq*1000,uTransID));
        stTpInfo.u16Tsid = uTransID;
        stTpInfo.u16NetWorkID = uNetworkid;            
        dbsf_TPListPutTransNode(&stTpInfo);
        dbsf_TPListPutNitCachTransNode(&stTpInfo);
    }
}


/*
参数iStartTransIndex，iEndTransIndex应为g_trans_info中元素的序号
*/

MBT_VOID DBSF_SrchStartPrgSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans),TRANS_INFO stTransInfo,MBT_BOOL bSrchPmt)
{	
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    dbsf_TPListFreeTransList();
    dbsf_TPListFreeNitCachList();
    dbsf_SetDbsState(m_DbsSearchNit);
    dbsf_MntClnPmtVer();
    dbsf_MntClnCatVer();
    dbsf_MntClnSdtVer();
    dbsf_MntClnPatVer();
    dbsf_MntClnNitVer();
    dbsf_MntClnSdtOtherVer();
    dbsf_MntClnBatVer();
    dbsf_ListFreeMntPrgList();
    pstSrchCtr->u8OtherSdtGot = 0;
#if (1 == M_MNTSdtOther)
    pstSrchCtr->u8OtherSdtTotal  = dbsm_MaxTransNum - 1;
#else
    pstSrchCtr->u8OtherSdtTotal  = 0;
#endif
    pstSrchCtr->u8ActrueSdtGot = 0;
    pstSrchCtr->u8NitGot  = 0;
    pstSrchCtr->u8NitTotal  = 1;
    pstSrchCtr->u8SchMode = m_srchManualMode;
    pstSrchCtr->u8PrgSrchTaskProcess = 0;
    pstSrchCtr->u8PrgSrchTransIndex = 0;
    pstSrchCtr->u8PrgAddType  = m_Update_Prg;
    pstSrchCtr->u8PmtGot = 0;
    pstSrchCtr->u8StartPmtNumber = 0;
    pstSrchCtr->u8SrchPmt = bSrchPmt;
    if(0 == bSrchPmt)
    {
        pstSrchCtr->u8PmtTotal = 0;
    }
    else
    {
        pstSrchCtr->u8PmtTotal = 1;
    }
    SrchClnCtrlTimer();
    memset(pstSrchCtr->stPmtCtr,0,m_MaxPrgInTP*sizeof(DBSPMT_CTR));

    /*手动搜索不清掉startupchannel*/
    dbsf_pTaskprocessNotify = pProcessNotify;
    dbsv_stCurTransInfo = stTransInfo;
    DBS_DEBUG(("DBSF_SrchStartPrgSrch dbsv_stCurTransInfo.uBit.uiTPFreq = %d\n",dbsv_stCurTransInfo.uBit.uiTPFreq));
    MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,
                        dbsv_stCurTransInfo.uBit.uiTPSymbolRate,
                        dbsv_stCurTransInfo.uBit.uiTPQam,
                        SrchMainFrenqAutoSrchTunerCall);        
}

/**手动搜索****结束**/


MBT_BOOL DBSF_SrchStartAutoSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans),TRANS_INFO stTransInfo,MBT_U32 u32EndFrenq,MBT_BOOL bSrchPmt,MBT_BOOL bUseNitTPList)
{	
    MBT_BOOL bRet = MM_FALSE;
    DBSSRCH_CTR *pstSrchCtr = &dbsv_stSearchState;
    dbsf_SetDbsState(m_DbsSearchNit);
    dbsf_TPListFreeTransList();
    dbsf_TPListFreeNitCachList();
    dbsf_MntClnPmtVer();
    dbsf_MntClnCatVer();
    dbsf_MntClnSdtVer();
    dbsf_MntClnPatVer();
    dbsf_MntClnNitVer();
    dbsf_MntClnSdtOtherVer();
    dbsf_MntClnBatVer();
    dbsf_ListFreeMntPrgList();
    pstSrchCtr->u8OtherSdtGot = 0;
#if (1 == M_MNTSdtOther)
    pstSrchCtr->u8OtherSdtTotal  = dbsm_MaxTransNum - 1;
#else
    pstSrchCtr->u8OtherSdtTotal  = 0;
#endif
    pstSrchCtr->u8ActrueSdtGot = 0;
    pstSrchCtr->u8NitGot  = 0;
    pstSrchCtr->u8NitTotal  = 1;
    if(MM_TRUE == bUseNitTPList)
    {
        pstSrchCtr->u8SchMode = m_srchAutoMode;
    }
    else
    {
        pstSrchCtr->u8SchMode = m_srchFullBandMode;
        if(u32EndFrenq < stTransInfo.uBit.uiTPFreq)
        {
            u32EndFrenq = stTransInfo.uBit.uiTPFreq;
        }
    }
    pstSrchCtr->u8PrgSrchTaskProcess = 0;
    pstSrchCtr->u8PrgSrchTransIndex = 0;
    pstSrchCtr->u8PrgAddType  = m_ResetAdd_Prg;
    pstSrchCtr->u8PmtGot = 0;
    pstSrchCtr->u8StartPmtNumber = 0;
    pstSrchCtr->u8SrchPmt = bSrchPmt;
    if(0 == pstSrchCtr->u8SrchPmt)
    {
        pstSrchCtr->u8PmtTotal = 0;
    }
    else
    {
        pstSrchCtr->u8PmtTotal = 1;
    }
    
    SrchClnCtrlTimer();

    memset(pstSrchCtr->stPmtCtr,0,m_MaxPrgInTP*sizeof(DBSPMT_CTR));

    dbsv_u16FullbandSrchEndFrenq = u32EndFrenq;
    dbsv_u16BootupChannelServiceID = dbsm_InvalidID;
    dbsf_pTaskprocessNotify = pProcessNotify;
    DBS_DEBUG(("DBSF_SrchStartAutoSrch frenq = %d\n",stTransInfo.uBit.uiTPFreq*1000));
    dbsv_stCurTransInfo = stTransInfo;
    
    bRet = MLMF_Tuner_Lock(0,dbsv_stCurTransInfo.uBit.uiTPFreq,
                                                            dbsv_stCurTransInfo.uBit.uiTPSymbolRate,
                                                            dbsv_stCurTransInfo.uBit.uiTPQam,
                                                            SrchMainFrenqAutoSrchTunerCall);        
    
    return bRet;                        
}

MBT_VOID DBSF_SrchEndPrgSrch(MBT_VOID)
{	
    DBSSRCH_CTR *pstSrchCtr;
    //MLMF_Print("DBSF_SrchEndPrgSrch dbsv_DbsWorkState = %d\n",dbsv_DbsWorkState);
    if(m_DbsSearchPrg != dbsv_DbsWorkState&&m_DbsSearchNit != dbsv_DbsWorkState&&m_DbsSearchEnd!= dbsv_DbsWorkState)
    {
        //MLMF_Print("DBSF_SrchEndPrgSrch Status error return\n");
        return;
    }
    pstSrchCtr = &dbsv_stSearchState;
    dbsf_SetDbsState(m_DbsIdle);
    dbsf_TPListFreeTransList();
    SrchClnCtrlTimer();
    //MLMF_Print("DBSF_SrchEndPrgSrch iTransNum = %d iPrgNum = %d\n",iTransNum,iPrgNum);
    if(0 != dbsf_ListGetActualListPrgNum())
    {
        DVB_BOX *pstBoxInfo;
        dbsf_DataSrchStorePrg(pstSrchCtr->u8PrgAddType);
        dbsf_DataSaveBatInfo();
        pstBoxInfo = DBSF_DataGetBoxInfo();
        pstBoxInfo->u16StartUpChannel = dbsv_u16BootupChannelServiceID;
        if(dbsm_InvalidID != pstBoxInfo->u16StartUpChannel)
        {
            UI_PRG stPrgInfo;
            if(DVB_INVALID_LINK != dbsf_ListGetPrgByServiceID(&stPrgInfo,pstBoxInfo->u16StartUpChannel))
            {
                pstBoxInfo->u16VideoServiceID = stPrgInfo.stService.u16ServiceID;
                pstBoxInfo->u32VidTransInfo = stPrgInfo.stService.stPrgTransInfo.u32TransInfo;
            }
        }

        if(dbsm_InvalidID != dbsv_u16NetworkID)
        {
            pstBoxInfo->u16NetWorkID = dbsv_u16NetworkID;
        }
 
        /*如果相同,有可能是没有收到nit表,就结束了搜索,所以这里把监控那里的nit版本号取来用*/
        if(pstBoxInfo->ucProgramVer == dbsf_MntGetStremPrgVer())
        {
            pstBoxInfo->ucProgramVer = dbsf_MntGetSyncPrgVer();
        }
        else
        {
            pstBoxInfo->ucProgramVer = dbsf_MntGetStremPrgVer();
        }
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }
    dbsf_SetDbsState(m_DbsSearchEpg);
    pstSrchCtr->u8OtherSdtGot = 0;
    pstSrchCtr->u8OtherSdtTotal  = 0;
    pstSrchCtr->u8ActrueSdtGot = 0;
    pstSrchCtr->u8NitGot  = 0;
    pstSrchCtr->u8NitTotal  = 0;
    pstSrchCtr->u8SchMode = m_srchAutoMode;
    pstSrchCtr->u8PrgSrchTaskProcess = 0;
    pstSrchCtr->u8PrgSrchTransIndex = 0;
    pstSrchCtr->u8PrgAddType  = m_Update_Prg;
    pstSrchCtr->u8PmtGot = 0;
    pstSrchCtr->u8PmtTotal  = 0;
    pstSrchCtr->u8StartPmtNumber = 0;
    pstSrchCtr->u8SrchPmt = 0;
    memset(pstSrchCtr->stPmtCtr,0,sizeof(pstSrchCtr->stPmtCtr));
    dbsf_pTaskprocessNotify = MM_NULL;
}

MBT_S32 DBSF_GetPrgSrchTaskProcess(TRANS_INFO *pstTPTrans)
{
    if(MM_NULL != pstTPTrans)
    {
        *pstTPTrans = dbsv_stCurTransInfo;
    }
    return dbsv_stSearchState.u8PrgSrchTaskProcess;
}

