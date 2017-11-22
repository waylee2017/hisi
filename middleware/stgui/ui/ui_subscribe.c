#include "ui_share.h"


#define SUBSCRIBE_LISTITEM_MAX 9
#define SUBSCRIBE_MAXBYTE_PERCOLUM 60
#define SUBSCRIBE_LISTITEM_GAP 4
#define SUBSCRIBE_LISTITEM_UNFOCUS_COLOR 0xFFFFFFFF

#define SUBSCRIBE_HELP_X_DIATANCE 5//文字与图标的距离
#define SUBSCRIBE_HELP_Y 		660 //subscribe底部的信息提示y坐标
#define SUBSCRIBE_HELP_X_EXIT 	390//220 //edit的x坐标
#define SUBSCRIBE_HELP_X_DELETE 	534//300 //delete的x坐标
#define SUBSCRIBE_HELP_X_EDIT 		676//380 //edit的x坐标
#define SUBSCRIBE_HELP_X_ADD 		818//460 //add的x坐标
#define SUBSCRIBE_HELP_X_OK 		(SUBSCRIBE_HELP_X_DELETE) //ok的x坐标
#define SUBSCRIBE_HELP_X_EXIT1 		(SUBSCRIBE_HELP_X_EDIT) //exit1的x坐标

#define SUBSCRIBE_HEAD_X_EVENT 		120//(70) //event的内容的x坐标
#define SUBSCRIBE_HEAD_Y_MARION_TOP 125//100 //标题栏距离顶部的距离
#define SUBSCRIBE_HEAD_ITEM_WIDTH 	176//(94)//每个标题的宽度
#define SUBSCRIBE_ITEM_HEIGHT 		45//(36)//每个item的高度
#define SUBSCRIBE_LIST_FIRST_MARGIN_TOP (8)//第一个item的距离标题的距离
#define SUBSCRIBE_LIST_FIRST_Y (SUBSCRIBE_HEAD_Y_MARION_TOP+SUBSCRIBE_ITEM_HEIGHT + SUBSCRIBE_LIST_FIRST_MARGIN_TOP)


#define SUBSCRIBE_EPG_EVENT_EDIT_BACKGROUD_COLOR		(0xff371934)
#define SUBSCRIBE_EPG_EVENT_EDIT_WIDTH			(460)
#define SUBSCRIBE_EPG_EVENT_EDIT_HIEGHT			(380)
#define SUBSCRIBE_EPG_EVENT_EDIT_START_X		((OSD_REGINMAXWIDHT - SUBSCRIBE_EPG_EVENT_EDIT_WIDTH)/2)//180
#define SUBSCRIBE_EPG_EVENT_EDIT_START_Y		((OSD_REGINMAXHEIGHT - SUBSCRIBE_EPG_EVENT_EDIT_HIEGHT)/2)//(120)

#define SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT	(38)

#define SUBSCRIBE_EPG_EVENT_EDIT_LIST_START_X		(SUBSCRIBE_EPG_EVENT_EDIT_START_X+8)
#define SUBSCRIBE_EPG_EVENT_EDIT_LIST_START_Y		(SUBSCRIBE_EPG_EVENT_EDIT_START_Y+2*SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT)
#define SUBSCRIBE_EPG_EVENT_EDIT_LIST_WIDTH			(440)
#define EDIT_LIST_ITEM_GAP		SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT
#define EDIT_LISTITEMS_NUM		8

static MBT_U8 *uiv_pu8SubscribeMap = MM_NULL;
static EPG_TIMER_M  *uiv_pstSubscribeTimer = MM_NULL;

static MBT_U8 gu8CurEventIndex = 0;

typedef enum {
	FROM_REMIND=0,
	FROM_EPG=1
}REMINDER_FROM;

typedef enum {
	CHANNEL_TYPE_TV,
	CHANNEL_TYPE_RADIO
}REMINDER_CHANNEL_TYPE;

typedef enum {
	REPEAT_ONCE,
	REPEAT_DAILY,
	REPEAT_WEEKLY
}REMINDER_REPEAT;

enum {
	MODE_VIEW,
	MODE_RECORD
}REMINDER_MODE;

enum {
	EVENT_OK,
	EVENT_CONFLICT,
	EVENT_INVALID
}EVENT_STATUS;



//static EPG_TIMER_M gstCurEpgTimer;
static MBT_VOID uif_Subscribe_SequenceByEventTime(MBT_VOID);
static MBT_S32  uif_ScheduleDlg(MBT_U16 u16EventId,MBT_U32 key,MBT_U8 u8SelectIndex);

static void ReminderUpdateEditPrg(EDIT *pstEdit, MBT_S32 iType);

static MBT_VOID uif_Subscribe_SaveChangeOrNo(EPG_TIMER_M* stNewTimerList )
{
	MLUI_DEBUG("uif_Subscribe_SaveChangeOrNo...");
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

    uif_SetTimer2File(stNewTimerList,pTriggerTimer);
    uif_SetTimer(stNewTimerList,pTriggerTimer);

    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimer);
    uif_Subscribe_SequenceByEventTime();
	MLUI_DEBUG("...");
}

static MBT_VOID uif_Subscribe_SequenceByEventTime(MBT_VOID)
{	
    MBT_S32 i,j;
    MBT_S32 s32BookCount = 0;
    EPG_TIMER_M tTempTimeSet;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;
    MBT_U8 *pu8Index = uiv_pu8SubscribeMap;
    MBT_U8 u8Index;
    MBT_U8 u8Index1;
	MLUI_DEBUG("s32BookCount: %d", s32BookCount);

    if(MM_NULL == pstSubTimer||MM_NULL == pu8Index)
    {
        return;
    }

    s32BookCount = uif_GetValideSubscribeNum();
	for (i = 0; i < s32BookCount; i++)
    {   
        for(j = i+1; j < s32BookCount; j++) 
        {
            u8Index = pu8Index[i];
            u8Index1 = pu8Index[j];
            if(u8Index >= MAX_EPG_TIMER_NUM)
            {
                break;
            }
            if(pstSubTimer[u8Index].stTimer.u32UtcTimeSecond > pstSubTimer[u8Index1].stTimer.u32UtcTimeSecond)
            { 
                tTempTimeSet = pstSubTimer[u8Index1];
                pstSubTimer[u8Index1] = pstSubTimer[u8Index];
                pstSubTimer[u8Index] = tTempTimeSet;
            }
        } 
    }
	
}

static MBT_CHAR * repeat2String(MBT_U8 repeat){
	MBT_CHAR* pStrRepeatMode[3] =
    {
        "Once",
		"Daily",
		"Weekly"
    };
	
	switch(repeat){
			case m_Today:
				return pStrRepeatMode[REPEAT_ONCE];
			case m_EveryDay:
				return pStrRepeatMode[REPEAT_DAILY];
			case m_EveryWeek:
				return pStrRepeatMode[REPEAT_WEEKLY];
			default:
				return pStrRepeatMode[REPEAT_ONCE];
		}
	return pStrRepeatMode[REPEAT_ONCE];
}

static MBT_U8 repeat2UI(MBT_U8 repeat){
	
	switch(repeat){
			case m_Today:
				return REPEAT_ONCE;
			case m_EveryDay:
				return REPEAT_DAILY;
			case m_EveryWeek:
				return REPEAT_WEEKLY;
			default:
				return REPEAT_ONCE;
		}
	return REPEAT_ONCE;
}

static MBT_BOOL uif_SubscribeListReadItem(MBT_S32 iIndex,MBT_CHAR* pItem )
{
    EPG_TIMER_M *pstTempTimer;
    MBT_S32 iLen;
	MBT_S8 endHour = 0;
	MBT_S8 endMinute = 0;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;
    MBT_U8 *pu8Index = uiv_pu8SubscribeMap;
    if ( pItem == MM_NULL||MM_NULL == pstSubTimer||MM_NULL == pu8Index)
    {
        return MM_FALSE;
    }

    if(pu8Index[iIndex] >= MAX_EPG_TIMER_NUM)
    {
        return MM_FALSE;
    }
    pstTempTimer = &pstSubTimer[pu8Index[iIndex]];


	//event
    iLen = sprintf(pItem, "%03d", iIndex +1);
    pItem[SUBSCRIBE_MAXBYTE_PERCOLUM-1] = 0;
	//program
    iLen = sprintf(pItem+SUBSCRIBE_MAXBYTE_PERCOLUM, "%s", pstTempTimer->acEventName);
    pItem[2*SUBSCRIBE_MAXBYTE_PERCOLUM-1] = 0;
	//date
    iLen = sprintf(pItem+2*SUBSCRIBE_MAXBYTE_PERCOLUM, "%02d/%02d", pstTempTimer->stTimer.month, pstTempTimer->stTimer.date);
    pItem[3*SUBSCRIBE_MAXBYTE_PERCOLUM-1] = 0;
	//time
	endMinute = pstTempTimer->stTimer.minute + pstTempTimer->stTimer.durationMinute;
	if(endMinute >= 60)
	{
		endMinute = endMinute%60;
		endHour++;
	}
	endHour += pstTempTimer->stTimer.hour + pstTempTimer->stTimer.durationhour;
	if(endHour >= 24)
	{
		endHour = endHour%24;
	}
	iLen = sprintf(pItem+3*SUBSCRIBE_MAXBYTE_PERCOLUM, "%02d:%02d-%02d:%02d", pstTempTimer->stTimer.hour, pstTempTimer->stTimer.minute, endHour,endMinute);
    pItem[4*SUBSCRIBE_MAXBYTE_PERCOLUM-1] = 0;
	//repeat
	iLen = sprintf(pItem+4*SUBSCRIBE_MAXBYTE_PERCOLUM, "%s", repeat2String(pstTempTimer->stTimer.dateofWeek));
    pItem[5*SUBSCRIBE_MAXBYTE_PERCOLUM-1] = 0;

		//status
    if(pstTempTimer->stTimer.dateofWeek) 
    {
        //record or view
        if(pstTempTimer->stTimer.bRecord) 
        {
            pItem[5*SUBSCRIBE_MAXBYTE_PERCOLUM] = CO_RECORD;
        }
        else
        {
            pItem[5*SUBSCRIBE_MAXBYTE_PERCOLUM] = CO_SUBSCRIBE;
        }
    }
    else
    {
        pItem[5*SUBSCRIBE_MAXBYTE_PERCOLUM] = CO_NULL;
    }

    return MM_TRUE;
}

static MBT_BOOL SubscribeListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
		uif_ShareDrawCombinHBar(x , y, iWidth, BMPF_GetBMP(m_ui_Guide_Common_LeftIfor), BMPF_GetBMP(m_ui_Guide_Common_MiddleIfor), BMPF_GetBMP(m_ui_Guide_Common_RightIfor));
    }
    else
    {
		WGUIF_DisplayReginTrueColorBmp( 0, 0, x, y, iWidth, iHeight+2 , BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_VOID uif_SubscribeUpdateEventList(LISTITEM *pstList)
{
    MBT_S32 iIndex = 0;
    UI_PRG  stPrgInfo;
    TIMER_M *pTriggerTimer;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;
    MBT_U8 *pu8Index = uiv_pu8SubscribeMap;

    if (MM_NULL == pstSubTimer||MM_NULL == pu8Index)
    {
        return;
    }

    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        return ;
    }

    uif_GetTimerFromFile(pstSubTimer,pTriggerTimer);
    pstList->iNoOfItems = 0;
    for(iIndex = 0; iIndex < MAX_EPG_TIMER_NUM; iIndex++)
    {
        if(pstSubTimer[iIndex].stTimer.dateofWeek)
        {
            if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stPrgInfo,pstSubTimer[iIndex].stTimer.uTimerProgramNo,pstSubTimer[iIndex].stTimer.u16ServiceID))
            {
                if(SKIP_BIT_MASK != (stPrgInfo.stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    pu8Index[pstList->iNoOfItems] = iIndex;
                    pstList->iNoOfItems++;
                    continue;
                }
            }
            pstSubTimer[iIndex].stTimer.dateofWeek = 0;
        }
    }
    uif_Subscribe_SequenceByEventTime();

    uif_ForceFree(pTriggerTimer);
}

static MBT_VOID uif_Subscribe_InitDrawItems(LISTITEM *pstList)
{
    MBT_S32 iIndex = 0;
    UI_PRG  stPrgInfo;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;
    MBT_U8 *pu8Index = uiv_pu8SubscribeMap;
    
    if (MM_NULL == pstSubTimer||MM_NULL == pu8Index)
    {
        return;
    }

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = SUBSCRIBE_MAXBYTE_PERCOLUM;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	

    pstList->iColStart = SUBSCRIBE_HEAD_X_EVENT;
    pstList->iRowStart = SUBSCRIBE_LIST_FIRST_Y; 
    pstList->iPageMaxItem = SUBSCRIBE_LISTITEM_MAX;

	pstList->iFontHeight = SMALL_GWFONT_HEIGHT;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;    
    pstList->iSpace  = SUBSCRIBE_LISTITEM_GAP;
    pstList->iWidth  = 6*SUBSCRIBE_HEAD_ITEM_WIDTH;
    pstList->iHeight = SUBSCRIBE_ITEM_HEIGHT;

    pstList->iColumns = 6;
    pstList->iColPosition[0] = pstList->iColStart;
    pstList->iColPosition[1] = pstList->iColPosition[0] + SUBSCRIBE_HEAD_ITEM_WIDTH;
    pstList->iColPosition[2] = pstList->iColPosition[1] + SUBSCRIBE_HEAD_ITEM_WIDTH;
    pstList->iColPosition[3] = pstList->iColPosition[2] + SUBSCRIBE_HEAD_ITEM_WIDTH;
	pstList->iColPosition[4] = pstList->iColPosition[3] + SUBSCRIBE_HEAD_ITEM_WIDTH;
	pstList->iColPosition[5] = pstList->iColPosition[4] + SUBSCRIBE_HEAD_ITEM_WIDTH;

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];  
    pstList->iColWidth[2] = pstList->iColPosition[3]-pstList->iColPosition[2];  
	pstList->iColWidth[3] = pstList->iColPosition[4]-pstList->iColPosition[3]; 
	pstList->iColWidth[4] = pstList->iColPosition[5]-pstList->iColPosition[4]; 
    pstList->iColWidth[5] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[5];  
    pstList->pNoItemInfo = "No booked program!";

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iNoOfItems = 0;
    pstList->ListReadFunction = uif_SubscribeListReadItem;
    pstList->ListDrawBar = SubscribeListDraw;
    pstList->cHavesScrollBar = 1;

    for(iIndex = 0; iIndex < MAX_EPG_TIMER_NUM; iIndex++)
    {
        if(pstSubTimer[iIndex].stTimer.dateofWeek)
        {
            if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stPrgInfo,pstSubTimer[iIndex].stTimer.uTimerProgramNo,pstSubTimer[iIndex].stTimer.u16ServiceID))
            {
                if(SKIP_BIT_MASK != (stPrgInfo.stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    pu8Index[pstList->iNoOfItems] = iIndex;
                    pstList->iNoOfItems++;
                    continue;
                }
            }
            pstSubTimer[iIndex].stTimer.dateofWeek = 0;
        }
    }

}

MBT_S32 uif_GetValideSubscribeNum(MBT_VOID)
{
    MBT_S32 iTotalSubscribe = 0;
    MBT_S32 i = 0;
    TIMER_M stTempTime;
    MBT_BOOL bHavePassedTimer = MM_FALSE;
    UI_PRG  stPrgInfo;
    EPG_TIMER_M *pEpgTimer;
    TIMER_M *pTriggerTimer;

    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return iTotalSubscribe;
    }

    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        uif_ForceFree(pEpgTimer);
        return iTotalSubscribe;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimer);
    TMF_GetSysTime(&stTempTime);

    //查找是否有过时的预订
    for (i = 0;i < MAX_EPG_TIMER_NUM; i++)
    {
//    	MLUI_DEBUG("i: %d, dateofWeek: %d , utcsecond: %d", i , pEpgTimer[i].stTimer.dateofWeek, pEpgTimer[i].stTimer.u32UtcTimeSecond);

		if ( pEpgTimer[i].stTimer.dateofWeek == m_Today )
        {
            if(1 ==  TMF_CompareThe2Timers(stTempTime,pEpgTimer[i].stTimer))
            {
                //找到过时的预订
                if(i == MAX_EPG_TIMER_NUM-1)
                {
                    pEpgTimer[i].stTimer.dateofWeek = 0;
                }
                else
                {
                    memmove((MBT_U8 *)(pEpgTimer+i),(MBT_U8 *)(pEpgTimer+i+1),sizeof(EPG_TIMER_M)*(MAX_EPG_TIMER_NUM-i-1));
                    pEpgTimer[MAX_EPG_TIMER_NUM - 1].stTimer.dateofWeek = 0;
                }
                bHavePassedTimer = MM_TRUE;
				MLUI_DEBUG("remove----- i: %d, dateofWeek: %d", i , pEpgTimer[i].stTimer.dateofWeek);
            }     
        }
		
    }

    if(bHavePassedTimer)
    {
    	MLUI_DEBUG("bHavePassedTimer...");
        uif_SetTimer2File(pEpgTimer,pTriggerTimer);
        uif_SetTimer(pEpgTimer,pTriggerTimer);
    }

    for(i = 0;i<MAX_EPG_TIMER_NUM;i++)
    {
        if(pEpgTimer[i].stTimer.dateofWeek)
        {
            if(DVB_INVALID_LINK != DBSF_DataGetPrgTransXServicID(&stPrgInfo,pEpgTimer[i].stTimer.uTimerProgramNo,pEpgTimer[i].stTimer.u16ServiceID))
            {
                if(SKIP_BIT_MASK != (stPrgInfo.stService.ucProgram_status&SKIP_BIT_MASK))
                {
                    iTotalSubscribe ++;
                }
            }
        }
    }
    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimer);
    return iTotalSubscribe;
}

/*
*	根据传入的参数，底部提示信息不同
*	iPara:0表示从reminder入口进入
*
*/
static MBT_VOID uif_SubscribeHelpInfo(MBT_S32 iPara)
{
	MBT_S32 x;
    MBT_S32 y = SUBSCRIBE_HELP_Y;
    MBT_S32 s32Yoffset;
    MBT_S32 s32StrLen;
    MBT_S32 font_height;
    MBT_S32 font_ori_height;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR *pstring;
	MBT_CHAR* infostr[2][5]=
	{
		{
			"Exit",
			"Delete",
			"Edit",
			"Add",
			"Confirm"
		},
		{
			"Exit",
			"Delete",
			"Edit",
			"Add",
			"Confirm"
		}
	};

	pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
	WGUIF_DisplayReginTrueColorBmp( 0, 0, 0, SUBSCRIBE_HELP_Y, OSD_REGINMAXWIDHT, 40 , pstFramBmp, MM_TRUE);
	
	font_height =  SMALL_GWFONT_HEIGHT;
	font_ori_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(font_height);

    if(iPara != 0)
    {
		//OK
		x = SUBSCRIBE_HELP_X_OK;
		pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
		WGUIF_DisplayReginTrueColorBmp(x, y+6, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
		
		pstring = infostr[uiv_u8Language][4];
		s32StrLen = strlen(pstring);
		s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
		WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+6,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

        //Exit
        x = SUBSCRIBE_HELP_X_EXIT1+20;
        pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
        WGUIF_DisplayReginTrueColorBmp(x, y+6, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

        pstring = infostr[uiv_u8Language][0];
        s32StrLen = strlen(pstring);
        s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
        WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+6,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

        return;
	}

	//Exit
	x = SUBSCRIBE_HELP_X_EXIT;
	pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y+6, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

	pstring = infostr[uiv_u8Language][0];
	s32StrLen = strlen(pstring);
	s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+6,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);

    //Delete
	x = SUBSCRIBE_HELP_X_DELETE;
	pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_BlueIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y+3, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

	pstring = infostr[uiv_u8Language][1];
	s32StrLen = strlen(pstring);
	s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+3,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);
	
	//Edit
	x = SUBSCRIBE_HELP_X_EDIT;
	pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y+3, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

	pstring = infostr[uiv_u8Language][2];
	s32StrLen = strlen(pstring);
	s32Yoffset = (pstFramBmp->bHeight - font_height)/2;
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+3,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);
	
	//Add
	x = SUBSCRIBE_HELP_X_ADD;
	pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y+3, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

	pstring = infostr[uiv_u8Language][3];
	s32StrLen = strlen(pstring);
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + SUBSCRIBE_HELP_X_DIATANCE, y + s32Yoffset+3,s32StrLen,pstring, FONT_FRONT_COLOR_WHITE);
	
}


static MBT_U8 uif_SubscribeDrawPanel(MBT_S32 iPara )
{
	//BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR* bookmanageStr[2][7] =
    {
        {
            "Schedule",
			"Event",
			"Program",//3
			"Date",
			"Time",
			"Repeat",//6
			"Status",
        },

        {
            "Schedule",
			"Event",
			"Program",
			"Date",
			"Time",
			"Repeat",
			"Status",
        }
    };
    MBT_CHAR *ptrTitle = NULL;  
    //MBT_S32 iStrlen = 0;
	MBT_S32 s32FontHeight = 0;
    //MBT_S32 s32Yoffset = 0;
    MBT_S32 x = 0;
	MBT_S32 y = 0;
	MBT_S32 index = 0;

	uif_ShareDrawCommonPanel(bookmanageStr[uiv_u8Language][0], NULL, MM_TRUE);

	s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	y = SUBSCRIBE_HEAD_Y_MARION_TOP;
	for(index = 0 ; index < 6;index++)
	{
		x = SUBSCRIBE_HEAD_X_EVENT + index*SUBSCRIBE_HEAD_ITEM_WIDTH;	
		ptrTitle = bookmanageStr[uiv_u8Language][index+1];
		uif_DrawTxtAtMid(ptrTitle,x,y,SUBSCRIBE_HEAD_ITEM_WIDTH,SUBSCRIBE_ITEM_HEIGHT,SUBSCRIBE_LISTITEM_UNFOCUS_COLOR);
	}
	WGUIF_SetFontHeight(s32FontHeight);
	uif_SubscribeHelpInfo(iPara);
    return MM_TRUE;
}

static void Epg_DrawTxtCenter(MBT_S32 x,MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight, MBT_CHAR *pText, MBT_U32 u32TextColor){
		if(pText == NULL){
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

static MBT_VOID EventEditReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
	MLUI_DEBUG("iDataEntryIndex: %d, iItemIndex: %d", iDataEntryIndex, iItemIndex);
    if(MM_NULL == pItem || iDataEntryIndex == 3 || iDataEntryIndex == 4 || iDataEntryIndex == 5)
    {
        return;
    }
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iLen = 0;

	if(iDataEntryIndex == 0){
		switch(iItemIndex)
		{
			case CHANNEL_TYPE_TV:
				strcpy(pItem,"TV");
				break;
			case CHANNEL_TYPE_RADIO:
				strcpy(pItem,"Radio");
				break;
			default:
				strcpy(pItem,"TV");
				break;
		}
		return;
	}
	if(iDataEntryIndex == 1)
	{
		if(MM_NULL == pstProgInfo || uiv_pstPrgEditList[iItemIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
		{
			return ;
		}
		pstProgInfo += uiv_pstPrgEditList[iItemIndex].uProgramIndex;
        if(1 == DBSF_ListGetLCNStatus())
        {
            iLen = sprintf(pItem,"%03d",pstProgInfo->usiChannelIndexNo);
        }
        else
        {
            iLen = sprintf(pItem,"%03d",iItemIndex+1);
        }
		pItem[iLen] = 0;
		return;
	}

	if(iDataEntryIndex == 2)
	{
		if(MM_NULL == pstProgInfo || uiv_pstPrgEditList[iItemIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
		{
			return ;
		}
		pstProgInfo += uiv_pstPrgEditList[iItemIndex].uProgramIndex;
		pstProgInfo->cServiceName[MAX_SERVICE_NAME_LENGTH] = 0;
		iLen = sprintf(pItem, "%s",pstProgInfo->cServiceName);
		pItem[iLen] = 0;
		return;
	}

	if(iDataEntryIndex == 6){
		switch(iItemIndex)
		{
			case REPEAT_ONCE:
				strcpy(pItem,"Once");
				break;
			case REPEAT_DAILY:
				strcpy(pItem,"Daily");
				break;
			case REPEAT_WEEKLY:
				strcpy(pItem,"Weekly");
				break;
			default:
				strcpy(pItem,"Once");
				break;
		}

		return;
	}

	if(iDataEntryIndex == 7){
		switch(iItemIndex)
		{
			case MODE_VIEW:
				strcpy(pItem,"View");
				break;
			case MODE_RECORD:
				strcpy(pItem,"Record");
				break;
			default:
				strcpy(pItem,"View");
				break;
		}

		return;
	}
    
}

static MBT_VOID EventEditDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][EDIT_LISTITEMS_NUM] =
    {
        {
            "Channel Type",
            "Channel No.",
            "Channel Name",
            "Start Date(D/M/Y)",
            "Start Time",
            "End Time",
            "Repeat",
            "Mode"
        },
        {
            "Channel Type",
            "Channel No.",
            "Channel Name",
            "Start Date(D/M/Y)",
            "Start Time",
            "End Time",
            "Repeat",
            "Mode"
        }
    };
    MBT_CHAR *ptrTitle = MM_NULL;   
    MBT_S32 s32FontHeight;
	MBT_S32 fontColor = FONT_FRONT_COLOR_WHITE;
	WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
	s32FontHeight =  WGUIF_GetFontHeight();
    if(bSelect)
    {
        //big item bg
        if(2 == u32ItemIndex || 3 == u32ItemIndex || 4 == u32ItemIndex || 5 == u32ItemIndex)
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);
		}
        else
        {
            uif_DrawFocusArrawBar(x,y,iWidth,SUBSCRIBE_EPG_EVENT_EDIT_LIST_WIDTH/2);
		}
		ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
		//display per row first col string
        WGUIF_FNTDrawTxt(x+10,y + (SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT - s32FontHeight) / 2, strlen(ptrTitle), ptrTitle, fontColor);        
    }
    else
    {
		WGUIF_DrawFilledRectangle(  x, y, iWidth, SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT, SUBSCRIBE_EPG_EVENT_EDIT_BACKGROUD_COLOR);

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(x+10,y + (SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT - s32FontHeight) / 2, strlen(ptrTitle), ptrTitle, fontColor);
    }
}
static MBT_VOID uif_EventEditDrawPanel(MBT_S32 iPara )
{
    MBT_S32 s32FontHeight;
	s32FontHeight =  WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	WGUIF_DrawFilledRectangle( SUBSCRIBE_EPG_EVENT_EDIT_START_X , SUBSCRIBE_EPG_EVENT_EDIT_START_Y, SUBSCRIBE_EPG_EVENT_EDIT_WIDTH, SUBSCRIBE_EPG_EVENT_EDIT_HIEGHT, SUBSCRIBE_EPG_EVENT_EDIT_BACKGROUD_COLOR);

    if(iPara == DUMMY_KEY_GREEN)
    {
        Epg_DrawTxtCenter(SUBSCRIBE_EPG_EVENT_EDIT_START_X, SUBSCRIBE_EPG_EVENT_EDIT_START_Y, SUBSCRIBE_EPG_EVENT_EDIT_WIDTH , 2*SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT, "Event Edit", FONT_FRONT_COLOR_WHITE );
    }else
    {
        Epg_DrawTxtCenter(SUBSCRIBE_EPG_EVENT_EDIT_START_X, SUBSCRIBE_EPG_EVENT_EDIT_START_Y, SUBSCRIBE_EPG_EVENT_EDIT_WIDTH , 2*SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT, "Event Add", FONT_FRONT_COLOR_WHITE );
    }
    WGUIF_SetFontHeight(s32FontHeight);
}

MBT_BOOL uif_PutEPGTimer(EPG_TIMER_M *pCurrSelectEPGInfo,EPG_TIMER_M *tTempTimeSet)
{
	MLUI_DEBUG(" start ");
	MBT_CHAR* info[2][1]= 
        {
            {
                "Your subscribed program is over maximum,\ncan't continue!"
            },
            {
                "Your subscribed program is over maximum,\ncan't continue!"
            }
        };
	MBT_S32 i;
	
	for (i = 0; i < MAX_EPG_TIMER_NUM; i++)
	{
		// if we found a timer has the same time with this new timer,then we modify it to default : "on+ one time + tv"
		if ((tTempTimeSet[i].stTimer.year == pCurrSelectEPGInfo->stTimer.year )\
		&& (tTempTimeSet[i].stTimer.month  == pCurrSelectEPGInfo->stTimer.month )\
		&& (tTempTimeSet[i].stTimer.date  == pCurrSelectEPGInfo->stTimer.date )\
		&& (tTempTimeSet[i].stTimer.hour  == pCurrSelectEPGInfo->stTimer.hour )\
		&& (tTempTimeSet[i].stTimer.minute  == pCurrSelectEPGInfo->stTimer.minute ))
		{
			break;
		}
	}

	if(MAX_EPG_TIMER_NUM == i)    
	{
		for (i = 0;i < MAX_EPG_TIMER_NUM; i++)
		{
			if (tTempTimeSet[i].stTimer.dateofWeek  == 0) 
			{
				break;
			}
		}
	}

	// there's no more free timer,we return
	if (i == MAX_EPG_TIMER_NUM) 
	{
        uif_ShareDisplayResultDlg("Information",info[uiv_u8Language][0],DLG_WAIT_TIME);
		return MM_FALSE;
	}

	MLUI_DEBUG("i: %d", i);
	//there's a free timer, set it with the default value
	memcpy(&tTempTimeSet[i],pCurrSelectEPGInfo,sizeof(EPG_TIMER_M));

	return MM_TRUE;
}

static MBT_S8 ReturnWeekDay( MBT_U16 iYear, MBT_U16 iMonth, MBT_U16 iDay )  
{  
    MBT_S8 iWeek = 0;  
    MBT_U16 y = 0, c = 0, m = 0, d = 0;  
  
    if ( iMonth == 1 || iMonth == 2 )  
    {  
        c = ( iYear - 1 ) / 100;  
        y = ( iYear - 1 ) % 100;  
        m = iMonth + 12;  
        d = iDay;  
    }  
    else  
    {  
        c = iYear / 100;  
        y = iYear % 100;  
        m = iMonth;  
        d = iDay;  
    }  
      
    iWeek = y + y / 4 + c / 4 - 2 * c + 26 * ( m + 1 ) / 10 + d - 1;
    iWeek = iWeek >= 0 ? ( iWeek % 7 ) : ( iWeek % 7 + 7 );
    if ( iWeek == 0 )
    {  
        iWeek = 7;  
    }  
  
    return iWeek;  
}  
/*
static void Epg_PrintTimer(TIMER_M *pstEpgSelectTime){
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
static MBT_U8 repeatTimes(MBT_U8 mode){
	switch(mode){
		case REPEAT_ONCE:
			return m_Today;
		case REPEAT_DAILY:
			return m_EveryDay;
		case REPEAT_WEEKLY:
			return m_EveryWeek;
		default:
			return m_Today;
	}
}

static MBT_U8 uif_ConflictEpgSubscribTimer(EPG_TIMER_M *StartEPGInfo,EPG_TIMER_M *tTempEPGTimeSet, MBT_U32 ikey,MBT_U8 u8SelectIndex)
{
	MLUI_DEBUG(" start ");
	MBT_U8 ret = EVENT_OK;
    MBT_S32 i = 0;
	MBT_U32 startUtc1 = 0;
	MBT_U32 endUtc1 = 0;
	MBT_U32 startUtc2 = 0;
	MBT_U32 endUtc2 = 0;

    if(MM_NULL == StartEPGInfo || tTempEPGTimeSet == MM_NULL||u8SelectIndex >= MAX_EPG_TIMER_NUM)
    {
    	return ret;
    }
	TIMER_M stStartTime;
	TMF_GetSysTime(&stStartTime);
	startUtc1 = StartEPGInfo->stTimer.u32UtcTimeSecond - StartEPGInfo->stTimer.u32UtcTimeSecond%60;
	MLUI_DEBUG("startUtc1: %d, curUtc: %d", startUtc1, stStartTime.u32UtcTimeSecond);
	if(stStartTime.u32UtcTimeSecond >= startUtc1)
	{
		return EVENT_INVALID;
	}
	endUtc1 = startUtc1 + StartEPGInfo->stTimer.durationhour*60*60 + StartEPGInfo->stTimer.durationMinute*60;
	MLUI_DEBUG("startUtc1: %d, endUtc1: %d", startUtc1, endUtc1);
    for (i=0;i<MAX_EPG_TIMER_NUM;i++)         // 8 timers in total
    { 
		if(ikey == DUMMY_KEY_GREEN && u8SelectIndex == i)
		{
			continue;
		}
		
        if(tTempEPGTimeSet[i].stTimer.dateofWeek)        
        {
        	
			startUtc2 = tTempEPGTimeSet[i].stTimer.u32UtcTimeSecond - tTempEPGTimeSet[i].stTimer.u32UtcTimeSecond%60;
			endUtc2 = startUtc2 + tTempEPGTimeSet[i].stTimer.durationhour*60*60 + tTempEPGTimeSet[i].stTimer.durationMinute*60;
			MLUI_DEBUG("startUtc1: %d, endUtc1: %d, startUtc2: %d, endUtc2: %d", startUtc1, endUtc1, startUtc2, endUtc2);
			if(endUtc1 <= startUtc2 || startUtc1 >= endUtc2)
			{
				continue;
			}
			MLUI_DEBUG("return");
			return EVENT_CONFLICT;
        }
    }

    return ret;
}

/*
*返回0 操作成功
*           1 操作不成功,不作任何操作
*           2 该节目正在播放
*/
static MBT_U8 uif_PutEpgSubscribTimer(EDIT *pstEdit,MBT_U32 ikey,MBT_U8 u8SelectIndex)
{	
	DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();
	DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
	MBT_S32 iSelect = pstDataEntry[1].iSelect;
    EPG_TIMER_M stSelectEpgTimer; 
	memset(&stSelectEpgTimer, 0, sizeof(EPG_TIMER_M));
	MBT_U8 u8ConflictRet = EVENT_OK;
	DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;
    MBT_CHAR* infostr[2][5] =
    {
        {
            "This schedule is",
            "conflict with",
            "Event",
            "[OK]:Return",
            "invalid"
        },
        {
            "This schedule is",
            "conflict with",
            "Event",
            "[OK]:Return",
            "invalid"
        }
    };

    if (MM_NULL == pstSubTimer||MM_NULL == uiv_PrgList.pstPrgHead||u8SelectIndex > MAX_EPG_TIMER_NUM)
    {
		return EVENT_INVALID;
    }

	pstProgInfo = uiv_PrgList.pstPrgHead;
	pstProgInfo += uiv_pstPrgEditList[iSelect].uProgramIndex;
	stSelectEpgTimer.stTimer.year = (pstDataEntry[3].acDataRead[6]-'0')*1000 + (pstDataEntry[3].acDataRead[7]-'0')*100 + (pstDataEntry[3].acDataRead[8]-'0')*10 + (pstDataEntry[3].acDataRead[9]-'0') - 1900;
	stSelectEpgTimer.stTimer.month = (pstDataEntry[3].acDataRead[3]-'0')*10 + (pstDataEntry[3].acDataRead[4]-'0');
	stSelectEpgTimer.stTimer.date = (pstDataEntry[3].acDataRead[0]-'0')*10 + (pstDataEntry[3].acDataRead[1]-'0');
	stSelectEpgTimer.stTimer.hour = (pstDataEntry[4].acDataRead[0]-'0')*10 + (pstDataEntry[4].acDataRead[1]-'0');
	stSelectEpgTimer.stTimer.minute = (pstDataEntry[4].acDataRead[3]-'0')*10 + (pstDataEntry[4].acDataRead[4]-'0');
	stSelectEpgTimer.stTimer.second = 0;
	MBT_S8 endHour = (pstDataEntry[5].acDataRead[0]-'0')*10 + (pstDataEntry[5].acDataRead[1]-'0');
	MBT_S8 endMinute = (pstDataEntry[5].acDataRead[3]-'0')*10 + (pstDataEntry[5].acDataRead[4]-'0');
	if(stSelectEpgTimer.stTimer.hour == endHour && stSelectEpgTimer.stTimer.minute == endMinute)
	{
		MLUI_DEBUG("the same start end time");
		uif_ShareMakeSelectDlgDynamicContent(infostr[uiv_u8Language][0],infostr[uiv_u8Language][4],infostr[uiv_u8Language][3],MM_NULL, MM_FALSE);
		return EVENT_INVALID;
	}
	if(endMinute < stSelectEpgTimer.stTimer.minute){
		endMinute = 60 + endMinute - stSelectEpgTimer.stTimer.minute;
		endHour--;
	}
	else{
		endMinute = endMinute - stSelectEpgTimer.stTimer.minute;
	}
	if(endHour < stSelectEpgTimer.stTimer.hour){
		endHour = 24 + endHour - stSelectEpgTimer.stTimer.hour;
	}
	else{
		endHour = endHour - stSelectEpgTimer.stTimer.hour;
	}
	stSelectEpgTimer.stTimer.durationhour = endHour;
	stSelectEpgTimer.stTimer.durationMinute = endMinute;
	stSelectEpgTimer.stTimer.dateofWeek = repeatTimes(pstDataEntry[6].iSelect);
	DBSF_AdjustUTCTime2SystemTime(&(stSelectEpgTimer.stTimer));
	stSelectEpgTimer.stTimer.u32UtcTimeSecond = stSelectEpgTimer.stTimer.u32UtcTimeSecond-11*30*60;
	stSelectEpgTimer.stTimer.Weekday = ReturnWeekDay( stSelectEpgTimer.stTimer.year+1900, stSelectEpgTimer.stTimer.month, stSelectEpgTimer.stTimer.date );
	stSelectEpgTimer.stTimer.uTimeZone = pstBoxInfo->ucBit.TimeZone;
	stSelectEpgTimer.stTimer.bRecord= pstDataEntry[7].iSelect;
	MLUI_DEBUG("bRecord:%d, iSelect: %d", stSelectEpgTimer.stTimer.bRecord, pstDataEntry[7].iSelect);
    stSelectEpgTimer.stTimer.uTimerProgramNo = pstProgInfo->stPrgTransInfo.u32TransInfo;
    stSelectEpgTimer.stTimer.u16ServiceID= pstProgInfo->u16ServiceID;
    sprintf(stSelectEpgTimer.acEventName,"%s",pstProgInfo->cServiceName);
    sprintf(stSelectEpgTimer.acDescriptor,"%s",pstProgInfo->cServiceName);
	MLUI_DEBUG("year:%d, month: %d, date: %d ",stSelectEpgTimer.stTimer.year, stSelectEpgTimer.stTimer.month, stSelectEpgTimer.stTimer.date );
	MLUI_DEBUG("hour:%d, minute: %d, durationhour: %d endMinute: %d",stSelectEpgTimer.stTimer.hour, stSelectEpgTimer.stTimer.minute, endHour, endMinute );
	MLUI_DEBUG("Weekday:%d, u16ServiceID: %d, uTimeZone: %d",stSelectEpgTimer.stTimer.Weekday, stSelectEpgTimer.stTimer.u16ServiceID, pstBoxInfo->ucBit.TimeZone);
	MLUI_DEBUG("u32UtcTimeSecond:%d, dateofWeek: %d",stSelectEpgTimer.stTimer.u32UtcTimeSecond, stSelectEpgTimer.stTimer.dateofWeek);

	u8ConflictRet = uif_ConflictEpgSubscribTimer(&stSelectEpgTimer,pstSubTimer,ikey,u8SelectIndex);
	if(u8ConflictRet == EVENT_CONFLICT)
	{
		MLUI_DEBUG("conflict return");
		uif_ShareMakeSelectDlgDynamicContent(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],infostr[uiv_u8Language][2],infostr[uiv_u8Language][3], MM_FALSE);
		return EVENT_CONFLICT;
	}
	else if(u8ConflictRet == EVENT_INVALID)
	{
		MLUI_DEBUG("EVENT_INVALID return");
		uif_ShareMakeSelectDlgDynamicContent(infostr[uiv_u8Language][0],infostr[uiv_u8Language][4],infostr[uiv_u8Language][3],MM_NULL, MM_FALSE);
		return EVENT_INVALID;
	}
	
	if(ikey == DUMMY_KEY_GREEN)
	{
        memcpy(&pstSubTimer[u8SelectIndex],&stSelectEpgTimer,sizeof(EPG_TIMER_M));
	}
	else
	{
    	uif_PutEPGTimer(&stSelectEpgTimer,pstSubTimer);
	}
	uif_Subscribe_SaveChangeOrNo(pstSubTimer);
    return u8ConflictRet;
}

static void EpgEventInitEdit(MBT_U16 eventId, EDIT *pstEdit)
{
	MLUI_DEBUG(" start eventId: %d", eventId );
	if(pstEdit == MM_NULL || eventId == 0 )
	{
		return;
	}
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();         
	UI_PRG stPrgInfo;
	MBT_BOOL bGet = MM_FALSE;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
	MBT_U16 i = 0;
    UI_EVENT eventItem;
	MBT_U8  puAdjustTime[5];
	TIMER_M sTStartTime;
	TIMER_M sTEndTime;

	DBSF_DataCurPrgInfo(&stPrgInfo);
    //MLMF_Print("EpgEventInitEdit DBSF_GetEventByEventID name %s frenq: %d, u16ServiceID: %x\n",stPrgInfo.stService.cServiceName,stPrgInfo.stService.stPrgTransInfo.uBit.uiTPFreq, stPrgInfo.stService.u16ServiceID );
	bGet = DBSF_GetEventByEventID(stPrgInfo.stService.stPrgTransInfo.u32TransInfo,stPrgInfo.stService.u16ServiceID, eventId, &eventItem);
	if(bGet == MM_FALSE)
	{
		//MLMF_Print("DBSF_GetEventByEventID u32TransInfo: %x, u16ServiceID: %x\n", stPrgInfo.stService.stPrgTransInfo.u32TransInfo, stPrgInfo.stService.u16ServiceID );
		return;
	}
    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
	{
        pstDataEntry[0].iSelect = 0;
	}
	else
	{
        pstDataEntry[0].iSelect = 1;
	}
	for(i = 0; i < pstDataEntry[1].iTotalItems; i++)
	{
		pstProgInfo = uiv_PrgList.pstPrgHead;
		pstProgInfo += uiv_pstPrgEditList[i].uProgramIndex;
		if(pstProgInfo->stPrgTransInfo.u32TransInfo == stPrgInfo.stService.stPrgTransInfo.u32TransInfo && pstProgInfo->u16ServiceID == stPrgInfo.stService.u16ServiceID)
		{
			break;
		}
	}
	pstDataEntry[1].iSelect = i;
	pstDataEntry[2].iSelect = i;

	DBSF_GetEndTime(eventItem.uStartTime, eventItem.uDutationTime, puAdjustTime);
	DBSF_TdtTime2SystemTime(eventItem.uStartTime,&sTStartTime);
	DBSF_TdtTime2SystemTime(puAdjustTime,&sTEndTime);

	sprintf(pstDataEntry[3].acDataRead,"%02d/%02d/%04d", sTStartTime.date, sTStartTime.month, sTStartTime.year+1900);
	sprintf(pstDataEntry[4].acDataRead,"%02d:%02d",sTStartTime.hour, sTStartTime.minute);
	sprintf(pstDataEntry[5].acDataRead,"%02d:%02d",sTEndTime.hour, sTEndTime.minute);

	pstDataEntry[6].iSelect = 0;
	pstDataEntry[7].iSelect = 0;
}

static void EventItemEditInitEdit(EPG_TIMER_M *pItem, EDIT *pstEdit,MBT_U8 u8SelectIndex)
{
	MLUI_DEBUG(" start " );
	if(pItem == MM_NULL || pstEdit == MM_NULL )
	{
		return;
	}
	UI_PRG stPrgInfo;
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;

    if (MM_NULL == pstSubTimer||MM_NULL == uiv_PrgList.pstPrgHead||u8SelectIndex > MAX_EPG_TIMER_NUM)
    {
        return;
    }

	DBSF_DataPosPrgTransXServiceID(&stPrgInfo, pItem->stTimer.uTimerProgramNo , pItem->stTimer.u16ServiceID);
	if(stPrgInfo.stService.cProgramType == STTAPI_SERVICE_TELEVISION)
	{
		ReminderUpdateEditPrg(pstEdit, 0);
        pstDataEntry[0].iSelect = 0;
	}
	else
	{
		ReminderUpdateEditPrg(pstEdit, 6);
        pstDataEntry[0].iSelect = 1;
	}

	MBT_U16 i = 0;
	for(i = 0; i < pstDataEntry[1].iTotalItems; i++)
	{
		pstProgInfo = uiv_PrgList.pstPrgHead;
		pstProgInfo += uiv_pstPrgEditList[i].uProgramIndex;
		if(pstProgInfo->stPrgTransInfo.u32TransInfo == pItem->stTimer.uTimerProgramNo && pstProgInfo->u16ServiceID == pItem->stTimer.u16ServiceID)
		{
			break;
		}
	}
	pstDataEntry[1].iSelect = i;
	pstDataEntry[2].iSelect = i;

	sprintf(pstDataEntry[3].acDataRead,"%02d/%02d/%04d", pItem->stTimer.date, pItem->stTimer.month, pItem->stTimer.year+1900);
	sprintf(pstDataEntry[4].acDataRead,"%02d:%02d", pItem->stTimer.hour, pItem->stTimer.minute);

    MBT_U8 endHour = 0;                         
    MBT_U8 endMinute = pItem->stTimer.minute + pItem->stTimer.durationMinute;            
	if(endMinute >= 60){
		endMinute = endMinute%60;
		endHour++;
	}

	endHour += pItem->stTimer.hour + pItem->stTimer.durationhour;
	if(endHour >= 24){
		endHour = endHour%24;
	}
	sprintf(pstDataEntry[5].acDataRead,"%02d:%02d",endHour, endMinute);

    pstDataEntry[6].iSelect = repeat2UI(pstSubTimer[u8SelectIndex].stTimer.dateofWeek);
    pstDataEntry[7].iSelect = pstSubTimer[u8SelectIndex].stTimer.bRecord;
}

static MBT_VOID uif_ChnEditInitTVPrg(EDIT *pstEdit )
{
	MLUI_DEBUG("uif_ChnEditInitTVPrg start");
	if(uiv_PrgList.iPrgNum <= 0 || uiv_PrgList.pstPrgHead == MM_NULL)
	{
		return;
	}
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

	pstDataEntry[1].iTotalItems = 0;
	pstDataEntry[2].iTotalItems = 0;
	pstDataEntry[0].iSelect = 0;
	pstDataEntry[1].iSelect = 0;
	pstDataEntry[2].iSelect = 0; 
    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if(STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== pstBoxInfo->u32VidTransInfo&&pstBoxInfo->u16VideoServiceID== pstProgInfo->u16ServiceID)
            {
                pstEdit->iSelect = 0;
				pstDataEntry[0].iSelect = 0;
				pstDataEntry[1].iSelect = pstDataEntry[1].iTotalItems;
				pstDataEntry[2].iSelect = pstDataEntry[1].iTotalItems;
         
            }   
            uiv_pstPrgEditList[pstDataEntry[1].iTotalItems].ucLastProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[pstDataEntry[1].iTotalItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[ pstDataEntry[1].iTotalItems++ ].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }	
	pstDataEntry[2].iTotalItems = pstDataEntry[1].iTotalItems;
}

static MBT_VOID uif_ChnEditInitRadioPrg(EDIT *pstEdit )
{
	MLUI_DEBUG("uif_ChnEditInitRadioPrg start");
	if(uiv_PrgList.iPrgNum <= 0 || uiv_PrgList.pstPrgHead == MM_NULL)
	{
		return;
	}
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

	pstDataEntry[1].iTotalItems = 0;
	pstDataEntry[2].iTotalItems = 0;
	pstDataEntry[0].iSelect = 1;
	pstDataEntry[1].iSelect = 0;
	pstDataEntry[2].iSelect = 0; 
    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if(STTAPI_SERVICE_RADIO == pstProgInfo->cProgramType)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== pstBoxInfo->u32AudTransInfo &&pstBoxInfo->u16AudioServiceID== pstProgInfo->u16ServiceID)
            {
                pstEdit->iSelect = 0;
				pstDataEntry[0].iSelect = 1;
				pstDataEntry[1].iSelect = pstDataEntry[1].iTotalItems;
				pstDataEntry[2].iSelect = pstDataEntry[1].iTotalItems;
            }   
            uiv_pstPrgEditList[pstDataEntry[1].iTotalItems].ucLastProgram_status= uiv_pstPrgEditList[pstDataEntry[1].iTotalItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[ pstDataEntry[1].iTotalItems++ ].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }
	pstDataEntry[2].iTotalItems = pstDataEntry[1].iTotalItems;;
}


static void ReminderUpdateEditPrg(EDIT *pstEdit, MBT_S32 iType)
{
    switch ( iType )
    {
        case 0:
			uif_ChnEditInitTVPrg(pstEdit);
            break;

        case 6:
			uif_ChnEditInitRadioPrg(pstEdit);
            break;

        default:
			uif_ChnEditInitTVPrg(pstEdit);
            break;
    }
}

static void ReminderInitEdit(EDIT *pstEdit, MBT_S32 iType)
{
	MLUI_DEBUG("ReminderInitEdit ..");
    MBT_U8 i;
    MBT_U8 u8NormalItemNum[EDIT_LISTITEMS_NUM] = {2,2,2,0,0,0,3,2};
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    if(MM_NULL == pstEdit)
    {
        return;
    }
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = EDIT_LISTITEMS_NUM;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = EventEditDrawItem;


    //big high light
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = EventEditReadData;   
        pstDataEntry[i].iTxtCol = SUBSCRIBE_EPG_EVENT_EDIT_LIST_START_X+SUBSCRIBE_EPG_EVENT_EDIT_LIST_WIDTH/2+10;   
        pstDataEntry[i].iTxtWidth = 120;	
        pstDataEntry[i].iCol = SUBSCRIBE_EPG_EVENT_EDIT_LIST_START_X;
        pstDataEntry[i].iRow = SUBSCRIBE_EPG_EVENT_EDIT_LIST_START_Y+(EDIT_LIST_ITEM_GAP)*i;	
        pstDataEntry[i].iWidth = SUBSCRIBE_EPG_EVENT_EDIT_LIST_WIDTH;
        pstDataEntry[i].iHeight = SUBSCRIBE_EPG_EVENT_EDIT_ITEM_HIEGHT;
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        if(0 == i || 1 == i || 2 == i || 6 == i || 7 == i)
        {
            pstDataEntry[i].field_type = SELECT_BOTTON;
        }
		else if(3 == i)
        {
            pstDataEntry[i].field_type = YEAR_FIELD;
		}
        else
        {
            pstDataEntry[i].field_type = TIME_FIELD;
        }
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_BLACK;
        pstDataEntry[i].u32FontSize = GWFONT_HEIGHT_SIZE18;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 

	//设置开关的默认值
	pstDataEntry[0].iSelect = 0;
	pstDataEntry[1].iSelect = 0;
	pstDataEntry[2].iSelect = 0;
	TIMER_M stStartTime;
	TMF_GetSysTime(&stStartTime);
	sprintf(pstDataEntry[3].acDataRead,"%02d/%02d/%04d",stStartTime.date, stStartTime.month, stStartTime.year+1900);
	sprintf(pstDataEntry[4].acDataRead,"%02d:%02d",stStartTime.hour, stStartTime.minute);
	sprintf(pstDataEntry[5].acDataRead,"%02d:%02d",stStartTime.hour, stStartTime.minute);
	pstDataEntry[6].iSelect = 0;
	pstDataEntry[7].iSelect = 0;

    switch ( iType )
    {
        case 0:
			uif_ChnEditInitTVPrg(pstEdit);
            break;

        case 6:
			uif_ChnEditInitRadioPrg(pstEdit);
            break;

        default:
			uif_ChnEditInitTVPrg(pstEdit);
            break;
    }
}
/*
*	根据传入参数，显示不同的UI
*	iPara:0表示从remider进入
*
*/

MBT_S32 uif_Subscribe(MBT_S32 iPara)
{
//	MLUI_DEBUG("uif_Subscribe start %d ", iPara);
    MBT_S32 iKey = -1;
    MBT_S32 iRetKey = DUMMY_KEY_BACK; 
    MBT_S32 iIndex; 
    MBT_U8 u8SelectIndex; 
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
	LISTITEM stScheduleList;
    TIMER_M *pTriggerTimer;
	MBT_U16 u16EventId = iPara;//0: from reminder, 1-36556: from epg
    MBT_BOOL bEdit = MM_FALSE;
	MBT_CHAR* infostr[2][4] =
    {
        {
            "Do you want to",
            "delete this?",
            "[OK]:Delete",
            "[EXIT]:Cancel"
        },
        {
            "Do you want to",
            "delete this?",
            "[OK]:Delete",
            "[EXIT]:Cancel"
        }
    };
	MLUI_DEBUG("u16EventId: %d", u16EventId);
    UIF_StopAV();

    if(MM_NULL == uiv_pu8SubscribeMap)
    {
        uiv_pu8SubscribeMap = uif_ForceMalloc(MAX_EPG_TIMER_NUM);
        if(MM_NULL == uiv_pu8SubscribeMap)
        {
            return iRetKey;
        }
        memset(uiv_pu8SubscribeMap,0,MAX_EPG_TIMER_NUM);
    }

    if(MM_NULL == uiv_pstSubscribeTimer)
    {
        uiv_pstSubscribeTimer = uif_ForceMalloc(MAX_EPG_TIMER_NUM*sizeof(EPG_TIMER_M));
        if(MM_NULL == uiv_pstSubscribeTimer)
        {
            uif_ForceFree(uiv_pu8SubscribeMap);
            uiv_pu8SubscribeMap = MM_NULL;
            return iRetKey;
        }
        memset(uiv_pstSubscribeTimer,0,MAX_EPG_TIMER_NUM*sizeof(EPG_TIMER_M));
    }
    
    MLUI_DEBUG("%d %p", __LINE__);
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
            uif_ForceFree(uiv_pu8SubscribeMap);
            uiv_pu8SubscribeMap = MM_NULL;
            uif_ForceFree(uiv_pstSubscribeTimer);
            uiv_pstSubscribeTimer = MM_NULL;            
            return iRetKey;
    }

	MLUI_DEBUG("%d ", __LINE__);


    uif_GetTimerFromFile(uiv_pstSubscribeTimer,pTriggerTimer);
    uif_ForceFree(pTriggerTimer);  
	pTriggerTimer = MM_NULL;
	//bRefresh |= uif_ResetAlarmMsgFlag();   
	MBT_S32 font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    while ( !bExit )
    {	
        if ( bRedraw )
        {	
            MLUI_DEBUG("list init ...==========");
            uif_Subscribe_InitDrawItems(&stScheduleList);
			uif_Subscribe_SequenceByEventTime();
            bRefresh |= uif_SubscribeDrawPanel(iPara);
        }
		stScheduleList.iSelect = gu8CurEventIndex;
		if(stScheduleList.iSelect >= stScheduleList.iNoOfItems)
		{
		    stScheduleList.iSelect = 0;
		}
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y); 
        bRefresh |= UCTRF_ListOnDraw(&stScheduleList);    
        
		bRedraw = MM_FALSE;
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (500);
        switch ( iKey )
        {
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
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
                
            case DUMMY_KEY_SELECT:
                stScheduleList.bUpdatePage = MM_TRUE;
                break;
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                UCTRF_ListGetKey( &stScheduleList,iKey);
				gu8CurEventIndex = stScheduleList.iSelect;
				bRefresh = MM_TRUE;
                break;
                
			case DUMMY_KEY_RED:
                u8SelectIndex = uiv_pu8SubscribeMap[gu8CurEventIndex];
                if(u8SelectIndex >= MAX_EPG_TIMER_NUM)
                {
                    break;
                }
				uif_ScheduleDlg(u16EventId,DUMMY_KEY_RED,u8SelectIndex);
				uif_SubscribeUpdateEventList(&stScheduleList);
                stScheduleList.bUpdatePage = MM_TRUE;
                break;
			case DUMMY_KEY_BLUE_EDIT:
				if(stScheduleList.iNoOfItems > 0)
				{
					if(uif_ShareMakeSelectDlgDynamicContent(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],infostr[uiv_u8Language][2],infostr[uiv_u8Language][3], MM_FALSE))
					{
					    if(stScheduleList.iSelect < 0||stScheduleList.iSelect >= MAX_EPG_TIMER_NUM)
					    {
					        break;
					    }
					    iIndex = uiv_pu8SubscribeMap[stScheduleList.iSelect];
					    if(iIndex >= MAX_EPG_TIMER_NUM)
					    {
					        break;
					    }
						uiv_pstSubscribeTimer[iIndex].stTimer.dateofWeek = 0;
						if(stScheduleList.iSelect > 1)
						{
                            gu8CurEventIndex = stScheduleList.iSelect-1;
						}
						else
						{
							gu8CurEventIndex = 0;
						}

						uif_Subscribe_SaveChangeOrNo(uiv_pstSubscribeTimer);
						uif_SubscribeUpdateEventList(&stScheduleList);
	                    stScheduleList.bUpdatePage = MM_TRUE;
					}
				}
                break;
			case DUMMY_KEY_GREEN:
				if(stScheduleList.iNoOfItems > 0)
				{
                    u8SelectIndex = uiv_pu8SubscribeMap[gu8CurEventIndex];
                    if(u8SelectIndex >= MAX_EPG_TIMER_NUM)
                    {
                        break;
                    }
					bRefresh = MM_TRUE;
					bEdit = MM_TRUE;
					uif_ScheduleDlg(u16EventId,DUMMY_KEY_GREEN,u8SelectIndex);
					uif_SubscribeUpdateEventList(&stScheduleList);
                    stScheduleList.bUpdatePage = MM_TRUE;
				}
                break;
				
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case -1:
                if(u16EventId > 0)
                {
					MLUI_DEBUG("u16EventId: %d", u16EventId);
                    u8SelectIndex = uiv_pu8SubscribeMap[gu8CurEventIndex];
                    if(u8SelectIndex >= MAX_EPG_TIMER_NUM)
                    {
                        break;
                    }
                    uif_ScheduleDlg(u16EventId,DUMMY_KEY_RED,u8SelectIndex);
					u16EventId = 0;
					uif_SubscribeUpdateEventList(&stScheduleList);
					stScheduleList.bUpdatePage = MM_TRUE;
                }
                
                break;

            default:  
				iRetKey = uif_QuickKey(iKey);
				if(0 !=  iRetKey)
				{
				    MLUI_DEBUG("while default===============...");
					bExit = MM_TRUE;
				}
	            break;
        }
    }
	
    WGUIF_SetFontHeight(font_height);
    WGUIF_ClsFullScreen();
	
    if(MM_NULL != uiv_pu8SubscribeMap)
    {
        uif_ForceFree(uiv_pu8SubscribeMap);
        uiv_pu8SubscribeMap = MM_NULL;
    }
    
    if(MM_NULL != uiv_pstSubscribeTimer)
    {
        uif_ForceFree(uiv_pstSubscribeTimer);
        uiv_pstSubscribeTimer = MM_NULL;
    }

    return iRetKey;
}

static MBT_S32  uif_ScheduleDlg( MBT_U16 u16EventId,MBT_U32 key,MBT_U8 u8SelectIndex)
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;
	MBT_S32 iKey;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;	
    BITMAPTRUECOLOR  CopybitmapTop;//当弹出编辑框时，拷贝后面内容
    EDIT gstEpgEventEdit;
    MBT_S32 iType = 0;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 
    EPG_TIMER_M *pstSubTimer = uiv_pstSubscribeTimer;

    if (MM_NULL == pstSubTimer||u8SelectIndex > MAX_EPG_TIMER_NUM)
    {
        return iRetKey;
    }

    if(0 == uif_CreateUIPrgArray())
    {
        MLUI_ERR("CreateUIPrgArray Fail!!!,No Program !!!");
        return iRetKey;
    }
    
    MLUI_DEBUG("%d %p", __LINE__);
    if(MM_NULL != uiv_pstPrgEditList)
    {
        uif_ForceFree(uiv_pstPrgEditList);
		uiv_pstPrgEditList = MM_NULL;
    }
	MLUI_DEBUG("%d %p", __LINE__);

    uiv_pstPrgEditList = uif_ForceMalloc((sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum));
	MLUI_DEBUG("%d ", __LINE__);
    if(MM_NULL == uiv_pstPrgEditList)
    {
		uif_DestroyUIPrgArray();
		return iRetKey;
    }

    //拷贝区域设置
    CopybitmapTop.bWidth = SUBSCRIBE_EPG_EVENT_EDIT_WIDTH;
    CopybitmapTop.bHeight = SUBSCRIBE_EPG_EVENT_EDIT_HIEGHT;
    WGUIF_GetRectangleImage(SUBSCRIBE_EPG_EVENT_EDIT_START_X, SUBSCRIBE_EPG_EVENT_EDIT_START_Y, &CopybitmapTop);

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {	// TV
        iType = 0;
    }
    else
    {  // Radio  
        iType = 6;
    }
    uif_SubscribeHelpInfo(1);
	while ( !bExit )
	{
	    if(bRedraw)
        {
            uif_EventEditDrawPanel(key);
            ReminderInitEdit(&gstEpgEventEdit, iType);
           
			if(u16EventId > 0)
			{
				MLUI_DEBUG("u16EventId; %d ", u16EventId);
				EpgEventInitEdit(u16EventId , &gstEpgEventEdit);
				u16EventId = 0;
			}
			else if(key == DUMMY_KEY_GREEN)
			{
                EventItemEditInitEdit(&(pstSubTimer[u8SelectIndex]),&gstEpgEventEdit,u8SelectIndex);
			}
            bRefresh = MM_TRUE;
        }

        bRefresh |= UCTRF_EditOnDraw(&gstEpgEventEdit);    

        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
    
		iKey = uif_ReadKey(1000);
        if(MM_FALSE == UCTRF_EditGetKey(&gstEpgEventEdit,iKey))
		{
            uif_ShareDisplayResultDlg("Information","Invalid data",DLG_WAIT_TIME);
		}
		switch ( iKey )
        {				    
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
				bExit = MM_TRUE;
				break;
                
            case DUMMY_KEY_SELECT:
				if(uif_PutEpgSubscribTimer(&gstEpgEventEdit,key,u8SelectIndex))
				{
					bRefresh = MM_TRUE;
					break;
				}
				bExit = MM_TRUE;
				break;
				
			case DUMMY_KEY_LEFTARROW:
			case DUMMY_KEY_RIGHTARROW:
				if(gstEpgEventEdit.iSelect == 0)
				{
					if(gstEpgEventEdit.stDataEntry[0].iSelect == CHANNEL_TYPE_TV)
					{
						if(MM_TRUE == DBSF_DataHaveVideoPrg())
                    	{
							ReminderUpdateEditPrg(&gstEpgEventEdit, 0);
						}
						else
						{
							gstEpgEventEdit.stDataEntry[0].iSelect = 1;
						}
					}
					else{
						if(MM_TRUE == DBSF_DataHaveRadioPrg())
                    	{
							ReminderUpdateEditPrg(&gstEpgEventEdit, 6);
						}
						else
						{
							gstEpgEventEdit.stDataEntry[0].iSelect = 0;
						}
					}
					gstEpgEventEdit.stDataEntry[1].iSelect = 0;
					gstEpgEventEdit.stDataEntry[2].iSelect = 0;
					gstEpgEventEdit.bModified = MM_TRUE;
				}
				if(gstEpgEventEdit.iSelect == 1){
					gstEpgEventEdit.stDataEntry[2].iSelect = gstEpgEventEdit.stDataEntry[1].iSelect;
					gstEpgEventEdit.bModified = MM_TRUE;
				}
				break;

            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
				if(gstEpgEventEdit.iSelect == 2)
				{
					if(iKey == DUMMY_KEY_UPARROW)
					{
						gstEpgEventEdit.iSelect = 1;
					}else
					{
						gstEpgEventEdit.iSelect = 3;
					}
				}
				break;
           
        }
	}
	uif_SubscribeHelpInfo(0);
	//还原区域
    if(MM_TRUE == WGUIF_PutRectangleImage(SUBSCRIBE_EPG_EVENT_EDIT_START_X, SUBSCRIBE_EPG_EVENT_EDIT_START_Y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    
	if(MM_NULL != uiv_pstPrgEditList)
	{
		uif_ForceFree(uiv_pstPrgEditList);
		uiv_pstPrgEditList = MM_NULL;
	}

	uif_DestroyUIPrgArray();
	return iRetKey;
}
