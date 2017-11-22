#include "ui_share.h"
#include "ffs.h" 

enum 
{
    OSD_VIEWPORT_1,
    OSD_VIEWPORT_2,
    MAX_OSDVIEPORT
};

#define SELECT_DLG_BTN_MARGIN 40 //选择对话框，距离左右边界的距离
#define EPG_SELECT_DLG_BTM_MARGIN (SELECT_DLG_BTN_MARGIN-20)
#define SELECT_DLG_BTN_MARGIN_BOTTOM 30 //选择对话框，距离底部边界的距离

static MBT_U8 uiv_u8CurScreenWorkVideoMode = MM_AV_RESOLUTION_AUTO;
static MBT_U8 uiv_u8ShareRedrawStartupBar = MM_TRUE;
static MBT_S32 uiv_iCurScreenAspectRation = DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3;
static MBT_BOOL uiv_ubAddMainMenuFlag = MM_FALSE;

#if(1 == M_CDCA) 
static SCDCALockService  uiv_stLockServiceInfo;
#endif
MBT_U8 uiv_u8Language = ENG_LANGUAGE_NO;//英语
MET_PTI_PID_T uiv_stCaPassedEcmPid = cam_InvalidPID;
CHANNEL_EDIT *uiv_pstPrgEditList = MM_NULL;
UI_PRGLIST uiv_PrgList = {0,MM_NULL};
UI_MSGBARCTR  uiv_stMsgBar[MAX_ALARM_MSG];
static BITMAPTRUECOLOR g_stFramBmpWaterLogo;
static MBT_BOOL bIsShowWaterLogo = MM_FALSE;
static MBT_BOOL g_bIsPlayAudioIframe = MM_FALSE;


MBT_VOID UIF_SetAddMainMenuFlag(MBT_BOOL bflag)
{
    uiv_ubAddMainMenuFlag = bflag;
}

MBT_BOOL UIF_GetAddMainMenuFlag(MBT_VOID)
{
    return uiv_ubAddMainMenuFlag;
}
 
MBT_VOID UIF_InitOSDLauguage(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    uiv_u8Language = pstBoxInfo->ucBit.Language_type;
    if( ENG_LANGUAGE_NO < uiv_u8Language )
    {
        pstBoxInfo->ucBit.Language_type = ENG_LANGUAGE_NO;  // chinese
        uiv_u8Language = ENG_LANGUAGE_NO;
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }
}


MBT_VOID uif_InitOSDParas(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();     
    MLMF_OSD_SetOSDAlpha((135+(4-pstBoxInfo->ucBit.TranNum)*30));      
    MLMF_AV_SetMute(MM_TRUE);
    UIF_TvSystemTogFunction(pstBoxInfo->ucBit.iVideoMode);
    if(0 == pstBoxInfo->ucBit.bMuteState)
    {
        MLMF_AV_SetMute(MM_FALSE);
    }
    uiv_u8ShareRedrawStartupBar = MM_TRUE;
    MLMF_AV_SetAspectRatio(pstBoxInfo->ucBit.uAspectRatio);                
}


MBT_VOID UIF_TvSystemTogFunction(MMT_AV_HDResolution_E iTemp )  // for ipanel
{
    if(MM_AV_RESOLUTION_AUTO == iTemp)
    {
        return;
    }
 	//unsigned char pbBootLogo;
    uiv_u8CurScreenWorkVideoMode = iTemp;
    MLMF_AV_SetHDOutVideoMode(iTemp);
   // MLMF_AV_SetVideoMode(stVoutMode);
}


 
MBT_VOID uif_InitMenuResource(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    EPG_TIMER_M *pEpgTimer;
    TIMER_M *pTriggerTimer;
    memset(uiv_stMsgBar,0,MAX_ALARM_MSG);
    TMF_CleanAllUITimer();
    MLMF_AV_SetBrightness(pstBoxInfo->videoBrightness);
    MLMF_AV_SetContrast(pstBoxInfo->videoContrast);
    MLMF_AV_SetSaturation(pstBoxInfo->videoSaturation);
    MLMF_AV_SetSharpness(pstBoxInfo->videoSharpness);
    MLMF_AV_SetHue(pstBoxInfo->videoHue);
    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return;
    }
    
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(pEpgTimer);
        return;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimer);
    uif_SetTimer(pEpgTimer,pTriggerTimer);
    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimer);
}

static MBT_VOID uif_TimerTouchOff(MBT_S32 iEventType,MBT_U16 u16ServiceID,MBT_U32 u32TransInfo,MBT_S32 iTimerIndex)
{
    UI_PRG stProgInfo;
    EPG_TIMER_M *pEpgTimer;
    TIMER_M *pTriggerTimer;
	MBT_U32 duration = 0;
	MBT_U8 bRecord = 0;
	MBT_U8 j = 0;

    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return;
    }
    
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(pEpgTimer);
        return;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimer);

    switch(iEventType)
    {
        case TIMER_EVENT_POWEROFF:
            pTriggerTimer[AUTO_POWEROFF].dateofWeek = m_Off;
            uif_SetTimer2File(pEpgTimer,pTriggerTimer);
            if(UIF_BIsSTBPoswerOn()==MM_TRUE)
            {
                UIF_SendKeyToUi(DUMMY_KEY_POWER);
            }
            break;

        case TIMER_EVENT_CHANGE_CHANNEL:
            if(MAX_TRIGER_TIMER_NUM <= iTimerIndex)
            {
                break;
            }
            
			duration = pEpgTimer[iTimerIndex].stTimer.durationhour*60*60 + pEpgTimer[iTimerIndex].stTimer.durationMinute*60;
			bRecord = pEpgTimer[iTimerIndex].stTimer.bRecord;
			if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_Today)
			{
            	pEpgTimer[iTimerIndex].stTimer.dateofWeek = 0;
            }
            else if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_EveryDay)
            {
            	TMF_TimeAdjustDatePlus(&(pEpgTimer[iTimerIndex].stTimer));
            }
            else if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_EveryWeek)
            {
            	for(j = 0; j < 7; j++){
					TMF_TimeAdjustDatePlus(&(pEpgTimer[iTimerIndex].stTimer));
				}
            }
			uif_SetTimer2File(pEpgTimer,pTriggerTimer);
            if (DVB_INVALID_LINK != DBSF_DataCurPrgInfo ( &stProgInfo))
            {
                UI_PRG stTempProgInfo;
                if (stProgInfo.stService.stPrgTransInfo.u32TransInfo != u32TransInfo||u16ServiceID != stProgInfo.stService.u16ServiceID || bRecord != 0)
                {
                    if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stTempProgInfo, u32TransInfo, u16ServiceID))
                    {
                    	MLUI_DEBUG("uif_TriggerPlay TIMER_EVENT_CHANGE_CHANNEL..bRecord: %d",bRecord);
                        uif_TriggerPlay(PLAY_NOMALPRG,u32TransInfo,u16ServiceID,duration,bRecord);                
                    }
                }
            }
            break;
        default:
            if(MAX_EPG_TIMER_NUM<=iTimerIndex)
            {
                break;
            }
			duration = pEpgTimer[iTimerIndex].stTimer.durationhour*60*60 + pEpgTimer[iTimerIndex].stTimer.durationMinute*60;
			bRecord = pEpgTimer[iTimerIndex].stTimer.bRecord;
			if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_Today)
			{
            	pEpgTimer[iTimerIndex].stTimer.dateofWeek = 0;
            }
            else if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_EveryDay)
            {
            	TMF_TimeAdjustDatePlus(&(pEpgTimer[iTimerIndex].stTimer));
            }
            else if(pEpgTimer[iTimerIndex].stTimer.dateofWeek == m_EveryWeek)
            {
            	for(j = 0; j < 7; j++){
					TMF_TimeAdjustDatePlus(&(pEpgTimer[iTimerIndex].stTimer));
				}
            }
			uif_SetTimer2File(pEpgTimer,pTriggerTimer);
            
            if (DVB_INVALID_LINK != DBSF_DataCurPrgInfo ( &stProgInfo) &&TIMER_EVENT_RERERVE_GET == iEventType)
            {
                UI_PRG stTempProgInfo;
                if (stProgInfo.stService.stPrgTransInfo.u32TransInfo != u32TransInfo||u16ServiceID != stProgInfo.stService.u16ServiceID || bRecord != 0)
                {
                    if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stTempProgInfo, u32TransInfo, u16ServiceID))
                    {
                    	MLUI_DEBUG("uif_TriggerPlay ..bRecord: %d", bRecord);
                        uif_TriggerPlay(PLAY_NOMALPRG,u32TransInfo,u16ServiceID,duration,bRecord);                
                    }
                }
            }
            break;
    }
    
    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimer);
}

static MBT_VOID uif_TimerUICallBack(MBT_U32 u32Para[])
{
        uif_TimerTouchOff(((u32Para[1] >>24)&0x000000ff), u32Para[3],u32Para[2],(u32Para[1] &0x000000ff));
}

/*TriggerTimer shuld 30seconds before event timer*/
static MBT_VOID uif_GetTriggerTimer(TIMER_M *pstEventTimer,TIMER_M *pstTriggerTimer)
{
	MLUI_DEBUG("start ..");

    if(MM_NULL == pstEventTimer||MM_NULL == pstTriggerTimer)
    {
        return;
    }

    *pstTriggerTimer = *pstEventTimer;
    if(pstTriggerTimer->second >= 31)
    {
        pstTriggerTimer->second -= 31;
        return;
    }

    pstTriggerTimer->second += 60-31;
    if(pstTriggerTimer->minute >= 1)
    {
        pstTriggerTimer->minute--;
        return;
    }

    pstTriggerTimer->minute += 60-1;
    if(pstTriggerTimer->hour >= 1)
    {
        pstTriggerTimer->hour--;
        return;
    }

    pstTriggerTimer->hour += 24-1;
    TMF_TimeAdjustDateMinus(pstTriggerTimer);
}

MBT_VOID uif_SetTimer(EPG_TIMER_M *pstEpgTimer,TIMER_M *pstTriggerTimer)
{
	MLUI_DEBUG("start...");
    MBT_S32 i;
    MBT_U32 u32Para[4] ;
    TIMER_M stTriggerTimer;
    TMF_CleanAllUITimer();

    if(MM_NULL != pstTriggerTimer)
    {
        for(i = 0;i < MAX_TRIGER_TIMER_NUM;i++)
        {
            if(m_Poweroff == (MBT_U8)(0x0 | pstTriggerTimer[i].dateofWeek))
            {
                memset(u32Para,0,sizeof(u32Para));

                u32Para[1] = TIMER_EVENT_POWEROFF<<24;
                TMF_SetUITimer(uif_TimerUICallBack, u32Para, &pstTriggerTimer[AUTO_POWEROFF], m_EveryDay);
            }
            else if(m_Off != (MBT_U8)(0x0 | pstTriggerTimer[i].dateofWeek) && m_Poweron != (MBT_U8)(0x0 | pstTriggerTimer[i].dateofWeek))
            {
                memset(u32Para,0,sizeof(u32Para));
                u32Para[0] = 0;
                u32Para[1] = ((TIMER_EVENT_CHANGE_CHANNEL<<24)|(SWITCH_CHANNEL_TIMER<<8)|i);
                u32Para[2] = pstTriggerTimer[i].uTimerProgramNo;
                u32Para[3] = pstTriggerTimer[i].u16ServiceID;
                uif_GetTriggerTimer(pstTriggerTimer+i,&stTriggerTimer);
                TMF_SetUITimer(uif_TimerUICallBack, u32Para,&stTriggerTimer,m_EveryWeek);
            }
        }
    }
    
    if(MM_NULL != pstEpgTimer)
    {
        for(i = 0;i < MAX_EPG_TIMER_NUM;i++)
        {
            if((MBT_U8)(0x0 |pstEpgTimer[i].stTimer.dateofWeek) != 0x0)
            {
                memset(u32Para,0,sizeof(u32Para));
                u32Para[0] = 0;
                u32Para[1] = ((TIMER_EVENT_RERERVE_GET<<24)|(EPG_TIMER<<8)|i);
                u32Para[2] = pstEpgTimer[i].stTimer.uTimerProgramNo;
                u32Para[3] = pstEpgTimer[i].stTimer.u16ServiceID;
                uif_GetTriggerTimer(&(pstEpgTimer[i].stTimer),&stTriggerTimer);
				MLUI_DEBUG("TMF_SetUITimer...dateofWeek: %d, bRecord: %d, triger bRecord: %d", pstEpgTimer[i].stTimer.dateofWeek, pstEpgTimer[i].stTimer.bRecord, stTriggerTimer.bRecord);
                TMF_SetUITimer(uif_TimerUICallBack, u32Para,&stTriggerTimer, pstEpgTimer[i].stTimer.dateofWeek);
            }
        }
    }
}

MBT_S32 uif_CreateUIPrgArray(MBT_VOID)
{
    uiv_PrgList.iPrgNum = DBSF_DataGetListPrgNum();
    if(MM_NULL != uiv_PrgList.pstPrgHead)
    {
        uif_ForceFree(uiv_PrgList.pstPrgHead);
    }
    if(0 < uiv_PrgList.iPrgNum)
    {
        uiv_PrgList.pstPrgHead = uif_ForceMalloc(sizeof(DBST_PROG)*(uiv_PrgList.iPrgNum));
        if(MM_NULL != uiv_PrgList.pstPrgHead)
        {
            uiv_PrgList.iPrgNum = DBSF_DataCreatePrgArray(uiv_PrgList.pstPrgHead,uiv_PrgList.iPrgNum);
        }
    }
    return uiv_PrgList.iPrgNum;
}

MBT_VOID uif_DestroyUIPrgArray(MBT_VOID)
{
    if(MM_NULL != uiv_PrgList.pstPrgHead)
    {
        uif_ForceFree(uiv_PrgList.pstPrgHead);
    }
    uiv_PrgList.iPrgNum = 0;
    uiv_PrgList.pstPrgHead = MM_NULL;
}

MBT_U32 uif_PrgPFKeyFunction(MBT_S32 ikeyvalue,MBT_U8 u8VideoAudioState,UI_PRG *pstProgInfo)
{
    MBT_U32 u32ProgNo = dbsm_InvalidID;

    switch(ikeyvalue)
    {
        case DUMMY_KEY_PGUP:
        case DUMMY_KEY_UPARROW:
            u32ProgNo = DBSF_DataNextPrgInfo ( pstProgInfo ,u8VideoAudioState);
            break;
        case DUMMY_KEY_PGDN:
        case DUMMY_KEY_DNARROW:
            u32ProgNo = DBSF_DataPrevPrgInfo ( pstProgInfo ,u8VideoAudioState);
            break;
    }   

    return u32ProgNo;
}


  

MBT_S32 uif_GetFirstPlayProg(UI_PRG *pstPrgInfo)
{
    MBT_S32 iRet = DVB_INVALID_LINK;
    MBT_U8 u8VideoAudioState;
    DVB_BOX *pstBoxInfo;
    if(MM_NULL == pstPrgInfo)
    {
        return iRet;
    }

    pstBoxInfo = DBSF_DataGetBoxInfo(); 
    u8VideoAudioState = pstBoxInfo->ucBit.bVideoAudioState;
    if ( u8VideoAudioState == VIDEO_STATUS )
    {
        iRet = DBSF_DataPosPrgTransXServiceID(pstPrgInfo,pstBoxInfo->u32VidTransInfo,pstBoxInfo->u16VideoServiceID);
        if(DVB_INVALID_LINK == iRet
            ||(SKIP_BIT_MASK == (pstPrgInfo->stService.ucProgram_status&SKIP_BIT_MASK))
            ||STTAPI_SERVICE_TELEVISION != pstPrgInfo->stService.cProgramType)
        {
            iRet = DBSF_DataNextPrgInfo(pstPrgInfo,VIDEO_STATUS);
            if(DVB_INVALID_LINK == iRet)
            {
                pstBoxInfo->ucBit.bVideoAudioState = AUDIO_STATUS;
                iRet = DBSF_DataPosPrgTransXServiceID(pstPrgInfo,pstBoxInfo->u32AudTransInfo,pstBoxInfo->u16AudioServiceID);
                if(DVB_INVALID_LINK == iRet
                    ||(SKIP_BIT_MASK == (pstPrgInfo->stService.ucProgram_status&SKIP_BIT_MASK))
                    ||STTAPI_SERVICE_RADIO != pstPrgInfo->stService.cProgramType)
                {
                    iRet = DBSF_DataNextPrgInfo(pstPrgInfo,AUDIO_STATUS);
                    if(DVB_INVALID_LINK == iRet)
                    {
                        pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS ;
                    }
                }
            }
        }
    }
    else	
    {
        iRet = DBSF_DataPosPrgTransXServiceID(pstPrgInfo,pstBoxInfo->u32AudTransInfo,pstBoxInfo->u16AudioServiceID);
        if(DVB_INVALID_LINK == iRet
                    ||(SKIP_BIT_MASK == (pstPrgInfo->stService.ucProgram_status&SKIP_BIT_MASK))
                    ||STTAPI_SERVICE_RADIO != pstPrgInfo->stService.cProgramType)
        {
            iRet = DBSF_DataNextPrgInfo(pstPrgInfo,AUDIO_STATUS);
            if(DVB_INVALID_LINK == iRet)
            {
                pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS;
                iRet = DBSF_DataPosPrgTransXServiceID(pstPrgInfo,pstBoxInfo->u32VidTransInfo,pstBoxInfo->u16VideoServiceID);
                if(DVB_INVALID_LINK == iRet
                    ||(SKIP_BIT_MASK == (pstPrgInfo->stService.ucProgram_status&SKIP_BIT_MASK))
                    ||STTAPI_SERVICE_TELEVISION != pstPrgInfo->stService.cProgramType)
                {
                    iRet = DBSF_DataNextPrgInfo(pstPrgInfo,VIDEO_STATUS);
                }
            }
        }
    }

    if(u8VideoAudioState != pstBoxInfo->ucBit.bVideoAudioState)
    {
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }
    return iRet ;
}


MBT_BOOL  uif_TVRadioExchange( MBT_BOOL *pbRefresh) 
{
    MBT_BOOL bRet = MM_TRUE;
    //MBT_BOOL bRefresh;
    UI_PRG  stProgInfo;
    MBT_U8 uVideoAudioState;
    MBT_U8 u8ServiceType = 0;
    MBT_S32 iLastProgramNo;
    MBT_U16 u16LastServiceID;
    MBT_S32 iNewPrgNo = 0;
    MBT_S32 iPrgNo;
    MBT_U16 u16NewServiceID = 0;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    iLastProgramNo = DBSF_DataCurPrgInfo(&stProgInfo);
    u16LastServiceID = stProgInfo.stService.u16ServiceID;
    uVideoAudioState = pstBoxInfo->ucBit.bVideoAudioState;
    if( pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS )
    {
        pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS ;
        u16NewServiceID = pstBoxInfo->u16VideoServiceID;
        iNewPrgNo = pstBoxInfo->u32VidTransInfo;
        u8ServiceType = STTAPI_SERVICE_TELEVISION;
    }
    else if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS )
    {
        pstBoxInfo->ucBit.bVideoAudioState = AUDIO_STATUS ;
        u16NewServiceID = pstBoxInfo->u16AudioServiceID;
        iNewPrgNo = pstBoxInfo->u32AudTransInfo;
        u8ServiceType = STTAPI_SERVICE_RADIO;
    }

    iPrgNo = DBSF_DataPosPrgTransXServiceID (&stProgInfo, iNewPrgNo,u16NewServiceID);
    
    if(DVB_INVALID_LINK == iPrgNo
        ||(SKIP_BIT_MASK == (stProgInfo.stService.ucProgram_status&SKIP_BIT_MASK))
        ||u8ServiceType != stProgInfo.stService.cProgramType)
    {
        if(DVB_INVALID_LINK ==  DBSF_DataNextPrgInfo(&stProgInfo,pstBoxInfo->ucBit.bVideoAudioState))
        {
            bRet = MM_FALSE;
        }
    }
    #if 0 //change,but not play
    if(bRet)
    {
        if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
        {
            bRet = MM_FALSE;
            
            if (LOCK_BIT_MASK == (stProgInfo.stService.ucProgram_status & LOCK_BIT_MASK))
            {
                if(uif_PermitPlayLockPrg(&stProgInfo))
                {
                    bRet = MM_TRUE;
                }
                else
                {
                    if(DVB_INVALID_LINK != DBSF_DataPos2NextUnlockPrg(&stProgInfo,pstBoxInfo->ucBit.bVideoAudioState))
                    {
                        bRet = MM_TRUE;
                    }
                }
            }
            else
            {
                bRet = MM_TRUE;
            }
    
            if(bRet)
            {
                bRefresh =uif_ResetAlarmMsgFlag();
                if(MM_NULL != pbRefresh)
                {
                    *pbRefresh |= bRefresh;
                }
                uif_PlayPrg(&stProgInfo);
                DBSF_DataSetBoxInfo(pstBoxInfo);
            }
        }
    }
    else
    #endif
    if(!bRet)
    {
        pstBoxInfo->ucBit.bVideoAudioState = uVideoAudioState ;
        DBSF_DataPosPrgTransXServiceID (&stProgInfo, iLastProgramNo ,u16LastServiceID);
    }
    return bRet;
}

MBT_VOID uif_ShareDrawGameCommonPanel(MBT_VOID)
{
    WGUIF_DrawFilledRectangle(0, 0, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT, 0xFF000000);
}

/**
* 	sub main item title
*   画子菜单背景及标题栏
*
*   ptrTitle: 字符指针， NULL不显示
*   pstFramBmpTemp: 图片指针，NULL不显示
*   isNeedToShowTime:是否显示时间图标
*/

MBT_VOID uif_ShareDrawCommonPanel(MBT_CHAR *ptrTitle, BITMAPTRUECOLOR *pstFramBmpTemp, MBT_BOOL isNeedToShowTime)
{
    MBT_S32 iStrlen = 0;
    MBT_S32 sFont_height = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 x = UICOMMON_TITLE_AREA_X;

    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);

    if(NULL != pstFramBmpTemp)
    {
        WGUIF_DisplayReginTrueColorBmp(x, UICOMMON_TITLE_AREA_Y, 0, 0, pstFramBmpTemp->bWidth, pstFramBmpTemp->bHeight, pstFramBmpTemp, MM_FALSE);
        x += (pstFramBmpTemp->bWidth+5);
    }

    /*title font*/
    if(NULL != ptrTitle)
    {
        sFont_height = WGUIF_GetFontHeight();
        WGUIF_SetFontHeight(TOPLEFTMAINTITLE_FONT_HEIGHT_HD);
        iStrlen = strlen(ptrTitle);
        WGUIF_FNTDrawTxt(x, UICOMMON_TITLE_AREA_Y, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
        WGUIF_SetFontHeight(sFont_height);
    }

    if(isNeedToShowTime)
    {
        uif_DisplayTimeOnCaptionBMP(UICOMMON_TITLE_AREA_Y); 
    }
}

/**
*  设置界面的高亮条显示，包含两个箭头
*   画设置界面的高亮条，显示两个箭头，两串字符
*
*   ptrTitle1:第一段 字符指针， NULL不显示
*   ptrTitle2:第二段 字符指针， NULL不显示,字的坐标根据bArrowLargeSpace决定
*   bShowArrow:是否显示箭?
*   bArrowLargeSpace: 是否是间距大的箭头
*/

MBT_VOID uif_ShareDrawSetPageFouce(MBT_S32 x, MBT_S32 y, MBT_CHAR *ptrTitle1, MBT_CHAR *ptrTitle2, MBT_BOOL bShowArrow, MBT_BOOL bArrowLargeSpace)
{
    MBT_S32 iStrlen = 0;
    MBT_S32 sFont_height = 0;
    MBT_S32 sFont_length = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32X = 0; 
    MBT_S32 s32Y = 0;
    MBT_S32 s32FirstStringSpaceForBegin = 10;
    MBT_S32 s32RightArrowSpaceForFinish = 12;
    MBT_S32 s32FocusWidth = 765;
    
    uif_ShareDrawCombinHBar(x, y, s32FocusWidth,
                            BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor),
                            BMPF_GetBMP(m_ui_SetPage_Focus_MidIfor),
                            BMPF_GetBMP(m_ui_SetPage_Focus_RightIfor));
    pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
	/*第一段字符*/
	if(NULL != ptrTitle1)
	{
	    sFont_height = WGUIF_GetFontHeight();
        s32X = x + s32FirstStringSpaceForBegin;
        s32Y = y + (pstFramBmp->bHeight - sFont_height)/2;
        iStrlen = strlen(ptrTitle1);
		WGUIF_FNTDrawTxt(s32X, s32Y, iStrlen, ptrTitle1, FONT_FRONT_COLOR_WHITE);
	}

    if(NULL != ptrTitle2)
	{
	    sFont_height = WGUIF_GetFontHeight();
        sFont_length = WGUIF_FNTGetTxtWidth(strlen(ptrTitle2),ptrTitle2);
        if(bArrowLargeSpace == MM_TRUE)
        {//大间距左箭头从1/2 处开始算
            s32X = x + (3 *s32FocusWidth/4) - s32RightArrowSpaceForFinish/2 - sFont_length/2;
        }
        else
        {//小间距从左箭头从3/5开始算
            s32X = x + (4 *s32FocusWidth/5) - s32RightArrowSpaceForFinish/2 - sFont_length/2;
        }
        s32Y = y + (pstFramBmp->bHeight - sFont_height)/2;
        iStrlen = strlen(ptrTitle2);
		WGUIF_FNTDrawTxt(s32X, s32Y, iStrlen, ptrTitle2, FONT_FRONT_COLOR_WHITE);
	}
    
    if(bShowArrow == MM_TRUE)
	{
	    if(bArrowLargeSpace == MM_TRUE)
        {  
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
            s32X = x + s32FocusWidth/2;
	        WGUIF_DisplayReginTrueColorBmp(s32X, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Right_ArrowIfor);
            s32X = x + s32FocusWidth - pstFramBmp->bWidth - s32RightArrowSpaceForFinish;
	        WGUIF_DisplayReginTrueColorBmp(s32X, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
	    }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
            s32X = x + s32FocusWidth*3/5 ;
	        WGUIF_DisplayReginTrueColorBmp(s32X, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Right_ArrowIfor);
            s32X = x + s32FocusWidth - pstFramBmp->bWidth - s32RightArrowSpaceForFinish;
	        WGUIF_DisplayReginTrueColorBmp(s32X, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
	    }
    }
}




#define m_StartUpVideoWidth 360
#define m_StartUpVideoHeight 288

MBT_VOID UIF_PlayBckGrdIframe(MBT_VOID)
{    
    MBT_U32 iSize;
    MBT_U8 *pu8Data = MM_NULL;
    MMT_STB_ErrorCode_E stRet;
    iSize = MMF_GetSpecifyImageSize(MM_IMAGE_KCBPLLOGO);
    if(0 == iSize)
    {
        return;
    }
    
    pu8Data = MLMF_Malloc(iSize);
    if(MM_NULL == pu8Data)
    {
        MLUI_ERR("MLMF_Malloc fail\n");
        return;
    }
    memset(pu8Data,0,iSize);
    stRet = MMF_GetSpecifyImage(MM_IMAGE_KCBPLLOGO,pu8Data, &iSize);
    if(MM_NO_ERROR !=  stRet)
    {
        MLMF_Free(pu8Data);
        return;
    }

    if(!((0x00 == pu8Data[0]) && (0x00 == pu8Data[1]) && (0x01 == pu8Data[2]) && (0xb3 == pu8Data[3])))
    {
        MLMF_Free(pu8Data);
        return;
    }
    MLMF_AV_VideoInjectFrame((MBT_U8 *)pu8Data,iSize);
    MLMF_Free(pu8Data);
    MLUI_DEBUG("---> UIF_PlayBckGrdIframe OK\n");
}
MBT_VOID UIF_PlayAudioIframe(MBT_VOID)
{    
    if(g_bIsPlayAudioIframe == MM_TRUE)
    {
        MLUI_ERR("---> Already Start Audio Iframe");
        return;
    }
    
    MBT_U32 iSize;
    MBT_U8 *pu8Data = MM_NULL;
    MMT_STB_ErrorCode_E stRet;
        
    iSize = MMF_GetSpecifyImageSize(MM_IMAGE_AUDIOLOGO);
    if(0 == iSize)
    {
        return;
    }

    pu8Data = MLMF_Malloc(iSize);
    if(MM_NULL == pu8Data)
    {
        MLUI_ERR("MLMF_Malloc fail");
        return;
    }
    memset(pu8Data,0,iSize);
    stRet = MMF_GetSpecifyImage(MM_IMAGE_AUDIOLOGO, pu8Data, &iSize);
    if(MM_NO_ERROR !=  stRet)
    {
        MLMF_Free(pu8Data);
        return;
    }

    if(MM_NULL == pu8Data)
    {
        return;
    }

    MLMF_AV_VideoInjectFrame((MBT_U8 *)pu8Data,iSize);
    MLMF_Free(pu8Data);
    g_bIsPlayAudioIframe = MM_TRUE;
    MLUI_DEBUG("---> Play Audio Iframe OK");
}

MBT_VOID UIF_StopAudioIframe(MBT_VOID)
{
    if(g_bIsPlayAudioIframe == MM_FALSE)
    {
        MLUI_ERR("---> Already stop Audio Iframe");
        return;
    }
    MLMF_AV_VideoInjectStop();
    g_bIsPlayAudioIframe = MM_FALSE;
    MLUI_DEBUG("---> Stop Audio Iframe OK");
}

MBT_BOOL UIF_GetPlayAudioIframeStatus(MBT_VOID)
{
    return g_bIsPlayAudioIframe;
}

MBT_VOID UIF_DecoderWaterLogoPNG(MBT_VOID)
{    
    MBT_U32 iSize = 0;
    MBT_U8 *pu8Data = MM_NULL;
    MMT_STB_ErrorCode_E stRet;    unsigned error;
    MBT_U8* image = 0;
    MBT_U32 iWidth = 0, iHeight = 0;
        
    iSize = MMF_GetSpecifyImageSize(MM_IMAGE_WATERLOGO);
    if(0 == iSize)
    {
        return;
    }
    MLUI_DEBUG("--->size = %d",iSize);
    pu8Data = MLMF_Malloc(iSize);
    if(MM_NULL == pu8Data)
    {
        MLUI_ERR("MLMF_Malloc fail");
        return;
    }
    memset(pu8Data,0,iSize);
    stRet = MMF_GetSpecifyImage(MM_IMAGE_WATERLOGO, pu8Data, &iSize);
    if(MM_NO_ERROR != stRet)
    {
        MLMF_Free(pu8Data);
        return;
    }
   
    error = lodepng_decode32_file(&image, &iWidth, &iHeight, iSize, pu8Data);
    MLUI_DEBUG("--->width = %d, height = %d",iWidth,iHeight);
    if(error)
    {
        MLUI_DEBUG("error %u: %s", error, lodepng_error_text(error));
    }
    g_stFramBmpWaterLogo.bWidth = iWidth;
    g_stFramBmpWaterLogo.bHeight = iHeight;
    g_stFramBmpWaterLogo.bColorType = MM_OSD_COLOR_MODE_ARGB8888;
    g_stFramBmpWaterLogo.pBData = (MBT_VOID *)image;
    MLMF_Free(pu8Data);
}

MBT_BOOL UIF_ShowWaterLogoPNG(MBT_S32 s32ScrX,MBT_S32 s32ScrY)
{
    if(bIsShowWaterLogo == MM_FALSE)
    {
        bIsShowWaterLogo = MM_TRUE;
        WGUIF_DisplayReginTrueColorBmpExt(s32ScrX, s32ScrY, 0, 0, g_stFramBmpWaterLogo.bWidth, g_stFramBmpWaterLogo.bHeight, &g_stFramBmpWaterLogo, MM_TRUE);
        return MM_TRUE;
    }
    MLUI_ERR("--->Already show waterlogo");
    return MM_FALSE;
}

MBT_BOOL UIF_HideWaterLogoPNG(MBT_S32 s32ScrX,MBT_S32 s32ScrY)
{
    if(bIsShowWaterLogo == MM_TRUE)
    {
        bIsShowWaterLogo = MM_FALSE;
        WGUIF_ClsExtScreen(s32ScrX, s32ScrY, g_stFramBmpWaterLogo.bWidth, g_stFramBmpWaterLogo.bHeight);
        return MM_TRUE;
    }
    MLUI_ERR("--->Already hide waterlogo");
    return MM_FALSE;
} 

MBT_BOOL uif_PlayNewPosPrg(MBT_S32 iNewProNo,MBT_U16 u6ServiceID)
{
    MBT_BOOL bRet = MM_FALSE;
    MBT_BOOL bStatusModify = MM_FALSE;
    UI_PRG  stProgInfo; 
    MBT_U8 ucTemp ;   
    MBT_CHAR string[8];
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();   
    iNewProNo = DBSF_DataPosPrgTransXServiceID(&stProgInfo ,iNewProNo,u6ServiceID);
    
    if(DVB_INVALID_LINK == iNewProNo)
    {
        return bRet;
    }

    if(uif_WhetherCurPrg(&stProgInfo))
    {
        MLUI_ERR("--->Current program! return");
        return MM_TRUE;
    }
    
    if ( STTAPI_SERVICE_RADIO == stProgInfo.stService.cProgramType)
    {
        if(pstBoxInfo->ucBit.bVideoAudioState != AUDIO_STATUS)
        {
            pstBoxInfo->ucBit.bVideoAudioState = AUDIO_STATUS;
            bStatusModify = MM_TRUE;
        }
    }
    else 
    {
        if(pstBoxInfo->ucBit.bVideoAudioState != VIDEO_STATUS)
        {
            pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS;
            bStatusModify = MM_TRUE;
        }
    }
    //MLMF_Print("cProgramType = %x bVideoAudioState = %x\n",stProgInfo.stService.cProgramType,pstBoxInfo->ucBit.bVideoAudioState);
    
    UIF_StopAV();
    if(MM_TRUE == bStatusModify)
    {
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }
    bRet = MM_FALSE;
    if (LOCK_BIT_MASK == (stProgInfo.stService.ucProgram_status & LOCK_BIT_MASK))
    {
        MBT_U16 u16LogicNum;
        u16LogicNum = stProgInfo.u16LogicNum;
        if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState )
        {
            ucTemp = sprintf(string,"P%03d",(u16LogicNum%1000));
        }
        else
        {
            ucTemp = sprintf(string,"A%03d",(u16LogicNum%1000));
        }
        MLMF_FP_Display(string,ucTemp,MM_FALSE);
        if(uif_PermitPlayLockPrg(&stProgInfo))
        {
            bRet = MM_TRUE;
        }
    }
    else
    {
        bRet = MM_TRUE;
    }

    if(bRet)
    {
        uif_PlayPrg(&stProgInfo);
    }
    return bRet;
}


MBT_BOOL uif_ChnListPlayPrg(DBST_PROG *pstServiceInfo)
{
    MBT_BOOL bChange = MM_FALSE;
    MBT_BOOL bRefresh = MM_FALSE;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo(); 

    if (MM_NULL == pstServiceInfo)
    {
        return bRefresh;
    }
    
    if ( STTAPI_SERVICE_RADIO == pstServiceInfo->cProgramType)
    {
        if(pstBoxInfo->ucBit.bVideoAudioState != AUDIO_STATUS)
        {
            pstBoxInfo->ucBit.bVideoAudioState = AUDIO_STATUS;
            bChange = MM_TRUE;
        }
    }
    else if (STTAPI_SERVICE_TELEVISION == pstServiceInfo->cProgramType)
    {   
        if(pstBoxInfo->ucBit.bVideoAudioState != VIDEO_STATUS)
        {
            pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS;
            bChange = MM_TRUE;
        }
    }
    else
    {
        return bRefresh;
    }
    
    bRefresh |= uif_ResetAlarmMsgFlag();
    
    if(MM_FALSE == uif_PlayNewPosPrg(pstServiceInfo->stPrgTransInfo.u32TransInfo,pstServiceInfo->u16ServiceID))
    {
        UIF_StopAV();
        DBSF_StopAll();
        MLMF_FP_Display( "0000",4,MM_FALSE);
    }

    if(bChange)
    {
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }

    return bRefresh;
}

MBT_VOID uif_SetLockServiceInfo(MBT_VOID *pData)
{
#if(1 == M_CDCA) 
    if(MM_NULL != pData)
    {
        memcpy(&uiv_stLockServiceInfo,pData,sizeof(uiv_stLockServiceInfo));
    }
#endif    
}
MBT_VOID uif_PlayLockService(MBT_VOID)
{
#if(1 == M_CDCA) 
    SCDCALockService *pstLockService = &uiv_stLockServiceInfo;
    SCDCAComponent *pstComponent =pstLockService->m_CompArr;
    MET_PTI_PID_T stStreamPID[m_MaxPidInfo]=
    {
        cam_InvalidPID,
        cam_InvalidPID,
    };
    UI_PRG stProgInfo;
    UI_PRG stTempProgInfo;
    MBT_S32 iFrenq;
    MBT_S32 iSymbolRate;
    MBT_S32 iQam;
    MBT_S32 iIndex;
    MBT_S32 iType;
    MBT_S32 i;
    
    memset(&stProgInfo,0,sizeof(stProgInfo));
    
    iFrenq  = m_BcdToHex((pstLockService->m_dwFrequency >> 24) & 0xff);
    iFrenq *= 100;
    iFrenq += m_BcdToHex((pstLockService->m_dwFrequency >> 16) & 0xff);
    iFrenq *= 100;
    iFrenq += m_BcdToHex((pstLockService->m_dwFrequency >> 8) & 0xff);
    iFrenq *= 100;
    iFrenq += m_BcdToHex(pstLockService->m_dwFrequency & 0xff);
    iFrenq /= 10;
    //MLMF_Print("iFrenq = %d\n", iFrenq);
            
    iSymbolRate = (MBT_S32)pstLockService->m_symbol_rate;
    iSymbolRate  = m_BcdToHex((pstLockService->m_symbol_rate >> 24) & 0xff);
    iSymbolRate *= 100;
    iSymbolRate += m_BcdToHex((pstLockService->m_symbol_rate >> 16) & 0xff);
    iSymbolRate *= 100;
    iSymbolRate += m_BcdToHex((pstLockService->m_symbol_rate >> 8) & 0xff);
    iSymbolRate *= 100;
    iSymbolRate += m_BcdToHex(pstLockService->m_symbol_rate & 0xff);
    iSymbolRate /= 10;
    //MLMF_Print("stTransponderInfoTemp.m_symbol_rate = %d\n", iSymbolRate);
    //MLMF_Print("pstLockService->m_Modulation = %d\n", pstLockService->m_Modulation);
    switch(pstLockService->m_Modulation)
    {
        case 1:
            iQam = MM_TUNER_QAM_16;
            break;
        case 2:
            iQam = MM_TUNER_QAM_32;
            break;
        case 3:
            iQam = MM_TUNER_QAM_64;
            break;
        case 4:
            iQam = MM_TUNER_QAM_128;
            break;
        case 5:
            iQam = MM_TUNER_QAM_256;
            break;
        default:
            iQam = MM_TUNER_QAM_64;
            break;
    }

    stProgInfo.stService.cProgramType = STTAPI_SERVICE_TELEVISION;
    stProgInfo.stService.u16ServiceID = dbsm_InvalidID;
    stProgInfo.stService.sPmtPid = cam_InvalidPID;
    stProgInfo.stService.stPrgTransInfo.uBit.uiTPFreq = iFrenq/1000;
    stProgInfo.stService.stPrgTransInfo.uBit.uiTPQam = iQam;
    stProgInfo.stService.stPrgTransInfo.uBit.uiTPSymbolRate = iSymbolRate;
    stProgInfo.stService.NumPids = 0;
    stProgInfo.stService.Pids[stProgInfo.stService.NumPids].Pid = pstLockService->m_wPcrPid;
    stProgInfo.stService.Pids[stProgInfo.stService.NumPids].Type = MM_STREAMTYPE_PCR;
    stProgInfo.stService.NumPids ++;
    stProgInfo.u16LogicNum = 0;
   
    UIAPP_DEBUG(("num = %d\n", pstLockService->m_ComponentNum));
    for(i = 0;i < pstLockService->m_ComponentNum;i++)
    {
        UIAPP_DEBUG(("pstComponent->m_CompType = %d, pstComponent->m_wCompPID = %d, ecmpid = %d\n", pstComponent->m_CompType, pstComponent->m_wCompPID, pstComponent->m_wECMPID));
        iType = -1;
        iIndex = -1;
        switch (pstComponent->m_CompType)
        {
            case E_SI_STREAM_MPEG1_VID:            /* 0x01 */
                iIndex = m_VideoPidInfo;
                iType = MM_STREAMTYPE_MP1V;
                break;
                
            case E_SI_STREAM_MPEG2_VID:            /* 0x02 */
                iIndex = m_VideoPidInfo;
                iType = MM_STREAMTYPE_MP2V;
                 break;
                
            case E_SI_STREAM_AVCH264_VID:            /* 0x1B */
                iIndex = m_VideoPidInfo;
                iType = MM_STREAMTYPE_H264;
                 break;
                
            case E_SI_STREAM_MPEG1_AUD:            /* 0x03 */
                iIndex = m_AudioPidInfo;
                iType = MM_STREAMTYPE_MP1A;
                 break;
                
            case E_SI_STREAM_MPEG2_AUD:            /* 0x04 */
                iIndex = m_AudioPidInfo;
                iType = MM_STREAMTYPE_MP2A;
                 break;
                
            case E_SI_STREAM_AAC_AUD:            /* 0x0f*/
                iIndex = m_AudioPidInfo;
                iType = MM_STREAMTYPE_AAC;
                 break;
            case E_SI_STREAM_AC3_AUD:            /* 0x81 */
                iIndex = m_AudioPidInfo;
                iType = MM_STREAMTYPE_AC3;
                 break;
                
            default:
                iIndex = -1;
                iType = 0xffffffff;
                break;
        }

         if(-1 != iIndex)
         {
             if(stStreamPID[iIndex] == cam_InvalidPID)
             {
                 stStreamPID[iIndex] = pstComponent->m_wCompPID;
                 if(-1 != iType)
                 {
                     if(stProgInfo.stService.NumPids < MAX_PRG_PID_NUM)
                     {
                         stProgInfo.stService.Pids[stProgInfo.stService.NumPids].Pid = pstComponent->m_wCompPID;
                         stProgInfo.stService.Pids[stProgInfo.stService.NumPids].EcmPid = pstComponent->m_wECMPID;
                         stProgInfo.stService.Pids[stProgInfo.stService.NumPids].Type = iType;
                         stProgInfo.stService.NumPids++;
                     }
                 }
             }
         }
        pstComponent++;
    }
    BLASTF_LockKeyBoad();
    if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXPID(&stTempProgInfo, stProgInfo.stService.stPrgTransInfo.u32TransInfo, stStreamPID[m_VideoPidInfo],stStreamPID[m_AudioPidInfo]))
    {
        stProgInfo = stTempProgInfo;
        DBSF_DataPosPrgTransXServiceID( &stProgInfo,stProgInfo.stService.stPrgTransInfo.u32TransInfo,stProgInfo.stService.u16ServiceID);
        if(uif_WhetherCurPrg( &stProgInfo))
        {
            return;
        }
    }
    
    uif_PlayPrg(&stProgInfo);
    //MLMF_Print("uif_PlayLockService stTempProgInfo.stService.u16ServiceID = %x\n",stProgInfo.stService.u16ServiceID);
 #endif    
}

MBT_VOID uif_UnPlayLockService(MBT_VOID)
{
    BLASTF_UnLockKeyBoad();
}




MBT_VOID uif_GetEventStartEndTime(MBT_U8 *puStartTime,MBT_U8 *puDuration,TIMER_M* pStartTimer, TIMER_M* pEndTimer )
{
    MBT_U8 uEndTime[5];
    DBSF_TdtTime2SystemTime(puStartTime,pStartTimer);
    DBSF_GetEndTime(puStartTime, puDuration,uEndTime);
    DBSF_TdtTime2SystemTime(uEndTime,pEndTimer);        
}





MBT_BOOL uif_ShareAutoChangePNTVMode( MBT_S32 iTVSysMsg )
{
    MMT_AV_HDResolution_E u32VtgMode = MM_AV_RESOLUTION_AUTO;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    if (MM_AV_RESOLUTION_AUTO != pstBoxInfo->ucBit.iVideoMode||uiv_u8CurScreenWorkVideoMode == iTVSysMsg)
    {
        return MM_FALSE;
    }
    

    MLMF_AV_SetMute(MM_TRUE);
    MLMF_AV_Stop();
    UIF_TvSystemTogFunction(u32VtgMode);
    if(0x0 == pstBoxInfo->ucBit.bMuteState)
    {
        MLMF_AV_SetMute(MM_FALSE);
    }
    DBSF_PlyReturnCurPrg();
    return MM_TRUE;
}

MBT_VOID uif_SetVtgAspectRatio(MBT_S32 iAspectRatioKey)
{
    MBT_S32 iAspectRatio = MM_VIDEO_ASPECT_RATIO_4_3_FULL;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    if (MM_VIDEO_ASPECT_RATIO_AUTO != pstBoxInfo->ucBit.uAspectRatio||uiv_iCurScreenAspectRation == iAspectRatioKey)
    {
        return;
    }
    uiv_iCurScreenAspectRation = iAspectRatioKey;
    switch(iAspectRatioKey)
    {
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
                iAspectRatio = MM_VIDEO_ASPECT_RATIO_16_9_WIDE;
                break;
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
                iAspectRatio = MM_VIDEO_ASPECT_RATIO_4_3_FULL;
                break;
    }
    MLMF_AV_SetAspectRatio(iAspectRatio);                
}



/*返回字符串所占屏幕宽度*/
MBT_S32 uif_DrawColorKey(MBT_S32 x,MBT_S32 y,MBT_S32 iColor)
{
    MBT_CHAR* pstrInfo ="[    ]";
    MBT_S32 iLen = WGUIF_FNTDrawTxt(x, y, strlen(pstrInfo), pstrInfo, FONT_FRONT_COLOR_WHITE);
    WGUIF_DrawFilledCircle(x + iLen/2 + 1, y + WGUIF_GetFontHeight()/2 + 1, 8, iColor);
    return iLen;
}

MBT_VOID uif_DrawRightArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor)
{
    MBT_S32 iPosY = y;
    MBT_S32 iMidY;
    MBT_S32 iTemp;

    iMidY = (iHeight >>1);

    iTemp = iMidY + y;
    while(iPosY <= iTemp)
    {
        WGUIF_DrawFilledRectangle(x,iPosY,iWidth*(iPosY - y)/iMidY,1,iColor);
        iPosY++;
    }

    iTemp = iHeight + y;
    while(iPosY < iTemp)
    {
        WGUIF_DrawFilledRectangle(x,iPosY,iWidth*(iHeight - (iPosY - y))/iMidY,1,iColor);
        iPosY++;
    }
}

MBT_VOID uif_DrawLeftArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor)
{
    MBT_S32 iPosY = y;
    MBT_S32 iMidY;
    MBT_S32 iTemp;
    MBT_S32 iTempWidth;

    iMidY = (iHeight >>1);

    iTemp = iMidY + y;
    while(iPosY <= iTemp)
    {
        iTempWidth = iWidth*(iPosY - y)/iMidY;
        WGUIF_DrawFilledRectangle(x+(iWidth - iTempWidth),iPosY,iTempWidth,1,iColor);
        iPosY++;
    }

    iTemp = iHeight + y;
    while(iPosY < iTemp)
    {
        iTempWidth = (iWidth*(iPosY - y - iMidY)/(iHeight - iMidY));
        WGUIF_DrawFilledRectangle(x+iTempWidth,iPosY,iWidth-iTempWidth,1,iColor);
        iPosY++;
    }
}

MBT_VOID uif_DrawUpArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor)
{
    MBT_S32 iPosY = y;
    MBT_S32 iMidY;
    MBT_S32 iTemp;
    MBT_S32 iTempWidth;

    iMidY = (iWidth >>1);

    iTemp = iHeight + y;
    while(iPosY <= iTemp)
    {
        iTempWidth = (iMidY - (iMidY*(iPosY - y)/iHeight));
        WGUIF_DrawFilledRectangle(x+iTempWidth,iPosY,(iWidth - 2*iTempWidth),1,iColor);
        iPosY++;
    }
}

MBT_VOID uif_DrawDownArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor)
{
    MBT_S32 iPosY = y;
    MBT_S32 iMidY;
    MBT_S32 iTemp;
    MBT_S32 iTempWidth;

    iMidY = (iWidth >>1);

    iTemp = iHeight + y;
    while(iPosY <= iTemp)
    {
        iTempWidth = iMidY*(iPosY - y)/iHeight;
        WGUIF_DrawFilledRectangle(x+iTempWidth,iPosY,(iWidth - 2*iTempWidth),1,iColor);
        iPosY++;
    }
}




MBT_VOID uif_ShareDrawFilledBoxWith4CircleCorner(MBT_S32 iStartX, MBT_S32 iStartY, MBT_S32 iWidth, MBT_S32 iHeight, MBT_S32 iRadius, MBT_U32 iColor)
{
    WGUIF_DrawFilledRectangle(iStartX, iStartY + iRadius, iWidth, iHeight - 2 * iRadius, iColor);
    WGUIF_DrawFilledRectangle(iStartX + iRadius, iStartY, iWidth - 2 * iRadius, iHeight , iColor);
    WGUIF_DrawFilledCircle(iStartX + iRadius, iStartY + iRadius, iRadius, iColor);
    WGUIF_DrawFilledCircle(iStartX + iWidth - iRadius, iStartY + iRadius, iRadius, iColor);       
    WGUIF_DrawFilledCircle(iStartX + iRadius, iStartY + iHeight- iRadius, iRadius, iColor);       
    WGUIF_DrawFilledCircle(iStartX + iWidth - iRadius, iStartY + iHeight - iRadius, iRadius, iColor);   
}

MBT_VOID uif_ShareDrawCombinHBar( MBT_S32 x, MBT_S32 y, MBT_S32 width,BITMAPTRUECOLOR *pFirstBmp,BITMAPTRUECOLOR *pMidBmp,BITMAPTRUECOLOR *pLastBmp)
{
    MBT_S32 iMidWidth;
    if(MM_NULL == pFirstBmp||MM_NULL == pMidBmp||MM_NULL == pLastBmp)
    {
        return;
    }

    WGUIF_DisplayReginTrueColorBmp(x, y,0,0, pFirstBmp->bWidth, pFirstBmp->bHeight,pFirstBmp,MM_TRUE);
    iMidWidth = width - pFirstBmp->bWidth - pLastBmp->bWidth;
    if(iMidWidth > pMidBmp->bWidth)
    {
        uif_ShareFillRectWithBmp(x+pFirstBmp->bWidth,y,iMidWidth, pMidBmp->bHeight,pMidBmp);
    }
    else if(iMidWidth > 0)
    {
        WGUIF_DisplayReginTrueColorBmp(x+pFirstBmp->bWidth, y,0,0,iMidWidth,pMidBmp->bHeight,pMidBmp,MM_TRUE);
    }

	WGUIF_DisplayReginTrueColorBmp(x+width-pLastBmp->bWidth, y,0,0, pLastBmp->bWidth, pLastBmp->bHeight,pLastBmp,MM_TRUE);
}

 
MBT_VOID uif_ShareFillRectWithBmp( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height, BITMAPTRUECOLOR *pBmp)
{
    MBT_S32 iColNum, iRowNum;
    MBT_BOOL bColNeedRepair = MM_FALSE;
    MBT_BOOL bRowNeedRepair = MM_FALSE;
    MBT_S32 i, j;

    if(MM_NULL == pBmp||0 == width || width < pBmp->bWidth || height < pBmp->bHeight )
    {
        return;
    }

    iColNum = width/pBmp->bWidth;
    iRowNum = height / pBmp->bHeight;
    bColNeedRepair = (height%pBmp->bHeight==0?MM_FALSE:MM_TRUE );
    bRowNeedRepair = (width%pBmp->bWidth==0?MM_FALSE:MM_TRUE );
    for ( j=0; j<iRowNum; j++ )
    {
        for( i=0; i<iColNum; i++ )
        {
            WGUIF_DisplayReginTrueColorBmp(x+i*pBmp->bWidth, y+j*pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }

        if(bRowNeedRepair)
        {
            WGUIF_DisplayReginTrueColorBmp(x+width - pBmp->bWidth, y+j*pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }
    }

    if (bColNeedRepair)
    {
        for( i=0; i<iColNum; i++ )
        {
            WGUIF_DisplayReginTrueColorBmp(x+i*pBmp->bWidth, y+height-pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }

        if(bRowNeedRepair)
        {
            WGUIF_DisplayReginTrueColorBmp(x+width - pBmp->bWidth, y+height-pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }
    }    
}


MBT_VOID uif_ShareSetSecondTitle( MBT_S32 x, MBT_S32 y,MBT_S32 s32TitleWidth,MBT_S32 s32TitleHeight,MBT_CHAR* pTitle ,MBT_U32 u32FontColor)
{
    MBT_U32 u32Len = strlen(pTitle);
    WGUIF_SetFontHeight(SECONDTITLE_FONT_HEIGHT);
    WGUIF_FNTDrawTxt(x + (s32TitleWidth - WGUIF_FNTGetTxtWidth(u32Len, pTitle))/2, y+(s32TitleHeight-WGUIF_GetFontHeight())/2,u32Len, pTitle, u32FontColor);
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE18);
}

static MBT_VOID uif_Draw3DCorner( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height ,MBT_S32 iLeftColor,MBT_S32 iRightCorner)
{
    MBT_S32 iTemp;

    if(width >= height)
    {
        MBT_S32 iStepY;
        for(iStepY = 0;iStepY < height;iStepY++)
        {
            iTemp = (MBT_S32)(iStepY*width/height);
            y ++;
            WGUIF_DrawFilledRectangle( x,y,width - iTemp, 1,iLeftColor);
            WGUIF_DrawFilledRectangle( x + width - iTemp,y,iTemp, 1,iRightCorner);
        }
    }
    else
    {
        MBT_S32 iStepX ;
        for(iStepX = 0;iStepX < width;iStepX++)
        {
            iTemp = (MBT_S32)(iStepX*height/width);
            x ++;
            WGUIF_DrawFilledRectangle( x,  y,1, height - iTemp,iLeftColor);
            WGUIF_DrawFilledRectangle( x,  y+height - iTemp,1, iTemp,iRightCorner);
        }
    }
}


MBT_VOID uif_Draw3DProtrudeFrame( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height )
{
    MBT_S32 blocksize = 4;

    WGUIF_DrawFilledRectangle( x,  y, width, blocksize,FRAM_COLOR);
    WGUIF_DrawFilledRectangle( x,  y, blocksize, height,FRAM_COLOR);

    WGUIF_DrawFilledRectangle( x, y+height-blocksize, width, blocksize,FRAM_COLOR1);
    WGUIF_DrawFilledRectangle( x+width-blocksize, y, blocksize, height,FRAM_COLOR1);
    uif_Draw3DCorner(x+width-blocksize, y,blocksize,blocksize, FRAM_COLOR,FRAM_COLOR1);
    uif_Draw3DCorner(x, y+height-blocksize,blocksize,blocksize, FRAM_COLOR,FRAM_COLOR1);
}



MBT_S32 uif_GetDayInGregorianMonth(MBT_S32 y, MBT_S32 m) 
{
    static MBT_CHAR daysInGregorianMonth[] = {31,28,31,30,31,30,31,31,30,31,30,31};
	MBT_S32 d = 0;
	if(m>0 && m<13)
    {
    	d = daysInGregorianMonth[m-1];
    	if (m==2 && TMF_LeapYear(y)) d++; // 公历闰年二月多一天
    }  
	return d;
}

MBT_S32 uif_XDayOfYear(MBT_S32 y, MBT_S32 m, MBT_S32 d) 
{
	MBT_S32 c = 0;
	MBT_S32 i;
	for ( i=1; i<m; i++) 
    {
    	c = c + uif_GetDayInGregorianMonth(y,i);
    }
	c = c + d;
	return c;      
}

MBT_S32 uif_XDayOfWeek(MBT_S32 y, MBT_S32 m, MBT_S32 d) 
{
	MBT_S32 w = 1; // 公历一年一月一日是星期一，所以起始值为星期日
	MBT_S32 ly ;
	MBT_S32 ry ;

	y = (y-1)%400 + 1; // 公历星期值分部 400 年循环一次
	ly = (y-1)/4; // 闰年次数
	ly = ly - (y-1)/100;
	ly = ly + (y-1)/400;
	ry = y - 1 - ly; // 常年次数
	w = w + ry; // 常年星期值增一
	w = w + 2*ly; // 闰年星期值增二
	w = w + uif_XDayOfYear(y,m,d); 
	w = (w-1)%7;
    
	return w;
}


/***************************************************************
      Name :uif_GetDayOfWeekStr
      Description: 
                            Get the day of week ,on a given date
       Input Para.: 
                                stTime  a time structure
                                pcBuffer the day of week such as 'Monday' 'Tuesday' ....
                                
                         
       Return Para.: the index of the day in a week
                           0(Monday) ~ 6(Sunday)
                           
      Return value : non
      Modification:
	1.
	Date:             2006.03.10
	Author: sunzehui
	Description: Modify
*****************************************************************/
MBT_S32 uif_GetDayOfWeekStr(TIMER_M stTime, MBT_CHAR *pcBuffer)
{
    MBT_CHAR* pstWeekday[2][7] =
    {
        {
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat",
            "Sun"

        },

        {
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat",
            "Sun"

        },
    };

    MBT_S32 iDayOfWeek  = stTime.Weekday;

    if(iDayOfWeek <1||iDayOfWeek>7)
    {
        iDayOfWeek = uif_XDayOfWeek(1900 + stTime.year,stTime.month,stTime.date);
        if(0 == iDayOfWeek)
        {
            iDayOfWeek = 7;
        }
    }

    iDayOfWeek --;
    
    if(MM_NULL != pcBuffer)
    {
        sprintf(pcBuffer, "%s", pstWeekday[uiv_u8Language][iDayOfWeek]);
    }

    return iDayOfWeek;
}

/******************************************
*
*给出的字符串格式为
*2006.06.16  星期四  16:52
*
******************************************/
static MBT_VOID uif_GetTimeInfoStr(MBT_CHAR *timeStr)
{
    TIMER_M  stTempTime;
    MBT_CHAR weekDayBuffer[7];
    if(MM_NULL == timeStr)
    {
        return;
    }

    memset(weekDayBuffer,0,sizeof(weekDayBuffer));   
    TMF_GetSysTime(&stTempTime);
    uif_GetDayOfWeekStr(stTempTime,weekDayBuffer);

    sprintf(timeStr,"%04d-%02d-%02d %02d:%02d  %s",\
    stTempTime.year + 1900,stTempTime.month,stTempTime.date,stTempTime.hour,stTempTime.minute,weekDayBuffer);
}

MBT_VOID uif_DisplayTimeOnCaptionBMP( MBT_S32 s32YPosition )
{
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32YoffSet = 0;
    MBT_S32 s32XoffSet = 0;
    
    pstFramBmp = BMPF_GetBMP(m_ui_Title_DateIfor);
    s32YoffSet = (TOPLEFTMAINTITLE_FONT_HEIGHT_HD - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(TIME_START_X, s32YPosition+s32YoffSet, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

	pstFramBmp = BMPF_GetBMP(m_ui_Title_ClockIfor);
    s32YoffSet = (TOPLEFTMAINTITLE_FONT_HEIGHT_HD - pstFramBmp->bHeight)/2;
    s32XoffSet = BMPF_GetBMPWidth(m_ui_Title_DateIfor) + TIME_BS_W + TIME_YMD_W + TIME_CT_W;
    WGUIF_DisplayReginTrueColorBmp(TIME_START_X+s32XoffSet, s32YPosition+s32YoffSet, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
}

MBT_BOOL uif_DisplayTimeOnCaptionStr( MBT_BOOL bRedraw , MBT_S32 s32YPosition)
{
    static MBT_CHAR me_OldDateStr[30]={0};
    MBT_BOOL bRefresh = MM_FALSE;
    MBT_CHAR me_DateStr1[30] = { 0 };
    MBT_S32 s32FontHeight;
    MBT_S32 s32YoffSet = 0;
    MBT_S32 s32XoffSet = 0;
    MBT_CHAR me_DateStr2[16] = { 0 };
    MBT_CHAR me_TimeStr[16] = { 0 };
    TIMER_M  stTempTime;
    
    uif_GetTimeInfoStr(me_DateStr1);

    TMF_GetSysTime(&stTempTime);
    if ( bRedraw || strcmp(me_DateStr1, me_OldDateStr) )
    {
        strcpy( me_OldDateStr, me_DateStr1);
        
        sprintf(me_DateStr2,"%02d/%02d", stTempTime.month, stTempTime.date);
    	sprintf(me_TimeStr,"%02d:%02d",stTempTime.hour, stTempTime.minute);
    	
    	s32FontHeight =  WGUIF_GetFontHeight();
        WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
        
        s32YoffSet = (TOPLEFTMAINTITLE_FONT_HEIGHT_HD - GWFONT_HEIGHT_SIZE22)/2;
        s32XoffSet = BMPF_GetBMPWidth(m_ui_Title_DateIfor)+ TIME_BS_W;
        WGUIF_DisplayReginTrueColorBmp(0, 0, TIME_START_X+s32XoffSet, s32YPosition, TIME_YMD_W, TOPLEFTMAINTITLE_FONT_HEIGHT_HD, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_FALSE);
		WGUIF_FNTDrawTxt(TIME_START_X+s32XoffSet, s32YPosition+s32YoffSet, strlen(me_DateStr2), me_DateStr2, FONT_FRONT_COLOR_WHITE);

        s32XoffSet = BMPF_GetBMPWidth(m_ui_Title_DateIfor) + TIME_BS_W + TIME_YMD_W + TIME_CT_W + BMPF_GetBMPWidth(m_ui_Title_ClockIfor)+TIME_BS_W;
        s32YoffSet = (TOPLEFTMAINTITLE_FONT_HEIGHT_HD - GWFONT_HEIGHT_SIZE22)/2;
		WGUIF_DisplayReginTrueColorBmp(0, 0, TIME_START_X+s32XoffSet, s32YPosition, TIME_HM_W, TOPLEFTMAINTITLE_FONT_HEIGHT_HD, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_FALSE);
        WGUIF_FNTDrawTxt(TIME_START_X+s32XoffSet, s32YPosition+s32YoffSet, strlen(me_TimeStr), me_TimeStr, FONT_FRONT_COLOR_WHITE);

        WGUIF_SetFontHeight(s32FontHeight);
        bRefresh = MM_TRUE;
    }

    return bRefresh;
}


MBT_VOID uif_DrawMsgBgPanelNoTitle(MBT_S32 x,MBT_S32 y)
{
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE); 
}


MBT_VOID uif_DrawMsgBgPanel(MBT_S32 x,MBT_S32 y,MBT_CHAR *pStrTitle)
{
    MBT_S32 s32Len;
    MBT_S32 s32FontWidth; 
    MBT_S32 s32Font_Height;
    
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE); 

    s32Font_Height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    s32Len = strlen(pStrTitle);
    s32FontWidth = WGUIF_FNTGetTxtWidth(s32Len, pStrTitle);
    WGUIF_FNTDrawTxt(x+((pstBmp->bWidth-s32FontWidth)/2),y+10,s32Len,pStrTitle,FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32Font_Height);
}


#define PINDLG_EREA_WIDTH 550
#define PINDLG_EREA_HEIGHT 160

#define PINDLG_EREA_X (OSD_REGINMAXWIDHT - 550)/2//442
#define PINDLG_EREA_Y 200
#define PINDLG_PASSWORD_BIG_FOCUS_WIDTH (593)
#define PINDLG_PASSWORD_BIG_FOCUS_HEIGHT (30)

#define PINDLG_PASSWORD_SMALL_FOCUS_XOFF (262)
#define PINDLG_PASSWORD_SMALL_FOCUS_WIDTH (100)
#define PINDLG_PASSWORD_SMALL_FOCUS_HEIGHT (30)
#define PINDLG_PASSWORD_PIN_FOCUS_WIDTH (120) //pin 6 char = 6*20
#define PINDLG_PASSWORD_PWD_FOCUS_WIDTH (80)  //pwd 4 char = 4*20
#define PIN_BIG_FOCUS_GAP (20)
#define PINWORD_NUM (6)
#define PASSWORD_NUM (4)

static MBT_VOID ShareSetPwdDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor); 
    MBT_S32 s32Startx = (OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 s32Starty = (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2 - UI_DLG_OFFSET_Y;

    if(MM_TRUE == bHidden)
    {
        return;
    }
    
    if(bSelect == 1)
    {
        WGUIF_DisplayReginTrueColorBmp(s32Startx, s32Starty, x-s32Startx, y-s32Starty, iWidth, iHeight, BMPF_GetBMP(m_ui_Msg_backgroundIfor), MM_TRUE);
    }
}


static MBT_VOID ShareSetPinDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor); 
    MBT_S32 s32Startx = (OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 s32Starty = (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2 - UI_DLG_OFFSET_Y;

    if(MM_TRUE == bHidden)
    {
        return;
    }
    
    if(bSelect == 1)
    {
        WGUIF_DisplayReginTrueColorBmp(s32Startx, s32Starty, x-s32Startx, y-s32Starty, iWidth, iHeight, BMPF_GetBMP(m_ui_Msg_backgroundIfor), MM_TRUE);
    }
}

static void ShareSetPinInitEdit(EDIT *stSetPwdEdit,MBT_BOOL bPinPwd)
{
    int i;
    DATAENTRY *pstDataEntry = stSetPwdEdit->stDataEntry;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = (OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2 - UI_DLG_OFFSET_Y;

    memset(stSetPwdEdit,0,sizeof(EDIT));
    stSetPwdEdit->bModified = MM_TRUE;
    stSetPwdEdit->iSelect = 0;
    stSetPwdEdit->iPrevSelect = stSetPwdEdit->iSelect;
    stSetPwdEdit->iTotal = 1;	
    stSetPwdEdit->bPaintCurr = MM_FALSE;
    stSetPwdEdit->bPaintPrev = MM_FALSE;
    if(MM_TRUE == bPinPwd)
    {
        stSetPwdEdit->EditDrawItemBar = ShareSetPinDrawItem;
    }
    else
    {
        stSetPwdEdit->EditDrawItemBar = ShareSetPwdDrawItem;
    }

    //big high light
    for(i = 0;i < stSetPwdEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = MM_NULL;   
        pstDataEntry[i].iTxtCol = x + (pstBmp->bWidth - (bPinPwd ? PINDLG_PASSWORD_PIN_FOCUS_WIDTH : PINDLG_PASSWORD_PWD_FOCUS_WIDTH))/2;
        pstDataEntry[i].iTxtWidth = (bPinPwd ? PINDLG_PASSWORD_PIN_FOCUS_WIDTH : PINDLG_PASSWORD_PWD_FOCUS_WIDTH);
        pstDataEntry[i].iCol = x + (pstBmp->bWidth - (bPinPwd ? PINDLG_PASSWORD_PIN_FOCUS_WIDTH : PINDLG_PASSWORD_PWD_FOCUS_WIDTH))/2;
        pstDataEntry[i].iWidth = (bPinPwd ? PINDLG_PASSWORD_PIN_FOCUS_WIDTH : PINDLG_PASSWORD_PWD_FOCUS_WIDTH);
        pstDataEntry[i].iHeight = PINDLG_PASSWORD_BIG_FOCUS_HEIGHT;
        pstDataEntry[i].iRow = y + 20 + (pstBmp->bHeight-40)/2;	
        pstDataEntry[i].iTotalItems = (bPinPwd ? PINWORD_NUM : PASSWORD_NUM);
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].field_type = PIN_FIELD;
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].u32FontSize = MID_GWFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    }    
}



MBT_S32 uif_SharePwdCheckDlg(MBT_U32 u32StoredPwd, MBT_BOOL bPinPwd)
{    
    MBT_S32 iRetKey;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 me_PassWord = -1;
    BITMAPTRUECOLOR  Copybitmap;
    EDIT stSetPwdEdit;
    DATAENTRY *pstDataEntry = stSetPwdEdit.stDataEntry;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = (OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2 - UI_DLG_OFFSET_Y;
    MBT_CHAR *pstring;
    MBT_CHAR *infostr[2][3] = 
    {
        {
            "Password",
            "Invalid Password",
            "PIN"
        },
        {
            "Password",
            "Invalid Password",
            "PIN"
        }
    };

    if(MM_TRUE == bPinPwd)
    {
        pstring = infostr[uiv_u8Language][2];
    }
    else
    {
        pstring = infostr[uiv_u8Language][0];
    }
    
    Copybitmap.bWidth = pstBmp->bWidth;
    Copybitmap.bHeight = pstBmp->bHeight;    

    WGUIF_GetRectangleImage(x,y, &Copybitmap);

    while ( !bExit )
    {
        if(bRedraw)
        {
            ShareSetPinInitEdit(&stSetPwdEdit, bPinPwd);
            uif_DrawMsgBgPanel(x,y,pstring);
            bRefresh = MM_TRUE;
            bRedraw = MM_FALSE;
        }
        
        bRefresh |= UCTRF_EditOnDraw(&stSetPwdEdit);
        
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iRetKey = uif_ReadKey(  0 );
        
        UCTRF_EditGetKey(&stSetPwdEdit,iRetKey);
        
        switch ( iRetKey )
        {
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
				UIF_SendKeyToUi(iRetKey);
                bExit = MM_TRUE;
				break;

            case DUMMY_KEY_NO_SPACE:
                if(!uif_GetMenuState())
                {
                    bRefresh |= uif_CAMShowEmailLessMem();
                }
                break;

            case DUMMY_KEY_CANCEL_ITEM:  /*隐藏邮件通知图标*/
                if(uif_CAMHideEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;  
                
            case DUMMY_KEY_SHOW_ITEM:  /*新邮件通知，显示新邮件图标*/
                if(uif_CAMDisplayEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;      
                
            case DUMMY_KEY_EXIT:
			case DUMMY_KEY_MENU:
                me_PassWord = -1;
                bExit = MM_TRUE;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
			case DUMMY_KEY_0:
			case DUMMY_KEY_1:
			case DUMMY_KEY_2:
			case DUMMY_KEY_3:
			case DUMMY_KEY_4:
			case DUMMY_KEY_5:
			case DUMMY_KEY_6:
			case DUMMY_KEY_7:
			case DUMMY_KEY_8:
			case DUMMY_KEY_9:
                if(pstDataEntry[0].iSelect >= pstDataEntry[0].iTotalItems)
				{
                    me_PassWord = atoi(pstDataEntry[0].acDataRead);
                    if(MM_TRUE == bPinPwd)
                    {
                        bExit = MM_TRUE;
                    }
                    else
                    {
                        if(u32StoredPwd == me_PassWord)
                        {
                            me_PassWord = 1;
                            bExit = MM_TRUE;
                        }
                        else if(NM_SUPER_PASSWORD == me_PassWord)
                        {
                            me_PassWord = 2;
                            bExit = MM_TRUE;
                        }
                        else
                        {
                            me_PassWord = -1;
                            pstDataEntry[0].iSelect = 0;
                            memset(pstDataEntry[0].acDataRead,0x0,sizeof pstDataEntry[0].acDataRead);
                            uif_DrawMsgBgTextVerPanel(x, y, infostr[uiv_u8Language][1]);
                            WGUIF_ReFreshLayer();
                            MLMF_Task_Sleep(600);
                            bRedraw = MM_TRUE;
                        }
                    }
				}
				break;
            default:   
                break;
        }
    }

    if(MM_TRUE == WGUIF_PutRectangleImage(x,y, &Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
    return me_PassWord;
}  


MBT_BOOL uif_ShowMsgList(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    PROMPT_LIST *pstPromptNode;
    pstPromptNode = uif_CAMPopUpPromptNode();
	
    if(MM_NULL == pstPromptNode )
    {
        WGUIF_ClsScreen( x, y, iWidth, iHeight);
    }
    else if(0 == pstPromptNode->u8DisplaySign)
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
        if((iWidth >= pstBmp->bWidth)&&(iHeight >= pstBmp->bHeight))
        {
            if(DUMMY_KEY_CURTAINCTR_TYPE0 == pstPromptNode->i32PromptType||DUMMY_KEY_CURTAIN_TYPE0 == pstPromptNode->i32PromptType)
            {
                WGUIF_DrawFilledRectangle(x, y, pstBmp->bWidth, pstBmp->bHeight, MID_MSG_GRAY_COLOR);
            }
            else
            {
                WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE);
            }
            WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
            uif_DrawTxtAtMid(pstPromptNode->pacMsg,x+40, y,iWidth - 80,pstBmp->bHeight,FONT_FRONT_COLOR_WHITE);
        }
        else
        {
            uif_ShareDrawFilledBoxWith4CircleCorner(x, y, iWidth, iHeight, 4,MID_MSG_GRAY_COLOR);
            WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
            uif_DrawTxtAtMid(pstPromptNode->pacMsg,x+5, y,iWidth - 10,iHeight,FONT_FRONT_COLOR_WHITE);
        }
        pstPromptNode->u8DisplaySign = 1;
    }
    return MM_TRUE;
}


MBT_BOOL uif_ShowTopScreenICO(MBT_VOID)
{
    MBT_BOOL bRefresh = MM_FALSE;
    BITMAPTRUECOLOR *pstBmp;
    MBT_S32 yOffSet = 0;
    
    if(0x00000001 == uiv_stMsgBar[MUTE_STATE_MSG].uBoxStatus)/*已经Mute，又未显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_muteIfor);
        WGUIF_DisplayReginTrueColorBmp(UI_MUTE_DISPLAY_X , UI_MUTE_DISPLAY_Y, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
        WGUIF_SetFontHeight(SECONDTITLE_FONT_HEIGHT);
        yOffSet = (pstBmp->bHeight - SECONDMENU_LISTFONT_HEIGHT)/2;
        WGUIF_FNTDrawTxt(UI_MUTE_DISPLAY_X+pstBmp->bWidth+10, UI_MUTE_DISPLAY_Y+yOffSet, 4, "Mute", FONT_FRONT_COLOR_WHITE);
            
        uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 1;
        bRefresh = MM_TRUE;
    }
    else if(0x00000002 == uiv_stMsgBar[MUTE_STATE_MSG].uBoxStatus)/*未Mute，却还在显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_muteIfor);
        WGUIF_ClsScreen(UI_MUTE_DISPLAY_X , UI_MUTE_DISPLAY_Y, pstBmp->bWidth+UI_MUTE_DISPLAY_W_NOBMP, pstBmp->bHeight);
        uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 0;
        bRefresh = MM_TRUE;
    }

    if(0x00000001 == uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].uBoxStatus)/*已经Email，又未显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_Email_iconIfor);
        WGUIF_DisplayReginTrueColorBmp(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp,MM_TRUE);
        uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 1;
        bRefresh = MM_TRUE;
    }
    else if(0x00000002 == uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].uBoxStatus)/*未Email，却还在显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_Email_iconIfor);
        WGUIF_ClsScreen(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y, pstBmp->bWidth, pstBmp->bHeight);	
        uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 0;
        bRefresh = MM_TRUE;
    }

    if(0x00000001 == uiv_stMsgBar[BOOK_CLOCK_MSG].uBoxStatus)/*已经Clock，又未显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
        WGUIF_DisplayReginTrueColorBmp(UI_CLOCK_DISPLAY_X,UI_CLOCK_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp,MM_TRUE);
        uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 1;
        bRefresh = MM_TRUE;
    }
    else if(0x00000002 == uiv_stMsgBar[BOOK_CLOCK_MSG].uBoxStatus)/*未Clock，却还在显示*/
    {
        pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
        WGUIF_ClsScreen(UI_CLOCK_DISPLAY_X,UI_CLOCK_DISPLAY_Y, pstBmp->bWidth, pstBmp->bHeight);	
        uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 0;
        bRefresh = MM_TRUE;
    }

    return bRefresh;
}

PROMPT_LIST *uif_DetectVidioState(MBT_BOOL *bClsScrn)
{
    PROMPT_LIST *pstPromptNode = MM_NULL;
    DVB_BOX *pstBoxInfo;

    if(1 == uif_IsPlayProcess())
    {
        return pstPromptNode;
    }
    pstBoxInfo = DBSF_DataGetBoxInfo();
    *bClsScrn = MM_FALSE;
    if(0 == MLMF_AV_GetAVState())
    {
        if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
        {
            DBSF_PlyOpenVideoWin(MM_FALSE);
            if(MM_TUNER_UNLOCKED == MLMF_Tuner_GetLockStatus(0))
            {
                pstPromptNode = uif_CAMPutNewPrompt(DUMMY_KEY_TUNERUNLOCK,m_TunerMsg,cam_InvalidPID);
            }
            else 
            {
#if(1 != TFCONFIG) 
                UI_PRG stPrgInfo;
#endif
                *bClsScrn |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_TUNERUNLOCK);
#if(1 == TFCONFIG)  
#else
                if (DVB_INVALID_LINK != DBSF_DataCurPrgInfo(&stPrgInfo) )
                {
                    if (LOCK_BIT_MASK == (stPrgInfo.stService.ucProgram_status&LOCK_BIT_MASK))
                    {
                        pstPromptNode = uif_CAMPutNewPrompt(DUMMY_KEY_WAIT_FOR_PIN,m_DbsMsg,uiv_stCaPassedEcmPid);
                    }
                    else
                    {
                        //pstPromptNode = uif_CAMPutNewPrompt(DUMMY_KEY_PROGRAMSTOPED0,m_AVDrvMsg,uiv_stCaPassedEcmPid);
                    }
                }
#endif
            }
        }	      
    }       
    else
    {
        if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
        {
            if(UIF_BIsSTBPoswerOn())
            {
                DBSF_PlyOpenVideoWin(MM_TRUE);
            }        
        }
        
        *bClsScrn |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_TUNERUNLOCK);
        *bClsScrn |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_PROGRAMSTOPED0);
        *bClsScrn |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_WAIT_FOR_PIN);
        *bClsScrn |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_LOCKPLAY);
    }
    return pstPromptNode;
}



/*
	韩要求多行显示时，每行均应居中，故改写此函数
*/
MBT_VOID uif_DrawTxtAtMid(MBT_CHAR *pString,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_U32 u32FontColor)
{
    MBT_S32 iPhyWidth;
    MBT_S32 iFontHeight;
    MBT_S32 iLineGap = 5;
    MBT_S32 iStrLen;
    MBT_U32 u32Line;
    MBT_U32 u32TotalLine = 0;
    MBT_CHAR* pStr = MM_NULL;
    MBT_CHAR* pNewLine = MM_NULL;
    MBT_CHAR buf[512];

    if(MM_NULL == pString)
    {
        return;
    }
    iFontHeight = WGUIF_GetFontHeight();
	pStr = pString;

	do
	{
		memset(buf,0x0,sizeof buf);

		pNewLine = strchr(pStr,'\n');
		if(MM_NULL != pNewLine)
		{
			strncpy(buf,pStr,pNewLine-pStr);
			buf[pNewLine-pStr] = 0;
		}
		else
		{
			strncpy(buf,pStr,511);
			buf[511] =0; 
		}

	    iStrLen = strlen(buf);
	    u32Line = 1;
	    iPhyWidth = WGUIF_FNTGetTxtWidthLinesAdjust(iStrLen,buf,&u32Line,iWidth);

		u32TotalLine += u32Line;

		pStr += (pNewLine-pStr + 1);
	}while(MM_NULL != pNewLine);
	
	

	pStr = pString;
	if(iHeight > ((iFontHeight + iLineGap)*u32TotalLine))
	{
		y += ((iHeight - ((iFontHeight + iLineGap)*u32TotalLine- iLineGap))>>1);
	}
	
	do
	{
		memset(buf,0x0,sizeof buf);

		pNewLine = strchr(pStr,'\n');
		if(MM_NULL != pNewLine)
		{
			strncpy(buf,pStr,pNewLine-pStr);
			buf[pNewLine-pStr] = 0;
		}
		else
		{
			strncpy(buf,pStr,sizeof buf -1);
			buf[sizeof buf -1] =0; 
		}

	    iStrLen = strlen(buf);
	    u32Line = 1;
	    iPhyWidth = WGUIF_FNTGetTxtWidthLinesAdjust(iStrLen,buf,&u32Line,iWidth);

		//WGUIF_DrawLimitWidthTxt(x+((iWidth - iPhyWidth)>>1), y, iStrLen,buf, u32FontColor, iPhyWidth,iFontHeight);
		WGUIF_FNTDrawLimitWidthTxt(x+((iWidth - iPhyWidth)>>1), y, iStrLen,buf, u32FontColor, iPhyWidth,iFontHeight);

		y += ((iFontHeight + iLineGap)*u32Line);
		pStr += (pNewLine-pStr + 1);
	}while(MM_NULL != pNewLine);
}



/*
	韩要求多行显示时，每行均应居中，故改写此函数
*/
MBT_VOID uif_DrawExtTxtAtMid(MBT_CHAR *pString,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_U32 u32FontColor)
{
    MBT_S32 iPhyWidth;
    MBT_S32 iFontHeight;
    MBT_S32 iLineGap = 5;
    MBT_S32 iStrLen;
    MBT_U32 u32Line;
    MBT_U32 u32TotalLine = 0;
    MBT_CHAR* pStr = MM_NULL;
    MBT_CHAR* pNewLine = MM_NULL;
    MBT_CHAR buf[512];

    if(MM_NULL == pString)
    {
        return;
    }
    iFontHeight = WGUIF_GetFontHeight();
	pStr = pString;

	do
	{
		memset(buf,0x0,sizeof buf);

		pNewLine = strchr(pStr,'\n');
		if(MM_NULL != pNewLine)
		{
			strncpy(buf,pStr,pNewLine-pStr);
			buf[pNewLine-pStr] = 0;
		}
		else
		{
			strncpy(buf,pStr,511);
			buf[511] =0; 
		}

	    iStrLen = strlen(buf);
	    u32Line = 1;
	    iPhyWidth = WGUIF_FNTGetTxtWidthLinesAdjust(iStrLen,buf,&u32Line,iWidth);

		u32TotalLine += u32Line;

		pStr += (pNewLine-pStr + 1);
	}while(MM_NULL != pNewLine);
	
	

	pStr = pString;
	if(iHeight > ((iFontHeight + iLineGap)*u32TotalLine))
	{
		y += ((iHeight - ((iFontHeight + iLineGap)*u32TotalLine- iLineGap))>>1);
	}
	
	do
	{
		memset(buf,0x0,sizeof buf);

		pNewLine = strchr(pStr,'\n');
		if(MM_NULL != pNewLine)
		{
			strncpy(buf,pStr,pNewLine-pStr);
			buf[pNewLine-pStr] = 0;
		}
		else
		{
			strncpy(buf,pStr,sizeof buf -1);
			buf[sizeof buf -1] =0; 
		}

	    iStrLen = strlen(buf);
	    u32Line = 1;
	    iPhyWidth = WGUIF_FNTGetTxtWidthLinesAdjust(iStrLen,buf,&u32Line,iWidth);

		//WGUIF_DrawLimitWidthTxt(x+((iWidth - iPhyWidth)>>1), y, iStrLen,buf, u32FontColor, iPhyWidth,iFontHeight);
		WGUIF_FNTDrawLimitWidthTxtExt(x+((iWidth - iPhyWidth)>>1), y, iStrLen,buf, u32FontColor, iPhyWidth,iFontHeight);

		y += ((iFontHeight + iLineGap)*u32Line);
		pStr += (pNewLine-pStr + 1);
	}while(MM_NULL != pNewLine);
}

#if(OVT_FAC_MODE == 1)
/*为了不把现有逻辑搞混，只能在调用最开始UI的地方把功能截断*/
/*在其他地方用该全局变量控制，主要是不响应按键，以及进入到*/
/*响应的功能模块*/
MBT_U8 gFacTestRunningState = 0;/*0:idle、1:fac main test、2:fac sys info、3:fac aging test*/
#endif

MBT_BOOL uif_AlarmMsgBoxes(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{       
    PROMPT_LIST *pstPromptNode = MM_NULL;
    MBT_BOOL bRefresh = MM_FALSE;
    MBT_BOOL bClsSrn = MM_FALSE;
    MBT_U32 u32Time;
    /*控制检查时间,间隔过小会造成解码器状态给出错误状态*/
    static MBT_U32 u32PrevTime = 0;
	MBT_S32 font_height = WGUIF_GetFontHeight();
	
    u32Time = MLMF_SYS_GetMS();
    if(u32Time - u32PrevTime < 1000)
    {
        return bRefresh;
    }
    u32PrevTime = u32Time;
    
    if(DBSF_DataGetListPrgNum() <= 0)
    {
        uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_PROGRAMSTOPED0);
        uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_WAIT_FOR_PIN);
        pstPromptNode = uif_CAMPutNewPrompt(DUMMY_KEY_NOSERVICE,m_DbsMsg,cam_InvalidPID);
    }
    else
    {
        if(MM_TRUE == uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_NOSERVICE))
        {
            WGUIF_ClsScreen( x, y, iWidth, iHeight);
            bRefresh = MM_TRUE;
        }
        pstPromptNode = uif_DetectVidioState(&bClsSrn);    
    }

    if(bClsSrn)
    {
        WGUIF_ClsScreen( x, y, iWidth, iHeight);
        bRefresh = MM_TRUE;
    }

    if(MM_NULL == pstPromptNode)
    {
        pstPromptNode = uif_CAMPopUpPromptNode();
    }
    
    if(MM_NULL == pstPromptNode)
    {
        //MLMF_Print("uif_AlarmMsgBoxes pstPromptNode = NULL\n");
        return bRefresh;
    }
    
    //MLMF_Print("uif_AlarmMsgBoxes u8DisplaySign = %x i32PromptType = %x %s\n",pstPromptNode->u8DisplaySign,pstPromptNode->i32PromptType,pstPromptNode->pacMsg);
    if(0 == pstPromptNode->u8DisplaySign)
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
        if((iWidth >= pstBmp->bWidth)&&(iHeight >= pstBmp->bHeight))
        {
            if(DUMMY_KEY_CURTAINCTR_TYPE0 == pstPromptNode->i32PromptType||DUMMY_KEY_CURTAIN_TYPE0 == pstPromptNode->i32PromptType)
            {
                WGUIF_DrawFilledRectangle(x, y, pstBmp->bWidth, pstBmp->bHeight, MID_MSG_GRAY_COLOR);
            }
            else
            {
                WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE);
            }

            WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
            uif_DrawTxtAtMid(pstPromptNode->pacMsg,x+40, y,iWidth - 80,pstBmp->bHeight,FONT_FRONT_COLOR_WHITE);
        }
        else
        {
            uif_ShareDrawFilledBoxWith4CircleCorner(x, y, iWidth, iHeight, 4,MID_MSG_GRAY_COLOR);
            WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
            uif_DrawTxtAtMid(pstPromptNode->pacMsg,x+5, y,iWidth - 10,iHeight,FONT_FRONT_COLOR_WHITE);
        }
        pstPromptNode->u8DisplaySign = 1;
        bRefresh = MM_TRUE;
    }
	
	WGUIF_SetFontHeight(font_height);
    return bRefresh;
}


MBT_BOOL uif_ResetAlarmMsgFlag(MBT_VOID)
{
    uif_CAMResetAllPromptDisplaySign();
    uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 0;
    uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 0;
    uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 0;  
    return MM_FALSE;
}

MBT_S32 uif_NumberKeyChange(MBT_S32 iKey)
{
    MBT_BOOL bExit = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bNeedPlay = MM_FALSE;
    MBT_U32 iCurKeyPressTime = MLMF_SYS_GetMS() + 1000;
    MBT_S32  iProgramNoEntered;
    MBT_S32 iGetNumberKeyNum = 1;
    MBT_U8 uTempBuffer[5] = {0,0,0,0,0};
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 iMsgY = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2)-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstBmp->bWidth;
    MBT_S32 iMsgHeight = pstBmp->bHeight;
	MBT_S32 font_Height;
	MBT_CHAR tempData[2] = {0};

    if ( iKey < DUMMY_KEY_0 || iKey > DUMMY_KEY_9 )
    {
        return MM_FALSE;
    }    
	font_Height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(INPUT_CHANNEL_NUMBER_HEIGHT);
	
    iProgramNoEntered =  iKey - DUMMY_KEY_0 ;
    uTempBuffer[3] = iProgramNoEntered;
	sprintf(tempData,"%d",uTempBuffer[3]);
	WGUIF_FNTDrawTxt(INPUT_PROGRAM_NUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+3*INPUT_CHANNEL_NUMBER_DISTANCE, INPUT_PROGRAM_NUMBER_Y, 1, tempData, FONT_FRONT_COLOR_WHITE);
	WGUIF_ClsScreen(INPUT_PROGRAM_NUMBER_X,INPUT_PROGRAM_NUMBER_Y-3,INPUT_PROGRAM_NUMBER_WIDTH, INPUT_PROGRAM_NUMBER_HEIGHT+8);
	WGUIF_FNTDrawTxt(INPUT_PROGRAM_NUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+3*INPUT_CHANNEL_NUMBER_DISTANCE, INPUT_PROGRAM_NUMBER_Y, 1, tempData, FONT_FRONT_COLOR_WHITE);
	
	while(bExit)
    {
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (2000);  
        switch ( iKey )
        {
            case DUMMY_KEY_0:
            case DUMMY_KEY_1:
            case DUMMY_KEY_2:
            case DUMMY_KEY_3:
            case DUMMY_KEY_4:
            case DUMMY_KEY_5:
            case DUMMY_KEY_6:
            case DUMMY_KEY_7:
            case DUMMY_KEY_8:
            case DUMMY_KEY_9:
                iKey -= DUMMY_KEY_0;
                iGetNumberKeyNum++;
                uTempBuffer[0] =  uTempBuffer[1];
                uTempBuffer[1] =  uTempBuffer[2];
                uTempBuffer[2] =  uTempBuffer[3];
                uTempBuffer[3] = iKey;
                if(uTempBuffer[0]*1000+uTempBuffer[1]*100+uTempBuffer[2]*10+uTempBuffer[3] == NM_RECIEVER_VIEW_PASSWORD)
                {
            		bExit = MM_FALSE;
            		iProgramNoEntered = NM_RECIEVER_VIEW_PASSWORD;
            		break;
                }
				iProgramNoEntered=(uTempBuffer[1]*100+uTempBuffer[2]*10+uTempBuffer[3]);

				WGUIF_ClsScreen(INPUT_PROGRAM_NUMBER_X,INPUT_PROGRAM_NUMBER_Y-3,INPUT_PROGRAM_NUMBER_WIDTH, INPUT_PROGRAM_NUMBER_HEIGHT+8);

				sprintf(tempData,"%d",uTempBuffer[3]);
				WGUIF_SetFontHeight(INPUT_CHANNEL_NUMBER_HEIGHT);
				WGUIF_FNTDrawTxt(INPUT_PROGRAM_NUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+3*INPUT_CHANNEL_NUMBER_DISTANCE, INPUT_PROGRAM_NUMBER_Y, 1, tempData, FONT_FRONT_COLOR_WHITE);

				sprintf(tempData,"%d",uTempBuffer[2]);
				WGUIF_SetFontHeight(INPUT_CHANNEL_NUMBER_HEIGHT);
				WGUIF_FNTDrawTxt(INPUT_PROGRAM_NUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+2*INPUT_CHANNEL_NUMBER_DISTANCE, INPUT_PROGRAM_NUMBER_Y, 1, tempData, FONT_FRONT_COLOR_WHITE);
            	if(iGetNumberKeyNum>=3)
                {
                	sprintf(tempData,"%d",uTempBuffer[1]);
					WGUIF_SetFontHeight(INPUT_CHANNEL_NUMBER_HEIGHT);
					WGUIF_FNTDrawTxt(INPUT_PROGRAM_NUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+1*INPUT_CHANNEL_NUMBER_DISTANCE, INPUT_PROGRAM_NUMBER_Y, 1, tempData, FONT_FRONT_COLOR_WHITE);
				}
				
                WGUIF_ReFreshLayer();
                iCurKeyPressTime = MLMF_SYS_GetMS()+1000;
                break;
            case DUMMY_KEY_SELECT:
                bNeedPlay = MM_TRUE;
                bExit = MM_FALSE;
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
             case DUMMY_KEY_UPARROW:
             case DUMMY_KEY_DNARROW:
             case DUMMY_KEY_PGUP:
             case DUMMY_KEY_PGDN:
                 UIF_SendKeyToUi(iKey);
                 bExit = MM_TRUE;
                 break;
                 
            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY, iMsgWidth, iMsgHeight);
                break;

            default:	
                if(uif_ShowMsgList(iMsgX,iMsgY, iMsgWidth, iMsgHeight))
                {
                    bRefresh = MM_TRUE;
                }
                break;
        }

        if(MLMF_SYS_GetMS() > iCurKeyPressTime)
        {
        	bNeedPlay = MM_TRUE;
            bExit = MM_FALSE;
        }
    }
	WGUIF_SetFontHeight(font_Height);
    WGUIF_ClsScreen(INPUT_PROGRAM_NUMBER_X,INPUT_PROGRAM_NUMBER_Y,INPUT_PROGRAM_NUMBER_WIDTH, INPUT_PROGRAM_NUMBER_HEIGHT);
	WGUIF_ReFreshLayer();          
	if((bNeedPlay && iProgramNoEntered > 0) || iProgramNoEntered == NM_RECIEVER_VIEW_PASSWORD)
    {
        return iProgramNoEntered;
    }
    
    return 0;
}

MBT_S32 uif_GetPrgUpdateMsg(MBT_VOID)
{
    MBT_S32 iKey;
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;

    pMsgTitle = "Confirm";
    pMsgContent = "Channel list need to be update, \ndo you want to search?";
    //if(uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_TRUE))
    if(uif_ShareMakeSelectDlgNoTitle(pMsgContent,MM_TRUE))
    {
        iKey = DUMMY_KEY_FORCEUPDATE_PROGRAM;
    }
    else
    {
        iKey = -1;
    }

    return iKey;
}




MBT_BOOL uif_ShareIsKeyPressed( MBT_S32 iKey )
{
    switch(iKey)
    {
        case DUMMY_KEY_0:
        case DUMMY_KEY_1:
        case DUMMY_KEY_2:
        case DUMMY_KEY_3:
        case DUMMY_KEY_4:
        case DUMMY_KEY_5:
        case DUMMY_KEY_6:
        case DUMMY_KEY_7:
        case DUMMY_KEY_8:
        case DUMMY_KEY_9:
        case DUMMY_KEY_POWER:						//0xa2		
        case DUMMY_KEY_MUTE:
        case DUMMY_KEY_BACK:							//0x6a
        case DUMMY_KEY_AUDIOTRACK:						//0xea    
        case DUMMY_KEY_CHLIST:					//0x12    
        case DUMMY_KEY_EPG:							//0x18 			
        case DUMMY_KEY_INFO:						//0xf2 		
        case DUMMY_KEY_EXIT:							//0x3a		
        case DUMMY_KEY_SELECT:						//0xe0		
        case DUMMY_KEY_UPARROW:					//0xc0		
        case DUMMY_KEY_LEFTARROW:					//0x70		
        case DUMMY_KEY_RIGHTARROW:					//0x58		
        case DUMMY_KEY_DNARROW:					//0x40		
        case DUMMY_KEY_CLASSIC:						//0x8a		
        case DUMMY_KEY_VOLUMEUP:				//0xca		
        case DUMMY_KEY_VOLUMEDN:				//0x4a		
        case DUMMY_KEY_PGUP:	             				//0xc8
        case DUMMY_KEY_PGDN:	             				//0x60 
        case DUMMY_KEY_FAV:							//0x00
        case DUMMY_KEY_YELLOW_SUBSCRIBE:						//0x10
        case DUMMY_KEY_BLUE_EDIT:						//0x50
        case DUMMY_KEY_MENU:						//0x28		
        case DUMMY_KEY_EMAIL:					//0x72		
        case DUMMY_KEY_TVRADIO:					//0x38              
        case DUMMY_KEY_GREEN:	
        case DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB:   
        case DUMMY_KEY_ENTER_SYSINFO:
            return MM_TRUE;
        default:
            return MM_FALSE;
    }
}

MBT_BOOL uif_HideClockItem(MBT_VOID)
{
    MBT_BOOL  bRefresh = MM_FALSE;
    if(0 == uif_GetMenuState())
    {
        WGUIF_ClsScreen(UI_CLOCK_DISPLAY_X,UI_CLOCK_DISPLAY_Y,UI_CLOCK_DISPLAY_W,UI_CLOCK_DISPLAY_H);	
        bRefresh = MM_TRUE;
    }
    uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uCurState = 0;
    uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 0;
    return bRefresh;
}

MBT_BOOL uif_DisplayClockItem(MBT_VOID)
{
    MBT_BOOL bRefresh  = MM_FALSE;
    uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uCurState = 1;
    if(uif_GetMenuState())
    {
        uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 0;
    }
    else
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
        WGUIF_DisplayReginTrueColorBmp(UI_CLOCK_DISPLAY_X,UI_CLOCK_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp,MM_TRUE);
        uiv_stMsgBar[BOOK_CLOCK_MSG].ucBit.uBoxDisplayed = 1;
        bRefresh  = MM_TRUE;
    }
    return bRefresh;
}

MBT_VOID uif_BookPrgPlayCall(MBT_U32 u32Para[])
{
	MLUI_DEBUG("uif_BookPrgPlayCall");
    UIF_SendKeyToUi(DUMMY_KEY_PLAY);
}

/*返回1则退出菜单*/
MBT_S32 uif_QuickKey(MBT_S32 iKey)
{
    MBT_S32 iRet = 0;
    MBT_U32 u32LeftTime;
    switch(iKey)
    {
        case DUMMY_KEY_FORCE_NETUNLOCK:
            UIF_SendKeyToUi(DUMMY_KEY_FORCE_NETUNLOCK);
            iRet = DUMMY_KEY_EXITALL;
            break;
        case DUMMY_KEY_FORCE_NETLOCK:
            //MLMF_Print("uif_QuickKey DUMMY_KEY_FORCE_NETLOCK\n");
            UIF_SendKeyToUi(DUMMY_KEY_FORCE_NETLOCK);
            iRet = DUMMY_KEY_EXITALL;
            break;
        case DUMMY_KEY_MENU:
        case DUMMY_KEY_POWER:
            UIF_SendKeyToUi(iKey);
            iRet = DUMMY_KEY_EXITALL;
            break;

        case DUMMY_KEY_IPPVFREEVIEW_TYPE0:  /*免费预览阶段*/
        case DUMMY_KEY_IPPVPAYEVIEW_TYPE0:    /*收费阶段*/
        case DUMMY_KEY_IPPTPAYEVIEW_TYPE0:    /*收费阶段*/
        case DUMMY_KEY_PATCHING_PROCESS:
        case DUMMY_KEY_RECEIVEPATCH_PROCESS:        
        case DUMMY_KEY_LOCK_SERVICE:    
            UIF_SendKeyToUi(iKey);
            iRet = iKey;
            break;
            
        case DUMMY_KEY_PRGUPDATE:                                        
            iRet = uif_GetPrgUpdateMsg();
            if(-1 != iRet)
            {
                UIF_SendKeyToUi(DUMMY_KEY_FORCEUPDATE_PROGRAM);
                iRet = iKey;
            }
            else
            {
                iRet = 0;
            }
            break;
            
        case DUMMY_KEY_BOOKED_TIMEREVENT:
            switch(uif_GetBookedPlayFlag())
            {
                case PLAY_ADPRG:
                    UIF_SendKeyToUi(DUMMY_KEY_PLAY);
                    iRet = DUMMY_KEY_EXITALL;
                    break;
                case PLAY_NVODPRG:
                    UIF_SendKeyToUi(DUMMY_KEY_PLAY);
                    iRet = DUMMY_KEY_EXITALL;
                    break;
                case PLAY_NOMALPRG:
                    if(1 == uif_ShareEpgTimerTriggerSelectDlg(&u32LeftTime,uif_GetBookedPlayRecordFlag()))
                    {
                        if(u32LeftTime <= 2)
                        {
                            iRet = DUMMY_KEY_EXITALL;
                            MLUI_DEBUG("default play");
                            UIF_SendKeyToUi(DUMMY_KEY_PLAY);
                        }
                        else
                        {
                        	MLUI_DEBUG("choose play");
                            uif_DisplayClockItem();
                            TMF_SetDbsTimer(uif_BookPrgPlayCall,MM_NULL,u32LeftTime*1000,m_noRepeat);
                        }
                    }
                    else
                    {
                        uif_SetBookedFlag(MM_FALSE);
                        uif_SetBookedPlayFlag(PLAY_IDEL);
                    }
                    break;
                case PLAY_URGENCYPRG:
                    UIF_SendKeyToUi(DUMMY_KEY_PLAY);
                    iRet = DUMMY_KEY_EXITALL;
                    break;
            }
            break;
            
        case DUMMY_KEY_PLAY://for subscribe
        case DUMMY_KEY_FORCEUPDATE_PROGRAM:
        	MLUI_DEBUG("DUMMY_KEY_PLAY = %d, key: %d", DUMMY_KEY_PLAY, iKey);
            iRet = DUMMY_KEY_EXITALL;
            UIF_SendKeyToUi(iKey);
            break;
        //注意:避免弹出提示信息时，音量键调出菜单
        //case DUMMY_KEY_VOLUMEUP:
        //case DUMMY_KEY_VOLUMEDN:
            //uif_AdjustGlobalVolume(iKey);
            //break;

        case DUMMY_KEY_TXTINFOPLAY_TIMER:
            iRet = iKey;
            UIF_SendKeyToUi(iKey);
            break;
    }
    return iRet;
}


MBT_VOID *uif_ForceMalloc(MBT_U32 uMenmSize)
{
    MBT_VOID *ptr = OSPMalloc(uMenmSize);
    if(MM_NULL == ptr)
    {
        DBSF_FreeTempMemory();
        ptr = OSPMalloc(uMenmSize);
    }
    MMF_SYS_Assert(MM_NULL != ptr);
    return ptr;
}

MBT_BOOL uif_ForceFree(MBT_VOID *ptr)
{
    return OSPFree(ptr);
}


MBT_VOID uif_ShareDisplayResultDlg( MBT_CHAR* pMsgTitle, MBT_CHAR* pMsg,MBT_U32 u32DisappearTime)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U32 u32TimeOut = 0xffffffff;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = (OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2 - UI_DLG_OFFSET_Y;
    MBT_S32 s32Font_Height;
    MBT_CHAR *ptrMsg[2][3] = 
    {
        {
            "Yes",
			"USB Device Initialized OK!",
			"USB Device Removed!",
        },
        {
            "Yes",
			"USB Device Initialized OK!",
			"USB Device Removed!",
        }
    };
    
    if(MM_NULL == pMsg)
    {
        return;
    }
    
    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);
    
    uif_DrawMsgBgPanelNoTitle(x,y);
    //font
    s32Font_Height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    uif_DrawTxtAtMid(pMsg,x+20,y+66,pstBmp->bWidth-40,pstBmp->bHeight-66-80,FONT_FRONT_COLOR_WHITE);


    if(0 != u32DisappearTime)
    {
        u32TimeOut = MLMF_SYS_GetMS() + u32DisappearTime*1000;
    }
    
    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);
        
        switch ( iRetKey )
        {
        	case DUMMY_KEY_USB_IN:
				WGUIF_DrawFilledRectangle(x+40,y+75,pstBmp->bWidth-80,pstBmp->bHeight-66-100,0xff004b85);
                uif_DrawTxtAtMid(ptrMsg[uiv_u8Language][1],x+20,y+66,pstBmp->bWidth-40,pstBmp->bHeight-66-80,FONT_FRONT_COLOR_WHITE);
				bRefresh = MM_TRUE;
				break;
			case DUMMY_KEY_USB_OUT:
				WGUIF_DrawFilledRectangle(x+40,y+75,pstBmp->bWidth-80,pstBmp->bHeight-66-100,0xff004b85);
                uif_DrawTxtAtMid(ptrMsg[uiv_u8Language][2],x+20,y+66,pstBmp->bWidth-40,pstBmp->bHeight-66-80,FONT_FRONT_COLOR_WHITE);
				bRefresh = MM_TRUE;
				break;
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT: 
            case DUMMY_KEY_SELECT:
            case DUMMY_KEY_LEFTARROW: 
            case DUMMY_KEY_RIGHTARROW: 
            case DUMMY_KEY_UPARROW:  
            case DUMMY_KEY_DNARROW:    
                bExit = MM_TRUE;
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_MENU_TIMEOUT:
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_NO_SPACE:
                if(!uif_GetMenuState())
                {
                    bRefresh |= uif_CAMShowEmailLessMem();
                }
                break;

            case DUMMY_KEY_CANCEL_ITEM:  /*隐藏邮件通知图标*/
                if(uif_CAMHideEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;  
                
            case DUMMY_KEY_SHOW_ITEM:  /*新邮件通知，显示新邮件图标*/
                if(uif_CAMDisplayEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;      

            default: 
                iRetKey = uif_QuickKey(iRetKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }

                if(u32TimeOut <= MLMF_SYS_GetMS())
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }

    WGUIF_SetFontHeight(s32Font_Height);
}  

/*TriggerTimer shuld 30seconds before event timer*/
static MBT_VOID uif_GetEndTimer(TIMER_M *pstEventTimer,TIMER_M *pstEndTimer)
{
    if(MM_NULL == pstEventTimer||MM_NULL == pstEndTimer)
    {
        return;
    }

    *pstEndTimer = *pstEventTimer;
    pstEndTimer->minute += pstEndTimer->durationMinute;
    if(pstEndTimer->minute >= 60)
    {
        pstEndTimer->minute -= 60;
        pstEndTimer->hour++;
    }

    pstEndTimer->hour += pstEndTimer->durationhour;
    if(pstEndTimer->hour >= 24)
    {
        pstEndTimer->hour -= 24;
        TMF_TimeAdjustDatePlus(pstEndTimer);
    }
}

MBT_S32 uif_bookingLockScreem(MBT_S32 iPara)
{
	MBT_CHAR duration[32] = {0};
	MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_U32 iExitTime = 0;
	MBT_U32 iNextTime = 0;
	MBT_U32 iDurationTime = 0;
	MBT_U32 iTimeout = 500;
	MBT_S32 iRetKey=DUMMY_KEY_EXIT;
	MBT_S32 iKey=DUMMY_KEY_EXIT;
	MBT_BOOL bRecord = iPara == 0 ? MM_FALSE : MM_TRUE;
	MBT_BOOL bShowRecIcon = MM_TRUE;
	UI_PRG stPrgInfo;
	BITMAPTRUECOLOR *pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
	MBT_S32 font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE18);

	MBT_CHAR *ptrMsgYes[2][3] =
    {
        {
            "Exit book",
            "[OK]:Yes",
            "[EXIT]:Cancel"
        },
        {
            "Exit book",
            "[OK]:Yes",
            "[EXIT]:Cancel"
        }         
    };
	MLUI_DEBUG("start...");
	bRefresh |= uif_ResetAlarmMsgFlag();
    iExitTime = uif_GetBookedPlayDuration();
	MLUI_DEBUG("iExitTime: %d", iExitTime);

	iNextTime = MLMF_SYS_GetMS() + 1000;

	if(bRecord){
		MLUI_DEBUG("start record...");
		if(!Pvr_RecordStart())
	    {
	        return iRetKey;
	    }
	}
	WGUIF_ClsFullScreen();
//	uif_DrawChannel();
	 while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(iTimeout);
		iTimeout = 500;
        switch ( iRetKey )
        {
			case DUMMY_KEY_MUTE:
				MLUI_DEBUG("DUMMY_KEY_MUTE...");
                bRefresh |= UIF_SetMute();
				bRefresh = MM_TRUE;
                break;

			case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iRetKey);
                bRefresh = MM_TRUE;
                break;

			case DUMMY_KEY_GREEN:
                uif_ChnInfoExt(1);
				if (DVB_INVALID_LINK != DBSF_DataCurPrgInfo(&stPrgInfo) )
			    {
			        uif_ChnListPlayPrg(&stPrgInfo.stService);
			    }
				bRefresh = MM_TRUE;
                break;

			case DUMMY_KEY_LANG:
				uif_AudioLanguageShortCut(0);
                bRefresh = MM_TRUE;
				break;
/*
			case DUMMY_KEY_INFO:  
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;
*/
			case DUMMY_KEY_EXIT:
			case DUMMY_KEY_SELECT:	
			case DUMMY_KEY_UPARROW:
			case DUMMY_KEY_DNARROW:
			case DUMMY_KEY_PGUP:
			case DUMMY_KEY_PGDN:  
			case DUMMY_KEY_MENU:  
				if(uif_ShareMakeSelectDlgDynamicContent(ptrMsgYes[uiv_u8Language][0],ptrMsgYes[uiv_u8Language][1],ptrMsgYes[uiv_u8Language][2], MM_NULL, MM_FALSE)){
                    if(bRecord){
						MLUI_DEBUG("stop record...");
					 	Pvr_RecordStop();
					 }
					UIF_SendKeyToUi(DUMMY_KEY_RECALL);
					MLUI_DEBUG("...");
					iRetKey=DUMMY_KEY_EXIT;
					bExit = MM_TRUE;
				}
				break;
				
			default:
				bRefresh = MM_TRUE;
				iKey = uif_QuickKey(iRetKey);
				if(0 != iKey)
                {
                	if(bRecord){
						MLUI_DEBUG("stop record...");
					 	Pvr_RecordStop();
					}
					iRetKey = iKey;
                    bExit = MM_TRUE;
                }
				break;
				
        	case -1:
//				MLUI_DEBUG("-1 iExitTime: %d", iExitTime);
				if(bRecord)
				{
					if(bShowRecIcon)
					{
//						MLUI_DEBUG("-1 bShowRecIcon is true");
						WGUIF_DisplayReginTrueColorBmp(UICOMMON_TITLE_AREA_X, UICOMMON_TITLE_AREA_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
						memset(duration, 0, sizeof(duration));
						sprintf(duration,"%02d:%02d:%02d",iDurationTime/60/60, iDurationTime/60, iDurationTime%60);
						MBT_S32	iStrlen = strlen(duration);
						WGUIF_FNTDrawTxt(UICOMMON_TITLE_AREA_X+pstFramBmp->bWidth+10, UICOMMON_TITLE_AREA_Y+5, iStrlen, duration, FONT_FRONT_COLOR_WHITE);
						bShowRecIcon = MM_FALSE;
					}
					else
					{
//						MLUI_DEBUG("-1 bShowRecIcon is true");
						WGUIF_ClsScreen(UICOMMON_TITLE_AREA_X, UICOMMON_TITLE_AREA_Y, pstFramBmp->bWidth + 160, pstFramBmp->bHeight+10);
						bShowRecIcon = MM_TRUE;
					}
					bRefresh = MM_TRUE;
				}
				if(iExitTime == 0)
                {
                	if(bRecord){
						MLUI_DEBUG("stop record...");
					 	Pvr_RecordStop();
					}
                	UIF_SendKeyToUi(DUMMY_KEY_RECALL);
					iRetKey=DUMMY_KEY_EXIT;
                    bExit = MM_TRUE;
					MLUI_DEBUG("...");
                    break;
                }
                
                if (MLMF_SYS_GetMS() >= iNextTime)
                {
                    iNextTime += 1000;
					iDurationTime += 1;
                    iExitTime--;                    
                }
				break;
		}
	}
	 uif_SetBookedFlag(MM_FALSE);
	 WGUIF_SetFontHeight(font_height);
	 WGUIF_ClsFullScreen();
	 return iRetKey;
}
/***********************************************************************************************
*   Yes No弹出框菜单界面,按键响应,按左右键，切换Yes,No
*
*   传入参数:
*       pu32LeftTime,传入剩下的时间，但是默认修改剩下时间为6
*       dlgType,显示对话框的类型，可能是预订的view或record.0表示view,1表示record
*
*   返回值:
*       返回响应本次按键后，是否选中yes
***********************************************************************************************/
MBT_BOOL uif_ShareEpgTimerTriggerSelectDlg(MBT_U32 *pu32LeftTime,MBT_U8 dlgType)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U32 iExitTime = 0;
    MBT_U32 iNextTime;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_background_shortIfor);
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2) - UI_DLG_OFFSET_Y;
    EPG_TIMER_M *pstEpgTimer;
    EPG_TIMER_M *pstCurEpgTimer = MM_NULL;
    TIMER_M *pTriggerTimer;
    TIMER_M stCurTimer;
    TIMER_M stTiggerTimer;
    TIMER_M stEndTimer;
    UI_PRG stPrgInfo;
    MBT_S32 i;
    MBT_S32 ipMsgY = y + pstBmp->bHeight - 130;
    MBT_S32 iOkY = ipMsgY + 30;
    MBT_S32 iExitY = iOkY + 30;
    MBT_S32 iTimeY = iExitY + 30;

    MBT_BOOL bIsYesFocus = MM_TRUE;
    MBT_CHAR string[MAX_EVENT_NAME_LENGTH+50];
    MBT_CHAR *pStr = NULL;
    MBT_S32 iStrlen;
    MBT_S32 iStrWidth;
    MBT_S32 font_height;
    MBT_CHAR *ptrMsgYes[2][4] =
    {
        {
            "[OK]:View",
			"[EXIT]:Cancel",
            "Book event time up",
            "[OK]:Record",
        },
        {
            "[OK]:View",
			"[EXIT]:Cancel",
            "Book event time up",
            "[OK]:Record",
        }         
    };
    font_height = WGUIF_GetFontHeight();
    TMF_GetSysTime(&stCurTimer);
    
    pstEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pstEpgTimer)
    {
        return MM_FALSE;
    }
    
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(pstEpgTimer);
        return MM_FALSE;
    }

    uif_GetTimerFromFile(pstEpgTimer,pTriggerTimer);


    for(i = 0;i < MAX_EPG_TIMER_NUM;i++)
    {
        if(pstEpgTimer[i].stTimer.year != 0x0)
        {
            uif_GetTriggerTimer(&pstEpgTimer[i].stTimer,&stTiggerTimer);
            
            if(1 > TMF_CompareThe2Timers(stCurTimer,pstEpgTimer[i].stTimer)&&1 > TMF_CompareThe2Timers(stTiggerTimer,stCurTimer))
            {
                pstCurEpgTimer = &pstEpgTimer[i];
                break;
            }
        }
    }

    if(MM_NULL == pstCurEpgTimer)
    {
        pstCurEpgTimer = pstEpgTimer;
    }

    uif_GetEndTimer(&pstCurEpgTimer->stTimer,&stEndTimer);
    
    iExitTime = 6;
    *pu32LeftTime = iExitTime;

    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);

    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE); 
    
	pStr = ptrMsgYes[uiv_u8Language][2];
	iStrlen = strlen(pStr);	

    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    //context
	uif_DrawTxtAtMid(pStr,x + 10,ipMsgY,pstBmp->bWidth - 20,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE18);
    //Confirm
    if(dlgType == 0)
    {
        pStr = ptrMsgYes[uiv_u8Language][0];
    }else
    {
        pStr = ptrMsgYes[uiv_u8Language][3];
    }
    uif_DrawTxtAtMid(pStr,x,iOkY,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);

    //Exit
	pStr = ptrMsgYes[uiv_u8Language][1];
	iStrlen = strlen(pStr);
	iStrWidth = WGUIF_FNTGetTxtWidth(iStrlen, pStr);
    uif_DrawTxtAtMid(pStr,x,iExitY,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
    
    //font
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stPrgInfo,pstCurEpgTimer->stTimer.uTimerProgramNo,pstCurEpgTimer->stTimer.u16ServiceID))
    {
        //program name
        //uif_DrawTxtAtMid(stPrgInfo.stService.cServiceName,x+30,y+66,pstBmp->bWidth-60,40,FONT_FRONT_COLOR_WHITE);
    }
    
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    //sprintf(string, "%02d:%02d-%02d:%02d %s", pstCurEpgTimer->stTimer.hour, pstCurEpgTimer->stTimer.minute, stEndTimer.hour,stEndTimer.minute,pstCurEpgTimer->acEventName);
     
    iNextTime = MLMF_SYS_GetMS() + 1000;

    sprintf(string, "%02d", iExitTime);
    uif_DrawTxtAtMid(string,x,iTimeY,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);

    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);

        switch ( iRetKey )
        {
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_SELECT :
				bIsYesFocus = MM_TRUE;
                bExit = MM_TRUE;
                break;
			case DUMMY_KEY_EXIT:
				bIsYesFocus = MM_FALSE;
                bExit = MM_TRUE;
				break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                break;
            
            case DUMMY_KEY_MENU:
                 bIsYesFocus = MM_FALSE;
                break;
                
            case -1:        
            default:  
                if(iExitTime == 0)
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_TRUE;
                    break;
                }
                
                if (MLMF_SYS_GetMS() >= iNextTime)
                {
                    iNextTime += 1000;
                    if(iExitTime > 0)
                    {
                        WGUIF_DisplayReginTrueColorBmp(x,y,0,iTimeY-y,pstBmp->bWidth,40,pstBmp,MM_FALSE);     
                        sprintf(string, "%02d", iExitTime);
                        uif_DrawTxtAtMid(string,x,iTimeY,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
                        bRefresh = MM_TRUE;
                    }
                    iExitTime--;                    
                    *pu32LeftTime = iExitTime;
                }

                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_FALSE;
                }
                break;
        }
    }

    uif_ForceFree(pstEpgTimer);
    uif_ForceFree(pTriggerTimer);

    if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    WGUIF_SetFontHeight(font_height);
    return bIsYesFocus;
}  



/***********************************************************************************************
*	Yes No弹出框菜单界面,按键响应,按左右键，切换Yes,No
*
*	传入参数:
*		pMsg,要显示的内容
*		bExitAuto,是否自动退出
*
*	返回值:
*		返回响应本次按键后，是否选中yes
*           绘制没有标题，但是有显示内容，并且有选择的对话框
***********************************************************************************************/
MBT_BOOL uif_ShareMakeSelectDlgNoTitle(MBT_CHAR* pMsg,MBT_BOOL bExitAuto)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U8 u8DlgDispTime ;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2) - UI_DLG_OFFSET_Y;

    MBT_S32 iMsgFirstBtnX;
    MBT_S32 iMsgFirstBtnY;
    MBT_S32 iMsgSecondBtnX;
    MBT_S32 iMsgSecondBtnY;
	MBT_S32 iStrlen;
	MBT_S32 iStrWidth;
	MBT_S32 iFontHeight;
	MBT_BOOL bIsYesFocus = MM_TRUE;
    MBT_CHAR *pStr = NULL;
	MBT_CHAR* ptrMsgYes[2][2] =
	{
		{
			"[OK]:Confirm",
			"[EXIT]:Exit"
		},
		{
			"[OK]:Confirm",
			"[EXIT]:Exit"
		}		  
	};

    
    if(MM_NULL == pMsg)
    {
    	return	MM_FALSE;
    }

    
    if(bExitAuto)
    {
        DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
        u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    }
    else
    {
        u8DlgDispTime = 0;
    }

    if(u8DlgDispTime)
    {
        iExitTime = MLMF_SYS_GetMS()+u8DlgDispTime*1000;
    }

    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);

	//font
	iFontHeight = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	
    uif_DrawMsgBgPanelNoTitle(x,y);
	
	iMsgFirstBtnX = x + SELECT_DLG_BTN_MARGIN;
    iMsgFirstBtnY = y + pstBmp->bHeight - SELECT_DLG_BTN_MARGIN_BOTTOM;
	pStr = ptrMsgYes[uiv_u8Language][0];
	iStrlen = strlen(pStr);	

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    //context
	uif_DrawTxtAtMid(pMsg,x + 10,y,pstBmp->bWidth - 20,pstBmp->bHeight-20,FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    //Confirm
	WGUIF_FNTDrawTxt(iMsgFirstBtnX, iMsgFirstBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);
	//Exit
	pStr = ptrMsgYes[uiv_u8Language][1];
	iStrlen = strlen(pStr);
	iStrWidth = WGUIF_FNTGetTxtWidth(iStrlen, pStr);
	iMsgSecondBtnX = x + pstBmp->bWidth - iStrWidth - SELECT_DLG_BTN_MARGIN;
    iMsgSecondBtnY = iMsgFirstBtnY;
	WGUIF_FNTDrawTxt(iMsgSecondBtnX, iMsgSecondBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);
	
	//WGUIF_FNTGetTxtWidth(iStrlen, MM_SubTitle[uiv_u8Language][iItemIndex]);
    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);

        switch ( iRetKey )
        {
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_SELECT :
				bIsYesFocus = MM_TRUE;
                bExit = MM_TRUE;
                break;
			case DUMMY_KEY_EXIT:
				bIsYesFocus = MM_FALSE;
                bExit = MM_TRUE;
				break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
			case DUMMY_KEY_MENU:
		         bIsYesFocus = MM_FALSE;
				break;
				
            default: 
                if ( u8DlgDispTime )
                {
                    if (MLMF_SYS_GetMS() >= iExitTime)
                    {
                        bExit = MM_TRUE;
                        bIsYesFocus = MM_FALSE;
                    }
                }
                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_FALSE;
                }
                break;
        }
    }


    if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    WGUIF_SetFontHeight(iFontHeight);
	return bIsYesFocus;
}  

/***********************************************************************************************
*	根据输入，显示内容，包括按钮等信息都可以改变
*
*	传入参数:
*            strOne,第一行的内容
*		 strTwo,第二行的内容
*            strThree,第三行的内容
*            strFour,第四行的内容
*		bExitAuto,是否自动退出
*
*	返回值:
*		返回响应本次按键后，是否选中yes
*           绘制没有标题，但是有显示内容，并且有选择的对话框
***********************************************************************************************/
MBT_BOOL uif_ShareMakeSelectDlgDynamicContent(MBT_CHAR* strOne,MBT_CHAR* strTwo,MBT_CHAR* strThree,MBT_CHAR* strFour,MBT_BOOL bExitAuto)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U8 u8DlgDispTime ;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_background_shortIfor);
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2) - UI_DLG_OFFSET_Y;

    MBT_S32 ipMsgY = 0;
    MBT_S32 iTitleY = 0;
	MBT_S32 iFontHeight;
	MBT_BOOL bIsYesFocus = MM_TRUE;
    MBT_CHAR *pStr = NULL;
 
    if(MM_NULL == strTwo || strOne == NULL)
    {
    	return	MM_FALSE;
    }

    if(bExitAuto)
    {
        DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
        u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    }
    else
    {
        u8DlgDispTime = 0;
    }

    if(u8DlgDispTime)
    {
        iExitTime = MLMF_SYS_GetMS()+u8DlgDispTime*1000;
    }

    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);

	//font
	iFontHeight = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
	
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE); 

    
    if(strThree != NULL && strFour != NULL)
    {
        //显示两个按钮
        WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
        uif_DrawTxtAtMid(strThree,x,y + pstBmp->bHeight-70,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
    	uif_DrawTxtAtMid(strFour,x,y + pstBmp->bHeight-40,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
    	ipMsgY = y + pstBmp->bHeight - 120;
        iTitleY = ipMsgY - 30;
    }else if(strThree == NULL && strFour == NULL)
    {
        //不显示按钮
    }else
    {
        //显示一个按钮
        if(strThree != NULL)
        {
            pStr = strThree;
        }else
        {
            pStr = strFour;
        }
        WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
        //Confirm
        uif_DrawTxtAtMid(pStr,x,y + pstBmp->bHeight-40,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
        ipMsgY = y + pstBmp->bHeight - 100;
        iTitleY = ipMsgY - 40;
    }
    //根据按钮的个数来调整显示内容的位置
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    //context
    uif_DrawTxtAtMid(strTwo,x + 5,ipMsgY,pstBmp->bWidth - 10,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
    //strOne
    uif_DrawTxtAtMid(strOne,x,iTitleY,pstBmp->bWidth,SMALL_GWFONT_HEIGHT,FONT_FRONT_COLOR_WHITE);
    
    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);

        switch ( iRetKey )
        {
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_SELECT :
				bIsYesFocus = MM_TRUE;
                bExit = MM_TRUE;
                break;
			case DUMMY_KEY_EXIT:
				bIsYesFocus = MM_FALSE;
                bExit = MM_TRUE;
				break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
			case DUMMY_KEY_MENU:
		         bIsYesFocus = MM_FALSE;
				break;
				
            default: 
                if ( u8DlgDispTime )
                {
                    if (MLMF_SYS_GetMS() >= iExitTime)
                    {
                        bExit = MM_TRUE;
                        bIsYesFocus = MM_FALSE;
                    }
                }
                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_FALSE;
                }
                break;
        }
    }


    if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    WGUIF_SetFontHeight(iFontHeight);
	return bIsYesFocus;
}  


/***********************************************************************************************
*	Yes No弹出框菜单界面,按键响应,按左右键，切换Yes,No
*
*	传入参数:
*		iKey,遥控器按键
*		isYesFocus,按遥控器前，是否选中了yes
*
*	返回值:
*		返回响应本次按键后，是否选中yes
***********************************************************************************************/
MBT_BOOL uif_ShareMakeSelectDlg( MBT_CHAR* pMsgTitle, MBT_CHAR* pMsg,MBT_BOOL bExitAuto)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U8 u8DlgDispTime ;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2) - UI_DLG_OFFSET_Y;
    MBT_S32 iMsgFirstBtnX;
    MBT_S32 iMsgFirstBtnY;
    MBT_S32 iMsgSecondBtnX;
    MBT_S32 iMsgSecondBtnY;
	MBT_S32 iStrlen;
	MBT_S32 iStrWidth;
	MBT_S32 iFontHeight;
	MBT_BOOL bIsYesFocus = MM_TRUE;
    MBT_CHAR *pStr = NULL;
	MBT_CHAR* ptrMsgYes[2][4] =
	{
		{
			"Yes",
			"No",
			"[OK]:Confirm",
			"[EXIT]:Exit"
		},
		{
			"Yes",
			"No",
			"[OK]:Confirm",
			"[EXIT]:Exit"
		}		  
	};

    
    if(MM_NULL == pMsg /*|| NULL ==pMsgTitle*/)
    {
    	return	MM_FALSE;
    }

    
    if(bExitAuto)
    {
        DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
        u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    }
    else
    {
        u8DlgDispTime = 0;
    }

    if(u8DlgDispTime)
    {
        iExitTime = MLMF_SYS_GetMS()+u8DlgDispTime*1000;
    }

    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);

	//font
	iFontHeight = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
	
    uif_DrawMsgBgPanel(x,y,pMsgTitle);
	
	iMsgFirstBtnX = x + SELECT_DLG_BTN_MARGIN;
    iMsgFirstBtnY = y + pstBmp->bHeight - SELECT_DLG_BTN_MARGIN_BOTTOM;
	pStr = ptrMsgYes[uiv_u8Language][2];
	iStrlen = strlen(pStr);
	//Confirm
	WGUIF_FNTDrawTxt(iMsgFirstBtnX, iMsgFirstBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);

	uif_DrawTxtAtMid(pMsg,x + 10,y,pstBmp->bWidth - 20,pstBmp->bHeight-10,FONT_FRONT_COLOR_WHITE);

	//Exit
	pStr = ptrMsgYes[uiv_u8Language][3];
	iStrlen = strlen(pStr);
	iStrWidth = WGUIF_FNTGetTxtWidth(iStrlen, pStr);
	iMsgSecondBtnX = x + pstBmp->bWidth - iStrWidth - SELECT_DLG_BTN_MARGIN;
    iMsgSecondBtnY = iMsgFirstBtnY;
	WGUIF_FNTDrawTxt(iMsgSecondBtnX, iMsgSecondBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);

    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);

        switch ( iRetKey )
        {
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_SELECT :
				bIsYesFocus = MM_TRUE;
                bExit = MM_TRUE;
                break;
			case DUMMY_KEY_EXIT:
				bIsYesFocus = MM_FALSE;
                bExit = MM_TRUE;
				break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
			case DUMMY_KEY_MENU:
		         bIsYesFocus = MM_FALSE;
				break;
				
            default: 
                if ( u8DlgDispTime )
                {
                    if (MLMF_SYS_GetMS() >= iExitTime)
                    {
                        bExit = MM_TRUE;
                        bIsYesFocus = MM_FALSE;
                    }
                }
                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_FALSE;
                }
                break;
        }
    }


    if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    WGUIF_SetFontHeight(iFontHeight);
    
	return bIsYesFocus;
}  


MBT_VOID uif_DrawMsgBgTextVerPanel(MBT_S32 x,MBT_S32 y,MBT_CHAR *pStrTitle)
{
    MBT_S32 s32Len;
    MBT_S32 s32FontWidth; 
    MBT_S32 s32Font_Height;
    MBT_S32 s32Yoffset;
    
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE); 

    s32Font_Height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    s32Len = strlen(pStrTitle);
    s32FontWidth = WGUIF_FNTGetTxtWidth(s32Len, pStrTitle);
    s32Yoffset = (pstBmp->bHeight - SECONDMENU_LISTFONT_HEIGHT)/2;
    WGUIF_FNTDrawTxt(x+((pstBmp->bWidth-s32FontWidth)/2),y+s32Yoffset,s32Len,pStrTitle,FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32Font_Height);
}


MBT_BOOL uif_ShareMakeSelectForUsbUpgradeDlg( MBT_CHAR* pMsgTitle, MBT_CHAR* pMsg,MBT_BOOL bExitAuto)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iRetKey;
    MBT_U8 u8DlgDispTime ;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR  CopybitmapTop;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstBmp->bWidth)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstBmp->bHeight)/2) - UI_DLG_OFFSET_Y;
    MBT_S32 iMsgFirstBtnX;
    MBT_S32 iMsgFirstBtnY;
    MBT_S32 iMsgSecondBtnX;
    MBT_S32 iMsgSecondBtnY;
	MBT_S32 iStrlen;
	MBT_S32 iStrWidth;
	MBT_S32 iFontHeight;
	MBT_BOOL bIsYesFocus = MM_TRUE;
    MBT_CHAR *pStr = NULL;
	MBT_CHAR* ptrMsgYes[2][5] =
	{
		{
			"Yes",
			"No",
			"[OK]:Confirm",
			"[EXIT]:Exit",
			"Please wait..."
		},
		{
			"Yes",
			"No",
			"[OK]:Confirm",
			"[EXIT]:Exit",
			"Please wait..."
		}		  
	};

    
    if(MM_NULL == pMsg /*|| NULL ==pMsgTitle*/)
    {
    	return	MM_FALSE;
    }

    
    if(bExitAuto)
    {
        DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
        u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    }
    else
    {
        u8DlgDispTime = 0;
    }

    if(u8DlgDispTime)
    {
        iExitTime = MLMF_SYS_GetMS()+u8DlgDispTime*1000;
    }

    CopybitmapTop.bWidth = pstBmp->bWidth;
    CopybitmapTop.bHeight = pstBmp->bHeight;
    WGUIF_GetRectangleImage(x, y, &CopybitmapTop);

	//font
	iFontHeight = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	
    uif_DrawMsgBgPanel(x,y,pMsgTitle);
	
	iMsgFirstBtnX = x + SELECT_DLG_BTN_MARGIN;
    iMsgFirstBtnY = y + pstBmp->bHeight - SELECT_DLG_BTN_MARGIN_BOTTOM;
	pStr = ptrMsgYes[uiv_u8Language][2];
	iStrlen = strlen(pStr);
	//Confirm
	WGUIF_FNTDrawTxt(iMsgFirstBtnX, iMsgFirstBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);

	uif_DrawTxtAtMid(pMsg,x + 10,y,pstBmp->bWidth - 20,pstBmp->bHeight-10,FONT_FRONT_COLOR_WHITE);

	//Exit
	pStr = ptrMsgYes[uiv_u8Language][3];
	iStrlen = strlen(pStr);
	iStrWidth = WGUIF_FNTGetTxtWidth(iStrlen, pStr);
	iMsgSecondBtnX = x + pstBmp->bWidth - iStrWidth - SELECT_DLG_BTN_MARGIN;
    iMsgSecondBtnY = iMsgFirstBtnY;
	WGUIF_FNTDrawTxt(iMsgSecondBtnX, iMsgSecondBtnY, iStrlen, pStr, FONT_FRONT_COLOR_WHITE);

    while ( !bExit )
    {
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iRetKey = uif_ReadKey(1000);

        switch ( iRetKey )
        {
#if(OVT_FAC_MODE == 1)
			case DUMMY_KEY_FAC_MAIN:
				gFacTestRunningState = 1;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_SYS:
				gFacTestRunningState = 2;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_FAC_AGE:
				gFacTestRunningState = 3;
				bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_SELECT :
				bIsYesFocus = MM_TRUE;
                uif_DrawMsgBgTextVerPanel(x, y, ptrMsgYes[uiv_u8Language][4]);
                WGUIF_ReFreshLayer();
                bExit = MM_TRUE;
                break;
			case DUMMY_KEY_EXIT:
				bIsYesFocus = MM_FALSE;
                bExit = MM_TRUE;
				break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
			case DUMMY_KEY_MENU:
		         bIsYesFocus = MM_FALSE;
				break;
				
            default: 
                if ( u8DlgDispTime )
                {
                    if (MLMF_SYS_GetMS() >= iExitTime)
                    {
                        bExit = MM_TRUE;
                        bIsYesFocus = MM_FALSE;
                    }
                }
                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                    bIsYesFocus = MM_FALSE;
                }
                break;
        }
    }

    if (!bIsYesFocus)
    {
        if(MM_TRUE == WGUIF_PutRectangleImage(x, y, &CopybitmapTop))
        {
            WGUIF_ReFreshLayer();
        }
    }   
    
    WGUIF_SetFontHeight(iFontHeight);
    
	return bIsYesFocus;
}  

MBT_VOID uif_DrawFocusArrawBar(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XArrawOffset)
{
    MBT_S32 s32leftW;
    MBT_S32 s32Yoffset;
	BITMAPTRUECOLOR *pstFramBmp;
	
    //draw backicon 
    uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_selectbar_leftIfor),BMPF_GetBMP(m_ui_selectbar_midIfor),BMPF_GetBMP(m_ui_selectbar_rightIfor));
    //draw arraw 
    if((-1) != s32XArrawOffset)
    {
        s32leftW = BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor);
        s32Yoffset = (BMPF_GetBMPHeight(m_ui_selectbar_midIfor) - BMPF_GetBMPHeight(m_ui_selectbar_arrow_leftIfor))/2;
        pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
        WGUIF_DisplayReginTrueColorBmp(x+s32XArrawOffset, y+s32Yoffset,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
        WGUIF_DisplayReginTrueColorBmp(x+s32XArrawOffset+s32leftW+95, y+s32Yoffset,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }
}

MBT_VOID uif_DrawFocusArrawBarForBookManage(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XSIOffset1,MBT_S32 s32SIWidth1,MBT_S32 s32XSIOffset2,MBT_S32 s32SIWidth2)
{
    MBT_S32 s32Yoffset;
	
    //draw small 
    if(s32SIWidth1 > 0)
    {
        s32Yoffset = (BMPF_GetBMPHeight(m_ui_Installation_item_focus_middleIfor) - BMPF_GetBMPHeight(m_ui_Installation_item_focus_short_middleIfor))/2;
        uif_ShareDrawCombinHBar(x+s32XSIOffset1,y+s32Yoffset,s32SIWidth1,BMPF_GetBMP(m_ui_Installation_item_focus_short_leftIfor),BMPF_GetBMP(m_ui_Installation_item_focus_short_middleIfor),BMPF_GetBMP(m_ui_Installation_item_focus_short_rightIfor));
    }

    //draw small 
    if(s32SIWidth2 > 0)
    {
        s32Yoffset = (BMPF_GetBMPHeight(m_ui_Installation_item_focus_middleIfor) - BMPF_GetBMPHeight(m_ui_Installation_item_focus_short_middleIfor))/2;
        uif_ShareDrawCombinHBar(x+s32XSIOffset2,y+s32Yoffset,s32SIWidth2,BMPF_GetBMP(m_ui_Installation_item_focus_short_leftIfor),BMPF_GetBMP(m_ui_Installation_item_focus_short_middleIfor),BMPF_GetBMP(m_ui_Installation_item_focus_short_rightIfor));
    }

}

MBT_VOID uif_DrawUnfocusArrawBar(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XArrawOffset)
{
    MBT_S32 s32leftW;
    MBT_S32 s32Yoffset = 0;
    BITMAPTRUECOLOR *pstFramBmp;

    //draw arraw 
    if((-1) != s32XArrawOffset)
    {
        s32leftW = BMPF_GetBMPWidth(m_ui_Installation_arrow_leftIfor);
        //s32Yoffset = (BMPF_GetBMPHeight(m_ui_Installation_item_unfocus_midIfor) - BMPF_GetBMPHeight(m_ui_Installation_arrow_leftIfor))/2;
        pstFramBmp = BMPF_GetBMP(m_ui_Installation_arrow_leftIfor);
        WGUIF_DisplayReginTrueColorBmp(x+s32XArrawOffset, y+s32Yoffset,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        pstFramBmp = BMPF_GetBMP(m_ui_Installation_arrow_rightIfor);
        WGUIF_DisplayReginTrueColorBmp(x+s32XArrawOffset+s32leftW+4, y+s32Yoffset,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }
}

/*重启前要保证flash操作完成*/
MBT_VOID uif_ShareReboot(MBT_VOID)
{
#if(1 == M_CDCA)
    CDCASTB_Close();
#endif
    FFSF_Lock();
    MLMF_SYS_WatchDog(0);
    FFSF_UnLock();
}

/*待机前要保证flash操作完成*/
MBT_VOID uif_ShareStandby(MBT_VOID)
{
    EPG_TIMER_M *pEpgTimer;
    TIMER_M *pTriggerTimer;
    MBT_U32 WakeupTime = 0;
    TIMER_M  stTime;
    MBT_U32 sys_sec, timer_sec;
    
    TMF_CleanAllUITimer();
    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return;
    }
    
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(pEpgTimer);
        return;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimer);

    if(pTriggerTimer[AUTO_STARTUP].dateofWeek == m_Poweron)
    {
        TMF_GetSysTime(&stTime);

        sys_sec = (stTime.hour*60 + stTime.minute) * 60 + 10;
        timer_sec = (pTriggerTimer[AUTO_STARTUP].hour*60 + pTriggerTimer[AUTO_STARTUP].minute) * 60;

        if(timer_sec > sys_sec)
        {
            WakeupTime = timer_sec - sys_sec;
        }
        else
        {
            WakeupTime = 24*60*60 + sys_sec - timer_sec;
        }
    }
#if (0 == ENABLE_FAKE_STANDBY)
#if(1 == M_CDCA)
    CDCASTB_Close();
#endif
#endif    
    FFSF_Lock();
    MLMF_Print("[uif_ShareStandby]WakeupTime=%d\n",WakeupTime);
#if (ENABLE_FAKE_STANDBY)
    MLMF_SYS_EnterStandby(MM_STANDBY_MODE_FAKE, WakeupTime,PHY_POWER_KEY);
#else
    MLMF_SYS_EnterStandby(MM_STANDBY_MODE_NORMAL, WakeupTime,PHY_POWER_KEY);
#endif    
    FFSF_UnLock();
}

MBT_VOID uif_ShareFakeWakeup(MBT_VOID)
{
    FFSF_Lock();
    MLMF_SYS_FakeWakeup();
    FFSF_UnLock();
}

static MBT_U32 StartUpGif_Show(ADPICBMP *pPicData,MBT_S32 iStartX,MBT_S32 iStartY,MBT_S32 iWidth,MBT_S32 iHeight,MBT_BOOL bFirst)
{
    BITMAPTRUECOLOR * pBmpInfo;
    static MBT_S32 iFremToShow = -1;
    ADPICFRAM *framData;   
    MBT_S32 i;
    MBT_U32 u32Ret = 0x7fffffff;

    if(MM_NULL == pPicData)
    {
        return u32Ret;
    }

    if(pPicData->valid == 0)
    {
        return u32Ret;
    }

    if(bFirst)
    {
        iFremToShow = 0;
    }
    else
    {
        iFremToShow++;
    }

    iFremToShow %= pPicData->framNum;

    framData =pPicData->framData;

    i = 0;
    while(i<iFremToShow&&framData)
    {
        framData = framData->pNextFram;
        i++;
    }

    if(MM_NULL == framData)
    {
        return u32Ret;
    }
    //MLMF_Print("StartUpGif_Show iFremToShow = %d pPicData->framNum = %d\n",iFremToShow,pPicData->framNum);
    pBmpInfo = &(framData->fBmpInfo);
    WGUIF_DisplayReginTrueColorBmp(iStartX+framData->uXoffset, iStartY+framData->uYoffset, 0,0,iWidth- framData->uXoffset,iHeight - framData->uYoffset,pBmpInfo,MM_TRUE);
    if(0 == framData->uDelayTime)
    {
        u32Ret = 1000;
    }
    else
    {
        u32Ret = framData->uDelayTime;
    }

    if(iFremToShow == pPicData->framNum - 1)
    {
        u32Ret |= 0x80000000;
    }
    //MLMF_Print("StartUpGif_Show iFremToShow = %d time = %d\n",iFremToShow,u32Ret);
    return u32Ret;
}




static ADPICBMP uiv_stStartUpPicData = {0,0,0,0,MM_NULL};

MBT_VOID UIF_OpenStartUpGif(MBT_VOID)
{
    MBT_U32 iSize;
    MBT_U8 *pu8Data = MM_NULL;
    MMT_STB_ErrorCode_E stRet;
    
    iSize = MMF_GetSpecifyImageSize(MM_IMAGE_KCBPLSTARTUPGIF);
    if(0 == iSize)
    {
        return;
    }
    
    pu8Data = MLMF_Malloc(iSize);
    if(MM_NULL == pu8Data)
    {
        MLUI_ERR("MLMF_Malloc fail\n");
        return;
    }
    stRet = MMF_GetSpecifyImage(MM_IMAGE_KCBPLSTARTUPGIF,pu8Data, &iSize);
    if(MM_NO_ERROR !=  stRet)
    {
        MLMF_Free(pu8Data);
        return;
    }
    
    gif_DecodGif(&uiv_stStartUpPicData,pu8Data,iSize,AD_STARTUP);
    MLMF_Free(pu8Data);
}

MBT_VOID UIF_CloseStartUpGif(MBT_VOID)
{
    if(MM_NULL != uiv_stStartUpPicData.framData)
    {
        Gif_FreeAdData(&uiv_stStartUpPicData);
    }
}

MBT_U32 UIF_ShowStartUpGif(MBT_VOID)
{
    MBT_U32 u32Time = 0;
    MBT_U32 u32GifH;
    MBT_U32 u32GifW;
    ADPICFRAM *pstFramData = uiv_stStartUpPicData.framData;
    static MBT_BOOL bFirstPlay = MM_TRUE;
    if(MM_NULL == pstFramData)
    {
        return 0x7fffffff;
    }

    
    //MLMF_Print("UIF_ShowStartUpGif \n");
    //u32Time = StartUpGif_Show(&uiv_stStartUpPicData,0,206,OSD_REGINMAXWIDHT,152,bFirstPlay);
    u32GifH = pstFramData->fBmpInfo.bHeight;
    u32GifW = pstFramData->fBmpInfo.bWidth;
	if(OSD_REGINMAXWIDHT == u32GifW && OSD_REGINMAXHEIGHT == u32GifH)
	{
		WGUIF_DisplayReginTrueColorBmp(0,0, 0,0,u32GifW,u32GifH,&(pstFramData->fBmpInfo),MM_TRUE);
	}
	else
	{
    	u32Time = StartUpGif_Show(&uiv_stStartUpPicData,(OSD_REGINMAXWIDHT - u32GifW)/2,(OSD_REGINMAXHEIGHT - u32GifH)/2 + 160,u32GifW,u32GifH,bFirstPlay);
    }
	WGUIF_ReFreshLayer();
    bFirstPlay = MM_FALSE;
    return u32Time;
}

MBT_VOID uif_DisplayWaterMark(MBT_VOID)
{
#if(1 == TFCONFIG)  
    return;
#endif    
    MBT_S32 x = 0, y = 0;
    x = OSD_REGINMAXWIDHT - g_stFramBmpWaterLogo.bWidth - WATERMAK_TO_RIGHT_W;
    y = OSD_REGINMAXHEIGHT - g_stFramBmpWaterLogo.bHeight - WATERMAK_TO_BOTTOM_H; 
    UIF_ShowWaterLogoPNG(x,y);
}

MBT_VOID uif_ClearWaterMark(MBT_VOID)
{
    MBT_S32 x = 0, y = 0;

    x = OSD_REGINMAXWIDHT - g_stFramBmpWaterLogo.bWidth - WATERMAK_TO_RIGHT_W;
    y = OSD_REGINMAXHEIGHT - g_stFramBmpWaterLogo.bHeight - WATERMAK_TO_BOTTOM_H; 
    UIF_HideWaterLogoPNG(x,y);
}

MBT_BOOL uif_JudgeWaterMarkPositionToShowFinger(MBT_S32 s32fx, MBT_S32 s32fy, MBT_S32 s32fw, MBT_S32 s32fh)
{
    MBT_S32 s32mx = 0, s32my = 0, s32mw = 0, s32mh = 0;
    
    MBT_S32 Xa1 = 0, Ya1 = 0, Xa2 = 0, Ya2 = 0;
    MBT_S32 Xb1 = 0, Yb1 = 0, Xb2 = 0, Yb2 = 0;

    MBT_S32 X3 = 0, Y3 = 0, Xw = 0, Yh = 0;

    s32mw = g_stFramBmpWaterLogo.bWidth;
    s32mh = g_stFramBmpWaterLogo.bHeight;
    s32mx = OSD_REGINMAXWIDHT - s32mw - WATERMAK_TO_RIGHT_W;
    s32my = OSD_REGINMAXHEIGHT - s32mh - WATERMAK_TO_BOTTOM_H;

    //矩形A的左上角坐标为（Xa1,Ya1），右下角坐标为（Xa2,Ya2），矩形B的左上角坐标为（Xb1,Yb1），右下角坐标为（Xb2,Yb2）
    //| Xb2+Xb1-Xa2-Xa1 | <= Xa2-Xa1+Xb2-Xb1
    //| Yb2+Yb1-Ya2-Ya1 | <= Ya2-Ya1+Yb2-Yb1
    Xa1 = s32fx;
    Ya1 = s32fy;
    Xa2 = s32fx + s32fw;
    Ya2 = s32fy + s32fh;

    Xb1 = s32mx;
    Yb1 = s32my;
    Xb2 = s32mx + s32mw;
    Yb2 = s32my + s32mh;

    X3 = Xb2+Xb1-Xa2-Xa1;
    Xw = Xa2-Xa1+Xb2-Xb1;
    Y3 = Yb2+Yb1-Ya2-Ya1;
    Yh = Ya2-Ya1+Yb2-Yb1;

    //MLMF_Print("X3:%d,Xw:%d, Y3:%d,Yh:%d++++++\n", X3, Xw, Y3, Yh);
    
    if ((abs(X3) <= Xw) && (abs(Y3) <= Yh))
    {
        return MM_FALSE;
    }

    return MM_TRUE;
}

