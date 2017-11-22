#include "ui_share.h"

#define ANTENNA_SET_HELP_X  0
#define ANTENNA_SET_HELP_Y  0
#define MANUAL_SRCH_TOP_LEFT_X 148
#define MANUAL_SRCH_TOP_LEFT_Y 155
#define SRCH_MAX_IEM_LINE   10
#define MANUAL_SRCH_ITEM_W 760
#define MANUAL_SRCH_ITEM_H 35
#define MANUAL_SRCH_1ST_ITEM_X (MANUAL_SRCH_TOP_LEFT_X)
#define MANUAL_SRCH_1ST_ITEM_Y (MANUAL_SRCH_TOP_LEFT_Y)
#define MANUAL_SRCH_SIGNAL_TXT_W 70
#define MANUAL_SRCH_STRENGTH_BAR_X (MANUAL_SRCH_TOP_LEFT_X)
#define MANUAL_SRCH_STRENGTH_BAR_Y (MANUAL_SRCH_TOP_LEFT_Y+372)
#define MANUAL_SRCH_LIST_ITEM_GAP (58)
#define MANUAL_SRCH_EDIT_MODE_LISTITEMS_NUM 4
#define AUTO_SRCH_PROGRESS_BAR_WIDTH 754
#define MANUAL_SRCH_TXT_W 160
#define MANUAL_SRCH_RIGHT_ARROW_TO_END_W 30
#define MANUAL_SRCH_TXT_TO_ARROW_W 60
#define MANUAL_SRCH_SIGNER_H 50

typedef enum _M_NetworkSearchType_e
{
	MM_NETWORK_SEARCH_NO,
	MM_NETWORK_SEARCH_YES,
	MM_NETWORK_SEARCH_MAX
}MMT_Network_Search_Type_E;

typedef struct _ui_srch_para_
{
    TRANS_INFO stTransInfo;
    MBT_S32 s32EndFrenq;
}UI_SRCHPARAM;

static UI_SRCHPARAM uiv_stSrchParam = 
{
    .stTransInfo.u32TransInfo = 0,
    .s32EndFrenq = 0,
};

static MBT_BOOL  s_bNetworkSearch = MM_FALSE;

MBT_VOID uif_DrawProgress(MBT_S32 x, MBT_S32 y, MENU_PROGRESS_TYPE me_ProgressType, MBT_U32 me_ProgressRate, MBT_S32 me_TotalLen,MBT_S32 iTotalStep)
{
    MBT_S32 me_NeedPainLen;
    MBT_U32 u32Color = FONT_FRONT_COLOR_RED;
    MBT_U32 u32BackColor = SUBAREA_BKG_COLOR;

    if(me_ProgressRate > 100||me_ProgressType > MAX_PROGRESS_TYPE||iTotalStep == 0)
    {
        return;
    }

    if(MENU_PROGRESS_GREEN == me_ProgressType)
    {
        u32Color = FONT_FRONT_COLOR_GREEN;
    }
    else if(MENU_PROGRESS_YELLOW== me_ProgressType)
    {
        u32Color = FONT_FRONT_COLOR_YELLOW;
    }
    else if(MENU_PROGRESS_RED== me_ProgressType)
    {		
        u32Color = FONT_FRONT_COLOR_RED;
    }

    /**********************重画背景****************************/       
    if(me_ProgressRate > iTotalStep)
    {
        me_NeedPainLen = me_TotalLen;
    }
    else
    {
        me_NeedPainLen = me_TotalLen*me_ProgressRate/iTotalStep;
    }

    WGUIF_DrawFilledRectangle(x+me_NeedPainLen, y, me_TotalLen-me_NeedPainLen,16, u32BackColor);
    WGUIF_DrawFilledRectangle(x, y, me_NeedPainLen,16, u32Color);
}

static MBT_BOOL SrchAntennaDisplaySignal(MBT_VOID)
{
	MBT_U32 strength;
	MBT_U32 quality;
	MBT_U32 ber;
	MBT_S32 iTemp;
	MBT_S32 iLen;
	MBT_S32 x;
	MBT_S32 y;
    MBT_CHAR pstring[64];
    MBT_S32 s32Yoffset = 0;
    MBT_S32 font_height = 0;
    MBT_S32 s32TxtW = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Quality",
        },
        {
            "Quality",
        }
    };

	MLMF_Tuner_GetStatus(0,&strength,&quality,&ber);
    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    s32TxtW = WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]);
    WGUIF_DisplayReginTrueColorBmp(0, 0, MANUAL_SRCH_STRENGTH_BAR_X+s32TxtW+60, MANUAL_SRCH_STRENGTH_BAR_Y,AUTO_SRCH_PROGRESS_BAR_WIDTH+90,MANUAL_SRCH_SIGNER_H*2,pstFramBmp,MM_FALSE);

    s32Yoffset = (WGUIF_GetFontHeight() - BMPF_GetBMPHeight(m_ui_Signer_progressbar_white_midIfor))/2;

	//level bar
    iTemp = (strength*(AUTO_SRCH_PROGRESS_BAR_WIDTH))/100;
	x = MANUAL_SRCH_STRENGTH_BAR_X+s32TxtW+40;
    y = MANUAL_SRCH_STRENGTH_BAR_Y;
    uif_ShareDrawCombinHBar(x, y + s32Yoffset,
                            AUTO_SRCH_PROGRESS_BAR_WIDTH,
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
	    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
	                            iTemp,
	                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_leftIfor),
	                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_midIfor),
	                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_rightIfor));
	}
	x += (AUTO_SRCH_PROGRESS_BAR_WIDTH + 30);
	iLen = sprintf(pstring,"%3d%%",strength);
    WGUIF_FNTDrawTxt(x,y, strlen(pstring),pstring, FONT_FRONT_COLOR_WHITE);

	
    
	//quality bar
    iTemp = (quality*(AUTO_SRCH_PROGRESS_BAR_WIDTH))/100;
	x = MANUAL_SRCH_STRENGTH_BAR_X+s32TxtW+40;
    y = MANUAL_SRCH_STRENGTH_BAR_Y + MANUAL_SRCH_SIGNER_H;

    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
                            AUTO_SRCH_PROGRESS_BAR_WIDTH,
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
	    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
	                            iTemp,
	                            BMPF_GetBMP(m_ui_Signer_progressbar_green_leftIfor),
	                            BMPF_GetBMP(m_ui_Signer_progressbar_green_midIfor),
	                            BMPF_GetBMP(m_ui_Signer_progressbar_green_rightIfor));
	}
	x += (AUTO_SRCH_PROGRESS_BAR_WIDTH + 30);
	iLen = sprintf(pstring,"%3d%%",quality);
	WGUIF_FNTDrawTxt(x,y, strlen(pstring),pstring, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
	return MM_TRUE;
}

static MBT_BOOL SrchAntennaSyncFrontEndModify(EDIT *pstEdit,TRANS_INFO *pstTransInfo)
{    
    MBT_S32 iItemIndex;
    MBT_U32 u32Temp;
    MBT_BOOL bChanged = MM_FALSE;
    DATAENTRY *pstDataEntry;
    
    if(MM_NULL == pstEdit||MM_NULL == pstTransInfo)
    {
        return bChanged;
    }

    iItemIndex = pstEdit->iSelect;
    pstDataEntry = pstEdit->stDataEntry;

    switch(iItemIndex)
    {
        case 0 :	//transponder index
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstTransInfo->uBit.uiTPFreq)
            {
                pstTransInfo->uBit.uiTPFreq = u32Temp;
                bChanged = MM_TRUE;
            }
            break;

        case 1:	//frequency
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstTransInfo->uBit.uiTPSymbolRate)
            {
                pstTransInfo->uBit.uiTPSymbolRate = u32Temp;
                bChanged = MM_TRUE;
            }
            break;

        case 2:	//symbol rate
            switch(pstDataEntry[iItemIndex].iSelect)
            {
                case 0:
                    u32Temp = MM_TUNER_QAM_16;
                    break;
                case 1:
                    u32Temp = MM_TUNER_QAM_32;
                    break;
                case 2:
                    u32Temp = MM_TUNER_QAM_64;
                    break;
                case 3:
                    u32Temp = MM_TUNER_QAM_128;
                    break;
                case 4:
                    u32Temp = MM_TUNER_QAM_256;
                    break;
                default:
                    u32Temp = MM_TUNER_QAM_64;
                    break;
            }
            
            u32Temp = pstDataEntry[iItemIndex].iSelect;
            if(u32Temp != pstTransInfo->uBit.uiTPQam)
            {
                pstTransInfo->uBit.uiTPQam = u32Temp;
                bChanged = MM_TRUE;
            }
            break;
			
		case 3: //Network Search
			switch(pstDataEntry[iItemIndex].iSelect)
			{
				case 0:
				default:
					s_bNetworkSearch = MM_FALSE;
					break;
				case 1:
					s_bNetworkSearch = MM_TRUE;
					break;
			}

        default:
            break;
    }
    
    return bChanged;
}



static MBT_VOID SrchAntennaDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][MANUAL_SRCH_EDIT_MODE_LISTITEMS_NUM] =
    {
        {
            "Frequency(MHz)",
            "Symbol",
            "QAM  Type",
            "Network Search",
        },
        {
            "Frequency(MHz)",
            "Symbol",
            "QAM  Type",
            "Network Search",
        }
    };
    MBT_CHAR *ptrTitle = MM_NULL;   
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontHeight;
    MBT_S32 iLeftArrowCol_W;

    s32FontHeight =  WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	
    if(bSelect)
    {
        //big item bg
        if(2==u32ItemIndex || 3==u32ItemIndex)
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);

            iLeftArrowCol_W = MANUAL_SRCH_ITEM_W - MANUAL_SRCH_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor)- BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor) - MANUAL_SRCH_TXT_TO_ARROW_W*2 - MANUAL_SRCH_TXT_W;
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W+BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor)+MANUAL_SRCH_TXT_TO_ARROW_W*2+MANUAL_SRCH_TXT_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        }
        else
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);
        }

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        //display per row first col string
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,iWidth,iHeight, pstFramBmp, MM_FALSE);

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(s32FontHeight);
}


static MBT_VOID SrchAntennaReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
    if(MM_NULL == pItem)
    {
        return;
    }

    if(iDataEntryIndex == 2)
    {
	    switch(iItemIndex)
	    {
	        case 0:
	            strcpy(pItem,"QAM16");
	            break;
	        case 1:
	            strcpy(pItem,"QAM32");
	            break;
	        case 2:
	            strcpy(pItem,"QAM64");
	            break;
	        case 3:
	            strcpy(pItem,"QAM128");
	            break;
	        case 4:
	            strcpy(pItem,"QAM256");
	            break;
	        default:
	            strcpy(pItem,"QAM64");
	            break;
	    }
    }

    if(iDataEntryIndex == 3)
    {	
	    switch(iItemIndex)
	    {
	        case 0:
		    default:
	            strcpy(pItem,"NO");
	            break;
	        case 1:
	            strcpy(pItem,"YES");
	            break;	
	    }
    }
}


static void SrchAntennaInitEdit(EDIT *pstEdit,MBT_U32 u32ScanMode,TRANS_INFO *pstTransInfo)
{
    MBT_U8 i;
    MBT_U8 u8NormalItemNum[4] = {3,4,MM_TUNER_QAM_MAX, MM_NETWORK_SEARCH_MAX};
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    MBT_S32 iTxtCol_W;

    if(MM_NULL == pstEdit||MM_NULL == pstTransInfo)
    {
        return;
    }

    iTxtCol_W = MANUAL_SRCH_ITEM_W - MANUAL_SRCH_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor) - MANUAL_SRCH_TXT_TO_ARROW_W - MANUAL_SRCH_TXT_W;
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    if(MANUAL_SRCH_MODE == u32ScanMode)
    {
        pstEdit->iTotal = 4;  
    }
	else
    {
	    pstEdit->iTotal = 3; 
    }
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = SrchAntennaDrawItem;

    //big high light
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = SrchAntennaReadData;   
        pstDataEntry[i].iTxtCol = MANUAL_SRCH_1ST_ITEM_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = MANUAL_SRCH_TXT_W;	
        pstDataEntry[i].iCol = MANUAL_SRCH_TOP_LEFT_X;
        pstDataEntry[i].iWidth = MANUAL_SRCH_ITEM_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
        pstDataEntry[i].iRow = MANUAL_SRCH_1ST_ITEM_Y+(MANUAL_SRCH_LIST_ITEM_GAP)*i;	
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        if(2 == i || 3 == i)
        {
            pstDataEntry[i].field_type = SELECT_BOTTON;
        }
        else
        {
            pstDataEntry[i].field_type = DATE_FIELD;
        }
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_BLACK;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
        //MLMF_Print("i %d,iTotalItems %d\n",i,pstDataEntry[i].iTotalItems);
    } 


    sprintf(pstDataEntry[0].acDataRead,"%d",pstTransInfo->uBit.uiTPFreq);
    sprintf(pstDataEntry[1].acDataRead,"%d",pstTransInfo->uBit.uiTPSymbolRate);

    switch(pstTransInfo->uBit.uiTPQam)
    {
        case MM_TUNER_QAM_16:
            pstDataEntry[2].iSelect = 0;
            break;
        case MM_TUNER_QAM_32:
            pstDataEntry[2].iSelect = 1;
            break;
        case MM_TUNER_QAM_64:
            pstDataEntry[2].iSelect = 2;
            break;
        case MM_TUNER_QAM_128:
            pstDataEntry[2].iSelect = 3;
            break;
        case MM_TUNER_QAM_256:
            pstDataEntry[2].iSelect = 4;
            break;
        default:
            pstDataEntry[2].iSelect = 2;
            break;
    }

    if(MANUAL_SRCH_MODE == u32ScanMode)
    {
		if(s_bNetworkSearch)
		{
		    pstDataEntry[3].iSelect = 1;
		}
		else
		{
		    pstDataEntry[3].iSelect = 0;
		}
    }
}

static MBT_VOID SrchAntennaDrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y = ANTENNA_SET_HELP_Y;
    MBT_S32 s32Yoffset;
    MBT_S32 s32Xoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR* infostr[2][2]=
    {
        {
            "Confirm",
            "Exit"
        },
        {
            "Confirm",
            "Exit"
        },
    };

    //exit
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])))/2;

	x = ANTENNA_SET_HELP_X + s32Xoffset;
    y = ANTENNA_SET_HELP_Y + UI_ICON_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //comfirm
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}


static MBT_BOOL SrchAntennaDrawPanel( MBT_S32 scan_mode)
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_CHAR *ptrTitle;
    MBT_S32 font_height;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Manual Search",
            "Level",
            "Quality",
            "Auto Search",
        },
        {
            "Manual Search",
            "Level",
            "Quality",
            "Auto Search",
        }
    };


    if(MANUAL_SRCH_MODE == scan_mode)
    {
        ptrTitle = infostr[uiv_u8Language][0];
    }
    else
    {
        ptrTitle = infostr[uiv_u8Language][3];
    }
    
    font_height = WGUIF_GetFontHeight();
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    //Strength
    x = MANUAL_SRCH_TOP_LEFT_X;
    y = MANUAL_SRCH_STRENGTH_BAR_Y;
    WGUIF_FNTDrawTxt(x,y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);



    //Quality
    x = MANUAL_SRCH_TOP_LEFT_X;
    y = MANUAL_SRCH_STRENGTH_BAR_Y + MANUAL_SRCH_SIGNER_H;
    WGUIF_FNTDrawTxt(x,y, strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
    
    SrchAntennaDrawHelpInfo();
    
    return MM_TRUE;
}


MBT_S32  uif_SrchAntennaSetting( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 s32SrchMode = iPara;
    EDIT stFrontEndEdit;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bForceLock = MM_TRUE;
    MBT_BOOL bCheckFrontEnd = MM_TRUE;
    TRANS_INFO stTransInfo;
    UIF_StopAV();
    if(MANUAL_SRCH_MODE == s32SrchMode)
    {
        UI_PRG stProgInfo;
        if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&stProgInfo))
        {
            DBSF_DataReadMainFreq(&stTransInfo);
        }
        else
        {
            stTransInfo = stProgInfo.stService.stPrgTransInfo;
        }
    }
    else
    {
        DBSF_DataReadMainFreq(&stTransInfo);
    }

    DBSF_MntStopHeatBeat();
    MLMF_FP_Display( "srch",4,MM_FALSE);

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= SrchAntennaDrawPanel(s32SrchMode);
            SrchAntennaInitEdit(&stFrontEndEdit,s32SrchMode,&stTransInfo);
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= SrchAntennaDisplaySignal();
        bRefresh |= UCTRF_EditOnDraw(&stFrontEndEdit);
        
        bRedraw = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }

        if(MM_TRUE == bCheckFrontEnd)
        {
            bCheckFrontEnd = MM_FALSE;
            if(MM_TRUE == SrchAntennaSyncFrontEndModify(&stFrontEndEdit,&stTransInfo)||MM_TRUE == bForceLock)
            {
                MLMF_Tuner_Lock(0,stTransInfo.uBit.uiTPFreq,stTransInfo.uBit.uiTPSymbolRate,stTransInfo.uBit.uiTPQam,MM_NULL);         
                bForceLock = MM_FALSE;
            }
        }

        iKey = uif_ReadKey(1000);

		if(MM_FALSE == UCTRF_EditGetKey(&stFrontEndEdit,iKey))
		{
            uif_ShareDisplayResultDlg("Information","Invalid data",DLG_WAIT_TIME);
		}

        switch ( iKey )
        {
            case DUMMY_KEY_SRCH_PROCESS:
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

            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
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
                bCheckFrontEnd = MM_TRUE;
                break;


            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                //若参数有修改，则此处需提示是否保存修改
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
                uiv_stSrchParam.stTransInfo = stTransInfo;
                uiv_stSrchParam.s32EndFrenq = 0;
				if(s_bNetworkSearch == MM_TRUE)
			    {
				    s32SrchMode = AUTO_SRCH_MODE_FROM_SPECIFYFRENQ;
			    }
                WDCtrF_PutWindow(uif_SrchPrg,s32SrchMode);
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_ADDWINDOW;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

           // case DUMMY_KEY_FORCE_REFRESH:
              //  bRefresh = MM_TRUE;
               // break;

            default:   
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        };   
    }

    DBSF_MntStartHeatBeat(BEARTRATE,MM_FALSE,uif_GetDbsMsg);
    WGUIF_ClsFullScreen();
    return iRetKey;
}



static MBT_BOOL SrchDrawPanel(MBT_S32 iSrchMode)
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_CHAR *ptrTitle;
    MBT_S32 font_height;
    MBT_CHAR* infostr[2][5] =
    {
        {
            "Manual Search",
            "Process:",
            "Quality",
            "Auto Search",
            "Network Search",
        },
        {
            "Manual Search",
            "Process:",
            "Quality",
            "Auto Search",
            "Network Search",
        }
    };


    if(MANUAL_SRCH_MODE == iSrchMode)
    {
        ptrTitle = infostr[uiv_u8Language][0];
    }
    else
    {
        if(MM_TRUE == s_bNetworkSearch)
        {
            ptrTitle = infostr[uiv_u8Language][4];
        }
		else
		{
            ptrTitle = infostr[uiv_u8Language][3];
		}
    }
    font_height = WGUIF_GetFontHeight();
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

    //Process
    x = MANUAL_SRCH_TOP_LEFT_X;
    y = MANUAL_SRCH_STRENGTH_BAR_Y + 20;
    WGUIF_FNTDrawTxt(x,y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(font_height);
    
    SrchAntennaDrawHelpInfo();
    
    return MM_TRUE;
}




static MBT_VOID SrchProcessNotify(MBT_S32 iProcess,TRANS_INFO stTrans)
{
    UIF_SendKeyToUi(DUMMY_KEY_SRCH_PROCESS);
}



static MBT_BOOL SrchDisplayProcess(TRANS_INFO stCurSrchTPTrans, MBT_S32 iProcess,MBT_S32 *pu32WriteLine,TRANS_INFO *pstDisplayedTrans,MBT_S32 s32TVCurTP,MBT_S32 s32RadioCurTP,MBT_S32 s32TVTotal,MBT_S32 s32RadioTotal)
{
    MBT_S32 iLen;
    MBT_S32 iTemp = 64;
    MBT_S32 x;
    MBT_S32 y;
    MBT_CHAR pstring[100];
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 font_width = 0;
    MBT_S32 s32TxtW = 0;
    BITMAPTRUECOLOR *pstFramBmp = MM_NULL;
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Process:",
        },
        {
            "Process:",
        }
    };

    if(MM_NULL == pu32WriteLine||MM_NULL == pstDisplayedTrans)
    {
        return MM_FALSE;
    }

	if(pstDisplayedTrans->u32TransInfo != stCurSrchTPTrans.u32TransInfo)
	{
	    *pstDisplayedTrans = stCurSrchTPTrans;
        (*pu32WriteLine)++;
	}

    if(*pu32WriteLine >= SRCH_MAX_IEM_LINE)
    {
        *pu32WriteLine = 0;
    }
    switch(stCurSrchTPTrans.uBit.uiTPQam)
    {
        case MM_TUNER_QAM_16:
            iTemp = 16;
            break;
        case MM_TUNER_QAM_32:
            iTemp = 32;
            break;
        case MM_TUNER_QAM_64:
            iTemp = 64;
            break;
        case MM_TUNER_QAM_128:
            iTemp = 128;
            break;
        case MM_TUNER_QAM_256:
            iTemp = 256;
            break;
        case MM_TUNER_QAM_MAX:
            iTemp = 64;
            break;
    }
    
    font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    if(0 == s32TVCurTP&&0 == s32RadioCurTP)
    {
        iLen = sprintf(pstring,"%d.0MHz/ %dKS/s %d Searching...",stCurSrchTPTrans.uBit.uiTPFreq,stCurSrchTPTrans.uBit.uiTPSymbolRate,iTemp);
    }
    else
    {
        iLen = sprintf(pstring,"%d.0MHz/ %dKS/s %d   %03d TV %03d Radio %03d",stCurSrchTPTrans.uBit.uiTPFreq,stCurSrchTPTrans.uBit.uiTPSymbolRate,iTemp,s32TVTotal + s32RadioTotal,s32TVCurTP,s32RadioCurTP);
    }
	x = MANUAL_SRCH_TOP_LEFT_X;
	y = MANUAL_SRCH_TOP_LEFT_Y + (*pu32WriteLine * MANUAL_SRCH_ITEM_H);
    //MLMF_Print("*pu32WriteLine = %d y = %d %s\n",*pu32WriteLine,y,pstring);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y - 4,MANUAL_SRCH_STRENGTH_BAR_X+AUTO_SRCH_PROGRESS_BAR_WIDTH + 50 - x, MANUAL_SRCH_STRENGTH_BAR_Y - y+8, pstFramBmp, MM_FALSE);
	WGUIF_FNTDrawTxt(x,y,iLen,pstring, FONT_FRONT_COLOR_WHITE);


	//progress bar
    s32Yoffset = (WGUIF_GetFontHeight() - BMPF_GetBMPHeight(m_ui_Signer_progressbar_white_midIfor))/2,

    iTemp = (iProcess*(AUTO_SRCH_PROGRESS_BAR_WIDTH))/100;
    s32TxtW = WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]);
	x = MANUAL_SRCH_STRENGTH_BAR_X+s32TxtW+40;
    y = MANUAL_SRCH_STRENGTH_BAR_Y + 20;
 
    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
                            AUTO_SRCH_PROGRESS_BAR_WIDTH,
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_leftIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_midIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_white_rightIfor));
    iLen = BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_leftIfor)+BMPF_GetBMPWidth(m_ui_Signer_progressbar_green_rightIfor);
    if(iTemp < iLen)
    {
        iTemp = iLen;
    }
    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
                            iTemp,
                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_leftIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_midIfor),
                            BMPF_GetBMP(m_ui_Signer_progressbar_blue_rightIfor));
	
	x += (AUTO_SRCH_PROGRESS_BAR_WIDTH + 20);
	iLen = sprintf(pstring,"%3d%%",iProcess);
    font_width = WGUIF_FNTGetTxtWidth(iLen, pstring);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y - 4, font_width+5, WGUIF_GetFontHeight()+8, pstFramBmp, MM_FALSE);
	WGUIF_FNTDrawTxt(x,y,iLen,pstring, FONT_FRONT_COLOR_WHITE);

    iLen = sprintf(pstring,"Searched:           %d  TV           %d  Radio",s32TVTotal,s32RadioTotal);
    s32Yoffset = WGUIF_FNTGetTxtWidth(iLen,pstring);
    x = (OSD_REGINMAXWIDHT - s32Yoffset)/2;
    y = MANUAL_SRCH_STRENGTH_BAR_Y + 20 + 40;
    font_width = WGUIF_FNTGetTxtWidth(iLen, pstring);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, x-5, y - 4, font_width+10, WGUIF_GetFontHeight()+8, pstFramBmp, MM_FALSE);
	WGUIF_FNTDrawTxt(x,y,iLen,pstring, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(font_height);
    return MM_TRUE;
}

MBT_S32  uif_SrchPrg( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 iProcess = 1;
    MBT_S32 iTVCurTP;
    MBT_S32 iRDCurTP;
    MBT_S32 iTVCurTPDisp = 0;
    MBT_S32 iRDCurTPDisp = 0;
    MBT_S32 iTVTotal = 0;
    MBT_S32 iRDTotal = 0;
    MBT_S32 iSrchMode = iPara;
    MBT_S32 u32DispLine = -1;//后面会++显示当前搜索的频点
    TRANS_INFO stCurSrchTPTrans;
    TRANS_INFO stPrevSrchTransInfo;
    TRANS_INFO stDisplayedTPTrans;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bSrchEnd = MM_FALSE;
    MBT_CHAR *autosearchstr[2][4] = 
    {
        {
            "Search is not complete,\nare you sure to exit?",
            "Network infomation is not detected!",
            "Confirm",
            "Information"
        },
        {
            "Search is not complete,\nare you sure to exit?",
            "Network infomation is not detected!",
            "Confirm",
            "Information"
        }
    };
    
    
    //MLMF_Print("uif_SrchPrg iSrchMode = %d\n",iSrchMode);
    DBSF_MntStopHeatBeat();
    //MLMF_Print("uif_SrchPrg UIF_StopAV\n");
    UIF_StopAV();
    MLMF_FP_Display( "boot",4,MM_FALSE);
    stDisplayedTPTrans.u32TransInfo = dbsm_InvalidTransInfo;
    //MLMF_Print("uif_SrchPrg iSrchMode = %d\n",iSrchMode);
    switch(iSrchMode)
    {
        case MANUAL_SRCH_MODE:
            stCurSrchTPTrans = uiv_stSrchParam.stTransInfo;
            //MLMF_Print("uif_SrchPrg MANUAL_SRCH_MODE uiTPFreq = %d\n",stCurSrchTPTrans.uBit.uiTPFreq);
            break;
        case AUTO_SRCH_MODE_FROM_MAINFRENQ:
            DBSF_DataReadMainFreq(&stCurSrchTPTrans);
            break;
        case AUTO_SRCH_MODE_FROM_SPECIFYFRENQ:
            stCurSrchTPTrans = uiv_stSrchParam.stTransInfo;
            break;
        default:
            DBSF_DataReadMainFreq(&stCurSrchTPTrans);
            break;
    }
    
    if(MANUAL_SRCH_MODE == iSrchMode)
    {
        DBSF_SrchStartPrgSrch(SrchProcessNotify,stCurSrchTPTrans,MM_TRUE);
    }
    else
    {
        //MLMF_Print("uif_SrchPrg frenq = %d\n",stCurSrchTPTrans.uBit.uiTPFreq*1000);
        DBSF_ResetProg();
        TMF_CleanAllUITimer();
        uif_RemoveTimerFile();
        DBSF_SrchStartAutoSrch(SrchProcessNotify,stCurSrchTPTrans,0,MM_TRUE,MM_TRUE);
    }

    stPrevSrchTransInfo = stCurSrchTPTrans;
    while ( !bExit )
    {
        if ( bRedraw )
        {
            SrchDrawPanel(iSrchMode);
            bRefresh |= SrchDisplayProcess(stCurSrchTPTrans,0,&u32DispLine,&stDisplayedTPTrans,iTVCurTPDisp,iRDCurTPDisp,iTVTotal,iRDTotal);
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(300);

        iProcess = DBSF_GetPrgSrchTaskProcess(&stCurSrchTPTrans);

        switch(iProcess)
        {
            case m_DbsTunerUnLock:
                break;

            case m_DbsNitTimeOut:
            case m_DbsNoNetInfo:
                uif_ShareDisplayResultDlg(autosearchstr[uiv_u8Language][3],autosearchstr[uiv_u8Language][1],DLG_WAIT_TIME);
                bExit = MM_TRUE;
                continue;

            case m_DbsSdtTimeOut:
                break;

            default:
                if(iProcess >0 &&iProcess <= 100)
                {
                    TRANS_INFO stNeedDisplayTransInfo = stDisplayedTPTrans;
                    iTVCurTP = 0;
                    iRDCurTP = 0;
                    if(100 == iProcess)
                    {
                        DBSF_ListSrchGetPrgNumByTypeAndTrans(&iTVCurTP,&iRDCurTP,stCurSrchTPTrans);
                        DBSF_ListSrchGetPrgNumByType(&iTVTotal,&iRDTotal);
                        stNeedDisplayTransInfo = stCurSrchTPTrans;
                        //MLMF_Print("100 == iProcess iTVTotal = %d iRDTotal  = %d\n",iTVTotal,iRDTotal);
                    }
                    else if(stCurSrchTPTrans.u32TransInfo != stPrevSrchTransInfo.u32TransInfo)
                    {
                        DBSF_ListSrchGetPrgNumByTypeAndTrans(&iTVCurTP,&iRDCurTP,stPrevSrchTransInfo);
                        //MLMF_Print("Read frenq %d iTVCurTP = %d iRDCurTP  = %d\n",stPrevSrchTransInfo.uBit.uiTPFreq,iTVCurTP,iRDCurTP);
                        iTVTotal += iTVCurTP;
                        iRDTotal += iRDCurTP;
                        stNeedDisplayTransInfo = stPrevSrchTransInfo;
                        stPrevSrchTransInfo = stCurSrchTPTrans;
                    }

                    if(stDisplayedTPTrans.u32TransInfo != stNeedDisplayTransInfo.u32TransInfo||100 == iProcess)
                    {
                        iTVCurTPDisp = iTVCurTP;
                        iRDCurTPDisp = iRDCurTP;
                        //MLMF_Print("SrchDisplayProcess frenq %d iTVCurTPDisp %d iRDCurTPDisp %d iTVTotal %d,iRDTotal %d\n",stNeedDisplayTransInfo.uBit.uiTPFreq,iTVCurTPDisp,iRDCurTPDisp,iTVTotal,iRDTotal);
                        bRefresh |= SrchDisplayProcess(stNeedDisplayTransInfo,iProcess,&u32DispLine,&stDisplayedTPTrans,iTVCurTPDisp,iRDCurTPDisp,iTVTotal,iRDTotal);
                    }

                    if(100 == iProcess)
                    {
                        WGUIF_ReFreshLayer();
                        DBSF_SrchEndPrgSrch();
                        iRetKey = DUMMY_KEY_EXITALL;
                        bExit = MM_TRUE;
                        bSrchEnd = MM_TRUE;
                        iKey = DUMMY_KEY_SRCH_PROCESS;
                        MLMF_Task_Sleep(2000);
                        //MLMF_Print("100 == iProcess End iRetKey = %x\n",iRetKey);
                    }
                }
            break;
        };

        switch ( iKey )
        {
            case DUMMY_KEY_SRCH_PROCESS:
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

            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                if(uif_ShareMakeSelectDlgNoTitle(autosearchstr[uiv_u8Language][0],MM_FALSE))
                {	
                    iRetKey = iKey;
                    bExit = MM_TRUE;
                    if(DUMMY_KEY_EXIT == iKey)
                    {
                        iRetKey = DUMMY_KEY_EXITALL;
                        bExit = MM_TRUE;
                    }
                }
                break;

#if(OVT_FAC_MODE == 1)
//开机自动搜台按产测键退出搜台
			case DUMMY_KEY_FAC_MAIN:
			case DUMMY_KEY_FAC_SYS:
			case DUMMY_KEY_FAC_AGE:
				iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
				break;
#endif
            case DUMMY_KEY_PRGUPDATE:
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            default:   
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        };   
    }


    if(MM_FALSE == bSrchEnd)
    {
        DBSF_SrchEndPrgSrch();
    }
    DBSF_MntStartHeatBeat(BEARTRATE,MM_FALSE,uif_GetDbsMsg);
    uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_TUNERUNLOCK);
    WGUIF_ClsFullScreen();
    return iRetKey;
}


