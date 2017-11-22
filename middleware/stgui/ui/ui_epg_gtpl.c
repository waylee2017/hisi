#include "ui_share.h"
/*
 * epg ui structure
 *
 ************************************************************************************** 
 *    profile                                        *                                *
 *     28 Jar 2017 13:59                             *                                *
 *     001 STAR PLUS                                 *                                *
 *     13:00-13:30 Ye Hai Mohabbatein                *           tv window            *
 *                                                   *                                *
 *                                                   *                                *
 *                                                   *                                *
 **************************************************************************************
 *                              *                    28 Jan                           *
 *         DTV/RADIO            *******************************************************
 *                              *12:30						13:30					  *
 **************************************************************************************
 *                              *                                                     *
 **************************************************************************************
 *                              *                                                     *
 **************************************************************************************
 *                              *                                                     *
 **************************************************************************************
 *                              *                                                     *
 **************************************************************************************
 * */
#define EPGMENU_PROLIST_EVENTLIST_FOCUS_COLOUR       FONT_FRONT_COLOR_WHITE
#define EPGMENU_PREVIEW_BG_COLOUR  0xfffff111
#define EPG_EIT_FOCUS_COLOR				0xff1a1327


#define EPG_TV_WINDOW_START_X			837//470*1.78
#define EPG_TV_WINDOW_START_Y			132//105*1.25	
#define EPG_TV_WINDOW_WIDTH				338//190*1.78
#define EPG_TV_WINDOW_HEIGHT			188//150
#define EPG_TV_MSGBAR_WIDTH				285//160*1.78
#define EPG_TV_MSGBAR_HEIGHT			150//120

#define EPG_TV_WINDOW_STRUCTURE_START_X			834//469
#define EPG_TV_WINDOW_STRUCTURE_START_Y			131//104
#define EPG_TV_WINDOW_STRUCTURE_WIDTH			340//191
#define EPG_TV_WINDOW_STRUCTURE_HEIGHT			189//151

#define EPG_TV_WINDOW_PREVIEW_COLOUR  0xff050505

#define EPG_LIST_XY_LINE_WIDTH			2
#define EPG_TEXT_ITEM_HEIGHT			45	

#define EPG_PROFILE_DATE_TIME_START_X	142//80
#define EPG_PROFILE_DATE_TIME_START_Y	150//120
#define EPG_PROFILE_ITEM_HEIGHT			EPG_TEXT_ITEM_HEIGHT	
#define EPG_PROFILE_ITEM_WIDTH			(EPG_TV_WINDOW_STRUCTURE_START_X - EPG_PROFILE_DATE_TIME_START_X)	
#define EPG_PROFILE_PROGRAM_START_X					EPG_PROFILE_DATE_TIME_START_X	
#define EPG_PROFILE_PROGRAM_START_Y					(EPG_PROFILE_DATE_TIME_START_Y + EPG_PROFILE_ITEM_HEIGHT)
#define EPG_PROFILE_PROGRAM_EVENT_START_X		EPG_PROFILE_DATE_TIME_START_X	
#define EPG_PROFILE_PROGRAM_EVENT_START_Y		(EPG_PROFILE_PROGRAM_START_Y + EPG_PROFILE_ITEM_HEIGHT)
#define EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_X		(EPG_PROFILE_DATE_TIME_START_X-32)	
#define EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_Y		(EPG_PROFILE_PROGRAM_START_Y + EPG_PROFILE_ITEM_HEIGHT)
#define EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_WIDTH		(EPG_TV_WINDOW_STRUCTURE_START_X - EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_X)



#define EPG_INFO_START_X				92//48	
#define EPG_INFO_START_Y				342//270	
#define EPG_INFO_ITEM_HEIGHT			45	
#define EPG_INFO_EIT_ITEM_HEIGHT			45	

#define EPG_INFO_LIVE_TYPE_START_X			EPG_INFO_START_X		
#define EPG_INFO_LIVE_TYPE_START_Y			EPG_INFO_START_Y		
#define EPG_INFO_LIVE_TYPE_HEIGHT			(2 * EPG_INFO_ITEM_HEIGHT)
#define EPG_INFO_LIVE_TYPE_WIDTH			356//(200)	

#define EPG_INFO_EIT_DETAIL_WIDTH				1096//616
#define EPG_INFO_EIT_DETAIL_HEIGHT				280//232
#define EPG_INFO_EIT_DETAIL_COLOR				0xff371934	

#define EPG_INFO_CHANNEL_LIST_START_X			(EPG_INFO_START_X+EPG_LIST_XY_LINE_WIDTH)		
#define EPG_INFO_CHANNEL_LIST_START_Y			(EPG_INFO_START_Y + EPG_INFO_LIVE_TYPE_HEIGHT)		
#define EPG_INFO_CHANNEL_LIST_WIDTH				(356-2*EPG_LIST_XY_LINE_WIDTH)	
#define EPG_LIST_SPERCOLUMN	60

#define EPG_INFO_EIT_LIST_OFFSET				(2*EPG_LIST_XY_LINE_WIDTH)		

#define EPG_INFO_EIT_LIST_PANEL_WIDTH				(EPG_INFO_EIT_DETAIL_WIDTH -EPG_INFO_LIVE_TYPE_WIDTH-EPG_INFO_EIT_LIST_OFFSET)		
#define EPG_INFO_EIT_LIST_HEAD_DATE_START_X				(EPG_INFO_START_X +EPG_INFO_LIVE_TYPE_WIDTH)		
#define EPG_INFO_EIT_LIST_HEAD_DATE_START_Y				(EPG_INFO_START_Y)		
#define EPG_INFO_EIT_LIST_HEAD_TIME1_START_X				(EPG_INFO_START_X+EPG_INFO_LIVE_TYPE_WIDTH)		
#define EPG_INFO_EIT_LIST_HEAD_TIME1_START_Y				(EPG_INFO_START_Y+EPG_INFO_ITEM_HEIGHT)		
#define EPG_INFO_EIT_LIST_HEAD_TIME2_START_X				(EPG_INFO_START_X+EPG_INFO_LIVE_TYPE_WIDTH+ EPG_INFO_EIT_LIST_PANEL_WIDTH / 2)		
#define EPG_INFO_EIT_LIST_HEAD_TIME2_START_Y				(EPG_INFO_START_Y+EPG_INFO_ITEM_HEIGHT)		

#define EPG_INFO_EIT_LIST_ITEM1_START_X				(EPG_INFO_START_X+EPG_INFO_LIVE_TYPE_WIDTH)		
#define EPG_INFO_EIT_LIST_ITEM1_START_Y				(EPG_INFO_START_Y + 2 * EPG_INFO_ITEM_HEIGHT+EPG_LIST_XY_LINE_WIDTH)		


#define EPG_HELP_Y 			666//525
#define EPG_HELP_SPACE		125//100
#define EPG_HELP_DATE_X		400//170
#define EPG_HELP_INFO_X		(EPG_HELP_DATE_X+EPG_HELP_SPACE)
#define EPG_HELP_OK_X		(EPG_HELP_INFO_X+EPG_HELP_SPACE) 
#define EPG_HELP_EXIT_X		(EPG_HELP_OK_X+EPG_HELP_SPACE+20) 

#define MAX_NUMBER_EVENT_OF_ONE_PROGRAM				60

#define UTC_ONE_MINUTE_SECODES			(60)// 60 seconds
#define UTC_HALF_OF_HOUR_SECODES		(30*60)//half of hour
#define UTC_ONE_HOUR_SECODES			(60*60)// 1 hours
#define UTC_TWO_HOUR_SECODES			(2*60*60)// 2 hours
#define UTC_ONE_DAY_SECODES				(24*60*60)//24 hours
#define UTC_ONE_WEEK_SECODES			(7*24*60*60)//24 hours
#define UTC_ONE_WEEK_DAYS				(7)//7 day

enum {
	EVENT_LIST_OF_PROGRAM_0 = 0,
	EVENT_LIST_OF_PROGRAM_1,
	EVENT_LIST_OF_PROGRAM_2,
	EVENT_LIST_OF_PROGRAM_3,
	EVENT_LIST_OF_PROGRAM_MAX,
};

typedef struct _epg_event_ {
	MBT_U32 u32StartUtcSeconds;
	MBT_U32 u32EndUtcSeconds;
}EPG_EVENT;
static EPG_TIMER_M *uiv_pstEpgTimerList = MM_NULL;
static MBT_U16 *uiv_pu16EventIdList = MM_NULL;
static EPG_EVENT *uiv_pu16EventUtcList = MM_NULL;
static LISTITEM stListChannelItems;
static MBT_BOOL bFirst = MM_TRUE;

static TIMER_M gstStartTime;
static TIMER_M gstEpgSelectTime;
static TIMER_M gstEndTime;
static MBT_U32 u32CurUtcTimeSecond = 0;
static MBT_U16 u16CurEITEventID = 0;

static MBT_BOOL  uif_IsEpgEitBooked(TIMER_M *psTStartTime, TIMER_M *psTEndTime)
{
	MBT_U8 i = 0;
	MBT_BOOL ret = MM_FALSE;
	MBT_S8 endHour = 0;
	MBT_S8 endMinute = 0;
	
	if(uiv_pstEpgTimerList == MM_NULL || MM_NULL == psTStartTime || MM_NULL == psTEndTime)
    {
	    return ret;
    }
	
	for(i = 0; i < MAX_EPG_TIMER_NUM; i++)
	{
		if(uiv_pstEpgTimerList[i].stTimer.dateofWeek)
		{
			if(psTStartTime->u16ServiceID == uiv_pstEpgTimerList[i].stTimer.u16ServiceID && psTStartTime->uTimerProgramNo == uiv_pstEpgTimerList[i].stTimer.uTimerProgramNo)
			{
				if(uiv_pstEpgTimerList[i].stTimer.hour == psTStartTime->hour && uiv_pstEpgTimerList[i].stTimer.minute== psTStartTime->minute)
				{
					endHour = uiv_pstEpgTimerList[i].stTimer.hour + uiv_pstEpgTimerList[i].stTimer.durationhour;
					endMinute = uiv_pstEpgTimerList[i].stTimer.minute + uiv_pstEpgTimerList[i].stTimer.durationMinute;
					if(endMinute >= 60)
                    {
						endMinute = endMinute%60;
						endHour++;
					}
					
					if(endHour >= 24)
                    {
						endHour = endHour%24;
					}
					
					if(psTEndTime->hour == endHour && psTEndTime->minute == endMinute)
					{
						ret = MM_TRUE;
						break;
					}
				}
			}
		}

	}
	return ret;
}


static MBT_BOOL  uif_MallocAllEpgResouse(MBT_VOID)
{
    MBT_BOOL bRet = MM_TRUE;
    MBT_S32 i;
    MBT_S32 iTemp;
    TIMER_M stTime;
    TIMER_M * pTriggerTimer;
    
    if(MM_NULL == uiv_pstEpgTimerList)
    {
        uiv_pstEpgTimerList = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        if(MM_NULL == uiv_pstEpgTimerList)
        {
            bRet = MM_FALSE; 
            return bRet;
        }
    }

	if(uiv_pu16EventUtcList == MM_NULL)
    {
        uiv_pu16EventUtcList = uif_ForceMalloc(sizeof(EPG_EVENT)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM*EVENT_LIST_OF_PROGRAM_MAX);
        if(MM_NULL == uiv_pu16EventUtcList)
        {
            uif_ForceFree(uiv_pstEpgTimerList);
            uiv_pstEpgTimerList = MM_NULL;
            bRet = MM_FALSE; 
            return bRet;
        }
        memset(uiv_pu16EventUtcList,0,sizeof(EPG_EVENT)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM*EVENT_LIST_OF_PROGRAM_MAX);
	}

    if(MM_NULL == uiv_pu16EventIdList)
    {
        uiv_pu16EventIdList = uif_ForceMalloc(2*MAX_NUMBER_EVENT_OF_ONE_PROGRAM*EVENT_LIST_OF_PROGRAM_MAX);
        if(MM_NULL == uiv_pu16EventIdList)
        {
            uif_ForceFree(uiv_pstEpgTimerList);
            uiv_pstEpgTimerList = MM_NULL;
            uif_ForceFree(uiv_pu16EventUtcList);
            uiv_pu16EventUtcList = MM_NULL;
            bRet = MM_FALSE; 
            return bRet;
        }
        memset(uiv_pu16EventIdList,0,2*MAX_NUMBER_EVENT_OF_ONE_PROGRAM*EVENT_LIST_OF_PROGRAM_MAX);
    }

    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(uiv_pstEpgTimerList);
        uiv_pstEpgTimerList = MM_NULL;
        uif_ForceFree(uiv_pu16EventIdList);
        uiv_pu16EventIdList = MM_NULL;
		uif_ForceFree(uiv_pu16EventUtcList);
		uiv_pu16EventUtcList = MM_NULL;
        bRet = MM_FALSE; 
    }

    iTemp = 0;
    TMF_GetSysTime(&stTime);
    uif_GetTimerFromFile(uiv_pstEpgTimerList,pTriggerTimer);
    
    for (i = 0;i < MAX_EPG_TIMER_NUM; i++)
    {
        if ( uiv_pstEpgTimerList[i].stTimer.dateofWeek != 0 )
        {
            if(1 ==  TMF_CompareThe2Timers(stTime,uiv_pstEpgTimerList[i].stTimer) )
            {
                if(i == MAX_EPG_TIMER_NUM-1)
                {
                    uiv_pstEpgTimerList[i].stTimer.dateofWeek = 0;
                }
                else
                {
                    memmove((MBT_U8 *)(uiv_pstEpgTimerList+i),(MBT_U8 *)(uiv_pstEpgTimerList+i+1),sizeof(EPG_TIMER_M)*(MAX_EPG_TIMER_NUM-i-1));
                    uiv_pstEpgTimerList[MAX_EPG_TIMER_NUM - 1].stTimer.dateofWeek = 0;
                }
                iTemp = 1;
            }     
        }
    }

    if(1 == iTemp)
    {
        uif_SetTimer2File(uiv_pstEpgTimerList,pTriggerTimer);
        uif_SetTimer(uiv_pstEpgTimerList,pTriggerTimer);
    }

    uif_ForceFree(pTriggerTimer);
    pTriggerTimer = MM_NULL;
    return bRet;
}


static MBT_VOID uif_FreeAllEpgResouse(MBT_VOID)
{
    if(uiv_pstEpgTimerList)
    {
        uif_ForceFree(uiv_pstEpgTimerList);
        uiv_pstEpgTimerList = MM_NULL;
    }	

    if(MM_NULL != uiv_pu16EventIdList)
    {
        uif_ForceFree(uiv_pu16EventIdList);
        uiv_pu16EventIdList = MM_NULL;
    }
    
	if(MM_NULL != uiv_pu16EventUtcList)
    {
		uif_ForceFree(uiv_pu16EventUtcList);
		uiv_pu16EventUtcList = MM_NULL;
	}
}


static MBT_VOID Epg_DrawTxtCenter(MBT_S32 x,MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight, MBT_CHAR *pText, MBT_U32 u32TextColor)
{
    if(pText == MM_NULL)
    {
    	return;
    }
    MBT_S32	iStrlen = strlen(pText);
    MBT_S32 font_width = WGUIF_FNTGetTxtWidth(iStrlen, pText);
    MBT_S32 font_height = WGUIF_GetFontHeight();
    font_width = font_width >= iWidth ? iWidth : font_width;
    font_height = font_height >= iHeight ? iHeight : font_height;
    x = x + (iWidth - font_width) / 2;
    y = y + (iHeight - font_height) / 2;
     
    WGUIF_FNTDrawTxt2Rgn( x,  y,pText, iStrlen ,  u32TextColor, font_width);
}

static MBT_CHAR* Epg_GetMonth(MBT_U8 mon)
{
	MBT_CHAR* strMon[12]=
    {
		"Jan",
        "Feb",
		"Mar",
        "Apr",
		"May",
        "Jun",
		"Jul",
        "Aug",
		"Sep",
        "Oct",
		"Nov",
        "Dec"
    };
    
	if(mon > 12 || mon < 1)
    {
	    return MM_NULL;
    }

	return strMon[mon-1];
}

static void Epg_DrawProfileDate(void)
{
    MBT_CHAR date[64] = {0};
    TIMER_M stCurTime;
    BITMAPTRUECOLOR *pstFramBmp;

    MBT_S32 font_height = WGUIF_GetFontHeight();
    font_height = font_height >= EPG_PROFILE_ITEM_HEIGHT ? EPG_PROFILE_ITEM_HEIGHT : font_height;
    MBT_S32 y = (EPG_PROFILE_ITEM_HEIGHT - font_height) / 2;
    memset(date, 0, sizeof(date));
    TMF_GetSysTime(&stCurTime);
    sprintf(date,"%02d %s %04d %02d:%02d", stCurTime.date, Epg_GetMonth(stCurTime.month), stCurTime.year+1900, stCurTime.hour, stCurTime.minute);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp( 0, 0, EPG_PROFILE_DATE_TIME_START_X, EPG_PROFILE_DATE_TIME_START_Y, EPG_PROFILE_ITEM_WIDTH, EPG_PROFILE_ITEM_HEIGHT , pstFramBmp, MM_TRUE);
    MBT_S32	iStrlen = strlen(date);
    WGUIF_FNTDrawTxt(EPG_PROFILE_DATE_TIME_START_X, EPG_PROFILE_DATE_TIME_START_Y+y, iStrlen, date, FONT_FRONT_COLOR_WHITE);

}

static MBT_VOID Epg_DrawProfilePrgName(MBT_CHAR *pText)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(pText == MM_NULL)
    {
    	return;
    }
    MBT_S32 font_height = WGUIF_GetFontHeight();
    font_height = font_height >= EPG_PROFILE_ITEM_HEIGHT ? EPG_PROFILE_ITEM_HEIGHT : font_height;
    MBT_S32 y = (EPG_PROFILE_ITEM_HEIGHT - font_height) / 2;
    MBT_S32	iStrlen = strlen(pText);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp( 0, 0, EPG_PROFILE_PROGRAM_START_X, EPG_PROFILE_PROGRAM_START_Y, EPG_PROFILE_ITEM_WIDTH, EPG_PROFILE_ITEM_HEIGHT , pstFramBmp, MM_TRUE);
    WGUIF_FNTDrawTxt(EPG_PROFILE_PROGRAM_START_X, EPG_PROFILE_PROGRAM_START_Y+y, iStrlen, pText, FONT_FRONT_COLOR_WHITE);
}

static MBT_VOID Epg_DrawProfileEit(TIMER_M *psTStartTime, TIMER_M *psTEndTime, MBT_CHAR* event_name)
{
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR event_info[256] = {0};
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp( 0, 0, EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_X, EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_Y, EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_WIDTH, EPG_PROFILE_ITEM_HEIGHT , pstFramBmp, MM_TRUE);
    if(psTStartTime == MM_NULL || psTEndTime == MM_NULL)
    {
    	return;
    }
    MBT_S32 font_height = WGUIF_GetFontHeight();
    font_height = font_height >= EPG_PROFILE_ITEM_HEIGHT ? EPG_PROFILE_ITEM_HEIGHT : font_height;
    MBT_S32 y = (EPG_PROFILE_ITEM_HEIGHT - font_height) / 2;
    memset(event_info, 0, sizeof(event_info));
    sprintf(event_info,"%02d:%02d-%02d:%02d %s", psTStartTime->hour, psTStartTime->minute, psTEndTime->hour, psTEndTime->minute, event_name == NULL ? "" : event_name);
    MBT_S32	iStrlen = strlen(event_info);
    WGUIF_FNTDrawTxt(EPG_PROFILE_PROGRAM_EVENT_START_X, EPG_PROFILE_PROGRAM_EVENT_START_Y+y, iStrlen, event_info, FONT_FRONT_COLOR_WHITE);

    if(uif_IsEpgEitBooked(psTStartTime, psTEndTime))
    {
    	pstFramBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
    	WGUIF_DisplayReginTrueColorBmp( EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_X, EPG_PROFILE_PROGRAM_EVENT_BOOK_ICON_START_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    }
}

static MBT_VOID Epg_DrawEpgInfoLiveType(MBT_CHAR *pText)
{
    MBT_S32 font_height;
    if(pText == MM_NULL)
    {
    	return;
    }
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(TOPLEFTMAINTITLE_FONT_HEIGHT);
    uif_ShareDrawCombinHBar(EPG_INFO_LIVE_TYPE_START_X , EPG_INFO_LIVE_TYPE_START_Y, EPG_INFO_LIVE_TYPE_WIDTH, BMPF_GetBMP(m_ui_Guide_TV_Type_LeftIfor), BMPF_GetBMP(m_ui_Guide_TV_Type_MiddleIfor), BMPF_GetBMP(m_ui_Guide_TV_Type_RightIfor));
    Epg_DrawTxtCenter(EPG_INFO_LIVE_TYPE_START_X, EPG_INFO_LIVE_TYPE_START_Y, EPG_INFO_LIVE_TYPE_WIDTH, EPG_INFO_LIVE_TYPE_HEIGHT , pText, EPGMENU_PROLIST_EVENTLIST_FOCUS_COLOUR);
    WGUIF_SetFontHeight(font_height);
}


static MBT_VOID Epg_DrawEitDetail(MBT_CHAR *pText, MBT_BOOL bClean)
{
    if(bClean)
    {
    	WGUIF_DisplayReginTrueColorBmp( 0, 0, EPG_INFO_LIVE_TYPE_START_X, EPG_INFO_LIVE_TYPE_START_Y, EPG_INFO_EIT_DETAIL_WIDTH, EPG_INFO_EIT_DETAIL_HEIGHT , BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    if(pText == MM_NULL)
    {
    	return;
    }
    MBT_S32	iStrlen = strlen(pText);
    WGUIF_DrawFilledRectangle(EPG_INFO_LIVE_TYPE_START_X, EPG_INFO_LIVE_TYPE_START_Y, EPG_INFO_EIT_DETAIL_WIDTH, EPG_INFO_EIT_DETAIL_HEIGHT, EPG_INFO_EIT_DETAIL_COLOR);
    WGUIF_FNTDrawTxt(EPG_INFO_LIVE_TYPE_START_X, EPG_INFO_LIVE_TYPE_START_Y+10, iStrlen, pText, FONT_FRONT_COLOR_WHITE);
}

static MBT_VOID Epg_DrawVideoStructure(MBT_VOID)
{
    WGUIF_DrawFilledRectangle(EPG_TV_WINDOW_STRUCTURE_START_X, EPG_TV_WINDOW_STRUCTURE_START_Y, EPG_TV_WINDOW_STRUCTURE_WIDTH, EPG_LIST_XY_LINE_WIDTH, EPGMENU_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(EPG_TV_WINDOW_STRUCTURE_START_X, EPG_TV_WINDOW_STRUCTURE_START_Y+EPG_TV_WINDOW_STRUCTURE_HEIGHT, EPG_TV_WINDOW_STRUCTURE_WIDTH, EPG_LIST_XY_LINE_WIDTH, EPGMENU_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(EPG_TV_WINDOW_STRUCTURE_START_X, EPG_TV_WINDOW_STRUCTURE_START_Y, EPG_LIST_XY_LINE_WIDTH, EPG_TV_WINDOW_STRUCTURE_HEIGHT, EPGMENU_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(EPG_TV_WINDOW_STRUCTURE_START_X+EPG_TV_WINDOW_STRUCTURE_WIDTH, EPG_TV_WINDOW_STRUCTURE_START_Y, EPG_LIST_XY_LINE_WIDTH, EPG_TV_WINDOW_STRUCTURE_HEIGHT+2, EPGMENU_PREVIEW_BG_COLOUR);
}


static MBT_VOID Epg_DrawEitListStructure(MBT_VOID)
{
    MBT_U8 i = 0;
    for(i = 0; i < 5; i++)
    {
    	WGUIF_DrawFilledRectangle(EPG_INFO_START_X+2, EPG_INFO_CHANNEL_LIST_START_Y+i*(EPG_INFO_ITEM_HEIGHT+EPG_LIST_XY_LINE_WIDTH)-EPG_LIST_XY_LINE_WIDTH, EPG_INFO_EIT_DETAIL_WIDTH-EPG_LIST_XY_LINE_WIDTH-2, EPG_LIST_XY_LINE_WIDTH, EPGMENU_PREVIEW_BG_COLOUR);
    }
    WGUIF_DrawFilledRectangle(EPG_INFO_START_X+2, EPG_INFO_CHANNEL_LIST_START_Y, EPG_LIST_XY_LINE_WIDTH, 4*EPG_INFO_ITEM_HEIGHT+8, EPGMENU_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(EPG_INFO_EIT_LIST_ITEM1_START_X-EPG_LIST_XY_LINE_WIDTH, EPG_INFO_CHANNEL_LIST_START_Y, EPG_LIST_XY_LINE_WIDTH, 4*EPG_INFO_ITEM_HEIGHT+8, EPGMENU_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(EPG_INFO_START_X+EPG_INFO_EIT_DETAIL_WIDTH-EPG_INFO_EIT_LIST_OFFSET, EPG_INFO_CHANNEL_LIST_START_Y, EPG_LIST_XY_LINE_WIDTH, 4*EPG_INFO_ITEM_HEIGHT+8, EPGMENU_PREVIEW_BG_COLOUR);
}

static MBT_VOID Epg_DrawEpgListHeadDate(TIMER_M* stEpgSelectTime, MBT_BOOL bFocused)
{
    MBT_CHAR date[32] = {0};
    if(stEpgSelectTime == MM_NULL)
    {
    	return;
    }
    WGUIF_DisplayReginTrueColorBmp( 0, 0, EPG_INFO_EIT_LIST_HEAD_DATE_START_X, EPG_INFO_EIT_LIST_HEAD_DATE_START_Y,EPG_INFO_EIT_LIST_PANEL_WIDTH+EPG_INFO_EIT_LIST_OFFSET , EPG_INFO_ITEM_HEIGHT , BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    memset(date, 0, sizeof(date));
    sprintf(date,"%02d %s", stEpgSelectTime->date, Epg_GetMonth(stEpgSelectTime->month));
    if(bFocused)
    {
    	uif_ShareDrawCombinHBar(EPG_INFO_EIT_LIST_HEAD_DATE_START_X , EPG_INFO_EIT_LIST_HEAD_DATE_START_Y, EPG_INFO_EIT_LIST_PANEL_WIDTH+EPG_INFO_EIT_LIST_OFFSET, BMPF_GetBMP(m_ui_Guide_Data_Foucs_LeftIfor), BMPF_GetBMP(m_ui_Guide_Data_Foucs_MiddleIfor), BMPF_GetBMP(m_ui_Guide_Data_Foucs_RightIfor));
    }
    else
    {
    	uif_ShareDrawCombinHBar(EPG_INFO_EIT_LIST_HEAD_DATE_START_X , EPG_INFO_EIT_LIST_HEAD_DATE_START_Y, EPG_INFO_EIT_LIST_PANEL_WIDTH+EPG_INFO_EIT_LIST_OFFSET, BMPF_GetBMP(m_ui_Guide_Common_LeftIfor), BMPF_GetBMP(m_ui_Guide_Common_MiddleIfor), BMPF_GetBMP(m_ui_Guide_Common_RightIfor));
    }
    Epg_DrawTxtCenter(EPG_INFO_EIT_LIST_HEAD_DATE_START_X, EPG_INFO_EIT_LIST_HEAD_DATE_START_Y, EPG_INFO_EIT_LIST_PANEL_WIDTH, EPG_INFO_ITEM_HEIGHT , date, EPGMENU_PROLIST_EVENTLIST_FOCUS_COLOUR);
}

static MBT_VOID Epg_DrawEpgListHeadTime(TIMER_M* stEpgSelectTime)
{
    MBT_U8 hour = 0;
    MBT_CHAR time[32] = {0};
    if(stEpgSelectTime == MM_NULL)
    {
    	return;
    }
    MBT_S32 font_height = WGUIF_GetFontHeight();
    font_height = font_height >= EPG_INFO_ITEM_HEIGHT ? EPG_INFO_ITEM_HEIGHT : font_height;
    MBT_S32 y = (EPG_INFO_ITEM_HEIGHT - font_height) / 2;
    memset(time, 0, sizeof(time));
    sprintf(time,"%02d:%02d", stEpgSelectTime->hour, stEpgSelectTime->minute);
    uif_ShareDrawCombinHBar(EPG_INFO_EIT_LIST_HEAD_TIME1_START_X , EPG_INFO_EIT_LIST_HEAD_TIME1_START_Y-2, EPG_INFO_EIT_LIST_PANEL_WIDTH+EPG_INFO_EIT_LIST_OFFSET, BMPF_GetBMP(m_ui_Guide_Common_LeftIfor), BMPF_GetBMP(m_ui_Guide_Common_MiddleIfor), BMPF_GetBMP(m_ui_Guide_Common_RightIfor));
    MBT_S32	iStrlen = strlen(time);
    WGUIF_FNTDrawTxt(EPG_INFO_EIT_LIST_HEAD_TIME1_START_X+6, EPG_INFO_EIT_LIST_HEAD_TIME1_START_Y + y, iStrlen, time, FONT_FRONT_COLOR_WHITE);
    memset(time, 0, sizeof(time));
    hour = stEpgSelectTime->hour + 1;
    if(hour >= 24)
    {
    	hour = 0;
    }
    sprintf(time,"%02d:%02d", hour, stEpgSelectTime->minute);
    iStrlen = strlen(time);
    WGUIF_FNTDrawTxt(EPG_INFO_EIT_LIST_HEAD_TIME2_START_X, EPG_INFO_EIT_LIST_HEAD_TIME2_START_Y + y, iStrlen, time, FONT_FRONT_COLOR_WHITE);
}


static MBT_VOID EPG_DrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y = EPG_HELP_Y;
    MBT_S32 s32Yoffset;
    MBT_S32 s32StrLen;
    MBT_S32 font_height;
    MBT_S32 font_ori_height;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR *pstring;
    MBT_CHAR* infostr[2][4]=
    {
        {
            "Date",
            "INFO",
            "Reminder",
            "EXIT"
        },
        {
            "Date",
            "INFO",
            "Reminder",
            "EXIT"
        },
    };

    font_height =  GWFONT_HEIGHT_SIZE22;
	font_ori_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(font_height);
    //yellow:date
    x = EPG_HELP_DATE_X;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    pstring = infostr[uiv_u8Language][0];
    s32StrLen = strlen(pstring);
    s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + 5, y + s32Yoffset,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

    //List:INFO
    x = EPG_HELP_INFO_X;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LISTIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    pstring = infostr[uiv_u8Language][1];
    s32StrLen = strlen(pstring);
    s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + 5, y + s32Yoffset,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

    //ok:Reminder
    x = EPG_HELP_OK_X;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    pstring = infostr[uiv_u8Language][2];
    s32StrLen = strlen(pstring);
    s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + 5, y + s32Yoffset,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

    //EXIT:EXIT
    x = EPG_HELP_EXIT_X;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    pstring = infostr[uiv_u8Language][3];
    s32StrLen = strlen(pstring);
    s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + 5, y + s32Yoffset,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_ori_height);
}

static MBT_S32 uif_GetEventListItemTotal(DBST_PROG *pstServiceInfo,TIMER_M stCurTime,MBT_U16 *uiv_pu16EventIdList,MBT_BOOL *pUpdate)
{
    if(MM_NULL == pstServiceInfo || MM_NULL == uiv_pu16EventIdList || MM_NULL == pUpdate)
    {
        return 0;
    }
    
    return DBSF_GetTwoHourEventNumber(pstServiceInfo->stPrgTransInfo.u32TransInfo,pstServiceInfo->u16ServiceID,stCurTime,uiv_pu16EventIdList,pUpdate);
}

static MBT_U32 Epg_LenOfEventList(MBT_U16* eventList)
{
	MBT_U32 len = 0;
	if(eventList == MM_NULL)
    {
		return 0;
	}

	while(eventList[len])
    {
		len++;
	}

	return len;
}

static MBT_BOOL NM_EPGMenu_ListReadItem(MBT_S32 iIndex,MBT_CHAR *pItem)
{
    //MLUI_DEBUG("iIndex: %d read", iIndex);
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iLen;
	MBT_U8 i = 0;
	MBT_S32 totalEvents = 0;
	MBT_BOOL Update = MM_FALSE;

	MBT_BOOL bGet = MM_FALSE;
	MBT_U32 sumOffset = 0;
	MBT_U8 index = iIndex % EVENT_LIST_OF_PROGRAM_MAX;
    UI_EVENT eventItem;
	MBT_U8  puAdjustTime[5];
	TIMER_M sTStartTime;
	TIMER_M sTEndTime;
	MBT_U32 tempSeconds = 0;
	MBT_S32 tempCharLen = 0;
	MBT_U32 xOffset = EPG_INFO_EIT_LIST_ITEM1_START_X;
    //MBT_U32 yOffset = EPG_INFO_EIT_LIST_ITEM1_START_Y + index*(EPG_INFO_EIT_ITEM_HEIGHT);
	MBT_S32 yOffset = stListChannelItems.iRowStart+ index*(stListChannelItems.iHeight+stListChannelItems.iSpace);
	BITMAPTRUECOLOR *pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
	WGUIF_DisplayReginTrueColorBmp( 0, 0, xOffset, yOffset, EPG_INFO_EIT_LIST_PANEL_WIDTH, EPG_INFO_EIT_ITEM_HEIGHT, pstFramBmp, MM_TRUE);

    //MBT_S32 oneCharLen = WGUIF_FNTGetTxtWidth( sizeof("."), ".");
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    //MLUI_DEBUG("List iPrevSelect: %d, iSelect: %d",stListChannelItems.iPrevSelect, stListChannelItems.iSelect);
    if(MM_NULL == pstProgInfo||uiv_pstPrgEditList[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
    {
        memset(pItem,0,2*EPG_LIST_SPERCOLUMN);
        return MM_FALSE;
    }

	MBT_U16 *curProEventList = uiv_pu16EventIdList + index*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
    pstProgInfo += uiv_pstPrgEditList[iIndex].uProgramIndex;
	
    if(1 == DBSF_ListGetLCNStatus())
    {
        iLen = sprintf(pItem,"%03d",pstProgInfo->usiChannelIndexNo);
    }
    else
    {
        iLen = sprintf(pItem,"%03d",iIndex+1);
    }
    pItem[iLen] = 0;

    pstProgInfo->cServiceName[MAX_SERVICE_NAME_LENGTH] = 0;
    iLen = sprintf(pItem+EPG_LIST_SPERCOLUMN, "%s",pstProgInfo->cServiceName);
    pItem[EPG_LIST_SPERCOLUMN+iLen] = 0;

	totalEvents = uif_GetEventListItemTotal(pstProgInfo, gstEpgSelectTime, curProEventList,&Update);
    //MLUI_DEBUG("program: %s, index: %d read Events: %d", pstProgInfo->cServiceName, index, totalEvents);

    //MLUI_DEBUG("iLen: %d", iLen);
	EPG_EVENT *curEventUtcList = uiv_pu16EventUtcList + index*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
    iLen = Epg_LenOfEventList(curProEventList);
	for(i = 0; i < iLen; i++)
    {
        //MLUI_DEBUG("i: %d, eventid: %d", i, curProEventList[i]);
		memset(&eventItem, 0, sizeof(UI_EVENT));
		bGet = DBSF_GetEventByEventID(pstProgInfo->stPrgTransInfo.u32TransInfo , pstProgInfo->u16ServiceID, curProEventList[i], &eventItem);
		if(bGet == MM_FALSE)
	    {
		    continue;
	    }
		DBSF_GetEndTime(eventItem.uStartTime, eventItem.uDutationTime, puAdjustTime);
		DBSF_TdtTime2SystemTime(eventItem.uStartTime,&sTStartTime);
		DBSF_TdtTime2SystemTime(puAdjustTime,&sTEndTime);
		sTEndTime.u32UtcTimeSecond = sTEndTime.u32UtcTimeSecond > (gstEpgSelectTime.u32UtcTimeSecond+UTC_TWO_HOUR_SECODES) ? (gstEpgSelectTime.u32UtcTimeSecond+UTC_TWO_HOUR_SECODES) : sTEndTime.u32UtcTimeSecond;
		curEventUtcList[i].u32EndUtcSeconds = sTEndTime.u32UtcTimeSecond;
		if(sTStartTime.u32UtcTimeSecond < gstEpgSelectTime.u32UtcTimeSecond)
        {
			tempSeconds = sTEndTime.u32UtcTimeSecond - gstEpgSelectTime.u32UtcTimeSecond;
			curEventUtcList[i].u32StartUtcSeconds = gstEpgSelectTime.u32UtcTimeSecond;
		}
		else
        {
			tempSeconds = sTEndTime.u32UtcTimeSecond - sTStartTime.u32UtcTimeSecond;
			curEventUtcList[i].u32StartUtcSeconds = sTStartTime.u32UtcTimeSecond;
		}
        //MLUI_DEBUG("i: %d,event_name: %s, start : %d, end: %d, select start: %ld, select:%ld", i,eventItem.event_name, sTStartTime.u32UtcTimeSecond, sTEndTime.u32UtcTimeSecond,gstEpgSelectTime.u32UtcTimeSecond, gstEpgSelectTime.u32UtcTimeSecond+UTC_TWO_HOUR_SECODES);
		tempSeconds = ((tempSeconds >= UTC_TWO_HOUR_SECODES) ? UTC_TWO_HOUR_SECODES : tempSeconds);
		tempCharLen = (tempSeconds*EPG_INFO_EIT_LIST_PANEL_WIDTH/UTC_TWO_HOUR_SECODES);
        //MLUI_DEBUG("%02d:%02d-%02d:%02d", sTStartTime.hour, sTStartTime.minute, sTEndTime.hour, sTEndTime.minute);
		sTStartTime.u16ServiceID = pstProgInfo->u16ServiceID;
		sTStartTime.uTimerProgramNo = pstProgInfo->stPrgTransInfo.u32TransInfo;
		if(iIndex == stListChannelItems.iSelect)
		{
			if(bFirst == MM_TRUE)
            {
				bFirst = MM_FALSE;
				u32CurUtcTimeSecond = curEventUtcList[i].u32StartUtcSeconds;
			}
			if(u32CurUtcTimeSecond < curEventUtcList[i].u32EndUtcSeconds && u32CurUtcTimeSecond >= curEventUtcList[i].u32StartUtcSeconds)
            {
				Epg_DrawProfileEit(&sTStartTime, &sTEndTime, eventItem.event_name);
				if(i == iLen-1)
                {
					tempCharLen = EPG_INFO_EIT_LIST_PANEL_WIDTH - sumOffset;
				}
				WGUIF_DrawFilledRectangle(xOffset + sumOffset, yOffset, tempCharLen, EPG_INFO_EIT_ITEM_HEIGHT, EPG_EIT_FOCUS_COLOR);
				u16CurEITEventID = curProEventList[i];
			}
			if(i == iLen-1 && u32CurUtcTimeSecond >= curEventUtcList[i].u32EndUtcSeconds)
            {
				Epg_DrawProfileEit(&sTStartTime, &sTEndTime, eventItem.event_name);
				WGUIF_DrawFilledRectangle(xOffset + sumOffset, yOffset, tempCharLen, EPG_INFO_EIT_ITEM_HEIGHT, EPG_EIT_FOCUS_COLOR);
				u32CurUtcTimeSecond = curEventUtcList[i].u32StartUtcSeconds + (curEventUtcList[i].u32EndUtcSeconds - curEventUtcList[i].u32StartUtcSeconds)/2;
				u16CurEITEventID = curProEventList[i];
			}
			if(i == 0 && u32CurUtcTimeSecond < curEventUtcList[i].u32StartUtcSeconds)
            {
				Epg_DrawProfileEit(&sTStartTime, &sTEndTime, eventItem.event_name);
				WGUIF_DrawFilledRectangle(xOffset + sumOffset, yOffset, tempCharLen, EPG_INFO_EIT_ITEM_HEIGHT, EPG_EIT_FOCUS_COLOR);
				u32CurUtcTimeSecond = curEventUtcList[i].u32StartUtcSeconds + (curEventUtcList[i].u32EndUtcSeconds - curEventUtcList[i].u32StartUtcSeconds)/2;
				u16CurEITEventID = curProEventList[i];
			}
		}
		if(eventItem.event_name != NULL && tempCharLen > 20)
        {
			Epg_DrawTxtCenter(xOffset + sumOffset, yOffset, tempCharLen-4 , EPG_INFO_EIT_ITEM_HEIGHT, eventItem.event_name, FONT_FRONT_COLOR_WHITE );
		}
		sumOffset += tempCharLen;
        //MLUI_DEBUG("i: %d, xOffset : %d,yOffset: %d, sumOffset: %d, tempCharLen: %d, tempSeconds: %d", i, xOffset, yOffset, sumOffset, tempCharLen, tempSeconds);
		if(i < iLen-1)
        {
			WGUIF_DrawFilledRectangle(xOffset + sumOffset-2, yOffset, 2, EPG_INFO_EIT_ITEM_HEIGHT, FONT_FRONT_COLOR_WHITE);
		}
	}

	if(iLen == 0)
    {
		if(iIndex == stListChannelItems.iSelect)
		{
			if(bFirst == MM_TRUE)
            {
				bFirst = MM_FALSE;
			}
			WGUIF_DrawFilledRectangle(xOffset, yOffset, EPG_INFO_EIT_LIST_PANEL_WIDTH, EPG_INFO_EIT_ITEM_HEIGHT, EPG_EIT_FOCUS_COLOR);
			u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond + UTC_TWO_HOUR_SECODES/2;
			Epg_DrawProfileEit(MM_NULL, MM_NULL, MM_NULL);

			u16CurEITEventID = 0;
		}
		Epg_DrawTxtCenter(xOffset, yOffset, EPG_INFO_EIT_LIST_PANEL_WIDTH , EPG_INFO_EIT_ITEM_HEIGHT, "No Program Information", FONT_FRONT_COLOR_WHITE );
	}

	if((stListChannelItems.iNoOfItems - 1) == iIndex)
	{
		MLUI_DEBUG("iNoOfItems: %d, iIndex: %d", stListChannelItems.iNoOfItems, iIndex);
		MBT_U8 i = index + 1;
		for(; i < EVENT_LIST_OF_PROGRAM_MAX; i++)
		{
			yOffset = stListChannelItems.iRowStart+ i*(stListChannelItems.iHeight+stListChannelItems.iSpace);
			WGUIF_DisplayReginTrueColorBmp( 0, 0, xOffset, yOffset, EPG_INFO_EIT_LIST_PANEL_WIDTH, EPG_INFO_EIT_ITEM_HEIGHT, pstFramBmp, MM_TRUE);
		}
	}
    return MM_TRUE;
}

static MBT_BOOL EpgChnListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    
    if(MM_TRUE == bSelect)
    {
        //MLUI_DEBUG("iIndex: %d fucos", iIndex);
		uif_ShareDrawCombinHBar(x , y, iWidth, BMPF_GetBMP(m_ui_Guide_Program_Focus_LeftIfor), BMPF_GetBMP(m_ui_Guide_Program_Focus_MiddleIfor), BMPF_GetBMP(m_ui_Guide_Program_Focus_RightIfor));
    }
    else
    {
        //MLUI_DEBUG("iIndex: %d not fucos", iIndex);
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_VOID EpgListInitTVPrg( LISTITEM *pListItem )
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

static MBT_VOID EpgListInitRadioPrg( LISTITEM *pListItem )
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


static MBT_VOID  uif_EPGPrgListInit(LISTITEM *pstList, MBT_S32 iType)
{
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    MBT_S32 me_StartX, me_StartY;		
    me_StartX = EPG_INFO_CHANNEL_LIST_START_X+2;
    me_StartY = EPG_INFO_CHANNEL_LIST_START_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = EPG_LIST_SPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = 4;
    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = 2;
    pstList->iWidth  = EPG_INFO_CHANNEL_LIST_WIDTH-2; 
    pstList->iHeight = EPG_INFO_ITEM_HEIGHT;

    pstList->iFontHeight = GWFONT_HEIGHT_SIZE18;
    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 2;
    pstList->pNoItemInfo = "NO these services";

    // Index
    pstList->iColPosition[0] = pstList->iColStart + 5;  

    // Service Name
    pstList->iColPosition[1] = pstList->iColPosition[0] + 45;  

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0]; 
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  


    pstList->ListReadFunction = NM_EPGMenu_ListReadItem;
    pstList->ListDrawBar = EpgChnListDraw;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 0;
    if(0 == iNum)
    {
        pstList->iSelect = 0;    
        return;
    }


    switch ( iType )
    {
        case 0:
            EpgListInitTVPrg( pstList );
            break;

        case 6:
            EpgListInitRadioPrg( pstList );
            break;

        default:
            EpgListInitTVPrg( pstList );
            break;
    }
}
/*
static void Epg_PrintTimer(TIMER_M *pstEpgSelectTime)
{
	MLUI_DEBUG("durationhour: %d", pstEpgSelectTime->durationhour);
	MLUI_DEBUG("durationMinute: %d", pstEpgSelectTime->durationMinute);
	MLUI_DEBUG("u16ServiceID: %d", pstEpgSelectTime->u16ServiceID);
	MLUI_DEBUG("uTimerProgramNo: %d", pstEpgSelectTime->uTimerProgramNo);
	MLUI_DEBUG("u32UtcTimeSecond: %d", pstEpgSelectTime->u32UtcTimeSecond);
	MLUI_DEBUG("year: %d", pstEpgSelectTime->year);
	MLUI_DEBUG("dateofWeek; %d", pstEpgSelectTime->dateofWeek);
	MLUI_DEBUG("Weekday: %d", pstEpgSelectTime->Weekday);
	MLUI_DEBUG("month: %d", pstEpgSelectTime->month);
	MLUI_DEBUG("date: %d", pstEpgSelectTime->date);
	MLUI_DEBUG("hour: %d", pstEpgSelectTime->hour);
	MLUI_DEBUG("minute: %d", pstEpgSelectTime->minute);
	MLUI_DEBUG("second: %d", pstEpgSelectTime->second);
	MLUI_DEBUG("uTimeZone: %d", pstEpgSelectTime->uTimeZone);
}
*/
static MBT_VOID ajustTimer2SystemTimeChanged(MBT_VOID)
{
	MBT_U8 i = 0;
    TMF_GetSysTime(&gstStartTime);
	if(gstStartTime.minute >= 30)
    {
		gstStartTime.minute = 30;
		gstStartTime.second = 0;
	}
	else
    {
		gstStartTime.minute = 0;
		gstStartTime.second = 0;
	}
	gstStartTime.u32UtcTimeSecond = gstStartTime.u32UtcTimeSecond - gstStartTime.u32UtcTimeSecond % UTC_HALF_OF_HOUR_SECODES;
	u32CurUtcTimeSecond = gstStartTime.u32UtcTimeSecond;
	memset(&gstEpgSelectTime, 0, sizeof(TIMER_M));
	memcpy(&gstEpgSelectTime, &gstStartTime, sizeof(TIMER_M));
	memset(&gstEndTime, 0, sizeof(TIMER_M));
	memcpy(&gstEndTime, &gstStartTime, sizeof(TIMER_M));
	for(i = 0; i < UTC_ONE_WEEK_DAYS; i++)
	{
	    TMF_TimeAdjustDatePlus(&gstEndTime);
	}
	gstEndTime.u32UtcTimeSecond = gstEndTime.u32UtcTimeSecond + UTC_ONE_WEEK_SECODES;
    //Epg_PrintTimer(&gstEpgSelectTime);
}

MBT_S32 uif_EPGMenu( MBT_S32 iPara )
{
    //MLUI_DEBUG("gtpl epg");
	MBT_S32 iKey;
	MBT_S32 iRetKey=DUMMY_KEY_BACK;
	MBT_BOOL bExit = MM_FALSE;
	MBT_BOOL bRefresh = MM_TRUE;
	MBT_BOOL bInDate = MM_FALSE;
	MBT_BOOL bInDetail = MM_FALSE;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 
    MBT_S32 iType = 0;
    MBT_U32 u32WaitTime = 2000;
    MBT_U32 u32PlayTime = 0xffffffff;
    MBT_BOOL bRedrawChList = MM_TRUE;
	MBT_BOOL bUpdateEventList = MM_FALSE;
    DBST_PROG *pstServiceInfo;
	EPG_EVENT *curEventUtcList = NULL;
	MBT_U16 *curEventIDList = NULL;
	MBT_CHAR buff[256] = {0};
	MBT_U8 i = 0;
	MBT_U8 iLen = 0;

	MBT_S32 font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);

	MBT_CHAR* strTitle[2][2]=
    {
        {
			"Program Guide",
        	"Program Guide",
        },
        {
        	"Program Guide",
        	"Program Guide",
        }
    };

	bFirst = MM_TRUE;
    if(MM_FALSE == uif_MallocAllEpgResouse())
    {
        MLUI_ERR("MallocAllEpgResouse Fail !!!");
        return iRetKey;
    }

    if(0 == uif_CreateUIPrgArray())
    {
        MLUI_ERR("CreateUIPrgArray Fail!!!,No Program !!!");
        uif_FreeAllEpgResouse();
        return iRetKey;
    }

    if(MM_NULL != uiv_pstPrgEditList)
    {
        MLUI_ERR("uif_ForceFree !!!");
        uif_ForceFree(uiv_pstPrgEditList);
    }

    uiv_pstPrgEditList = uif_ForceMalloc((sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum));
    if(MM_NULL == uiv_pstPrgEditList)
    {
        MLUI_ERR("uif_DestroyUIPrgArray!!!");
        uif_FreeAllEpgResouse();
        uif_DestroyUIPrgArray();
        return iRetKey;
    }

	uif_ShareDrawCommonPanel(strTitle[uiv_u8Language][0], NULL, MM_TRUE);
	uif_DisplayTimeOnCaptionStr(MM_TRUE, UICOMMON_TITLE_AREA_Y);  
	EPG_DrawHelpInfo();

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {	
        // TV
        iType = 0;
		Epg_DrawEpgInfoLiveType("DTV");
    }
    else
    {  
        // Radio  
        iType = 6;
		Epg_DrawEpgInfoLiveType("RADIO");
    }
	
	ajustTimer2SystemTimeChanged();
    //Epg_PrintTimer(&gstEpgSelectTime);
	memset(&stListChannelItems, 0, sizeof(LISTITEM));
    uif_EPGPrgListInit(&stListChannelItems,iType);
	
	pstServiceInfo = m_GetUIPrg(stListChannelItems.iSelect);//show first program Name
	if(pstServiceInfo != NULL)
	{
		memset(buff,0,sizeof(buff));
        if(1 == DBSF_ListGetLCNStatus())
        {
            sprintf(buff,"%03d %s", pstServiceInfo->usiChannelIndexNo, pstServiceInfo->cServiceName);
        }
        else
        {
            sprintf(buff,"%03d %s", stListChannelItems.iSelect+1, pstServiceInfo->cServiceName);
        }
		Epg_DrawProfilePrgName(buff);
	}
	
	Epg_DrawEitListStructure();

    bRefresh |= uif_ResetAlarmMsgFlag();
	WGUIF_ClsScreen(EPG_TV_WINDOW_START_X, EPG_TV_WINDOW_START_Y, EPG_TV_WINDOW_WIDTH, EPG_TV_WINDOW_HEIGHT);
	MLMF_AV_SetVideoWindow(EPG_TV_WINDOW_START_X, EPG_TV_WINDOW_START_Y, EPG_TV_WINDOW_WIDTH, EPG_TV_WINDOW_HEIGHT);
	Epg_DrawVideoStructure();
	while ( !bExit )  
	{
        //MLUI_DEBUG("while start");
		Epg_DrawProfileDate();
		if(!bInDetail)
		{
			Epg_DrawEpgListHeadTime(&gstEpgSelectTime);
			Epg_DrawEpgListHeadDate(&gstEpgSelectTime, bInDate);
		}
		uif_DisplayTimeOnCaptionStr(MM_TRUE, UICOMMON_TITLE_AREA_Y);  

        if(MM_TRUE == bRedrawChList)
        {
            stListChannelItems.bUpdatePage = MM_TRUE;   
            bRedrawChList = MM_FALSE; 
        }

        if ( stListChannelItems.bUpdateItem == MM_TRUE || stListChannelItems.bUpdatePage== MM_TRUE )
        {
            bRefresh |= UCTRF_ListOnDraw(&stListChannelItems);
        }

		#if(1 == ENABLE_ADVERT)
		Advert_ShowAdBitmap(0,0,BROWSER_AD_EPG);
		#endif
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

		iKey = uif_ReadKey(u32WaitTime);
		u32WaitTime = 2000;
		switch ( iKey )
		{
			case DUMMY_KEY_USB_OUT:
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
				break;
				
            case DUMMY_KEY_PRGLISTUPDATED:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGITEMUPDATED:
                stListChannelItems.bUpdateItem = MM_TRUE;
                break;
                
			case DUMMY_KEY_UPARROW:
			case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
				bInDate = MM_FALSE;
				if(0 == stListChannelItems.iNoOfItems)
				{
					break;
				}

                u32WaitTime = 300;                    
                u32PlayTime = MLMF_SYS_GetMS() + 300;
				UCTRF_ListGetKey(&stListChannelItems, iKey);
				pstServiceInfo = m_GetUIPrg(stListChannelItems.iSelect);

				if(MM_NULL == pstServiceInfo)
				{
					break;
				}
				memset(buff,0,sizeof(buff));
                if(1 == DBSF_ListGetLCNStatus())
                {
                    sprintf(buff,"%03d %s", pstServiceInfo->usiChannelIndexNo, pstServiceInfo->cServiceName);
                }
                else
                {
                    sprintf(buff,"%03d %s", stListChannelItems.iSelect+1, pstServiceInfo->cServiceName);
                }
				Epg_DrawProfilePrgName(buff);
				break;
            case DUMMY_KEY_LEFTARROW:
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
				if(bInDate)
                {
					TMF_TimeAdjustDateMinus(&gstEpgSelectTime);
					gstEpgSelectTime.u32UtcTimeSecond -= UTC_ONE_DAY_SECODES;
					if(gstEpgSelectTime.u32UtcTimeSecond < gstStartTime.u32UtcTimeSecond)
                    {
						memcpy(&gstEpgSelectTime, &gstEndTime, sizeof(TIMER_M));
						MBT_U8 j = 0;
						for(j = 0; j < 4; j++)
                        {
							TMF_TimeAdjustHalfHourMinus(&gstEpgSelectTime);
						}
						gstEpgSelectTime.u32UtcTimeSecond -= UTC_TWO_HOUR_SECODES;
					}
					u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
					stListChannelItems.bUpdatePage = MM_TRUE;   
					break;
				}
				else
                {
					curEventIDList = uiv_pu16EventIdList + (stListChannelItems.iSelect%EVENT_LIST_OF_PROGRAM_MAX)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
					iLen = Epg_LenOfEventList(curEventIDList);
					curEventUtcList = uiv_pu16EventUtcList + (stListChannelItems.iSelect%EVENT_LIST_OF_PROGRAM_MAX)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
					for(i = 0; i < iLen; i++)
                    {
						if(u32CurUtcTimeSecond < curEventUtcList[i].u32EndUtcSeconds && u32CurUtcTimeSecond >= curEventUtcList[i].u32StartUtcSeconds)
                        {
							if(i == 0)
                            {
								if(gstStartTime.u32UtcTimeSecond == gstEpgSelectTime.u32UtcTimeSecond)
                                {
									memcpy(&gstEpgSelectTime, &gstEndTime, sizeof(TIMER_M));
									MBT_U8 j = 0;
									for(j = 0; j < 4; j++)
                                    {
										TMF_TimeAdjustHalfHourMinus(&gstEpgSelectTime);
									}
									gstEpgSelectTime.u32UtcTimeSecond -= UTC_TWO_HOUR_SECODES;
									u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
								}
								else
                                {
									TMF_TimeAdjustHalfHourMinus(&gstEpgSelectTime);
									gstEpgSelectTime.u32UtcTimeSecond -= UTC_HALF_OF_HOUR_SECODES;
									u32CurUtcTimeSecond -= UTC_ONE_MINUTE_SECODES;
								}
								stListChannelItems.bUpdatePage = MM_TRUE;   
                                //Epg_PrintTimer(&gstEpgSelectTime);
								break;
							}
							u32CurUtcTimeSecond = curEventUtcList[i-1].u32StartUtcSeconds + (curEventUtcList[i-1].u32EndUtcSeconds - curEventUtcList[i-1].u32StartUtcSeconds)/2;
                            //MLUI_DEBUG("i: %d, u32CurUtcTimeSecond: %d, cur start: %d, cur end: %d, next start: %d, next end: %d", i, u32CurUtcTimeSecond, curEventUtcList[i].u32StartUtcSeconds, curEventUtcList[i].u32EndUtcSeconds, curEventUtcList[i-1].u32StartUtcSeconds, curEventUtcList[i-1].u32EndUtcSeconds);
							break;
						}
					}
					if(iLen == 0)
                    {
						if(gstStartTime.u32UtcTimeSecond == gstEpgSelectTime.u32UtcTimeSecond)
                        {
							memcpy(&gstEpgSelectTime, &gstEndTime, sizeof(TIMER_M));
							MBT_U8 j = 0;
							for(j = 0; j < 4; j++)
                            {
								TMF_TimeAdjustHalfHourMinus(&gstEpgSelectTime);
							}
							gstEpgSelectTime.u32UtcTimeSecond -= UTC_TWO_HOUR_SECODES;
							u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
						}
						else
                        {
							TMF_TimeAdjustHalfHourMinus(&gstEpgSelectTime);
							gstEpgSelectTime.u32UtcTimeSecond -= UTC_HALF_OF_HOUR_SECODES;
							u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
						}
						stListChannelItems.bUpdatePage = MM_TRUE;   
                        //Epg_PrintTimer(&gstEpgSelectTime);
						break;
					}
					stListChannelItems.bUpdateItem = MM_TRUE;
				}
                break;

            case DUMMY_KEY_RIGHTARROW:
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
				if(bInDate)
                {
					TMF_TimeAdjustDatePlus(&gstEpgSelectTime);
					gstEpgSelectTime.u32UtcTimeSecond += UTC_ONE_DAY_SECODES;
					if(gstEpgSelectTime.u32UtcTimeSecond > gstEndTime.u32UtcTimeSecond)
                    {
						memcpy(&gstEpgSelectTime, &gstStartTime, sizeof(TIMER_M));
					}
					u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
					stListChannelItems.bUpdatePage = MM_TRUE;   
					break;
				}
				else
                {
					curEventIDList = uiv_pu16EventIdList + (stListChannelItems.iSelect%EVENT_LIST_OF_PROGRAM_MAX)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
					iLen = Epg_LenOfEventList(curEventIDList);
					curEventUtcList = uiv_pu16EventUtcList + (stListChannelItems.iSelect%EVENT_LIST_OF_PROGRAM_MAX)*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
					for(i = 0; i < iLen; i++)
                    {
						if(u32CurUtcTimeSecond < curEventUtcList[i].u32EndUtcSeconds && u32CurUtcTimeSecond >= curEventUtcList[i].u32StartUtcSeconds)
                        {
							if(i == (iLen - 1))
                            {
								if(gstEndTime.u32UtcTimeSecond - UTC_TWO_HOUR_SECODES == gstEpgSelectTime.u32UtcTimeSecond)
                                {
									memcpy(&gstEpgSelectTime, &gstStartTime, sizeof(TIMER_M));
									u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
								}
								else
                                {
									TMF_TimeAdjustHalfHourPlus(&gstEpgSelectTime);
									gstEpgSelectTime.u32UtcTimeSecond += UTC_HALF_OF_HOUR_SECODES;
									u32CurUtcTimeSecond += UTC_ONE_MINUTE_SECODES;
								}
                                //Epg_PrintTimer(&gstEpgSelectTime);
								stListChannelItems.bUpdatePage = MM_TRUE;   
								break;
							}
							u32CurUtcTimeSecond = curEventUtcList[i+1].u32StartUtcSeconds + (curEventUtcList[i+1].u32EndUtcSeconds - curEventUtcList[i+1].u32StartUtcSeconds)/2;
                            //MLUI_DEBUG("i: %d, u32CurUtcTimeSecond: %d, cur start: %d, cur end: %d, next start: %d, next end: %d", i, u32CurUtcTimeSecond, curEventUtcList[i].u32StartUtcSeconds, curEventUtcList[i].u32EndUtcSeconds, curEventUtcList[i+1].u32StartUtcSeconds, curEventUtcList[i+1].u32EndUtcSeconds);
							break;
						}
						if(i == (iLen - 1))
                        {
							if(gstEndTime.u32UtcTimeSecond - UTC_TWO_HOUR_SECODES == gstEpgSelectTime.u32UtcTimeSecond)
                            {
								memcpy(&gstEpgSelectTime, &gstStartTime, sizeof(TIMER_M));
								u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
							}
							else
                            {
								TMF_TimeAdjustHalfHourPlus(&gstEpgSelectTime);
								gstEpgSelectTime.u32UtcTimeSecond += UTC_HALF_OF_HOUR_SECODES;
								u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
							}
                            //Epg_PrintTimer(&gstEpgSelectTime);
							stListChannelItems.bUpdatePage = MM_TRUE;   
							break;
						}
					}
					if(iLen == 0)
                    {
						if(gstEndTime.u32UtcTimeSecond - UTC_TWO_HOUR_SECODES == gstEpgSelectTime.u32UtcTimeSecond)
                        {
							memcpy(&gstEpgSelectTime, &gstStartTime, sizeof(TIMER_M));
							u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
						}
						else
                        {
							TMF_TimeAdjustHalfHourPlus(&gstEpgSelectTime);
							gstEpgSelectTime.u32UtcTimeSecond += UTC_HALF_OF_HOUR_SECODES;
							u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
						}
                        //Epg_PrintTimer(&gstEpgSelectTime);
						stListChannelItems.bUpdatePage = MM_TRUE;   
						break;
					}

					stListChannelItems.bUpdateItem = MM_TRUE;
				}
                break;

			case -1:		
                //MLUI_DEBUG("-1");
                bRefresh |= uif_AlarmMsgBoxes(EPG_TV_WINDOW_START_X+(EPG_TV_WINDOW_WIDTH-EPG_TV_MSGBAR_WIDTH)/2, EPG_TV_WINDOW_START_Y+(EPG_TV_WINDOW_HEIGHT-EPG_TV_MSGBAR_HEIGHT)/2, EPG_TV_MSGBAR_WIDTH, EPG_TV_MSGBAR_HEIGHT);
                if (MLMF_SYS_GetMS() >= u32PlayTime)
				{
					u32PlayTime = 0xffffffff;
					if(stListChannelItems.iNoOfItems > 0)
					{
					    pstServiceInfo = m_GetUIPrg(stListChannelItems.iSelect);
						bRefresh |= uif_ChnListPlayPrg(pstServiceInfo);
                        uif_SavePrgToBoxInfo(pstServiceInfo);
					}
				}
				
				if(bInDetail == MM_TRUE)
				{
					break;
				}
				
				if(stListChannelItems.iNoOfItems > 0)
				{
					
					MBT_U8 index = 0;
					MBT_U16 *curProEventList = MM_NULL;
					MBT_U16 startTv	= stListChannelItems.iSelect - stListChannelItems.iSelect%EVENT_LIST_OF_PROGRAM_MAX;
					for(index = 0; index < EVENT_LIST_OF_PROGRAM_MAX; index++)
					{
						curProEventList = uiv_pu16EventIdList + index*MAX_NUMBER_EVENT_OF_ONE_PROGRAM;
						uif_GetEventListItemTotal(m_GetUIPrg(startTv + index), gstEpgSelectTime, curProEventList, &bUpdateEventList);
						if(bUpdateEventList)
                        {
							MLUI_DEBUG("eit updated");
							bUpdateEventList = MM_FALSE;
                            //u32CurUtcTimeSecond = gstEpgSelectTime.u32UtcTimeSecond;
							stListChannelItems.bUpdatePage = MM_TRUE;   
							break;
						}
					}
				}
				break;

			case DUMMY_KEY_YELLOW_SUBSCRIBE:					
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
				bInDate = MM_TRUE;
				bRefresh = MM_TRUE;
				break;
            case DUMMY_KEY_INFO:  
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
                
				{

					bRefresh = MM_TRUE;
					UI_EVENT eventItem;
					pstServiceInfo = m_GetUIPrg(stListChannelItems.iSelect);//show first program Name
					if(pstServiceInfo != MM_NULL && DBSF_GetEventByEventID(pstServiceInfo->stPrgTransInfo.u32TransInfo , pstServiceInfo->u16ServiceID, u16CurEITEventID, &eventItem))
					{
						if(eventItem.item_description)
                        {
							Epg_DrawEitDetail(eventItem.item_description,MM_TRUE);
						}
					}
					Epg_DrawEitDetail("No Program Information", MM_TRUE);
                    //MLUI_DEBUG("eventid: %d, %s", u16CurEITEventID, eventItem.event_name);
				}
				bInDetail = MM_TRUE;
				break;

			case DUMMY_KEY_SELECT:					
				if(bInDetail == MM_TRUE)
			    {
				    break;
			    }
				if(u16CurEITEventID != 0)
				{
					WDCtrF_PutWindow(uif_Subscribe, u16CurEITEventID);//jump to epg eit edit menu
					iRetKey = DUMMY_KEY_ADDWINDOW;
					bExit = MM_TRUE;
					break;
				}
				break;
			case DUMMY_KEY_MENU:
			case DUMMY_KEY_EXIT:
				if(bInDetail == MM_TRUE)
                {
					Epg_DrawEitDetail(MM_NULL,MM_TRUE);
					if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
					{	
						Epg_DrawEpgInfoLiveType("DTV");
					}
					else
					{    
						Epg_DrawEpgInfoLiveType("RADIO");
					}
					Epg_DrawEpgListHeadTime(&gstEpgSelectTime);
					Epg_DrawEpgListHeadDate(&gstEpgSelectTime, bInDate);
					Epg_DrawEitListStructure();
					stListChannelItems.bUpdatePage = MM_TRUE;   
					bInDetail = MM_FALSE;
					break;
				}

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
			default:
                //MLUI_DEBUG("default key: %d", iKey);
                if(uif_ShowMsgList(EPG_TV_WINDOW_START_X+(EPG_TV_WINDOW_WIDTH-EPG_TV_MSGBAR_WIDTH)/2, EPG_TV_WINDOW_START_Y+(EPG_TV_WINDOW_HEIGHT-EPG_TV_MSGBAR_HEIGHT)/2, EPG_TV_MSGBAR_WIDTH, EPG_TV_MSGBAR_HEIGHT))
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

	WGUIF_SetFontHeight(font_height);
	WGUIF_ClsFullScreen();
	uif_FreeAllEpgResouse();
	uif_DestroyUIPrgArray();
	if(MM_NULL != uiv_pstPrgEditList)
	{
		uif_ForceFree(uiv_pstPrgEditList);
		uiv_pstPrgEditList = MM_NULL;
	}
	return iRetKey;
}

