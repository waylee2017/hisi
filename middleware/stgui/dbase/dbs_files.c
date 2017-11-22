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
#include "ffs.h"

#define m_CRCSize 4
enum 
{
    m_Program,
    m_Boxinfo,
    m_GenreListFile,
    m_MaxFile
};

typedef	struct	_box_info_crc_t
{
    DVB_BOX stBoxInfo;				
    MBT_U32 u32CRC;
} DVB_BOX_CRC;  

/*-------------------------------Constants---------------------------------------*/
static MBT_CHAR *dbsv_cFilename[m_MaxFile]=
{
    "root/FileProgram",
    "root/FileBoxinfo",
    "root/FileGenre",
};


/*--------------------------------External Functions------------------------------*/

static MET_Sem_T dbsv_semDataAccess = MM_INVALID_HANDLE;   


#define Sem_DBSData_P()  if(MM_INVALID_HANDLE == dbsv_semDataAccess)MLMF_Sem_Create(&dbsv_semDataAccess,1);MLMF_Sem_Wait(dbsv_semDataAccess,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_DBSData_V()  MLMF_Sem_Release(dbsv_semDataAccess)




/****************************************************************************
*Name         : dbsf_FileRmvAllFile
*Description  : Erase all of listed sectors.
*Parameters   : 
*Return Value : None
*
*****************************************************************************/
MBT_VOID dbsf_FileRmvAllFile ( MBT_VOID ) 
{
    FFST_FileHandle hFile;
    Sem_DBSData_P();
    if(FFSF_FileOpen( (MBT_CHAR *)dbsv_cFilename[m_Program] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)dbsv_cFilename[m_Program]);
    }
    if(FFSF_FileOpen( (MBT_CHAR *)dbsv_cFilename[m_Boxinfo] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)dbsv_cFilename[m_Boxinfo]);
    }

    Sem_DBSData_V();
}


/*************************************************************************************************************
*
*	delete program data that is saved in flash
*
*************************************************************************************************************/
MBT_VOID dbsf_FileRmvPrgFile ( MBT_VOID ) 
{
    FFST_FileHandle hFile;
    Sem_DBSData_P();
    if(FFSF_FileOpen( (MBT_CHAR *)dbsv_cFilename[m_Program] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)dbsv_cFilename[m_Program]);
    }
    Sem_DBSData_V();
}


MBT_VOID dbsf_FilePrgEdit(DBST_PROG *pstService) 
{   
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    MBT_U32 u32FileSize ;
    MBT_U32 u32PrgSize ;
    MBT_S32 i;
    MBT_U32 u32Num;
    MBT_U32 u32CRC;
    FFST_ErrorCode Error;
    DBST_PROG *pstTempPrg;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_S32  iPrgStructSize = sizeof(DBST_PROG);
    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Sem_DBSData_V();
        return;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenWrite, &hFile);
    Error = FFSF_FileSize(hFile, &u32FileSize);
    u32PrgSize = u32FileSize - m_CRCSize;
    if(u32PrgSize%iPrgStructSize)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        return;
    }
    
    pstTempPrg = MLMF_Malloc(u32PrgSize);
    if(MM_NULL == pstTempPrg)
    {
        Error = FFSF_FileClose(hFile);  
        Sem_DBSData_V();
    }
    Error = FFSF_FileRead(hFile, (MBT_U8 *)pstTempPrg, u32PrgSize, &u32LengthActual);
    u32Num = u32LengthActual/iPrgStructSize;
    for(i = 0;i < u32Num;i++)
    {
        if(pstTempPrg[i].stPrgTransInfo.uBit.uiTPFreq == pstService->stPrgTransInfo.uBit.uiTPFreq&&pstTempPrg[i].u16ServiceID == pstService->u16ServiceID)
        {
            FFSF_FileSeek(hFile, iPrgStructSize*i, FFSM_SeekBegin);
            FFSF_FileWrite(hFile, (MBT_U8 *)pstService, iPrgStructSize, &u32LengthActual);
            memcpy(&pstTempPrg[i],pstService,iPrgStructSize);
            break;
        }
    }

    u32CRC = MMF_Common_CRC((MBT_U32 *)pstTempPrg,(u32PrgSize>>2));
    FFSF_FileSeek(hFile, u32PrgSize, FFSM_SeekBegin);
    FFSF_FileWrite(hFile, (MBT_U8 *)(&u32CRC), m_CRCSize, &u32LengthActual);
    MLMF_Free(pstTempPrg);
    Error = FFSF_FileClose(hFile);  
    Sem_DBSData_V();
}

MBT_S32 dbsf_FileOverWritePrg2File (MBT_VOID *pstPrgArray,MBT_S32 iPrgNum)
{
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    MBT_U32 u32PrgSize = iPrgNum*sizeof(DBST_PROG);
    MBT_U32 u32FileSize;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_U8 *pu8Buf;
    MBT_U32 u32CRC;
    
    if(MM_NULL == pstPrgArray||0 == iPrgNum)
    {
        MLMF_Print("dbsf_FileOverWritePrg2File 0 == iPrgNum return\n");
        return 0;
    }
    
    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenCreate, &hFile);
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenReadWrite, &hFile);
    }
    
    u32FileSize = u32PrgSize+m_CRCSize;
    pu8Buf = MLMF_Malloc(u32FileSize);
    if(MM_NULL == pu8Buf)
    {
        Error = FFSF_FileClose(hFile);
        Sem_DBSData_V();
        MLMF_Print("dbsf_FileOverWritePrg2File Malloc faile u32FileSize = %d\n",u32FileSize);
        return 0;
    }
    
    u32CRC = MMF_Common_CRC((MBT_U32 *)pstPrgArray,(u32PrgSize>>2));
    memcpy(pu8Buf,pstPrgArray,u32PrgSize);
    memcpy(pu8Buf + u32PrgSize,(MBT_U8 *)(&u32CRC),m_CRCSize);
    Error = FFSF_FileWrite(hFile, pu8Buf, u32FileSize, &u32LengthActual);
    Error = FFSF_FileSetEOF(hFile);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
    MLMF_Free(pu8Buf);
    //MLMF_Print("dbsf_FileOverWritePrg2File iPrgNum = %d\n",iPrgNum);
    return iPrgNum;
}


MBT_S32 dbsf_FileOverWriteCurTPPrg (MBT_VOID *pstPrgArray,MBT_S32 iPrgNum)
{
    MBT_S32 i;
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual = 0;
    MBT_U32 u32FileSize ;
    MBT_U32 u32PrgSize;
    MBT_U32 u32CRC;
    MBT_U32 u32CheckFrenq;
    MBT_S32 iPrgStructSize = sizeof(DBST_PROG);
    DBST_PROG *pstNewPrg;
    MBT_U8 *pstBuffer ;
    DBST_PROG *pstPrg2Save ;
    DBST_PROG *pstLocPrg ;
    DBST_PROG *pstLocPrgEnd;
    DBST_PROG *pstLocPrgChecked;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_U32 u32LocNum;
    MBT_U32 u32TotalNum = 0;
    
    if(MM_NULL == pstPrgArray|| 0 == iPrgNum)
    {
        return u32TotalNum;
    }

    pstBuffer = MLMF_Malloc((MAX_NO_OF_PROGRAMS*iPrgStructSize) + m_CRCSize);
    if(MM_NULL == pstBuffer)
    {
        return u32TotalNum;
    }

    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenCreate, &hFile);
        pstLocPrg = MM_NULL;
        u32LocNum = 0;
        u32FileSize = 0;
        u32PrgSize = 0;
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenReadWrite, &hFile);
        Error = FFSF_FileSize(hFile, &u32FileSize);
        u32PrgSize = u32FileSize - m_CRCSize;
        if(u32PrgSize%iPrgStructSize)
        {
            pstLocPrg = MM_NULL;
            u32LocNum = 0;
            u32FileSize = 0;
            u32PrgSize = 0;
        }
        else
        {
            Error = FFSF_FileRead(hFile, pstBuffer, u32PrgSize, &u32LengthActual);
            FFSF_FileSeek(hFile, 0, FFSM_SeekBegin);
            pstLocPrg = (DBST_PROG *)(pstBuffer);
            u32LocNum = u32PrgSize/(iPrgStructSize);
        }
    }

    pstPrg2Save = (DBST_PROG *)(pstBuffer + u32PrgSize);
    u32TotalNum = u32LocNum;
    pstNewPrg = pstPrgArray;
    pstLocPrgEnd = pstLocPrg + u32LocNum;
    pstLocPrgChecked = pstLocPrg;
    u32CheckFrenq = pstNewPrg->stPrgTransInfo.uBit.uiTPFreq;
    
    for(i = 0;i < iPrgNum;i++)
    {
        while(pstLocPrgChecked < pstLocPrgEnd)
        {
            if(u32CheckFrenq == pstLocPrgChecked->stPrgTransInfo.uBit.uiTPFreq)
            {
                *pstLocPrgChecked  = *pstNewPrg;
                pstLocPrgChecked++;
                break;
            }
            pstLocPrgChecked++;
        }

        if(pstLocPrgChecked >= pstLocPrgEnd)
        {
            *pstPrg2Save = *pstNewPrg;
            pstPrg2Save ++;
            u32TotalNum ++;
        }
        
        if(u32TotalNum >= MAX_NO_OF_PROGRAMS)
        {
            break;
        }
        pstNewPrg ++;
    }

    
    while(pstLocPrgChecked < pstLocPrgEnd)
    {
        if(u32CheckFrenq == pstLocPrgChecked->stPrgTransInfo.uBit.uiTPFreq)
        {
            u32TotalNum--;
            pstLocPrgEnd--;
            *pstLocPrgChecked = *pstLocPrgEnd;
        }
        else
        {
            pstLocPrgChecked++;
        }
    }

    u32PrgSize = (u32TotalNum*iPrgStructSize);
    u32CRC = MMF_Common_CRC((MBT_U32 *)pstBuffer,(u32PrgSize>>2));
    memcpy(pstBuffer + u32PrgSize,(MBT_U8 *)(&u32CRC),m_CRCSize);
    u32FileSize = u32PrgSize + m_CRCSize;
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)(pstBuffer), u32FileSize, &u32LengthActual);
    Error = FFSF_FileSetEOF(hFile);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
    MLMF_Free(pstBuffer);

    return u32TotalNum;
}


MBT_S32  dbsf_FilePutPrg2File (MBT_VOID *pstPrgArray,MBT_S32 iPrgNum)
{
    MBT_S32 i,j;
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual = 0;
    MBT_U32 u32FileSize ;
    MBT_U32 u32PrgSize;
    MBT_U32 u32CRC;
    MBT_S32 iPrgStructSize = sizeof(DBST_PROG);
    DBST_PROG *pstNewPrg;
    MBT_U8 *pstBuffer ;
    DBST_PROG *pstPrg2Save ;
    DBST_PROG *pstLocPrg ;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_U32 u32LocNum;
    MBT_U32 u32TotalNum = 0;
    
    if(MM_NULL == pstPrgArray|| 0 == iPrgNum)
    {
        return u32TotalNum;
    }

    pstBuffer = MLMF_Malloc((MAX_NO_OF_PROGRAMS*iPrgStructSize) + m_CRCSize);
    if(MM_NULL == pstBuffer)
    {
        return u32TotalNum;
    }

    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenCreate, &hFile);
        pstLocPrg = MM_NULL;
        u32LocNum = 0;
        u32FileSize = 0;
        u32PrgSize = 0;
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenReadWrite, &hFile);
        Error = FFSF_FileSize(hFile, &u32FileSize);
        u32PrgSize = u32FileSize - m_CRCSize;
        if(u32PrgSize%iPrgStructSize)
        {
            pstLocPrg = MM_NULL;
            u32LocNum = 0;
            u32FileSize = 0;
            u32PrgSize = 0;
        }
        else
        {
            Error = FFSF_FileRead(hFile, pstBuffer, u32PrgSize, &u32LengthActual);
            FFSF_FileSeek(hFile, 0, FFSM_SeekBegin);
            pstLocPrg = (DBST_PROG *)(pstBuffer);
            u32LocNum = u32PrgSize/(iPrgStructSize);
        }
    }
    
    pstPrg2Save = (DBST_PROG *)(pstBuffer + u32PrgSize);
    u32TotalNum = u32LocNum;
    pstNewPrg = pstPrgArray;
    
    for(i = 0;i < iPrgNum;i++)
    {
        for(j = 0;j < u32LocNum;j++)
        {
            if(pstNewPrg->stPrgTransInfo.uBit.uiTPFreq == pstLocPrg[j].stPrgTransInfo.uBit.uiTPFreq&&pstNewPrg->u16ServiceID== pstLocPrg[j].u16ServiceID)
            {
                if(dbsm_InvalidPID != pstNewPrg->sPmtPid)
                {
                    pstLocPrg[j].sPmtPid = pstNewPrg->sPmtPid;
                }
                pstLocPrg[j].cProgramType = pstNewPrg->cProgramType;
                pstLocPrg[j].u16OrinetID = pstNewPrg->u16OrinetID;
                pstLocPrg[j].u16TsID = pstNewPrg->u16TsID;
                pstLocPrg[j].ucProgram_status = (pstLocPrg[j].ucProgram_status & ~SKIP_BIT_MASK) ;         
                pstLocPrg[j].usiChannelIndexNo = pstNewPrg->usiChannelIndexNo;
                memcpy(pstLocPrg[j].u16BouquetID,pstNewPrg->u16BouquetID,pstNewPrg->u16BouquetID[0]+1);
                strcpy(pstLocPrg[j].cServiceName,pstNewPrg->cServiceName);
                break;
            }
        }

        if(j == u32LocNum)
        {
            *pstPrg2Save = *pstNewPrg;
            pstPrg2Save ++;
            u32TotalNum ++;
        }
        
        if(u32TotalNum >= MAX_NO_OF_PROGRAMS)
        {
            break;
        }
        pstNewPrg ++;
    }

    
    u32PrgSize = (u32TotalNum*iPrgStructSize);
    u32CRC = MMF_Common_CRC((MBT_U32 *)pstBuffer,(u32PrgSize>>2));
    memcpy(pstBuffer + u32PrgSize,(MBT_U8 *)(&u32CRC),m_CRCSize);
    u32FileSize = u32PrgSize + m_CRCSize;
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)(pstBuffer), u32FileSize, &u32LengthActual);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
    MLMF_Free(pstBuffer);

    return u32TotalNum;
}


DBST_PROG *dbsf_FileCreatePrgArray(MBT_U32 *pu32PrgNum)
{	
    FFST_FileHandle hFile;
    MBT_U32 u32FileLength;
    MBT_U32 u32LengthActual;
    MBT_U32 u32PrgSize;
    MBT_U32 u32LocCRC;
    MBT_U32 u32CalcCRC;
    MBT_S32 iPrgStructSize = sizeof(DBST_PROG);
    FFST_ErrorCode Error;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_U8 *pucBuffer;

    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Sem_DBSData_V();
        if(MM_NULL != pu32PrgNum)
        {
            *pu32PrgNum = 0;
        }
        return MM_NULL;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenRead, &hFile);
    Error=FFSF_FileSize(hFile,&u32FileLength);
    u32PrgSize = u32FileLength - m_CRCSize;
    if(u32PrgSize%iPrgStructSize)
    {
        Error = FFSF_FileClose(hFile);	
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        if(MM_NULL != pu32PrgNum)
        {
            *pu32PrgNum = 0;
        }
        return MM_NULL;
    }
    
    pucBuffer = MLMF_Malloc(u32FileLength);
    if(MM_NULL == pucBuffer)
    {
        Error = FFSF_FileClose(hFile);	
        Sem_DBSData_V();
        if(MM_NULL != pu32PrgNum)
        {
            *pu32PrgNum = 0;
        }
        return MM_NULL;
    }

    Error=FFSF_FileRead(hFile, pucBuffer, u32FileLength, &u32LengthActual);
    memcpy((MBT_U8 *)(&u32LocCRC),pucBuffer + u32PrgSize,m_CRCSize);
    u32CalcCRC = MMF_Common_CRC((MBT_U32 *)pucBuffer,(u32PrgSize>>2));
    if(u32CalcCRC != u32LocCRC)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        MLMF_Free(pucBuffer);
        if(MM_NULL != pu32PrgNum)
        {
            *pu32PrgNum = 0;
        }
        MLMF_Print("Prglist CRC check error loc %x calc %x\n",u32LocCRC,u32CalcCRC);
        return MM_NULL;
    }
    Error = FFSF_FileClose(hFile);	
    Sem_DBSData_V();
    
    if(MM_NULL != pu32PrgNum)
    {
        *pu32PrgNum = u32PrgSize/(sizeof(DBST_PROG));
    }
    return (DBST_PROG *)pucBuffer;
}




MBT_VOID dbsf_FileRemovePrg(DBST_PROG *pstPrgInfo,MBT_U32 u32PrgNum)
{
    MBT_S32 i,k;           
    MBT_U32 u32Num ;
    MBT_U32 u32FileLength;
    MBT_U32 u32LengthActual;
    MBT_U32 u32PrgSize;
    MBT_U32 u32CRC;
    MBT_S32 iPrgStructSize = sizeof(DBST_PROG);
    FFST_FileHandle hFile;
    FFST_ErrorCode Error;
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Program];
    MBT_U8 *pucBuffer;
    DBST_PROG *pstPrgNode;

    if(MM_NULL == pstPrgInfo)
    {
        return;
    }
    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Sem_DBSData_V();
        return;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenReadWrite, &hFile);
    Error=FFSF_FileSize(hFile,&u32FileLength);
    u32PrgSize = u32FileLength - m_CRCSize;
    if(u32PrgSize%iPrgStructSize)
    {
        Error = FFSF_FileClose(hFile);	
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        return;
    }

    pucBuffer = MLMF_Malloc(u32FileLength);
    if(MM_NULL == pucBuffer)
    {
        Error = FFSF_FileClose(hFile);	
        Sem_DBSData_V();
        return;
    }

    u32Num = u32PrgSize/iPrgStructSize;
    Error=FFSF_FileRead(hFile,pucBuffer, u32FileLength, &u32LengthActual);
    pstPrgNode = (DBST_PROG *)pucBuffer;
    for(k = 0;k < u32PrgNum;k++)
    {
        for(i = 0; i < u32Num; i++)
        {
            if(pstPrgNode[i].stPrgTransInfo.uBit.uiTPFreq == pstPrgInfo[k].stPrgTransInfo.uBit.uiTPFreq&&pstPrgNode[i].u16ServiceID == pstPrgInfo[k].u16ServiceID)
            {
                break;
            }
        }
        
        if(i < u32Num)
        {
            memmove(pstPrgNode+i,pstPrgNode+i+1,iPrgStructSize*(u32Num - i-1));
            u32Num--;
            u32PrgSize -= iPrgStructSize;
        }        
    }
    u32CRC = MMF_Common_CRC((MBT_U32 *)pucBuffer,(u32PrgSize>>2));
    memcpy(pucBuffer + u32PrgSize,(MBT_U8 *)(&u32CRC),m_CRCSize);
    u32FileLength = u32PrgSize + m_CRCSize;
    FFSF_FileSeek(hFile,0, FFSM_SeekBegin);
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)pucBuffer, u32FileLength, &u32LengthActual);
    Error = FFSF_FileSetEOF(hFile);
    Error = FFSF_FileClose(hFile);	
    Sem_DBSData_V();
    MLMF_Free(pucBuffer);
}



MBT_BOOL dbsf_FileGetBoxInfo (DVB_BOX *pstBoxInfo)
{
    FFST_FileHandle hFile;
    MBT_U32 u32FileLength;
    MBT_U32 u32LengthActual;
    FFST_ErrorCode Error;
    DVB_BOX_CRC stBoxInfoCRC;
    MBT_S32 iBoxStructSize = sizeof(DVB_BOX);
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Boxinfo];
    MBT_BOOL bRet;
    
    if(MM_NULL == pstBoxInfo)
    {
        return MM_FALSE;
    }
    
    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Sem_DBSData_V();
        return MM_FALSE;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenRead, &hFile);
    Error=FFSF_FileSize(hFile,&u32FileLength);
    if(u32FileLength == sizeof(DVB_BOX_CRC))
    {
        MBT_U32 u32CRC;
        Error=FFSF_FileRead(hFile, (MBT_U8 *)(&stBoxInfoCRC), u32FileLength, &u32LengthActual);
        u32CRC = MMF_Common_CRC((MBT_U32 *)(&(stBoxInfoCRC.stBoxInfo)),(iBoxStructSize>>2));
        if(u32CRC != stBoxInfoCRC.u32CRC)
        {
            MLMF_Print("BoxInfo CRC check error loc %x calc %x\n",stBoxInfoCRC.u32CRC,u32CRC);
            bRet = MM_FALSE;
        }
        else
        {
            bRet = MM_TRUE;
        }
    }
    else
    {
        bRet = MM_FALSE;
    }
    Error = FFSF_FileClose(hFile);
    if(MM_FALSE == bRet)
    {
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
    }
    else
    {
        memcpy(pstBoxInfo,&(stBoxInfoCRC.stBoxInfo),iBoxStructSize);
    }
    Sem_DBSData_V();
    return bRet;
}




MBT_VOID	dbsf_FileSetBoxInfo (DVB_BOX *pstBoxInfo)
{
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    DVB_BOX_CRC stBoxInfoCRC;
    MBT_S32 iBoxStructSize = sizeof(DVB_BOX);
    MBT_CHAR *pstrFileName = dbsv_cFilename[m_Boxinfo];
    
    if(MM_NULL == pstBoxInfo)
    {
        return;
    }

    Sem_DBSData_P();
    Error=FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile );
    if(Error == FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenWrite, &hFile);
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenCreate, &hFile);
    }
    
    memcpy(&(stBoxInfoCRC.stBoxInfo),pstBoxInfo,iBoxStructSize);
    stBoxInfoCRC.u32CRC = MMF_Common_CRC((MBT_U32 *)(&(stBoxInfoCRC.stBoxInfo)),(iBoxStructSize>>2));
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)(&stBoxInfoCRC), sizeof(DVB_BOX_CRC), &u32LengthActual);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
}


MBT_S32 dbsf_FileGetGenreList (DBS_GenreINFO *pstGenreList)
{
    FFST_FileHandle hFile;
    FFST_ErrorCode Error;
    MBT_U32 u32DataLen;
    MBT_U32 u32FileLength;
    MBT_U32 u32LengthActual;
    MBT_U32 u32LocCRC;
    MBT_U32 u32CalcCRC;
    MBT_S32 iGenreStructSize;
    MBT_CHAR *pstrFileName;
    MBT_U8 *pu8Buf;
    MBT_S32 s32Ret = 0;
    
    if(MM_NULL == pstGenreList)
    {
        return s32Ret;
    }
    
    iGenreStructSize = sizeof(DBS_GenreINFO);
    pstrFileName = dbsv_cFilename[m_GenreListFile];
    Sem_DBSData_P();
    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        Sem_DBSData_V();
        return s32Ret;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenRead, &hFile);
    Error=FFSF_FileSize(hFile,&u32FileLength);
    u32DataLen = u32FileLength - m_CRCSize;
    if(u32DataLen%iGenreStructSize)
    {
        Error = FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        return s32Ret;
    }

    pu8Buf = MLMF_Malloc(u32FileLength);
    if(MM_NULL == pu8Buf)
    {
        Error = FFSF_FileClose(hFile);
        Sem_DBSData_V();
        return s32Ret;
    }
    

    Error=FFSF_FileRead(hFile, pu8Buf, u32FileLength, &u32LengthActual);
    memcpy((MBT_U8 *)(&u32LocCRC),pu8Buf + u32DataLen,m_CRCSize);
    u32CalcCRC = MMF_Common_CRC((MBT_U32 *)pu8Buf,(u32DataLen>>2));
    if(u32CalcCRC != u32LocCRC)
    {
        MLMF_Free(pu8Buf);
        Error = FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)pstrFileName);
        Sem_DBSData_V();
        MLMF_Print("GenreInfo CRC check error loc %x calc %x\n",u32LocCRC,u32CalcCRC);
        return s32Ret;
    }

    memcpy((MBT_U8 *)pstGenreList,pu8Buf,u32DataLen);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
    MLMF_Free(pu8Buf);
    return (u32DataLen/iGenreStructSize);
}

MBT_VOID dbsf_FileSetGenreList (DBS_GenreINFO *pstGenreList,MBT_S32 s32GenreNum)
{
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    MBT_U32 u32FileLength;
    MBT_U32 u32DataLen;
    MBT_U32 u32CRC;
    MBT_S32 iGenreStructSize;
    MBT_CHAR *pstrFileName;
    MBT_U8 *pu8Buf;
    
    if(MM_NULL == pstGenreList)
    {
        return;
    }
    
    iGenreStructSize = sizeof(DBS_GenreINFO);
    pstrFileName = dbsv_cFilename[m_GenreListFile];

    Sem_DBSData_P();
    Error=FFSF_FileOpen( (MBT_CHAR *)pstrFileName , FFSM_OpenExist, &hFile );
    if(Error == FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenWrite, &hFile);
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pstrFileName  , FFSM_OpenCreate, &hFile);
    }

    u32DataLen = s32GenreNum*iGenreStructSize;
    u32FileLength = u32DataLen + m_CRCSize;
    pu8Buf = MLMF_Malloc(u32FileLength);
    if(MM_NULL == pu8Buf)
    {
        Error = FFSF_FileClose(hFile);
        Sem_DBSData_V();
        return;
    }
    
    memcpy(pu8Buf,pstGenreList,u32DataLen);
    u32CRC = MMF_Common_CRC((MBT_U32 *)pu8Buf,(u32DataLen>>2));
    memcpy(pu8Buf + u32DataLen,(MBT_U8 *)(&u32CRC),m_CRCSize);
    Error = FFSF_FileWrite(hFile,pu8Buf,u32FileLength, &u32LengthActual);
    Error = FFSF_FileSetEOF(hFile);
    Error = FFSF_FileClose(hFile);
    Sem_DBSData_V();
}



