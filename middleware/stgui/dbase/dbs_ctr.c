 
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
#include "ui_api.h"

#define DEFAULT_MJD                             51544

#define DEFAULT_YEAR                            1970

#define SECONDS_PER_MIN         60L
#define SECONDS_PER_HOUR        3600L
#define SECONDS_PER_HALF_HOUR   1800L
#define SECONDS_PER_DAY         86400L
#define MINS_PER_HOUR           60
#define HOURS_PER_DAY           24

static MBT_U16 dbsv_u16SolarDays[28] =
{
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365, 396,
    0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366, 397
};

TRANS_INFO dbsv_stCurTransInfo = 
{
    .u32TransInfo = dbsm_InvalidTransInfo
};
/*
*用来记载dbs的状态，在修改这个量前
*必须保证接受一状态的善后已经完成
*/
MBT_U8 dbsv_DbsWorkState = m_DbsSearchEpg;


static MBT_BOOL (*dbsf_pCASCheckSystemID)(MBT_U16 u16SystemID)  = MM_NULL;
static MBT_VOID (*dbsf_pCASStartEcm)(DBS_st2CAPIDInfo *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID,DBS_stCAEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)  = MM_NULL;
static MBT_VOID (*dbsf_pCASStopEcm)(MBT_VOID)  = MM_NULL;
static MBT_VOID (*dbsf_pCASStartEmm)(MBT_U16 u16EmmPID)  = MM_NULL;
static MBT_VOID (*dbsf_pCASStopEmm)(MBT_VOID)  = MM_NULL;
static MBT_VOID (*dbsf_pCASParseNIT)(MBT_U8 *pu8Data ,MBT_S32 s32Len) = MM_NULL;
static MBT_VOID CTRStopCAS(MBT_VOID);


static MBT_U8 _CTR_Util_GetLeap(MBT_U16 u16year)
{
    if(u16year % 400 == 0)
    {
        return 1;
    }
    else if(u16year % 100 == 0)
    {
        return 0;
    }
    else if(u16year % 4 == 0)
    {
        return 1;
    }

    return 0;
}

static MBT_U16 CTR_GetDaysOfThisYear(MBT_U16 u16Year)
{
    return _CTR_Util_GetLeap(u16Year) ? (MBT_U16)366 : (MBT_U16)365;
}

static MBT_VOID CTRStopCAS(MBT_VOID)
{
    if(MM_NULL != dbsf_pCASStopEcm)
    {
        dbsf_pCASStopEcm();
    }
    if(MM_NULL != dbsf_pCASStopEmm)
    {
        dbsf_pCASStopEmm();
    }
}

MBT_VOID *dbsf_ForceMalloc(MBT_U32 uMenmSize)
{
    MBT_VOID *ptr = OSPMalloc(uMenmSize);
    if(MM_NULL == ptr)
    {
        dbsf_EpgFreeAllEvent();
        dbsf_NvdFreeAllEvent();
        ptr = OSPMalloc(uMenmSize);
    }
    
    MMF_SYS_Assert(MM_NULL != ptr);
    return ptr;
}

MBT_BOOL dbsf_ForceFree(MBT_VOID *ptr)
{
    return OSPFree(ptr);
}


MBT_VOID dbsf_SetDbsState(MBT_U8 u8DbsState)
{
    //MLMF_Print("dbsf_SetDbsState u8DbsState = %d\n",u8DbsState);
    switch(u8DbsState)
    {
        case m_DbsIdle:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                case m_DbsPlayPrg:
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEnd:
                case m_DbsReset:
                    break;
            }
            break;
        case m_DbsSearchNit:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                case m_DbsPlayPrg:
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            dbsf_NvdFreeRefPrgList();
            dbsf_EpgFreeAllEvent();
            dbsf_ListFreePrgList();
            break;
        case m_DbsSearchPrg:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsPlayNvod:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchNvod:
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsSearchEpg:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchNvod:
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsSearchNvod:
            dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
            dbsf_EpgFreeAllEvent();
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsSearchAdver:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsSearchDsmcc:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                case m_DbsSearchEpg:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeAllEvent();
                    break;
                case m_DbsReset:
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsReset:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_ListFreePrgList();
                    dbsf_NvdFreeRefPrgList();
                    break;
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_ListFreePrgList();
                    dbsf_NvdFreeRefPrgList();
                    break;
                case m_DbsSearchEpg:
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeRefPrgList();
                    dbsf_ListFreePrgList();
                    break;
                case m_DbsSearchAdver:
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_NvdFreeRefPrgList();
                    dbsf_ListFreePrgList();
                    break;
                case m_DbsSearchDsmcc:
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    dbsf_EpgFreeAllEvent();
                    dbsf_ListFreePrgList();
                    dbsf_NvdFreeRefPrgList();
                    break;
                case m_DbsSearchEnd:
                case m_DbsIdle:
                    break;
            }
            break;
        case m_DbsSearchEnd:
            switch(dbsv_DbsWorkState)
            {
                case m_DbsSearchNit:
                case m_DbsSearchPrg:
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEpg:
                case m_DbsPlayPrg:
                case m_DbsSearchNvod:
                case m_DbsPlayNvod:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchAdver:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchDsmcc:
                    dbsf_StopAV();
                    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
                    CTRStopCAS();
                    SRSTF_CancelAllSectionReq();
                    break;
                case m_DbsSearchEnd:
                case m_DbsReset:
                    break;
            }
            break;
    }
    dbsv_DbsWorkState = u8DbsState;
}





//extern void _MS_DbgHexDump(const char *name, const MBT_U8 *buf, MBT_U32 size);
static MBT_BOOL dbsf_IsHwSuit(MBT_U8 *pstData)
{
    MBT_U16 VersionTemp;
    MBT_U16 uiv_u16SoftwareVer;
    DVB_HWINFO stbHwInfo ;
    DVB_HWINFO StreamHwInfo ;
    MMF_GetStbHwInfo(&stbHwInfo);
    MMF_GetHightAppVer(&uiv_u16SoftwareVer);    
    memcpy(&StreamHwInfo,pstData,sizeof(StreamHwInfo));
    //_MS_DbgHexDump("desc",pstData,0x14);
    
    //DBS_DEBUG(("Lo u16EreaH = %x  u16EreaL = %x ucDDR = %x ucFlash = %x ucTuner = %x  ucCPU = %x ucAudio = %x ucTcp = %x ucFP = %x  uCAType = %x uReservedUpdateInfo = %x ucFactoryID = %x\n",stbHwInfo.u16EreaH,stbHwInfo.u16EreaL,stbHwInfo.ucDDR,stbHwInfo.ucFlash, stbHwInfo.ucTuner ,stbHwInfo.ucCPU,stbHwInfo.ucAudio,stbHwInfo.ucTcp,stbHwInfo.ucFP,stbHwInfo.uCAType,stbHwInfo.uReservedUpdateInfo,stbHwInfo.ucFactoryID));
   // DBS_DEBUG(("TS u16EreaH = %x  u16EreaL = %x ucDDR = %x ucFlash = %x ucTuner = %x  ucCPU = %x ucAudio = %x ucTcp = %x ucFP = %x  uCAType = %x uReservedUpdateInfo = %x ucFactoryID = %x\n",StreamHwInfo.u16EreaH,StreamHwInfo.u16EreaL,StreamHwInfo.ucDDR,StreamHwInfo.ucFlash, StreamHwInfo.ucTuner,StreamHwInfo.ucCPU,StreamHwInfo.ucAudio,StreamHwInfo.ucTcp,StreamHwInfo.ucFP,StreamHwInfo.uCAType,StreamHwInfo.uReservedUpdateInfo,StreamHwInfo.ucFactoryID));

    if(stbHwInfo.u16EreaH == StreamHwInfo.u16EreaH
        &&stbHwInfo.u16EreaL == StreamHwInfo.u16EreaL
        &&stbHwInfo.ucDDR == StreamHwInfo.ucDDR
        &&stbHwInfo.ucFlash == StreamHwInfo.ucFlash
        &&stbHwInfo.ucTuner == StreamHwInfo.ucTuner
        &&stbHwInfo.ucCPU == StreamHwInfo.ucCPU
        &&stbHwInfo.ucAudio == StreamHwInfo.ucAudio
        &&stbHwInfo.ucTcp == StreamHwInfo.ucTcp
        &&stbHwInfo.ucFP == StreamHwInfo.ucFP
        &&stbHwInfo.uCAType == StreamHwInfo.uCAType
        &&stbHwInfo.uReservedUpdateInfo == StreamHwInfo.uReservedUpdateInfo
        &&stbHwInfo.ucFactoryID == StreamHwInfo.ucFactoryID)
    {
        VersionTemp = ((StreamHwInfo.u16VersionH<<8)|(StreamHwInfo.u16VersionL));
        //DBS_DEBUG(("Local version = %x  TS version = %x\n",uiv_u16SoftwareVer,VersionTemp));
        if( VersionTemp > uiv_u16SoftwareVer)
        {
            return MM_TRUE;
        }
    }     
    return MM_FALSE;
}


MBT_BOOL dbsf_UpdateSoftwareRequire(MBT_U8 *pu8MsgData)
{
    MBT_BOOL bRet = MM_FALSE;
    
    if(MM_NULL == pu8MsgData)
    {
        return bRet;
    }

    /*硬件符合*/
    if(dbsf_IsHwSuit(pu8MsgData))
    {
        OUTSERIAL stSerialNumber;
        MBT_U32 u32InerSerailStart = ((pu8MsgData [8] << 24)|(pu8MsgData [9]<<16)|(pu8MsgData [10]<<8)|pu8MsgData [11]);
        MBT_U32 u32InerSerailEnd = ((pu8MsgData [12] << 24)|(pu8MsgData [13]<<16)|(pu8MsgData [14]<<8)|pu8MsgData [15]);
	
        /*考查内部序列号是否在升级范围*/
        MMF_GetStbSerial(&stSerialNumber);
        if(stSerialNumber.inerSeral>=u32InerSerailStart&&stSerialNumber.inerSeral<=u32InerSerailEnd)
        {
            bRet = MM_TRUE;
        }
    }
    else
    {
          DBS_DEBUG(("dbsf_IsHwSuit Error\n"));
    }
 
	
    return bRet;
}

MBT_U32 dbsf_CTRGetTransInfoFromList(DBST_TRANS *pstTransInfo,MBT_U16 u16TransNum,MBT_U16 u16TSID)
{
    MBT_S32 s32LeftIndex;
    MBT_S32 s32RightIndex;
    MBT_S32 s32MidIndex;
    MBT_U16 u16MidTSID;

    if(MM_NULL == pstTransInfo||0 == u16TransNum)
    {
        return dbsm_InvalidTransInfo;
    }

    s32LeftIndex = 0;
    s32RightIndex = u16TransNum-1;
    while (s32LeftIndex <= s32RightIndex)
    {
        s32MidIndex = ((s32LeftIndex + s32RightIndex)>>1);
        u16MidTSID = pstTransInfo[s32MidIndex].u16Tsid;
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
            return (pstTransInfo[s32MidIndex].stTPTrans.u32TransInfo);
        }
    }

    return dbsm_InvalidTransInfo;
}

MBT_BOOL dbsf_CTRCASCheckSysID(MBT_U16 u16SystemID)
{
    MBT_BOOL bRet = MM_FALSE;
    if(MM_NULL != dbsf_pCASCheckSystemID)
    {
        bRet = dbsf_pCASCheckSystemID(u16SystemID);
    }
    return bRet;
}

MBT_VOID dbsf_CTRCASStartEcm(DBS_st2CAPIDInfo *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID,DBS_stCAEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{
    if(MM_NULL != dbsf_pCASStartEcm)
    {
        dbsf_pCASStartEcm(pstCurPrgCasPidInfo,u16CurServiceID,pstEcmCtr,s32EcmCtrNum);
    }
}

MBT_VOID dbsf_CTRCASStopEcm(MBT_VOID)
{
    if(MM_NULL != dbsf_pCASStopEcm)
    {
        dbsf_pCASStopEcm();
    }
}


MBT_VOID dbsf_CTRCASStartEmm(MBT_U16 u16EmmPID)
{
    if(MM_NULL != dbsf_pCASStartEmm)
    {
        dbsf_pCASStartEmm(u16EmmPID);
    }
}

MBT_VOID dbsf_CTRCASStopEmm(MBT_VOID)
{
    if(MM_NULL != dbsf_pCASStopEmm)
    {
        dbsf_pCASStopEmm();
    }
}

MBT_VOID dbsf_CTRCASParseNIT(MBT_U8 *pu8Data ,MBT_S32 s32Len)
{
    if(MM_NULL != dbsf_pCASParseNIT)
    {
        dbsf_pCASParseNIT(pu8Data,s32Len);
    }
}


/*********************************************************************
 * Function Name : dbsf_HexToBcd
 * Type ：Moudle & Subroutine
 * Prototype :
 *		__inline MBT_U32 dbsf_HexToBcd( MBT_U8 u8Hex);
 *
 * Input :
 
 * Output:

 * Return : 
 		MBT_U32 
 *
 * Global Variables Used	:
 *		
 *
 * Purpose :
 *
 * Theory of Operation :
 *********************************************************************/
MBT_U32 dbsf_HexToBcd( MBT_U8 u8Hex)
{
	if(u8Hex>=100)
	{
		u8Hex=u8Hex%100;
	}
	return ((((u8Hex/10)<<4)&0xF0)|(u8Hex%10));
}



MBT_S32 dbsf_DateToMjd(MBT_S32 iYear, MBT_S32 iMonth, MBT_S32 iDay)
{
    MBT_U32	u32Y1,u32M1,u32D1,u32L;

    u32Y1 = iYear;
    u32M1 = iMonth;
    u32D1 = iDay;

    if ( (u32M1==1)||(u32M1==2) )
    {
        u32L=1;
    }
    else
    {
        u32L=0;
    }
    return (14956 + u32D1 + (MBT_S32)((u32Y1-u32L)*36525/100) +    (MBT_S32)((u32M1 + 1 + u32L*12)*306001/10000 ));
}

MBT_VOID dbsf_GetEndTime( MBT_U8 *pu8BeginTime, MBT_U8 *pu8DuringTime, MBT_U8 *pu8EndTime)
{
	MBT_U8		u8EventDuringTime[3];
	MBT_U8		u8TimeCarry;
	
	memcpy(pu8EndTime,pu8BeginTime,5);
	pu8EndTime[2] = (MBT_U8)((m_BcdToHex(pu8EndTime[2])) & 0xFF);
	pu8EndTime[3] = (MBT_U8)((m_BcdToHex(pu8EndTime[3])) & 0xFF);
	pu8EndTime[4] = (MBT_U8)((m_BcdToHex(pu8EndTime[4])) & 0xFF);
	
	u8EventDuringTime[0] = (MBT_U8)(m_BcdToHex(pu8DuringTime[0]) & 0xFF);
	u8EventDuringTime[1] = (MBT_U8)(m_BcdToHex(pu8DuringTime[1]) & 0xFF);
	u8EventDuringTime[2] = (MBT_U8)(m_BcdToHex(pu8DuringTime[2]) & 0xFF);

	pu8EndTime[4] = pu8EndTime[4] + u8EventDuringTime[2];
	if (pu8EndTime[4] >= 60)
	{
		pu8EndTime[4]= pu8EndTime[4] - 60;
		u8TimeCarry = 1;
	}
	else
	{
		u8TimeCarry = 0;
	}

	pu8EndTime[3] = pu8EndTime[3] + u8EventDuringTime[1] + u8TimeCarry;
	if (pu8EndTime[3] >= 60)
	{
		pu8EndTime[3]= pu8EndTime[3] - 60;
		u8TimeCarry = 1;
	}
	else
	{
		u8TimeCarry = 0;
	}
	
	pu8EndTime[2] = pu8EndTime[2] + u8EventDuringTime[0] + u8TimeCarry;
	if (pu8EndTime[2] >= 24)
	{
		pu8EndTime[2]= pu8EndTime[2] - 24 ;
		pu8EndTime[1] = pu8EndTime[1]+1;
		if ( pu8EndTime[1]==0 )
		{
			pu8EndTime[0] = pu8EndTime[0]+1;
		}
	}
	
	pu8EndTime[2] = (MBT_U8)((dbsf_HexToBcd(pu8EndTime[2])) & 0xFF);
	pu8EndTime[3] = (MBT_U8)((dbsf_HexToBcd(pu8EndTime[3])) & 0xFF);
	pu8EndTime[4] = (MBT_U8)((dbsf_HexToBcd(pu8EndTime[4])) & 0xFF);
}

MBT_BOOL DBSF_DateJudge (MBT_U8 Year, MBT_U8 Month, MBT_U8 Date)
{
	MBT_S32 year = Year + 1900 ;
	switch( Month )
	{
	case 1:  
	case 3:  
	case 5: 
	case 7:
	case 8: 
	case 10:
	case 12:	 
		if( Date > 31 ) 
			return MM_FALSE ;
		break ;
	case 2 :
		if( year%400==0 || (year%100 != 0 &&0 == (year&0x00000003) )/*year %4==0*/ )
		{
			if( Date > 29 ) 
				return MM_FALSE ;
		}
		else
		{
			if( Date > 28 ) 
				return MM_FALSE ;
		}
		break ;
	case 4: 
	case 6:  
	case 9:  
	case 11:
		if( Date > 30 ) 
			return MM_FALSE ;
		break ;
	default: 
		return MM_FALSE ;
	}
	return MM_TRUE ;
}

MBT_S32 DBSF_GetTimeZoneDiff (MBT_U32 u32TimeZone) 
{
    MBT_S32 value = 0;
	switch(u32TimeZone)
    {
    case TIME_ZONE_M11_30:
        value = -690;
        break;
		
    case TIME_ZONE_M11_00:
        value = -660;
        break;
		
	case TIME_ZONE_M10_30:
		value = -630;
		break;
		
    case TIME_ZONE_M10_00:
        value = -600;
        break;
	
    case TIME_ZONE_M09_30:
        value = -570;
        break;
		
    case TIME_ZONE_M09_00:
        value = -540;
        break;
	
    case TIME_ZONE_M08_30:
        value = -510;
        break;
		
    case TIME_ZONE_M08_00:
        value = -480;
        break;
	
    case TIME_ZONE_M07_30:
        value = -450;
        break;
		
    case TIME_ZONE_M07_00:
        value = -420;
        break;
	
    case TIME_ZONE_M06_30:
        value = -390;
        break;
		
    case TIME_ZONE_M06_00:
        value = -360;
        break;
	
    case TIME_ZONE_M05_30:
        value = -330;
        break;
		
    case TIME_ZONE_M05_00:
        value = -300;
        break;
	
    case TIME_ZONE_M04_30:
        value = -270;
        break;
		
    case TIME_ZONE_M04_00:
        value = -240;
        break;
		
    case TIME_ZONE_M03_30:
        value = -210;
        break;
		
    case TIME_ZONE_M03_00:
        value = -180;
        break;
	
    case TIME_ZONE_M02_30:
        value = -150;
        break;
		
    case TIME_ZONE_M02_00:
        value = -120;
        break;
	
    case TIME_ZONE_M01_30:
        value = -90;
        break;
		
    case TIME_ZONE_M01_00:
        value = -60;
        break;
	
    case TIME_ZONE_M00_30:
        value = -30;
        break;
		
    case TIME_ZONE_00_00:
        value = 0;
        break;
		
	case TIME_ZONE_A00_30:
		value = 30;
		break;
		
    case TIME_ZONE_A01_00:
        value = 60;
        break;
		
	case TIME_ZONE_A01_30:
		value = 90;
		break;
		
    case TIME_ZONE_A02_00:
        value = 120;
        break;
		
	case TIME_ZONE_A02_30:
		value = 150;
		break;
		
    case TIME_ZONE_A03_00:
        value = 180;
        break;
		
    case TIME_ZONE_A03_30:
        value = 210;
        break;
		
    case TIME_ZONE_A04_00:
        value = 240;
        break;
		
    case TIME_ZONE_A04_30:
        value = 270;
        break;
		
    case TIME_ZONE_A05_00:
        value = 300;
        break;
		
    case TIME_ZONE_A05_30:
        value = 330;
        break;
		
    case TIME_ZONE_A06_00:
        value = 360;
        break;
		
    case TIME_ZONE_A06_30:
        value = 390;
        break;
		
    case TIME_ZONE_A07_00:
        value = 420;
        break;
		
	case TIME_ZONE_A07_30:
		value = 510;
		break;
			
    case TIME_ZONE_A08_00:
        value = 480;
        break;
		
	case TIME_ZONE_A08_30:
		value = 510;
		break;
			
    case TIME_ZONE_A09_00:
        value = 540;
        break;
		
    case TIME_ZONE_A09_30:
        value = 570;
        break;
		
    case TIME_ZONE_A10_00:
        value = 600;
        break;
		
    case TIME_ZONE_A10_30:
        value = 630;
        break;
		
    case TIME_ZONE_A11_00:
        value = 660;
        break;
	
    case TIME_ZONE_A11_30:
        value = 690;
        break;
		
    case  TIME_ZONE_A12_00:
        value = 720;
        break;
		
    default:
        break;
    }

	return value;
}



/*********************************************************************
 * Function Name : DBSF_GetEndTime
 * Type ：Private & Subroutine
 * Prototype :
 *		MBT_VOID DBSF_GetEndTime( MBT_U8 *pu8BeginTime, MBT_U8 *pu8DuringTime, MBT_U8 *pu8EndTime);
 *
 * Input :
 *		a.	pu8BeginTime		 MBT_U8 *
  			The time array(5 bytes) which the time has add zone 8
 *		b.	pu8DuringTime		 MBT_U8 *
  			The time array(BCD 3 bytes)
 * Output:
 		a.	pu8EndTime	 MBT_U8 *
  			The time array(5 bytes) which the time has add zone 8 		
 * Return :
 *		
 * Purpose :
 *		get the event end time array(5 bytes) which the time has  add zone 8
 * Theory of Operation :
 *********************************************************************/
MBT_VOID DBSF_GetEndTime( MBT_U8 *pu8BeginTime, MBT_U8 *pu8DuringTime, MBT_U8 *pu8EndTime)
{
    dbsf_GetEndTime(pu8BeginTime,pu8DuringTime,pu8EndTime);
}


MBT_VOID DBSF_TdtTime2SystemTime(MBT_U8 *puTdtTime,TIMER_M *pTimer)
{
    MBT_U8 YY,MM,K;
    MBT_U16 u16MJD;
    MBT_U16 u16Year;
    
    pTimer->uTimeZone = TIME_ZONE_00_00;
    pTimer->u32UtcTimeSecond = 0;
    u16MJD = puTdtTime[0] << 8 | puTdtTime[1];
    if(u16MJD > DEFAULT_MJD)
    {
        YY = (MBT_U8) ((u16MJD - 15078.2) / 365.25);
        MM = (MBT_U8) ((u16MJD - 14956.1 - (MBT_U16)(YY * 365.25)) / 30.6001);
        K = ((MM == 14) || (MM == 15)) ? 1 : 0;

        pTimer->year = (MBT_U8) (YY + K);
        u16Year = (MBT_U16) (1900 + pTimer->year);
        pTimer->month = (MBT_U8) (MM - 1 - (K * 12));
        pTimer->date = (MBT_U8) (u16MJD - 14956 - (MBT_U16) (YY * 365.25) - (MBT_U16) (MM * 30.6001));
        pTimer->hour = m_BcdToHex(puTdtTime[2]);
        pTimer->minute = m_BcdToHex(puTdtTime[3]);
        pTimer->second = m_BcdToHex(puTdtTime[4]);
        pTimer->Weekday = ((u16MJD+2)%7)+1;
        /* sec */
        pTimer->u32UtcTimeSecond += pTimer->second;

        /* min */
        pTimer->u32UtcTimeSecond += pTimer->minute * SECONDS_PER_MIN;

        /* hour */
        pTimer->u32UtcTimeSecond += pTimer->hour * SECONDS_PER_HOUR;

        /* day */
        pTimer->u32UtcTimeSecond += (pTimer->date - 1) * SECONDS_PER_DAY;

        /* month */
        pTimer->u32UtcTimeSecond += dbsv_u16SolarDays[_CTR_Util_GetLeap(u16Year) * 14 + pTimer->month - 1] * SECONDS_PER_DAY;

        /* year */
        while(u16Year > DEFAULT_YEAR)
        {
            u16Year--;
            pTimer->u32UtcTimeSecond += CTR_GetDaysOfThisYear(u16Year) * SECONDS_PER_DAY;
        }
    }

    DBSF_GetGMTtime(pTimer);
}

MBT_VOID DBSF_AdjustUTCTime2SystemTime(TIMER_M *pTimer){
		MBT_U16 u16Year;
        u16Year = (MBT_U16) (1900 + pTimer->year);
        /* sec */
		pTimer->u32UtcTimeSecond = 0;
        pTimer->u32UtcTimeSecond += pTimer->second;

        /* min */
        pTimer->u32UtcTimeSecond += pTimer->minute * SECONDS_PER_MIN;

        /* hour */
        pTimer->u32UtcTimeSecond += pTimer->hour * SECONDS_PER_HOUR;

        /* day */
        pTimer->u32UtcTimeSecond += (pTimer->date - 1) * SECONDS_PER_DAY;

        /* month */
        pTimer->u32UtcTimeSecond += dbsv_u16SolarDays[_CTR_Util_GetLeap(u16Year) * 14 + pTimer->month - 1] * SECONDS_PER_DAY;

        /* year */
        while(u16Year > DEFAULT_YEAR)
        {
            u16Year--;
            pTimer->u32UtcTimeSecond += CTR_GetDaysOfThisYear(u16Year) * SECONDS_PER_DAY;
        }
}


MBT_S32 DBSF_CompareTime( MBT_U8 *pu8Time1, MBT_U8 *pu8Time2, MBT_U8 u8Count)
{
	MBT_U8 		u8Temp ;

	for(u8Temp=0;u8Temp<u8Count;u8Temp++)
	{
		if(pu8Time1[u8Temp]>pu8Time2[u8Temp])
		{
			return FIRST_LATE;
		}
		else if(pu8Time1[u8Temp] < pu8Time2[u8Temp])
		{
			return FIRST_EARLY;
		}
	}
	return SAME;
}




MBT_VOID DBSF_GetGMTtime(TIMER_M *pstTimer)
{
    MBT_S32 iTimeZoneDiff ;
    MBT_S32 iTimeMinute;
    MBT_S32 iTimeHour;
    MBT_S32 VerifiedHour ;
    MBT_S32 VerifiedMinute;
    MBT_S32 iDate;
    MBT_S32 iMonth;
    MBT_S32 iYear;
    MBT_S32 iWeekDay;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();   
    
    if(pstTimer->uTimeZone == pstBoxInfo->ucBit.TimeZone)
    {
        return;
    }
    
    if(pstTimer->uTimeZone!=pstBoxInfo->ucBit.TimeZone)
    {
        iTimeZoneDiff = DBSF_GetTimeZoneDiff(pstBoxInfo->ucBit.TimeZone) - DBSF_GetTimeZoneDiff(pstTimer->uTimeZone);
        pstTimer->uTimeZone = pstBoxInfo->ucBit.TimeZone;
        iTimeMinute = iTimeZoneDiff%60;
        iTimeHour = iTimeZoneDiff/60;
        iDate = pstTimer->date;
        iWeekDay = pstTimer->Weekday;
        iMonth = pstTimer->month;
        iYear = pstTimer->year;

        VerifiedMinute = (MBT_S32) pstTimer->minute+iTimeMinute;
        if (VerifiedMinute<0)
        {
            VerifiedMinute = 60+VerifiedMinute;
            iTimeHour -= 1;
        }
        else if (VerifiedMinute>=60)
        {
            VerifiedMinute = VerifiedMinute-60;
            iTimeHour += 1;
        }
        VerifiedHour  = pstTimer->hour + iTimeHour;
        if( VerifiedHour < 0 )
        {
            VerifiedHour += 24 ; 
            iDate -- ;
            iWeekDay--;
            if(iWeekDay < 1)
            {
                iWeekDay = 7;
            }
            if( iDate == 0 )
            {
                iMonth -- ;
                if( iMonth == 0 )
                {
                    iMonth = 12 ;
                    iYear -- ;
                }
                iDate = 31 ;
                while( DBSF_DateJudge(iYear, iMonth,iDate )==MM_FALSE && iDate > 28 )
                {
                    iDate -- ;
                }
            }
        }
        
        if( VerifiedHour >= 24  )  
        {
            VerifiedHour -= 24 ; 
            iDate ++ ;
            iWeekDay++;
            if(iWeekDay > 7)
            {
                iWeekDay = 1;
            }
            if( DBSF_DateJudge(iYear, iMonth,iDate ) == MM_FALSE )
            {
                iDate = 1 ;
                iMonth ++ ;
                if( iMonth> 12  )
                {
                    iMonth = 1 ;
                    iYear ++ ;
                }
            }
        }
        pstTimer->date = iDate;
        pstTimer->Weekday = iWeekDay;
        pstTimer->month = iMonth;
        pstTimer->year = iYear;
        pstTimer->hour = VerifiedHour ;
        pstTimer->minute = VerifiedMinute;
    }
}


MBT_VOID DBSF_StopAll(MBT_VOID)
{
    //MLMF_Print("DBSF_StopAll call dbsf_StopAV\n");
    CTRStopCAS();
    SRSTF_CancelAllSectionReq();
    dbsf_StopAV();
    dbsf_MntClnCatVer();
    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
}

MBT_VOID DBSF_StopAllFilter(MBT_VOID)
{
    CTRStopCAS();
    SRSTF_CancelAllSectionReq();
    dbsf_MntClnCatVer();
}

MBT_VOID DBSF_ResetAll(MBT_VOID)
{
    TRANS_INFO stMainFreq;
    //MLMF_Print("DBSF_ResetAll call dbsf_StopAV\n");
    dbsf_SetDbsState(m_DbsReset);
    dbsf_StopAV();
    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
    dbsf_DataRmvAllFile();
    dbsf_MntInitStreamPrgVer();
    stMainFreq.uBit.uiTPFreq = m_MainFrenq;
    stMainFreq.uBit.uiTPSymbolRate = m_MainSymbelRate;
    stMainFreq.uBit.uiTPQam= m_MainModulation;
    DBSF_DataWriteMainFreq(&stMainFreq);
}


MBT_VOID DBSF_ResetProg(MBT_VOID)
{
    //MLMF_Print("DBSF_ResetProg call dbsf_StopAV\n");
    dbsf_SetDbsState(m_DbsReset);
    dbsf_StopAV();
    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
    dbsf_EpgFreeAllEvent();
    dbsf_NvdFreeRefPrgList();
    dbsf_ListFreePrgList();
    dbsf_FileRmvPrgFile();
}
 
 MBT_U32 DBSF_GetDayOfMonth(MBT_U32 u32Year,MBT_U32 u32Month)
 {
     MBT_U32 totalDay = 0;
     
     switch(u32Month)
     {
         case 1:
         case 3:
         case 5:
         case 7:
         case 8:
         case 10:
         case 12:
             totalDay = 31;
             break;
         
         case 4:
         case 6:
         case 9:
         case 11:
             totalDay = 30;
             break;
 
         case 2:
             totalDay = 28;
             if((0==u32Year%400) || (0!=u32Year%100 && 0==u32Year%4))
             {
                 totalDay ++;
             }
             break;
             
             
         default:
             break;
     }
 
     return totalDay;
 }


/*****************************************************************************************************
 * CODE		   	:	DBASE_DbaseInit
 * TYPE		   	:	subroutine
 * PURPOSE		:
 *		Initialise the database	module
 *	THEORY OF OPERATION:
 *		1. get the db_usif_if mailbox id and usif pool id
 *		2. initialise all the neccesary	elements of prog database to the
 *			appropriotae initial values.
 *		3.	start the dbase_builder	process
 *****************************************************************************************************/
MBT_BOOL DBSF_DVBDbaseInit (MBT_VOID)
{
    dbsf_MntInitStreamPrgVer();
    dbsf_ListPrgInit();
    dbsf_GenreListInit();
    dbsf_TPListInit();
    dbsf_PrgPlayInit();
    dbsf_MntInit();
    dbsf_EpgInit();
    dbsf_NvodInit();
    SRSTF_OpenDataParseChannel(DBASE_BUILDER_PROCESS_PRIORITY,DBASE_BUILDER_PROCESS_WORKSPACE);
    return MM_FALSE;
}

MBT_VOID DBSF_CTRRegisterCASFunc(MBT_BOOL (*pCheckSystemID)(MBT_U16 u16SystemID),
                                    MBT_VOID (*pStartEcm)(DBS_st2CAPIDInfo *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID,DBS_stCAEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum),
                                    MBT_VOID (*pStopEcm)(MBT_VOID),
                                    MBT_VOID (*pStartEmm)(MBT_U16 u16EmmPID),
                                    MBT_VOID (*pStopEmm)(MBT_VOID),
                                    MBT_VOID (*pParseNIT)(MBT_U8 *pu8Data,MBT_S32 s32Len))
{
    dbsf_pCASCheckSystemID  = pCheckSystemID;
    dbsf_pCASStartEcm  = pStartEcm;
    dbsf_pCASStopEcm  = pStopEcm;
    dbsf_pCASStartEmm  = pStartEmm;
    dbsf_pCASStopEmm = pStopEmm;
    dbsf_pCASParseNIT = pParseNIT;
}

MBT_VOID DBSF_FreeTempMemory(MBT_VOID)
{
    dbsf_EpgFreeAllEvent();
    dbsf_NvdFreeAllEvent();
}



