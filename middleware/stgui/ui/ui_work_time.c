#include "ui_share.h"
#include "nvm_api.h"

#define WORK_TIME_TOP_LEFT_X 148
#define WORK_TIME_TOP_LEFT_Y 155
#define WORK_TIME_TOP_LEFT_W 760
#define WORK_TIME_TOP_V_GAP (58)
#define WORK_TIME_CONTENT_W (160)

#define WORK_TIME_RIGHT_ARROW_TO_END_W 30
#define WORK_TIME_TXT_TO_ARROW_W 60

#define WORK_TIME_LISTITEMS_NUM (3)
#define WORK_TIME_HELP_BAR_X 0
#define WORK_TIME_HELP_BAR_Y UI_ICON_Y

#define WORK_TIME_LEN (6)

#define WORK_TIME_OK 0
#define WORK_TIME_INVALID 1
#define WORK_TIME_NOTCONSISTENT 2

static MBT_BOOL uif_Work_Time_DrawPanel(MBT_VOID)
{
    MBT_S32 x;
	MBT_S32 y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0, s32FontStrlen;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][3]=
    {
        {
			"Exit",
			"Save",
			"Work Time"
        },
        {
			"Exit",
			"Save",
			"Work Time"
        },
    };

	uif_ShareDrawCommonPanel(infostr[uiv_u8Language][2], NULL, MM_TRUE);
    
	//ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = WORK_TIME_HELP_BAR_X + s32Xoffset;
    y = WORK_TIME_HELP_BAR_Y;
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

static MBT_VOID uif_WorkTimeDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* infostr[2][WORK_TIME_LISTITEMS_NUM] =
    {
        {
            "Start Time",
            "End Time",        
            "Pin Code",        
       	},

        {
			"Start Time",
            "End Time",        
            "Pin Code",   	   
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


static void uif_WorkTimeInitEdit(EDIT *stSetPwdEdit)
{
    int i;
    MBT_U8 byStartHour     = 0;
    MBT_U8 byStartMin      = 0;
    MBT_U8 byStartSec      = 0;
    MBT_U8 byEndHour       = 0;
    MBT_U8 byEndMin        = 0;
    MBT_U8 byEndSec        = 0;
    DATAENTRY *pstDataEntry = stSetPwdEdit->stDataEntry;
    MBT_S32 iTxtCol_W;
    
    memset(stSetPwdEdit,0,sizeof(EDIT));
    stSetPwdEdit->bModified = MM_TRUE;
    stSetPwdEdit->iSelect = 0;
    stSetPwdEdit->iPrevSelect = stSetPwdEdit->iSelect;
    stSetPwdEdit->iTotal = 3;	
    stSetPwdEdit->bPaintCurr = MM_FALSE;
    stSetPwdEdit->bPaintPrev = MM_FALSE;
    stSetPwdEdit->EditDrawItemBar = uif_WorkTimeDrawItem;

    iTxtCol_W = WORK_TIME_TOP_LEFT_W - WORK_TIME_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_SetPage_Right_ArrowIfor) - WORK_TIME_TXT_TO_ARROW_W - WORK_TIME_CONTENT_W;

    //big high light
    for(i = 0;i < stSetPwdEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = MM_NULL;   
        pstDataEntry[i].iTxtCol = WORK_TIME_TOP_LEFT_X + iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = WORK_TIME_CONTENT_W;	
        pstDataEntry[i].iCol = WORK_TIME_TOP_LEFT_X;
        pstDataEntry[i].iWidth = WORK_TIME_TOP_LEFT_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_SetPage_Focus_MidIfor);
        pstDataEntry[i].iRow = WORK_TIME_TOP_LEFT_Y + (WORK_TIME_TOP_V_GAP)*i;	
        pstDataEntry[i].iTotalItems = WORK_TIME_LEN;
        pstDataEntry[i].iSelect = 0;
		if(i == 0 || i == 1)
		{
			pstDataEntry[i].field_type = TIME_FIELD; 	
		}
        else
		{
        	pstDataEntry[i].field_type = PIN_FIELD;	
		}
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_BLACK;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    }  
#if(1 == M_CDCA)
    if (CDCASTB_GetWorkTime(&byStartHour, &byStartMin, &byStartSec, &byEndHour, &byEndMin, &byEndSec) == CDCA_RC_OK)
    {
        sprintf(pstDataEntry[0].acDataRead,"%02d:%02d:%02d", byStartHour, byStartMin, byStartSec);
	    sprintf(pstDataEntry[1].acDataRead,"%02d:%02d:%02d", byEndHour, byEndMin, byEndSec);
    }
    else
#endif		
    {
        sprintf(pstDataEntry[0].acDataRead,"%02d:%02d:%02d", 0, 0, 0);
	    sprintf(pstDataEntry[1].acDataRead,"%02d:%02d:%02d", 0, 0, 0);
    }
}


MBT_S32  uif_Working_Time( MBT_S32 iPara )
{
	MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    EDIT stSetPwdEdit;
    DATAENTRY *pstDataEntry = stSetPwdEdit.stDataEntry;
    MBT_U8 ret;
    MBT_CHAR coldPinCode[7] = {0}; 
    MBT_CHAR* g_CAWorkTime_String[2][6] =
    {
        {
            "Information",
            "E62-You have entered wrong PIN",
            "Working Hours changed successfully",
            "Invalid Time",
            "Invalid Card",
            "Working Hours changed fail",
        },
        {
            "Information",
            "E62-You have entered wrong PIN",
            "Working Hours changed successfully",
            "Invalid Time",
            "Invalid Card",
            "Working Hours changed fail",
        }
    };

    MBT_U8 ucStartHour, ucStartMin, ucStartSec;
    MBT_U8 ucEndHour, ucEndMin, ucEndSec;
    MBT_CHAR acBuf[32]={0};
    MBT_S32 i;
    UIF_StopAV();
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_Work_Time_DrawPanel();
            uif_WorkTimeInitEdit(&stSetPwdEdit);
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
                if(MM_FALSE == CAF_IsSCInsertSTB())
                {
                    uif_ShareDisplayResultDlg("Information","Please insert card",0);
                    break;
                }

                if (pstDataEntry[2].iSelect < pstDataEntry[2].iTotalItems)
                {
                    uif_ShareDisplayResultDlg(g_CAWorkTime_String[uiv_u8Language][0],g_CAWorkTime_String[uiv_u8Language][1],DLG_WAIT_TIME);
                    break;
                }

                memset(acBuf, 0, 32);
                acBuf[0] = pstDataEntry[0].acDataRead[0];
                acBuf[1] = pstDataEntry[0].acDataRead[1];
                acBuf[2] = pstDataEntry[0].acDataRead[3];
                acBuf[3] = pstDataEntry[0].acDataRead[4];
                acBuf[4] = pstDataEntry[0].acDataRead[6];
                acBuf[5] = pstDataEntry[0].acDataRead[7];
                acBuf[6] = pstDataEntry[1].acDataRead[0];
                acBuf[7] = pstDataEntry[1].acDataRead[1];
                acBuf[8] = pstDataEntry[1].acDataRead[3];
                acBuf[9] = pstDataEntry[1].acDataRead[4];
                acBuf[10] = pstDataEntry[1].acDataRead[6];
                acBuf[11] = pstDataEntry[1].acDataRead[7];

                ucStartHour = (acBuf[0]-'0')*10 + (acBuf[1]-'0');
                ucStartMin= (acBuf[2]-'0')*10 + (acBuf[3]-'0');
                ucStartSec= (acBuf[4]-'0')*10 + (acBuf[5]-'0');
                ucEndHour = (acBuf[6]-'0')*10 + (acBuf[7]-'0');
                ucEndMin= (acBuf[8]-'0')*10 + (acBuf[9]-'0');
                ucEndSec= (acBuf[10]-'0')*10 + (acBuf[11]-'0');

                if(ucStartHour >= 24||ucEndHour >= 24||ucStartMin >= 60||ucEndMin >= 60||ucStartSec >= 60||ucEndSec >= 60)
                {
                    uif_ShareDisplayResultDlg(g_CAWorkTime_String[uiv_u8Language][0],g_CAWorkTime_String[uiv_u8Language][3],DLG_WAIT_TIME);
                    break;
                }

                memcpy(coldPinCode, pstDataEntry[2].acDataRead, 6);
                for (i = 0; i < 6; i++)
                {
                    coldPinCode[i] = coldPinCode[i] - '0';
                }
		#if(1 == M_CDCA)		
                ret = CDCASTB_SetWorkTime((MBT_U8 *)coldPinCode, ucStartHour, ucStartMin,ucStartSec,ucEndHour ,ucEndMin,ucEndSec);
                if (ret == CDCA_RC_OK)
                {
                    uif_ShareDisplayResultDlg(g_CAWorkTime_String[uiv_u8Language][0],g_CAWorkTime_String[uiv_u8Language][2],DLG_WAIT_TIME);
                    iRetKey = iKey;
                    bExit = MM_TRUE;
                }
                else
		#endif			
                {
                    uif_CACardMsgCheckResult(ret);
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
