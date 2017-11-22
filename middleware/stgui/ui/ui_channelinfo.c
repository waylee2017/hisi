#include "ui_share.h"


#define GENRES_X_START       0
#define GENRES_Y_START       0
#define GENRES_GENRES_TVBACKGROUND_X    GENRES_X_START+800
#define GENRES_GENRES_TVBACKGROUND_Y    GENRES_Y_START+150 
#define GENRES_TVBACKGROUND_WIDTH       356
#define GENRES_TVBACKGROUND_HEIGHT      213
#define GENRES_HELP_GAP      48

#define GENRES_TV_VIDEO_BACKGROUND_COLOUR       0xfffff111

#define CHN_INFO_X    (30)
#define CHN_INFO_HEIGHT     (125)
#define CHN_INFO_Y          (OSD_REGINMAXHEIGHT-CHN_INFO_HEIGHT) 

#define CHN_NOPROGRAMNAME_X  (CHN_INFO_X+214)
#define CHN_NOPROGRAMNAME_Y  (CHN_INFO_Y+15)
#define CHN_PFEVENTP_X  (CHN_NOPROGRAMNAME_X)
#define CHN_PFEVENTP_Y  (CHN_INFO_Y+39)
#define CHN_PFEVENTF_X  (CHN_NOPROGRAMNAME_X)
#define CHN_PFEVENTF_Y  (CHN_INFO_Y+63)
#define CHN_HINT_X  (CHN_NOPROGRAMNAME_X)
#define CHN_HINT_Y  (CHN_INFO_Y+90)


#define CHANNEL_PROGRAMLIST_MSGBAR_WIDTH  280
#define CHANNEL_PROGRAMLIST_MSGBAR_HEIGHT 140


#define CHANNEL_PROGRAMLIST_VIDEOAREA_WIDTH  (GENRES_TVBACKGROUND_WIDTH-2)
#define CHANNEL_PROGRAMLIST_VIDEOAREA_HEIGHT (GENRES_TVBACKGROUND_HEIGHT-2)
#define CHANNEL_PROGRAMLIST_VIDEOAREA_X      (GENRES_GENRES_TVBACKGROUND_X+1)
#define CHANNEL_PROGRAMLIST_VIDEOAREA_Y      (GENRES_GENRES_TVBACKGROUND_Y+1)



#define CHNLIST_LISTITEM_WIDTH   320
#define CHNLIST_LISTITEM_HEIGHT  35
#define CHNLIST_LISTITEM_GAP     8
#define CHNLIST_LISTITEMS_PERPAGE 11

#define CH_LOGICNUMBER_WIDTH 120
#define CH_LOGICNUMBER_HEIGHT 50
#define CH_LOGICNUMBER_X (INPUT_PROGRAM_NUMBER_X)
#define CH_LOGICNUMBER_Y (INPUT_PROGRAM_NUMBER_Y)



#define CHN_INFO_DATE_TEXT_X (CHN_INFO_X+950) //date
#define CHN_INFO_TIME_TEXT_X (CHN_INFO_X+1050) //time
#define CHN_INFO_DATE_X (CHN_INFO_X+920) //date icon
#define CHN_INFO_TIME_X (CHN_INFO_X+1020) //time icon
#define CHN_INFO_FAV_Y (CHN_INFO_Y+45)
#define CHN_INFO_FAV_X (CHN_INFO_DATE_X)
#define CHN_INFO_LOCK_X (CHN_INFO_DATE_X + 50)
#define CHN_INFO_CA_X (CHN_INFO_DATE_X + 100)
#define CHN_INFO_USB_X (CHN_INFO_DATE_X + 150)
#define CHN_INFO_PROGRESS_BAR_LEN 240 //进度条长度

typedef struct _ui_genre_list_
{
    MBT_S32 iGenreNodeNum;
    DBS_GenreINFO *pstGenreHead;
}UI_GENRELIST;

static UI_GENRELIST uiv_stGenreList = {0,MM_NULL};

static MBT_VOID uif_ChnInfoDrawDynamicPannel(UI_PRG *pstProgInfo)
{	
    MBT_S32 iLen;
    MBT_S32 font_height = 0;
    MBT_U16 u16LogicNum;
    MBT_CHAR buf[24];
    MBT_CHAR logNoThu,logNoHun,logNoTen,logNo;
    BITMAPTRUECOLOR *pstFramBmp;
	MBT_CHAR tempData[2] = {0};
	MBT_S32 yOffSet = 0;
    MBT_S32 x = 0, y = 0;
    MBT_U32 u32chanType = 0;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    MBT_CHAR* strInfo[2][5]=
    {
		{
			"Schedule",
			"Channel Info",
			"Mail",
			"PVR",
			"RADIO CHANNEL"
		},
		{
	        "Schedule",
			"Channel Info",
			"Mail",
			"PVR",
			"RADIO CHANNEL"
	    }
    };

    if (MM_NULL == pstProgInfo)
    {
        return;
    }
    
    WGUIF_ClsScreen(CH_LOGICNUMBER_X,CH_LOGICNUMBER_Y,CH_LOGICNUMBER_WIDTH, CH_LOGICNUMBER_HEIGHT);

	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor);
    WGUIF_DisplayReginTrueColorBmp(0, CHN_INFO_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);

    pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_LogoIfor);
	WGUIF_DrawFilledRectangle(CHN_INFO_X,CHN_INFO_Y,pstFramBmp->bWidth,120,0xFFFFFFFF);
    WGUIF_DisplayReginTrueColorBmp(CHN_INFO_X, CHN_INFO_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
	#if(1 == ENABLE_ADVERT)
	Advert_ShowAdBitmap(0,0,BROWSER_AD_BANNER);
	#endif
	
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_DateIfor);
    WGUIF_DisplayReginTrueColorBmp(CHN_INFO_DATE_X, CHN_INFO_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);

    pstFramBmp = BMPF_GetBMP(m_ui_Genres_ClockIfor);
    WGUIF_DisplayReginTrueColorBmp(CHN_INFO_TIME_X, CHN_INFO_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);

    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    memset(buf,0,sizeof(buf));
    u32chanType = DBSF_ListGetPrgListType(buf);
    if (m_ChannelList == u32chanType)
    {
        if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
        {
            memset(buf,0,sizeof(buf));
            strcpy(buf,strInfo[uiv_u8Language][4]);
        }
    }
    iLen = strlen(buf);
    WGUIF_FNTDrawTxt(CHN_INFO_X+667, CHN_INFO_Y+15, iLen, buf, FONT_FRONT_COLOR_WHITE);
            
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
    x = CHN_HINT_X;
    y = CHN_HINT_Y;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    iLen = sprintf(buf, strInfo[uiv_u8Language][0]);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    x = x + 5 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_RedIfor);
    WGUIF_FNTDrawTxt(x, y + yOffSet, iLen, buf, FONT_FRONT_COLOR_WHITE);
            
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
    x = x + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][0]), strInfo[uiv_u8Language][0]) + 50;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    iLen = sprintf(buf, strInfo[uiv_u8Language][1]);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    x = x + 5 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_GreenIfor);
    WGUIF_FNTDrawTxt(x, y + yOffSet, iLen, buf, FONT_FRONT_COLOR_WHITE);
            
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
    x = x + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][1]), strInfo[uiv_u8Language][1]) + 50;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    iLen = sprintf(buf, strInfo[uiv_u8Language][2]);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    x = x + 5 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_YellowIfor);
    WGUIF_FNTDrawTxt(x, y + yOffSet, iLen, buf, FONT_FRONT_COLOR_WHITE);
            
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_BlueIfor);
    x = x + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][2]), strInfo[uiv_u8Language][2]) + 50;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    iLen = sprintf(buf, strInfo[uiv_u8Language][3]);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    x = x + 5 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_BlueIfor);
    WGUIF_FNTDrawTxt(x, y + yOffSet, iLen, buf, FONT_FRONT_COLOR_WHITE);

    if(0!=MLMF_USB_GetDevVolNum())
    {
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelInfo_usbIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_USB_X, CHN_INFO_FAV_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }
    
    if((pstProgInfo->stService.ucProgram_status) & FREECA_BIT_MASK)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelInfo_caIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_CA_X, CHN_INFO_FAV_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }

    if((pstProgInfo->stService.ucProgram_status) & LOCK_BIT_MASK)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelEdit_lock_logoIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_LOCK_X, CHN_INFO_FAV_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }

    if((pstProgInfo->stService.ucProgram_status) & FAVOURITE_BIT_MASK)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_FAV_X, CHN_INFO_FAV_Y,0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
    }

    u16LogicNum = pstProgInfo->u16LogicNum;
    logNoThu = (u16LogicNum)/1000;
    logNoHun = (u16LogicNum)/100-logNoThu*10;
    logNoTen = (u16LogicNum)/10-logNoThu*100-logNoHun*10;
    logNo = (u16LogicNum)%10;

    //MLMF_Print("+++++++++++uif_ChnInfoDrawDynamicPannel %d [%d %d %d %d]\n",u16LogicNum,logNoThu,logNoHun,logNoTen,logNo);
    switch(pstProgInfo->stService.cProgramType)
    {
        case STTAPI_SERVICE_TELEVISION:            
        case STTAPI_SERVICE_RADIO:
			WGUIF_SetFontHeight(INPUT_CHANNEL_NUMBER_HEIGHT);

            sprintf(tempData,"%d",logNo);
			WGUIF_FNTDrawTxt(CH_LOGICNUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+3*INPUT_CHANNEL_NUMBER_DISTANCE, CH_LOGICNUMBER_Y, strlen(tempData), tempData, FONT_FRONT_COLOR_WHITE);
            WGUIF_ClsScreen(INPUT_PROGRAM_NUMBER_X,INPUT_PROGRAM_NUMBER_Y-3,INPUT_PROGRAM_NUMBER_WIDTH, INPUT_PROGRAM_NUMBER_HEIGHT+8);

            if(logNoThu)
            {
				sprintf(tempData,"%d",logNoThu);
				WGUIF_FNTDrawTxt(CH_LOGICNUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X, CH_LOGICNUMBER_Y, strlen(tempData), tempData, FONT_FRONT_COLOR_WHITE);
            }
            if(logNoThu||logNoHun)
            {
				sprintf(tempData,"%d",logNoHun);
				WGUIF_FNTDrawTxt(CH_LOGICNUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+INPUT_CHANNEL_NUMBER_DISTANCE, CH_LOGICNUMBER_Y, strlen(tempData), tempData, FONT_FRONT_COLOR_WHITE);
            }
            if(logNoThu||logNoHun||logNoTen)
            {
				sprintf(tempData,"%d",logNoTen);
				WGUIF_FNTDrawTxt(CH_LOGICNUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+2*INPUT_CHANNEL_NUMBER_DISTANCE, CH_LOGICNUMBER_Y, strlen(tempData), tempData, FONT_FRONT_COLOR_WHITE);
            }
            //logNo
			sprintf(tempData,"%d",logNo);
			WGUIF_FNTDrawTxt(CH_LOGICNUMBER_X+INPUT_CHANNEL_NUMBER_THOUSAND_X+3*INPUT_CHANNEL_NUMBER_DISTANCE, CH_LOGICNUMBER_Y, strlen(tempData), tempData, FONT_FRONT_COLOR_WHITE);
            
            WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
            iLen = sprintf(buf, "%03d  %s",u16LogicNum,pstProgInfo->stService.cServiceName);
            WGUIF_FNTDrawTxt(CHN_NOPROGRAMNAME_X, CHN_NOPROGRAMNAME_Y, iLen, buf, FONT_FRONT_COLOR_WHITE);
            break;

        case STTAPI_SERVICE_NVOD_TIME_SHIFT:
        case STTAPI_SERVICE_NVOD_REFERENCE:	   
            WGUIF_SetFontHeight(TOPLEFTMAINTITLE_FONT_HEIGHT);
            iLen = sprintf(buf, "%s", "nvod" );
            WGUIF_FNTDrawTxt(CHN_INFO_X+120, CHN_INFO_Y+10, iLen , buf, FONT_FRONT_COLOR_WHITE);            
            break;
    }

    WGUIF_SetFontHeight(font_height); 
}


static MBT_BOOL uif_ChnInfoDisplayTime( MBT_BOOL bRedraw )
{
    static MBT_U8 ucTestByte = 0xff;
    static MBT_U8 ucTestDay = 0xff;
    MBT_BOOL bRefresh = MM_FALSE;
	MBT_S32 font_height;
    TIMER_M  stTempTime;
    BITMAPTRUECOLOR *pstFramBmp;
    TMF_GetSysTime(&stTempTime);

    if ( bRedraw || stTempTime.minute != ucTestByte )
    {
        MBT_CHAR me_DateStr[30] = { 0 };
        MBT_S32 iLen = sprintf(me_DateStr,"%02d:%02d",stTempTime.hour,stTempTime.minute);	
        font_height = WGUIF_GetFontHeight();
        WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
        ucTestByte = stTempTime.minute;
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelInfo_Time_BgIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_TIME_TEXT_X,CHN_INFO_Y,0,0,50,30,pstFramBmp,MM_TRUE);
        WGUIF_FNTDrawTxt(CHN_INFO_TIME_TEXT_X,  CHN_INFO_Y+15,iLen,me_DateStr, FONT_FRONT_COLOR_WHITE);
        WGUIF_SetFontHeight(font_height);
        bRefresh = MM_TRUE;
    }

    if ( bRedraw || stTempTime.date != ucTestDay )
    {
        MBT_CHAR me_DateStr[30] = { 0 };
        MBT_S32 iLen = sprintf(me_DateStr,"%02d/%02d",stTempTime.month,stTempTime.date);	
        font_height = WGUIF_GetFontHeight();
        WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
        ucTestByte = stTempTime.date;
        pstFramBmp = BMPF_GetBMP(m_ui_ChannelInfo_Time_BgIfor);
        WGUIF_DisplayReginTrueColorBmp(CHN_INFO_DATE_TEXT_X,CHN_INFO_Y,0,0,50,30,pstFramBmp,MM_TRUE);
        WGUIF_FNTDrawTxt(CHN_INFO_DATE_TEXT_X,  CHN_INFO_Y+15,iLen,me_DateStr, FONT_FRONT_COLOR_WHITE);
        WGUIF_SetFontHeight(font_height);
        bRefresh = MM_TRUE;
    }
    return bRefresh;
}

static MBT_VOID uif_ChnInfoDisplayPFEvent( MBT_BOOL bIsPresentEvent,	MBT_CHAR* pTimeDuration,MBT_CHAR* pEventName)
{
    MBT_S32 x,y, cx, cy;
    MBT_S32 s32TextWidth= 0;
    MBT_S32 font_h = 0;
    if(MM_TRUE == bIsPresentEvent)
    {
        x = CHN_PFEVENTP_X;
        y = CHN_PFEVENTP_Y;
        cx = 675;
        cy = 26;
    }
    else
    {
        x = CHN_PFEVENTF_X;
        y = CHN_PFEVENTF_Y;
        cx = 675;
        cy = 26;
    }
    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    WGUIF_DisplayReginTrueColorBmp(0, CHN_INFO_Y, x, y-CHN_INFO_Y, cx, cy, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

    if(MM_NULL != pTimeDuration)
    {
        WGUIF_FNTDrawTxt(x, y, strlen(pTimeDuration),pTimeDuration, FONT_FRONT_COLOR_WHITE);
        s32TextWidth = WGUIF_FNTGetTxtWidth (strlen(pTimeDuration),pTimeDuration);
    }

    if(MM_NULL != pEventName)
    {
        x += s32TextWidth+10;
        WGUIF_FNTDrawTxt(x,y,strlen(pEventName),pEventName,FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(font_h);
}

static MBT_BOOL uif_DisplayPFEventInfo(DBST_PROG *pstService,MBT_BOOL bRedraw)
{
    static MBT_U8 u8LastPreEvent = 0xfe;
    static MBT_U8 u8LastFEvent = 0xfe;
    UI_EVENT stPEvent ;
    UI_EVENT stFEvent ;
    UI_EVENT *pstPEvent = &stPEvent;
    UI_EVENT *pstFEvent = &stFEvent;
    TIMER_M starttimer;
    TIMER_M sEndtimer;
    TIMER_M  stTempTime;
    //BITMAPTRUECOLOR *pstFramBmp;

    MBT_S32 s_time=0;/*minute*/
    MBT_S32 e_time=0;
    MBT_S32 c_time=0;
    //MBT_S32 proTotalLen=700;
    //MBT_S32 proCurLen=10;

    MBT_BOOL bRefresh = MM_FALSE;
    MBT_CHAR PFEventBuf[2][100];
    MBT_CHAR* infostr[2] = 
    {
        "Searching...",
        "Searching..."
    };
    MBT_U8 uEventNum;

    if(MM_NULL == pstService)
    {
        return bRefresh;
    }
    TMF_GetSysTime(&stTempTime);
    c_time = stTempTime.hour*60+stTempTime.minute;
    uEventNum = DBSF_EpgGetPFEvent(pstService->stPrgTransInfo.u32TransInfo,pstService->u16ServiceID,&stPEvent,&stFEvent);

    switch(uEventNum)
    {
        case 0:
            if (0xff != u8LastPreEvent||0xff != u8LastFEvent||bRedraw)
            {
                u8LastPreEvent = 0xff;
                u8LastFEvent = 0xff;
                sprintf(PFEventBuf[0], "%s", infostr[0]);
                sprintf(PFEventBuf[1],  "%s", infostr[1]);
                uif_ChnInfoDisplayPFEvent(MM_TRUE, PFEventBuf[0],MM_NULL);
                //uif_ChnInfoDisplayPFEvent(MM_FALSE,PFEventBuf[1],MM_NULL);
                bRefresh = MM_TRUE;
            }
            break;
        case 1:
            if(u8LastPreEvent !=  pstPEvent->uStartTime[4]||bRedraw)
            {
                u8LastPreEvent = pstPEvent->uStartTime[4] ;
                u8LastFEvent = 0xff;
                uif_GetEventStartEndTime(pstPEvent->uStartTime,pstPEvent->uDutationTime,&starttimer, &sEndtimer);
				s_time = starttimer.hour*60+starttimer.minute;
				e_time = sEndtimer.hour*60+sEndtimer.minute;
				
                sprintf(PFEventBuf[0], "%02d:%02d-%02d:%02d", starttimer.hour, starttimer.minute, sEndtimer.hour,sEndtimer.minute);
                sprintf(PFEventBuf[1], "%s", infostr[1]);
                uif_ChnInfoDisplayPFEvent(MM_TRUE, PFEventBuf[0],pstPEvent->event_name);
                uif_ChnInfoDisplayPFEvent(MM_FALSE, PFEventBuf[1],MM_NULL);
                bRefresh = MM_TRUE;
            }
            break;
        case 2:
            if(u8LastPreEvent !=  pstPEvent->uStartTime[4]||u8LastFEvent != pstFEvent->uStartTime[4]||bRedraw)
            {
                u8LastPreEvent = pstPEvent->uStartTime[4] ;
                u8LastFEvent = pstFEvent->uStartTime[4] ;
                uif_GetEventStartEndTime(pstPEvent->uStartTime,pstPEvent->uDutationTime,&starttimer, &sEndtimer);
				s_time = starttimer.hour*60+starttimer.minute;
				e_time = sEndtimer.hour*60+sEndtimer.minute;
                sprintf(PFEventBuf[0], "%02d:%02d-%02d:%02d", starttimer.hour, starttimer.minute, sEndtimer.hour,sEndtimer.minute);
                uif_GetEventStartEndTime(pstFEvent->uStartTime,pstFEvent->uDutationTime,&starttimer, &sEndtimer);
				sprintf(PFEventBuf[1], "%02d:%02d-%02d:%02d", starttimer.hour, starttimer.minute,sEndtimer.hour,sEndtimer.minute);
                uif_ChnInfoDisplayPFEvent(MM_TRUE, PFEventBuf[0],pstPEvent->event_name);
                uif_ChnInfoDisplayPFEvent(MM_FALSE, PFEventBuf[1],pstFEvent->event_name);
                bRefresh = MM_TRUE;
            }
            break;
    }
    
    return bRefresh;
}

static MBT_VOID uif_DrawLockChannelDisplayInfo(UI_PRG *pstProgInfo)
{
    MBT_U8 ucTemp ;   
    MBT_CHAR string[8];
	MBT_U16 u16LogicNum;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();

    if (MM_NULL == pstProgInfo)
    {
        return;
    }

    uif_ChnInfoDrawDynamicPannel(pstProgInfo);
    uif_ChnInfoDisplayTime(MM_TRUE);
    uif_DisplayPFEventInfo(&pstProgInfo->stService,MM_TRUE);
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
}

static MBT_BOOL uif_DrawChannelPlayPrg(UI_PRG *pstProgInfo)
{
    if (MM_NULL == pstProgInfo)
    {
        return MM_FALSE;
    }
    
    if(uif_WhetherCurPrg(pstProgInfo))
    {
        return MM_TRUE;
    }
    
    UIF_StopAV();
    
    if (LOCK_BIT_MASK == (pstProgInfo->stService.ucProgram_status & LOCK_BIT_MASK))
    {
        uif_DrawLockChannelDisplayInfo(pstProgInfo);
        uif_SavePrgToBoxInfo(&pstProgInfo->stService);
        if(MM_TRUE == uif_PermitPlayLockPrg(pstProgInfo))
        {
            uif_PlayPrg(pstProgInfo); 
        }
        return MM_FALSE; // if lock,return false,no redraw       
    }
    
    uif_PlayPrg(pstProgInfo); 
    
    return MM_TRUE;
}

static MBT_BOOL uif_DrawChannelPlayPrgUpDown(UI_PRG *pstProgInfo, MBT_U8 *u8isLockChannel)
{  
    if (MM_NULL == pstProgInfo || MM_NULL == u8isLockChannel)
    {
        return MM_FALSE;
    }
        
    if(uif_WhetherCurPrg(pstProgInfo))
    {
        return MM_TRUE;
    }
   
    UIF_StopAV();
    if (LOCK_BIT_MASK == (pstProgInfo->stService.ucProgram_status & LOCK_BIT_MASK))
    {
        *u8isLockChannel = 1;
        uif_DrawLockChannelDisplayInfo(pstProgInfo);
        uif_SavePrgToBoxInfo(&pstProgInfo->stService);
        if(MM_FALSE == uif_PermitPlayLockPrg(pstProgInfo))
        {
            return MM_TRUE;
        }
    }
    else
    {
        *u8isLockChannel = 0;
    }
    uif_PlayPrg(pstProgInfo);
    
    return MM_TRUE;
}

static MBT_BOOL uif_DrawChannelSignal(MBT_VOID)
{
    MBT_U32 strength;
    MBT_U32 quality;
    MBT_U32 ber;
    MBT_S32 iTemp;
    MBT_S32 iLen;
    MBT_S32 x;
    MBT_S32 y;

    MLMF_Tuner_GetStatus(0,&strength,&quality,&ber);
    
    WGUIF_DisplayReginTrueColorBmp(0, CHN_INFO_Y, CHN_INFO_DATE_X, 75, CHN_INFO_PROGRESS_BAR_LEN, 40, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

    //strength bar
    iTemp = (strength*(CHN_INFO_PROGRESS_BAR_LEN))/100;
    x = CHN_INFO_DATE_X;
    y = CHN_INFO_Y+75;
    uif_ShareDrawCombinHBar(x,y,
                                            CHN_INFO_PROGRESS_BAR_LEN,
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_leftIfor),
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_midIfor),
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_rightIfor));


    iLen = BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_leftIfor)+BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_rightIfor);
    if(iTemp < iLen)
    {
        iTemp = iLen;
    }
    if(strength!=0)
    {
        uif_ShareDrawCombinHBar(x,y,
                                                iTemp,
                                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_leftIfor),
                                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_midIfor),
                                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_rightIfor));
    }
    //quality bar
    iTemp = (quality*(CHN_INFO_PROGRESS_BAR_LEN))/100;
    x = CHN_INFO_DATE_X;
    y = CHN_INFO_Y+95;

    uif_ShareDrawCombinHBar(x,y,
                                            CHN_INFO_PROGRESS_BAR_LEN,
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_leftIfor),
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_midIfor),
                                            BMPF_GetBMP(m_ui_Signer_progressbar_white_rightIfor));

    iLen = BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_leftIfor)+BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_rightIfor);
    if(iTemp < iLen)
    {
        iTemp = iLen;
    }
    if(quality != 0)
    {
        uif_ShareDrawCombinHBar(x,y,
                                                iTemp,
                                                BMPF_GetBMP(m_ui_Signer_progressbar_green_leftIfor),
                                                BMPF_GetBMP(m_ui_Signer_progressbar_green_midIfor),
                                                BMPF_GetBMP(m_ui_Signer_progressbar_green_rightIfor));
    }
    return MM_TRUE;
}

MBT_VOID uif_DrawChannel(MBT_VOID)
{
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2)-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    MBT_U32 u8DlgDispTime = 5;
    MBT_U32 iExitTime = 0;
    MBT_U32 u32PlayTime = 0xffffffff;
    MBT_U32 u32WaitTime = 2000;
    MBT_U32 u32CurTime;
    MBT_S32 iKey;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedrawEvent = MM_TRUE;
    UI_PRG ProgInfo ;
    UI_PRG *pstProgInfo = &ProgInfo;
    DVB_BOX *pstBoxInfo;
    MBT_U8 u8isLockChannel = 0;

    if(DVB_INVALID_LINK == DBSF_DataCurPrgInfo(pstProgInfo) )
    {
        return;
    }
        
    if ( pstProgInfo->stService.ucProgram_status & SKIP_BIT_MASK)
    {
        return;
    }
    
    pstBoxInfo = DBSF_DataGetBoxInfo();
    
    WGUIF_ClsScreen(0,CHN_INFO_Y,OSD_REGINMAXWIDHT, CHN_INFO_HEIGHT);
	#if(1 == ENABLE_ADVERT)
	Advert_CleanAdvert(0,0,BROWSER_AD_BANNER);
	#endif

    u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;

    bRedraw &= uif_DrawChannelPlayPrg(pstProgInfo);
    if(MM_FALSE == bRedraw)
    {
        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
    }

    uif_ClearWaterMark();
    
    while ( !bExit )
    {
        if ( bRedraw )
        {
            uif_ChnInfoDrawDynamicPannel(pstProgInfo);
            iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_ChnInfoDisplayTime(bRedraw);
        bRedraw = MM_FALSE;
        
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(u32WaitTime);
        u32WaitTime = 2000;

    	switch ( iKey )
        {
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                if(DVB_INVALID_LINK != uif_PrgPFKeyFunction(iKey,pstBoxInfo->ucBit.bVideoAudioState,pstProgInfo))
                {
                    u32CurTime = MLMF_SYS_GetMS();
                    iExitTime = u32CurTime +u8DlgDispTime*1000;
                    if(MM_BLAST_PRESS == uif_GetKeyStatus())
                    {
                        bRedraw |= uif_DrawChannelPlayPrgUpDown(pstProgInfo,&u8isLockChannel);
                        bRedrawEvent = MM_TRUE;
                        MLUI_DEBUG("---> u8isLockChannel = %d",u8isLockChannel);
                        if( 1 == u8isLockChannel)
                        {
                            bRedraw = MM_FALSE;
                            bRedrawEvent = MM_FALSE;
                            iExitTime = u32CurTime + u8DlgDispTime*1000;
                        }
                    }
                    else
                    {
                        u32WaitTime = 300;
                        bRedraw = MM_TRUE;
                        u32PlayTime = u32CurTime + 300;
                    }
                }
                break;
                
            case DUMMY_KEY_EXIT:
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_PRGITEMUPDATED:
                DBSF_DataCurPrgInfo(pstProgInfo);
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_PRGLISTUPDATED:
                DBSF_DataCurPrgInfo(pstProgInfo);
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_VTGMODE_1080i_25HZ:
            case DUMMY_KEY_VTGMODE_1080i_30HZ:
            case DUMMY_KEY_VTGMODE_720p_50HZ:
            case DUMMY_KEY_VTGMODE_720p_60HZ:
            case DUMMY_KEY_VTGMODE_576p_50HZ:
            case DUMMY_KEY_VTGMODE_576i_25HZ:
            case DUMMY_KEY_VTGMODE_480p_60HZ:
            case DUMMY_KEY_VTGMODE_480i_30HZ:
                if ( uif_ShareAutoChangePNTVMode(iKey) )
                {
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;

            case DUMMY_KEY_RECALL: 
            case DUMMY_KEY_FAV:
            case DUMMY_KEY_RED:  
            case DUMMY_KEY_GREEN:  
            case DUMMY_KEY_YELLOW_SUBSCRIBE:  
            case DUMMY_KEY_BLUE_EDIT:
            case DUMMY_KEY_SELECT:
                UIF_SendKeyToUi(iKey);
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_NO_SPACE:
                bRefresh |= uif_CAMShowEmailLessMem();
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
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case -1:
                u32CurTime = MLMF_SYS_GetMS();
                if(u32CurTime >= u32PlayTime)
                {
                    bRedraw |= uif_DrawChannelPlayPrgUpDown(pstProgInfo,&u8isLockChannel);
                    bRedrawEvent = MM_TRUE;
                    MLUI_DEBUG("---> u8isLockChannel = %d",u8isLockChannel);
                    if( 1 == u8isLockChannel)
                    {
                        bRedraw = MM_FALSE;
                        bRedrawEvent = MM_FALSE;
                        iExitTime = u32CurTime + u8DlgDispTime*1000;
                    }
                    u32PlayTime = 0xffffffff;
                }
                bRefresh |= uif_DrawChannelSignal();
                bRefresh |= uif_DisplayPFEventInfo(&pstProgInfo->stService,bRedrawEvent);
                bRedrawEvent = MM_FALSE;
                if ( u8DlgDispTime)
                {
                    if(u32CurTime >= iExitTime)
                    {
                        bExit = MM_TRUE;
                    }
                }
                bRefresh |= uif_ShowTopScreenICO();
                bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY, iMsgWidth, iMsgHeight);
                break;
                
            default:		
                if ( uif_ShareIsKeyPressed( iKey ) )
                {
                    UIF_SendKeyToUi(iKey);
                    bExit = MM_TRUE;
                    break;
                }

                if(uif_ShowMsgList(iMsgX,iMsgY, iMsgWidth, iMsgHeight))
                {
                    bRefresh = MM_TRUE;
                }

                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
		
    }

    DBSF_DataSetBoxInfo(pstBoxInfo);
    WGUIF_ClsScreen(0,CHN_INFO_Y,OSD_REGINMAXWIDHT, CHN_INFO_HEIGHT);
	#if(1 == ENABLE_ADVERT)
	Advert_CleanAdvert(0,0,BROWSER_AD_BANNER);
	#endif
    WGUIF_ClsScreen(CH_LOGICNUMBER_X,CH_LOGICNUMBER_Y-3,INPUT_PROGRAM_NUMBER_WIDTH, INPUT_PROGRAM_NUMBER_HEIGHT+8);
    uif_DisplayWaterMark();
}

/**************************************结束节目条**************************************/

/**************************************开始节目列表************************************/





static MBT_BOOL uiv_bSelectChnList = MM_TRUE;


static MBT_BOOL uif_ChnListReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    DBST_PROG *pstProgInfo =  uiv_PrgList.pstPrgHead;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstProgInfo||uiv_pstPrgEditList[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
    {
        memset(pItem,0,2*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }

    pstProgInfo += uiv_pstPrgEditList[iIndex].uProgramIndex;
    if(1 == DBSF_ListGetLCNStatus())
    {
        sprintf(pItem,"%03d", pstProgInfo->usiChannelIndexNo);
    }
    else
    {
        sprintf(pItem,"%03d", iIndex+1);
    }
    pstProgInfo->cServiceName[MAX_SERVICE_NAME_LENGTH] = 0;
    sprintf((MBT_CHAR*)(pItem+MAXBYTESPERCOLUMN), "%s",pstProgInfo->cServiceName);
    return MM_TRUE;
}

static MBT_BOOL uif_ChnTypeReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_CHAR* strInfo[2][3]=
    {
		{
            "TV CHANNEL",
            "HD CHANNEL",
            "RADIO CHANNEL"
		},
		{
            "TV CHANNEL",
            "HD CHANNEL",
            "RADIO CHANNEL"
		}
	};

    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }
    memset(pItem, 0, MAXBYTESPERCOLUMN);
    if(MM_UI_CHNLIST_ALLCHANNLE == iIndex)//第一个ALL CHANNEL
    {
        DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
        if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
        {
            sprintf((MBT_CHAR*)(pItem), "%s",strInfo[uiv_u8Language][0]);
        }
        else
        {
            sprintf((MBT_CHAR*)(pItem), "%s",strInfo[uiv_u8Language][2]);
        }
    }    
    else if(MM_UI_CHNLIST_HDCHANNLE == iIndex)
    {
        sprintf((MBT_CHAR*)(pItem), "%s",strInfo[uiv_u8Language][1]);
    }
    else
    {
        MBT_S32 iGenreNodeNum = uiv_stGenreList.iGenreNodeNum;
        DBS_GenreINFO *pstGenreHead = uiv_stGenreList.pstGenreHead;
        MBT_S32 s32Index = (iIndex-MM_UI_CHNLIST_BATCHANNLE);
        if(MM_NULL != pstGenreHead&&s32Index < iGenreNodeNum)
        {
            sprintf((MBT_CHAR*)(pItem), "%s", pstGenreHead[s32Index].strGenreName);
        }
        else
        {
            pItem[0] = 0;
        }
    }
    return MM_TRUE;
}

static MBT_VOID ChnListInitHDPrg( LISTITEM *pListItem )
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if(STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType&&1 == pstProgInfo->u8IsHDPrg)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== pstBoxInfo->u32VidTransInfo&&pstBoxInfo->u16VideoServiceID== pstProgInfo->u16ServiceID)
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }   
            uiv_pstPrgEditList[pListItem->iNoOfItems].ucLastProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[pListItem->iNoOfItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[ pListItem->iNoOfItems++ ].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }	
}

static MBT_VOID ChnListInitTVPrg( LISTITEM *pListItem )
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if(STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== pstBoxInfo->u32VidTransInfo&&pstBoxInfo->u16VideoServiceID== pstProgInfo->u16ServiceID)
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }   
            uiv_pstPrgEditList[pListItem->iNoOfItems].ucLastProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[pListItem->iNoOfItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[ pListItem->iNoOfItems++ ].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }	
}

static MBT_VOID ChnListInitRadioPrg( LISTITEM *pListItem )
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if(STTAPI_SERVICE_RADIO == pstProgInfo->cProgramType)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== pstBoxInfo->u32AudTransInfo &&pstBoxInfo->u16AudioServiceID== pstProgInfo->u16ServiceID)
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }   
            uiv_pstPrgEditList[pListItem->iNoOfItems].ucLastProgram_status= uiv_pstPrgEditList[pListItem->iNoOfItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[ pListItem->iNoOfItems++ ].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }
}

static MBT_BOOL ChnBATType( MBT_U16 *pu16BouquetID ,MBT_U16 u16BouquetID)
{
    MBT_U16 u16Length = 0;
    MBT_U8 u8Count;
    MBT_U16 *pu16Pos = MM_NULL;

    if (MM_NULL == pu16BouquetID)
    {
        return MM_FALSE;
    }

    u16Length = pu16BouquetID[0];
    pu16Pos = pu16BouquetID + 1;
    
    for(u8Count = 0; u8Count < u16Length; u8Count++) //从第二个开始比较
    {
        if(u16BouquetID == pu16Pos[u8Count])
        {
            return MM_TRUE;
        }
    }
    
    return MM_FALSE;
}

static MBT_VOID ChnListInitBatPrg(LISTITEM *pListItem,MBT_U16 u16BouquetID)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect;
    MBT_U16 u16SelectServiceID;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    MBT_U8  u8ProgramType = STTAPI_SERVICE_TELEVISION;

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32VidTransInfo;
        u16SelectServiceID = pstBoxInfo->u16VideoServiceID;
        u8ProgramType = STTAPI_SERVICE_TELEVISION;
    }
    else
    {
        iSelect = pstBoxInfo->u32AudTransInfo;
        u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
        u8ProgramType = STTAPI_SERVICE_RADIO;
    }
    
    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if((u8ProgramType == pstProgInfo->cProgramType)&&(pstProgInfo->u16BouquetID[0] != 0))
        {
            /*{
                MBT_S32 i;
                MLMF_Print("name %s len %d\n##########",pstProgInfo->cServiceName,pstProgInfo->u16BouquetID[0]);
                for(i = 0;i < pstProgInfo->u16BouquetID[0];i++)
                {
                    MLMF_Print("%02x ",pstProgInfo->u16BouquetID[i+1]);
                }
                MLMF_Print("\n");
            }*/
            
            if(MM_TRUE == ChnBATType(pstProgInfo->u16BouquetID, u16BouquetID))
            {
                if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
                {
                    pListItem->iSelect = pListItem->iNoOfItems;
                }   
                uiv_pstPrgEditList[pListItem->iNoOfItems].ucLastProgram_status = pstProgInfo->ucProgram_status;
                uiv_pstPrgEditList[pListItem->iNoOfItems].ucProgram_status = pstProgInfo->ucProgram_status;
                uiv_pstPrgEditList[ pListItem->iNoOfItems++ ].uProgramIndex = iIndex;
                MLUI_DEBUG("--->Save Program name = %s,iIndex = %d",pstProgInfo->cServiceName,iIndex);
                MLUI_DEBUG("--->Save pListItem->iNoOfItems = %d",pListItem->iNoOfItems);
            }
        }
        pstProgInfo++;
    }
}

static MBT_BOOL uif_ChnListListInfoDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(MM_TRUE == uiv_bSelectChnList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, CHNLIST_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_selectbar_leftIfor),
                            BMPF_GetBMP(m_ui_selectbar_midIfor),
                            BMPF_GetBMP(m_ui_selectbar_rightIfor));
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
            WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
        }
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
    }
     
    return MM_TRUE;
}

static MBT_BOOL uif_ChnTypeListInfoDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(MM_TRUE == uiv_bSelectChnList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, CHNLIST_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_LeftIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_MidIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_RightIfor));
        }
    }
    else
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, CHNLIST_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_selectbar_leftIfor),
                            BMPF_GetBMP(m_ui_selectbar_midIfor),
                            BMPF_GetBMP(m_ui_selectbar_rightIfor));
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
            WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
        }
    }
    return MM_TRUE;
}

static MBT_BOOL uif_ChnListListInfoDrawProgramName(DBST_PROG *pstServiceInfo)
{
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S16 s16FontHeight = 0;
    MBT_S32 x = GENRES_GENRES_TVBACKGROUND_X;
    MBT_S32 y = GENRES_GENRES_TVBACKGROUND_Y+GENRES_TVBACKGROUND_HEIGHT+20;
    MBT_U8 u8FontHeight = WGUIF_GetFontHeight();

    if (MM_NULL == pstServiceInfo)
    {
        return MM_FALSE;
    }

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    s16FontHeight = WGUIF_GetFontHeight();
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y-2, GENRES_TVBACKGROUND_WIDTH, s16FontHeight + 5, pstFramBmp, MM_TRUE);
    WGUIF_FNTDrawTxt(x, y, strlen(pstServiceInfo->cServiceName), pstServiceInfo->cServiceName, FONT_FRONT_COLOR_WHITE);   
    WGUIF_SetFontHeight(u8FontHeight);
    
    return MM_TRUE;
}

static MBT_VOID uif_ChnListListInit( LISTITEM* pstList,MBT_U32 u32ChnType)
{
    MBT_S32 me_StartX, me_StartY;	
    MBT_S32 iNum = uiv_PrgList.iPrgNum;

    me_StartX = GENRES_X_START+427;
    me_StartY = GENRES_GENRES_TVBACKGROUND_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = CHNLIST_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = CHNLIST_LISTITEM_GAP;
    pstList->iWidth  = CHNLIST_LISTITEM_WIDTH;
    pstList->iHeight = CHNLIST_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar =  uif_ChnListListInfoDraw;
    pstList->iColumns = 2;
    //Index
    pstList->iColPosition[0] = pstList->iColStart + 5;  
    
    // channel Name
    pstList->iColPosition[1] = pstList->iColPosition[0] + 62;  
    
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  
    pstList->ListReadFunction = uif_ChnListReadItem;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 1;

    if(0 == iNum)
    {
        pstList->iSelect = 0;    
        return;
    }

    
    if(m_ChannelList > u32ChnType)
    {
        ChnListInitBatPrg(pstList,u32ChnType);
    }
    else if(m_HD_Channel == u32ChnType)
    {
        ChnListInitHDPrg(pstList);
    }
    else
    {
        DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
        if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
        {      
            ChnListInitTVPrg( pstList );
        }
        else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
        {
            ChnListInitRadioPrg( pstList );
        }
    }
}

static MBT_VOID uif_ChnTypeListInit(LISTITEM* pstList,MBT_U32 u32ChnType)
{
    MBT_S32 me_StartX, me_StartY;	
    MBT_S32 i;	
    MBT_S32 s32GereNum = uiv_stGenreList.iGenreNodeNum;	
    DBS_GenreINFO *pstGenreHead = uiv_stGenreList.pstGenreHead;
    MBT_S32 u8ChnTypeNum = 0;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    
    me_StartX = GENRES_X_START+80;
    me_StartY = GENRES_GENRES_TVBACKGROUND_Y;
    
    if (pstBoxInfo->ucBit.bVideoAudioState  == VIDEO_STATUS )
    {
        u8ChnTypeNum = MM_UI_CHNLIST_BATCHANNLE + s32GereNum;
    }
    else
    {
        u8ChnTypeNum = 1;
    }

    
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = CHNLIST_LISTITEMS_PERPAGE;
    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    if(m_ChannelList > u32ChnType)
    {
        for(i = 0;i < s32GereNum;i++)
        {
            if(u32ChnType == (pstGenreHead[i].u16BouquetID&u32ChnType))
            {
                pstList->iSelect = MM_UI_CHNLIST_BATCHANNLE + i;
                break;
            }
        }
    }
    else if(m_HD_Channel == u32ChnType)
    {
        pstList->iSelect = MM_UI_CHNLIST_HDCHANNLE;
    }
    else
    {
        pstList->iSelect = MM_UI_CHNLIST_ALLCHANNLE;
    }
    
    pstList->iSpace  = CHNLIST_LISTITEM_GAP;
    pstList->iWidth  = CHNLIST_LISTITEM_WIDTH;
    pstList->iHeight = CHNLIST_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar = uif_ChnTypeListInfoDraw;
    pstList->iColumns = 1;
	//Channel Type Name
    pstList->iColPosition[0] = pstList->iColStart + 5;  
    pstList->iColWidth[0] = pstList->iWidth - 10;  
    pstList->ListReadFunction = uif_ChnTypeReadItem;
    pstList->iNoOfItems = u8ChnTypeNum;
    pstList->cHavesScrollBar = 1;
}

static MBT_BOOL uif_ChnProgramListDrawPanel(MBT_VOID)
{
    BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
    MBT_S32 s32FontHeight = 0; 
    MBT_S32 yOffSet;
    MBT_CHAR* strInfo[2][8]=
    {
		{
            "Genres",
            "Change",
            "Select",
            "Back",
            "EXIT",
            "Reminder",
            "Page Up",
            "Page Down"      
		},
		{
            "Genres",
            "Change",
            "Select",
			"Back",
            "EXIT",
            "Reminder",
            "Page Up",
            "Page Down"
		}
	};

    WGUIF_ClsFullScreen();
    //bg
    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

	//视频窗口
    WGUIF_ClsScreen(GENRES_GENRES_TVBACKGROUND_X, GENRES_GENRES_TVBACKGROUND_Y, GENRES_TVBACKGROUND_WIDTH, GENRES_TVBACKGROUND_HEIGHT);
  	WGUIF_DrawFilledRectangle(GENRES_GENRES_TVBACKGROUND_X, GENRES_GENRES_TVBACKGROUND_Y, GENRES_TVBACKGROUND_WIDTH, GENRES_TVBACKGROUND_HEIGHT, GENRES_TV_VIDEO_BACKGROUND_COLOUR); //黑色视频窗口背景
    WGUIF_DrawFilledRectangle(CHANNEL_PROGRAMLIST_VIDEOAREA_X, CHANNEL_PROGRAMLIST_VIDEOAREA_Y, CHANNEL_PROGRAMLIST_VIDEOAREA_WIDTH, CHANNEL_PROGRAMLIST_VIDEOAREA_HEIGHT, 0x00000000); //黑色视频窗口
    MLMF_AV_SetVideoWindow(CHANNEL_PROGRAMLIST_VIDEOAREA_X, CHANNEL_PROGRAMLIST_VIDEOAREA_Y, CHANNEL_PROGRAMLIST_VIDEOAREA_WIDTH, CHANNEL_PROGRAMLIST_VIDEOAREA_HEIGHT);
    //帮助信息
    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    
	//change
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
	x = GENRES_X_START + 100;
	y = GENRES_Y_START + 656;
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][1]), strInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
   
	//selectw
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][1]),strInfo[uiv_u8Language][1]) + GENRES_HELP_GAP;
    y = GENRES_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][2]), strInfo[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

	//Back
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_MENUIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][2]),strInfo[uiv_u8Language][2]) + GENRES_HELP_GAP;
    y = GENRES_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][3]), strInfo[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

	//Exit
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][3]),strInfo[uiv_u8Language][3]) + GENRES_HELP_GAP;
    y = GENRES_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][4]), strInfo[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);

    //Reminder
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_BlueIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][4]),strInfo[uiv_u8Language][4]) + 13 + GENRES_HELP_GAP;
    y = GENRES_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][5]), strInfo[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);

    //Page Up
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][5]),strInfo[uiv_u8Language][5]) + GENRES_HELP_GAP;
    y = GENRES_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][6]), strInfo[uiv_u8Language][6], FONT_FRONT_COLOR_WHITE); 

    //Page down
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][6]),strInfo[uiv_u8Language][6]) + GENRES_HELP_GAP;
    y = GENRES_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][7]), strInfo[uiv_u8Language][7], FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32FontHeight);
    return MM_TRUE;
}


static inline DBS_GenreINFO *ChnGetGenreNode(DBS_GenreINFO *pstGenreList,MBT_S32 s32Num,MBT_U16 u16BouquetID)
{
    MBT_S32 s32LeftIndex;
    MBT_S32 s32RightIndex;
    MBT_S32 s32MidIndex;
    MBT_U16 u16MidBouquetID;
    
    if (MM_NULL == pstGenreList)
    {
       return MM_NULL; 
    }
    
    s32LeftIndex = 0;
    s32RightIndex = s32Num-1;
    while (s32LeftIndex <= s32RightIndex)
    {
        s32MidIndex = ((s32LeftIndex + s32RightIndex)>>1);
        u16MidBouquetID = pstGenreList[s32MidIndex].u16BouquetID;
        if(u16BouquetID < u16MidBouquetID)
        {
            s32RightIndex = s32MidIndex - 1;
        }
        else if(u16BouquetID > u16MidBouquetID)
        {
            s32LeftIndex = s32MidIndex + 1;
        }
        else
        {
            //MLMF_Print("u16TSID %x TransInfo %x uiTPFreq = %d\n",u16TSID,pstTransInfo[s32MidIndex].stTPTrans.u32TransInfo,pstTransInfo[s32MidIndex].stTPTrans.uBit.uiTPFreq);
            return (&pstGenreList[s32MidIndex]);
        }
    }

    return MM_NULL;
}

static MBT_VOID ChnUpdateGenreList2Prg(DBST_PROG *pstPrgArray,MBT_S32 iPrgNum,UI_GENRELIST *pstUIGenreList)
{
    DBST_PROG *pstPrgPos;
    DBST_PROG *pstPrgEnd;
    MBT_U16 u16BouquetIDNum;
    MBT_U16 *pu16BouquetID;
    DBS_GenreINFO *pstGenreArray;
    DBS_GenreINFO *pstGetNode;
    DBS_GenreINFO stGenreListTmp;
    MBT_S32 s32GenreListNum;
    MBT_S32 s32NewNodeNum;
    MBT_S32 i,k;

    if(MM_NULL == pstPrgArray||0 == iPrgNum||MM_NULL == pstUIGenreList)
    {
        return;
    }

    if(0 == pstUIGenreList->iGenreNodeNum||MM_NULL == pstUIGenreList->pstGenreHead)
    {
        return;
    }

    s32GenreListNum = pstUIGenreList->iGenreNodeNum;
    pstGenreArray = pstUIGenreList->pstGenreHead;
    for(i = 0;i < s32GenreListNum;i++)
    {
        for(k = i+1;k < s32GenreListNum;k++)
        {
            if(pstGenreArray[i].u16BouquetID > pstGenreArray[k].u16BouquetID)
            {
                stGenreListTmp = pstGenreArray[i];
                pstGenreArray[i] = pstGenreArray[k];
                pstGenreArray[k] = stGenreListTmp;
            }
        }
        pstGenreArray[i].u16PrgNum = 0;
    }
  
    pstPrgPos = pstPrgArray;
    pstPrgEnd = pstPrgArray + iPrgNum;
    s32NewNodeNum = 0;
    while(pstPrgPos < pstPrgEnd)
    {
        if(dbsm_InvalidLCN != pstPrgPos->usiChannelIndexNo)
        {
            u16BouquetIDNum = pstPrgPos->u16BouquetID[0];
            pu16BouquetID = pstPrgPos->u16BouquetID+1;
            for(i = 0;i < u16BouquetIDNum;i++)
            {
                pstGetNode = ChnGetGenreNode(pstGenreArray,s32GenreListNum,pu16BouquetID[i]);
                if(MM_NULL != pstGetNode)
                {
                    if(0 == pstGetNode->u16PrgNum)
                    {
                        s32NewNodeNum++;
                        pstGetNode->u16PrgNum++;
                        if(s32NewNodeNum >= s32GenreListNum)
                        {
                            pstPrgPos = pstPrgEnd;
                            break;
                        }
                    }
                }
            }
        }
        pstPrgPos++;
		s32NewNodeNum = 0;
    }

#if 0
    for(i = 0;i < s32GenreListNum;)
    {
        if(0 == pstGenreArray[i].u16PrgNum)
        {
            for(k = i;k < s32GenreListNum-1;k++)
            {
                pstGenreArray[k] = pstGenreArray[k+1];
            }
            s32GenreListNum--;
        }
        else
        {
            //MLMF_Print("GenreName %s,u16PrgNum %d\n",pstGenreArray[i].strGenreName,pstGenreArray[i].u16PrgNum);
            i++;
        }
    }
#endif

    pstUIGenreList->iGenreNodeNum = s32GenreListNum;
    //MLMF_Print("ChnUpdateGenreList2Prg s32GenreListNum %d\n",s32GenreListNum);
}


static MBT_BOOL ChnCreateGenreList(DBST_PROG *pstSyncPrgArray,MBT_S32 iSyncPrgNum,UI_GENRELIST *pstUIGenreList)
{
    if(MM_NULL == pstUIGenreList || MM_NULL == pstSyncPrgArray)
    {
        return MM_FALSE;
    }

    if(MM_NULL != pstUIGenreList->pstGenreHead)
    {
        uif_ForceFree(pstUIGenreList->pstGenreHead);
    }
    
    pstUIGenreList->pstGenreHead = uif_ForceMalloc(dbsm_GtplMaxGenreNum*sizeof(DBS_GenreINFO));
    if(MM_NULL == pstUIGenreList->pstGenreHead)
    {
        return MM_FALSE;
    }

    pstUIGenreList->iGenreNodeNum = DBSF_DataGetGenreList(pstUIGenreList->pstGenreHead);
    //MLMF_Print("ChnCreateGenreList iGenreNodeNum = %d\n",pstUIGenreList->iGenreNodeNum);
    if(0 == pstUIGenreList->iGenreNodeNum)
    {
        return MM_FALSE;
    }

    ChnUpdateGenreList2Prg(pstSyncPrgArray,iSyncPrgNum,pstUIGenreList);
    return MM_TRUE;
}

static MBT_BOOL ChndestroyGenreList(UI_GENRELIST *pstUIGenreList)
{
    if(MM_NULL == pstUIGenreList)
    {
        return MM_FALSE;
    }
    
    if(MM_NULL != pstUIGenreList->pstGenreHead)
    {
        uif_ForceFree(pstUIGenreList->pstGenreHead);
        pstUIGenreList->pstGenreHead = MM_NULL;
    }
    
    pstUIGenreList->iGenreNodeNum = 0;
    return MM_TRUE;
}


MBT_S32 uif_ChannelProgramList(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iSize;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_U32 u32WaitTime = 2000;
    MBT_U32 u32PlayTime = 0xffffffff;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedrawChList = MM_TRUE;
    MBT_BOOL bRedrawInit = MM_TRUE;
    MBT_BOOL bNeedSaveBox = MM_FALSE;
    DBST_PROG *pstServiceInfo = MM_NULL;
    DBST_PROG *pstCurSelService = MM_NULL;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    LISTITEM stListChannelItems;
    LISTITEM stListChannelType;
    MBT_CHAR strName[100];
    MBT_S32 s32Index;
    MBT_U32 u32ChnType;
    UI_GENRELIST *pstUIGenreList = &uiv_stGenreList;

    uiv_bSelectChnList = MM_TRUE;
    
    if(0 == uif_CreateUIPrgArray())
    {       
        return iRetKey;
    }   
    
    if(MM_NULL != uiv_pstPrgEditList)
    {
        MLUI_ERR("Free program List");
        uif_ForceFree(uiv_pstPrgEditList);
    }
    
    ChnCreateGenreList(uiv_PrgList.pstPrgHead,uiv_PrgList.iPrgNum,pstUIGenreList);
    iSize = sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum;
    uiv_pstPrgEditList = uif_ForceMalloc(iSize);
    if(MM_NULL == uiv_pstPrgEditList)
    {
        MLUI_ERR("Malloc 0x%x Fail,Free !!! ",iSize);
        uif_DestroyUIPrgArray();
        return iRetKey;
    }
    memset(uiv_pstPrgEditList, 0xff, iSize);  

    
    u32ChnType = DBSF_ListGetPrgListType(strName);
    if(m_ChannelList < u32ChnType&&u32ChnType < m_HD_Channel)
    {
        u32ChnType = m_ChannelList;
        DBSF_ListSetPrgListType(u32ChnType);
        pstBoxInfo->ucBit.u32PrgListType = u32ChnType;
        bNeedSaveBox = MM_TRUE;
    }

    u32PlayTime = MLMF_SYS_GetMS() + 300;
    u32WaitTime = 300;
    bRefresh |= uif_ResetAlarmMsgFlag();
    while ( !bExit )
    {
        if(MM_TRUE == bRedrawInit)
        {
            uif_ChnTypeListInit(&stListChannelType,u32ChnType);
            uif_ChnListListInit(&stListChannelItems,u32ChnType);
            uif_ChnProgramListDrawPanel(); //画背景
			#if(1 == ENABLE_ADVERT)
			Advert_ShowAdBitmap(0,0,BROWSER_AD_CHANNEL_LIST);
			#endif
			bRedrawChList = MM_TRUE;
        }
        
        if(MM_TRUE == bRedrawChList)
        {
            bRedrawChList = MM_FALSE;
            stListChannelType.bUpdatePage = MM_TRUE;
            stListChannelItems.bUpdatePage = MM_TRUE;
        }
        bRefresh |= UCTRF_ListOnDraw(&stListChannelItems);
        bRefresh |= UCTRF_ListOnDraw(&stListChannelType);
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedrawInit, UICOMMON_TITLE_AREA_Y); 
        bRedrawInit = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        
        iKey = uif_ReadKey (u32WaitTime);
        u32WaitTime = 2000;
        
        switch ( iKey )
        {
            case DUMMY_KEY_SELECT:
                if(MM_TRUE == uiv_bSelectChnList)
                {
                    pstCurSelService = m_GetUIPrg(stListChannelItems.iSelect);
                    if(pstBoxInfo->u32VidTransInfo != pstCurSelService->stPrgTransInfo.u32TransInfo || pstBoxInfo->u16VideoServiceID != pstCurSelService->u16ServiceID)
                    {                   
                        u32WaitTime = 300;                    
                        u32PlayTime = MLMF_SYS_GetMS() + 300;
                    }
                    else
                    {
                        bExit = MM_TRUE;
                        iRetKey = DUMMY_KEY_EXITALL;
                    }
                    
                    if(u32ChnType != pstBoxInfo->ucBit.u32PrgListType)
                    {
                        DBSF_ListSetPrgListType(u32ChnType);
                        pstBoxInfo->ucBit.u32PrgListType = u32ChnType;
                        bNeedSaveBox = MM_TRUE;
                    }
                }
                break;
                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
                bExit = MM_TRUE;
                if(DUMMY_KEY_EXIT == iKey)
                {
                    iRetKey = DUMMY_KEY_EXITALL;
                }
                else
                {
                    iRetKey = DUMMY_KEY_EXIT;
                }
                break;
            
            case DUMMY_KEY_MUTE:
                //TestMntBATUpdate();
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_PRGLISTUPDATED:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGITEMUPDATED:
                stListChannelItems.bUpdateItem = MM_TRUE;
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_GREEN:
            case DUMMY_KEY_YELLOW_SUBSCRIBE:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                if(iKey == DUMMY_KEY_GREEN)
                {
                    iKey = DUMMY_KEY_PGUP;
                }
                else if(iKey == DUMMY_KEY_YELLOW_SUBSCRIBE)
                {
                    iKey = DUMMY_KEY_PGDN;
                }
                
                if(MM_TRUE == uiv_bSelectChnList)
                {
                    UCTRF_ListGetKey(&stListChannelItems, iKey);
                    u32PlayTime = 0xffffffff;
                }
                else 
                {
                    UCTRF_ListGetKey(&stListChannelType, iKey);
                    if(MM_UI_CHNLIST_ALLCHANNLE == stListChannelType.iSelect)
                    {
                        u32ChnType = m_ChannelList;
                    }
                    else if(MM_UI_CHNLIST_HDCHANNLE == stListChannelType.iSelect)
                    {
                        u32ChnType = m_HD_Channel;
                    }
                    else
                    {
                        s32Index = (stListChannelType.iSelect - MM_UI_CHNLIST_BATCHANNLE);
                        if(MM_NULL != pstUIGenreList->pstGenreHead&&s32Index < pstUIGenreList->iGenreNodeNum)
                        {
                            u32ChnType = pstUIGenreList->pstGenreHead[s32Index].u16BouquetID;
                        }
                    }
                    
                    MLMF_Print("u32ChnType = %x\n",u32ChnType);                    
                    uif_ChnListListInit(&stListChannelItems,u32ChnType);
                }
                break;

            case DUMMY_KEY_BLUE_EDIT:
                WDCtrF_PutWindow(uif_Subscribe, 0);
				iRetKey = DUMMY_KEY_ADDWINDOW;
				bExit = MM_TRUE;
                break;

            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                if(MM_TRUE == uiv_bSelectChnList)
                {
                    uiv_bSelectChnList = MM_FALSE;
                }
                else
                { 
                    if(stListChannelItems.iNoOfItems <= 0)
                    {
                        break;
                    }
                    uiv_bSelectChnList = MM_TRUE;
                    u32PlayTime = 0xffffffff;
                }
                stListChannelItems.bUpdateItem = MM_TRUE;
                stListChannelType.bUpdateItem = MM_TRUE;
                break;

            case -1:
                bRefresh |= uif_AlarmMsgBoxes(CHANNEL_PROGRAMLIST_VIDEOAREA_X+(CHANNEL_PROGRAMLIST_VIDEOAREA_WIDTH-CHANNEL_PROGRAMLIST_MSGBAR_WIDTH)/2, CHANNEL_PROGRAMLIST_VIDEOAREA_Y+(CHANNEL_PROGRAMLIST_VIDEOAREA_HEIGHT-CHANNEL_PROGRAMLIST_MSGBAR_HEIGHT)/2, CHANNEL_PROGRAMLIST_MSGBAR_WIDTH, CHANNEL_PROGRAMLIST_MSGBAR_HEIGHT);
                if(MM_TRUE == uiv_bSelectChnList)
                {
                    if(UCTRF_SliderOnDraw())
                    {
                        bRefresh = MM_TRUE;
                        u32WaitTime = 30;
                    }
                }
                
                if (MLMF_SYS_GetMS() >= u32PlayTime)
                {
                    MLUI_DEBUG("---> Play");
                    u32PlayTime = 0xffffffff;
                    pstServiceInfo = m_GetUIPrg(stListChannelItems.iSelect);
                    bRefresh |= uif_ChnListPlayPrg(pstServiceInfo);
                    bRefresh |= uif_ChnListListInfoDrawProgramName(pstServiceInfo);
                }
                break;

            default: 
                if(uif_ShowMsgList(CHANNEL_PROGRAMLIST_VIDEOAREA_X+(CHANNEL_PROGRAMLIST_VIDEOAREA_WIDTH-CHANNEL_PROGRAMLIST_MSGBAR_WIDTH)/2, CHANNEL_PROGRAMLIST_VIDEOAREA_Y+(CHANNEL_PROGRAMLIST_VIDEOAREA_HEIGHT-CHANNEL_PROGRAMLIST_MSGBAR_HEIGHT)/2, CHANNEL_PROGRAMLIST_MSGBAR_WIDTH, CHANNEL_PROGRAMLIST_MSGBAR_HEIGHT))
                {
                    bRefresh = MM_TRUE;
                }
                                
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    
    if(MM_TRUE == bNeedSaveBox)
    {
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }

    WGUIF_ClsFullScreen();
    if(MM_NULL != uiv_pstPrgEditList)
    {
        uif_ForceFree(uiv_pstPrgEditList);
        uiv_pstPrgEditList = MM_NULL;
    }
    ChndestroyGenreList(pstUIGenreList);
    uif_DestroyUIPrgArray();
    return iRetKey;
}

#define CHN_INFO_X_EXT    (125)
#define CHN_INFO_Y_EXT    (160) 
#define CHNINFO_ITEM_INTERVAL_EXT 58

static MBT_BOOL ChnInfo_ShowSignalStrengthQuality(MBT_BOOL force)
{
	static MBT_S32 prestrength=0;
	static MBT_S32 prequality=0;
	MBT_U32 strength;
	MBT_U32 quality;
	MBT_U32 ber;
	MBT_S32 iTemp;
	MBT_S32 iLen;
	MBT_S32 x;
	MBT_S32 y;
    MBT_CHAR pstInfo[64];
    MBT_S32 s32Yoffset = 0;
    MBT_S32 font_height = 0;
	BITMAPTRUECOLOR *pstFramBmp;

	MLMF_Tuner_GetStatus(0,&strength,&quality,&ber);
	if((prestrength==strength)&&(prequality==quality)&&(MM_FALSE==force))
	{
		return MM_FALSE;
	}
	else
	{
		prestrength=strength;
		prequality=quality;
	}

    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    s32Yoffset = (WGUIF_GetFontHeight() - BMPF_GetBMPHeight(m_ui_Signer_progressbar_white_midIfor))/2;

	//strength bar
    iTemp = (strength*(754))/100;
    x = CHN_INFO_X_EXT+140;
    y = CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*6;
    uif_ShareDrawCombinHBar(x,y+s32Yoffset,
                            754,
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_leftIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_midIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_rightIfor));

    iLen = BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_leftIfor)+BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_rightIfor);
    if(iTemp < iLen)
    {
        iTemp = iLen;
    }
    if(strength != 0)
    {
        uif_ShareDrawCombinHBar(x,y+s32Yoffset,
                                iTemp,
                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_leftIfor),
                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_midIfor),
                                BMPF_GetBMP(m_ui_Signer_progressbar_blue_rightIfor));
    }
    x += (754 + 30);
	iLen = sprintf(pstInfo,"%3d%%",strength);
	
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
	WGUIF_DisplayReginTrueColorBmp(0, 0,x,y,70,WGUIF_GetFontHeight(),pstFramBmp, MM_TRUE);
	WGUIF_FNTDrawTxt(x,y, strlen(pstInfo),pstInfo, FONT_FRONT_COLOR_WHITE);

	//quality bar
    iTemp = (quality*(754))/100;
    x = CHN_INFO_X_EXT+140;
    y = CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*7;

    uif_ShareDrawCombinHBar(x,y+s32Yoffset,
                            754,
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_leftIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_midIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_rightIfor));

    iLen = BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_leftIfor)+BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_rightIfor);
    if(iTemp < iLen)
    {
        iTemp = iLen;
    }
    if(quality != 0)
    {
        uif_ShareDrawCombinHBar(x,y+s32Yoffset,
                                iTemp,
                                BMPF_GetBMP(m_ui_Signer_progressbar_green_leftIfor),
                                BMPF_GetBMP(m_ui_Signer_progressbar_green_midIfor),
                                BMPF_GetBMP(m_ui_Signer_progressbar_green_rightIfor));
    }
    x += (754 + 30);
	iLen = sprintf(pstInfo,"%3d%%",quality);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
	WGUIF_DisplayReginTrueColorBmp(0, 0,x,y,70,WGUIF_GetFontHeight(),pstFramBmp, MM_TRUE);
	WGUIF_FNTDrawTxt(x,y, strlen(pstInfo),pstInfo, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
    
	return MM_TRUE;
}


static MBT_VOID ChnInfo_DrawProgramIntroduction(UI_PRG *pstProgInfo) 
{
    MBT_CHAR* pstrInfo[2][11] =
	{
		{
            "Video PID:",
            "Audio PID:",
            "Frequency:",
            "Modulation:",
            "PCR PID:",
            "Symbol Rate:",
			"TSID:",
            "Service ID:",
            "Strength",
            "Quality",
            "EXIT",
		},
		{
            "Video PID:",
            "Audio PID:",
            "Frequency:",
            "Modulation:",
            "PCR PID:",
            "Symbol Rate:",
			"TSID:",
            "Service ID:",
            "Strength",
            "Quality",
            "EXIT",
		}
	};
	MBT_CHAR *ptrTitle = NULL;  
    MBT_S32 iStrlen = 0;
	MBT_CHAR buf[48];
	MBT_S32 iLen;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0, s32Xoffset, s32FontStrlen;
    MBT_S32 x = 0;
	MBT_S32 y = 0;
    MBT_U32 u32Frenq, u32Sym;
    MMT_TUNER_QamType_E u32Polar;
    MBT_U16 vpid=0x1eff, apid=0x1eff, pcrpid=0x1eff;
    MBT_S32 i;

    for(i=0;pstProgInfo->stService.NumPids;i++)
    {
        if(vpid != 0x1eff && apid != 0x1eff && pcrpid != 0x1eff)
        {
            break;
        }
	
        switch(pstProgInfo->stService.Pids[i].Type)
        {
            case MM_STREAMTYPE_MP1V:
            case MM_STREAMTYPE_MP2V:
            case MM_STREAMTYPE_MP4V:
            case MM_STREAMTYPE_H264:
            case MM_STREAMTYPE_MPEG4P2:
                vpid = pstProgInfo->stService.Pids[i].Pid;
                break;

            case MM_STREAMTYPE_MP1A:
            case MM_STREAMTYPE_MP2A:
            case MM_STREAMTYPE_MP4A:
            case MM_STREAMTYPE_AC3:
            case MM_STREAMTYPE_AAC:
                apid = pstProgInfo->stService.Pids[i].Pid;
                break;

            case MM_STREAMTYPE_PCR:
                pcrpid = pstProgInfo->stService.Pids[i].Pid;
                break;

            default:
                break;
        }
    }
		
    MLMF_Tuner_CurTrans(0,&u32Frenq, &u32Sym, &u32Polar);

    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

    ptrTitle = pstrInfo[uiv_u8Language][0];//vpid
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d",vpid);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+230, CHN_INFO_Y_EXT, iLen, buf, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][1];//apid
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d",apid);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+230,CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT, iLen, buf, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][2];//frequency
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*2, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d MHz",u32Frenq);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+230,CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*2, iLen, buf, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][3];//qam
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*3, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    switch(u32Polar)
    {
        case MM_TUNER_QAM_16:
            iLen = sprintf(buf,"QAM 16");
            break;

        case MM_TUNER_QAM_32:
            iLen = sprintf(buf,"QAM 32");
            break;

        case MM_TUNER_QAM_64:
            iLen = sprintf(buf,"QAM 64");
            break;
            
        case MM_TUNER_QAM_128:
            iLen = sprintf(buf,"QAM 128");
            break;

        case MM_TUNER_QAM_256:
            iLen = sprintf(buf,"QAM 256");
            break;

        default:
            iLen = sprintf(buf,"N/A");
            break;
    }
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+230,CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*3, iLen, buf, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][4];//pcr
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+685, CHN_INFO_Y_EXT, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d",pcrpid);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+915,CHN_INFO_Y_EXT, iLen, buf, FONT_FRONT_COLOR_WHITE);

    ptrTitle = pstrInfo[uiv_u8Language][5];//symbol rate
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+685, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d Kbit",u32Sym);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+915,CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT, iLen, buf, FONT_FRONT_COLOR_WHITE);

    ptrTitle = pstrInfo[uiv_u8Language][6];//tsid
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+685, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*2, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(buf,"%d",pstProgInfo->stService.u16TsID);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+915, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*2, iLen, buf, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][7];//svrid
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+685, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*3, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
	iLen = sprintf(buf,"%d",pstProgInfo->stService.u16ServiceID);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT+915,CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*3, iLen, buf, FONT_FRONT_COLOR_WHITE);

    ptrTitle = pstrInfo[uiv_u8Language][8];//strength
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*6, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
	
    ptrTitle = pstrInfo[uiv_u8Language][9];//quality
    iStrlen = strlen(ptrTitle);
    WGUIF_FNTDrawTxt(CHN_INFO_X_EXT, CHN_INFO_Y_EXT+CHNINFO_ITEM_INTERVAL_EXT*7, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);
    
	//Exit
    x = 0;
    y = 670;
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(pstrInfo[uiv_u8Language][10]), pstrInfo[uiv_u8Language][10])))/2;

	x = x + s32Xoffset;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(pstrInfo[uiv_u8Language][10]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, pstrInfo[uiv_u8Language][10], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_U8 ChnInfo_DrawPanelExt( MBT_VOID )
{
    MBT_CHAR *ptrTitle;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Channel Info",
        },
        {
            "Channel Info",
        }
    };

    ptrTitle = infostr[uiv_u8Language][0];
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);
	return 0;
}

MBT_S32 uif_ChnInfoExt(MBT_S32 iPara)
{
	MBT_S32 iKey;
	MBT_S32 iRetKey=DUMMY_KEY_EXIT;
	MBT_BOOL bExit = MM_FALSE;
	MBT_BOOL bRefresh = MM_TRUE;
	MBT_BOOL bRedraw = MM_TRUE;
	UI_PRG ProgInfo ;
    
	if(DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
    {
        return iRetKey;
    }
	
	while ( !bExit )  
	{
		if ( bRedraw )
		{
			ChnInfo_DrawPanelExt();
			ChnInfo_DrawProgramIntroduction(&ProgInfo);
			ChnInfo_ShowSignalStrengthQuality(MM_TRUE);
			
			bRefresh = MM_TRUE;
		}
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;	
        bRefresh |= ChnInfo_ShowSignalStrengthQuality(MM_FALSE);
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;							   
        }
        iKey = uif_ReadKey(2000);
        switch ( iKey )
        {
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SELECT:					
            case DUMMY_KEY_INFO:
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    WGUIF_ClsFullScreen();
    return iRetKey;
}

/**************************************结束节目列表************************************/

