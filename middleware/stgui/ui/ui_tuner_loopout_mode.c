#include "ui_share.h"

#define TUNER_LOOPOUT_TOP_LEFT_X 125
#define TUNER_LOOPOUT_TOP_LEFT_Y 150
#define TUNER_LOOPOUT_TOP_LEFT_W 765
#define TUNER_LOOPOUT_TOP_GAP 20
#define TUNER_LOOPOUT_TOP_TXT_W 80
#define TUNER_LOOPOUT_TOP_PIN_W 120

#define TUNER_LOOPOUT_HELP_BAR_X 0
#define TUNER_LOOPOUT_HELP_BAR_Y 670


static MBT_U8 u8TunerLoopoutMode = 0;

static MBT_VOID Tuner_Loopout_DrawHelpInfo( MBT_VOID )
{
	MBT_S32 x = TUNER_LOOPOUT_HELP_BAR_X;
	MBT_S32 y = TUNER_LOOPOUT_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0;
    MBT_S32 s32FontStrlen = 0;
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
	x = TUNER_LOOPOUT_HELP_BAR_X + s32Xoffset;
    y = TUNER_LOOPOUT_HELP_BAR_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    //change
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

static MBT_BOOL Tuner_Loopout_DrawPanel( MBT_VOID)
{
    MBT_CHAR* strInfo[2][1]=
    {
		{
			"Tuner Loopout On/Off",
		},
		{
	        "Tuner Loopout On/Off",
	    }
    };

    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

	Tuner_Loopout_DrawHelpInfo();
	
    return MM_TRUE;
}

static MBT_VOID Tuner_LoopoutDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][1] =
    {
        {
            "Tuner Loopout",
        },
        {
            "Tuner Loopout",
        }
    };
    MBT_CHAR *ptrTitle = MM_NULL;   
    MBT_S32 s32Yoffset = 0;
    MBT_S32 font_height = 0;
    MBT_S32 font_height_temp = 0;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    BITMAPTRUECOLOR *pstFramBmpTemp = NULL;
    MBT_S32 s32ArrX = 0;

    font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    if(bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor),BMPF_GetBMP(m_ui_SetPage_Focus_MidIfor),BMPF_GetBMP(m_ui_SetPage_Focus_RightIfor));

        if (u32ItemIndex == 0)
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
            s32Yoffset = (iHeight - pstFramBmp->bHeight)/2;
            s32ArrX = TUNER_LOOPOUT_TOP_LEFT_X + TUNER_LOOPOUT_TOP_LEFT_W/2;
            WGUIF_DisplayReginTrueColorBmp(s32ArrX, y+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
            pstFramBmpTemp = BMPF_GetBMP(m_ui_SetPage_Right_ArrowIfor);
            s32ArrX = TUNER_LOOPOUT_TOP_LEFT_X + TUNER_LOOPOUT_TOP_LEFT_W - pstFramBmpTemp->bWidth -12;
            WGUIF_DisplayReginTrueColorBmp(s32ArrX, y+s32Yoffset, 0, 0, pstFramBmpTemp->bWidth, pstFramBmpTemp->bHeight, pstFramBmpTemp, MM_TRUE);
        }
        
        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        
        //display per row first col string
        font_height_temp = WGUIF_GetFontHeight();
        pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor);
        s32Yoffset = (pstFramBmp->bHeight - font_height_temp)/2;
        WGUIF_FNTDrawTxt(x+10, y+s32Yoffset, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        
        //display per row first col string
        font_height_temp = WGUIF_GetFontHeight();
        pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor);
        s32Yoffset = (pstFramBmp->bHeight - font_height_temp)/2;
        WGUIF_FNTDrawTxt(x+10, y+s32Yoffset, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(font_height);
}


static MBT_VOID Tuner_LoopoutReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
    MBT_CHAR* s8TunerLoopoutMode[] =
    {
        "Off",
        "On"
    };

    if(MM_NULL == pItem||iItemIndex >= 2)
    {
        return;
    }

    strcpy(pItem,s8TunerLoopoutMode[iItemIndex]);
}

static void Tuner_LoopoutInitEdit(EDIT *pstEdit)
{
    MBT_U8 i;
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_S32 s32Txt_X = 0;
    MBT_S32 s32Txt_W = 0;
    
    if(MM_NULL == pstEdit)
    {
        return;
    }

    pstFramBmp = BMPF_GetBMP(m_ui_SetPage_Left_ArrowIfor);
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 1;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = Tuner_LoopoutDrawItem;

    s32Txt_X = TUNER_LOOPOUT_TOP_LEFT_X + TUNER_LOOPOUT_TOP_LEFT_W/2 + pstFramBmp->bWidth;
    s32Txt_W = TUNER_LOOPOUT_TOP_LEFT_W/2 - pstFramBmp->bWidth*2 -12;
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = Tuner_LoopoutReadData; 
        pstDataEntry[i].iTxtCol = s32Txt_X;
        pstDataEntry[i].iTxtWidth = s32Txt_W;	
        pstDataEntry[i].iCol = TUNER_LOOPOUT_TOP_LEFT_X;
        pstDataEntry[i].iWidth = TUNER_LOOPOUT_TOP_LEFT_W;
        pstDataEntry[i].iHeight = pstFramBmp->bHeight;
        pstDataEntry[i].iRow = TUNER_LOOPOUT_TOP_LEFT_Y + (TUNER_LOOPOUT_TOP_GAP + pstFramBmp->bHeight)*i;	
        pstDataEntry[i].iSelect = u8TunerLoopoutMode;
        pstDataEntry[i].iTotalItems = 2; 
        pstDataEntry[i].field_type = SELECT_BOTTON;        
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 
}

MBT_S32 uif_Tuner_LoopoutMenu( MBT_S32 bExitAuto)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    EDIT stTunerLoopoutEdit;
    DVB_BOX* pstBoxInfo = DBSF_DataGetBoxInfo();
    DATAENTRY *pstDataEntry = stTunerLoopoutEdit.stDataEntry;
    MBT_U8 u8LoopoutMode = 1; //default close
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
    
    u8TunerLoopoutMode = pstBoxInfo->ucBit.u8TunerLoopoutMode;
    UIF_StopAV();
    
    bRefresh |= uif_ResetAlarmMsgFlag();

    while ( !bExit )  
    {
        if ( bRedraw )
        {
            Tuner_Loopout_DrawPanel();
            Tuner_LoopoutInitEdit(&stTunerLoopoutEdit);
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;	

        bRefresh |= UCTRF_EditOnDraw(&stTunerLoopoutEdit);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000);
        UCTRF_EditGetKey(&stTunerLoopoutEdit,iKey);
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
                if (u8TunerLoopoutMode != pstDataEntry[0].iSelect)
                {
                    u8LoopoutMode = !pstDataEntry[0].iSelect;
                    MLMF_Print("select u8LoopoutMode:%d\n", u8LoopoutMode);
                    MLMF_Tuner_SetLoopOutMode(u8LoopoutMode);
                    u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    pstBoxInfo->ucBit.u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],1);
                    iRetKey = DUMMY_KEY_EXIT;
                    bExit = MM_TRUE;
                }
                break;
                
            case DUMMY_KEY_MENU:
                iRetKey = DUMMY_KEY_EXIT;
                bExit = MM_TRUE;
                if (u8TunerLoopoutMode != pstDataEntry[0].iSelect)
                {
                    u8LoopoutMode = !pstDataEntry[0].iSelect;
                    MLMF_Print("menu u8LoopoutMode:%d\n", u8LoopoutMode);
                    MLMF_Tuner_SetLoopOutMode(u8LoopoutMode);
                    u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    pstBoxInfo->ucBit.u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],1);
                }
                break;	
                
            case DUMMY_KEY_EXIT:
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
                if (u8TunerLoopoutMode != pstDataEntry[0].iSelect)
                {
                    u8LoopoutMode = !pstDataEntry[0].iSelect;
                    MLMF_Print("exit u8LoopoutMode:%d\n", u8LoopoutMode);
                    MLMF_Tuner_SetLoopOutMode(u8LoopoutMode);
                    u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    pstBoxInfo->ucBit.u8TunerLoopoutMode = pstDataEntry[0].iSelect;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],1);
                    iRetKey = DUMMY_KEY_EXIT;
                    bExit = MM_TRUE;
                }
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

    u8TunerLoopoutMode = 0;
    WGUIF_ClsFullScreen();
    
    return iRetKey;
}

