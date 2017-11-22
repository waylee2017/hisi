#include "ui_share.h"

#define EMAIL_HEAD_TITLE_Y  (140)
#define EMAIL_HEAD_TITLE_X  (125)
#define EMAIL_HEAD_TITLE_NO_W  (74)
#define EMAIL_HEAD_TITLE_ID_W  (128)
#define EMAIL_HEAD_TITLE_STATUS_W  (184)
#define EMAIL_HEAD_TITLE_LEVEL_W  (148)
#define EMAIL_HEAD_TITLE_TIME_W  (496)

#define SHORTMSG_LISTITEM_X 125
#define SHORTMSG_LISTITEM_Y (EMAIL_HEAD_TITLE_Y+40)
#define SHORTMSG_LISTITEM_GAP 15
#define SHORTMSG_LISTITEM_MAX 8
#define SHORTMSG_LISTITEM_WIDTH (OSD_REGINMAXWIDHT-EMAIL_HEAD_TITLE_X*2)
#define SHORTMSG_TITLE_MAXCHAR (CDCA_MAXLEN_EMAIL_TITLE+1)
#define SHORTMSG_LIST_ITEM_UNFOCUS_COLOR 0xFFFFFFFF //白色

#define SHORTMSG_CONTENT_HEIGHT 30//24

#define SHORTMSG_INFO_X 125
#define SHORTMSG_INFO_Y (SHORTMSG_LISTITEM_Y+((50)*SHORTMSG_LISTITEM_MAX))
#define SHORTMSG_INFO_WIDTH SHORTMSG_LISTITEM_WIDTH
#define SHORTMSG_INFO_HEIGHT 50

#define EMAIL_HELP_Y 670 //email底部的信息提示
#define EMAIL_HELP_X 0

#define SHORTMSG_MAIL_DETAIL_W 886
#define SHORTMSG_MAIL_DETAIL_H 386
#define SHORTMSG_MAIL_DETAIL_BKF 0xFF000000
#define SHORTMSG_MAIL_DETAIL_BKB 0xFFE5E5E5

#define SHORTMSG_MAIL_MAXNUM CDCA_MAXNUM_EMAIL
#define SHORTMSG_MAIL_MAXCONTENT (CDCA_MAXLEN_EMAIL_CONTENT+1)

typedef struct _short_msg_info_
{
	MBT_U32     stCreatTime;
	MBT_U32 	ca_dwActionID;
	MBT_U8            m_bNewEmail;
	MBT_U8            m_wImportance;
	MBT_CHAR 	*pMsgName;
	MBT_VOID 	        *pNextMsg;
	MBT_S8		laststatus;		/*bit 0: read or not. bit 1: delete or not*/
	MBT_S8		curstatus;	
} SHORT_MSG_INFO;


typedef struct _email_detail_node_
{
    MBT_CHAR *pstrDetail;
    struct _email_detail_node_ *pNext;
}EMAIL_DETAIL_NODE;

typedef struct _email_detail_
{
    MBT_S32 iPageNumber;
    MBT_U32 ca_u32ActionID;
    MBT_CHAR cEmailName[SHORTMSG_TITLE_MAXCHAR];
    EMAIL_DETAIL_NODE *pDetailList;
}EMAIL_DETAIL;



#if(1 == M_CDCA) 
static MBT_VOID uif_FreeEmailDetail(EMAIL_DETAIL * pstEmail);
#endif
static SHORT_MSG_INFO *uiv_ptrShortMsgInfo = MM_NULL;	

static MBT_CHAR* uiv_PtrShortmsgString[2][16]=
{
    {
        "Title:",
        "Do you want to delet all mails?",
        "Del",
        "Used space:",
        "Left space:",
        "Content:",
        "No.",
        "Status",
        "Time",
        "Page up/down",
        "Mail",
        "Del all",
        "Date",
        "Are you sure to delete?",
        "Important Mail",
        "Level"
    } ,

    {
        "Title:",
        "Do you want to delet all mails?",
        "Del",
        "Used space:",
        "Left space:",
        "Content:",
        "No.",
        "Status",
        "Time",
        "Page up/down",
        "Mail",
        "Del all",
        "Date",
        "Are you sure to delete?",
        "Important Mail",
        "Level"
    }
};

static MBT_VOID ShortMsgGetEmailTime(TIMER_M *pstTime,MBT_U32 m_tCreateTime)
{
    MBT_U32  u32EmailCreatMjd;
    MBT_U32  k;
    MBT_U32  y ;
    MBT_U32  m;
    MBT_ULONG uLongEmailCreatSeconds;

    u32EmailCreatMjd = 0x9e8b + ((MBT_U32)m_tCreateTime/(3600*24));
    y = (u32EmailCreatMjd*100-1507820)/36525;
    m = (u32EmailCreatMjd*10000-149561000-y*36525/100*10000)/306001;
    pstTime->date=  u32EmailCreatMjd-14956-y*36525/100-m*306001/10000;
    if ( (m == 14)||(m == 15) )
    {
        k = 1 ;
    }
    else
    {
        k = 0;
    }
    pstTime->year= y + k ;
    pstTime->month= m - 1 - k * 12;
    uLongEmailCreatSeconds = m_tCreateTime%(3600*24);

    pstTime->hour= (MBT_U8)(uLongEmailCreatSeconds/3600);
    if(pstTime->hour >=24 ) 
    {
        pstTime->hour = 0 ;
    }

    uLongEmailCreatSeconds = uLongEmailCreatSeconds%3600;
    pstTime->minute=  (MBT_U8)(uLongEmailCreatSeconds/60);
    pstTime->second= (MBT_U8)(uLongEmailCreatSeconds%60);
    pstTime->Weekday = ((u32EmailCreatMjd+2)%7)+1;
    pstTime->uTimeZone = TIME_ZONE_00_00;
    DBSF_GetGMTtime(pstTime);
}

#if(1 == M_CDCA) 
static MBT_BOOL uif_GetEmailDetail(EMAIL_DETAIL *pstEmail,SCDCAEmailContent *pEmailContent,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_S32 i = 0;
    MBT_BOOL bRet = MM_TRUE;       
    MBT_CHAR stTempBuffer [SHORTMSG_MAIL_MAXCONTENT+1];
    EMAIL_DETAIL_NODE *pTempDetailList; 
    MBT_S32 iStrlen;

    if(MM_NULL == pstEmail||MM_NULL == pEmailContent)
    {
        return MM_FALSE;
    }

    uif_FreeEmailDetail(pstEmail);	
    pEmailContent->m_szEmail[SHORTMSG_MAIL_MAXCONTENT-1] = 0;//防止溢出＋＋＋
    iStrlen = strlen(pEmailContent->m_szEmail);
    memcpy(stTempBuffer, pEmailContent->m_szEmail,iStrlen);
    stTempBuffer[iStrlen] = 0; 
    while(1)
    {
        (pstEmail->iPageNumber)++;

        if(MM_NULL == pstEmail->pDetailList)
        {
            pstEmail->pDetailList = uif_ForceMalloc(sizeof(EMAIL_DETAIL_NODE));
            if(MM_NULL == pstEmail->pDetailList)
            {
                bRet = MM_FALSE; 
                break;
            }

            pTempDetailList = pstEmail->pDetailList;
        }
        else
        {
            pTempDetailList = pstEmail->pDetailList;
            while(pTempDetailList->pNext)
            {
                pTempDetailList = pTempDetailList->pNext;
            }

            pTempDetailList->pNext = uif_ForceMalloc(sizeof(EMAIL_DETAIL_NODE));
            if(MM_NULL == pTempDetailList->pNext)
            {
                bRet = MM_FALSE; 
                break;
            }
            pTempDetailList = pTempDetailList->pNext;
        }

        pTempDetailList->pNext = MM_NULL;
        pTempDetailList->pstrDetail = uif_ForceMalloc(iStrlen+1);
        if(MM_NULL == pTempDetailList->pstrDetail)
        {
            bRet = MM_FALSE; 
            break;
        }
        strcpy(pTempDetailList->pstrDetail, stTempBuffer);
        WGUIF_FNTAdjustTxtLine(pTempDetailList->pstrDetail,iStrlen, iWidth, iHeight);
        i = strlen(pTempDetailList->pstrDetail);

        if(iStrlen != i)
        {
            MBT_S32 iMovePosition = 0;
            MBT_U8 *tempPtr = (MBT_VOID *)stTempBuffer;
            iStrlen -= i;
            while( tempPtr[i + iMovePosition]< 0x21&&iMovePosition < iStrlen )
            {
                iMovePosition++;
                iStrlen--;
            }
            memmove(stTempBuffer,stTempBuffer+i+iMovePosition,iStrlen);
            stTempBuffer[iStrlen] = 0;
        }
        else
        {
            break;
        }
    }

    return bRet;
}
#endif


static SHORT_MSG_INFO *uif_GetCurEMailSlotFromIndex(MBT_S32 iIndex)
{
    MBT_S32 i;
    SHORT_MSG_INFO *pstShortMsgInfo = uiv_ptrShortMsgInfo;	

    i = 0;
    while(i<iIndex)
    {
        pstShortMsgInfo = pstShortMsgInfo->pNextMsg;
        if(MM_NULL == pstShortMsgInfo)
        {
        	  break;
        }
        i++;
    }
    return pstShortMsgInfo;
}

static MBT_BOOL   ShortMsg_ReadListItem(MBT_S32 iIndex,MBT_CHAR *pItem)
{  
    SHORT_MSG_INFO *pMsgInfo = uif_GetCurEMailSlotFromIndex(iIndex);
    TIMER_M  stTime;
    MBT_S32 iLen;

	
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pMsgInfo)
    {
        memset(pItem, 0, 5*SHORTMSG_TITLE_MAXCHAR);
        return MM_FALSE;
    }

    //NO
	iLen = sprintf(pItem,"%03d",(iIndex+1));
	pItem[iLen] = 0;

    //ID
    iLen = sprintf(pItem + 1*SHORTMSG_TITLE_MAXCHAR,"%d", pMsgInfo->ca_dwActionID);
    pItem[1*SHORTMSG_TITLE_MAXCHAR + iLen] = 0;

    //status
    if(1 == pMsgInfo->m_bNewEmail)
    {
		pItem[2*SHORTMSG_TITLE_MAXCHAR] = CO_MAIL_NOT_READ;
    }
    else
    {
		pItem[2*SHORTMSG_TITLE_MAXCHAR] = CO_MAIL_ALREADY_READ;
    }
	pItem[2*SHORTMSG_TITLE_MAXCHAR + 1] = 0;

    //level
    if (pMsgInfo->m_wImportance)
    {
        iLen = sprintf(pItem + 3*SHORTMSG_TITLE_MAXCHAR, "%s", "Imp");
    }
    else
    {
        iLen = sprintf(pItem + 3*SHORTMSG_TITLE_MAXCHAR, "%s", "Com");
    }
    pItem[3*SHORTMSG_TITLE_MAXCHAR + iLen] = 0;

    //time
    ShortMsgGetEmailTime(&stTime, pMsgInfo->stCreatTime);
    iLen = sprintf(pItem+4*SHORTMSG_TITLE_MAXCHAR, "%04d-%02d-%02d %02d:%02d:%02d",stTime.year+1900,stTime.month,stTime.date,stTime.hour,stTime.minute,stTime.second);
	pItem[4*SHORTMSG_TITLE_MAXCHAR+iLen] = 0;

    return MM_TRUE;
}

static MBT_VOID uif_FreeShortMsgList(MBT_VOID)
{
	SHORT_MSG_INFO *pMsgInfo = uiv_ptrShortMsgInfo;
	SHORT_MSG_INFO *pNextMsg;
	while(pMsgInfo)
	{
		pNextMsg = pMsgInfo->pNextMsg;

		if(pMsgInfo->pMsgName)
		{
			uif_ForceFree(pMsgInfo->pMsgName);
		}

		uif_ForceFree(pMsgInfo);
		pMsgInfo = pNextMsg;
	}
	
	uiv_ptrShortMsgInfo = MM_NULL;
}


static MBT_VOID uif_DeleteAllMsgSlot(MBT_VOID )
{
    SHORT_MSG_INFO *pMsgInfo = uiv_ptrShortMsgInfo;
    SHORT_MSG_INFO *pMsgInfoFrev;

    if(MM_NULL == pMsgInfo)
    {
        return;
    }
    pMsgInfoFrev = pMsgInfo;
    while(pMsgInfo)
    {
        pMsgInfoFrev =pMsgInfo; 
        if(pMsgInfoFrev->pMsgName)
        {
            uif_ForceFree(pMsgInfoFrev->pMsgName);
        }           
        uif_ForceFree(pMsgInfoFrev);
        pMsgInfo = pMsgInfo->pNextMsg;
    }
#if(1 == M_CDCA) 
    CDCASTB_DelEmail(0);
#endif
    uiv_ptrShortMsgInfo = MM_NULL;
}

static MBT_VOID uif_DeleteMsgSlot(MBT_S32 iMsgIndex )
{
    MBT_S32 i;
    SHORT_MSG_INFO *pMsgInfo = uiv_ptrShortMsgInfo;
    SHORT_MSG_INFO *pMsgInfoFrev;

    if(MM_NULL == pMsgInfo)
    {
        return;
    }

    i = 0;
    pMsgInfoFrev = pMsgInfo;
    while(pMsgInfo)
    {
        if(i == iMsgIndex)
        {
            break;
        }
        pMsgInfoFrev =pMsgInfo; 
        pMsgInfo = pMsgInfo->pNextMsg;
        i++;
    }
#if(1 == M_CDCA) 
    CDCASTB_DelEmail(pMsgInfo->ca_dwActionID);
#endif
    if(uiv_ptrShortMsgInfo == pMsgInfo)
    {
        uiv_ptrShortMsgInfo = pMsgInfo->pNextMsg;
    }
    else
    {
        pMsgInfoFrev->pNextMsg = pMsgInfo->pNextMsg;
    }
      
    if(pMsgInfo->pMsgName)
    {
       	uif_ForceFree(pMsgInfo->pMsgName);
    }
       
    uif_ForceFree(pMsgInfo);
}


#if(1 == M_CDCA) 
static MBT_VOID uif_FreeEmailDetail(EMAIL_DETAIL *pstEmail)
{
	EMAIL_DETAIL_NODE *pDetailList;
	EMAIL_DETAIL_NODE *pPrevDetailList;
	if(MM_NULL == pstEmail)
	{
		return;
	}
	
	pstEmail->iPageNumber = 0;
	pDetailList = pstEmail->pDetailList;
	pstEmail->pDetailList = MM_NULL;
	pPrevDetailList = pDetailList;
	while(pDetailList)
	{
		pPrevDetailList = pDetailList;
		pDetailList = pDetailList->pNext;
		uif_ForceFree(pPrevDetailList->pstrDetail);
		uif_ForceFree(pPrevDetailList);
	}
}

static SHORT_MSG_INFO *uif_GetMailSlot(MBT_U32 	ca_dwActionID)
{
    SHORT_MSG_INFO *pstShortMsgInfo = uiv_ptrShortMsgInfo;	
    while(pstShortMsgInfo)
    {
        if(ca_dwActionID == pstShortMsgInfo->ca_dwActionID)
        {
            break;
        }
        pstShortMsgInfo = pstShortMsgInfo->pNextMsg;
    }

    return pstShortMsgInfo;
}
#endif

static MBT_S32 ShortMsg_MailInit(MBT_VOID)
{ 
#if(1 == M_CDCA) 
    MBT_S32 i = 0;
    SHORT_MSG_INFO *pTempMsgInfo = MM_NULL;
    SCDCAEmailHead  *ArrEmailHead = uif_ForceMalloc(SHORTMSG_MAIL_MAXNUM*sizeof(SCDCAEmailHead));
    MBT_U8			byCount;
    MBT_U8			byFromIndex = 0;
    MBT_S32 iStrLen;

    if(MM_NULL == ArrEmailHead)
    {
        return 0;
    }
    memset(ArrEmailHead,0,(SHORTMSG_MAIL_MAXNUM * sizeof(SCDCAEmailHead)));
    byCount = SHORTMSG_MAIL_MAXNUM;  

    //读取email到ArrEmailHead中
    if (CDCASTB_GetEmailHeads(ArrEmailHead, &byCount, &byFromIndex) == CDCA_RC_OK)
    { 
        //MLMF_Print("GetMail_count:%d, fromidx:%d+++++\n", byCount, byFromIndex);
        for( i = 0; i < byCount; ++i)
        {   
            if(MM_NULL == uif_GetMailSlot(ArrEmailHead[i].m_dwActionID))
            {
                pTempMsgInfo = uif_ForceMalloc(sizeof(SHORT_MSG_INFO));
                
                if(MM_NULL == pTempMsgInfo)
                {
                    uif_ForceFree(ArrEmailHead);
                    return 0;
                }
                
                memset(pTempMsgInfo,0,sizeof(SHORT_MSG_INFO));
                
                pTempMsgInfo->pNextMsg = uiv_ptrShortMsgInfo;
                
                uiv_ptrShortMsgInfo = pTempMsgInfo;/*往前加*/

                pTempMsgInfo->stCreatTime = ArrEmailHead[i].m_tCreateTime;
                pTempMsgInfo->ca_dwActionID = ArrEmailHead[i].m_dwActionID;
                pTempMsgInfo->m_bNewEmail = ArrEmailHead[i].m_bNewEmail;
                pTempMsgInfo->m_wImportance = ArrEmailHead[i].m_wImportance;
                iStrLen = strlen(ArrEmailHead[i].m_szEmailHead);
                pTempMsgInfo->pMsgName = uif_ForceMalloc(iStrLen+1);
                
                if(MM_NULL == pTempMsgInfo->pMsgName)
                {
                    pTempMsgInfo->pNextMsg = MM_NULL;
                    uif_ForceFree(pTempMsgInfo);
                    uif_ForceFree(ArrEmailHead);
                    return 0;
                }
                
                memcpy(pTempMsgInfo->pMsgName, ArrEmailHead[i].m_szEmailHead,iStrLen);
                pTempMsgInfo->pMsgName[iStrLen] = 0;
            }
        }
    }
    else
    {
        byCount = 0;
    }

    uif_ForceFree(ArrEmailHead);
    return byCount;
#else
    return 0;
#endif        
}


static MBT_BOOL ShortMsgListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_selectbar_leftIfor),BMPF_GetBMP(m_ui_selectbar_midIfor),BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_VOID ShortMsg_ListInit( LISTITEM* pstList )
{
    SHORT_MSG_INFO *pMsgInfo = uiv_ptrShortMsgInfo;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = SHORTMSG_TITLE_MAXCHAR;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = SHORTMSG_LISTITEM_X;
    pstList->iColumns = 5;

    pstList->iRowStart = SHORTMSG_LISTITEM_Y;
    pstList->iPageMaxItem = SHORTMSG_LISTITEM_MAX;
    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = SHORTMSG_LISTITEM_GAP;
    pstList->iWidth  = SHORTMSG_LISTITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->iColPosition[0] = pstList->iColStart;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+EMAIL_HEAD_TITLE_NO_W; 
    pstList->iColPosition[2] = pstList->iColPosition[1]+EMAIL_HEAD_TITLE_ID_W;
    pstList->iColPosition[3] = pstList->iColPosition[2]+EMAIL_HEAD_TITLE_STATUS_W; 
    pstList->iColPosition[4] = pstList->iColPosition[3]+EMAIL_HEAD_TITLE_LEVEL_W;
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];
    pstList->iColWidth[2] = pstList->iColPosition[3]-pstList->iColPosition[2];  
    pstList->iColWidth[3] = pstList->iColPosition[4]-pstList->iColPosition[3];
    pstList->iColWidth[4] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[4]; 

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    /*style*/
    pstList->cHavesScrollBar = 1;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->ListReadFunction = ShortMsg_ReadListItem;
    pstList->ListDrawBar = ShortMsgListDraw;
    pstList->iNoOfItems = 0;	
    while(pMsgInfo)
    {
        pstList->iNoOfItems++;
        pMsgInfo = pMsgInfo->pNextMsg;
    }

    if(pstList->iNoOfItems>pstList->iPageMaxItem)
    {
        pstList->bMultiplePage = MM_TRUE;
    }
    pstList->iSelect = 0;	
    pstList->pNoItemInfo = "No Mail!";
}

static MBT_VOID uif_ShortMsgDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x;
    MBT_S32 y = EMAIL_HELP_Y;
    MBT_S32 s32Yoffset, s32Xoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    BITMAPTRUECOLOR *pstFramBmp = MM_NULL;
	MBT_CHAR* infostr[2][5]=
	{
		{
			"Select",
			"Confirm",
			"Exit",
			"Delete",
			"Delete All"
		},
		{
			"Select",
			"Confirm",
			"Exit",
			"Delete",
			"Delete All"
		}
	};
	font_height =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_UpDownIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_BlueIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_RedIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][4]), infostr[uiv_u8Language][4])))/2;

    //select
	x = EMAIL_HELP_X + s32Xoffset;
    y = EMAIL_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_UpDownIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    //ok
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][0]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    //delete
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][2]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_BlueIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_UpDownIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(x, y+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_UpDownIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][3]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

    //delete all
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][3]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_UpDownIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(x, y+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_UpDownIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][4]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_VOID ShortMsgGetEmailListInfo(MBT_U16 *pu16Count,MBT_U16 *pu16NewEmail)
{ 
#if(1 == M_CDCA)
    MBT_S32 i;
    SCDCAEmailHead  *ArrEmailHead = uif_ForceMalloc(SHORTMSG_MAIL_MAXNUM*sizeof(SCDCAEmailHead));;
    MBT_U8          byCount;
    MBT_U8          byFromIndex = 0;

    if(MM_NULL == ArrEmailHead)
    {
        return;
    }
    memset(ArrEmailHead,0,(SHORTMSG_MAIL_MAXNUM * sizeof(SCDCAEmailHead)));
    byCount = SHORTMSG_MAIL_MAXNUM;  

    //读取email到ArrEmailHead中
    if (CDCASTB_GetEmailHeads(ArrEmailHead, &byCount, &byFromIndex) == CDCA_RC_OK)
    { 
        for( i = 0; i < byCount; ++i)
        {   
            if(1 == ArrEmailHead[i].m_bNewEmail)
            {
                (*pu16NewEmail)++;
            }
        }
    }
    else
    {
        byCount = 0;
    }

    uif_ForceFree(ArrEmailHead);
#endif	
}


static MBT_BOOL ShortMsgDrawInfo(MBT_VOID)
{
    MBT_S32 s32Yoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    MBT_U16 byCount;
    MBT_U16 u16NewEmail = 0;
    MBT_CHAR string[100];
    BITMAPTRUECOLOR *pstFramBmp;
	MBT_CHAR* infostr[2][3]=
	{
		{
			"Total:",
			"New:",
			"Email can be show up to ",
		},
		{
            "Total:",
            "New:",
            "Email can be show up to ",
		}
	};
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0,SHORTMSG_INFO_X,SHORTMSG_INFO_Y,SHORTMSG_INFO_WIDTH,SHORTMSG_INFO_HEIGHT,pstFramBmp,MM_FALSE);
    ShortMsgGetEmailListInfo(&byCount, &u16NewEmail);
    s32FontStrlen = sprintf(string,"%s %d         %s %d         %s %d",infostr[uiv_u8Language][0],byCount,infostr[uiv_u8Language][1],u16NewEmail,infostr[uiv_u8Language][2],SHORTMSG_MAIL_MAXNUM);
	font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Yoffset = (SHORTMSG_INFO_HEIGHT - WGUIF_GetFontHeight())/2;
    WGUIF_FNTDrawTxt(SHORTMSG_INFO_X,SHORTMSG_INFO_Y + s32Yoffset, s32FontStrlen,string, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(font_height);
    return MM_TRUE;
}

static MBT_BOOL uif_ShortMsgDrawPanel(MBT_VOID)
{	
	MBT_S32 x, y;
	MBT_CHAR* pStr = MM_NULL;
    MBT_S32 s32Font_height = 0;
	
	MBT_CHAR* emailStr[2][6] =
    {
        {
            "Mail",
			"No.",
			"ID",
			"Status",
			"Level",
			"Recieved Time"
        },

        {
            "Mail",
			"No.",
			"ID",
			"Status",
			"Level",
			"Recieved Time"
        },
    };
    uif_ShareDrawCommonPanel(emailStr[uiv_u8Language][0], MM_NULL, MM_TRUE);

    s32Font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
	//No 
	x = EMAIL_HEAD_TITLE_X;	
	y = EMAIL_HEAD_TITLE_Y;
	pStr = emailStr[uiv_u8Language][1];
	uif_DrawTxtAtMid(pStr,x,y,EMAIL_HEAD_TITLE_NO_W,WGUIF_GetFontHeight(),SHORTMSG_LIST_ITEM_UNFOCUS_COLOR);

	x = x+EMAIL_HEAD_TITLE_NO_W;
	pStr = emailStr[uiv_u8Language][2];
	uif_DrawTxtAtMid(pStr,x,y,EMAIL_HEAD_TITLE_ID_W,WGUIF_GetFontHeight(),SHORTMSG_LIST_ITEM_UNFOCUS_COLOR);

	//status
	x = x+EMAIL_HEAD_TITLE_ID_W;
	pStr = emailStr[uiv_u8Language][3];
	uif_DrawTxtAtMid(pStr,x,y,EMAIL_HEAD_TITLE_STATUS_W,WGUIF_GetFontHeight(),SHORTMSG_LIST_ITEM_UNFOCUS_COLOR);

    //level
	x = x+EMAIL_HEAD_TITLE_STATUS_W;
	pStr = emailStr[uiv_u8Language][4];
	uif_DrawTxtAtMid(pStr,x,y,EMAIL_HEAD_TITLE_LEVEL_W,WGUIF_GetFontHeight(),SHORTMSG_LIST_ITEM_UNFOCUS_COLOR);

	//time
	x = x+EMAIL_HEAD_TITLE_LEVEL_W;	
	pStr = emailStr[uiv_u8Language][5];
	uif_DrawTxtAtMid(pStr,x,y,EMAIL_HEAD_TITLE_TIME_W,WGUIF_GetFontHeight(),SHORTMSG_LIST_ITEM_UNFOCUS_COLOR);
    WGUIF_SetFontHeight(s32Font_height);
    
	uif_ShortMsgDisplayHelpInfo();
    return MM_TRUE;
}

#if(1 == M_CDCA) 
static MBT_BOOL ShortMsg_DrawDetailPage(EMAIL_DETAIL *pstEmail,MBT_S32 me_CurPage,MBT_S32 s32TotalPage)
{
    MBT_S32 x, y, i;
    MBT_S32 iTitleWidth;
    MBT_S32 s32FontHeight = 0;
    MBT_S32 iOffset, s32Yoffset, s32Xoffset;
    BITMAPTRUECOLOR *pstFramBmpTemp = MM_NULL;
    EMAIL_DETAIL_NODE *pTempDetailList;
    MBT_CHAR string[50];
    MBT_CHAR* infoStr[2][4] = 
    {
        {
            "Exit",
            "Change Page",
            "Current Page:",
            "Total Page:",
        },
        {
            "Exit",
            "Change Page",
            "Current Page:",
            "Total Page:",
        }
    };
    
    s32FontHeight = WGUIF_GetFontHeight();
    
    x = (OSD_REGINMAXWIDHT - SHORTMSG_MAIL_DETAIL_W)/2;
    y = (OSD_REGINMAXHEIGHT - SHORTMSG_MAIL_DETAIL_H)/2;

    uif_ShareDrawFilledBoxWith4CircleCorner(x, y, SHORTMSG_MAIL_DETAIL_W, SHORTMSG_MAIL_DETAIL_H, 5, SHORTMSG_MAIL_DETAIL_BKB);
    uif_ShareDrawFilledBoxWith4CircleCorner(x+2, y+2, SHORTMSG_MAIL_DETAIL_W-4, SHORTMSG_MAIL_DETAIL_H-4, 5, SHORTMSG_MAIL_DETAIL_BKF);

    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    y = y + SHORTMSG_MAIL_DETAIL_H-40;
    
    //Exit
    s32Xoffset = 40;

	pstFramBmpTemp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    s32Yoffset = (40 - pstFramBmpTemp->bHeight)/2;
    x += s32Xoffset;
    WGUIF_DisplayReginTrueColorBmp(x, y+s32Yoffset, 0, 0, pstFramBmpTemp->bWidth, pstFramBmpTemp->bHeight, pstFramBmpTemp,MM_TRUE);
    
    s32Yoffset = (40 - WGUIF_GetFontHeight())/2;
    x += pstFramBmpTemp->bWidth + 10;
    iOffset = WGUIF_FNTDrawTxt(x, y+s32Yoffset, strlen(infoStr[uiv_u8Language][0]), infoStr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

	pstFramBmpTemp = BMPF_GetBMP(m_ui_Genres_Help_Button_UpDownIfor);
    s32Yoffset = (40 - pstFramBmpTemp->bHeight)/2;
    x += iOffset + 90;
    WGUIF_DisplayReginTrueColorBmp(x, y+s32Yoffset, 0, 0, pstFramBmpTemp->bWidth, pstFramBmpTemp->bHeight, pstFramBmpTemp,MM_TRUE);
    
    s32Yoffset = (40 - WGUIF_GetFontHeight())/2;
    x += pstFramBmpTemp->bWidth + 10;
    iOffset = WGUIF_FNTDrawTxt(x, y+s32Yoffset, strlen(infoStr[uiv_u8Language][1]), infoStr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    x += iOffset + 90;
    s32Yoffset = (40 - WGUIF_GetFontHeight())/2;
    iOffset = sprintf(string,"%s %d",infoStr[uiv_u8Language][3],s32TotalPage);
    iOffset = WGUIF_FNTDrawTxt(x, y+s32Yoffset,iOffset,string, FONT_FRONT_COLOR_WHITE);

    
    x += iOffset + 90;
    s32Yoffset = (40 - WGUIF_GetFontHeight())/2;
    iOffset = sprintf(string,"%s %d",infoStr[uiv_u8Language][2],me_CurPage);
    iOffset = WGUIF_FNTDrawTxt(x, y+s32Yoffset,iOffset,string, FONT_FRONT_COLOR_WHITE);
    if(MM_NULL == pstEmail)
    {
        return MM_TRUE;
    }

    if(me_CurPage > pstEmail->iPageNumber)
    {
        return MM_TRUE;
    }

    pTempDetailList = pstEmail->pDetailList;
    i = 1;

    while(i<me_CurPage)
    {
        pTempDetailList = pTempDetailList->pNext;
        if(MM_NULL == pTempDetailList)
        {
            return MM_TRUE;
        }
        i++;
    }  

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);	
    iOffset = (40 - WGUIF_GetFontHeight())/2;
    iTitleWidth = WGUIF_FNTGetTxtWidth(strlen(pstEmail->cEmailName), pstEmail->cEmailName);

    x = (OSD_REGINMAXWIDHT - SHORTMSG_MAIL_DETAIL_W)/2;
    y = (OSD_REGINMAXHEIGHT - SHORTMSG_MAIL_DETAIL_H)/2;
    s32Xoffset = (SHORTMSG_MAIL_DETAIL_W - iTitleWidth)/2;
    WGUIF_FNTDrawTxt(x+s32Xoffset, y+iOffset, strlen(pstEmail->cEmailName), pstEmail->cEmailName, FONT_FRONT_COLOR_WHITE);
    
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);	
	WGUIF_FNTDrawLimitWidthTxt(x+12, y+50, strlen(pTempDetailList->pstrDetail), pTempDetailList->pstrDetail, FONT_FRONT_COLOR_WHITE, SHORTMSG_MAIL_DETAIL_W-24, SHORTMSG_CONTENT_HEIGHT);
    
    WGUIF_SetFontHeight(s32FontHeight);

    return MM_TRUE;
}

static MBT_S32 ShortMsgShowDetail(MBT_S32 iPara)
{
    MBT_S32 me_CurPage = 1;
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 x;
    MBT_S32 y;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    EMAIL_DETAIL *pstEmail = (EMAIL_DETAIL *)iPara;
    BITMAPTRUECOLOR Copybitmap;

    if(MM_NULL == pstEmail)
    {
        return iRetKey;
    }
    
    x = (OSD_REGINMAXWIDHT - SHORTMSG_MAIL_DETAIL_W)/2;
    y = (OSD_REGINMAXHEIGHT - SHORTMSG_MAIL_DETAIL_H)/2;

    Copybitmap.bWidth = SHORTMSG_MAIL_DETAIL_W;
    Copybitmap.bHeight = SHORTMSG_MAIL_DETAIL_H;
    WGUIF_GetRectangleImage(x, y, &Copybitmap);
    
    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= ShortMsg_DrawDetailPage(pstEmail,me_CurPage,pstEmail->iPageNumber);
            bRedraw = MM_FALSE;   
        }

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(0);

        switch ( iKey )
        {   
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_SELECT:
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_EXITALL;
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_RED:
                break;

            case DUMMY_KEY_GREEN:
                break;

            case DUMMY_KEY_DNARROW:
#if(1 == M_CDCA) 
                if (pstEmail->iPageNumber==1)
                {
                    break;
                }

                if(++me_CurPage > pstEmail->iPageNumber)
                {
                    me_CurPage = 1;
                }
                bRedraw = MM_TRUE;
#endif                
                break;
            case DUMMY_KEY_UPARROW:
#if(1 == M_CDCA) 
                if (pstEmail->iPageNumber==1)
                {
                    break;
                }

                if(--me_CurPage < 1)
                {
                    me_CurPage = pstEmail->iPageNumber;
                }
                bRedraw = MM_TRUE;
#endif                
            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    WGUIF_PutRectangleImage(x,y, &Copybitmap);
    return iRetKey;
}
#endif

#if(1 == M_CDCA) 
static MBT_BOOL ShortMsg_GetEmailDetailInlist(EMAIL_DETAIL *pstEmail,MBT_S32 iMsgIndex)
{
	MBT_S32 i = 0;
	MBT_S32 iTemp;
	SHORT_MSG_INFO *pMsgInfo = uiv_ptrShortMsgInfo;
	SCDCAEmailContent EmailContent;
    MBT_BOOL bRet = MM_FALSE;
	
	if(MM_NULL == pMsgInfo||MM_NULL == pstEmail)
	{
        return bRet;
	}

	while(i<iMsgIndex)
	{
		pMsgInfo = pMsgInfo->pNextMsg;
		if(MM_NULL == pMsgInfo)
		{
            return bRet;
		}
		i++;
	}
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    iTemp = CDCASTB_GetEmailContent(pMsgInfo->ca_dwActionID,&EmailContent);
	if(CDCA_RC_OK == iTemp)
    {
        pstEmail->ca_u32ActionID = pMsgInfo->ca_dwActionID;

        if(uif_GetEmailDetail( pstEmail, &EmailContent,SHORTMSG_MAIL_DETAIL_W -24,10))
        {
			pMsgInfo->m_bNewEmail = 0;            
            strcpy(pstEmail->cEmailName,pMsgInfo->pMsgName);
        }
        bRet = MM_TRUE;
    }

    return bRet;
}

#endif

 
MBT_S32 uif_ShortMsg(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 iLastSelect;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;	
    MBT_BOOL bShowDetail = MM_FALSE;
    MBT_BOOL bShowInfo = MM_TRUE;
    LISTITEM stShortMsgList;
	MBT_CHAR* pMsgTitle = MM_NULL;
	MBT_CHAR* pMsgContent = MM_NULL;
#if(1 == M_CDCA) 
    EMAIL_DETAIL stEmailDetail ;
    memset(&stEmailDetail,0,sizeof(EMAIL_DETAIL));
#endif
    UIF_StopAV();
#if(1 == M_CDCA) 
    CDCASTB_RequestMaskBuffer();
#endif
    WGUIF_ClsFullScreen();

    stShortMsgList.iSelect = 0;
	
    while ( !bExit )
    {
        if ( bRedraw )
        {
            ShortMsg_MailInit();
            iLastSelect = stShortMsgList.iSelect;
            ShortMsg_ListInit( &stShortMsgList );
            stShortMsgList.iSelect = iLastSelect;
            bRefresh |= uif_ShortMsgDrawPanel();            		
            bShowInfo = MM_TRUE;
        }

        
        if(MM_FALSE == bShowDetail)
        {
            bRefresh |= UCTRF_ListOnDraw(&stShortMsgList);        
        }
        
        if(MM_TRUE == bShowInfo)
        {
            bRefresh |= ShortMsgDrawInfo();  
            bShowInfo = MM_FALSE;
        }

		bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y); 
		bRedraw = MM_FALSE;	
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000 );

        UCTRF_ListGetKey(&stShortMsgList, iKey);

        switch ( iKey )
        {	
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

            case DUMMY_KEY_CARD_IN:
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_MENU:
                if(MM_TRUE == bShowDetail)
                {
                    bRedraw = MM_TRUE;
                    bShowDetail = MM_FALSE;
                }
                else
                {
                    bExit = MM_TRUE;
                    iRetKey = DUMMY_KEY_EXIT;
                }
                break;

            case DUMMY_KEY_EXIT:
                if(MM_TRUE == bShowDetail)
                {
                    bShowDetail = MM_FALSE;
                    bRedraw = MM_TRUE;
                }
                else
                {
                    bExit = MM_TRUE;
                    iRetKey = DUMMY_KEY_EXITALL;
                }
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;            
            case DUMMY_KEY_BLUE_EDIT:
                //delete one
                if ( stShortMsgList.iNoOfItems > 0 )
                {
                    pMsgTitle = "Confirm";
                    pMsgContent = uiv_PtrShortmsgString[uiv_u8Language][13];
                    if (uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
                    {
                        uif_DeleteMsgSlot(stShortMsgList.iSelect); 
                        bRedraw = MM_TRUE;
                    }
                }
                break;
            case DUMMY_KEY_RED:
                //delet all
                if ( stShortMsgList.iNoOfItems > 0 )
                {
                    pMsgTitle = "Confirm";
                    pMsgContent = uiv_PtrShortmsgString[uiv_u8Language][1];
                    if (uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
                    {
                        uif_DeleteAllMsgSlot();
                        bRedraw = MM_TRUE;
                    }
                }
                break;

            case DUMMY_KEY_SELECT:
                if ( stShortMsgList.iNoOfItems <= 0 )
                {
                    break;
                }
#if(1 == M_CDCA) 
                ShortMsg_GetEmailDetailInlist(&stEmailDetail,stShortMsgList.iSelect);
                ShortMsgShowDetail((MBT_S32)(&stEmailDetail));
                bRefresh = MM_TRUE;
                stShortMsgList.bUpdatePage = MM_TRUE;
#endif
                bShowInfo = MM_TRUE;
                break;

            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    
#if(1 == M_CDCA) 
    CDCASTB_RequestUpdateBuffer();
    uif_FreeEmailDetail(&stEmailDetail);	
#endif        
    uif_FreeShortMsgList();
    WGUIF_ClsFullScreen();
    return iRetKey;
}
