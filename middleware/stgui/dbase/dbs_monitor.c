 
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
#include "envopt.h"


typedef struct _dbst_ver_ctr_
{
    MBT_U16 u16TsID;
    MBT_U8 u8Version;
    MBT_U8 u8SectionNum;
}DBST_MntVerCTR;

typedef struct  
{
    MBT_U8 u8PatGoted;
    MBT_U8 u8NitGoted;
    MBT_U8 u8SdtActueGoted;
    MBT_U8 u8SdtOtherGoted;
    
    MBT_U8 u8BatGoted;
    MBT_U8 u8SdtOtherTimer;      
    MBT_U8 u8SdtOtherTotal; 
    MBT_U8 u8SdtOtherVerNum;

    MBT_U8 u8NitTotal;
    MBT_U8 u8SdtActueTotal;
    MBT_U8 u8HeatBeatTimer;
    MBT_U8 u8BatTimer;

    MBT_U8 u8HeatBeatTime;
    MBT_U8 u8InUpdateProcess;
    MBT_U8 u8CatVersion;
    MBT_U8 u8SdtOtherTryTime;

    MBT_U8 u8BatVerNum;  /*各频点bat相同，所以换频点也不用清version*/
    MBT_U8 u8SdtActueVersion;  
    MBT_U8 u8PatVersion;  
    MBT_U8 u8NitVersion;
    DBST_MntVerCTR stBatVer[dbsm_MaxBatNum];
    DBST_MntVerCTR stSdtOtherVer[dbsm_MaxTransNum];

    
    MBT_U8 u8BatNewVersion;  /*各频点bat相同，所以换频点也不用清version*/
    MBT_U8 u8SdtNewActueVersion;  
    MBT_U8 u8PatNewVersion;  
    MBT_U8 u8NitNewVersion;  
    DBST_MntVerCTR stBatNewVer[dbsm_MaxBatNum];
    DBST_MntVerCTR stSdtNewOtherVer[dbsm_MaxTransNum];
}DBST_MntCTR;

typedef struct _program_info_
{
    MBT_U16  u16ServiceID;
    MET_PTI_PID_T uPmtPid;
}PROGRAM_INFO;

typedef struct
{
	MBT_U16 oui;
	MBT_U16 res1;
	MBT_U16 res2;
	MBT_U16 sw;
	MBT_U16 res3;
	MBT_U16 hw;
	MBT_U32 LoadUpdateTag;
	MBT_U32 frq;
	MBT_U32 symb;
	MBT_U16 pid;
	MBT_U16 mod;
}Load_update_info_t;


#define LOAD_UPDATE_FACTORY_TAG 0xa1a2a3a2

#define OVT_CDCA_PRIVATE_DATA_LEN 18

/*OVT*/
#define OVT_STB_MANUFACTURER_ID	0x04ef  

#define LINKAGE_DESCRIPTOR              0x4A
#define HUNAN_NETINFO_DESC  0x87 

static MBT_U8 dbsv_u8MntPrgVersion = 0xff;
static MBT_U8 dbsv_u8MntPmtVersion = 0xff;
static MBT_U8 dbsv_u8MntNimDisConnectted = 0;
static MBT_U8 dbsv_u8MntGetTDTTime = 0;
static MBT_U8 dbsv_u8MntTdtTime[5] = {0,0,0,0,0};

static MET_Sem_T dbsv_semMntTDTTime = MM_INVALID_HANDLE;  

//MBT_U8 dbsv_u8MntTestTablechange = 0;


#define Sem_TdtTime_P()  MLMF_Sem_Wait(dbsv_semMntTDTTime,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_TdtTime_V()  MLMF_Sem_Release(dbsv_semMntTDTTime)

static MBT_U8 LastOtaCheckSum = 0xff;
static MBT_U8 dbsv_u8MntPatVerForPrgListUpdate = 0xff;
                                                        

static PROGRAM_INFO dbsv_stMntCurProg =
{
    dbsm_InvalidID,
    dbsm_InvalidPID,
};

static DBST_MntCTR dbsv_stMntCtr = 
{
    .u8HeatBeatTime = 0,
    .u8InUpdateProcess = 1,
    .u8PatGoted = 0,
    .u8NitGoted = 0,
    .u8SdtActueGoted = 0,
    .u8SdtOtherGoted = 0,
    .u8BatGoted = 0,
    .u8SdtOtherTimer = 0xff,
    .u8SdtOtherTotal = 0,
    .u8SdtOtherVerNum = 0,
    .u8NitTotal = 0,
    .u8SdtActueTotal = 0,
    .u8HeatBeatTimer = 0xff,
    .u8BatTimer = 0xff,
    .u8CatVersion = 0xff,
    .u8SdtOtherTryTime = 0,
    .u8PatVersion = 0xff,
    .u8NitVersion = 0xff,
    .u8BatVerNum = 0,
    .u8SdtActueVersion = 0xff,
    .u8BatNewVersion = 0xff,
    .u8PatNewVersion = 0xff,
    .u8NitNewVersion = 0xff,
    .u8SdtNewActueVersion = 0xff,
};

static MBT_VOID (*dbsf_pMntNotifyUICall)(MBT_S32  iCmd,MBT_VOID *pMsgData,MBT_S32 iMsgDatLen)  = MM_NULL;


static MBT_VOID MntMonitorTDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID MntMonitorNIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
static MBT_VOID MntParseBAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData ,MBT_S32 iMsgLen);
static MBT_VOID MntMonitorSDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen);
static MBT_S32 MntNitDescript(MBT_U8 *pu8MsgData,MBT_U8 u8TableID,MBT_U16 u16TSID,MBT_U16 u16NetWorkID);
static MBT_S32 MntLCNDesc(MBT_U8 *data,MBT_U16 u16TSID,MBT_U8 u8TableID);
static MBT_VOID MntSyncSdtOtherVer(DBST_MntCTR *pstMntCtr);
#if (1 == M_MNTSdtOther)
static MBT_VOID MntSdtOtherTimerCall(MBT_U32 u32Para[]);
#endif
static MBT_VOID MntSetHeatBeatTimer(DBST_MntCTR *pstMntCtr);
static MBT_VOID MntBatTimerCall(MBT_U32 u32Para[]);
static MBT_VOID MntSyncBatVer(DBST_MntCTR *pstMntCtr);
static MBT_BOOL MntIsSdtOtherUpdated(DBST_MntCTR *pstMntCtr);
static MBT_BOOL MntIsBatUpdated(DBST_MntCTR *pstMntCtr);

static MBT_VOID MntStartHeatBeatTables(MBT_VOID)
{
    //DBS_DEBUG(("MntStartHeatBeatTables start\n"));
    dbsf_ListFreeMntPrgList();
    //DBS_DEBUG(("MntStartHeatBeatTables Free mnt OK\n"));
    dbsf_MntStartTable(NIT_PID,NIT_ACTUAL_NETWORK_TABLE_ID,-1);
    dbsf_MntStartTable(CAT_PID,CAT_TABLE_ID,-1);
    dbsf_MntStartTable(PAT_PID,PAT_TABLE_ID, -1);
    dbsf_MntStartTable(SDT_PID,SDT_ACTUAL_TS_TABLE_ID, -1);
#if (1 == M_MNTSdtOther)
    dbsf_MntStartTable(SDT_PID,SDT_OTHER_TS_TABLE_ID, -1);
#endif    
    dbsf_MntStartTable(BAT_PID,BAT_TABLE_ID, -1);
    //DBS_DEBUG(("MntStartHeatBeatTables OK\n"));
}

static MBT_VOID MntHeatBeatTimerCall(MBT_U32 u32Para[])
{
    UNUSED_PARAM(u32Para);
    if(MM_TUNER_UNLOCKED == MLMF_Tuner_GetLockStatus(0))
    {
        DBS_DEBUG(("MntHeatBeatTimerCall tuner not locked\n"));
        return;
    }

    //MLMF_Print("MntHeatBeatTimerCall start\n");
    dbsf_MntStartTable(TDT_PID,TDT_TABLE_ID,-1);
    if( m_DbsSearchEpg == dbsv_DbsWorkState)
    {                                            
        dbsf_MntStartPmt();
        MntStartHeatBeatTables();
    }
}



static MBT_VOID MntMonitorPAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)  
{
    MBT_U16	stPid;
    MBT_U16	stProgramNo;
    MBT_U16	stPrevProgramNo;
    MBT_U8 u8Version;
    MBT_U8 u8TableID;
    MBT_U8 *pu8End;
    PRO_NODE stPrgInfo;
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;

    SRSTF_FilterStopOrNot(stFilterHandle,1,MntMonitorPAT);
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    
    pu8End = pu8MsgData + iMsgLen - 4;
    u8Version = (pu8MsgData [ 5 ]&0x3e)>>1;
    pstMntCtr->u8PatGoted = 1;
    if(pstMntCtr->u8PatVersion == u8Version)
    {
        return;
    }

    if(dbsv_u8MntPatVerForPrgListUpdate != u8Version)
    {
        dbsv_u8MntPatVerForPrgListUpdate = u8Version;
        /*因为有可能添加节目,所以sdt变化后，要强收全表*/
        if(0 == pstMntCtr->u8InUpdateProcess)
        {
            DBS_DEBUG(("MntMonitorPAT version change u8InUpdateProcess = 1\n"));
            pstMntCtr->u8InUpdateProcess = 1;
            dbsf_GenreListFreeList();
            dbsf_MntStartHeatBeat();
        }
    }

    u8TableID = pu8MsgData[0];
    pstMntCtr->u8PatNewVersion = u8Version;
    stPrevProgramNo = dbsm_InvalidID;
    pu8MsgData = pu8MsgData +8;
    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    stPrgInfo.stService.stPrgTransInfo = dbsv_stCurTransInfo;
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

        if (stProgramNo == 0 ||stPrevProgramNo == stProgramNo)
    	{
             continue ;
    	}
    
    	stPrevProgramNo = stProgramNo;
    	if(stProgramNo == dbsv_stMntCurProg.u16ServiceID)
    	{
            if(dbsm_InvalidPID == dbsv_stMntCurProg.uPmtPid)
            {
                dbsv_stMntCurProg.uPmtPid = stPid;
                dbsf_MntStartPmt();
            }
    	}
        
        stPrgInfo.stService.u16ServiceID = stProgramNo;
        stPrgInfo.stService.sPmtPid =  stPid ;
        dbsf_ListMntWritePrgInfo(&stPrgInfo,u8TableID);
    }
}


static MBT_VOID MntServiceDescript(MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode,MBT_U8 u8TableID)
{
    MBT_S32   iLength;
    MBT_S32   iTemp;
    MBT_S32   iNoOfBytesParsed ;

    if(MM_NULL == pstCurPrgNode)
    {
        return;
    }
    
     //DBS_DEBUG(("serviceid = %x tsid = %x type = %d\n",pstCurPrgNode->stService.u16ServiceID,pstCurPrgNode->stService.u16TsID,pu8MsgData[2]));
    /*For gtpl project we can only get service type from BAT*/
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
   // DBS_DEBUG((" name = %s\n",pstCurPrgNode->stService.cServiceName));
}

static MBT_VOID MntShiftDescriptor(MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode)
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




static MBT_VOID MntReferenceDescriptor(MBT_U8 *pu8MsgData,MBT_S32 iDescriptorLength,MBT_U16 u16RefServiceID,MBT_U8 u8TableID)
{
    PRO_NODE stPrgInfo;
    MBT_U16 u16TSID;
    MBT_U16 original_network_id;
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
        original_network_id = (pu8MsgData[2] << 8) | pu8MsgData[3];
        u16ServiceID = (((pu8MsgData[4] << 8) | pu8MsgData[5])); 
        stPrgInfo.stService.stPrgTransInfo.u32TransInfo = dbsf_CTRGetTransInfoFromList(pstTransInfo,u16TransNum,u16TSID);
        stPrgInfo.stService.u16OrinetID = original_network_id;
        stPrgInfo.stService.u16TsID = u16TSID;
        stPrgInfo.stService.u16ServiceID = u16ServiceID;
        stPrgInfo.stService.uReferenceServiceID = u16RefServiceID;
        stPrgInfo.stService.u8ValidMask |= PRG_SDT_VALID_MASK;
        stPrgInfo.stService.cProgramType = STTAPI_SERVICE_NVOD_TIME_SHIFT;   
        DBS_DEBUG(("MntReferenceDescriptor serviceid = %x,frenq = %d\n",stPrgInfo.stService.u16ServiceID,stPrgInfo.stService.stPrgTransInfo.uBit.uiTPFreq));
        dbsf_ListMntWritePrgInfo(&stPrgInfo,u8TableID);
        pu8MsgData += 6;
    }
    MLMF_Free(pstTransInfo);
}

static MBT_S32 MntSdtDescript(MBT_U8 *pu8MsgData,PRO_NODE *pstCurPrgNode,MBT_U8 u8TableID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    //DBS_DEBUG(("MntSdtDescript tag = %x\n",pu8MsgData [ 0 ]));
    switch ( pu8MsgData [ 0 ])
    {
        case SERVICE_DESC:					/* 0x48 */	
            MntServiceDescript( pu8MsgData,pstCurPrgNode,u8TableID);
            break;
        case NVOD_TIMESHIFT_DESCRIPTOR:                 /* 0x4c */  
            MntShiftDescriptor( pu8MsgData,pstCurPrgNode);
            break;
        case NVOD_REFERENCE_DESCRIPTOR:
            if(MM_NULL != pstCurPrgNode)
            {
                MntReferenceDescriptor( pu8MsgData, iDescriptorLength,pstCurPrgNode->stService.u16ServiceID,u8TableID);
            }
            break;
    	case MOSAIC_DESCRIPTOR: // 0x51
    	     break;		
        case 0:
            iDescriptorLength = 4096;
            break;
        default:
            break;
    }
    return ( iDescriptorLength + 2 );
}

static MBT_VOID MntCheckStatus(MBT_VOID)
{
    DBSE_UpdateType eUpdateType;
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    MBT_BOOL bUpdate;
    MBT_BOOL bNetworkIDUpdated = MM_FALSE;
    MBT_BOOL bGetNIT = MM_FALSE;
    MBT_BOOL bGetBat = MM_FALSE;
    MBT_BOOL bSdtOtherUpdated;
    MBT_BOOL bBatUpdated;
    DVB_BOX *pstBoxInfo;

    DBS_DEBUG(("MntCheckStatus u8SdtOtherGoted %d,u8SdtOtherTotal %d,u8BatGoted %d,u8PatGoted %d,u8SdtActueGoted %d u8SdtActueTotal %d u8NitGoted %d u8NitTotal %d\n",pstMntCtr->u8SdtOtherGoted,pstMntCtr->u8SdtOtherTotal,pstMntCtr->u8BatGoted,pstMntCtr->u8PatGoted,pstMntCtr->u8SdtActueGoted,pstMntCtr->u8SdtActueTotal,pstMntCtr->u8NitGoted,pstMntCtr->u8NitTotal));
    if(pstMntCtr->u8SdtOtherGoted < pstMntCtr->u8SdtOtherTotal)
    {
        return;
    }

    if(0 == pstMntCtr->u8BatGoted)
    {
        return;
    }
/*
    if(pstMntCtr->u8NitGoted < pstMntCtr->u8NitTotal)
    {
        return;
    }
    */

    if(pstMntCtr->u8SdtActueGoted < pstMntCtr->u8SdtActueTotal)
    {
        return;
    }

    if(0 == pstMntCtr->u8PatGoted)
    {
        return;
    }

    bSdtOtherUpdated = MntIsSdtOtherUpdated(pstMntCtr);
    bBatUpdated = MntIsBatUpdated(pstMntCtr);
    DBS_DEBUG(("u8NitNewVersion %x,u8NitVersion %x,bBatUpdated %x,u8SdtNewActueVersion %x,u8SdtActueVersion %x,u8PatNewVersion %x,u8PatVersion %x,bSdtOtherUpdated %d\n",pstMntCtr->u8NitNewVersion,pstMntCtr->u8NitVersion,bBatUpdated,pstMntCtr->u8SdtNewActueVersion,pstMntCtr->u8SdtActueVersion,pstMntCtr->u8PatNewVersion,pstMntCtr->u8PatVersion,bSdtOtherUpdated));
    if(pstMntCtr->u8NitNewVersion == pstMntCtr->u8NitVersion&&MM_FALSE == bBatUpdated&&pstMntCtr->u8SdtNewActueVersion == pstMntCtr->u8SdtActueVersion&&pstMntCtr->u8PatNewVersion == pstMntCtr->u8PatVersion&&MM_FALSE == bSdtOtherUpdated)
    {
        DBS_DEBUG(("Nothing updated return\n\n\n"));
        return;
    }
 
    if(pstMntCtr->u8NitVersion != pstMntCtr->u8NitNewVersion)
    {
        pstMntCtr->u8NitVersion = pstMntCtr->u8NitNewVersion;
        bGetNIT = MM_TRUE;
    }

    if(MM_TRUE == bBatUpdated)
    {
        bGetBat = MM_TRUE;
    }

    pstMntCtr->u8SdtActueVersion = pstMntCtr->u8SdtNewActueVersion;
    pstMntCtr->u8PatVersion = pstMntCtr->u8PatNewVersion;
    MntSyncSdtOtherVer(pstMntCtr);
    MntSyncBatVer(pstMntCtr);
    pstMntCtr->u8PatGoted = 0;
    pstMntCtr->u8NitGoted = 0;
    pstMntCtr->u8SdtActueGoted = 0;
    pstMntCtr->u8SdtOtherGoted = 0;
    pstMntCtr->u8BatGoted = 0;
    pstMntCtr->u8SdtOtherTryTime = 0;

    bUpdate = MM_FALSE;
    pstBoxInfo = DBSF_DataGetBoxInfo();
    DBS_DEBUG(("dbsv_u16NetworkID %x,pstBoxInfo->u16NetWorkID %x\n",dbsv_u16NetworkID,pstBoxInfo->u16NetWorkID));
    if(dbsv_u16NetworkID != pstBoxInfo->u16NetWorkID)
    {
        pstBoxInfo->u16NetWorkID = dbsv_u16NetworkID;
        bUpdate = MM_TRUE;
        bNetworkIDUpdated = MM_TRUE;
    }

    eUpdateType = dbsf_ListMntCheck2UpdatePrgList(bNetworkIDUpdated,bGetNIT,bGetBat); 

    if(dbsv_u8MntPrgVersion != pstMntCtr->u8NitVersion)
    {
        dbsv_u8MntPrgVersion = pstMntCtr->u8NitVersion;
        DBS_DEBUG(("dbsf_ListMntCheck2UpdatePrgList dbsv_u8MntPrgVersion = %x\n",dbsv_u8MntPrgVersion));
    }
    
    if(dbsv_u16BootupChannelServiceID != pstBoxInfo->u16StartUpChannel)
    {
        pstBoxInfo->u16StartUpChannel = dbsv_u16BootupChannelServiceID;
        bUpdate = MM_TRUE;
    }
    
    if(pstBoxInfo->ucProgramVer != dbsv_u8MntPrgVersion)
    {
        pstBoxInfo->ucProgramVer = dbsv_u8MntPrgVersion;
        bUpdate = MM_TRUE;
    }
    
    if(MM_TRUE == bUpdate)
    {
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }

    if(dbsm_UpdateList == eUpdateType)
    {
        if(MM_NULL != dbsf_pMntNotifyUICall)
        {
            DBS_DEBUG(("m_PrgListHasBeenUpdated\n"));
            dbsf_pMntNotifyUICall(m_PrgListHasBeenUpdated,MM_NULL,0);
        }
    }
    else if(dbsm_UpdateItem == eUpdateType)
    {
        if(MM_NULL != dbsf_pMntNotifyUICall)
        {
            DBS_DEBUG(("m_PrgItemHasBeenUpdated\n"));
            dbsf_pMntNotifyUICall(m_PrgItemHasBeenUpdated,MM_NULL,0);
        }
    }

    
    pstMntCtr->u8InUpdateProcess = 0;
    //MLMF_Print("\n\n\n");
}

static MBT_BOOL MntIsSdtOtherUpdated(DBST_MntCTR *pstMntCtr)
{
    DBST_MntVerCTR *pstVerNode = pstMntCtr->stSdtOtherVer;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stSdtNewOtherVer;
    DBST_MntVerCTR *pstNewVerNodeGot;
    MBT_U8 u8VerNum = pstMntCtr->u8SdtOtherVerNum;
    MBT_U8 i;
    MBT_U8 k;
    
    if(u8VerNum > dbsm_MaxTransNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8SdtOtherVerNum= 0;
    }
    
    for(i = 0;i < u8VerNum;i++)
    {
        pstNewVerNodeGot = MM_NULL;
        for(k = 0;k < u8VerNum;k++)
        {
            if(pstVerNode[i].u16TsID == pstNewVerNode[k].u16TsID)
            {
                pstNewVerNodeGot = &pstNewVerNode[k];
                break;
            }
        }

        if(MM_NULL == pstNewVerNodeGot)
        {
            return MM_TRUE;
        }

        if(pstVerNode[i].u8Version != pstNewVerNodeGot->u8Version)
        {
            return MM_TRUE;
        }
    }

    return MM_FALSE;
}

static MBT_BOOL MntIsBatUpdated(DBST_MntCTR *pstMntCtr)
{
    DBST_MntVerCTR *pstVerNode = pstMntCtr->stBatVer;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stBatNewVer;
    DBST_MntVerCTR *pstNewVerNodeGot;
    MBT_U8 u8VerNum = pstMntCtr->u8BatVerNum;
    MBT_U8 i;
    MBT_U8 k;
    
    if(u8VerNum > dbsm_MaxBatNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8BatVerNum= 0;
    }
    
    for(i = 0;i < u8VerNum;i++)
    {
        pstNewVerNodeGot = MM_NULL;
        for(k = 0;k < u8VerNum;k++)
        {
            if(pstVerNode[i].u16TsID == pstNewVerNode[k].u16TsID&&pstVerNode[i].u8SectionNum == pstNewVerNode[k].u8SectionNum)
            {
                pstNewVerNodeGot = &pstNewVerNode[k];
                break;
            }
        }

        if(MM_NULL == pstNewVerNodeGot)
        {
            return MM_TRUE;
        }

        if(pstVerNode[i].u8Version != pstNewVerNodeGot->u8Version)
        {
            return MM_TRUE;
        }
    }

    return MM_FALSE;
}

static MBT_VOID MntSyncSdtOtherVer(DBST_MntCTR *pstMntCtr)
{
    DBST_MntVerCTR *pstVerNode = pstMntCtr->stSdtOtherVer;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stSdtNewOtherVer;
    MBT_U8 u8VerNum = pstMntCtr->u8SdtOtherVerNum;
    MBT_U8 i;
    
    if(u8VerNum > dbsm_MaxTransNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8SdtOtherVerNum= 0;
    }
    
    for(i = 0;i < u8VerNum;i++)
    {
        pstVerNode[i] = pstNewVerNode[i];
    }
}

static MBT_VOID MntSyncBatVer(DBST_MntCTR *pstMntCtr)
{
    DBST_MntVerCTR *pstVerNode = pstMntCtr->stBatVer;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stBatNewVer;
    MBT_U8 u8VerNum = pstMntCtr->u8BatVerNum;
    MBT_U8 i;
    
    if(u8VerNum > dbsm_MaxBatNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8BatVerNum= 0;
    }
    
    for(i = 0;i < u8VerNum;i++)
    {
        pstVerNode[i] = pstNewVerNode[i];
    }
}

static MBT_BOOL MntCheckBatVer(MBT_U16 u16BouquetID,MBT_U8 u8SectionNum,MBT_U8 u8Ver)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stBatNewVer;
    DBST_MntVerCTR *pstNewVerNodeGot;
    MBT_U8 u8VerNum = pstMntCtr->u8BatVerNum;
    MBT_U8 i;

    if(u8VerNum > dbsm_MaxBatNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8BatVerNum= 0;
    }

    pstNewVerNodeGot = MM_NULL;
    for(i = 0;i < u8VerNum;i++)
    {
        //MLMF_Print("pstVerNode->u16TsID %x,u16BouquetID %x pstVerNode->u8Version %x,u8Ver %x\n",pstNewVerNode[i].u16TsID,u16BouquetID,pstNewVerNode[i].u8Version,u8Ver);
        if(pstNewVerNode[i].u16TsID == u16BouquetID&&u8SectionNum == pstNewVerNode[i].u8SectionNum)
        {
            pstNewVerNodeGot = &pstNewVerNode[i];
            break;
        }
    }

    if(MM_NULL != pstNewVerNodeGot)
    {
        if(pstNewVerNodeGot->u8Version == u8Ver)
        {
            //MLMF_Print("Same ver\n");
            return MM_TRUE;
        }

        pstNewVerNodeGot->u8Version = u8Ver;
        //MLMF_Print("Diffe ver\n");
        return MM_FALSE;
    }
    
    if(u8VerNum < dbsm_MaxBatNum)
    {
        pstNewVerNode[u8VerNum].u8Version = u8Ver;
        pstNewVerNode[u8VerNum].u16TsID = u16BouquetID;
        pstNewVerNode[u8VerNum].u8SectionNum = u8SectionNum;
        u8VerNum++;
        pstMntCtr->u8BatVerNum = u8VerNum;
    }
    
    //MLMF_Print("Add node Diffe ver\n");
    return MM_FALSE;
}

#if (1 == M_MNTSdtOther)
static MBT_BOOL MntCheckSdtOtherVer(MBT_U16 u16TsID,MBT_U8 u8Ver)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    DBST_MntVerCTR *pstNewVerNode = pstMntCtr->stSdtNewOtherVer;
    DBST_MntVerCTR *pstNewVerNodeGot;
    MBT_U8 u8VerNum = pstMntCtr->u8SdtOtherVerNum;
    MBT_U8 i;

    if(u8VerNum > dbsm_MaxTransNum)
    {
        u8VerNum = 0;
        pstMntCtr->u8SdtOtherVerNum= 0;
    }

    pstNewVerNodeGot = MM_NULL;
    for(i = 0;i < u8VerNum;i++)
    {
       // MLMF_Print("pstVerNode->u16TsID %x,u16TsID %x pstVerNode->u8Version %x,u8Ver %x\n",pstVerNode->u16TsID,u16TsID,pstVerNode->u8Version,u8Ver);
        if(pstNewVerNode[i].u16TsID == u16TsID)
        {
            pstNewVerNodeGot = &pstNewVerNode[i];
            break;
        }
    }

    if(MM_NULL != pstNewVerNodeGot)
    {
        if(pstNewVerNodeGot->u8Version == u8Ver)
        {
            //MLMF_Print("Same ver\n");
            return MM_TRUE;
        }

        pstNewVerNodeGot->u8Version = u8Ver;
        //MLMF_Print("Diffe ver\n");
        return MM_FALSE;
    }
    
    if(u8VerNum < dbsm_MaxTransNum)
    {
        pstNewVerNode[u8VerNum].u8Version = u8Ver;
        pstNewVerNode[u8VerNum].u16TsID = u16TsID;
        u8VerNum++;
        pstMntCtr->u8SdtOtherVerNum = u8VerNum;
    }
    
    //MLMF_Print("Add node Diffe ver\n");
    return MM_FALSE;
}
#endif

static MBT_S32 MntGtplBootUpChannel(MBT_U8 *data)
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
            //MLMF_Print("Get start up channel %x\n",dbsv_u16BootupChannelServiceID);
            break;
        }
        pData += 5;
    }

    return (descriptor_length + 2);
}

//MBT_U32 dbsv_u32MntLcn = 0;
//MBT_U32 dbsv_TestUpdateStart = 0;

/*
MBT_VOID TestMntBATUpdate(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    if(1 == dbsv_TestUpdateStart)
    {
        dbsv_TestUpdateStart = 0;
    }
    else
    {
        dbsv_TestUpdateStart = 1;
    }
}
*/



static MBT_S32 MntServiceListDesc(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U8 u8TableID,MBT_U16 u16BouquetID)
{
    MBT_S32 len;
    MBT_U8 *pData = pu8MsgData;
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
    /*节目类型从bat里面取*/
    if(BAT_TABLE_ID == u8TableID)
    {
        while (len > 0)
        {
            stPrgInfo.stService.u16ServiceID = ((pData[0]<<8)|pData[1]);
            stPrgInfo.stService.cProgramType = 0xff;
            stPrgInfo.stService.u8ValidMask |= PRG_BAT_VALID_MASK;
            stPrgInfo.stService.u16BouquetID[0] = 1;
            stPrgInfo.stService.u16BouquetID[1] = u16BouquetID;
            dbsf_ListMntWritePrgInfo(&stPrgInfo,u8TableID);
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
            dbsf_ListMntWritePrgInfo(&stPrgInfo,u8TableID);
            len -= 3;
            pData += 3;
        }
    }
    return (descriptor_length + 2);
}

static MBT_S32 MntGetBouquetNameDesc(MBT_U8 *data,MBT_U8 u8Version,MBT_U16 u16BouquetID)
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

	DBS_DEBUG(("MntGetBouquetNameDesc name = %s u16BouquetID %x u8GenreOrder %x\n",stGenreNode.strGenreName,stGenreNode.u16BouquetID,stGenreNode.u8GenreOrder));
	dbsf_GenreListPutNode(&stGenreNode);
    return (descriptor_length + 2);
}



/***************************************************************************************************
 * CODE			:	MntBatDescript
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
static MBT_S32 MntBatDescript(MBT_U16 u16TSID, MBT_U8 *pu8MsgData,MBT_U8 u8Version,MBT_U16 u16BouquetID,MBT_U8 u8TableID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    switch ( pu8MsgData [ 0 ])
    {
		case BOUQUET_NAME_DESC:
            MntGetBouquetNameDesc(pu8MsgData,u8Version,u16BouquetID);
            break;

        case m_Gtpl_BootUpChannelTag:
            MntGtplBootUpChannel(pu8MsgData);
            break;

        case LCN_DESCRIPTOR82:
        case LCN_DESCRIPTOR83:
            MntLCNDesc(pu8MsgData,u16TSID,NIT_ACTUAL_NETWORK_TABLE_ID);
            break;
            
        case NETWORK_NAME_DESC:				/*	0x40 */
            break;
            
        case SERVICE_LIST_DESC:				/* 0x41 */	
            MntServiceListDesc(u16TSID,pu8MsgData,u8TableID,u16BouquetID);
            break;
            
        default:
            break;
    }
    return ( iDescriptorLength + 2 );
}


static MBT_S32 MntCaDescript(MBT_U8 *pu8MsgData ,MET_PTI_PID_T *stCasPid)
{
    MBT_S32	siDescriptorLength ;
    MBT_U16 u16EcmPid;
    
    if(MM_NULL == pu8MsgData)
    {
        return 0x0fffffff;
    }

    siDescriptorLength = pu8MsgData [ 1 ] + 2;
    u16EcmPid = (( ( pu8MsgData[4] & 0x1F) << 8 ) | pu8MsgData[5] );

    if(MM_NULL != stCasPid&&u16EcmPid < dbsm_InvalidPID)
    {
        //MLMF_Print("MntCaDescript systemid = %x u16EcmPid = %x\n",( pu8MsgData[2] << 8 ) | pu8MsgData[3],u16EcmPid);
        if (dbsf_CTRCASCheckSysID(( pu8MsgData[2] << 8 ) | pu8MsgData[3]))
        {
            *stCasPid = u16EcmPid;
        }
    }
    return siDescriptorLength;
}

static MBT_VOID MntPrgPlay(DBST_PROG *pstService)
{
    MBT_S32 s32EcmNum;
    MBT_S32 s32EcmCtrNum;
    DBS_stCAEcmCtr stEcmCtr[dbsm_MaxEdcmCtrNum];
    MST_AV_StreamData_T stPidList[3] = 
    {
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
    };
    DBS_st2CAPIDInfo stCurPrgCasInfo[m_MaxPidInfo] =
    {
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
    };

    
    MLMF_AV_Stop();
    if(pstService->NumPids > MAX_PRG_PID_NUM)
    {
        pstService->NumPids = MAX_PRG_PID_NUM;
    }    
    s32EcmNum = dbsf_PlayGetPIDCasInfo(stPidList,stCurPrgCasInfo,pstService->Pids,pstService->NumPids,pstService->u16CurAudioPID);
    dbsf_PlyStartAV(3,stPidList);
    s32EcmCtrNum = 0;
    if(s32EcmNum > 0)
    {
        s32EcmCtrNum = dbsf_ListGetEcmCtrList(stEcmCtr,3,pstService->stPrgTransInfo.u32TransInfo,pstService->u16ServiceID);
    }
    if(s32EcmCtrNum > 0)
    {
        dbsf_CTRCASStartEcm(stCurPrgCasInfo,pstService->u16ServiceID,stEcmCtr,s32EcmCtrNum);
    }
    else
    {
        dbsf_CTRCASStopEcm();
    }
    /*
    {
        MBT_S32 k,m;
        MLMF_Print("MntPrgPlay stCurPrgCasInfo\n");
        for(k = 0;k < m_MaxPidInfo;k++)
        {
            MLMF_Print("[%d]stEcmPid = %x u8Valid = %d u8StreamPIDNum = %d\n",k,stCurPrgCasInfo[k].stEcmPid,stCurPrgCasInfo[k].u8Valid,stCurPrgCasInfo[k].u8StreamPIDNum);
            for(m = 0;m < stCurPrgCasInfo[k].u8StreamPIDNum;m++)
            {
                MLMF_Print("[%d]stStreamPid = %x\n",m,stCurPrgCasInfo[k].stStreamPid[m]);
            }
        }
    }
    */
}




static MBT_VOID MntCodeDownloadDescriptor(MBT_U8 *pucDescriptorBuf)
{
    MBT_S8 s8LeftLen, s8LeftPrivateLen;
    MBT_U32 _LoadFactoryFlag = 0;
    Load_update_info_t _Load_update_info;
    MBT_U8   au8StrTmp[10]={0};
    MBT_U8*  pu8StoreVal = NULL;
    MBT_U8 u8DeliveryDescriptorLength,u8PrivateDataLength;
    MBT_U8 u8DownloadType;
    MBT_U32 StartSn,EndSn,Sn = 0;
    MBT_U8 CheckSum;
    int i;
    int _ret=-1;
    MBT_U8 _sn[24] = {0};
    MBT_U8 *pucPrivateBuf = NULL;

#if 0
    {
        int j;
        MLMF_Print("[CDCA_ParsePrivateDesc] CA Descriptor:");
        for(j=0;j<pucDescriptorBuf[1]+2;j++)
        {
            MLMF_Print(" %02x",pucDescriptorBuf[j]);
        }
        MLMF_Print("\n");
    }
#endif

    if (pucDescriptorBuf != NULL)
    {
        if(pucDescriptorBuf[0] == 0xA1)
        {
            if(0x04EF == ((pucDescriptorBuf[2]<<8)|pucDescriptorBuf[3]))
            {
                CheckSum = 0;
                for(i=0;i<pucDescriptorBuf[1]+2;i++)
                {
                    CheckSum += pucDescriptorBuf[i];
                }

                if(LastOtaCheckSum != 0xff && LastOtaCheckSum == CheckSum)
                {
                    return;
                }
                LastOtaCheckSum = CheckSum;

                s8LeftLen = pucDescriptorBuf[1]-2;
                pucDescriptorBuf+=4;
                while(s8LeftLen > 0)
                {
                    _Load_update_info.frq = (pucDescriptorBuf[2]>>4)*1000+(pucDescriptorBuf[2]&0x0f)*100+(pucDescriptorBuf[3]>>4)*10+(pucDescriptorBuf[3]&0x0f);
                    _Load_update_info.symb = (pucDescriptorBuf[10]>>4)*1000+(pucDescriptorBuf[10]&0x0f)*100+(pucDescriptorBuf[11]>>4)*10+(pucDescriptorBuf[11]&0x0f);
                    _Load_update_info.mod  = pucDescriptorBuf[8];
                    
                    u8DeliveryDescriptorLength = pucDescriptorBuf[1]+2;
                    _Load_update_info.pid = (pucDescriptorBuf[u8DeliveryDescriptorLength]<<5)|(pucDescriptorBuf[u8DeliveryDescriptorLength+1]>>3);
                    u8DownloadType = pucDescriptorBuf[u8DeliveryDescriptorLength+1]&0x07;
                    u8PrivateDataLength = pucDescriptorBuf[u8DeliveryDescriptorLength+2];
                    s8LeftPrivateLen = u8PrivateDataLength;
                    pucPrivateBuf = pucDescriptorBuf + u8DeliveryDescriptorLength + 3;
                    while(s8LeftPrivateLen > OVT_CDCA_PRIVATE_DATA_LEN)
                    {
                        _Load_update_info.LoadUpdateTag = (pucPrivateBuf[0]<<24)|(pucPrivateBuf[1]<<16)|(pucPrivateBuf[2]<<8)|pucPrivateBuf[3];
                        _Load_update_info.oui = (pucPrivateBuf[4]<<8)|pucPrivateBuf[5];
                        _Load_update_info.hw = (pucPrivateBuf[6]<<8)|pucPrivateBuf[7];
                        _Load_update_info.sw = (pucPrivateBuf[8]<<8)|pucPrivateBuf[9];
                        StartSn = (pucPrivateBuf[13]<<24)|(pucPrivateBuf[12]<<16)|(pucPrivateBuf[11]<<8)|pucPrivateBuf[10];
                        EndSn = (pucPrivateBuf[17]<<24)|(pucPrivateBuf[16]<<16)|(pucPrivateBuf[15]<<8)|pucPrivateBuf[14];
                        CheckSum = 0;
                        for(i=0;i<OVT_CDCA_PRIVATE_DATA_LEN;i++)
                        {
                            CheckSum += pucPrivateBuf[i];
                        }
                        
                        //MLMF_Print("[CDCA_ParsePrivateDesc]CheckSum=%x\n",CheckSum);
                        if(CheckSum == pucPrivateBuf[OVT_CDCA_PRIVATE_DATA_LEN])
                        {
                            //MLMF_Print("[CDCA_ParsePrivateDesc]frq=%d\n",_Load_update_info.frq);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]symb=%d\n",_Load_update_info.symb);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]mod=%d\n",_Load_update_info.mod);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]pid=%x\n",_Load_update_info.pid);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]u8DownloadType=%d\n",u8DownloadType);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]LoadUpdateTag=%x\n",_Load_update_info.LoadUpdateTag);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]oui=%x\n",_Load_update_info.oui);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]hw=%d\n",_Load_update_info.hw);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]sw=%d\n",_Load_update_info.sw);
                            //MLMF_Print("[CDCA_ParsePrivateDesc]StartSn=%d EndSn=%d\n",StartSn,EndSn);

                            if((MApp_AppOuiGet() == _Load_update_info.oui)&&(MApp_AppHwGet() == _Load_update_info.hw))
                            {
                                ShareEnv_LoadEnv();
                                pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG");

                                if ((pu8StoreVal == NULL))
                                {
                                    strcpy((char*)au8StrTmp,"0");
                                    ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                                    ShareEnv_StoreEnv();
                                }
                                else
                                {
                                    _LoadFactoryFlag = strtoul((MBT_CHAR *)pu8StoreVal, NULL, 16);	
                                }
                                
                                if(((MApp_AppSwGet()>>16) == 0xffff&&0x0 == _Load_update_info.sw) || (_Load_update_info.sw > (MApp_AppSwGet()>>16)))
                                {
                                    extern int ovt_fac_get_env(char *name, char *pBuffer);

                                    _ret = ovt_fac_get_env("ovt_serail_num",(MBT_CHAR *)_sn);
                                    if(_ret == 0)
                                    {
                                        Sn = (((_sn[14]-'0')*10000000) + ((_sn[15]-'0')*1000000) + ((_sn[16]-'0')*100000) + ((_sn[17]-'0')*10000) + ((_sn[18]-'0')*1000) + ((_sn[19]-'0')*100) + ((_sn[20]-'0')*10) + (_sn[21]-'0'));
                                    }

                                    //MLMF_Print("[CDCA_ParsePrivateDesc]Sn=%d\n",Sn);
                                    if(Sn == 0 || (Sn >= StartSn && Sn<=EndSn))
                                    {
                                        MBT_U32 ucDownloadType = m_UpdateSWAuto;
                                        if (_Load_update_info.LoadUpdateTag == LOAD_UPDATE_FACTORY_TAG)
                                        {
                                            strcpy((char*)au8StrTmp,"1");
                                            ShareEnv_LoadEnv();
                                            ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                                            ShareEnv_StoreEnv();
                                        }

                                        appCa_SetOtaFreq(_Load_update_info.frq*10);
                                        appCa_SetOtaSymb(_Load_update_info.symb*10);
                                        appCa_SetOtaMod(_Load_update_info.mod);
                                        appCa_SetOtaPID(_Load_update_info.pid);
                                        if(u8DownloadType == 2)
                                        {
                                            MLMF_Print("----------------------------Triger Auto OTA------------------------------\n");
                                            ucDownloadType = m_UpdateSWAuto;
                                        }
                                        else if(u8DownloadType == 1)
                                        {
                                            MLMF_Print("----------------------------Triger Manual OTA------------------------------\n");
                                            ucDownloadType = m_UpdateSWManeal;
                                        }
                                        if(dbsf_pMntNotifyUICall)
                                        {
                                            dbsf_pMntNotifyUICall( ucDownloadType,MM_NULL,0);
                                        }
                                        return;
                                    }
                                }
                            }
                            else if((_Load_update_info.sw == (MApp_AppSwGet()>>16))
                                                &&(_Load_update_info.LoadUpdateTag == LOAD_UPDATE_FACTORY_TAG)
                                                &&(_LoadFactoryFlag == 1))
                            {
                                strcpy((char*)au8StrTmp,"0");
                                ShareEnv_LoadEnv();
                                ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                                ShareEnv_StoreEnv();

                                while(1)
                                {
                                    MLMF_FP_Display("-OL-" , 4, MM_FALSE);
                                    MLMF_Task_Sleep(500);
                                    MLMF_FP_Display("----" , 4, MM_FALSE);
                                    MLMF_Task_Sleep(500);
                                }
                            }
                        }
                        pucPrivateBuf += (OVT_CDCA_PRIVATE_DATA_LEN+1);
                        s8LeftPrivateLen -= (OVT_CDCA_PRIVATE_DATA_LEN+1);
                    }
                    pucDescriptorBuf += (u8DeliveryDescriptorLength+3+u8PrivateDataLength);
                    s8LeftLen -= (u8DeliveryDescriptorLength+3+u8PrivateDataLength);
                }                              
            }
        }
    }
    return;
}



static MBT_S32 MntLCNDesc(MBT_U8 *data,MBT_U16 u16TSID,MBT_U8 u8TableID)
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
        stPrgInfo.stService.usiChannelIndexNo = u16LCNNum&0x03ff;
        //stPrgInfo.stService.usiChannelIndexNo = dbsv_u32MntLcn;
        //dbsv_u32MntLcn ++;
        stPrgInfo.stService.u8ValidMask |= u32PrgMask;
        //MLMF_Print("MntLCNDesc erviceid %d lcn %d\n",stPrgInfo.stService.u16ServiceID,u16LCNNum&0x03ff);
        dbsf_ListMntWritePrgInfo(&stPrgInfo,u8TableID);
        pData += 4;
        //MLMF_Print("Bat service_id %x u16LCN %x\n",((pData[0]<<8)|pData[1]),((pData[2]<<8)|pData[3]));
    }

    return (descriptor_length + 2);
}



/***************************************************************************************************
 * CODE			:	MntNitDescript
 * TYPE		   	:	subroutine
 * PURPOSE		:
 *		Parses the descriptors and stores the relevant information into	the
 *		program/ transponder record pointed by sProgTransIndex.
 *
 *	THEORY OF OPERATION:
 *	1.	read the first byte which will give you	the descriptor tag.
 *	2.	read and set the length	of the descriptor.
 *	3.	decode the descriptor and update the database
 *	4.	return descriptor length + 2;
 ***************************************************************************************************/
static MBT_S32 MntNitDescript(MBT_U8 *pu8MsgData,MBT_U8 u8TableID,MBT_U16 u16TSID,MBT_U16 u16NetWorkID)
{
    MBT_S32	iDescriptorLength = pu8MsgData [1];
    switch ( pu8MsgData [ 0 ])
    {
        case CABLE_DELIVERY_DESCRIPTOR:   		/*	0x43 */	
            dbsf_SrchParseCableDeliveryDescript(pu8MsgData,u16TSID,u16NetWorkID);
            break;

        case SATELLITE_DELIVERY_DESCRIPTOR:
            break;

        case LCN_DESCRIPTOR82:
        case LCN_DESCRIPTOR83:
            MntLCNDesc(pu8MsgData,u16TSID,NIT_ACTUAL_NETWORK_TABLE_ID);
            break;

        case CODE_DOWNLOAD_DESC:	
            //DBS_DEBUG(("MntNitDescript NIT_ACTUAL_NETWORK_TABLE_ID\n"));
            if(NIT_ACTUAL_NETWORK_TABLE_ID == u8TableID)
            {
                MntCodeDownloadDescriptor( pu8MsgData);
            }
            break;    
            
        case SERVICE_LIST_DESC:             /* 0x41 */  
#if (1 == M_MNTNITPrgList)
            MntServiceListDesc(u16TSID,pu8MsgData,u8TableID,dbsm_InvalidID);
#endif
            break;
            
        case LINKAGE_DESCRIPTOR:	
            break;
        default:
            break;
    }
    return  (iDescriptorLength + 2);
}


#if NETWORK_LOCK
static MBT_U8 dbsv_u8MntNetWorkLock = 0;
static MBT_VOID MntCheckNetWork(MBT_U16 u16NetWorkID, MBT_CHAR *pcNetworkName)
{
	char s_NetNameComp[50] = {0};

    if(pcNetworkName == NULL || strcmp(pcNetworkName, "") == 0)
    {
        return;
    }

	memset(s_NetNameComp, 0, 50);
	
	sprintf(s_NetNameComp, "%s", DEFAULT_OPERATOR_NETWORKNAME);

    //if(dbsm_GtplNetworkID != u16NetWorkID&&dbsm_KCBPLNetworkID != u16NetWorkID)
	if(u16NetWorkID != DEFAULT_OPERATOR_NETWORKID || strcmp(pcNetworkName, s_NetNameComp) != 0)
    {
        if(0 == dbsv_u8MntNetWorkLock)
        {
            //MLMF_Print("MntCheckNetWork u16NetWorkID = %x dbsv_u8MntNetWorkLock = %d Lock\n",u16NetWorkID,dbsv_u8MntNetWorkLock);
            if(MM_NULL != dbsf_pMntNotifyUICall)
            {
                //MLMF_Print("MntCheckNetWork m_NetWorkLock\n");
                dbsf_pMntNotifyUICall(m_NetWorkLock,MM_NULL,0);
            }
            dbsv_u8MntNetWorkLock = 1;
        }
    }
    else
    {
        if(1 == dbsv_u8MntNetWorkLock)
        {
            //MLMF_Print("MntCheckNetWork u16NetWorkID = %x dbsv_u8MntNetWorkLock = %d unlock\n",u16NetWorkID,dbsv_u8MntNetWorkLock);
            if(MM_NULL != dbsf_pMntNotifyUICall)
            {
                //MLMF_Print("MntCheckNetWork m_NetWorkUnLock\n");
                dbsf_pMntNotifyUICall(m_NetWorkUnLock,MM_NULL,0);
            }
            dbsv_u8MntNetWorkLock = 0;
        }
    }
}
#endif

static  MBT_VOID MntMonitorPMT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    MBT_S32	iEsInfoLength;
    MET_PTI_PID_T stGlobleEcmPID = dbsm_InvalidPID;
    MET_PTI_PID_T stLocalEcmPID = dbsm_InvalidPID;
    UI_PRG stPrgInfo;
    PRG_PIDINFO *pstPrgPIDInfo;
    MBT_U16	stProgramNo;
    MBT_U16	stTempData16;
    MBT_U16	stPrivatePID;
    MBT_U8 u8Version;
    MET_PTI_PID_T stAudioPid = dbsm_InvalidPID;
    MET_PTI_PID_T stPcrPid = dbsm_InvalidPID;
    MBT_U16 u16StreamType = 0;
    MBT_U16 u16AudioPIDNum = 0;
    PRG_PIDINFO stVideoPids = {dbsm_InvalidPID,dbsm_InvalidPID,0,{0,0,0}};
    PRG_PIDINFO stAudioPids[MAX_PRG_PID_NUM-2];
    static MBT_U32 uPmtCRC = 0xffffffff;
    MBT_U32 uTempPmtCRC ;
    MBT_BOOL bEncrepted = MM_FALSE;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;

    stProgramNo     = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    DBS_DEBUG(("MntMonitorPMT Get stProgramNo = %x dbsv_stMntCurProg.u16ServiceID = %x\n",stProgramNo,dbsv_stMntCurProg.u16ServiceID));
    if(dbsv_stMntCurProg.u16ServiceID != stProgramNo||dbsv_stMntCurProg.uPmtPid != stCurPid||m_DbsSearchEpg != dbsv_DbsWorkState)    
    {
        DBS_DEBUG(("MntMonitorPMT m_DbsSearchEpg != dbsv_DbsWorkState return\n"));
        return;
    }
    /*不是当前节目不能停*/
    SRSTF_FilterStopOrNot( stFilterHandle,pu8MsgData[7]+1,MntMonitorPMT);
    DBS_DEBUG(("MntMonitorPMT stoped PMT\n"));
    uTempPmtCRC = ((pu8MsgData[iMsgLen - 4]  << 24) |(pu8MsgData[iMsgLen-3]  << 16)|(pu8MsgData[iMsgLen-2]  << 8)|pu8MsgData[iMsgLen-1] );
    u8Version = (pu8MsgData [ 5 ]&0x3e)>>1;
    if(dbsv_u8MntPmtVersion == u8Version&&uPmtCRC == uTempPmtCRC)
    {
        return;
    }
    dbsv_u8MntPmtVersion = u8Version;
    uPmtCRC = uTempPmtCRC;
    memset(stAudioPids,0,sizeof(stAudioPids));
    stPcrPid = ((( pu8MsgData [ 8 ] & 0x1F)<<8)|pu8MsgData [ 9 ]);/*ahfu*/
    iMsgLen -=  4;
    
    iInfoLength = (((pu8MsgData [ 10 ] & 0xF)<<8)|pu8MsgData [ 11 ]);
    pu8MsgData	+=  12;
    pu8End = pu8MsgData + iInfoLength;
    while ( pu8MsgData < pu8End )
    {
        if(dbsm_CaDesc_Tag == pu8MsgData [0])
        {
            bEncrepted = MM_TRUE;
            DBS_DEBUG(("Prg %x Encrypt\n",stProgramNo));
            if(dbsm_InvalidPID == stGlobleEcmPID)
            {
                MntCaDescript (pu8MsgData ,&stGlobleEcmPID);
            }
        }
        
        pu8MsgData += pu8MsgData [ 1 ] + 2;
    }
    
    u16AudioPIDNum = 0;
    pu8End = pu8MsgData + iMsgLen - iInfoLength - 13;
    while (pu8MsgData < pu8End)
    {
        stPrivatePID = dbsm_InvalidPID;
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
                if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                    u16AudioPIDNum++;
                }
                break;
                
            case E_SI_STREAM_MPEG4_AUD:            /* 0x04 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_MP4A;
                if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                    u16AudioPIDNum++;
                }
                break;

            case E_SI_STREAM_MPEG2_AUD:            /* 0x04 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_MP2A;
                if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                    u16AudioPIDNum++;
                }
                break;
                
            case E_SI_STREAM_AAC_AUD:            /* 0x0f*/
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_AAC;
                if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                    u16AudioPIDNum++;
                }
                break;
            case E_SI_STREAM_AC3_AUD:            /* 0x81 */
                stAudioPid = stTempData16;
                u16StreamType = MM_STREAMTYPE_AC3;
                if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                {
                    pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                    u16AudioPIDNum++;
                }
                break;
                
            case 0x0B:            /* 0x05 */
            case E_SI_STREAM_PRIVATE_DATA:            /* 0x05 */
                stPrivatePID = stTempData16;
                break;
                
            default:
                break;
        }

        pu8MsgData += 5 ;
        pu8End1 = pu8MsgData + iEsInfoLength;
        stLocalEcmPID = stGlobleEcmPID;
        while (pu8MsgData < pu8End1)
        {
            switch(pu8MsgData[0])
            {
                case dbsm_CaDesc_Tag:
                    bEncrepted = MM_TRUE;
                    if(dbsm_InvalidPID == stLocalEcmPID)
                    {
                        MntCaDescript (pu8MsgData ,&stLocalEcmPID);
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
                    if(dbsm_InvalidPID != stPrivatePID)
                    {
                        stAudioPid = stPrivatePID;
                        u16StreamType = MM_STREAMTYPE_AC3;
                        if(u16AudioPIDNum < MAX_PRG_PID_NUM-2)
                        {
                            pstPrgPIDInfo = &stAudioPids[u16AudioPIDNum];
                            u16AudioPIDNum++;
                        }
                        stPrivatePID = dbsm_InvalidPID;
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
            DBS_DEBUG(("Pid = %x EcmPid = %x u16StreamType = %d\n",pstPrgPIDInfo->Pid,pstPrgPIDInfo->EcmPid,u16StreamType));
        }
        
        iInfoLength -= ( iEsInfoLength + 5 );
    }
    
    if(DVB_INVALID_LINK != DBSF_DataPosPrgTransXServiceID(&stPrgInfo,dbsv_stCurTransInfo.u32TransInfo,stProgramNo))
    {
        MBT_U32 iIndex = 0;
        MBT_BOOL bModify = MM_FALSE; 

        if(dbsm_InvalidPID != stVideoPids.Pid)
        {
            if(stPrgInfo.stService.Pids[iIndex].Pid != stVideoPids.Pid||stPrgInfo.stService.Pids[iIndex].EcmPid != stVideoPids.EcmPid||stPrgInfo.stService.Pids[iIndex].Type != stVideoPids.Type)
            {
                stPrgInfo.stService.Pids[iIndex] = stVideoPids;
                bModify = MM_TRUE;
                DBS_DEBUG(("video info changed\n"));
            }
            iIndex++;
        }
        
        if(stPcrPid != dbsm_InvalidPID)
        {
            if(stPrgInfo.stService.Pids[iIndex].Pid != stPcrPid)
            {
                stPrgInfo.stService.Pids[iIndex].Pid = stPcrPid;
                stPrgInfo.stService.Pids[iIndex].Type = MM_STREAMTYPE_PCR;
                bModify = MM_TRUE;
                DBS_DEBUG(("pcr info changed\n"));
            }
            iIndex++;
        }
        
        if(u16AudioPIDNum > 0)
        {
            MBT_U32 i,k;
            for(k = iIndex;k < stPrgInfo.stService.NumPids;k++)
            {
                for(i = 0;i < u16AudioPIDNum;i++)
                {
                    if(stPrgInfo.stService.Pids[k].Pid == stAudioPids[i].Pid&&stPrgInfo.stService.Pids[k].EcmPid == stAudioPids[i].EcmPid&&stPrgInfo.stService.Pids[k].Type == stAudioPids[i].Type)
                    {
                        break;
                    }
                }
                
                if(i >= u16AudioPIDNum)
                {
                    bModify = MM_TRUE;
                    break;
                }
            }

            if(MM_TRUE == bModify)
            {
                memcpy(&stPrgInfo.stService.Pids[iIndex],stAudioPids,u16AudioPIDNum*sizeof(PRG_PIDINFO));
                DBS_DEBUG(("Audio changed\n"));
            }
            
            iIndex += u16AudioPIDNum;
        }

        if(MM_TRUE == bModify)
        {
            if(MM_TRUE == bEncrepted)
            {
                stPrgInfo.stService.ucProgram_status |= FREECA_BIT_MASK;
            }
            stPrgInfo.stService.NumPids = iIndex;
            DBS_DEBUG(("Prginfo changed\n"));
            dbsf_ListPrgEdit(&stPrgInfo.stService);
            dbsf_FilePrgEdit(&stPrgInfo.stService);
            MntPrgPlay(&stPrgInfo.stService);
        }
    }
    else
    {
        //DBS_DEBUG(("[MntMonitorPMT] Can not read prg\n"));
    }
    //DBS_DEBUG(("Pmt Get PID = %x seviceid = %x stVideoPid = %x stAudioPid = %x \n",stCurPid,stProgramNo,stVideoPids.Pid,stAudioPid));
}





static MBT_VOID  MntMonitorCAT (MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)
{
    MET_PTI_PID_T u16EmmPID = dbsm_InvalidPID ;
    MBT_U8 u8Version;
    MBT_U8 *pu8End;
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    SRSTF_FilterStopOrNot(stFilterHandle,pu8MsgData[7]+1,MntMonitorCAT);
    u8Version = (pu8MsgData [ 5 ]&0x3e)>>1;
    if(pstMntCtr->u8CatVersion == u8Version)
    {
        return;
    }
    pstMntCtr->u8CatVersion = u8Version;
    //DBS_DEBUG(("MntMonitorCAT\n"));
    iMsgLen -=  12; 
    pu8MsgData += 8 ;
    pu8End = pu8MsgData + iMsgLen;
    while (pu8MsgData < pu8End)
    {
        if(dbsm_CaDesc_Tag == pu8MsgData[0])
        {
            MntCaDescript ( pu8MsgData ,&u16EmmPID);
        }
        pu8MsgData += pu8MsgData [ 1 ] + 2;
    }

    dbsf_CTRCASStartEmm(u16EmmPID);
    //DBS_DEBUG(("MntMonitorCAT OK\n"));
}


/////////////////////////////////////////////////////////////////////////////////////
/***********************************************************************************************************************
 * CODE		 	:	MntMonitorSDT
 * TYPE		 	:	subroutine
 *
 * PURPOSE		:
 *		Parses the SDT table, once if the particular SDT section is collected
 *		completely.
 *
 *	THEORY OF OPERATION:
 ***********************************************************************************************************************/
static MBT_VOID MntMonitorSDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    MBT_U16 sProgId;
    MBT_U16 stTransportStreamId;
    MBT_U16 u16OrigNetId;
    MBT_U8 table_id; 
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    MBT_U8 u8Version;
    PRO_NODE stPrgInfo;
    DBST_MntCTR *pstMntCtr;
    
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        SRSTF_StopSpecifyFilter(SDT_FILTER0,MntMonitorSDT);
        SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
        return;
    }
    table_id = pu8MsgData[ 0 ];
    u8Version = (pu8MsgData [ 5 ]&0x3e)>>1;
    stTransportStreamId = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    u16OrigNetId = ((pu8MsgData [ 8 ]<<8)|pu8MsgData [9 ]);
    pstMntCtr = &dbsv_stMntCtr;
    //MLMF_Print("MntMonitorSDT u8Version %x,dbsv_u8MntSdtVersion %x\n",u8Version,pstMntCtr->u8SdtActueVersion);
    if(SDT_ACTUAL_TS_TABLE_ID == table_id)
    {
        //MLMF_Print("MntMonitorSDT SDT_ACTUAL ");
        pstMntCtr->u8SdtActueGoted += 1;
        pstMntCtr->u8SdtActueTotal = pu8MsgData [7] + 1;
        if(pstMntCtr->u8SdtActueVersion == u8Version)
        {
            if(pstMntCtr->u8SdtActueGoted >= pstMntCtr->u8SdtActueTotal)
            {
                SRSTF_StopSpecifyFilter(SDT_FILTER0,MntMonitorSDT);
                //MLMF_Print("same version return\n");
                MntCheckStatus();
            }
            return;
        }
        //MLMF_Print("\n");
        if(pstMntCtr->u8SdtNewActueVersion != u8Version)
        {
            pstMntCtr->u8SdtNewActueVersion = u8Version;
            pstMntCtr->u8SdtActueGoted = 1;
            /*因为有可能添加节目,所以sdt变化后，要强收全表*/
            if(0 == pstMntCtr->u8InUpdateProcess)
            {
                DBS_DEBUG(("MntMonitorSDT actrue version change u8InUpdateProcess = 1\n"));
                pstMntCtr->u8InUpdateProcess = 1;
                dbsf_GenreListFreeList();
                dbsf_MntStartHeatBeat();
            }
        }
    }
    else
    {
#if (1 == M_MNTSdtOther)
        //MLMF_Print("MntMonitorSDT SDT_OTHER tsid %x got %d total %d ",stTransportStreamId,pstMntCtr->u8SdtOtherGoted,pstMntCtr->u8SdtOtherTotal);
        pstMntCtr->u8SdtOtherGoted += 1;
        if(MM_TRUE == MntCheckSdtOtherVer(stTransportStreamId,u8Version))
        {
            //MLMF_Print("same version return\n");
            if(pstMntCtr->u8SdtOtherGoted >= pstMntCtr->u8SdtOtherTotal)
            {
                if(0xff != pstMntCtr->u8SdtOtherTimer)
                {
                    TMF_CleanDbsTimer(pstMntCtr->u8SdtOtherTimer);    
                    pstMntCtr->u8SdtOtherTimer= 0xff;
                }
                SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
                MntCheckStatus();
            }
            return;
        }
        
        /*因为有可能添加节目,所以sdt变化后，要强收全表*/
        if(0 == pstMntCtr->u8InUpdateProcess)
        {
            //MLMF_Print("MntMonitorSDT other version change\n");
            pstMntCtr->u8InUpdateProcess = 1;
            dbsf_MntStartHeatBeat();
        }

        if(0xff != pstMntCtr->u8SdtOtherTimer)
        {
            TMF_CleanDbsTimer(pstMntCtr->u8SdtOtherTimer);    
            pstMntCtr->u8SdtOtherTimer= 0xff;
        }
        /*因不不知道有多少other，所以只能采用4S秒收不到就算收完的方式*/
        DBS_DEBUG(("MntMonitorSDT tsid %x tableid %x\n",stTransportStreamId,pu8MsgData[ 0 ]));
        pstMntCtr->u8SdtOtherTimer = TMF_SetDbsTimer(MntSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
        //MLMF_Print("\n");
#endif        
    }

    pu8End = pu8MsgData + iMsgLen - 4;
    dbsf_ListSrchMntInitPrgInfo(&stPrgInfo);
    pu8MsgData +=  11;
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
        //MLMF_Print("MntMonitorSDT sProgId = %x iInfoLength = %d\n",sProgId,iInfoLength);
        if(0x10&pu8MsgData[3])
        {
            stPrgInfo.stService.ucProgram_status |= FREECA_BIT_MASK;
        }
        else
        {
            stPrgInfo.stService.ucProgram_status &= ~FREECA_BIT_MASK;
        }
        stPrgInfo.stService.cProgramType = 0xff;
        stPrgInfo.stService.cServiceName[0] = 0;
        stPrgInfo.stService.u16BouquetID[0] = 0;
        stPrgInfo.stService.u16ServiceID = sProgId;
        pu8MsgData +=  5;
        pu8End1 = pu8MsgData + iInfoLength;
        while ( pu8MsgData < pu8End1 )
        {
            pu8MsgData += MntSdtDescript(pu8MsgData,&stPrgInfo,table_id);
        }

        dbsf_ListMntWritePrgInfo(&stPrgInfo,table_id);
    }
    
    if(SDT_ACTUAL_TS_TABLE_ID == table_id)
    {
        if(pstMntCtr->u8SdtActueGoted >= pstMntCtr->u8SdtActueTotal)
        {
            SRSTF_StopSpecifyFilter(SDT_FILTER0,MntMonitorSDT);
            MntCheckStatus();
        }
    }
    else
    {
        if(pstMntCtr->u8SdtOtherGoted >= pstMntCtr->u8SdtOtherTotal)
        {
            SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
            MntCheckStatus();
        }
    }
}

static MBT_VOID MntParseBAT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData ,MBT_S32 iMsgLen)
{
    MBT_S32 iTransportStreamLoopLength;
    MBT_U16 iTransportStreamID;
    MBT_U8	*pu8End;
    MBT_U8	*pu8End1;
    MBT_U8  u8Version; 
    MBT_U8  u8TableID; 
    MBT_U16	u16BouquetID;
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;

    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {
        SRSTF_StopSpecifyFilter(BAT_FILTER,MntParseBAT);
        return;
    }
    
    if(0xff != pstMntCtr->u8BatTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8BatTimer);    
        pstMntCtr->u8BatTimer= 0xff;
        DBS_DEBUG(("MntParseBAT Clr bat timer\n"));
    }
    pstMntCtr->u8BatTimer = TMF_SetDbsTimer(MntBatTimerCall,MM_NULL,BAT_TIME_OUT*1000,m_noRepeat);
    DBS_DEBUG(("MntParseBAT set bat timer pstMntCtr->u8BatTimer = %x\n",pstMntCtr->u8BatTimer));
    u8Version = ((pu8MsgData [ 5 ]&0x3e)>>1); 
    u16BouquetID  = ((pu8MsgData [ 3 ]<<8)|pu8MsgData [ 4 ]);
    if(MM_TRUE == MntCheckBatVer(u16BouquetID,pu8MsgData[6],u8Version))
    {
        DBS_DEBUG(("MntParseBAT u16BouquetID = %x u8Version = %x sectionnum %d same version return\n",u16BouquetID,u8Version,pu8MsgData [6]));
        return;
    }
    DBS_DEBUG(("MntParseBAT u16BouquetID = %x u8Version = %x sectionnum %d New bat\n",u16BouquetID,u8Version,pu8MsgData [6]));
    //MLMF_Print("\n");
    u8TableID = pu8MsgData [ 0 ];
    dbsv_u16BootupChannelServiceID = dbsm_InvalidID;
    /*因为有可能添加节目,所以bat变化后，要强收全表*/
    if(0 == pstMntCtr->u8InUpdateProcess)
    {
        pstMntCtr->u8InUpdateProcess = 1;
        DBS_DEBUG(("MntParseBAT version changed u8InUpdateProcess = 1\n"));
        dbsf_GenreListFreeList();
        dbsf_MntStartHeatBeat();
    }
    
    // to parse the descriptor
    iTransportStreamLoopLength = ((pu8MsgData[8] & 0x0f) << 8) | pu8MsgData[9];
    pu8MsgData += 10;
    pu8End = pu8MsgData + iTransportStreamLoopLength;
    while ( pu8MsgData < pu8End )
    {         
        //DBS_DEBUG(("MntParseBAT 1 tag = %x\n",pu8MsgData[0]));
        pu8MsgData += MntBatDescript (dbsm_InvalidID,pu8MsgData,u8Version,u16BouquetID,u8TableID);//8_30
    }

    iTransportStreamLoopLength = ((pu8MsgData[0] & 0x0f) << 8) | pu8MsgData[1];
    pu8MsgData += 2;
    pu8End = pu8MsgData + iTransportStreamLoopLength;
    while ( pu8MsgData < pu8End)
    {
        iTransportStreamID 	= ( pu8MsgData [ 0 ] << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        // iOriNetWordID = ( pu8MsgData [ 0 ] << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        iTransportStreamLoopLength = ((pu8MsgData [ 0 ] & 0x0f) << 8 ) | pu8MsgData [ 1 ];
        pu8MsgData += 2;
        pu8End1 = pu8MsgData + iTransportStreamLoopLength;
        while ( pu8MsgData < pu8End1 )
        {
            //DBS_DEBUG(("MntParseBAT 2 tag = %x\n",pu8MsgData[0]));
            pu8MsgData += MntBatDescript (iTransportStreamID, pu8MsgData,u8Version,u16BouquetID,u8TableID);//8_30
        }
    }
    DBS_DEBUG(("MntParseBAT OK\n"));
}



/**************************************************************************************************************
 * CODE		   	:	MntMonitorNIT
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
static MBT_VOID MntMonitorNIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{
    MBT_S32	iInfoLength;
    MBT_S32 transport_descriptors_length ;
    MBT_U16 u16TSID;
    MBT_U16 uNetWorkid;
    MBT_U8 uTableID;
    MBT_U8 *pu8End;
    MBT_U8 *pu8End1;
    UNUSED_PARAM(iMsgLen);
    DBST_MntCTR *pstMntCtr;
    MBT_U8 u8Version;
    uTableID = pu8MsgData[0];
    if(NIT_ACTUAL_NETWORK_TABLE_ID != uTableID)
    {
        return;
    }
    
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {
        DBS_DEBUG(("MntMonitorNIT dbsv_DbsWorkState = %d\n",dbsv_DbsWorkState));
        SRSTF_StopSpecifyFilter(NIT_FILTER,MntMonitorNIT);
        return;
    }
    uNetWorkid = (((pu8MsgData [ 3 ] )<<8)|pu8MsgData [ 4 ]);
    dbsv_u16NetworkID = uNetWorkid;
    DBS_DEBUG(("MntMonitorNIT dbsv_u16NetworkID %x\n",dbsv_u16NetworkID));
#if NETWORK_LOCK
	char s_NetworkName[50] = {0};
	
	unsigned char *pucPrivateDescBuf;
	int network_descriptors_length;
	int privatedesclength=0;
	network_descriptors_length = (int)(pu8MsgData[8]&0x0f)<<8;
	network_descriptors_length |= (int)(pu8MsgData[9]);
	
	memset(s_NetworkName, 0, 50);
	
	pucPrivateDescBuf = &pu8MsgData[10];
	while(network_descriptors_length>0)
	{
		privatedesclength = pucPrivateDescBuf[1]+2;
		//if(AppLoadMonitor__ParsePrivateDesc(pucPrivateDescBuf,&privatedesclength))
		//{
		//	return true;
		//}
	
		if(pucPrivateDescBuf[0] == 0x40)
		{
			int nDescLen = 0;
			
			nDescLen = pucPrivateDescBuf[1];
	
			memcpy(s_NetworkName, &pucPrivateDescBuf[2], nDescLen);
	
			break;
		}
	
		network_descriptors_length-=privatedesclength;
		pucPrivateDescBuf+=privatedesclength;
	}
	
	DBS_DEBUG(("Network_ID %d, s_NetworkName = %s\n",uNetWorkid, s_NetworkName));

    MntCheckNetWork(uNetWorkid, s_NetworkName);
#endif

    
    pstMntCtr = &dbsv_stMntCtr;
    u8Version = (pu8MsgData[5] & 0x3e)>>1;
    /*
    if(1 == dbsv_u8MntTestTablechange)
    {
        u8Version = 0;
        dbsv_u16NetworkID = dbsm_GtplNetworkID;
    }
    else
    {
        u8Version = 1;
        dbsv_u16NetworkID = dbsm_KCBPLNetworkID;
    }
    */
    pstMntCtr->u8NitTotal = pu8MsgData[7]+1;
    DBS_DEBUG(("MntMonitorNIT lastSection = %d cursection = %d ",pu8MsgData[7],pu8MsgData[6]));
    pstMntCtr->u8NitGoted += 1;
    
    if(m_DbsSearchEpg == dbsv_DbsWorkState)
    {
        if(u8Version != dbsv_u8MntPrgVersion)
        {
#if(1 == TFCONFIG)  
#else
            if(MM_NULL != dbsf_pMntNotifyUICall)
            {
                //dbsf_pMntNotifyUICall(m_UpdatePrgList,&u8Version,1);
                //MLMF_Print("MntMonitorNIT m_UpdatePrgList\n");
                dbsv_u8MntPrgVersion = u8Version;
            }
#endif            
            if(0 == pstMntCtr->u8InUpdateProcess)
            {
                DBS_DEBUG(("MntMonitorNIT version changed u8Version %x dbsv_u8MntPrgVersion %x \n",u8Version,dbsv_u8MntPrgVersion));
                pstMntCtr->u8InUpdateProcess = 1;
                dbsf_GenreListFreeList();
                dbsf_MntStartHeatBeat();
            }
        }

        if(pstMntCtr->u8NitVersion == u8Version)
        {
            DBS_DEBUG(("Same version return\n"));
            if(pstMntCtr->u8NitGoted >= pstMntCtr->u8NitTotal)
            {
                SRSTF_StopSpecifyFilter(NIT_FILTER,MntMonitorNIT);
                MntCheckStatus();
            }
            return;
        }
        DBS_DEBUG(("\n"));
    }

    if(pstMntCtr->u8NitNewVersion != u8Version)
    {
        dbsf_TPListFreeNitCachList();
        dbsf_TPListFreeTransList();
        pstMntCtr->u8NitNewVersion = u8Version;
        pstMntCtr->u8NitGoted = 1;
    }
    
    dbsf_CTRCASParseNIT(pu8MsgData,iMsgLen);
    
    iInfoLength = (((pu8MsgData [ 8 ] & 0xF)<<8)|pu8MsgData [ 9 ]);
    pu8MsgData	+=    10;
    pu8End = pu8MsgData + iInfoLength;
    while ( pu8MsgData < pu8End )
    {
        pu8MsgData += MntNitDescript(pu8MsgData,uTableID,dbsm_InvalidID,uNetWorkid);
    }

    iInfoLength = (((pu8MsgData [ 0 ] & 0xF)<<8)|pu8MsgData [1 ]);
    pu8MsgData += 2 ;
    pu8End = pu8MsgData + iInfoLength;

    while ( pu8MsgData < pu8End )
    {
        u16TSID = ( pu8MsgData[0]<<8 ) | pu8MsgData[1] ;
        transport_descriptors_length = (((pu8MsgData [ 4 ] & 0xF)<<8)|pu8MsgData [5 ]) ;
        pu8MsgData += 6 ;
        pu8End1 = pu8MsgData + transport_descriptors_length;
        while ( pu8MsgData < pu8End1 )
        {
            //MLMF_Print("u16TSID = %x \n",u16TSID);
            pu8MsgData += MntNitDescript (pu8MsgData ,uTableID,u16TSID,uNetWorkid) ;
        }
    }
    
    if(pstMntCtr->u8NitGoted >= pstMntCtr->u8NitTotal)
    {
#if (1 == M_MNTSdtOther)
        MBT_S32 s32TransNum = dbsf_TPListGetTransNum();
        if(0 == s32TransNum)
        {
            s32TransNum = dbsm_MaxTransNum;
        }
        else if(s32TransNum > 1)
        {
            s32TransNum -= 1;
        }
        pstMntCtr->u8SdtOtherTotal = s32TransNum;  
#endif        
        SRSTF_StopSpecifyFilter(NIT_FILTER,MntMonitorNIT);
        MntCheckStatus();
    }
}



static MBT_VOID MntMonitorTDT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen)
{	
    TIMER_M db_Timer;
    //MLMF_Print("MntMonitorTDT Get TDT\n");
    SRSTF_StopSpecifyFilter(TDT_FILTER,MntMonitorTDT);
    DBSF_TdtTime2SystemTime(pu8MsgData+3,&db_Timer);
    Sem_TdtTime_P();
    memcpy(dbsv_u8MntTdtTime,pu8MsgData+3,5);
    Sem_TdtTime_V();
    TMF_SetSysTime(&db_Timer);
    dbsv_u8MntGetTDTTime = 1;
}


static MBT_VOID MntPmtTimerCall(MBT_U32 u32Para[])
{
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    SRSTF_StopSpecifyFilter(PMT_FILTER,(ParseCallBack)u32Para[2]);
}

static MBT_VOID MntNitTimerCall(MBT_U32 u32Para[])
{
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    dbsf_MntStartTable(NIT_PID,NIT_ACTUAL_NETWORK_TABLE_ID,-1);
    //MLMF_Print("MntNitTimerCall timeout restart\n");
}
static MBT_VOID MntBatTimerCall(MBT_U32 u32Para[])
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8BatTimer = 0xff;
    DBS_DEBUG(("MntBatTimerCall MntCheckStatus\n"));
    SRSTF_StopSpecifyFilter(BAT_FILTER,MntParseBAT);
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    pstMntCtr->u8BatGoted = 1;
    MntCheckStatus();
}

static MBT_VOID MntSdtTimerCall(MBT_U32 u32Para[])
{
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    //MLMF_Print("MntSdtTimerCall timeout\n");
    dbsf_MntStartTable(SDT_PID,SDT_ACTUAL_TS_TABLE_ID, -1);
}

#if (1 == M_MNTSdtOther)
static MBT_VOID MntSdtOtherTimerCall(MBT_U32 u32Para[])
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8SdtOtherTimer = 0xff;
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    if(0 == pstMntCtr->u8SdtOtherTryTime)
    {
        MBT_U8     u8Data[FILTER_DEPTH_SIZE];
        MBT_U8     u8Mask[FILTER_DEPTH_SIZE];
        //MLMF_Print("Std other timeout u8SdtOtherVerNum %d restart\n",pstMntCtr->u8SdtOtherVerNum);
        memset(u8Data,0,FILTER_DEPTH_SIZE);
        memset(u8Mask,0,FILTER_DEPTH_SIZE);
        u8Data[0] = SDT_OTHER_TS_TABLE_ID;
        u8Mask[0] = 0xff;
        SRSTF_SetSpecifyFilter(SDT_FILTER1,
                                MntMonitorSDT, 
                                MM_NULL, 
                                u8Data, 
                                u8Mask, 
                                1,
                                SDT_PID, 
                                1024*50,
                                0, 
                                IPANEL_STRAIGHT_RECEIVE_MODE,
                                MM_NULL);
        pstMntCtr->u8SdtOtherTryTime = 1;
        pstMntCtr->u8SdtOtherTimer = TMF_SetDbsTimer(MntSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
    }
    else
    {
        //MLMF_Print("Std other timeout u8SdtOtherVerNum %d\n",pstMntCtr->u8SdtOtherVerNum);
        SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
        pstMntCtr->u8SdtOtherGoted = pstMntCtr->u8SdtOtherTotal;
        MntCheckStatus();
    }
}
#endif

static MBT_VOID MntSetHeatBeatTimer(DBST_MntCTR *pstMntCtr)
{
    if(0xff != pstMntCtr->u8HeatBeatTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8HeatBeatTimer);
        pstMntCtr->u8HeatBeatTimer = 0xff;
    }

    if(0 != pstMntCtr->u8HeatBeatTime)
    {
        pstMntCtr->u8HeatBeatTimer = TMF_SetDbsTimer(MntHeatBeatTimerCall,MM_NULL,pstMntCtr->u8HeatBeatTime*1000,m_Repeat);
    }
}


MBT_VOID dbsf_MntStartTable(MET_PTI_PID_T stPid,MBT_U8 tableId,MBT_S32 iExternTableid)
{			                
    ParseCallBack ParseTable = MM_NULL;
    MBT_S32     iFilterHandle= NIT_FILTER;
    MBT_U8     u8FilterLen = 1;
    MBT_U8     u8TableMask = 0xff;
    MBT_U8     u8FilterMode = IPANEL_STRAIGHT_RECEIVE_MODE;
    MBT_U8     u8Data[FILTER_DEPTH_SIZE];
    MBT_U8     u8Mask[FILTER_DEPTH_SIZE];
    MBT_U32   u32ChannelBuffer = 4096;
    MBT_U8 u32WaitSeconds = 0;
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    Timer_TriggerNotifyCall pMntTimerCall = MM_NULL;

    switch(tableId)
    {
        case NIT_ACTUAL_NETWORK_TABLE_ID:       
            iFilterHandle = NIT_FILTER;
            ParseTable = MntMonitorNIT;
            pstMntCtr->u8NitGoted = 0;
            pstMntCtr->u8NitTotal = 10;
            pMntTimerCall = MntNitTimerCall;
            u32WaitSeconds = BEARTRATE*2/3;
            //MLMF_Print("dbsf_MntStartTable start NIT\n");
            break;
        case TDT_TABLE_ID:
        case TOT_TABLE_ID:
            iFilterHandle =  TDT_FILTER;
            ParseTable = MntMonitorTDT;
            u32ChannelBuffer = 1024;
            //MLMF_Print("dbsf_MntStartTable start TDT&TOT\n");
            break;
        case CAT_TABLE_ID:
            iFilterHandle =  CAT_FILTER;
            ParseTable = MntMonitorCAT;
            break;
        case PAT_TABLE_ID:
            iFilterHandle =  PAT_FILTER;
            ParseTable = MntMonitorPAT;                
            u32ChannelBuffer = 1024;
            pstMntCtr->u8PatGoted = 0;
            //MLMF_Print("dbsf_MntStartTable start PAT\n");
            break;
        case SDT_ACTUAL_TS_TABLE_ID:
            iFilterHandle =  SDT_FILTER0;
            ParseTable = MntMonitorSDT;                
            u32ChannelBuffer = 4096;
            pstMntCtr->u8SdtActueGoted = 0;
            pstMntCtr->u8SdtActueTotal = 1;
            pMntTimerCall = MntSdtTimerCall;
            u32WaitSeconds = BEARTRATE*2/3;
            break;
        case SDT_OTHER_TS_TABLE_ID:
#if (1 == M_MNTSdtOther)
            iFilterHandle =  SDT_FILTER1;
            ParseTable = MntMonitorSDT;                
            u32ChannelBuffer = 1024*dbsm_MaxTransNum;
            pstMntCtr->u8SdtOtherGoted = 0;
            
            u32WaitSeconds = dbsf_TPListGetTransNum();
            if(0 == u32WaitSeconds)
            {
                u32WaitSeconds = dbsm_MaxTransNum;
            }
            else if(u32WaitSeconds > 1)
            {
                u32WaitSeconds -= 1;
            }
            pstMntCtr->u8SdtOtherTotal = u32WaitSeconds;     
            pstMntCtr->u8SdtOtherTryTime = 0;
            u32WaitSeconds = 0;
            
            if(0xff != pstMntCtr->u8SdtOtherTimer)
            {
                TMF_CleanDbsTimer(pstMntCtr->u8SdtOtherTimer);    
                pstMntCtr->u8SdtOtherTimer= 0xff;
            }
            pstMntCtr->u8SdtOtherTimer = TMF_SetDbsTimer(MntSdtOtherTimerCall,MM_NULL,SDT_TIME_OUT*1000,m_noRepeat);
#else
            return;
#endif            
            break;
        case BAT_TABLE_ID:
            iFilterHandle =  BAT_FILTER;
            ParseTable = MntParseBAT;                
            u32ChannelBuffer = 4096*3;
            pstMntCtr->u8BatGoted = 0;
            u8FilterMode = IPANEL_NO_VERSION_RECEIVE_MODE;
            u32WaitSeconds = 0;
            if(0xff != pstMntCtr->u8BatTimer)
            {
                TMF_CleanDbsTimer(pstMntCtr->u8BatTimer);    
                pstMntCtr->u8BatTimer= 0xff;
                DBS_DEBUG(("dbsf_MntStartTable lr bat timer\n"));
            }
            pstMntCtr->u8BatTimer = TMF_SetDbsTimer(MntBatTimerCall,MM_NULL,BAT_TIME_OUT*1000,m_noRepeat);
            DBS_DEBUG(("dbsf_MntStartTable set bat timer pstMntCtr->u8BatTimer = %x\n",pstMntCtr->u8BatTimer));
            break;
        default:
            break;
    }

    memset(u8Data,0,FILTER_DEPTH_SIZE);
    memset(u8Mask,0,FILTER_DEPTH_SIZE);
    u8Data[0] = tableId;
    u8Mask[0] = u8TableMask;

    if(-1 != iExternTableid)
    {
        u8Data[1] = ((iExternTableid>>8)&0x000000ff);
        u8Mask[1] = 0xff;
        u8Data[2] = (iExternTableid&0x000000ff);
        u8Mask[2] = 0xff;
        u8FilterLen += 2;
    }


    SRSTF_SetSpecifyFilter(iFilterHandle,
                                                ParseTable, 
                                                pMntTimerCall, 
                                                u8Data, 
                                                u8Mask, 
                                                u8FilterLen, 
                                                stPid, 
                                                u32ChannelBuffer, 
                                                u32WaitSeconds,
                                                u8FilterMode,
                                                MM_NULL);
}


MBT_VOID dbsf_MntStartPmt(MBT_VOID)
{
    MBT_U8 pstData[FILTER_DEPTH_SIZE];
    MBT_U8 pstMask[FILTER_DEPTH_SIZE];
    MBT_U16 u16PmtPID;

    if(dbsm_InvalidPID == dbsv_stMntCurProg.uPmtPid)
    {
        return;
    }
    
    memset(pstData,0,sizeof(pstData));
    memset(pstMask,0,sizeof(pstMask));
    pstData[0] = PMT_TABLE_ID;
    pstMask[0] = 0xff;
    pstData[1] = (MBT_U8)(dbsv_stMntCurProg.u16ServiceID >> 8);
    pstData[2] = (MBT_U8)(dbsv_stMntCurProg.u16ServiceID & 0xFF);
    pstMask[1] = 0xff;
    pstMask[2] = 0xff;         
    u16PmtPID = dbsv_stMntCurProg.uPmtPid;
    SRSTF_SetSpecifyFilter(PMT_FILTER,
                                                MntMonitorPMT, 
                                                MntPmtTimerCall, 
                                                pstData, 
                                                pstMask, 
                                                3, 
                                                u16PmtPID, 
                                                1024,
                                                PMT_TIME_OUT, 
                                                IPANEL_STRAIGHT_RECEIVE_MODE,
                                                MM_NULL);
}


MBT_VOID dbsf_MntInit(MBT_VOID)
{
#if NETWORK_LOCK
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
#endif    

    if(MM_INVALID_HANDLE == dbsv_semMntTDTTime)    
    {
        MLMF_Sem_Create(&dbsv_semMntTDTTime,1); 
    }
    
#if NETWORK_LOCK
    dbsv_u8MntNetWorkLock = pstBoxInfo->ucBit.ucNetWorkLock;
#endif 
}

MBT_VOID dbsf_MntTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_semMntTDTTime)    
    {
        MLMF_Sem_Destroy(dbsv_semMntTDTTime); 
        dbsv_semMntTDTTime = MM_INVALID_HANDLE;
    }
}


MBT_U8 dbsf_MntGetStremPrgVer(MBT_VOID)
{
    //MLMF_Print("dbsf_MntGetStremPrgVer dbsv_u8MntPrgVersion = %x\n",dbsv_u8MntPrgVersion);
    return dbsv_u8MntPrgVersion;
}

MBT_U8 dbsf_MntGetSyncPrgVer(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    if(0xff != pstMntCtr->u8NitVersion)
    {
        dbsv_u8MntPrgVersion = pstMntCtr->u8NitVersion;
    }
    //MLMF_Print("dbsf_MntGetSyncPrgVer dbsv_u8MntPrgVersion = %x\n",dbsv_u8MntPrgVersion);
    return dbsv_u8MntPrgVersion;
}

MBT_VOID dbsf_MntSetStremPrgVer(MBT_U8 u8PrgVer)
{
    dbsv_u8MntPrgVersion = u8PrgVer;
    //MLMF_Print("dbsf_MntSetStremPrgVer dbsv_u8MntPrgVersion = %x\n",dbsv_u8MntPrgVersion);
}

MBT_VOID dbsf_MntInitStreamPrgVer(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    dbsv_u8MntPrgVersion = pstBoxInfo->ucProgramVer;
    //MLMF_Print("dbsf_MntInitStreamPrgVer dbsv_u8MntPrgVersion = %x\n",dbsv_u8MntPrgVersion);
}


MBT_VOID dbsf_MntClnPmtVer(MBT_VOID)
{
    dbsv_u8MntPmtVersion = 0xff;
}


MBT_VOID dbsf_MntClnCatVer(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8CatVersion = 0xff;
}

MBT_VOID dbsf_MntReset(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8PatGoted = 0;
    pstMntCtr->u8NitGoted = 0;
    pstMntCtr->u8SdtActueGoted = 0;
    pstMntCtr->u8SdtOtherGoted = 0;
    pstMntCtr->u8BatGoted = 0;    
    pstMntCtr->u8SdtOtherTryTime = 0;
    if(0xff != pstMntCtr->u8SdtOtherTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8SdtOtherTimer);    
        pstMntCtr->u8SdtOtherTimer= 0xff;
    }

    
    if(0xff != pstMntCtr->u8BatTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8BatTimer);    
        pstMntCtr->u8BatTimer= 0xff;
        DBS_DEBUG(("dbsf_MntReset clr bat timer\n"));
    }

    if(0xff != pstMntCtr->u8HeatBeatTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8HeatBeatTimer);
        pstMntCtr->u8HeatBeatTimer = 0xff;
    }
    
    //SRSTF_CancelAllSectionReq();
    
    /*
    SRSTF_StopSpecifyFilter(NIT_FILTER,MntMonitorNIT);
    SRSTF_StopSpecifyFilter(PMT_FILTER,MntMonitorPMT);
    SRSTF_StopSpecifyFilter(TDT_FILTER,MntMonitorTDT);
    SRSTF_StopSpecifyFilter(CAT_FILTER,MntMonitorCAT);
    SRSTF_StopSpecifyFilter(PAT_FILTER,MntMonitorPAT);
    SRSTF_StopSpecifyFilter(SDT_FILTER0,MntMonitorSDT);
    SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
    SRSTF_StopSpecifyFilter(BAT_FILTER,MntParseBAT);
    dbsf_StopEpgSearch(dbsf_ParseEIT);
    */
}

MBT_VOID dbsf_MntClnSdtVer(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8SdtActueVersion = 0xff;
    pstMntCtr->u8SdtNewActueVersion = 0xff;
}

MBT_VOID dbsf_MntClnPatVer(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8PatVersion = 0xff;
    pstMntCtr->u8PatNewVersion = 0xff;
}

MBT_VOID dbsf_MntClnNitVer(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8NitVersion = 0xff;
    pstMntCtr->u8NitNewVersion = 0xff;
}


MBT_VOID dbsf_MntClnSdtOtherVer(MBT_VOID)
{
    MBT_U32 u32Size = dbsm_MaxTransNum*sizeof(DBST_MntVerCTR);
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8SdtOtherVerNum = 0;
    memset(pstMntCtr->stSdtNewOtherVer,0xff,u32Size);
    memset(pstMntCtr->stSdtOtherVer,0xff,u32Size);
}

MBT_VOID dbsf_MntClnBatVer(MBT_VOID)
{
    MBT_U32 u32Size = dbsm_MaxBatNum*sizeof(DBST_MntVerCTR);
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    pstMntCtr->u8BatVerNum = 0;
    memset(pstMntCtr->stBatNewVer,0xff,u32Size);
    memset(pstMntCtr->stBatVer,0xff,u32Size);
}


MBT_VOID dbsf_MntSetCurPlayPrg(MBT_U16 u16ServiceID,MBT_U16 u16PmtPID)
{
    dbsv_stMntCurProg.u16ServiceID = u16ServiceID;
    dbsv_stMntCurProg.uPmtPid = u16PmtPID;
}

MBT_VOID dbsf_MntGetTdtTime(MBT_U8 *puTdtTime)
{
    Sem_TdtTime_P();
    memcpy(puTdtTime,dbsv_u8MntTdtTime,5);
    Sem_TdtTime_V();
}


MBT_VOID dbsf_MntNimNotify(MBT_U8 u8NimState)
{
    //MLMF_Print("dbsf_MntNimNotify u8NimState = %d\n",u8NimState);
    if(dbsf_pMntNotifyUICall)
    {
        MBT_U8 u8State = m_NimLock;
        
        if(MM_TUNER_UNLOCKED == u8NimState)
        {   
            if(0 == dbsv_u8MntNimDisConnectted)
            {
                dbsf_MntReset();
                dbsv_u8MntNimDisConnectted = 1;
                //MLMF_Print("dbsf_MntNimNotify m_NimUnLock dbsf_MntReset\n");
            }
            u8State = m_NimUnLock;
        }
        else
        {
            if(1 == dbsv_u8MntNimDisConnectted)
            {
                //MLMF_Print("dbsf_MntNimNotify m_NimLock dbsf_MntStartHeatBeat\n");
                dbsf_MntStartHeatBeat();
                dbsv_u8MntNimDisConnectted = 0;
            }
        }
        dbsf_pMntNotifyUICall( u8State,(MBT_VOID *)(&dbsv_stCurTransInfo),sizeof(dbsv_stCurTransInfo));
    }
}

MBT_VOID dbsf_MntGetVideoNotify(MBT_VOID)
{
    //MLMF_Print("dbsf_MntNimNotify u8NimState = %d\n",u8NimState);
    if(dbsf_pMntNotifyUICall)
    {
        dbsf_pMntNotifyUICall(m_GetFirstFrame,MM_NULL,0);
    }
}


MBT_VOID dbsf_MntStartHeatBeat(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }

    if(1 == pstMntCtr->u8InUpdateProcess)
    {
        //MLMF_Print("dbsf_MntStartHeatBeat start cln version\n");
        dbsf_MntClnPmtVer();
        dbsf_MntClnCatVer();
        dbsf_MntClnSdtVer();
        dbsf_MntClnPatVer();
        dbsf_MntClnNitVer();
        dbsf_MntClnSdtOtherVer();
        dbsf_MntClnBatVer();
        //MLMF_Print("dbsf_MntStartHeatBeat cln version OK\n");
    }
    
    MntStartHeatBeatTables();
    
    MntSetHeatBeatTimer(pstMntCtr);
    //MLMF_Print("dbsf_MntStartHeatBeat MntSetHeatBeatTimer OK\n");
}

MBT_VOID DBSF_MntStartHeatBeat(MBT_U16 u16WaitSec,MBT_BOOL bStartNow,MBT_VOID(* dbsf_pNotifyCallBack)(MBT_S32 iCmd, MBT_VOID * pMsgData, MBT_S32 iMsgDatLen))
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    if(m_DbsSearchEpg != dbsv_DbsWorkState)
    {       
        return;
    }
    dbsf_pMntNotifyUICall = dbsf_pNotifyCallBack;
    pstMntCtr->u8HeatBeatTime = u16WaitSec;
    if(MM_TRUE == bStartNow)
    {
        MntSetHeatBeatTimer(pstMntCtr);
    }
}

MBT_VOID DBSF_MntStopHeatBeat(MBT_VOID)
{
    DBST_MntCTR *pstMntCtr = &dbsv_stMntCtr;
    if(0xff != pstMntCtr->u8HeatBeatTimer)
    {
        TMF_CleanDbsTimer(pstMntCtr->u8HeatBeatTimer);
        pstMntCtr->u8HeatBeatTimer = 0xff;
    }
    pstMntCtr->u8HeatBeatTime = 0;
    
    SRSTF_StopSpecifyFilter(NIT_FILTER,MntMonitorNIT);
    SRSTF_StopSpecifyFilter(PMT_FILTER,MntMonitorPMT);
    SRSTF_StopSpecifyFilter(TDT_FILTER,MntMonitorTDT);
    SRSTF_StopSpecifyFilter(CAT_FILTER,MntMonitorCAT);
    SRSTF_StopSpecifyFilter(PAT_FILTER,MntMonitorPAT);
    SRSTF_StopSpecifyFilter(SDT_FILTER0,MntMonitorSDT);
    SRSTF_StopSpecifyFilter(SDT_FILTER1,MntMonitorSDT);
    SRSTF_StopSpecifyFilter(BAT_FILTER,MntParseBAT);
    dbsf_StopEpgSearch(dbsf_ParseEIT);
}

MBT_BOOL DBSF_MntIsTSTimeGot(void)
{
    if(0 == dbsv_u8MntGetTDTTime)
    {
        return MM_FALSE;
    }
    return MM_TRUE;
}

MBT_VOID DBSF_MntGetTdtTime(MBT_U8 *puTdtTime)
{
    dbsf_MntGetTdtTime(puTdtTime);
}


MBT_VOID DBSF_MntTimeRunSecond(MBT_VOID)
{
    MBT_U8 u8DuringTime[3] = {0,0,1};
    MBT_U8 u8EndTime[5];
    Sem_TdtTime_P();
    dbsf_GetEndTime(dbsv_u8MntTdtTime,u8DuringTime,u8EndTime);
    memcpy(dbsv_u8MntTdtTime,u8EndTime,5);
    Sem_TdtTime_V();
}


