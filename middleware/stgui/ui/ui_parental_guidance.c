#include "ui_share.h"

#define PARENTAL_GUIDANCE_TOP_LEFT_X 148
#define PARENTAL_GUIDANCE_TOP_LEFT_Y 155
#define PARENTAL_GUIDANCE_TOP_LEFT_W 760
#define PARENTAL_GUIDANCE_TOP_GAP 58
#define PARENTAL_GUIDANCE_TOP_TXT_W 160

#define PARENTAL_GUIDANCE_RIGHT_ARROW_TO_END_W 30
#define PARENTAL_GUIDANCE_TXT_TO_ARROW_W 60

#define PARENTAL_GUIDANCE_HELP_BAR_X 0
#define PARENTAL_GUIDANCE_HELP_BAR_Y 670



static MBT_VOID Parental_Guidance_DrawHelpInfo( MBT_VOID )
{
	MBT_S32 x;
	MBT_S32 y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0, s32Xoffset;
    MBT_S32 s32FontStrlen;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][3]=
    {
        {
			"Change",
			"Exit",
			"Save"
        },
        {
			"Change",
			"Exit",
			"Save"
        },
    };

    font_height =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_LeftRightIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

    //ok
	x = PARENTAL_GUIDANCE_HELP_BAR_X + s32Xoffset;
    y = PARENTAL_GUIDANCE_HELP_BAR_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    //left/right
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][2]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][0]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_BOOL Parental_Guidance_DrawPanel( MBT_VOID)
{
    MBT_CHAR* strInfo[2][1]=
    {
		{
			"Parental Guidance",
		},
		{
	        "Parental Guidance",
	    }
    };

    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

	Parental_Guidance_DrawHelpInfo();
	
    return MM_TRUE;
}

static MBT_VOID Parental_GuidanceDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][2] =
    {
        {
            "Parental Guidance",
            "Pin Code"
        },
        {
            "Parental Guidance",
            "Pin Code"
        }
    };
    MBT_CHAR *ptrTitle = MM_NULL;   
    MBT_S32 s32Yoffset = 0;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_S32 s32FontHeight = 0;
    MBT_S32 iLeftArrowCol_W;
    
    s32FontHeight =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    if(bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor),BMPF_GetBMP(m_ui_SetPage_Focus_MidIfor),BMPF_GetBMP(m_ui_SetPage_Focus_RightIfor));

        if (u32ItemIndex == 0)
        {
            iLeftArrowCol_W = PARENTAL_GUIDANCE_TOP_LEFT_W - PARENTAL_GUIDANCE_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_SetPage_Left_ArrowIfor)- BMPF_GetBMPWidth(m_ui_SetPage_Right_ArrowIfor) - PARENTAL_GUIDANCE_TXT_TO_ARROW_W*2 - PARENTAL_GUIDANCE_TOP_TXT_W;
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Right_ArrowIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W+BMPF_GetBMPWidth(m_ui_SetPage_Left_ArrowIfor)+PARENTAL_GUIDANCE_TXT_TO_ARROW_W*2+PARENTAL_GUIDANCE_TOP_TXT_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        }
        
        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        
        s32Yoffset = (iHeight - WGUIF_GetFontHeight())/2;
        WGUIF_FNTDrawTxt(x+10, y+s32Yoffset, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        
        s32Yoffset = (iHeight - WGUIF_GetFontHeight())/2;
        WGUIF_FNTDrawTxt(x+10, y+s32Yoffset, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(s32FontHeight);
}


static MBT_VOID Parental_GuidanceReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
    MBT_CHAR* cardMngVdStr[] =
    {
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
    };

    if(MM_NULL == pItem||iItemIndex > 14)
    {
        return;
    }

    strcpy(pItem,cardMngVdStr[iItemIndex]);
}

static void Parental_GuidanceInitEdit(EDIT *pstEdit)
{
    MBT_U8 i;
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_U8 rate;
    MBT_S32 iTxtCol_W;
    
    if(MM_NULL == pstEdit)
    {
        return;
    }
    
    iTxtCol_W = PARENTAL_GUIDANCE_TOP_LEFT_W - PARENTAL_GUIDANCE_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_SetPage_Right_ArrowIfor) - PARENTAL_GUIDANCE_TXT_TO_ARROW_W - PARENTAL_GUIDANCE_TOP_TXT_W;

#if(1 == M_CDCA)
    CDCASTB_GetRating(&rate);
#endif
    if(rate > 18||rate < 4)
    {
        rate = 18;
    }

    
    pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 2;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = Parental_GuidanceDrawItem;

    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = (i ? MM_NULL : Parental_GuidanceReadData); 
        pstDataEntry[i].iTxtCol = PARENTAL_GUIDANCE_TOP_LEFT_X + iTxtCol_W;
        pstDataEntry[i].iTxtWidth = PARENTAL_GUIDANCE_TOP_TXT_W;	
        pstDataEntry[i].iCol = PARENTAL_GUIDANCE_TOP_LEFT_X;
        pstDataEntry[i].iWidth = PARENTAL_GUIDANCE_TOP_LEFT_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_SetPage_Focus_MidIfor);
        pstDataEntry[i].iRow = PARENTAL_GUIDANCE_TOP_LEFT_Y + (PARENTAL_GUIDANCE_TOP_GAP)*i;	
        pstDataEntry[i].iSelect = (i ? 0 : rate-4);
        pstDataEntry[i].iTotalItems = (i ? 6 : 15); 
        pstDataEntry[i].field_type = (i ? PIN_FIELD : SELECT_BOTTON);        
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 
}

//because no need epg event rate, so become ca watch level ui
MBT_S32 uif_Parental_GuidanceMenu( MBT_S32 bExitAuto)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_U16 ret = CDCA_RC_OK;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    EDIT stSetViewDegreeEdit;
    DATAENTRY *pstDataEntry = stSetViewDegreeEdit.stDataEntry;
    MBT_U8 PinCode[7] = {0};
    MBT_U8 i;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Information",
            "Setting Fail!",
			"Setting Success!",
        },
        {
			"Information",
            "Setting Fail!",
			"Setting Success!",
        }
    };

    bRefresh |= uif_ResetAlarmMsgFlag();
    UIF_StopAV();
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            Parental_Guidance_DrawPanel();
            Parental_GuidanceInitEdit(&stSetViewDegreeEdit);
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;	

        bRefresh |= UCTRF_EditOnDraw(&stSetViewDegreeEdit);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(2000);
        UCTRF_EditGetKey(&stSetViewDegreeEdit,iKey);
        switch ( iKey )
        {
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_SELECT:
                memcpy(PinCode, pstDataEntry[1].acDataRead, 6);
                for (i = 0; i < 6; i++)
                {
                    PinCode[i] = PinCode[i] - '0';
                }
	#if(1 == M_CDCA)			
                ret = CDCASTB_SetRating(PinCode, pstDataEntry[0].iSelect+4);
                if (ret == CDCA_RC_OK)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                    iRetKey = iKey;
                    bExit = MM_TRUE;
                }
                else
	#endif				
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                }
                break;
                
            case DUMMY_KEY_MENU:
                iRetKey = DUMMY_KEY_EXIT;
                bExit = MM_TRUE;
                break;	
                
            case DUMMY_KEY_EXIT:
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
                break;
                
            case -1:
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

    WGUIF_ClsFullScreen();
    
    return iRetKey;
}





