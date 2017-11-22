#include "ui_share.h"

#define PASSWORD_SETTING_TOP_LEFT_X 148
#define PASSWORD_SETTING_TOP_LEFT_Y 155
#define PASSWORD_SETTING_TOP_LEFT_W 760
#define PASSWORD_SETTING_TOP_V_GAP (58)
#define PASSWORD_SETTING_PASSWORD_W (160)

#define PASSWORD_SETTING_RIGHT_ARROW_TO_END_W 30
#define PASSWORD_SETTING_TXT_TO_ARROW_W 60

#define PASSWORD_SETTING_HELP_BAR_X 0
#define PASSWORD_SETTING_HELP_BAR_Y 670

#define PASSWORD_SETTING_LISTITEMS_NUM (3)

#define PWDSET_PASSWORD_OK 0
#define PWDSET_INVALID_PASSWORD 1
#define PWDSET_PASSWORD_NOTCONSISTENT 2
#define PWDSET_EXIT_NO_HINT 3
#define PWDSET_INVALID_PARM 0xff

#define PASSWORD_LEN (4)


static MBT_U8 PwdSetSaveCheck(DATAENTRY *pstDataEntry, DVB_BOX *pstBoxInfo)
{
    MBT_U32 u32NewPwd;
    MBT_U8 ret = PWDSET_PASSWORD_OK;

    if (pstDataEntry == MM_NULL || pstBoxInfo == MM_NULL)
    {
        return PWDSET_INVALID_PARM;
    }
    
    if(pstDataEntry[0].iSelect < pstDataEntry[0].iTotalItems || pstDataEntry[1].iSelect < pstDataEntry[1].iTotalItems || pstDataEntry[2].iSelect < pstDataEntry[2].iTotalItems || atoi(pstDataEntry[0].acDataRead) != pstBoxInfo->ucBit.unPowerOnPwd)
    {
        return PWDSET_INVALID_PASSWORD;
    }

    u32NewPwd = atoi(pstDataEntry[2].acDataRead);
    if(atoi(pstDataEntry[1].acDataRead) != u32NewPwd)
    {
        return PWDSET_PASSWORD_NOTCONSISTENT;
    }

    return ret;
}

static MBT_U8 PwdSetExitCheck(DATAENTRY *pstDataEntry, DVB_BOX *pstBoxInfo)
{
    MBT_U8 ret = PWDSET_EXIT_NO_HINT;

    if (pstDataEntry == MM_NULL || pstBoxInfo == MM_NULL)
    {
        return PWDSET_INVALID_PARM;
    }
    
    if(pstDataEntry[0].iSelect == pstDataEntry[0].iTotalItems && pstDataEntry[1].iSelect == pstDataEntry[1].iTotalItems && pstDataEntry[2].iSelect == pstDataEntry[2].iTotalItems)
    {
        ret = PwdSetSaveCheck(pstDataEntry, pstBoxInfo);
    }

    return ret;
}


static MBT_VOID PasswordSettingMenu_DrawHelpInfo( MBT_VOID )
{
	MBT_S32 x;
	MBT_S32 y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0, s32Xoffset;
    MBT_S32 s32FontStrlen = 0;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][2]=
    {
        {
			"Save",
			"Exit"
        },
        {
			"Save",
			"Exit"
        },
    };

    //ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = PASSWORD_SETTING_HELP_BAR_X + s32Xoffset;
    y = PASSWORD_SETTING_HELP_BAR_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
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



static MBT_BOOL PwdSetPwdDrawPanel( MBT_VOID)
{
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Set Password"
        },
        {
			"Set Password"
        }
    };

    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
	
	PasswordSettingMenu_DrawHelpInfo();
	
    return MM_TRUE;
}



static MBT_VOID SetPwdDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* infostr[2][PASSWORD_SETTING_LISTITEMS_NUM] =
    {
        {
            "Input Old Password",
            "Input New Password",        
            "Confirm Password",        
       	},

        {
			"Input Old Password",
            "Input New Password",        
            "Confirm Password", 	   
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

    //MLMF_Print("SetPwdDrawItem bSelect %d,u32ItemIndex %d,x %d,y %d,iWidth %d,iHeight %d\n",bSelect,u32ItemIndex,x,y,iWidth,iHeight);
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

static void PwdSetPwdInitEdit(EDIT *stSetPwdEdit)
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
    stSetPwdEdit->EditDrawItemBar = SetPwdDrawItem;

    iTxtCol_W = PASSWORD_SETTING_TOP_LEFT_W - PASSWORD_SETTING_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_SetPage_Right_ArrowIfor) - PASSWORD_SETTING_TXT_TO_ARROW_W - PASSWORD_SETTING_PASSWORD_W;

    //big high light
    for(i = 0;i < stSetPwdEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = MM_NULL;   
        pstDataEntry[i].iTxtCol = PASSWORD_SETTING_TOP_LEFT_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = PASSWORD_SETTING_PASSWORD_W;	
        pstDataEntry[i].iCol = PASSWORD_SETTING_TOP_LEFT_X;
        pstDataEntry[i].iWidth = PASSWORD_SETTING_TOP_LEFT_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_SetPage_Focus_MidIfor);
        pstDataEntry[i].iRow = PASSWORD_SETTING_TOP_LEFT_Y + (PASSWORD_SETTING_TOP_V_GAP)*i;	
        pstDataEntry[i].iTotalItems = PASSWORD_LEN;
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

MBT_S32 uif_PasswordSettingMenu( MBT_S32 bExitAuto )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    EDIT stSetPwdEdit;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 
    MBT_U32 u32NewPwd;       
    DATAENTRY *pstDataEntry = stSetPwdEdit.stDataEntry;
    MBT_U8 ret;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Information",
            "Invalid password",
			"The passwords are not consistent",
			"Success",
        },
        {
			"Information",
			"Invalid password",
			"The passwords are not consistent",
			"Success",
        }
    };
    UIF_StopAV();
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            PwdSetPwdDrawPanel();
            PwdSetPwdInitEdit(&stSetPwdEdit);
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
                ret = PwdSetExitCheck(pstDataEntry, pstBoxInfo);
                
                if (ret == PWDSET_INVALID_PASSWORD)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_NOTCONSISTENT)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_OK)
                {
                    u32NewPwd = atoi(pstDataEntry[2].acDataRead);
                    pstBoxInfo->ucBit.unPowerOnPwd = u32NewPwd;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][3],DLG_WAIT_TIME);
                }
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
                break;

            case DUMMY_KEY_MENU:
                ret = PwdSetExitCheck(pstDataEntry, pstBoxInfo);
                
                if (ret == PWDSET_INVALID_PASSWORD)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_NOTCONSISTENT)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_OK)
                {
                    u32NewPwd = atoi(pstDataEntry[2].acDataRead);
                    pstBoxInfo->ucBit.unPowerOnPwd = u32NewPwd;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][3],DLG_WAIT_TIME);
                }
				iRetKey = DUMMY_KEY_EXIT;
				bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_SELECT:
                ret = PwdSetSaveCheck(pstDataEntry, pstBoxInfo);

                if (ret == PWDSET_INVALID_PASSWORD)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_NOTCONSISTENT)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                }
                else if (ret == PWDSET_PASSWORD_OK)
                {
                    u32NewPwd = atoi(pstDataEntry[2].acDataRead);
                    pstBoxInfo->ucBit.unPowerOnPwd = u32NewPwd;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][3],DLG_WAIT_TIME);
                    iRetKey = iKey;
                    bExit = MM_TRUE;
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



