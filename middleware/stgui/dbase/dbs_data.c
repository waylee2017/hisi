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

/*-------------------------------Constants---------------------------------------*/


/*--------------------------------External Functions------------------------------*/
static MBT_U8 dbsv_u8DataBoxInit = 0;
static DVB_BOX  dbsv_stBoxInfo;
static TRANS_INFO dbsv_stTransInfo = {0};


static MBT_VOID  DataInitBoxInfo (DVB_BOX *pstBoxInfo) 
{
    memset( pstBoxInfo , 0 ,sizeof( DVB_BOX ) ) ; 
    pstBoxInfo->ucBit.bMuteState = 0;				/* Mute state 1= NO_MUTE 0= MUTE */
    pstBoxInfo->ucBit.cVolLevel = dbsm_defaultVolume;
    pstBoxInfo->ucBit.unPowerOnPwd = 0;
    pstBoxInfo->ucBit.u32PrgListType = m_ChannelList;
    pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_AUTO;
    pstBoxInfo->ucBit.TranNum = 0 ;
    pstBoxInfo->ucBit.bParentalLockStatus = MM_TRUE;		/* 0 = video */
    pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS;		/* 0 = video */
    pstBoxInfo->ucProgramVer = 0x3f;
    pstBoxInfo->ucBit.ucDlgDispTime = 4;//default dlg display time is 4 second
    pstBoxInfo->u32VidTransInfo = dbsm_InvalidTransInfo ;
    pstBoxInfo->u32AudTransInfo = dbsm_InvalidTransInfo ;
    pstBoxInfo->u16PrevServiceID4Recall = dbsm_InvalidID;
    pstBoxInfo->u16StartUpChannel = dbsm_InvalidID;
    pstBoxInfo->u16NetWorkID = dbsm_InvalidID;
    pstBoxInfo->u16VideoServiceID = dbsm_InvalidID;
    pstBoxInfo->u16AudioServiceID= dbsm_InvalidID;
    pstBoxInfo->u32PrevPrgNo = dbsm_InvalidTransInfo;
    pstBoxInfo->ucBit.u8AudioTrack  = 0;
    
    pstBoxInfo->ucBit.iVideoMode =  MM_AV_RESOLUTION_1080i_P ;
    pstBoxInfo->ucBit.Language_type = ENG_LANGUAGE_NO; /*DEFAULT_LANGUAGE;*/  /*ENG_LANGUAGE_NO ;*/
#if(1 == TFCONFIG)  
    pstBoxInfo->ucBit.TimeZone = TIME_ZONE_A08_00 ;
#else
    pstBoxInfo->ucBit.TimeZone = TIME_ZONE_A05_30 ;
#endif   
    pstBoxInfo->videoBrightness = DEFAULT_BRIGHTNESS;
    pstBoxInfo->videoContrast=DEFAULT_CONSTRACT;
    pstBoxInfo->videoSaturation=DEFAULT_SATURATION;
    pstBoxInfo->videoSharpness  = DEFAULT_SHARPNESS;
    pstBoxInfo->videoHue        = DEFAULT_HUE;
#if (1 == TFCONFIG)    
    pstBoxInfo->ucBit.ISO_CurLanguageCode=(('g'<<16)|('o'<<8)|('h'));
#else    
    pstBoxInfo->ucBit.ISO_CurLanguageCode=(('b'<<16)|('u'<<8)|('r'));//bur ÎªÃåµéÓï 
#endif   
    pstBoxInfo->ucBit.u8Reserved=0;
    pstBoxInfo->ucBit.ucNetWorkLock = 0;
    pstBoxInfo->ucBit.u8LCNOnOff = 1;
    dbsv_u8DataBoxInit = 0;
}

static MBT_U8 DataCheckTP(TRANS_INFO *pstTp)
{
    if(pstTp->uBit.uiTPFreq > 862||pstTp->uBit.uiTPFreq < 47||pstTp->uBit.uiTPQam > MM_TUNER_QAM_256||pstTp->uBit.uiTPSymbolRate > 6900)
    {
        return 0;
    }
    
    return 1;
}


static MBT_VOID DataWriteMainFreq(TRANS_INFO *pstFreq)
{
    MBT_U8 *pBuffer = MM_NULL;
    TRANS_INFO stTemp;

    if(0 == DataCheckTP(pstFreq))
    {
        return;
    }

    FLASHF_Read(MAIN_FREQ_BASE_ADDR,&stTemp, MAIN_FREQ_SIZE);  
    if(pstFreq->u32TransInfo == stTemp.u32TransInfo)
    {
        return;
    }

    if(dbsm_InvalidTransInfo == stTemp.u32TransInfo)
    {
    	FLASHF_ForceSaveFile(MAIN_FREQ_BASE_ADDR,(MBT_VOID*)pstFreq, MAIN_FREQ_SIZE);
        return;
    }
    
    pBuffer = MLMF_Malloc(FLASH_MAINBLOCK_SIZE);
    if(MM_NULL == pBuffer)
    {
        return;
    }

    FLASHF_Read(SW_UPDATE_PARA_BASE_ADDR, pBuffer, FLASH_MAINBLOCK_SIZE);
    FLASHF_ErasePartition(SW_UPDATE_PARA_BASE_ADDR, FLASH_MAINBLOCK_SIZE);
    memcpy(&pBuffer[FLASH_MAINBLOCK_SIZE - MAIN_FREQ_SIZE], pstFreq, sizeof(TRANS_INFO));
    FLASHF_ForceSaveFile(SW_UPDATE_PARA_BASE_ADDR,(MBT_VOID*)pBuffer,  FLASH_MAINBLOCK_SIZE); 
    MLMF_Free(pBuffer);
}



static MBT_VOID DataCreatePrgList(MBT_VOID)
{	
    DBST_PROG *pstServiceInfo;
    MBT_U32 u32Num;
    
    if(0 == dbsf_ListIsFreeed())
    {
        return;
    }
    
    pstServiceInfo = dbsf_FileCreatePrgArray(&u32Num);
    if(0 == u32Num)
    {
        dbsf_ListFreePrgList();
    }
    else
    {
        dbsf_ListPutNode2PrgList(u32Num,pstServiceInfo);
    }
    
    if(MM_NULL != pstServiceInfo)
    {
        MLMF_Free(pstServiceInfo);
    }
}

static DVB_BOX *DataGetBoxInfo (MBT_VOID)
{
    if(0 == dbsv_u8DataBoxInit)
    {
        if(MM_FALSE == dbsf_FileGetBoxInfo(&dbsv_stBoxInfo))
        {
            DataInitBoxInfo(&dbsv_stBoxInfo);
        }
        
        if(1 == dbsv_stBoxInfo.ucBit.u8LCNOnOff)
        {
            dbsf_ListLCNOn();
        }
        else
        {
            dbsf_ListLCNOff();
        }
        
        dbsv_u8DataBoxInit = 1;
    }
    return (&dbsv_stBoxInfo);
}

static MBT_VOID	DataSetBoxInfo (DVB_BOX *pstBoxInfo)
{
    if((&dbsv_stBoxInfo) != pstBoxInfo)
    {
        memcpy((&dbsv_stBoxInfo),pstBoxInfo,sizeof(DVB_BOX));
    }
    dbsf_FileSetBoxInfo(pstBoxInfo);
}



MBT_S32 dbsf_DataSrchStorePrg(DBSE_StoreType eSaveMode)
{
    MBT_S32 iProgSaved = 0;
    DBST_PROG *pstPrgArray;
    //MLMF_Print("dbsf_DataSrchStorePrg eSaveMode = %d\n",eSaveMode);
    pstPrgArray = dbsf_ListSrchCheck2CreatePrgArray(&iProgSaved);
    if(MM_NULL != pstPrgArray)
    {
        if(m_ResetAdd_Prg == eSaveMode)
        {
            //MLMF_Print("dbsf_FileOverWritePrg2File\n");
            iProgSaved = dbsf_FileOverWritePrg2File(pstPrgArray,iProgSaved);
        }
        else
        {
            iProgSaved = dbsf_FilePutPrg2File(pstPrgArray,iProgSaved);
        }
        OSPFree(pstPrgArray);
        //MLMF_Print("dbsf_ListFreePrgList\n");
        dbsf_ListFreePrgList();
        //MLMF_Print("DataCreatePrgList\n");
        DataCreatePrgList();
    }
    //MLMF_Print("dbsf_DataSrchStorePrg iProgSaved = %d\n",iProgSaved);
    return iProgSaved;
}


MBT_VOID dbsf_DataSaveBatInfo(MBT_VOID)
{
    DBS_GenreINFO *pstGenreList;
    MBT_S32 s32Num;
    
    if(MM_TRUE == dbsf_GenreListGetUpdatedStatus())
    {
        s32Num = dbsf_GenreListGetListNum();
        if(0 == s32Num)
        {
            return;
        }
        pstGenreList = MLMF_Malloc(s32Num*sizeof(DBS_GenreINFO));
        if(MM_NULL == pstGenreList)
        {
            return;
        }
        
        s32Num = dbsf_GenreListGetArrayFromList(pstGenreList);
        if(0 != s32Num)
        {
            dbsf_FileSetGenreList(pstGenreList,s32Num);
        }
        MLMF_Free(pstGenreList);
        dbsf_GenreListSyncUpdatedStatus();
    }    
}



MBT_VOID dbsf_DataRmvAllFile (MBT_VOID) 
{
    dbsf_TPListFreeNitCachList();
    dbsf_ListFreePrgList();
    dbsf_TPListFreeTransList();
    DataInitBoxInfo(&dbsv_stBoxInfo);
    dbsf_FileRmvAllFile();
}



MBT_S32 DBSF_DataGetGenreListNum(MBT_VOID)
{
    DBS_GenreINFO *pstGenreList;
    MBT_S32 s32Ret;
    s32Ret = dbsf_GenreListGetListNum();
    if(0 != s32Ret)
    {
        return s32Ret;
    }
    
    pstGenreList = MLMF_Malloc(dbsm_GtplMaxGenreNum*sizeof(DBS_GenreINFO));
    if(MM_NULL == pstGenreList)
    {
        return s32Ret;
    }
    
    s32Ret = dbsf_FileGetGenreList(pstGenreList);
    if(0 != s32Ret)
    {
        s32Ret = dbsf_GenreListCreateList(pstGenreList,s32Ret);
    }
    MLMF_Free(pstGenreList);
    return s32Ret;
}


MBT_S32 DBSF_DataGetGenreList(DBS_GenreINFO *pstGenreList)
{
    MBT_S32 s32Num;
    if(MM_NULL == pstGenreList)
    {
        return 0;
    }

    if(0 != dbsf_GenreListGetListNum())
    {
        return dbsf_GenreListGetArrayFromList(pstGenreList);
    }

    s32Num = dbsf_FileGetGenreList(pstGenreList);
    if(0 != s32Num)
    {
        s32Num = dbsf_GenreListCreateList(pstGenreList,s32Num);
    }
    return s32Num;
}


MBT_BOOL DBSF_DataGetSpecifyIDGenreNode(DBS_GenreINFO *pstGenreNode,MBT_U16 u16BouquetID)
{
    DBS_GenreINFO *pstGenreList;
    MBT_BOOL bRet = MM_FALSE;
    MBT_S32 s32Num,i;

    if(MM_NULL == pstGenreNode)
    {
        return bRet;
    }

    if(0 != dbsf_GenreListGetListNum())
    {
        return dbsf_GenreListGetSpecifyIDGenreNode(pstGenreNode,u16BouquetID);
    }

    pstGenreList = MLMF_Malloc(dbsm_GtplMaxGenreNum*sizeof(DBS_GenreINFO));
    if(MM_NULL == pstGenreList)
    {
        return bRet;
    }

    s32Num = dbsf_FileGetGenreList(pstGenreList);
    if(0 != s32Num)
    {
        dbsf_GenreListCreateList(pstGenreList,s32Num);
        for(i = 0;i < s32Num;i++)
        {
            if(pstGenreList[i].u16BouquetID == u16BouquetID)
            {
                *pstGenreNode = pstGenreList[i];
                bRet = MM_TRUE;
                break;
            }
        }
    }
    MLMF_Free(pstGenreList);
    return bRet;
}

MBT_BOOL DBSF_DataHaveVideoPrg( MBT_VOID )
{
    if(MM_TRUE == dbsf_ListHaveVideoPrg())
    {
        return MM_TRUE;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return MM_FALSE;
    }

    DataCreatePrgList();
    return dbsf_ListHaveVideoPrg();
}

MBT_BOOL DBSF_DataHaveFavVideoPrg( MBT_VOID )
{
    if(MM_TRUE == dbsf_ListHaveFavVideoPrg())
    {
        return MM_TRUE;
    }
    if(0 == dbsf_ListIsFreeed())
    {
        return MM_FALSE;
    }
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    return dbsf_ListHaveFavVideoPrg();
}

MBT_BOOL DBSF_DataHaveRadioPrg( MBT_VOID )
{
    if(MM_TRUE == dbsf_ListHaveRadioPrg())
    {
        return MM_TRUE;
    }
    if(0 == dbsf_ListIsFreeed())
    {
        return MM_FALSE;
    }
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    return dbsf_ListHaveRadioPrg();
}

MBT_BOOL DBSF_DataHaveFavRadioPrg( MBT_VOID )
{
    if(MM_TRUE == dbsf_ListHaveFavRadioPrg())
    {
        return MM_TRUE;
    }
    if(0 == dbsf_ListIsFreeed())
    {
        return MM_FALSE;
    }
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    return dbsf_ListHaveFavRadioPrg();
}


MBT_VOID DBSF_DataPrgEdit (DBST_PROG *pstService)
{	
    dbsf_ListPrgEdit(pstService);
    dbsf_FilePrgEdit(pstService);
}


/*****************************************************************************************************
  * PURPOSE		:	Read a program info by the specified Index.
 *****************************************************************************************************/
MBT_S32 DBSF_DataCreatePrgArray(DBST_PROG *pstPrgInfo,MBT_U32 u32MaxPrgNum)
{	
    DBST_PROG *pstServiceInfo;
    MBT_S32 u32Num = 0;
    MBT_U32 u32VirtNum = 0;
    MBT_U32 i;

    if(MM_NULL == pstPrgInfo)
    {
        return u32VirtNum;
    }
    
    pstServiceInfo = dbsf_ListCreatePrgArray(&u32Num);
    if(MM_NULL == pstServiceInfo)
    {
        return u32VirtNum;
    }
    
    for(i = 0;i < u32Num;i++)
    {
        if(dbsm_InvalidLCN != pstServiceInfo[i].usiChannelIndexNo)
        {
            pstPrgInfo[u32VirtNum] = pstServiceInfo[i];
            u32VirtNum++;
            if(u32VirtNum >= u32MaxPrgNum)
            {
                break;
            }
        }
    }
        
    MLMF_Free(pstServiceInfo);
    return u32VirtNum;
}




MBT_VOID	DBSF_DataRebuildPrgOrder (DBST_PROG *pstService,MBT_U32 u32PrgNum)
{
    dbsf_ListFreePrgList();
    dbsf_FileOverWritePrg2File(pstService,u32PrgNum);
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
}

MBT_VOID	DBSF_DataRmvPrg(DBST_PROG *pstServiceInfo,MBT_U32 u32PrgNum)
{
    dbsf_FileRemovePrg(pstServiceInfo,u32PrgNum);
    dbsf_ListFreePrgList();
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
}


DVB_BOX *DBSF_DataGetBoxInfo (MBT_VOID)
{
    return DataGetBoxInfo();
}

MBT_VOID	DBSF_DataSetBoxInfo (DVB_BOX *pstBoxInfo)
{
    DataSetBoxInfo(pstBoxInfo);
}




MBT_VOID DBSF_DataReadMainFreq(TRANS_INFO *pstFreq)
{
    if(MM_NULL == pstFreq)
    {
        return;
    }

    if(0 == dbsv_stTransInfo.u32TransInfo)
    {
        FLASHF_Read(MAIN_FREQ_BASE_ADDR,pstFreq,MAIN_FREQ_SIZE);
        if(0 == DataCheckTP(pstFreq))
        {
            pstFreq->uBit.uiTPFreq = m_MainFrenq;
            pstFreq->uBit.uiTPSymbolRate = m_MainSymbelRate;
            pstFreq->uBit.uiTPQam= m_MainModulation;
            DataWriteMainFreq(pstFreq);
        }

        dbsv_stTransInfo.u32TransInfo = pstFreq->u32TransInfo;
    }
    else
    {
        pstFreq->u32TransInfo = dbsv_stTransInfo.u32TransInfo;
    }
}


MBT_VOID DBSF_DataWriteMainFreq(TRANS_INFO *pstFreq)
{
    if(MM_NULL != pstFreq)
    {
        dbsv_stTransInfo.u32TransInfo = pstFreq->u32TransInfo;
        DataWriteMainFreq(pstFreq);
    }
}


MBT_VOID DBSF_DataWriteUsbUpdateInfo(MBT_CHAR *pstrFileName)
{
    MBT_U8 *pBuffer = MM_NULL;
    MBT_U8 *pPos;
    MBT_U8 u8SBuffer[100];
    MBT_U32 i;
    return;
    if(MM_NULL == pstrFileName)
    {
        return;
    }

    FLASHF_Read(SW_USB_UPDATE_FLAG_BASE_ADDR,u8SBuffer, SW_USB_UPDATE_FLAG_SIZE+SW_USB_UPDATE_FILE_NAME_SIZE);  
    for(i = 0;i < SW_USB_UPDATE_FLAG_SIZE+SW_USB_UPDATE_FILE_NAME_SIZE;i++)
    {
        if(0xff != u8SBuffer[i])
        {
            break;
        }
    }
    
    if(SW_USB_UPDATE_FLAG_SIZE+SW_USB_UPDATE_FILE_NAME_SIZE <= i)
    {
        pPos = u8SBuffer;
        pPos[0] = 'U';
        pPos[1] = 'S';
        pPos[2] = 'B';
        pPos[3] = 0;
        sprintf((MBT_CHAR *)&pPos[4],"%s",pstrFileName);
        FLASHF_ForceSaveFile(SW_USB_UPDATE_FLAG_BASE_ADDR,(MBT_VOID*)pPos, SW_USB_UPDATE_FLAG_SIZE+SW_USB_UPDATE_FILE_NAME_SIZE);
        return;
    }
    
    pBuffer = MLMF_Malloc(FLASH_MAINBLOCK_SIZE);
    if(MM_NULL == pBuffer)
    {
        DBS_DEBUG(("Error: not enought mem in DBSF_DataReadMainFreq\n"));
        return;
    }

    FLASHF_Read(SW_UPDATE_PARA_BASE_ADDR, pBuffer, FLASH_MAINBLOCK_SIZE);
    pPos = &pBuffer[SW_USB_UPDATE_FLAG_BASE_ADDR - SW_UPDATE_PARA_BASE_ADDR];
    pPos[0] = 'U';
    pPos[1] = 'S';
    pPos[2] = 'B';
    pPos[3] = 0;
    sprintf((MBT_CHAR *)&pPos[4],"%s",pstrFileName);
    FLASHF_ErasePartition(SW_UPDATE_PARA_BASE_ADDR, FLASH_MAINBLOCK_SIZE);
    FLASHF_ForceSaveFile(SW_UPDATE_PARA_BASE_ADDR,(MBT_VOID*)pBuffer,  FLASH_MAINBLOCK_SIZE); 
    MLMF_Free(pBuffer);
}



MBT_VOID DBSF_DataWriteDirectUpdatePara(OTA_DIRECT_UPDATE_PARA *pstDirect)
{
    MBT_U8 *pBuffer = MM_NULL;
    MBT_U8 cBuffer[100];
    MBT_U32 i;
    return;
    if(0 == DataCheckTP(&pstDirect->stUpdateTransInfo))
    {
        return;
    }

    FLASHF_Read(SW_DIRECT_UPDATE_FLAG_BASE_ADDR,cBuffer, SW_DIRECT_UPDATE_FLAG_SIZE+SW_DIRECT_UPDATE_PARA_SIZE);  
    for(i = 0;i < SW_DIRECT_UPDATE_FLAG_SIZE+SW_DIRECT_UPDATE_PARA_SIZE;i++)
    {
        if(0xff != cBuffer[i])
        {
            break;
        }
    }
    
    if(SW_DIRECT_UPDATE_FLAG_SIZE+SW_DIRECT_UPDATE_PARA_SIZE <= i)
    {
        cBuffer[0] = 'O';
        cBuffer[1] = 'T';
        cBuffer[2] = 'A';
        cBuffer[3] = 0;
        memcpy(&cBuffer[4],pstDirect,SW_DIRECT_UPDATE_PARA_SIZE);
        FLASHF_ForceSaveFile(SW_DIRECT_UPDATE_FLAG_BASE_ADDR,(MBT_VOID*)cBuffer,SW_DIRECT_UPDATE_FLAG_SIZE+SW_DIRECT_UPDATE_PARA_SIZE);
        return;
    }

    pBuffer = MLMF_Malloc(FLASH_MAINBLOCK_SIZE);
    if(MM_NULL == pBuffer)
    {
        return;
    }

    FLASHF_Read(SW_UPDATE_PARA_BASE_ADDR, pBuffer, FLASH_MAINBLOCK_SIZE);
    FLASHF_ErasePartition(SW_UPDATE_PARA_BASE_ADDR, FLASH_MAINBLOCK_SIZE);
    strcpy((MBT_CHAR *)pBuffer, "OTA");
    pBuffer[3] = 0x00;
    memcpy(&pBuffer[4], pstDirect, SW_DIRECT_UPDATE_PARA_SIZE);
    FLASHF_ForceSaveFile(SW_UPDATE_PARA_BASE_ADDR,(MBT_VOID*)pBuffer, FLASH_MAINBLOCK_SIZE); 
    MLMF_Free(pBuffer);
}

MBT_VOID DBSF_DataGetDirectUpdatePara(OTA_DIRECT_UPDATE_PARA *pstDirect)
{
    if(MM_NULL == pstDirect)
    {
        return;
    }

    FLASHF_Read(SW_DIRECT_UPDATE_TP_ADDR,(MBT_VOID *)pstDirect, SW_DIRECT_UPDATE_PARA_SIZE);  

    if(m_OtaInfoValidMark != pstDirect->u8Valid)
    {
        TRANS_INFO stTransInfo =  {(306) + (MM_TUNER_QAM_64 << 13) + (6875 << 16)};
        //MLMF_Print("DBSF_DataGetDirectUpdatePara u8Valid %x\n",pstDirect->u8Valid);
        pstDirect->stUpdateTransInfo.u32TransInfo = stTransInfo.u32TransInfo;
        pstDirect->u16PID = 6000;
        pstDirect->u8Valid = m_OtaInfoValidMark;        
    }
}



MBT_S32 DBSF_DataPosPrgTransXServiceID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListPosPrgTransXServiceID(pstPrgInfo,u32TransInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        //MLMF_Print("%s usiChannelIndexNo %x\n",__func__,pstPrgInfo->stService.usiChannelIndexNo);
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;
        }
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        //MLMF_Print("%s iRet %x\n",__func__,iRet);
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListPosPrgTransXServiceID(pstPrgInfo,u32TransInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;
        }
    }
    return iRet;
}



MBT_S32 DBSF_DataPosPrg2XLCN(MBT_S32 iPrgLCN,UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListPosPrg2XLCN(iPrgLCN,pstPrgInfo,u8TVRadioType);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;
        }
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListPosPrg2XLCN(iPrgLCN,pstPrgInfo,u8TVRadioType);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;
        }
    }
    return iRet;
}




 MBT_S32 DBSF_DataPos2NextUnlockPrg(UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType)
 {
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListPos2NextUnlockPrg(pstPrgInfo,u8TVRadioType);
    if(DVB_INVALID_LINK != iRet)
    {
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListPos2NextUnlockPrg(pstPrgInfo,u8TVRadioType);
    return iRet;
}

 



/*======================================================================================
 * CODE		  :	DBSF_DataPrevPrgInfo
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataPrevPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 u8TVRadioType)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListPrevPrgInfo(pstPrgInfo,u8TVRadioType);
    if(DVB_INVALID_LINK != iRet)
    {
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListPrevPrgInfo(pstPrgInfo,u8TVRadioType);
    return iRet;
}




/*======================================================================================
 * CODE		  :	DBSF_DataNextPrgInfo
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataNextPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 u8TVRadioType)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListNextPrgInfo(pstPrgInfo,u8TVRadioType);
    if(DVB_INVALID_LINK != iRet)
    {
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListNextPrgInfo(pstPrgInfo,u8TVRadioType);
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
MBT_S32 DBSF_DataGetPrgByServiceID(UI_PRG * pstPrgInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListGetPrgByServiceID(pstPrgInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;
        }
        return iRet;
    }

    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList u16ServiceID %x\n",__func__,u16ServiceID);
    DataCreatePrgList();
    iRet = dbsf_ListGetPrgByServiceID(pstPrgInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;;
        }
    }
    //MLMF_Print("%s iRet %x\n",__func__,iRet);
    return iRet;
}

/*======================================================================================
 * CODE		  :	DBSF_DataGetPrgTransXPID
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataGetPrgTransXPID(UI_PRG * pstPrgInfo,MBT_U32 u32TransInfo,MET_PTI_PID_T stVideoPID,MET_PTI_PID_T stAudioPID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListGetPrgTransXPID(pstPrgInfo,u32TransInfo,stVideoPID,stAudioPID);
    if(DVB_INVALID_LINK != iRet)
    {
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListGetPrgTransXPID(pstPrgInfo,u32TransInfo,stVideoPID,stAudioPID);
    return iRet;
}


/*======================================================================================
 * CODE		  :	DBSF_DataGetPrgArrayTransX
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataGetPrgArrayTransX(MBT_U32 u32TransInfo,UI_PRG *pstPrgInfo,MBT_U32 u32ArrayLen)
{
    MBT_S32 s32PgNum;
    if(MM_NULL == pstPrgInfo)
    {
        return 0;
    }

    s32PgNum = dbsf_ListGetPrgArrayTransX(u32TransInfo,pstPrgInfo,u32ArrayLen);
    if(0 != s32PgNum)
    {
        return s32PgNum;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return s32PgNum;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    s32PgNum = dbsf_ListGetPrgArrayTransX(u32TransInfo,pstPrgInfo,u32ArrayLen);
    return s32PgNum;
}


/*======================================================================================
 * CODE		  :	DBSF_DataCurPrgInfo
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataCurPrgInfo(UI_PRG * pstPrgInfo)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListCurPrgInfo(pstPrgInfo);
    if(DVB_INVALID_LINK != iRet)
    {
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListCurPrgInfo(pstPrgInfo);
    return iRet;
}


/*****************************************************************************************************
  * PURPOSE		:	Read a program info by the specified Index.
 *****************************************************************************************************/
MBT_S32 DBSF_DataGetListPrgNum(MBT_VOID)
{
    MBT_S32 s32PgNum;
    s32PgNum = dbsf_ListGetVirtLisPrgNum();
    if(0 != s32PgNum)
    {
        return s32PgNum;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return s32PgNum;
    }
    DataCreatePrgList();
    s32PgNum = dbsf_ListGetVirtLisPrgNum();
    return s32PgNum;
}



/*======================================================================================
 * CODE		  :	DBSF_DataGetPrgTransXServicID
 * TYPE		  :	subroutine
 * PURPOSE	  :
 *	read the current program information from the database
 *
 *	THEORY OF OPERATION:
  *	2. return to the caller with address of the current program record
 *=======================================================================================================*/
MBT_S32 DBSF_DataGetPrgTransXServicID(UI_PRG * pstPrgInfo,MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    iRet = dbsf_ListGetPrgTransXServicID(pstPrgInfo,u32TransInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;;
        }
        return iRet;
    }
    
    if(0 == dbsf_ListIsFreeed())
    {
        return iRet;
    }
    
    //MLMF_Print("%s DataCreatePrgList\n",__func__);
    DataCreatePrgList();
    iRet = dbsf_ListGetPrgTransXServicID(pstPrgInfo,u32TransInfo,u16ServiceID);
    if(DVB_INVALID_LINK != iRet)
    {
        if(dbsm_InvalidLCN == pstPrgInfo->stService.usiChannelIndexNo)
        {
            iRet = DVB_INVALID_LINK;;
        }
    }
    return iRet;
}

MBT_VOID DBSF_DataLCNOn(MBT_VOID)
{
    DVB_BOX *pstBoxInfo = DataGetBoxInfo();
    if(1 == pstBoxInfo->ucBit.u8LCNOnOff)
    {
        return;
    }
    dbsf_ListFreePrgList();
    dbsf_ListLCNOn();
    DataCreatePrgList();
    pstBoxInfo->ucBit.u8LCNOnOff = 1;
    DataSetBoxInfo(pstBoxInfo);
}

MBT_VOID DBSF_DataLCNOff(MBT_VOID)
{
    DVB_BOX *pstBoxInfo = DataGetBoxInfo();
    if(0 == pstBoxInfo->ucBit.u8LCNOnOff)
    {
        return;
    }
    dbsf_ListFreePrgList();
    dbsf_ListLCNOff();
    DataCreatePrgList();
    pstBoxInfo->ucBit.u8LCNOnOff = 0;
    DataSetBoxInfo(pstBoxInfo);
}


