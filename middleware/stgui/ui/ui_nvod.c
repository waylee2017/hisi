#include "ui_share.h"

#define NVOD_MAXLIST_ITEM 6
#define NVOD_OLUMNUM 60
#define NVOD_LISTITEM_HEIGHT 32
#define NVOD_LISTITEM_GAP 4
#define NVOD_LISTAREA_HEIGHT 254

#define NVOD_CHANELTITLEAREA_X (P_MENU_LEFT+30)
#define NVOD_CHANELTITLEAREA_Y (P_WORKSPACE_TOP)
#define NVOD_CHANELTITLEAREA_HEIGHT 36

#define NVOD_CHANELLISTAREA_X NVOD_CHANELTITLEAREA_X
#define NVOD_CHANELLISTAREA_Y (NVOD_CHANELTITLEAREA_Y+NVOD_CHANELTITLEAREA_HEIGHT+9)
#define NVOD_CHANELLISTAREA_WIDTH 700

#define NVOD_TIMELISTAREA_X (NVOD_CHANELTITLEAREA_X + NVOD_CHANELLISTAREA_WIDTH + 9)
#define NVOD_TIMELISTAREA_Y NVOD_CHANELLISTAREA_Y
#define NVOD_TIMELISTAREA_WIDTH 500


#define NVOD_BRIEFCONAREA_X (NVOD_CHANELTITLEAREA_X+NVOD_VIDEOAREA_WIDTH)
#define NVOD_BRIEFCONAREA_Y (NVOD_CHANELLISTAREA_Y+NVOD_LISTAREA_HEIGHT+9)
#define NVOD_BRIEFCONAREA_WIDTH (NVOD_CHANELLISTAREA_WIDTH + NVOD_TIMELISTAREA_WIDTH + 18 - NVOD_VIDEOAREA_WIDTH)
#define NVOD_BRIEFCONAREA_HEIGHT (P_WORKSPACE_HEIGHT - NVOD_LISTAREA_HEIGHT - NVOD_CHANELTITLEAREA_HEIGHT - 138)

#define NVOD_EVENT_TIME_AREA_X (NVOD_EVENT_LEN_AREA_X+300)

#define NVOD_EVENT_LEN_AREA_X (NVOD_CHANELTITLEAREA_X+NVOD_VIDEOAREA_WIDTH)
#define NVOD_EVENT_LEN_AREA_Y (NVOD_BRIEFCONAREA_Y+NVOD_BRIEFCONAREA_HEIGHT+2)
#define NVOD_EVENT_LEN_AREA_WIDTH NVOD_BRIEFCONAREA_WIDTH
#define NVOD_EVENT_LEN_AREA_HEIGHT 34

#define NVOD_EVENT_PLAYED_AREA_X (NVOD_CHANELTITLEAREA_X+NVOD_VIDEOAREA_WIDTH)
#define NVOD_EVENT_PLAYED_AREA_Y (NVOD_EVENT_LEN_AREA_Y+NVOD_EVENT_LEN_AREA_HEIGHT+2)
#define NVOD_EVENT_PLAYED_AREA_WIDTH NVOD_BRIEFCONAREA_WIDTH
#define NVOD_EVENT_PLAYED_AREA_HEIGHT 34

#define NVOD_EVENT_REMAIN_AREA_X (NVOD_CHANELTITLEAREA_X+NVOD_VIDEOAREA_WIDTH)
#define NVOD_EVENT_REMAIN_AREA_Y (NVOD_EVENT_PLAYED_AREA_Y+NVOD_EVENT_PLAYED_AREA_HEIGHT+2)
#define NVOD_EVENT_REMAIN_AREA_WIDTH NVOD_BRIEFCONAREA_WIDTH
#define NVOD_EVENT_REMAIN_AREA_HEIGHT 34

#define NVOD_VIDEOAREA_X NVOD_CHANELTITLEAREA_X
#define NVOD_VIDEOAREA_Y NVOD_BRIEFCONAREA_Y
#define NVOD_VIDEOAREA_HEIGHT (NVOD_BRIEFCONAREA_HEIGHT+2+NVOD_EVENT_LEN_AREA_HEIGHT+NVOD_EVENT_PLAYED_AREA_HEIGHT+2+NVOD_EVENT_REMAIN_AREA_HEIGHT)
#define NVOD_VIDEOAREA_WIDTH (NVOD_VIDEOAREA_HEIGHT*16/9)

#define NVOD_TV_MSGBAR_WIDTH				(NVOD_VIDEOAREA_WIDTH - 20)//160*1.78
#define NVOD_TV_MSGBAR_HEIGHT			(NVOD_VIDEOAREA_HEIGHT/2)//120

#define NVOD_PROCESSAREA_X (P_MENU_LEFT+151)
#define NVOD_PROCESSAREA_Y (P_WORKSPACE_TOP+188)
#define NVOD_PROCESSAREA_WIDTH 800
#define NVOD_PROCESSAREA_HEIGHT 188

#define NVOD_PROCESSBAR_WIDTH  665
#define NVOD_PROCESSBAR_HEIGHT  44
#define NVOD_PROCESSBAR_XOFF  60
#define NVOD_PROCESSBAR_YOFF  60

enum{
    m_nvodEventList,
    m_nvodTimeList,
};

static MBT_U8 uiv_u8NvdSelectedList = m_nvodEventList;
static MBT_S16 uiv_s16CurRefEventID = dbsm_InvalidID;
static EPG_TIMER_M *uiv_stEpgNvodTimerList = MM_NULL;
static MBT_U16 *uiv_pu16RefEventIdList = MM_NULL;
static MBT_U16 *uiv_pu16TimeShiftEventIdList = MM_NULL;
static EPG_TIMER_M uiv_PlayBookedEvent;

/*
返回-1为已过
返回0为正在播放
返回1为还未到
*/
static MBT_S32 uif_IsNVODEventPassed(UI_TSHIFT_EVENT  *me_Eventnode,TIMER_M stTempTime)
{
	UI_TSHIFT_EVENT *ptemp = me_Eventnode;
	MBT_S8 	month ;
	MBT_S8 	Date;
	MBT_S8 	hour;
	MBT_S8 	minute;
	MBT_S32 year  ;
	MBT_U8 uDurationHour;
	MBT_U8 uDurationMunite;
	TIMER_M stTime;
	if(MM_NULL == ptemp)
	{
		return 0;
	}
	DBSF_TdtTime2SystemTime(ptemp->uStartTime, &stTime);
	uDurationHour = m_BcdToHex(ptemp->uDutationTime[0]);
	uDurationMunite = m_BcdToHex(ptemp->uDutationTime[1]);
	month = stTime.month;
	Date = stTime.date;
	hour= stTime.hour;
	minute = stTime.minute;
	year = stTime.year + 1900 ;
	minute += uDurationMunite;
	if(minute >= 60)
	{
		minute -= 60;
		hour++;
	}

	hour += uDurationHour;
	if(hour >= 24)
	{
		hour -= 24;
		Date++;
		switch( month )
		{
			case 1:  
			case 3:  
			case 5: 
			case 7:
			case 8: 
			case 10:
			case 12:	 
				if( Date > 31 ) 
				{
				Date -= 31;
				month ++;
				}
				break ;
				
			case 2 :
				if( year%400==0 || (year%100 != 0 && year %4==0) )
				{
				if( Date > 29 ) 
				{
				Date -= 29;
				month ++;
				}
				}
				else
				{
				if( Date > 28 ) 
				{
				Date -= 28;
				month ++;
				}
				}
				break ;
				
			case 4: 
			case 6:  
			case 9:  
			case 11:
				if( Date > 30 ) 
				{
				Date -= 30;
				month ++;
				}
				break ;
				
			default: 
				break;
		}

		if(month>12)
		{
			month -= 12;
			year ++;
		}
	}


	year -= 1900;

	if(year < stTempTime.year)
	{
		return -1;
	}
	else   if(year == stTempTime.year)
	{
		if(month < stTempTime.month)
		{
			return -1;
		}
		else  if(month == stTempTime.month)
		{
			MBT_U32 iEndTime;
			MBT_U32 iCurTime;
			iEndTime = minute+hour*60+Date*1440;
			iCurTime = stTempTime.minute+stTempTime.hour*60+stTempTime.date*1440;
			if(iEndTime<=iCurTime)
			{               
				return -1;
			}
		}
	}

	month = stTime.month;
	Date = stTime.date;
	hour= stTime.hour;
	minute = stTime.minute;
	year = stTime.year ;

	if(year < stTempTime.year)
	{
		return 0;
	}
	else   if(year == stTempTime.year)
	{
		if(month < stTempTime.month)
		{
			return 0;
		}
		else  if(month == stTempTime.month)
		{
			MBT_U32 iEndTime;
			MBT_U32 iCurTime;
			iEndTime = minute+hour*60+Date*1440;
			iCurTime = stTempTime.minute+stTempTime.hour*60+stTempTime.date*1440;
			if(iEndTime<=iCurTime)
			{               
				return 0;
			}
		}
	}

	return 1;
}



MBT_BOOL   NVODEventListReadItem(MBT_S32 iIndex,MBT_CHAR *pItem)
{
    UI_REF_EVENT stEvent ;
    MBT_BOOL bReadSuc = DBSF_NVDGetCertainRefEvent(uiv_pu16RefEventIdList[iIndex], &stEvent);
    if(bReadSuc)
    {
        sprintf(pItem,"%03d",iIndex+1);//undefine		
        strcpy(pItem + NVOD_OLUMNUM,stEvent.event_name);
    }
    return bReadSuc;
}

MBT_BOOL   NVODTimeListReadItem(MBT_S32 iIndex,MBT_CHAR *pItem)
{
    UI_TSHIFT_EVENT  stTempEvent;
    MBT_U32 u32TransInfo;
    TIMER_M stTempTime;
    TIMER_M starttimer;
    TIMER_M sEndtimer;

    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }
    
    if(MM_FALSE == DBSF_NVDGetCertainTShiftEventInfo(uiv_s16CurRefEventID,uiv_pu16TimeShiftEventIdList[iIndex], &stTempEvent))
    {
        return MM_FALSE;
    } 
    

    uif_GetEventStartEndTime(stTempEvent.uStartTime,stTempEvent.uDutationTime,&starttimer, &sEndtimer);
    sprintf((MBT_CHAR*)(pItem), "%02d.%02d %02d:%02d",starttimer.month,starttimer.date,starttimer.hour,starttimer.minute);
    sprintf((MBT_CHAR*)(pItem+NVOD_OLUMNUM), "--   %02d.%02d %02d:%02d",sEndtimer.month,sEndtimer.date,sEndtimer.hour,sEndtimer.minute);

    pItem[2*NVOD_OLUMNUM] = 0;
    if(uiv_stEpgNvodTimerList)
    {
        u32TransInfo = DBSF_NVDGetTShiftPrgTransInfo(stTempEvent.uReferencedServiceID,stTempEvent.u16ServiceID);
        //MLMF_Print("u32TransInfo %x stTempEvent.u16ServiceID %x\n",u32TransInfo,stTempEvent.u16ServiceID);
        for (iIndex=0;iIndex<MAX_EPG_TIMER_NUM;iIndex++)         // 8 timers in total
        { 
            //MLMF_Print("%d dateofWeek %d\n",iIndex,uiv_stEpgNvodTimerList[iIndex].stTimer.dateofWeek);
            if(uiv_stEpgNvodTimerList[iIndex].stTimer.dateofWeek)         
            {
                if ((uiv_stEpgNvodTimerList[iIndex].stTimer.year == starttimer.year )\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.month  == starttimer.month )\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.date  == starttimer.date )\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.hour  == starttimer.hour)\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.minute  == starttimer.minute)\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.uTimerProgramNo == u32TransInfo)\
                    && (uiv_stEpgNvodTimerList[iIndex].stTimer.u16ServiceID== stTempEvent.u16ServiceID))
                {
                    pItem[2*NVOD_OLUMNUM] = CO_SUBSCRIBE;
                    break;
                }
            }
        }
    }

    TMF_GetSysTime(&stTempTime);	
    if(0 == uif_IsNVODEventPassed(&stTempEvent, stTempTime))
    {
        pItem[3*NVOD_OLUMNUM] = CO_PLAYING;
    }
    else
    {
        pItem[3*NVOD_OLUMNUM] = 0;
    }

    return MM_TRUE;
}


static MBT_BOOL NVDEventListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(m_nvodEventList == uiv_u8NvdSelectedList&&MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    }
    else
    {
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_BOOL NVDTimeListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(m_nvodTimeList == uiv_u8NvdSelectedList&&MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    }
    else
    {
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}


static MBT_VOID  uif_NVODEventListInit(LISTITEM *pstList)
{
    MBT_BOOL bUpdate;
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = NVOD_OLUMNUM;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = NVOD_CHANELTITLEAREA_X+2;

    pstList->iRowStart = NVOD_CHANELLISTAREA_Y+4; 
    pstList->iPageMaxItem = NVOD_MAXLIST_ITEM;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = NVOD_LISTITEM_GAP;
    pstList->iWidth  = NVOD_CHANELLISTAREA_WIDTH - 4;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_programedit_title_midIfor);
    pstList->iFontHeight = SMALL_GWFONT_HEIGHT;
    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 2;
    pstList->pNoItemInfo = "No event!";
    pstList->iColPosition[0] = pstList->iColStart + 5;  
    pstList->iColPosition[1] = pstList->iColPosition[0] + 50;  
	pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];	
	pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];	
    pstList->ListReadFunction = NVODEventListReadItem;
    pstList->ListDrawBar = NVDEventListDraw;
    pstList->cHavesScrollBar = 1;

    pstList->iSelect = 0;
    pstList->iNoOfItems = DBSF_NVDGetEventIDListFromCertainRefPrg(uiv_pu16RefEventIdList,&bUpdate);
}

static MBT_VOID  Menu_NVODTimeListInit(LISTITEM *pstList)
{
    MBT_BOOL bUpdate;
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = NVOD_OLUMNUM;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = NVOD_TIMELISTAREA_X+2;

    pstList->iRowStart = NVOD_TIMELISTAREA_Y+4; 
    pstList->iPageMaxItem = NVOD_MAXLIST_ITEM;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = NVOD_LISTITEM_GAP;
    pstList->iWidth  = NVOD_TIMELISTAREA_WIDTH - 4;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_programedit_title_midIfor);
    pstList->iFontHeight = SMALL_GWFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->iColumns = 4;
    pstList->pNoItemInfo = "No timeshift!";
    pstList->iColPosition[0] = pstList->iColStart + 4;  
    pstList->iColPosition[1] = pstList->iColPosition[0] + 120;  
    pstList->iColPosition[2] = pstList->iColPosition[1] + 200;  
    pstList->iColPosition[3] = pstList->iColPosition[2] + 100;  
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];  
    pstList->iColWidth[2] = pstList->iColPosition[3]-pstList->iColPosition[2];  
    pstList->iColWidth[3] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[3];  

    pstList->ListReadFunction = NVODTimeListReadItem;
    pstList->ListDrawBar =  NVDTimeListDraw;
    pstList->cHavesScrollBar = 1;

    pstList->iSelect = 0;
    pstList->iNoOfItems = DBSF_NVDGetTShiftEventNum(uiv_s16CurRefEventID,uiv_pu16TimeShiftEventIdList,&bUpdate);
}


static MBT_BOOL NVOD_DisplayHelpInfo(MBT_S32  iCursor)
{
    MBT_CHAR* phelpinfo[2][5] =
    {
        {
            "Reminder",
            "Schedule",
            "watch",
            "Exit",
            "Change List"
        },
        {
            "Reminder",
            "Schedule",
            "watch",
            "Exit",
            "Change List"
        }
    };
    
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR *pstInfo;

    MBT_S32 x;
    MBT_S32 y;
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    
    x = P_HELP_TXTSTARTX;
    y = P_HELPBAR_TOP+(P_HELPBAR_HEIGHT- WGUIF_GetFontHeight()) / 2;
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, pstFramBmp->bWidth, WGUIF_GetFontHeight()+4, pstFramBmp, MM_FALSE);

    //写翻页    
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    x += pstFramBmp->bWidth;
    x += WGUIF_FNTDrawTxt(x+20,y,strlen(phelpinfo[uiv_u8Language][4]),phelpinfo[uiv_u8Language][4],FONT_FRONT_COLOR_WHITE);

    //EXIT:EXIT
    x += 200;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    x += pstFramBmp->bWidth;
    x += WGUIF_FNTDrawTxt(x+20,y,strlen(phelpinfo[uiv_u8Language][3]),phelpinfo[uiv_u8Language][3],FONT_FRONT_COLOR_WHITE);


    x += 200;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    x += pstFramBmp->bWidth;
    x += WGUIF_FNTDrawTxt(x+20,y,strlen(phelpinfo[uiv_u8Language][1]),phelpinfo[uiv_u8Language][1],FONT_FRONT_COLOR_WHITE);


    if(1 == iCursor)
    {
        ////写红键
        //ok:Reminder
        x += 200;
        pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
        WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
        x += pstFramBmp->bWidth;
        pstInfo = phelpinfo[uiv_u8Language][0];
        x += WGUIF_FNTDrawTxt(x + 20,  y, strlen(pstInfo), pstInfo, FONT_FRONT_COLOR_WHITE);
    }

    return MM_TRUE;
}



static MBT_BOOL uif_NVODPanel(MBT_VOID)
{
    MBT_S32 iStrlen;
    MBT_S32 iLen;
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 iWidth;
    MBT_CHAR* infostr[2][6] = 
    {
        {
            "NVOD",
            "CH List",
            "Channel List",
            "Brief",
            "Program Type",
            "Play Time List",
        },
        {
            "NVOD",
            "CH List",
            "Channel List",
            "Brief",
            "Program Type",
            "Play Time List",
        }
    };
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], MM_NULL, MM_TRUE);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);

    /*节目列表背景区域*/
    x = NVOD_CHANELTITLEAREA_X;
    y = NVOD_CHANELTITLEAREA_Y;
    iWidth = NVOD_CHANELLISTAREA_WIDTH;
    uif_ShareDrawCombinHBar(x,y,iWidth, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    iStrlen = strlen(infostr[uiv_u8Language][2]);
    iLen = WGUIF_FNTGetTxtWidth(iStrlen, infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x+(iWidth-iLen)/2, y+ (NVOD_CHANELTITLEAREA_HEIGHT - WGUIF_GetFontHeight()) / 2, iStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);        

    /*播放列表背景区域*/
    x = NVOD_TIMELISTAREA_X;
    y = NVOD_CHANELTITLEAREA_Y;
    iWidth = NVOD_TIMELISTAREA_WIDTH;
    uif_ShareDrawCombinHBar(x,y,iWidth, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    iStrlen = strlen(infostr[uiv_u8Language][5]);
    iLen = WGUIF_FNTGetTxtWidth(iStrlen, infostr[uiv_u8Language][5]);
    WGUIF_FNTDrawTxt(x+(iWidth-iLen)/2, y+ (NVOD_CHANELTITLEAREA_HEIGHT - WGUIF_GetFontHeight()) / 2, iStrlen, infostr[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);        


    /*extend event 描述背景区域*/
    x = NVOD_BRIEFCONAREA_X;
    y = NVOD_BRIEFCONAREA_Y;
    iWidth = NVOD_BRIEFCONAREA_WIDTH;
    WGUIF_DrawFilledRectangle(x,y,iWidth,1, ORANGE_COLOR);

    /*片长*/
    x = NVOD_EVENT_LEN_AREA_X;
    y = NVOD_EVENT_LEN_AREA_Y;
    iWidth = NVOD_EVENT_LEN_AREA_WIDTH;
    WGUIF_DrawFilledRectangle(x,y,iWidth,1, ORANGE_COLOR);

    /*已经播放*/
    x = NVOD_EVENT_PLAYED_AREA_X;
    y = NVOD_EVENT_PLAYED_AREA_Y;
    iWidth = NVOD_EVENT_PLAYED_AREA_WIDTH;
    WGUIF_DrawFilledRectangle(x,y,iWidth,1, ORANGE_COLOR);

    /*剩余时间*/
    x = NVOD_EVENT_REMAIN_AREA_X;
    y = NVOD_EVENT_REMAIN_AREA_Y;
    iWidth = NVOD_EVENT_REMAIN_AREA_WIDTH;
    WGUIF_DrawFilledRectangle(x,y,iWidth,1, ORANGE_COLOR);


    x = NVOD_VIDEOAREA_X;
    y = NVOD_VIDEOAREA_Y;
    iWidth = NVOD_VIDEOAREA_WIDTH;
    WGUIF_ClsScreen(x,y,iWidth,NVOD_VIDEOAREA_HEIGHT);
    MLMF_AV_SetVideoWindow(x,y,iWidth,NVOD_VIDEOAREA_HEIGHT);
    return MM_TRUE;
}


static MBT_BOOL NVOD_DispCurEventBrief(MBT_S32 iTShiftEventNum,MBT_S32 *ptrCharNum)
{
    MBT_CHAR buf[MAX_EVENT_DESCRIPTOR_LENGTH+1] = { 0 };
    MBT_CHAR *ptrInfo;
    MBT_S32 s32PrgTimeLen = 0;
    MBT_S32 s32PrgPlayedTime = 0;
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 iLen;
    MBT_CHAR* infostr[2][9] = 
    {
        {
            "No Brief!",
            "Program Length:",
            "Played:",
            "Remain:",
            "Current program start time",
            "Next moment start time",
            "Minutes",
            "Second",
            "INR"
        } ,

        {
            "No Brief!",
            "Program Length:",
            "Played:",
            "Remain:",
            "Current program start time",
            "Next moment start time",
            "Minutes",
            "Second",
            "INR"
        }        
    };

    UI_REF_EVENT  stCurRefEvent;
    MBT_BOOL bRet = DBSF_NVDGetCertainRefEvent(uiv_s16CurRefEventID,&stCurRefEvent);
    x = NVOD_BRIEFCONAREA_X+10;
    y = NVOD_BRIEFCONAREA_Y+5;
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,NVOD_BRIEFCONAREA_WIDTH-20, NVOD_BRIEFCONAREA_HEIGHT-10, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    if (bRet )
    {
        UI_TSHIFT_EVENT stTShiftEvent;
        TIMER_M stTempTime;
        TIMER_M stEndTime;
        
        if(0 != stCurRefEvent.item_description[0])
        {
            if(0 == *ptrCharNum)
            {
                iLen = sprintf(buf, "%s", stCurRefEvent.item_description);
                WGUIF_FNTAdjustTxtLine(buf,iLen, NVOD_BRIEFCONAREA_WIDTH-20, 4);
                ptrInfo = buf;
                *ptrCharNum = strlen(ptrInfo);
                if(*ptrCharNum == iLen)
                {
                    *ptrCharNum = 0;
                }
            }
            else
            {
                iLen = sprintf(buf, "%s", stCurRefEvent.item_description+*ptrCharNum);
                WGUIF_FNTAdjustTxtLine(buf,iLen, NVOD_BRIEFCONAREA_WIDTH-20, 4);
                ptrInfo = buf;
                *ptrCharNum = 0;
            }
        }
        else
        {
            ptrInfo = infostr[uiv_u8Language][0];
        }
        
        WGUIF_DrawLimitWidthTxt(x+10, y, strlen(ptrInfo), ptrInfo, FONT_FRONT_COLOR_WHITE, NVOD_BRIEFCONAREA_WIDTH-20, 23);

        if(iTShiftEventNum > 0)
        {
            MBT_U8 u8TDTTime[5];
            TIMER_M stCurSysTime;
            TIMER_M stEventStartTime;
            
            DBSF_NVDGetCertainTShiftEventInfo(uiv_s16CurRefEventID,uiv_pu16TimeShiftEventIdList[0],&stTShiftEvent);
            DBSF_MntGetTdtTime(u8TDTTime);
            DBSF_TdtTime2SystemTime(u8TDTTime,&stCurSysTime);
            DBSF_TdtTime2SystemTime(stTShiftEvent.uStartTime,&stEventStartTime);

            
            s32PrgTimeLen = ((m_BcdToHex(stTShiftEvent.uDutationTime[0])) & 0xFF)*60 + ((m_BcdToHex(stTShiftEvent.uDutationTime[1])) & 0xFF);
            s32PrgPlayedTime = (stCurSysTime.u32UtcTimeSecond - stEventStartTime.u32UtcTimeSecond)/60;

            uif_GetEventStartEndTime(stTShiftEvent.uStartTime,stTShiftEvent.uDutationTime, &stTempTime, &stEndTime);
        }
        else
        {
            memset(&stTShiftEvent,0,sizeof(stTShiftEvent));
        }


        x = NVOD_EVENT_LEN_AREA_X+10;
        y = NVOD_EVENT_LEN_AREA_Y+1;
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,NVOD_EVENT_LEN_AREA_WIDTH-20, NVOD_EVENT_LEN_AREA_HEIGHT-2, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
        y = NVOD_EVENT_LEN_AREA_Y + (NVOD_EVENT_LEN_AREA_HEIGHT - WGUIF_GetFontHeight())/2;
        WGUIF_FNTDrawTxt(x + 10, y,strlen(infostr[uiv_u8Language][1]),infostr[uiv_u8Language][1],FONT_FRONT_COLOR_WHITE);
        iLen = sprintf(buf,"%d %s",s32PrgTimeLen,infostr[uiv_u8Language][6]);
        WGUIF_FNTDrawTxt(NVOD_EVENT_TIME_AREA_X, y,iLen,buf,FONT_FRONT_COLOR_WHITE);
        

        x = NVOD_EVENT_PLAYED_AREA_X+10;
        y = NVOD_EVENT_PLAYED_AREA_Y+1;
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,NVOD_EVENT_PLAYED_AREA_WIDTH-20, NVOD_EVENT_PLAYED_AREA_HEIGHT-2, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
        y = NVOD_EVENT_PLAYED_AREA_Y + (NVOD_EVENT_PLAYED_AREA_HEIGHT - WGUIF_GetFontHeight())/2;
        WGUIF_FNTDrawTxt(x + 10, y,strlen(infostr[uiv_u8Language][2]),infostr[uiv_u8Language][2],FONT_FRONT_COLOR_WHITE);
        iLen = sprintf(buf,"%d %s",s32PrgPlayedTime,infostr[uiv_u8Language][6]);
        WGUIF_FNTDrawTxt(NVOD_EVENT_TIME_AREA_X, y,iLen,buf,FONT_FRONT_COLOR_WHITE);

        x = NVOD_EVENT_REMAIN_AREA_X+10;
        y = NVOD_EVENT_REMAIN_AREA_Y+1;
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,NVOD_EVENT_REMAIN_AREA_WIDTH-20, NVOD_EVENT_REMAIN_AREA_HEIGHT-2, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
        y = NVOD_EVENT_REMAIN_AREA_Y + (NVOD_EVENT_REMAIN_AREA_HEIGHT- WGUIF_GetFontHeight())/2;
        WGUIF_FNTDrawTxt(x + 10, y,strlen(infostr[uiv_u8Language][3]),infostr[uiv_u8Language][3],FONT_FRONT_COLOR_WHITE);
        iLen = sprintf(buf,"%d %s",s32PrgTimeLen-s32PrgPlayedTime,infostr[uiv_u8Language][6]);
        WGUIF_FNTDrawTxt(NVOD_EVENT_TIME_AREA_X, y,iLen,buf,FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        WGUIF_DrawLimitWidthTxt(x, y, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE, NVOD_BRIEFCONAREA_WIDTH-20, 20);
    }

    return MM_TRUE;
}






/*
*返回0要预订的节目正在播放
*返回1要预订的节目已经找到时间
*返回-1要预订的节目未找到任何时间
*/
static MBT_S32 uif_GetSelectNvodTimer(EPG_TIMER_M *pSelectTimer,TIMER_M stCurTime,MBT_U16 u16EventID)
{
    UI_TSHIFT_EVENT sTimeshiftEvent; 
    UI_REF_EVENT  stCurRefEvent;
    TIMER_M stTempTime;
    MBT_S32 iRet = -1;
    
    if(MM_NULL == pSelectTimer)
    {
        return iRet;
    }
    
    if(DBSF_NVDGetCertainTShiftEventInfo(uiv_s16CurRefEventID,u16EventID, &sTimeshiftEvent))
    {
        if(0 == uif_IsNVODEventPassed(&sTimeshiftEvent,stCurTime))
        {
            iRet = 0;
            pSelectTimer->stTimer.uTimerProgramNo = DBSF_NVDGetTShiftPrgTransInfo(sTimeshiftEvent.uReferencedServiceID,sTimeshiftEvent.u16ServiceID);
            pSelectTimer->stTimer.u16ServiceID = sTimeshiftEvent.u16ServiceID;
            if(0xffffffff != pSelectTimer->stTimer.uTimerProgramNo)
            {
                DBSF_TdtTime2SystemTime(sTimeshiftEvent.uStartTime, &stTempTime);
                pSelectTimer->stTimer.year = stTempTime.year;
                pSelectTimer->stTimer.month= stTempTime.month;
                pSelectTimer->stTimer.date= stTempTime.date;
                pSelectTimer->stTimer.hour= stTempTime.hour;
                pSelectTimer->stTimer.minute= stTempTime.minute;
                pSelectTimer->stTimer.Weekday= stTempTime.Weekday;
                pSelectTimer->stTimer.durationhour= m_BcdToHex(sTimeshiftEvent.uDutationTime[0]);
                pSelectTimer->stTimer.durationMinute= m_BcdToHex(sTimeshiftEvent.uDutationTime[1]);
            }  
            if(DBSF_NVDGetCertainRefEvent(uiv_s16CurRefEventID,&stCurRefEvent))
            {
                sprintf(pSelectTimer->acEventName,"%s",stCurRefEvent.event_name);
                sprintf(pSelectTimer->acDescriptor,"%s",stCurRefEvent.item_description);
            }
            else
            {
                sprintf(pSelectTimer->acEventName,"%s","refEvent");
                pSelectTimer->acDescriptor[0] = 0;
            }
        }
        else
        {
            DBSF_TdtTime2SystemTime(sTimeshiftEvent.uStartTime, &stTempTime);
            pSelectTimer->stTimer.year = stTempTime.year;
            pSelectTimer->stTimer.month= stTempTime.month;
            pSelectTimer->stTimer.date= stTempTime.date;
            pSelectTimer->stTimer.hour= stTempTime.hour;
            pSelectTimer->stTimer.minute= stTempTime.minute;
            pSelectTimer->stTimer.Weekday= stTempTime.Weekday;
            pSelectTimer->stTimer.durationhour= m_BcdToHex(sTimeshiftEvent.uDutationTime[0]);
            pSelectTimer->stTimer.durationMinute= m_BcdToHex(sTimeshiftEvent.uDutationTime[1]);
            pSelectTimer->stTimer.dateofWeek = 8;
            pSelectTimer->stTimer.uTimerProgramNo = DBSF_NVDGetTShiftPrgTransInfo(sTimeshiftEvent.uReferencedServiceID,sTimeshiftEvent.u16ServiceID);
            pSelectTimer->stTimer.u16ServiceID= sTimeshiftEvent.u16ServiceID;
            if(DBSF_NVDGetCertainRefEvent(uiv_s16CurRefEventID,&stCurRefEvent))
            {
                sprintf(pSelectTimer->acEventName,"%s",stCurRefEvent.event_name);
                sprintf(pSelectTimer->acDescriptor,"%s",stCurRefEvent.item_description);
            }
            else
            {
                sprintf(pSelectTimer->acEventName,"%s","refEvent");
                pSelectTimer->acDescriptor[0] = 0;
            }
            iRet = 1;
        }
    }
    else
    {
        iRet = -1;
    }
    return iRet;
}





static MBT_BOOL uif_PlayCertainNVODPrg(MBT_U16 u16EventID)
{
    MBT_BOOL bRefresh = MM_FALSE;
    UI_TSHIFT_EVENT  sTimeshiftEvent; 

    if(DBSF_NVDGetCertainTShiftEventInfo(uiv_s16CurRefEventID,u16EventID, &sTimeshiftEvent))
    {
        MBT_U32 u32TransInfo;
        //MLMF_Print("DBSF_NVDGetCertainTShiftEventInfo sTimeshiftEvent.u16ServiceID = %x sTimeshiftEvent.uReferencedServiceID = %x OK\n",sTimeshiftEvent.u16ServiceID,sTimeshiftEvent.uReferencedServiceID);
        bRefresh |= uif_ResetAlarmMsgFlag();
        u32TransInfo = DBSF_NVDGetTShiftPrgTransInfo(sTimeshiftEvent.uReferencedServiceID,sTimeshiftEvent.u16ServiceID);
        //MLMF_Print("DBSF_NVDGetTShiftPrgTransInfo uif_PlayNewPosPrg \n");
        if(MM_FALSE == uif_PlayNewPosPrg(u32TransInfo,sTimeshiftEvent.u16ServiceID))
        {
            UIF_StopAV();
            DBSF_StopAll();
        }

        MLMF_FP_Display("nvod",4,MM_FALSE);
    }

    return bRefresh;
}


static MBT_VOID uif_SrchNvodProcessNotify(MBT_S32 iProcess,TRANS_INFO stTrans)
{
    UIF_SendKeyToUi(DUMMY_KEY_SRCH_PROCESS);
}



static MBT_BOOL uif_ShowNvodProcessDrawPanel(MBT_VOID)
{
    MBT_CHAR* resultstr[2][1] = 
    { 
        {
            "Searching ...", 
        },
        {
            "Searching ...", 
        }
    };
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 s32Width = pstBmp->bWidth;
    MBT_S32 s32Height = pstBmp->bHeight;
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT - s32Width)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - s32Height)/2) - UI_DLG_OFFSET_Y;

    WGUIF_DisplayReginTrueColorBmp(x, y, 0,0,s32Width,s32Height,pstBmp, MM_TRUE);
    WGUIF_FNTDrawTxt(x+14,y+11, strlen(resultstr[uiv_u8Language][0]), resultstr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    return MM_TRUE;
}

MBT_VOID uif_SrchNvodProcess(MBT_VOID)
{		
    MBT_S32 iRetKey;
    MBT_U32 u32ExpireTime;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    BITMAPTRUECOLOR  Copybitmap;
    MBT_S32 iPercent;
    TRANS_INFO stTPTrans;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 s32Width = pstBmp->bWidth;
    MBT_S32 s32Height = pstBmp->bHeight;
    MBT_S32 x = P_MENU_LEFT+(OSD_REGINMAXWIDHT - s32Width)/2;
    MBT_S32 y = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - s32Height)/2) - UI_DLG_OFFSET_Y;
    MBT_S32 s32ProcessWidth = s32Width - NVOD_PROCESSBAR_XOFF - 10;
    MBT_S32 s32ProcessHeight = 40;
    MBT_S32 s32TransNum;

    s32TransNum = DBSF_NVDStartSrch(uif_SrchNvodProcessNotify);
    if(1 >= s32TransNum)
    {
        /*只需要搜索一个频点，不需要进度条*/
        return;
    }

    u32ExpireTime = MLMF_SYS_GetMS() + 10000*s32TransNum;
    Copybitmap.bWidth = s32Width;
    Copybitmap.bHeight = s32Height;	
    WGUIF_GetRectangleImage(x,y, &Copybitmap);

    while ( !bExit )
    {
        if(bRedraw)
        {
            bRefresh |= uif_ShowNvodProcessDrawPanel();
            bRedraw = MM_FALSE;
        }

        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iRetKey = uif_ReadKey( 1000);

        switch ( iRetKey )
        {
            case DUMMY_KEY_POWER:
            case DUMMY_KEY_PLAY:
            case DUMMY_KEY_PRGUPDATE:
                bExit = MM_TRUE;
                UIF_SendKeyToUi(iRetKey);
                break;
                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                bExit = MM_TRUE;
                break;
            case -1:    
            case DUMMY_KEY_SRCH_PROCESS:	
                if(MLMF_SYS_GetMS() >= u32ExpireTime)
                {
                    bExit = MM_TRUE;
                    MLMF_Print("MLMF_SYS_GetMS() %x,u32ExpireTime %x\n",MLMF_SYS_GetMS(),u32ExpireTime);
                    break;
                }
                
                iPercent = DBSF_NVDGetTaskProcess(&stTPTrans);
                if(iPercent >= 100)
                {
                    iPercent = 100;
                    //MLMF_Print("iPercent = 100\n");
                    bExit = MM_TRUE;
                }
                //MLMF_Print("iPercent = %d\n",iPercent);
                WGUIF_DrawFilledRectangle(x+NVOD_PROCESSBAR_XOFF, y+(s32Height - s32ProcessHeight)/2, s32ProcessWidth*iPercent/100, s32ProcessHeight, ORANGE_COLOR);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if(0 !=  uif_QuickKey(iRetKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    if(MM_TRUE == WGUIF_PutRectangleImage(x,y, &Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
}

MBT_VOID uif_SetBookedEvent(EPG_TIMER_M *pstPayedEvent)
{
    uiv_PlayBookedEvent = *pstPayedEvent;
}

static MBT_VOID uif_ClrFullScreeNvodPanel(MBT_VOID)
{
    WGUIF_ClsScreen(TIME_START_X,UICOMMON_TITLE_AREA_Y,OSD_REGINMAXWIDHT - TIME_START_X,60);
    WGUIF_ClsScreen(0,OSD_REGINMAXHEIGHT - P_HELPBAR_HEIGHT,OSD_REGINMAXWIDHT,P_HELPBAR_HEIGHT);
}

static MBT_BOOL uif_DrawFullScreeNvodPanel(MBT_VOID)
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 iEndHour;
    MBT_S32 iEndMinute;
    MBT_S32 iLen;
    MBT_S32 iFontHeight;
    MBT_U8 u8TimeCarry;
    MBT_CHAR buf[100];
    MBT_CHAR *ptrInfo[2][2] = 
    {
        {
            "Hide Infomation Bar",
            "Exit"
        },
        {
            "Hide Infomation Bar",
            "Exit"
        }
    };
    BITMAPTRUECOLOR *pstFramBmp;

    iFontHeight = SMALL_GWFONT_HEIGHT;
    
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    x = 0;
    y = pstFramBmp->bHeight - P_HELPBAR_HEIGHT;
    WGUIF_DisplayReginTrueColorBmp(0,0,x,y, pstFramBmp->bWidth,P_HELPBAR_HEIGHT, pstFramBmp, MM_FALSE);
    WGUIF_SetFontHeight(iFontHeight);

    iEndMinute = uiv_PlayBookedEvent.stTimer.minute + uiv_PlayBookedEvent.stTimer.durationMinute;	
    if (iEndMinute >= 60)
    {
        iEndMinute= iEndMinute - 60;
        u8TimeCarry = 1;
    }
    else
    {
        u8TimeCarry = 0;
    }
    iEndHour = uiv_PlayBookedEvent.stTimer.hour + uiv_PlayBookedEvent.stTimer.durationhour;	
    if (iEndHour >= 24)
    {
        iEndHour= iEndHour - 24 ;
    }
    iLen = sprintf(buf,"%02d:%02d-%02d:%02d    <<%s>>",uiv_PlayBookedEvent.stTimer.hour,uiv_PlayBookedEvent.stTimer.minute,iEndHour,iEndMinute,uiv_PlayBookedEvent.acEventName);
    WGUIF_FNTDrawTxt(x + 50, y+(40 - iFontHeight)/2, iLen, buf, FONT_FRONT_COLOR_WHITE);

    //写hide
    y += 36;
    x += 700;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    x += pstFramBmp->bWidth + 10;
    x += WGUIF_FNTDrawTxt(x,  y, strlen(ptrInfo[uiv_u8Language][0]), ptrInfo[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    x += 50;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    x += pstFramBmp->bWidth + 10;
    WGUIF_FNTDrawTxt(x,  y, strlen(ptrInfo[uiv_u8Language][1]), ptrInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    return MM_TRUE;
}

MBT_S32 uif_PlayFullScreenNvod(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXITALL;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = (OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bShowMenu = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_CHAR* infostr[2][1]=
    {
        {
            "Now a NVOD program is playing! Are you sure to exit?"
        },
        {
            "Now a NVOD program is playing! Are you sure to exit?"
        }
    };

    MLMF_AV_SetVideoWindow(0,0,0,0);
    WGUIF_ClsFullScreen();
    bRefresh = MM_TRUE;
    uif_SetMenuFlag(1);
    
    while( !bExit )
    {
        if(bShowMenu)
        {
            if(bRedraw)
            {
                iExitTime = MLMF_SYS_GetMS()+1000*5;
                bRefresh |= uif_DrawFullScreeNvodPanel();
            }
            bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
            bRedraw = MM_FALSE;
        }
        else
        {
            if(bRedraw)
            {
                uif_ClrFullScreeNvodPanel();
                bRedraw = MM_FALSE;
                bRefresh = MM_TRUE;
            }
        }
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey ( 1000);  // wait for 5 secs

        switch( iKey )
        {
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                if (uif_ShareMakeSelectDlg("Information",infostr[uiv_u8Language][0],MM_FALSE))
                {
                    bExit = MM_TRUE;
                    iRetKey = iKey;
                }
                break;

            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iKey);
                break;


            case DUMMY_KEY_VTGMODE_1080i_25HZ:
            case DUMMY_KEY_VTGMODE_1080i_30HZ:
            case DUMMY_KEY_VTGMODE_720p_50HZ:
            case DUMMY_KEY_VTGMODE_720p_60HZ:
            case DUMMY_KEY_VTGMODE_576p_50HZ:
            case DUMMY_KEY_VTGMODE_576i_25HZ:
            case DUMMY_KEY_VTGMODE_480p_60HZ:
            case DUMMY_KEY_VTGMODE_480i_30HZ:
                uif_ShareAutoChangePNTVMode(iKey);
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;

            case DUMMY_KEY_SELECT:
                if(MM_TRUE == bShowMenu)
                {
                    bShowMenu = MM_FALSE;
                }
                else
                {
                    bShowMenu = MM_TRUE;
                }
                bRedraw = MM_TRUE;
                uif_SetMenuFlag(1);
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case -1:	
                bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY,iMsgWidth,iMsgHeight);
                if(bShowMenu)
                {
                    if(MLMF_SYS_GetMS() > iExitTime)
                    {
                        bShowMenu = MM_FALSE;
                        uif_SetMenuFlag(0);
                        bRedraw = MM_TRUE;
                    }
                }

                break;
                
            default:
                if(uif_ShowMsgList(iMsgX,iMsgY,iMsgWidth,iMsgHeight))
                {
                    bRefresh = MM_TRUE;
                }

                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    if (uif_ShareMakeSelectDlg("Information",infostr[uiv_u8Language][0],MM_FALSE))
                    {
                        bExit = MM_TRUE;
                    }
                }
                break;
        }
    }

    uif_SetMenuFlag(1);
    UIF_StopAV();
    return iRetKey;
}

static MBT_BOOL  uif_MallocAllNvodResouse(MBT_VOID)
{
    TIMER_M *pTriggerTimer;
    if(MM_NULL == uiv_stEpgNvodTimerList)
    {
        uiv_stEpgNvodTimerList = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        if(MM_NULL == uiv_stEpgNvodTimerList)
        {
            return MM_FALSE;
        }
    }

    /*begin 更新当前选中的日期*/
    if(MM_NULL == uiv_pu16RefEventIdList)
    {
        uiv_pu16RefEventIdList = uif_ForceMalloc(2*500);/*最多一千个参考事件*/
        if(MM_NULL == uiv_pu16RefEventIdList)
        {
            uif_ForceFree(uiv_stEpgNvodTimerList);
            uiv_stEpgNvodTimerList = MM_NULL;
            return MM_FALSE;
        }
    }
    
    if(MM_NULL == uiv_pu16TimeShiftEventIdList)
    {
        uiv_pu16TimeShiftEventIdList = uif_ForceMalloc(2*1000);/*最多一千个参考事件*/
        if(MM_NULL == uiv_pu16TimeShiftEventIdList)
        {
            uif_ForceFree(uiv_stEpgNvodTimerList);
            uiv_stEpgNvodTimerList = MM_NULL;
            uif_ForceFree(uiv_pu16RefEventIdList);
            uiv_pu16RefEventIdList = MM_NULL;
            return MM_FALSE;
        }
    }

    
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(uiv_stEpgNvodTimerList);
        uiv_stEpgNvodTimerList = MM_NULL;
        uif_ForceFree(uiv_pu16RefEventIdList);
        uiv_pu16RefEventIdList = MM_NULL;
        uif_ForceFree(uiv_pu16TimeShiftEventIdList);
        uiv_pu16TimeShiftEventIdList = MM_NULL;
        return MM_FALSE;
    }

    uif_GetTimerFromFile(uiv_stEpgNvodTimerList,pTriggerTimer);
    uif_ForceFree(pTriggerTimer);
    return MM_TRUE;
}


static MBT_VOID uif_FreeAllNvodResouse(MBT_VOID)
{
    if(uiv_stEpgNvodTimerList)
    {
        uif_ForceFree(uiv_stEpgNvodTimerList);
        uiv_stEpgNvodTimerList = MM_NULL;
    }	

    if(MM_NULL != uiv_pu16RefEventIdList)
    {
        uif_ForceFree(uiv_pu16RefEventIdList);
        uiv_pu16RefEventIdList = MM_NULL;
    }

    if(MM_NULL != uiv_pu16TimeShiftEventIdList)
    {
        uif_ForceFree(uiv_pu16TimeShiftEventIdList);
        uiv_pu16TimeShiftEventIdList = MM_NULL;
    }
}

MBT_S32 uif_VerifyEpgTimerExistance(EPG_TIMER_M *StartEPGInfo,EPG_TIMER_M *tTempEPGTimeSet)
{
    MBT_S32 i;

    if(MM_NULL == StartEPGInfo)
    {
    	return -1;
    }
    
    for (i=0;i<MAX_EPG_TIMER_NUM;i++)         // 8 timers in total
    { 
        if(tTempEPGTimeSet[i].stTimer.dateofWeek)        
        {
            if ((tTempEPGTimeSet[i].stTimer.year == StartEPGInfo->stTimer.year )\
                 && (tTempEPGTimeSet[i].stTimer.month  == StartEPGInfo->stTimer.month )\
                 && (tTempEPGTimeSet[i].stTimer.date  == StartEPGInfo->stTimer.date )\
                 && (tTempEPGTimeSet[i].stTimer.hour  == StartEPGInfo->stTimer.hour )\
                 && (tTempEPGTimeSet[i].stTimer.minute  == StartEPGInfo->stTimer.minute )\
                 && (tTempEPGTimeSet[i].stTimer.uTimerProgramNo == StartEPGInfo->stTimer.uTimerProgramNo)\
                 && (tTempEPGTimeSet[i].stTimer.u16ServiceID== StartEPGInfo->stTimer.u16ServiceID))
            {
                return i;
            }
        }
    }

    return -1;
 }

MBT_VOID uif_SaveEpgChangeOrNo(EPG_TIMER_M * stTempTimerList,MBT_BOOL bForceSave)
{
    MBT_S32 i;
    MBT_CHAR* info[2][1]=
    {
        {
            "Setting changed, do you want to save?"
        },
        {
            "Setting changed, do you want to save?"
        }
    };
    EPG_TIMER_M *pEpgTimer;
    TIMER_M *pTriggerTimer;
    
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

    for(i = 0; i < MAX_EPG_TIMER_NUM; i++)
    {
        if((pEpgTimer[i].stTimer.year != stTempTimerList[i].stTimer.year )\
            ||(pEpgTimer[i].stTimer.month  != stTempTimerList[i].stTimer.month )\
            ||(pEpgTimer[i].stTimer.date  !=stTempTimerList[i].stTimer.date )\
            ||(pEpgTimer[i].stTimer.hour  != stTempTimerList[i].stTimer.hour )\
            ||(pEpgTimer[i].stTimer.minute != stTempTimerList[i].stTimer.minute )\
            ||(pEpgTimer[i].stTimer.uTimerProgramNo!= stTempTimerList[i].stTimer.uTimerProgramNo)\
            ||(pEpgTimer[i].stTimer.u16ServiceID!= stTempTimerList[i].stTimer.u16ServiceID)\
            ||(pEpgTimer[i].stTimer.dateofWeek!= stTempTimerList[i].stTimer.dateofWeek))
        {
            if ( MM_TRUE == bForceSave||uif_ShareMakeSelectDlg("Information",info[uiv_u8Language][0],MM_FALSE) )
            {	
                uif_SetTimer2File(stTempTimerList,pTriggerTimer);
                uif_SetTimer(stTempTimerList,pTriggerTimer);
            }
            break;
        }
    }

    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimer);
}

MBT_S32 uif_FindEpgTimer(EPG_TIMER_M *StartEPGInfo,EPG_TIMER_M *tTempEPGTimeSet)
{
    MBT_S32 i;
    MBT_S32 iResault;
    TIMER_M stTimer;
    if(MM_NULL == StartEPGInfo||MM_NULL == tTempEPGTimeSet)
    {
        return -1;
    }
    
    for (i=0;i<MAX_EPG_TIMER_NUM;i++)         // 8 timers in total
    { 
        if(tTempEPGTimeSet[i].stTimer.dateofWeek)         
        {
            iResault = TMF_CompareThe2Timers(tTempEPGTimeSet[i].stTimer, StartEPGInfo->stTimer);
            switch(iResault)
            {
                case 0:
                    break;
                case -1:
                    stTimer = tTempEPGTimeSet[i].stTimer;
                    if(++stTimer.minute>=60)
                    {
                        stTimer.minute=0;
                        if(++stTimer.hour>=24)
                        {
                            stTimer.hour=0;
                            TMF_TimeAdjustDatePlus(&stTimer);
                        }
                    }
                    iResault = TMF_CompareThe2Timers(stTimer, StartEPGInfo->stTimer);
                    break;
                case 1:
                    stTimer = StartEPGInfo->stTimer;
                    if(++stTimer.minute>=60)
                    {
                        stTimer.minute=0;
                        if(++stTimer.hour>=24)
                        {
                            stTimer.hour=0;
                            TMF_TimeAdjustDatePlus(&stTimer);
                        }
                    }
                    iResault = TMF_CompareThe2Timers(tTempEPGTimeSet[i].stTimer, stTimer);
                    break;
            }

            if ( 0 == iResault)
            {
                return i;
            }
        }
    }
    return -1;
}


static MBT_S32 uif_SubTimeShiftEvent(LISTITEM  *pstTimeList,MBT_BOOL *pBRedraw)
{
    MBT_S32 iRet;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_U16 u16SelectTShiftEventID;
    TIMER_M stTempTime;
    EPG_TIMER_M stSelectTimer;
    EPG_TIMER_M *pstEpgTimer;
    MBT_CHAR str[100] = { 0 };
    MBT_CHAR* infostr[2][1]=
    {
        {
            "Cur book confused with <<%s>> ordered before,Are you sure to book this one?"
        },
        {
            "Cur book confused with <<%s>> ordered before,Are you sure to book this one?"
        }
    };

    *pBRedraw = MM_FALSE;
    
    TMF_GetSysTime(&stTempTime);
    
    u16SelectTShiftEventID = uiv_pu16TimeShiftEventIdList[pstTimeList->iSelect];
    //MLMF_Print("uif_SubTimeShiftEvent u16SelectTShiftEventID = %x\n",u16SelectTShiftEventID);
    iRet = uif_GetSelectNvodTimer(&stSelectTimer, stTempTime,u16SelectTShiftEventID);
    //MLMF_Print("uif_GetSelectNvodTimer iRet = %d uiv_u8NvdSelectedList = %d\n",iRet,uiv_u8NvdSelectedList);
    if ( iRet == 0 )//正在播放的NVOD节目
    {		
        uif_PlayCertainNVODPrg(u16SelectTShiftEventID);
        uif_SetBookedEvent(&stSelectTimer);
        iRetKey = uif_PlayFullScreenNvod(0);
        if(DUMMY_KEY_EXITALL!= iRetKey)
        {
            *pBRedraw = MM_TRUE;
        }
    }
    else if (uiv_u8NvdSelectedList == m_nvodTimeList&& 1 == iRet)//in timetable area
    {
        iRet = uif_VerifyEpgTimerExistance(&stSelectTimer,uiv_stEpgNvodTimerList);
        //MLMF_Print("uif_VerifyEpgTimerExistance iRet = %d\n",iRet);
        if (iRet > -1)   // 已预订
        {
            //取消
            pstEpgTimer = &(uiv_stEpgNvodTimerList[iRet]);
            //MLMF_Print("Already subscribed %d delete it\n",iRet);
            pstEpgTimer->stTimer.dateofWeek = 0;
            pstTimeList->bUpdateItem= MM_TRUE;
        }
        else
        {
            iRet = uif_FindEpgTimer(&stSelectTimer,uiv_stEpgNvodTimerList);//找到冲突的预订管理
            if (iRet > -1)//找到
            {
                //MLMF_Print("Cur book confused with\n");
                pstEpgTimer = &(uiv_stEpgNvodTimerList[iRet]);
                sprintf(str, infostr[uiv_u8Language][0],pstEpgTimer->acEventName);
                if ( uif_ShareMakeSelectDlg("Information",str,MM_FALSE) == MM_TRUE )
                {
                    stSelectTimer.stTimer.dateofWeek = 1;
                    *pstEpgTimer = stSelectTimer;
                    pstTimeList->bUpdateItem= MM_TRUE;
                }
            }
            else      // 没有冲突的预订管理
            {
                //MLMF_Print("Add new book\n");
                uif_PutEPGTimer(&stSelectTimer,uiv_stEpgNvodTimerList);        //
                pstTimeList->bUpdateItem= MM_TRUE;                       
            }
        }
    }

    return iRetKey;
}

MBT_S32 uif_NVODMenu(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXITALL;
    MBT_S32 iLastCursor = 0xffffffff;
    MBT_S32 iLastSelect;
    MBT_S32 iCharNumber = 0;
    MBT_U32 u32VidTransInfo ;
    MBT_U32 u32AudTransInfo ;
    MBT_U8 u8VideoAudioState;
    MBT_U16 u16VideoServiceID ;
    MBT_U16 u16AudioServiceID ;
    MBT_U16 u6CurPlayTShiftEventID = dbsm_InvalidID;
    MBT_U16 u16CurPlayRefEventID = dbsm_InvalidID;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;	
    MBT_BOOL bRedrawEventList = MM_TRUE;
    MBT_BOOL bRedrawTShiftList = MM_TRUE;
    MBT_BOOL bForceSrch = MM_TRUE;
    MBT_BOOL bForceSave = MM_FALSE;
    LISTITEM  stTimeListItems;
    LISTITEM  stEventList;
    LISTITEM  *pstCurSelectList = MM_NULL;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    UI_PRG stPrgInfo;
    if(DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&stPrgInfo))
    {
        return iRetKey;
    }

    if(MM_FALSE == uif_MallocAllNvodResouse())
    {
        bExit = MM_TRUE; 
    }
    UIF_StopAV();
    DBSF_MntStartHeatBeat(0,MM_FALSE,uif_GetDbsMsg);
    WGUIF_ClsFullScreen();
    MLMF_FP_Display("nvod", 4,MM_FALSE);
    u8VideoAudioState = pstBoxInfo->ucBit.bVideoAudioState;
    u32VidTransInfo =   pstBoxInfo->u32VidTransInfo;
    u16VideoServiceID = pstBoxInfo->u16VideoServiceID;
    u32AudTransInfo = pstBoxInfo->u32AudTransInfo;
    u16AudioServiceID = pstBoxInfo->u16AudioServiceID;
    stEventList.iSelect = 0;
    stTimeListItems.iSelect = 0;
    
    while( !bExit )
    {
        if ( bRedraw )
        {
            bRedrawEventList = MM_TRUE;
            iLastCursor = 0xffffffff;
            bRefresh |= uif_NVODPanel();
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        
        bRedraw = MM_FALSE;
        
        if(bForceSrch)
        {
            //MLMF_Print("uif_SrchNvodProcess\n");
            bForceSrch = MM_FALSE;
            uif_SrchNvodProcess();
            bRedrawEventList = MM_TRUE;
        }

        if(MM_TRUE == bRedrawEventList)
        {
            bRedrawEventList= MM_FALSE;
            bRedrawTShiftList = MM_TRUE;	
            iLastSelect = stEventList.iSelect;
            uif_NVODEventListInit(&stEventList);
            stEventList.iSelect = iLastSelect;
            if(stEventList.iNoOfItems >0)
            {
                uiv_s16CurRefEventID = uiv_pu16RefEventIdList[stEventList.iSelect];
            }
            else
            {
                uiv_s16CurRefEventID = dbsm_InvalidID;
            }
        }

        if(MM_TRUE == bRedrawTShiftList)
        {
            bRedrawTShiftList = MM_FALSE;
            iLastSelect = stTimeListItems.iSelect;
            Menu_NVODTimeListInit(&stTimeListItems);
            stTimeListItems.iSelect = iLastSelect;
        }

        if ( stEventList.bUpdateItem || stEventList.bUpdatePage )
        {
            iCharNumber = 0;
            bRefresh |= NVOD_DispCurEventBrief(stTimeListItems.iNoOfItems,&iCharNumber);
        }

        if(iLastCursor != uiv_u8NvdSelectedList)
        {
            iLastCursor = uiv_u8NvdSelectedList;
            bRefresh |= NVOD_DisplayHelpInfo(uiv_u8NvdSelectedList);
        }
        
        switch(uiv_u8NvdSelectedList)
        {
            case m_nvodEventList:/*节目类型区*/
                pstCurSelectList = &stEventList;
                break;
                
            case m_nvodTimeList:/*节目列表区*/
                pstCurSelectList = &stTimeListItems;
                break;
        }

        bRefresh |= UCTRF_ListOnDraw(&stEventList);
        bRefresh |= UCTRF_ListOnDraw(&stTimeListItems);
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        iKey = uif_ReadKey ( 1000 );  

        switch( iKey )
        {
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                UCTRF_ListGetKey( pstCurSelectList,iKey);
                if(pstCurSelectList->iNoOfItems < 1)
                {
                    break;
                }
                
                if(m_nvodEventList == uiv_u8NvdSelectedList)
                {
                    uiv_s16CurRefEventID = uiv_pu16RefEventIdList[stEventList.iSelect];
                    bRedrawTShiftList = MM_TRUE;
                }
                break;
                    

            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
                if(m_nvodEventList == uiv_u8NvdSelectedList)
                {
                    if(stTimeListItems.iNoOfItems <= 0)
                    {
                        uiv_u8NvdSelectedList = m_nvodEventList;
                    }
                    else
                    {
                        uiv_u8NvdSelectedList = m_nvodTimeList;
                    }
                }
                else
                {
                   uiv_u8NvdSelectedList = m_nvodEventList;
                }
                bRedrawEventList = MM_TRUE;
                break;


            case DUMMY_KEY_EPG:
                bRefresh |= NVOD_DispCurEventBrief(stTimeListItems.iNoOfItems,&iCharNumber);
                break;


            case DUMMY_KEY_YELLOW_SUBSCRIBE:
                uif_SaveEpgChangeOrNo(uiv_stEpgNvodTimerList,MM_FALSE);	
                if(uif_GetValideSubscribeNum() <= 0)
                {
                    break;
                }
                WDCtrF_PutWindow(uif_Subscribe, 1);
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_ADDWINDOW;
                break;

            case DUMMY_KEY_SELECT:           //蓝色按键 : 添加预订管理
                if (0 == stEventList.iNoOfItems||0 == stTimeListItems.iNoOfItems)
                {
                    break;
                }
                iRetKey = uif_SubTimeShiftEvent(&stTimeListItems,&bRedraw);
                if(DUMMY_KEY_EXITALL == iRetKey)
                {
                    bExit = MM_TRUE;
                }

                if(bRedraw)
                {
                    bForceSrch = MM_TRUE;
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                bExit = MM_TRUE;
                iRetKey = iKey;
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
                    bRedraw = MM_TRUE;
                }
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
             case -1:
                bRefresh |= uif_AlarmMsgBoxes(NVOD_VIDEOAREA_X+(NVOD_VIDEOAREA_WIDTH-NVOD_TV_MSGBAR_WIDTH)/2, NVOD_VIDEOAREA_Y+(NVOD_VIDEOAREA_HEIGHT-NVOD_TV_MSGBAR_HEIGHT)/2, NVOD_TV_MSGBAR_WIDTH, NVOD_TV_MSGBAR_HEIGHT);
                if(stTimeListItems.iNoOfItems > 0)
                {
                    if(u6CurPlayTShiftEventID != uiv_pu16TimeShiftEventIdList[0]||u16CurPlayRefEventID != uiv_s16CurRefEventID)
                    {
                        TIMER_M stCurSysTime;
                        UI_TSHIFT_EVENT sTimeshiftEvent;
                        
                        TMF_GetSysTime(&stCurSysTime);
                        u6CurPlayTShiftEventID = uiv_pu16TimeShiftEventIdList[0];
                        u16CurPlayRefEventID = uiv_s16CurRefEventID;
                        MLMF_Print("Check Event u6CurPlayTShiftEventID %d\n",u6CurPlayTShiftEventID);
                        if(DBSF_NVDGetCertainTShiftEventInfo(uiv_s16CurRefEventID,u6CurPlayTShiftEventID, &sTimeshiftEvent))
                        {
                            MLMF_Print("Get Event %d infor\n",u6CurPlayTShiftEventID);
                            if(0 == uif_IsNVODEventPassed(&sTimeshiftEvent,stCurSysTime))
                            {
                                MLMF_Print("uif_PlayCertainNVODPrg Event %d infor\n",u6CurPlayTShiftEventID);
                                uif_PlayCertainNVODPrg(u6CurPlayTShiftEventID);
                            }
                        }
                    }
                }
                stEventList.iNoOfItems = DBSF_NVDGetEventIDListFromCertainRefPrg(uiv_pu16RefEventIdList,&bRedrawEventList);
                if(bRedrawEventList)
                {
                    break;
                }
                stTimeListItems.iNoOfItems = DBSF_NVDGetTShiftEventNum(uiv_s16CurRefEventID,uiv_pu16TimeShiftEventIdList,&bRedrawTShiftList);
                break;
                
            default:
                if(uif_ShowMsgList(NVOD_VIDEOAREA_X+(NVOD_VIDEOAREA_WIDTH-NVOD_TV_MSGBAR_WIDTH)/2, NVOD_VIDEOAREA_Y+(NVOD_VIDEOAREA_HEIGHT-NVOD_TV_MSGBAR_HEIGHT)/2, NVOD_TV_MSGBAR_WIDTH, NVOD_TV_MSGBAR_HEIGHT))
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

    DBSF_NVDEndSrch();
    pstBoxInfo->ucBit.bVideoAudioState=u8VideoAudioState;
    pstBoxInfo->u32AudTransInfo = u32AudTransInfo;
    pstBoxInfo->u32VidTransInfo = u32VidTransInfo;
    pstBoxInfo->u16VideoServiceID = u16VideoServiceID;
    pstBoxInfo->u16AudioServiceID = u16AudioServiceID;
    uif_SaveEpgChangeOrNo(uiv_stEpgNvodTimerList,bForceSave);	
    uif_FreeAllNvodResouse();
    DBSF_DataSetBoxInfo(pstBoxInfo);
    WGUIF_ClsFullScreen();
    uif_ChnListPlayPrg(&(stPrgInfo.stService));
    return iRetKey;
}

