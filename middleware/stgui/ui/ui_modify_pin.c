#include "ui_share.h"
#include "nvm_api.h"

#define PIN_SETTING_TOP_LEFT_X 148
#define PIN_SETTING_TOP_LEFT_Y 155
#define PIN_SETTING_TOP_LEFT_W 760
#define PIN_SETTING_TOP_V_GAP (58)
#define PIN_SETTING_PASSWORD_W (160)

#define PIN_SETTING_RIGHT_ARROW_TO_END_W 30
#define PIN_SETTING_TXT_TO_ARROW_W 60

#define PIN_SETTING_LISTITEMS_NUM (3)
#define PIN_HELP_BAR_X 0
#define PIN_HELP_BAR_Y UI_ICON_Y
#define PIN_HELP_BMPTOTXT_W UI_ICON_TEXT_MARGIN
#define PIN_LEN (6)


#define PINSET_PIN_OK 0
#define PINSET_INVALID_PIN 1
#define PINSET_PIN_NOTCONSISTENT 2
#define PINSET_EXIT_NO_HINT 3
#define PINSET_INVALID_PARM 0xff


static MBT_U8 PinSetSaveCheck(DATAENTRY *pstDataEntry)
{
    MBT_U8 ret = PINSET_PIN_OK;

    if (pstDataEntry == MM_NULL)
    {
        return PINSET_INVALID_PARM;
    }
    
    if(pstDataEntry[0].iSelect < pstDataEntry[0].iTotalItems || pstDataEntry[1].iSelect < pstDataEntry[1].iTotalItems || pstDataEntry[2].iSelect < pstDataEntry[2].iTotalItems)
    {
        return PINSET_INVALID_PIN;
    }

    if(0 != strcmp(pstDataEntry[1].acDataRead, pstDataEntry[2].acDataRead))
    {
        return PINSET_PIN_NOTCONSISTENT;
    }

    return ret;
}


static MBT_BOOL uif_Modify_Pin_DrawPanel(MBT_VOID)
{
    MBT_S32 x = PIN_HELP_BAR_X;
	MBT_S32 y = PIN_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0, s32FontStrlen;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][3]=
    {
        {
			"Exit",
			"Save",
			"Modify Pin"
        },
        {
			"Exit",
			"Save",
			"Modify Pin"
        },
    };

	uif_ShareDrawCommonPanel(infostr[uiv_u8Language][2], NULL, MM_TRUE);
    
	//ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = PIN_HELP_BAR_X + s32Xoffset;
    y = PIN_HELP_BAR_Y;
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
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
	return MM_TRUE;
}

static MBT_VOID uif_PinDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* infostr[2][PIN_SETTING_LISTITEMS_NUM] =
    {
        {
            "Enter CA PIN",
            "Enter New CA PIN",        
            "Confirm New CA PIN",        
       	},

        {
			"Enter CA PIN",
            "Enter New CA PIN",        
            "Confirm New CA PIN",  	   
        }
    };
    MBT_S32 s32FontHeight = 0;
	MBT_CHAR* pStr = NULL;
	MBT_S32 s32StartX;
	MBT_S32 s32StartY;
	
    if(MM_TRUE == bHidden)
    {
        return;
    }

	s32FontHeight =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

	if(bSelect)
	{
		uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_SetPage_Focus_LeftIfor),BMPF_GetBMP(m_ui_SetPage_Focus_MidIfor),BMPF_GetBMP(m_ui_SetPage_Focus_RightIfor));

		s32StartX = x + 10;
		s32StartY = y + (iHeight-WGUIF_GetFontHeight())/2;
        pStr = infostr[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(s32StartX,s32StartY,strlen(pStr),pStr,FONT_FRONT_COLOR_WHITE);
	}
	else
	{
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);

        s32StartX = x + 10;
		s32StartY = y + (iHeight-WGUIF_GetFontHeight())/2;
        pStr = infostr[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(s32StartX,s32StartY,strlen(pStr),pStr,FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(s32FontHeight);
}


static void uif_ModifyPinInitEdit(EDIT *stSetPwdEdit)
{
    int i;
    MBT_S32 iTxtCol_W;
    DATAENTRY *pstDataEntry = stSetPwdEdit->stDataEntry;
    
    memset(stSetPwdEdit,0,sizeof(EDIT));
    stSetPwdEdit->bModified = MM_TRUE;
    stSetPwdEdit->iSelect = 0;
    stSetPwdEdit->iPrevSelect = stSetPwdEdit->iSelect;
    stSetPwdEdit->iTotal = 3;	
    stSetPwdEdit->bPaintCurr = MM_FALSE;
    stSetPwdEdit->bPaintPrev = MM_FALSE;
    stSetPwdEdit->EditDrawItemBar = uif_PinDrawItem;

    iTxtCol_W = PIN_SETTING_TOP_LEFT_W - PIN_SETTING_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_SetPage_Right_ArrowIfor) - PIN_SETTING_TXT_TO_ARROW_W - PIN_SETTING_PASSWORD_W;

    //big high light
    for(i = 0;i < stSetPwdEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = MM_NULL;   
        pstDataEntry[i].iTxtCol = PIN_SETTING_TOP_LEFT_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = PIN_SETTING_PASSWORD_W;	
        pstDataEntry[i].iCol = PIN_SETTING_TOP_LEFT_X;
        pstDataEntry[i].iWidth = PIN_SETTING_TOP_LEFT_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_SetPage_Focus_MidIfor);
        pstDataEntry[i].iRow = PIN_SETTING_TOP_LEFT_Y + (PIN_SETTING_TOP_V_GAP)*i;	
        pstDataEntry[i].iTotalItems = PIN_LEN;
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].field_type = PIN_FIELD;
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    }    
}


MBT_S32  uif_Modify_Pin( MBT_S32 iPara )
{
	MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    EDIT stSetPwdEdit;
    DATAENTRY *pstDataEntry = stSetPwdEdit.stDataEntry;
    MBT_U8 ret;
    MBT_U8 PinOldCode[7] = {0};
    MBT_U8 PinNewCode[7] = {0};
    MBT_S32 i;
    MBT_CHAR* infostr[2][6] =
    {
        {
            "Information",
            "E62-You have entered wrong PIN",
			"The PIN are not consistent",
			"Setting Success",
			"Setting Fail",
			"Invalid Card"
        },
        {
			"Information",
            "E62-You have entered wrong PIN",
			"The PIN are not consistent",
			"Setting Success",
			"Setting Fail",
            "Invalid Card"
        }
    };
    UIF_StopAV();
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_Modify_Pin_DrawPanel();
            uif_ModifyPinInitEdit(&stSetPwdEdit);
            bRefresh = MM_TRUE;
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        
        bRedraw = MM_FALSE;	
        bRefresh |= UCTRF_EditOnDraw(&stSetPwdEdit);
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000);
        
        UCTRF_EditGetKey(&stSetPwdEdit,iKey);
        
        switch ( iKey )
        {
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_EXIT:
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
                break;

            case DUMMY_KEY_MENU:
				iRetKey = DUMMY_KEY_EXIT;
				bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_SELECT:
                ret = PinSetSaveCheck(pstDataEntry);
                if (ret == PINSET_INVALID_PIN)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                }
                else if (ret == PINSET_PIN_NOTCONSISTENT)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                }
                else if (ret == PINSET_PIN_OK)
                {
                    memcpy(PinOldCode, pstDataEntry[0].acDataRead, 6);
                    memcpy(PinNewCode, pstDataEntry[1].acDataRead, 6);
                    for (i = 0; i<6; i++)
                    {
                        PinOldCode[i] = PinOldCode[i] - '0';
                        PinNewCode[i] = PinNewCode[i] - '0';
                    }
		#if(1 == M_CDCA)			
                    ret = CDCASTB_ChangePin(PinOldCode, PinNewCode);
                    if (ret == CDCA_RC_OK)
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][3],DLG_WAIT_TIME);
                        iRetKey = iKey;
                        bExit = MM_TRUE;
                    }
                    else
		#endif				
                    {
                        uif_CACardMsgCheckResult(ret);
                    }
                }
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
