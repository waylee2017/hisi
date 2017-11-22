#include "ui_share.h"


static MBT_U8 uiv_u8AtPlayPrgProcess = 0;
static MBT_U8 uiv_u8PrevVedioAudioState2Lock = VIDEO_STATUS;
static MBT_U8 uiv_u8PlayTimerHandle = 0xff;
static MBT_U8 uiv_u8PlayBookedChannel = PLAY_NVODPRG;
static MBT_U16 uiv_u16PrevPrgServiceID2Lock = dbsm_InvalidID;
static MBT_U16 uiv_u16PrevServiceID = dbsm_InvalidID;
static MBT_U16 uiv_u16PlayRreservedServiceID= dbsm_InvalidID;
static MBT_U32 uiv_u32PlayRreservedTrans= dbsm_InvalidTransInfo;
static MBT_U32 uiv_u32PrevPlayPrgTransInfo2Lock = dbsm_InvalidTransInfo;
static MMT_AV_VideoAspectRatio_E uiv_stAspectRatio = MM_VIDEO_ASPECT_RATIO_16_9_WIDE;

static MBT_U32 uiv_u32PlayRreservedBookDuration = 0;
static MBT_U8 uiv_u32PlayRreservedBookRecord = 0;
static MBT_BOOL uiv_u32PlayRreservedBookFlag = MM_FALSE;



static MBT_VOID uif_SetPlayTimer(MBT_VOID);


MBT_U8 uif_IsPlayProcess(MBT_VOID)
{
    return uiv_u8AtPlayPrgProcess;
}

MBT_BOOL uif_PrgRecall( MBT_VOID )
{     
    MBT_S32 ProgIndex;
    UI_PRG stProInfo;
	DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();
	
    ProgIndex = DBSF_DataCurPrgInfo ( &stProInfo );
    if ( DVB_INVALID_LINK != ProgIndex )
    {
        if((ProgIndex == pstBoxInfo->u32PrevPrgNo) && (pstBoxInfo->u16PrevServiceID4Recall == stProInfo.stService.u16ServiceID))
        {
            return MM_FALSE;
        }
        //MLMF_Print("uif_PrgRecall Play u32PrevPrgNo = %x,u16PrevServiceID4Recall = %x bVideoAudioState = %d\n",pstBoxInfo->u32PrevPrgNo,pstBoxInfo->u16PrevServiceID4Recall,pstBoxInfo->ucBit.bVideoAudioState);
        uif_PlayNewPosPrg(pstBoxInfo->u32PrevPrgNo,pstBoxInfo->u16PrevServiceID4Recall);
    }
    else
    {
        //MLMF_Print("uif_PrgRecall Can not find cur prg\n");
    }

    return MM_TRUE;
}


static MBT_VOID uif_PutPlayPrgInfo(DBST_PROG *pstPrgInfo)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    uiv_u8PrevVedioAudioState2Lock = pstBoxInfo->ucBit.bVideoAudioState;
    uiv_u32PrevPlayPrgTransInfo2Lock = pstPrgInfo->stPrgTransInfo.u32TransInfo;
    uiv_u16PrevPrgServiceID2Lock = pstPrgInfo->u16ServiceID;
}

MBT_VOID uif_ForceInputPWD(MBT_VOID)
{
    //MLMF_Print("uif_ForceInputPWD\n");
    uiv_u16PrevPrgServiceID2Lock = dbsm_InvalidID;
    uiv_u32PrevPlayPrgTransInfo2Lock = dbsm_InvalidTransInfo;
}

MBT_BOOL uif_PermitPlayLockPrg(UI_PRG *pstUIPrgInfo)
{
    MBT_BOOL bRet = MM_TRUE;
    DBST_PROG* pstProgInfo = &(pstUIPrgInfo->stService);
    static MBT_U32 uiv_stPrevLockPrgTransInfo = dbsm_InvalidTransInfo;
    static MBT_U16 uiv_stPrevLockPrgServiceID = dbsm_InvalidID;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    //MLUI_DEBUG("--->uiv_stPrevLockPrgServiceID = 0x%x uiv_u16PrevPrgServiceID2Lock = 0x%x",uiv_stPrevLockPrgServiceID,uiv_u16PrevPrgServiceID2Lock);
    if(uiv_stPrevLockPrgTransInfo != pstProgInfo->stPrgTransInfo.u32TransInfo
        ||uiv_stPrevLockPrgServiceID != pstProgInfo->u16ServiceID
        ||uiv_u16PrevPrgServiceID2Lock != uiv_stPrevLockPrgServiceID
        ||uiv_u32PrevPlayPrgTransInfo2Lock != uiv_stPrevLockPrgTransInfo)
    {
        //MLUI_DEBUG("---> Parent lock = %d",pstBoxInfo->ucBit.bParentalLockStatus);
        if(pstBoxInfo->ucBit.bParentalLockStatus)
        {
            MBT_S32 s32Ret = uif_SharePwdCheckDlg(pstBoxInfo->ucBit.unPowerOnPwd,MM_FALSE);
            if(1 == s32Ret||2 == s32Ret)
            {
                bRet = MM_TRUE;
            }
            else
            {
                bRet = MM_FALSE;
            }
			return bRet;
	    }
    }

    if(bRet)
    {
        uiv_stPrevLockPrgTransInfo = pstProgInfo->stPrgTransInfo.u32TransInfo;
        uiv_stPrevLockPrgServiceID = pstProgInfo->u16ServiceID;
    }
    return bRet;
}


static MBT_VOID PlayPrg_TimerOutCallBack(MBT_U32 u32Para[])
{
    if(0xff != uiv_u8PlayTimerHandle)
    {
        TMF_CleanDbsTimer(uiv_u8PlayTimerHandle);
        uiv_u8PlayTimerHandle = 0xff;
    }
    uiv_u8AtPlayPrgProcess = 0;
}

static MBT_VOID uif_SetPlayTimer(MBT_VOID)
{
    if(0xff != uiv_u8PlayTimerHandle)
    {
        TMF_CleanDbsTimer(uiv_u8PlayTimerHandle);
    }
    uiv_u8AtPlayPrgProcess = 1;
    uiv_u8PlayTimerHandle = TMF_SetDbsTimer(PlayPrg_TimerOutCallBack,MM_NULL,2000,m_Repeat);
}


MBT_VOID uif_DelPlayTimer(MBT_VOID)
{
    if(0xff != uiv_u8PlayTimerHandle)
    {
        TMF_CleanDbsTimer(uiv_u8PlayTimerHandle);
        uiv_u8PlayTimerHandle = 0xff;
    }
    uiv_u8AtPlayPrgProcess = 0;
}

MBT_VOID uif_SetBookedFlag(MBT_BOOL bFlag)
{
   uiv_u32PlayRreservedBookFlag = bFlag;
}

MBT_BOOL uif_GetBookedFlag(MBT_VOID)
{
    return uiv_u32PlayRreservedBookFlag;
}


 
MBT_U32 uif_GetBookedPlayDuration(MBT_VOID)
{
    return uiv_u32PlayRreservedBookDuration;
}

MBT_U8 uif_GetBookedPlayRecordFlag(MBT_VOID)
{
    return uiv_u32PlayRreservedBookRecord;
}


MBT_VOID uif_SetBookedPlayFlag(MBT_U8 u8PlayFlag)
{
    uiv_u8PlayBookedChannel = u8PlayFlag;
}

MBT_U8 uif_GetBookedPlayFlag(MBT_VOID)
{
    return uiv_u8PlayBookedChannel;
}

MBT_VOID uif_TriggerPlay(MBT_U8 u8Play,MBT_U32 u32Trans,MBT_U16 u16ServiceID, MBT_U32 secondsDuration, MBT_U8 bRecord)
{
    uif_SetBookedPlayFlag(u8Play);
	uiv_u32PlayRreservedBookFlag = MM_TRUE;
    uiv_u32PlayRreservedTrans = u32Trans;
    uiv_u16PlayRreservedServiceID = u16ServiceID;
	uiv_u32PlayRreservedBookDuration = secondsDuration;
	uiv_u32PlayRreservedBookRecord = bRecord;
    UIF_SendKeyToUi(DUMMY_KEY_BOOKED_TIMEREVENT);    
}


MBT_U8 uif_PlayBookedPrg(MBT_BOOL *pbRefresh)
{
    UI_PRG stProgInfo;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();  
    MBT_BOOL bPermit = MM_FALSE;
    MBT_U8 u8Ret = uiv_u8PlayBookedChannel;
    if(PLAY_IDEL == uiv_u8PlayBookedChannel)
    {
        return u8Ret;
    }

    uiv_u8PlayBookedChannel = PLAY_IDEL;
    if(DVB_INVALID_LINK == DBSF_DataPosPrgTransXServiceID( &stProgInfo,uiv_u32PlayRreservedTrans,uiv_u16PlayRreservedServiceID))
    {
        return u8Ret;
    }

    switch(stProgInfo.stService.cProgramType)
    {
        case STTAPI_SERVICE_TELEVISION:
        case STTAPI_SERVICE_NVOD_TIME_SHIFT:
            pstBoxInfo->ucBit.bVideoAudioState=VIDEO_STATUS;
            pstBoxInfo->u32VidTransInfo =uiv_u32PlayRreservedTrans;
            break;
        case STTAPI_SERVICE_RADIO:
            pstBoxInfo->ucBit.bVideoAudioState=AUDIO_STATUS;
            pstBoxInfo->u32AudTransInfo=uiv_u32PlayRreservedTrans;
            break;
    }


    if (LOCK_BIT_MASK == (stProgInfo.stService.ucProgram_status & LOCK_BIT_MASK))
    {
        if(uif_PermitPlayLockPrg(&stProgInfo))
        {
            bPermit = MM_TRUE;
        }
    }
    else
    {
        bPermit = MM_TRUE;
    }

    if(bPermit)
    {
        bPermit = uif_ResetAlarmMsgFlag();
        if(MM_NULL != pbRefresh)
        {
            *pbRefresh |= bPermit;
        }
        uif_PlayPrg(&stProgInfo);
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }

    return u8Ret;
}


MBT_VOID uif_SetAutoVtgAspectInfo(MBT_S32 iVtgAspectMode)
{
    uiv_stAspectRatio = iVtgAspectMode;
}

MBT_VOID UIF_StopAV(MBT_VOID)
{
    if(0xff != uiv_u8PlayTimerHandle)
    {
        TMF_CleanDbsTimer(uiv_u8PlayTimerHandle);
        uiv_u8PlayTimerHandle = 0xff;
    }
    
    if(dbsm_InvalidID != uiv_u16PrevServiceID)
    {
        uiv_u16PrevServiceID = dbsm_InvalidID;
        DBSF_PlyStopPrgPlay();
    }
}




MBT_BOOL uif_WhetherCurPrg(UI_PRG * pstProgInfo)
{
    MBT_BOOL bRet = MM_FALSE;

    if(uiv_u16PrevServiceID == pstProgInfo->stService.u16ServiceID&&pstProgInfo->stService.stPrgTransInfo.u32TransInfo == uiv_u32PrevPlayPrgTransInfo2Lock)
    {
        bRet = MM_TRUE;
    }

    return bRet;
}

MBT_S32 uif_SavePrgToBoxInfo(DBST_PROG * pstService)
{
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();  
    if(MM_NULL == pstService)
    {
        return -1;
    }

    if (VIDEO_STATUS ==pstBoxInfo->ucBit.bVideoAudioState)
    {
        if(pstBoxInfo->u32VidTransInfo != pstService->stPrgTransInfo.u32TransInfo||pstBoxInfo->u16VideoServiceID != pstService->u16ServiceID)
        {
            pstBoxInfo->u32PrevPrgNo =  pstBoxInfo->u32VidTransInfo;
            pstBoxInfo->u16PrevServiceID4Recall = pstBoxInfo->u16VideoServiceID;
            pstBoxInfo->u32VidTransInfo = pstService->stPrgTransInfo.u32TransInfo;
            pstBoxInfo->u16VideoServiceID = pstService->u16ServiceID;
	        DBSF_DataSetBoxInfo(pstBoxInfo);
        }
    }
    else
    {
        if(pstBoxInfo->u32AudTransInfo != pstService->stPrgTransInfo.u32TransInfo||pstBoxInfo->u16AudioServiceID != pstService->u16ServiceID)
        {
            pstBoxInfo->u32PrevPrgNo =  pstBoxInfo->u32AudTransInfo;
            pstBoxInfo->u16PrevServiceID4Recall = pstBoxInfo->u16AudioServiceID;
            pstBoxInfo->u32AudTransInfo = pstService->stPrgTransInfo.u32TransInfo;
            pstBoxInfo->u16AudioServiceID= pstService->u16ServiceID;
            DBSF_DataSetBoxInfo(pstBoxInfo);
        }
    } 
    return 0;    
}

MBT_S32 uif_PlayPrg(UI_PRG *pstProgInfo)
{
    DVB_BOX *pstBoxInfo;
    TRANS_INFO *pstPrgTransInfo;
    DBST_PROG *pstService;
    MBT_U8 ucCurVolume ;   
    MBT_U8 ucTemp ;   
    MBT_U16 u16LogicNum;
    MBT_CHAR string[8];
    static MBT_U8 u8PrevPlayedType = 0xff;

    if(MM_NULL == pstProgInfo)
    {
        return -1;
    }
    

    pstService = &(pstProgInfo->stService);   
    if(u8PrevPlayedType != pstService->cProgramType)
    {
        DBSF_StopAllFilter();
        u8PrevPlayedType = pstService->cProgramType;
    }
    pstBoxInfo = DBSF_DataGetBoxInfo();      
    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        DBSF_PlyOpenVideoWin(MM_FALSE);
        UIF_StopAudioIframe();
    }
    else
    {
        if(UIF_GetPlayAudioIframeStatus() == MM_FALSE)
        {
            DBSF_PlyOpenVideoWin(MM_FALSE); //ÖÃ»»×´Ì¬£¬·ñÔò²»»áopen windows
            UIF_PlayAudioIframe();
            DBSF_PlyOpenVideoWin(MM_TRUE);
        }
    }

    ucCurVolume = pstBoxInfo->ucBit.u8AudioTrack;
    MLMF_AV_SetAudioMode(ucCurVolume);
 #if (1 == USE_GLOBLEVOLUME)
    ucCurVolume = pstBoxInfo->ucBit.cVolLevel%33;
 #else
    ucCurVolume = pstService->u8Volume%33;
 #endif   
    UIF_SetVolume (ucCurVolume, ucCurVolume, 0);
    DBSF_PlyStartPrgPlay(pstService);    
    uif_SetPlayTimer();
    u16LogicNum = pstProgInfo->u16LogicNum;
    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState )
    {
        ucTemp = sprintf(string,"P%03d",(u16LogicNum%1000));
    }
    else
    {
        ucTemp = sprintf(string,"A%03d",(u16LogicNum%1000));
    }
    MLMF_FP_Display(string,ucTemp,MM_FALSE);
    uiv_u16PrevServiceID = pstService->u16ServiceID;
    if(uiv_u16PrevPrgServiceID2Lock != uiv_u16PrevServiceID)
    {
        pstBoxInfo->u32PrevPrgNo =  uiv_u32PrevPlayPrgTransInfo2Lock;
        pstBoxInfo->u16PrevServiceID4Recall = uiv_u16PrevPrgServiceID2Lock;
        //MLMF_Print("uif_PlayPrg u16ServiceID = %x u32PrevPrgNo = %x,u16PrevServiceID4Recall = %x bVideoAudioState = %d\n",pstService->u16ServiceID,pstBoxInfo->u32PrevPrgNo,pstBoxInfo->u16PrevServiceID4Recall,pstBoxInfo->ucBit.bVideoAudioState);
    }

    pstPrgTransInfo = (TRANS_INFO *)(&uiv_u32PrevPlayPrgTransInfo2Lock);

    if (VIDEO_STATUS ==pstBoxInfo->ucBit.bVideoAudioState)
    {
        if(pstBoxInfo->u32VidTransInfo != pstService->stPrgTransInfo.u32TransInfo||pstBoxInfo->u16VideoServiceID != pstService->u16ServiceID)
        {
            pstBoxInfo->u32VidTransInfo = pstService->stPrgTransInfo.u32TransInfo;
            pstBoxInfo->u16VideoServiceID = pstService->u16ServiceID;
        }
    }
    else
    {
        if(pstBoxInfo->u32AudTransInfo != pstService->stPrgTransInfo.u32TransInfo||pstBoxInfo->u16AudioServiceID != pstService->u16ServiceID)
        {
            pstBoxInfo->u32AudTransInfo = pstService->stPrgTransInfo.u32TransInfo;
            pstBoxInfo->u16AudioServiceID= pstService->u16ServiceID;
        }
    }
    uif_PutPlayPrgInfo(pstService);
    DBSF_MntStartHeatBeat(BEARTRATE,MM_FALSE,uif_GetDbsMsg);
    return 0;    
}
