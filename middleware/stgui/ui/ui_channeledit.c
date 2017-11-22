#include "ui_share.h"

#define CHNEDIT_ITEM_WIDTH  604
#define CHNEDIT_ITEM_GAP 20
#define CHNEDIT_ITEM_MAX 8
#define CHANNEL_EDIT_TITLE_X   (125)
#define CHANNEL_EDIT_TITLE_Y   (140)
#define CHANNEL_EDIT_BROWSERX   (CHANNEL_EDIT_TITLE_X -5)
#define CHANNEL_EDIT_BROWSERY   (CHANNEL_EDIT_TITLE_Y + 50)
#define CHANNEL_EDIT_BACKGROUND_COLOUR  0xff044fc7
#define CHANNEL_EDIT_PREVIEW_COLOUR  0x00000000
#define CHANNEL_EDIT_PREVIEW_BG_COLOUR  0xfffff111

#define CHNEDIT_MSGBAR_WIDTH  310
#define CHNEDIT_MSGBAR_HEIGHT 150

#define EDIT_MSG_DISAPPEAR_TIME  2

#define CHANNEL_EDIT_PROG_GAP 30

#define CHNEDIT_VIDEOAREA_WIDTH  418
#define CHNEDIT_VIDEOAREA_HEIGHT 236
#define CHNEDIT_VIDEOAREA_X  (CHANNEL_EDIT_BROWSERX + CHNEDIT_ITEM_WIDTH + CHANNEL_EDIT_PROG_GAP)
#define CHNEDIT_VIDEOAREA_Y     (CHANNEL_EDIT_TITLE_Y+1)

#define CHANNEL_EDIT_HELP_X 0
#define CHANNEL_EDIT_HELP_Y 670

#define CHANNEL_LIST_TO_SCROOL 4

/***********************************************************************************************
*	节目编辑退出后保存页面
*
*	传入参数:
*		
*		
*
*	返回值:
*		无
***********************************************************************************************/
static MBT_VOID ChangeChnTypeTitleTxt(MBT_S32 s32VideoAudioState)
{
    MBT_S32 s32FontHeight;
    MBT_CHAR* strInfo[2][2]=
    {
		{
			"ALL TV",
			"ALL RADIO"
		},
		{
			"ALL TV",
			"ALL RADIO"
	    }
    };
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR* pTempStr = NULL;
    MBT_S32 s32StrLen = 0;
    MBT_S32 font_width = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32TitleW = 0;

    pstFramBmp = BMPF_GetBMP(m_ui_Scrollbar_line_midIfor);
    s32TitleW = CHNEDIT_ITEM_WIDTH-5+CHANNEL_LIST_TO_SCROOL+pstFramBmp->bWidth;
    uif_ShareDrawCombinHBar( CHANNEL_EDIT_TITLE_X, CHANNEL_EDIT_TITLE_Y, s32TitleW, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_left_arrowIfor);
    WGUIF_DisplayReginTrueColorBmp(CHANNEL_EDIT_TITLE_X+50, CHANNEL_EDIT_TITLE_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_right_arrowIfor);
    WGUIF_DisplayReginTrueColorBmp(CHANNEL_EDIT_TITLE_X+s32TitleW-50-BMPF_GetBMPWidth(m_ui_programedit_title_right_arrowIfor), CHANNEL_EDIT_TITLE_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);


    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDTITLE_FONT_HEIGHT);
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_midIfor);
    if (s32VideoAudioState == VIDEO_STATUS)//tv
    {
        pTempStr = strInfo[uiv_u8Language][0];
    }
    else
    {
       pTempStr = strInfo[uiv_u8Language][1]; 
    }
    s32StrLen = strlen(pTempStr);
    font_width = WGUIF_FNTGetTxtWidth(s32StrLen, pTempStr);
    s32Yoffset = (pstFramBmp->bHeight - SECONDTITLE_FONT_HEIGHT)/2;
	WGUIF_FNTDrawTxt(CHANNEL_EDIT_TITLE_X + (s32TitleW - font_width)/2, CHANNEL_EDIT_TITLE_Y + s32Yoffset, s32StrLen, pTempStr, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32FontHeight);
}

static MBT_VOID ChangeChnFreInfo(DBST_PROG * pDbst_prog)
{
    MBT_U32 u32Frenq;
    MBT_U32 u32Sym;
    MMT_TUNER_QamType_E u32Polar;
    MBT_CHAR buf[64];
    MBT_S32 iLen;
    MBT_S32 s32FontHeight;
    MBT_S32 x = CHNEDIT_VIDEOAREA_X;
    MBT_S32 y = CHNEDIT_VIDEOAREA_Y + CHNEDIT_VIDEOAREA_HEIGHT + 95;

    MBT_CHAR* strInfo[2][5]=
    {
		{
			"Freq.:",
			"Sym.:",
			"QAM Type:",
			"MHz",
			"Kbit"
		},
		{
			"Freq.:",
			"Sym.:",
			"QAM Type:",
			"MHz",
			"Kbit"
	    }
    };

    if (MM_NULL == pDbst_prog)
    {
        return;
    }
    
    u32Frenq = pDbst_prog->stPrgTransInfo.uBit.uiTPFreq;
    u32Sym = pDbst_prog->stPrgTransInfo.uBit.uiTPSymbolRate;
    u32Polar = pDbst_prog->stPrgTransInfo.uBit.uiTPQam;

    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	
    //frequency
    iLen = sprintf(buf,"%d%s", u32Frenq, strInfo[uiv_u8Language][3]);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x+180, y, 180, 50, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    WGUIF_FNTDrawTxt(x+180, y, iLen, buf, FONT_FRONT_COLOR_WHITE);

    //symbol rate
    iLen = sprintf(buf,"%d%s", u32Sym, strInfo[uiv_u8Language][4]);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x+180, y+50, 180, 50, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    WGUIF_FNTDrawTxt(x+180,y+50, iLen, buf, FONT_FRONT_COLOR_WHITE);

    //qam
    switch(u32Polar)
    {
        case MM_TUNER_QAM_16:
            iLen = sprintf(buf,"%s", "QAM 16");
            break;

        case MM_TUNER_QAM_32:
            iLen = sprintf(buf,"%s", "QAM 32");
            break;

        case MM_TUNER_QAM_64:
            iLen = sprintf(buf,"%s", "QAM 64");
            break;
            
        case MM_TUNER_QAM_128:
            iLen = sprintf(buf,"%s", "QAM 128");
            break;
            
        case MM_TUNER_QAM_256:
            iLen = sprintf(buf,"%s", "QAM 256");
            break;

        default:
            iLen = sprintf(buf,"%s", "N/A");
            break;
    }
    WGUIF_DisplayReginTrueColorBmp(0, 0, x+180, y+100, 180, 50, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    WGUIF_FNTDrawTxt(x+180,y+100, iLen, buf, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32FontHeight);
}

static MBT_BOOL ChnEditSaveChange(MBT_S32 iChnType, LISTITEM *stChnList)
{
    MBT_S32 i, iModifiedIndex = 0x0fffffff;
    MBT_S32 iAllChNum = stChnList->iNoOfItems;
    MBT_BOOL bNeedToSave = MM_FALSE;
    MBT_BOOL bDisplayMsg = MM_FALSE;
    MBT_CHAR* ptrInfo[2][2] =
    {
        {
            "Information",
            "Save edit?",
        },

        {
            "Information",
            "Save edit?",
        },
    };
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;

    for(i = 0;i < iAllChNum;i++)
    {
        if(uiv_pstPrgEditList[i].ucLastProgram_status != uiv_pstPrgEditList[i].ucProgram_status||0xffff != uiv_pstPrgEditList[i].uSrcPosition)
        {
            bDisplayMsg = MM_TRUE;
            pMsgTitle = ptrInfo[uiv_u8Language][0];
            pMsgContent = ptrInfo[uiv_u8Language][1];
			if (MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
            {
                iModifiedIndex = i;
                bNeedToSave = MM_TRUE;                    
            }
            break;
        }
    }

    if(bNeedToSave)
    {
        DBST_PROG *pstPrgInfo = uiv_PrgList.pstPrgHead;        
        MBT_S32 s32Ret;
        
        bNeedToSave = MM_FALSE;
        for(i = 0;i < iAllChNum; i++)
        {
            if(0 == (LOCK_BIT_MASK&uiv_pstPrgEditList[i].ucLastProgram_status)&&0 != (LOCK_BIT_MASK&uiv_pstPrgEditList[i].ucProgram_status))
            {
                bNeedToSave = MM_TRUE;
            }
        }

        if(MM_TRUE == bNeedToSave)
        {
            DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();         
            s32Ret = uif_SharePwdCheckDlg(pstBoxInfo->ucBit.unPowerOnPwd,MM_FALSE);
            if(s32Ret < 0)
            {
                for(i = 0;i < iAllChNum;i++)
                {
                    if(0 == (LOCK_BIT_MASK&uiv_pstPrgEditList[i].ucLastProgram_status)&&0 != (LOCK_BIT_MASK&uiv_pstPrgEditList[i].ucProgram_status))
                    {
                        uiv_pstPrgEditList[i].ucProgram_status = uiv_pstPrgEditList[i].ucProgram_status & ~LOCK_BIT_MASK ;		 
                    }
                }
            }
        }

        while(iModifiedIndex<iAllChNum)
        {
            if(uiv_pstPrgEditList[iModifiedIndex].ucLastProgram_status !=  uiv_pstPrgEditList[iModifiedIndex].ucProgram_status)
            {
                if((LOCK_BIT_MASK == (uiv_pstPrgEditList[iModifiedIndex].ucProgram_status & LOCK_BIT_MASK))&&(0 == (uiv_pstPrgEditList[iModifiedIndex].ucLastProgram_status & LOCK_BIT_MASK)))
                {
                    uif_ForceInputPWD();
                }

                pstPrgInfo[uiv_pstPrgEditList[iModifiedIndex].uProgramIndex].ucProgram_status = uiv_pstPrgEditList[iModifiedIndex].ucProgram_status;				
                DBSF_DataPrgEdit(&pstPrgInfo[uiv_pstPrgEditList[iModifiedIndex].uProgramIndex]);
            }
            iModifiedIndex++;
        } 
    }

    return bDisplayMsg;
}

static MBT_BOOL uif_ChnEditReadItem(MBT_S32 iIndex,MBT_CHAR *pItem)
{
	DBST_PROG *pstProgInfo =  uiv_PrgList.pstPrgHead;
	if(MM_NULL == pItem)
	{
		return MM_FALSE;
	}


	if(MM_NULL == pstProgInfo||uiv_pstPrgEditList[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
	{
	    memset(pItem,0,5*MAXBYTESPERCOLUMN);
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

	if (uiv_pstPrgEditList[iIndex].u16FavGroup)
	{
		pItem[2*MAXBYTESPERCOLUMN] = CO_FAV;
	}
	else
	{
		pItem[2*MAXBYTESPERCOLUMN] = CO_NULL;
	}


	if (uiv_pstPrgEditList[iIndex].ucProgram_status & LOCK_BIT_MASK )
	{
		pItem[3*MAXBYTESPERCOLUMN] = CO_LOCK;
	}
	else
	{
		pItem[3*MAXBYTESPERCOLUMN] = CO_NULL;
	}

	if ( uiv_pstPrgEditList[iIndex].ucProgram_status & SKIP_BIT_MASK )
	{
		pItem[4*MAXBYTESPERCOLUMN] = CO_DEL;
	}
	else
	{
		pItem[4*MAXBYTESPERCOLUMN] = CO_NULL;
	}

	return MM_TRUE;
}

static MBT_BOOL ChnEditListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
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

static MBT_VOID  uif_ChnEditListInit(LISTITEM *pstList,MBT_S32 iChannelType)
{
    MBT_S32 iIndex;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;  
    MBT_S32 me_StartX, me_StartY;		
    DVB_BOX *pstBoxInfo;
    MBT_S32 iNum;
    MBT_S32 U32AVTransInfo = 0;
    MBT_U8 u8ProgramType = 0;
    MBT_U16 u16SelectServiceID = dbsm_InvalidID;
    
    me_StartX = CHANNEL_EDIT_BROWSERX;
    me_StartY = CHANNEL_EDIT_BROWSERY;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = CHNEDIT_ITEM_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = CHNEDIT_ITEM_GAP;
    pstList->iWidth  = CHNEDIT_ITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    

    pstList->iColumns = 5;
    // Index
    pstList->iColPosition[0] = pstList->iColStart+5;  
    // channel Name
    pstList->iColPosition[1] = pstList->iColPosition[0]+68;
    // fav mark
    pstList->iColPosition[2] = pstList->iColPosition[1]+369;  
    // lock mark
    pstList->iColPosition[3] = pstList->iColPosition[2]+54;
    // skip mark
    pstList->iColPosition[4] = pstList->iColPosition[3]+54;

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];  
    pstList->iColWidth[2] = pstList->iColPosition[3]-pstList->iColPosition[2];  
    pstList->iColWidth[3] = pstList->iColPosition[4]-pstList->iColPosition[3];  
    pstList->iColWidth[4] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[4];  

    pstList->ListReadFunction = uif_ChnEditReadItem;
    pstList->ListDrawBar = ChnEditListDraw;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 1;

    iNum = uiv_PrgList.iPrgNum;
    if(0 == iNum)
    {
        pstList->iSelect = 0;    
        return;
    }
    
    pstBoxInfo = DBSF_DataGetBoxInfo();         

    switch(iChannelType)
    {
        case 0:
            U32AVTransInfo = pstBoxInfo->u32VidTransInfo;
            u16SelectServiceID = pstBoxInfo->u16VideoServiceID;
            u8ProgramType = STTAPI_SERVICE_TELEVISION;
            break;
            
        case 1:
            U32AVTransInfo = pstBoxInfo->u32AudTransInfo;
            u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
            u8ProgramType = STTAPI_SERVICE_RADIO;
            break;
    };
    
    for(iIndex = 0; iIndex < iNum; iIndex++)
    {     
        if(u8ProgramType == pstProgInfo->cProgramType)
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== U32AVTransInfo&&u16SelectServiceID == pstProgInfo->u16ServiceID)
            {
                pstList->iSelect = pstList->iNoOfItems;
            }
            uiv_pstPrgEditList[pstList->iNoOfItems].ucLastProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[pstList->iNoOfItems].ucProgram_status = pstProgInfo->ucProgram_status;
            uiv_pstPrgEditList[pstList->iNoOfItems].u16FavGroup = pstProgInfo->u16FavGroup;
            uiv_pstPrgEditList[pstList->iNoOfItems].uSrcPosition = 0xffff;
            uiv_pstPrgEditList[pstList->iNoOfItems].uProgramIndex= iIndex;
            pstList->iNoOfItems++;
        }
        pstProgInfo++;
    }
}

static MBT_BOOL uif_ChnEditDrawPanel(MBT_S32 s32VideoAudioState)
{
    MBT_CHAR* strInfo[2][10]=
    {
		{
			"Program Edit",
			"Skip",
			"Lock",
			"Fav",
			"ALL TV",
			"Freq.:",
			"Sym.:",
			"QAM Type:",
			"ALL RADIO",
			"Save"
		},
		{
	        "Program Edit",
			"Skip",
			"Lock",
			"Fav",
			"ALL TV",
			"Freq.:",
			"Sym.:",
			"QAM Type:",
			"ALL RADIO",
			"Save"
	    }
    };
    BITMAPTRUECOLOR *pstFramBmpScroll = NULL;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_S32 s32FontHeight = 0; 
    MBT_CHAR* pTempStr = NULL;
    MBT_S32 s32StrLen = 0;
    MBT_S32 font_width = 0;
    MBT_S32 s32Yoffset = 0, s32Xoffset;
    MBT_S32 s32TitleW = 0;
    MBT_S32 s32FontStrlen = 0;
    MBT_S32 s32helpx, s32helpy;

    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

    pstFramBmpScroll = BMPF_GetBMP(m_ui_Scrollbar_line_midIfor);
    s32TitleW = CHNEDIT_ITEM_WIDTH-5+CHANNEL_LIST_TO_SCROOL+pstFramBmpScroll->bWidth;
    uif_ShareDrawCombinHBar( CHANNEL_EDIT_TITLE_X, CHANNEL_EDIT_TITLE_Y, s32TitleW, BMPF_GetBMP(m_ui_programedit_title_leftIfor),BMPF_GetBMP(m_ui_programedit_title_midIfor),BMPF_GetBMP(m_ui_programedit_title_rightIfor));
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_left_arrowIfor);
    WGUIF_DisplayReginTrueColorBmp(CHANNEL_EDIT_TITLE_X+50, CHANNEL_EDIT_TITLE_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_right_arrowIfor);
    WGUIF_DisplayReginTrueColorBmp(CHANNEL_EDIT_TITLE_X+s32TitleW-50-BMPF_GetBMPWidth(m_ui_programedit_title_right_arrowIfor), CHANNEL_EDIT_TITLE_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);

    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDTITLE_FONT_HEIGHT);
    pstFramBmp = BMPF_GetBMP(m_ui_programedit_title_midIfor);
    if (s32VideoAudioState == VIDEO_STATUS)//tv
    {
        pTempStr = strInfo[uiv_u8Language][4];
    }
    else
    {
        pTempStr = strInfo[uiv_u8Language][8]; 
    }
    s32StrLen = strlen(pTempStr);
    font_width = WGUIF_FNTGetTxtWidth(s32StrLen, pTempStr);
    s32Yoffset = (pstFramBmp->bHeight - SECONDTITLE_FONT_HEIGHT)/2;
	WGUIF_FNTDrawTxt(CHANNEL_EDIT_TITLE_X + (s32TitleW - font_width)/2, CHANNEL_EDIT_TITLE_Y + s32Yoffset, s32StrLen, pTempStr, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32FontHeight);

    WGUIF_ClsScreen(CHNEDIT_VIDEOAREA_X, CHNEDIT_VIDEOAREA_Y, CHNEDIT_VIDEOAREA_WIDTH, CHNEDIT_VIDEOAREA_HEIGHT);
    WGUIF_DrawFilledRectangle(CHNEDIT_VIDEOAREA_X-1, CHNEDIT_VIDEOAREA_Y-1, CHNEDIT_VIDEOAREA_WIDTH+2, CHNEDIT_VIDEOAREA_HEIGHT+2, CHANNEL_EDIT_PREVIEW_BG_COLOUR);
    WGUIF_DrawFilledRectangle(CHNEDIT_VIDEOAREA_X, CHNEDIT_VIDEOAREA_Y, CHNEDIT_VIDEOAREA_WIDTH, CHNEDIT_VIDEOAREA_HEIGHT, CHANNEL_EDIT_PREVIEW_COLOUR);

    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	WGUIF_FNTDrawTxt(CHNEDIT_VIDEOAREA_X, CHNEDIT_VIDEOAREA_Y + CHNEDIT_VIDEOAREA_HEIGHT + 95, strlen(strInfo[uiv_u8Language][5]), strInfo[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(CHNEDIT_VIDEOAREA_X, CHNEDIT_VIDEOAREA_Y + CHNEDIT_VIDEOAREA_HEIGHT + 145, strlen(strInfo[uiv_u8Language][6]), strInfo[uiv_u8Language][6], FONT_FRONT_COLOR_WHITE);
	WGUIF_FNTDrawTxt(CHNEDIT_VIDEOAREA_X, CHNEDIT_VIDEOAREA_Y + CHNEDIT_VIDEOAREA_HEIGHT + 195, strlen(strInfo[uiv_u8Language][7]), strInfo[uiv_u8Language][7], FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32FontHeight);

    s32FontHeight =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][9]), strInfo[uiv_u8Language][9]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_GreenIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][1]), strInfo[uiv_u8Language][1]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_YellowIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][2]), strInfo[uiv_u8Language][2]) + 100 
                 + BMPF_GetBMPWidth(m_ui_ChannelEdit_fav_logoIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][3]), strInfo[uiv_u8Language][3])))/2;

    //ok
	s32helpx = CHANNEL_EDIT_HELP_X + s32Xoffset;
    s32helpy = CHANNEL_EDIT_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(strInfo[uiv_u8Language][9]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, strInfo[uiv_u8Language][9], FONT_FRONT_COLOR_WHITE);

    //skip
    s32helpx = s32helpx + WGUIF_FNTGetTxtWidth(s32FontStrlen, strInfo[uiv_u8Language][9]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(strInfo[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, strInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //lock
    s32helpx = s32helpx + WGUIF_FNTGetTxtWidth(s32FontStrlen, strInfo[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(strInfo[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, strInfo[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    //fav
    s32helpx = s32helpx + WGUIF_FNTGetTxtWidth(s32FontStrlen, strInfo[uiv_u8Language][2]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Help_Button_FavIfor);
	WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(strInfo[uiv_u8Language][3]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, strInfo[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32FontHeight);

    return MM_TRUE;
}

MBT_S32  uif_PrgEdit( MBT_S32 bExitAuto )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bChangeChnType = MM_FALSE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedrawInit = MM_TRUE;
    LISTITEM stChnList;
    MBT_S32 iVideoAudioState ;
    MBT_S32 iPrgNum;
    MBT_U32 u32WaitTime = 1000;
    MBT_U32 u32PlayTime = 0xffffffff;
    DVB_BOX *pstBoxInfo;
    DBST_PROG *pstServiceInfo = NULL;
    MBT_U32 u32VideoOutputWinX = CHNEDIT_VIDEOAREA_X;
    MBT_U32 u32VideoOutputWinY = CHNEDIT_VIDEOAREA_Y;
    MBT_U32 u32VideoOutputWinWidth = CHNEDIT_VIDEOAREA_WIDTH;
    MBT_U32 u32VideoOutputWinHeight = CHNEDIT_VIDEOAREA_HEIGHT;
    MBT_CHAR* strlist[2][3]=
    {
        {
            "No TV program !",
            "No Radio program !",
            "Information",
        },
        {
            "No TV program !",
            "No Radio program !",
            "Information",
        }
    };
	
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;
	
    pstBoxInfo = DBSF_DataGetBoxInfo();         
    iVideoAudioState = pstBoxInfo->ucBit.bVideoAudioState;

    if(0 == uif_CreateUIPrgArray())
    {
        return iRetKey;
    }

    iPrgNum = uiv_PrgList.iPrgNum;

    if(MM_NULL != uiv_pstPrgEditList)
    {
        uif_ForceFree(uiv_pstPrgEditList);
    }

    uiv_pstPrgEditList = uif_ForceMalloc((sizeof(CHANNEL_EDIT)*iPrgNum));
    if(MM_NULL == uiv_pstPrgEditList)
    {
        uif_DestroyUIPrgArray();
        return iRetKey;
    }    
    bRefresh |= uif_ResetAlarmMsgFlag();
    
    while ( !bExit )
    {
        if(MM_TRUE == bRedrawInit)
        {
            memset(uiv_pstPrgEditList, 0, (sizeof(CHANNEL_EDIT)*iPrgNum));
            uif_ChnEditListInit(&stChnList, iVideoAudioState);			
            bRefresh |= uif_ChnEditDrawPanel(iVideoAudioState);
            MLMF_AV_SetVideoWindow(u32VideoOutputWinX, u32VideoOutputWinY, u32VideoOutputWinWidth, u32VideoOutputWinHeight);
            if (stChnList.iNoOfItems > 0)
            {
                pstServiceInfo = m_GetUIPrg(stChnList.iSelect);
                ChangeChnFreInfo(pstServiceInfo);
            }
        }
        
        bRefresh |= UCTRF_ListOnDraw(&stChnList);
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedrawInit, UICOMMON_TITLE_AREA_Y);       
        bRedrawInit = MM_FALSE;
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }


        iKey = uif_ReadKey(u32WaitTime);
        switch ( iKey )
        {
            case DUMMY_KEY_SELECT:
                ChnEditSaveChange(iVideoAudioState, &stChnList);
                uif_ResetAlarmMsgFlag();
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                if(VIDEO_STATUS == iVideoAudioState)//TV
                {
                    if(MM_TRUE == DBSF_DataHaveRadioPrg())
                    {
                        iVideoAudioState = AUDIO_STATUS;
                        bRedrawInit = MM_TRUE;
                        u32WaitTime = 300;                    
                        u32PlayTime = MLMF_SYS_GetMS() + 300;
                        bChangeChnType = MM_TRUE;
                    }
                    else if(MM_FALSE == DBSF_DataHaveRadioPrg())//no radio
                    {
                        pMsgTitle = strlist[uiv_u8Language][2];
                        pMsgContent = strlist[uiv_u8Language][1];
                        uif_ShareDisplayResultDlg(pMsgTitle, pMsgContent, EDIT_MSG_DISAPPEAR_TIME);
                        break;
                    }
                }
                else if(AUDIO_STATUS == iVideoAudioState) //Radio
                {
                    if(MM_TRUE == DBSF_DataHaveVideoPrg())
                    {
                        iVideoAudioState = VIDEO_STATUS;
                        bRedrawInit = MM_TRUE;
                        u32WaitTime = 300;                    
                        u32PlayTime = MLMF_SYS_GetMS() + 300;
                        bChangeChnType = MM_TRUE;
                    }
                    else if(MM_FALSE == DBSF_DataHaveVideoPrg())//no tv
                    {
                        pMsgTitle = strlist[uiv_u8Language][2];
                        pMsgContent = strlist[uiv_u8Language][0];
                        uif_ShareDisplayResultDlg(pMsgTitle, pMsgContent, EDIT_MSG_DISAPPEAR_TIME);
                        break;
                    }
                }
                break;
                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
			    bExit = MM_TRUE;
                ChnEditSaveChange(iVideoAudioState, &stChnList);
                uif_ResetAlarmMsgFlag();
                if(DUMMY_KEY_EXIT == iKey)
                {
                    iRetKey = DUMMY_KEY_EXITALL;
                }
                else
                {
                    iRetKey = DUMMY_KEY_EXIT;
                }
                break;
                
            case DUMMY_KEY_PRGITEMUPDATED:
                if(0 == uif_CreateUIPrgArray())
                {
                    iRetKey = DUMMY_KEY_EXITALL;
                    bExit = MM_TRUE;
                }
                else
                {
                    stChnList.bUpdateItem = MM_TRUE;
                }
                break;
            
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                UCTRF_ListGetKey(&stChnList, iKey);
                u32WaitTime = 300;                    
                u32PlayTime = MLMF_SYS_GetMS() + 300;
                break;

            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                UCTRF_ListGetKey(&stChnList, iKey);
                u32WaitTime = 300;                    
                u32PlayTime = MLMF_SYS_GetMS() + 300;
                break;

            case DUMMY_KEY_GREEN://skip
                if(stChnList.iSelect >= iPrgNum)
                {
                    break;
                }
                
                if (uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status & SKIP_BIT_MASK)		 
                { 			
                    uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status = uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status & ~(SKIP_BIT_MASK) ;		 
                }		 
                else		 
                { 			
                    uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status =uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status | SKIP_BIT_MASK ;		 
                }
                stChnList.bUpdateItem = MM_TRUE;            					
                break;

            case DUMMY_KEY_YELLOW_SUBSCRIBE://lock
                if(stChnList.iSelect >= iPrgNum)
                {
                    break;
                }
                
                if (uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status & LOCK_BIT_MASK)		 
                { 			
                    uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status = uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status & ~LOCK_BIT_MASK ;		 
                }		 
                else		 
                {
                    uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status = uiv_pstPrgEditList[stChnList.iSelect].ucProgram_status | LOCK_BIT_MASK ;        
                }
                stChnList.bUpdateItem = MM_TRUE;
                
                break;

            case DUMMY_KEY_FAV:
                if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
                {      
        		    if(DBSF_DataHaveVideoPrg() == MM_FALSE)
                    {
                        break;
                    }
                }
                else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
                {
                    if(DBSF_DataHaveRadioPrg() == MM_FALSE)
                    {
                        break;
                    }
                }
                WDCtrF_PutWindow(uif_ChnFavEditList, 0);
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_ADDWINDOW;
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
                    bRedrawInit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;
                
            case -1:
                u32WaitTime = 2000;
                bRefresh |= uif_AlarmMsgBoxes(CHNEDIT_VIDEOAREA_X+(CHNEDIT_VIDEOAREA_WIDTH-CHNEDIT_MSGBAR_WIDTH)/2, CHNEDIT_VIDEOAREA_Y+(CHNEDIT_VIDEOAREA_HEIGHT-CHNEDIT_MSGBAR_HEIGHT)/2, CHNEDIT_MSGBAR_WIDTH, CHNEDIT_MSGBAR_HEIGHT);
                if (MLMF_SYS_GetMS() >= u32PlayTime)
                {
                    MLUI_DEBUG("---> Play");
                    u32PlayTime = 0xffffffff;
                    pstServiceInfo = m_GetUIPrg(stChnList.iSelect);
                    if (bChangeChnType)
                    {
                        bChangeChnType = MM_FALSE;
                        ChangeChnTypeTitleTxt(iVideoAudioState);
                    }
                    ChangeChnFreInfo(pstServiceInfo);
                    bRefresh |= uif_ChnListPlayPrg(pstServiceInfo);
                    uif_SavePrgToBoxInfo(pstServiceInfo);  
                }
                break;
            
            default:
                if(uif_ShowMsgList(CHNEDIT_VIDEOAREA_X+(CHNEDIT_VIDEOAREA_WIDTH-CHNEDIT_MSGBAR_WIDTH)/2, CHNEDIT_VIDEOAREA_Y+(CHNEDIT_VIDEOAREA_HEIGHT-CHNEDIT_MSGBAR_HEIGHT)/2, CHNEDIT_MSGBAR_WIDTH, CHNEDIT_MSGBAR_HEIGHT))
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

    pstBoxInfo->ucBit.bVideoAudioState = iVideoAudioState;
    DBSF_DataSetBoxInfo(pstBoxInfo);
    if(MM_NULL != uiv_pstPrgEditList)
    {
        uif_ForceFree(uiv_pstPrgEditList);
        uiv_pstPrgEditList = MM_NULL;
    }
    uif_DestroyUIPrgArray();

    WGUIF_ClsFullScreen();
    
    return iRetKey;
}

