#include "ui_share.h"


#define POWER_HELP_X 0
#define POWER_HELP_Y 0

#define POWER_TOP_LEFT_X 148
#define POWER_TOP_LEFT_Y 155
#define POWER_ITEM_W 760
#define POWER_1ST_ITEM_X (POWER_TOP_LEFT_X)
#define POWER_1ST_ITEM_Y (POWER_TOP_LEFT_Y)

#define POWER_TXT_W 160
#define POWER_RIGHT_ARROW_TO_END_W 30
#define POWER_TXT_TO_ARROW_W 60

#define POWER_LIST_ITEM_GAP (58)

#define POWER_LISTITEMS_NUM 4

#define POWER_DLG_WAIT_TIME    1


#define FONT_ENABLE_WHITE 0xFFFFFFFF//字体enable前景色，白色
#define FONT_DISABLE_GRAY 0xFF646464 //字体disable，灰色
//用于动态 设置颜色
static MBT_S32 powerOnTimeColor = FONT_ENABLE_WHITE;
static MBT_S32 powerOffTimeColor = FONT_ENABLE_WHITE;

static TIMER_M *pTriggerTimer = MM_NULL;

static MBT_VOID PowerDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][POWER_LISTITEMS_NUM] =
    {
        {
            "Power On",
            "Power On Time",
            "Power Off",
            "Power Off Time"
        },
        {
            "Power On",
            "Power On Time",
            "Power Off",
            "Power Off Time"
        }
    };

    MBT_CHAR *ptrTitle = MM_NULL;   
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontHeight;
    MBT_S32 fontColor = FONT_FRONT_COLOR_WHITE;
    MBT_S32 iLeftArrowCol_W;

    s32FontHeight =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    if(bSelect)
    {
        //big item bg
        if(0==u32ItemIndex || 2 == u32ItemIndex)
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);

            iLeftArrowCol_W = POWER_ITEM_W - POWER_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor)- BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor) - POWER_TXT_TO_ARROW_W*2 - POWER_TXT_W;
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W+BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor)+POWER_TXT_TO_ARROW_W*2+POWER_TXT_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        }
        else
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);
            if(1==u32ItemIndex)
            {
                fontColor = powerOnTimeColor;
            }
            else if(3 == u32ItemIndex)
            {
                fontColor = powerOffTimeColor;
            }
        }
        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        //display per row first col string
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, fontColor);        
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,iWidth, iHeight, pstFramBmp, MM_FALSE);

        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        if(1==u32ItemIndex)
        {
            fontColor = powerOnTimeColor;
        }
        else if(3 == u32ItemIndex)
        {
            fontColor = powerOffTimeColor;
        }
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, fontColor);
    }

    WGUIF_SetFontHeight(s32FontHeight);
}

static MBT_VOID PowerReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
    if(MM_NULL == pItem || iDataEntryIndex == 3 || iDataEntryIndex == 1 || MM_NULL == pTriggerTimer)
    {
        return;
    }

    switch(iItemIndex)
    {
        case 0:
            strcpy(pItem,"Disable");
            break;
        case 1:
            strcpy(pItem,"Enable");
            break;
        default:
            strcpy(pItem,"Disable");
            break;
    }
}


static void PowerInitEdit(EDIT *pstEdit)
{
    MBT_U8 i;
    MBT_U8 u8NormalItemNum[4] = {2,0,2,0};
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    MBT_U8 ucOnStartHour = 0, ucOnStartMin = 0;
    MBT_U8 ucOffStartHour = 0, ucOffStartMin = 0;
    TIMER_M *pTrgTimer = MM_NULL;
    MBT_S32 iTxtCol_W;

    if(MM_NULL == pstEdit || MM_NULL == pTriggerTimer)
    {
        return;
    }
    iTxtCol_W = POWER_ITEM_W - POWER_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor) - POWER_TXT_TO_ARROW_W - POWER_TXT_W;

    pTrgTimer = pTriggerTimer;

    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 4;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = PowerDrawItem;

    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = PowerReadData;   
        pstDataEntry[i].iTxtCol = POWER_1ST_ITEM_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = POWER_TXT_W;	
        pstDataEntry[i].iCol = POWER_TOP_LEFT_X;
        pstDataEntry[i].iWidth = POWER_ITEM_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
        pstDataEntry[i].iRow = POWER_1ST_ITEM_Y+(POWER_LIST_ITEM_GAP)*i;	
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        if(0 == i || 2 == i)
        {
            pstDataEntry[i].field_type = SELECT_BOTTON;
        }
        else
        {
            pstDataEntry[i].field_type = TIME_FIELD;
        }
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_BLACK;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 

    pstDataEntry[0].iSelect = 0;//on dis
    if (pTrgTimer[AUTO_STARTUP].dateofWeek  == 0)
    {
        pstDataEntry[0].iSelect = 0;//off dis
    }       
    else
    {
        pstDataEntry[0].iSelect = 1;
    }
    
    if (pTrgTimer[AUTO_POWEROFF].dateofWeek  == 0)
    {
        pstDataEntry[2].iSelect = 0;//off dis
    }       
    else
    {
        pstDataEntry[2].iSelect = 1;
    }

    ucOnStartHour = pTrgTimer[AUTO_STARTUP].hour;
    ucOnStartMin = pTrgTimer[AUTO_STARTUP].minute;
    sprintf(pstDataEntry[1].acDataRead,"%02d:%02d",ucOnStartHour, ucOnStartMin);

    ucOffStartHour = pTrgTimer[AUTO_POWEROFF].hour;
    ucOffStartMin = pTrgTimer[AUTO_POWEROFF].minute;
    sprintf(pstDataEntry[3].acDataRead,"%02d:%02d",ucOffStartHour, ucOffStartMin);

    //设置显示的字体颜色
    if(pstDataEntry[0].iSelect == 0)
    {
        //disable
        powerOnTimeColor = FONT_DISABLE_GRAY;
        pstDataEntry[1].iUnfucusFrontColor = FONT_DISABLE_GRAY;
    }
    else if(pstDataEntry[0].iSelect == 1)
    {
        //enable
        powerOnTimeColor = FONT_ENABLE_WHITE;
    }

    if(pstDataEntry[2].iSelect == 0)
    {
        //disable
        powerOffTimeColor = FONT_DISABLE_GRAY;
        pstDataEntry[3].iUnfucusFrontColor = FONT_DISABLE_GRAY;
    }
    else if(pstDataEntry[2].iSelect == 1)
    {
        //enable
        powerOffTimeColor = FONT_ENABLE_WHITE;
    }
}

static MBT_VOID PowerDrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 s32Yoffset, s32Xoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
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


    //Save
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = POWER_HELP_X + s32Xoffset;
    y = POWER_HELP_Y + UI_ICON_Y;
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


static MBT_BOOL PowerDrawPanel(MBT_VOID)
{
    MBT_CHAR *ptrTitle;
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Power On/Off"
        },
        {
            "Power On/Off"
        }
    };

    ptrTitle = infostr[uiv_u8Language][0];
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

    PowerDrawHelpInfo();
    
    return MM_TRUE;
}

static MBT_BOOL Power_GetTriggerTimer(TIMER_M *pTriggerTimer)
{
    EPG_TIMER_M *pEpgTimer;

    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return MM_FALSE;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimer);
    uif_ForceFree(pEpgTimer);

    return MM_TRUE;
}

static MBT_S8 Power_SetTriggerTimer(TIMER_M *pTriggerTimer)
{
    EPG_TIMER_M *pEpgTimer = MM_NULL;
    TIMER_M *pTriggerTimertemp = MM_NULL;
    MBT_BOOL bToSave = MM_FALSE;
    MBT_S8 ret = 0;

    pEpgTimer = uif_ForceMalloc(sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    if(MM_NULL == pEpgTimer)
    {
        return -1;
    }

    pTriggerTimertemp = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimertemp)
    {
        return -1;
    }

    uif_GetTimerFromFile(pEpgTimer,pTriggerTimertemp);

    if (pTriggerTimer[AUTO_STARTUP].dateofWeek != pTriggerTimertemp[AUTO_STARTUP].dateofWeek
        || pTriggerTimer[AUTO_STARTUP].hour != pTriggerTimertemp[AUTO_STARTUP].hour
        || pTriggerTimer[AUTO_STARTUP].minute != pTriggerTimertemp[AUTO_STARTUP].minute
        || pTriggerTimer[AUTO_POWEROFF].dateofWeek != pTriggerTimertemp[AUTO_POWEROFF].dateofWeek
        || pTriggerTimer[AUTO_POWEROFF].hour != pTriggerTimertemp[AUTO_POWEROFF].hour
        || pTriggerTimer[AUTO_POWEROFF].minute != pTriggerTimertemp[AUTO_POWEROFF].minute)
    {
        bToSave = MM_TRUE;
    }
    
    if (bToSave)
    {
        uif_SetTimer2File(pEpgTimer,pTriggerTimer);
        uif_SetTimer(pEpgTimer,pTriggerTimer);
        ret = 1;
    }  
    
    uif_ForceFree(pEpgTimer);
    uif_ForceFree(pTriggerTimertemp);

    return ret;
}


MBT_S32  uif_PowerMenu( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    EDIT stFrontEndEdit;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_CHAR acBuf[8]={0};
    MBT_U8 ucOffStartHour = 0, ucOffStartMin = 0;
    MBT_S8 ret = 0;
    MBT_CHAR* power_str[2][3] =
    {
        {
            "Information",
            "Save success",
            "Save fail",
        },
        {
            "Information",
            "Save success",
            "Save fail",
        }
    };
    UIF_StopAV();
    pTriggerTimer = uif_ForceMalloc(sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    if(MM_NULL == pTriggerTimer)
    {
        return MM_FALSE;
    }

    if (MM_FALSE == Power_GetTriggerTimer(pTriggerTimer))
    {
        if (pTriggerTimer != MM_NULL)
        {
            uif_ForceFree(pTriggerTimer);
        }
        return MM_FALSE;
    }
    
    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= PowerDrawPanel();
            PowerInitEdit(&stFrontEndEdit);
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= UCTRF_EditOnDraw(&stFrontEndEdit);

        bRedraw = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }

        iKey = uif_ReadKey(1000);

        UCTRF_EditGetKey(&stFrontEndEdit,iKey);

        switch ( iKey )
        {
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                //动态设置颜色
                if(stFrontEndEdit.iSelect == 0)
                {
                    if(stFrontEndEdit.stDataEntry[0].iSelect == 0)
                    {
                        //power off disable
                        powerOnTimeColor = FONT_DISABLE_GRAY;
                    }
                    else if(stFrontEndEdit.stDataEntry[0].iSelect == 1)
                    {
                        //enable
                        powerOnTimeColor = FONT_ENABLE_WHITE;
                    }
                    stFrontEndEdit.stDataEntry[1].iUnfucusFrontColor = powerOnTimeColor;
                }
                
                if(stFrontEndEdit.iSelect == 2)
                {
                    if(stFrontEndEdit.stDataEntry[2].iSelect == 0)
                    {
                        //power off disable
                        powerOffTimeColor = FONT_DISABLE_GRAY;
                    }
                    else if(stFrontEndEdit.stDataEntry[2].iSelect == 1)
                    {
                        //enable
                        powerOffTimeColor = FONT_ENABLE_WHITE;
                    }
                    stFrontEndEdit.stDataEntry[3].iUnfucusFrontColor = powerOffTimeColor;
                }
                stFrontEndEdit.bModified = MM_TRUE;
                break;

            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                //当disable或enable时，上下切换时要进行控制
                if(stFrontEndEdit.iSelect == 1)
                {
                    if(stFrontEndEdit.stDataEntry[0].iSelect == 0)
                    {
                        bRefresh |= UCTRF_EditOnDraw(&stFrontEndEdit);
                        UCTRF_EditGetKey(&stFrontEndEdit,iKey);
                    }
                }
                else if(stFrontEndEdit.iSelect == 3)
                {
                    if(stFrontEndEdit.stDataEntry[2].iSelect == 0)
                    {
                        bRefresh |= UCTRF_EditOnDraw(&stFrontEndEdit);
                        UCTRF_EditGetKey(&stFrontEndEdit,iKey);
                    }
                }
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
                memset(acBuf, 0, 8);
                acBuf[0] = stFrontEndEdit.stDataEntry[1].acDataRead[0];
                acBuf[1] = stFrontEndEdit.stDataEntry[1].acDataRead[1];
                acBuf[2] = stFrontEndEdit.stDataEntry[1].acDataRead[3];
                acBuf[3] = stFrontEndEdit.stDataEntry[1].acDataRead[4];
                ucOffStartHour = (acBuf[0]-'0')*10 + (acBuf[1]-'0');
                ucOffStartMin = (acBuf[2]-'0')*10 + (acBuf[3]-'0');
                pTriggerTimer[AUTO_STARTUP].dateofWeek = (stFrontEndEdit.stDataEntry[0].iSelect?m_Poweron:m_Off);
                pTriggerTimer[AUTO_STARTUP].hour = ucOffStartHour;
                pTriggerTimer[AUTO_STARTUP].minute = ucOffStartMin;

                memset(acBuf, 0, 8);
                acBuf[0] = stFrontEndEdit.stDataEntry[3].acDataRead[0];
                acBuf[1] = stFrontEndEdit.stDataEntry[3].acDataRead[1];
                acBuf[2] = stFrontEndEdit.stDataEntry[3].acDataRead[3];
                acBuf[3] = stFrontEndEdit.stDataEntry[3].acDataRead[4];
                ucOffStartHour = (acBuf[0]-'0')*10 + (acBuf[1]-'0');
                ucOffStartMin = (acBuf[2]-'0')*10 + (acBuf[3]-'0');
                pTriggerTimer[AUTO_POWEROFF].dateofWeek = (stFrontEndEdit.stDataEntry[2].iSelect?m_Poweroff:m_Off);
                pTriggerTimer[AUTO_POWEROFF].hour = ucOffStartHour;
                pTriggerTimer[AUTO_POWEROFF].minute = ucOffStartMin;
                
                ret = Power_SetTriggerTimer(pTriggerTimer);
                if (ret == 1)
                {
                    uif_ShareDisplayResultDlg(power_str[uiv_u8Language][0],power_str[uiv_u8Language][1],POWER_DLG_WAIT_TIME);
                }
                else if (ret == -1)
                {
                    uif_ShareDisplayResultDlg(power_str[uiv_u8Language][0],power_str[uiv_u8Language][2],POWER_DLG_WAIT_TIME);
                }
                break;

            case DUMMY_KEY_SELECT:
                memset(acBuf, 0, 8);
                acBuf[0] = stFrontEndEdit.stDataEntry[1].acDataRead[0];
                acBuf[1] = stFrontEndEdit.stDataEntry[1].acDataRead[1];
                acBuf[2] = stFrontEndEdit.stDataEntry[1].acDataRead[3];
                acBuf[3] = stFrontEndEdit.stDataEntry[1].acDataRead[4];
                ucOffStartHour = (acBuf[0]-'0')*10 + (acBuf[1]-'0');
                ucOffStartMin = (acBuf[2]-'0')*10 + (acBuf[3]-'0');
                pTriggerTimer[AUTO_STARTUP].dateofWeek = (stFrontEndEdit.stDataEntry[0].iSelect?m_Poweron:m_Off);
                pTriggerTimer[AUTO_STARTUP].hour = ucOffStartHour;
                pTriggerTimer[AUTO_STARTUP].minute = ucOffStartMin;
                
                memset(acBuf, 0, 8);
                acBuf[0] = stFrontEndEdit.stDataEntry[3].acDataRead[0];
                acBuf[1] = stFrontEndEdit.stDataEntry[3].acDataRead[1];
                acBuf[2] = stFrontEndEdit.stDataEntry[3].acDataRead[3];
                acBuf[3] = stFrontEndEdit.stDataEntry[3].acDataRead[4];
                ucOffStartHour = (acBuf[0]-'0')*10 + (acBuf[1]-'0');
                ucOffStartMin = (acBuf[2]-'0')*10 + (acBuf[3]-'0');
                pTriggerTimer[AUTO_POWEROFF].dateofWeek = (stFrontEndEdit.stDataEntry[2].iSelect?m_Poweroff:m_Off);
                pTriggerTimer[AUTO_POWEROFF].hour = ucOffStartHour;
                pTriggerTimer[AUTO_POWEROFF].minute = ucOffStartMin;
                ret = Power_SetTriggerTimer(pTriggerTimer);
                if (ret == 1)
                {
                    uif_ShareDisplayResultDlg(power_str[uiv_u8Language][0],power_str[uiv_u8Language][1],POWER_DLG_WAIT_TIME);
                    bExit = MM_TRUE;
                    iRetKey = DUMMY_KEY_EXIT;
                }
                else if (ret == -1)
                {
                    uif_ShareDisplayResultDlg(power_str[uiv_u8Language][0],power_str[uiv_u8Language][2],POWER_DLG_WAIT_TIME);
                }
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
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
    
    if (pTriggerTimer != MM_NULL)
    {
        uif_ForceFree(pTriggerTimer);
    }
    
    WGUIF_ClsFullScreen();
    return iRetKey;
}


