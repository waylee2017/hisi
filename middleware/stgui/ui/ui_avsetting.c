#include "ui_share.h"
#include "mlm_avctr.h"

#define AV_SET_HELP_X 0
#define AV_SET_HELP_Y 0

#define AV_SET_TOP_LEFT_X 148
#define AV_SET_TOP_LEFT_Y 155
#define AV_SET_ITEM_W 760
#define AV_SET_1ST_ITEM_X (AV_SET_TOP_LEFT_X)
#define AV_SET_1ST_ITEM_Y (AV_SET_TOP_LEFT_Y)

#define AV_SET_TXT_W 160
#define AV_SET_RIGHT_ARROW_TO_END_W 30
#define AV_SET_TXT_TO_ARROW_W 60

#define AV_SET_LIST_ITEM_GAP (58)

#define AV_SET_LISTITEMS_NUM          7
#define AV_SET_LISTITEMS_INPUT_NUM    2

#define AV_SET_ASPECT_RATIO_NUM 7
#define AV_SET_RESOLUTION_NUM 5

static MBT_U8 uif_AVSettingResolutionChangeToIndex(MMT_AV_HDResolution_E eResolution)
{
    MBT_U8 u8Index = 0;
    switch(eResolution)
    {
        case MM_AV_RESOLUTION_1080p_A:
        case MM_AV_RESOLUTION_1080p_N:
        case MM_AV_RESOLUTION_1080p_P:
            u8Index = 3;
            break;
            
        case MM_AV_RESOLUTION_1080i_A:
        case MM_AV_RESOLUTION_1080i_N:
        case MM_AV_RESOLUTION_1080i_P:
            u8Index = 4;
            break;
            
        case MM_AV_RESOLUTION_720p_A:
        case MM_AV_RESOLUTION_720p_N:
        case MM_AV_RESOLUTION_720p_P:
            u8Index = 2;
            break;

        case MM_AV_RESOLUTION_576p_P:
            u8Index = 0;
            break;
            
        case MM_AV_RESOLUTION_576i_P:
            u8Index = 1;
            break;
            
        default:
            break;
    }
    return u8Index;
}

static MMT_AV_HDResolution_E uif_AVSettingResolutionChangeToResolution(MBT_U8 u8Index)
{
    MMT_AV_HDResolution_E eResolution = MM_AV_RESOLUTION_AUTO;
    switch(u8Index)
    {
        case 4:
            eResolution = MM_AV_RESOLUTION_1080i_P;
            break;
            
        case 3:
            eResolution = MM_AV_RESOLUTION_1080p_P;
            break;
            
        case 2:
            eResolution = MM_AV_RESOLUTION_720p_P;
            break;
            
        case 1:
            eResolution = MM_AV_RESOLUTION_576i_P;
            break;
                        
        case 0:
            eResolution = MM_AV_RESOLUTION_576p_P;
            break;
            
        default:
            eResolution = MM_AV_RESOLUTION_1080i_P;
            break;
    }
    return eResolution;
}

static MBT_VOID uif_AVSettingDrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 s32Yoffset, s32Xoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Change",
            "EXIT"
        },
        {
            "Change",
            "EXIT"
        }
    };


    //0~99
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = AV_SET_HELP_X + s32Xoffset;
    y = AV_SET_HELP_Y + UI_ICON_Y;
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

static MBT_BOOL uif_AVSettingDrawPanel(MBT_VOID)
{
    MBT_CHAR* infostr[2][1] =
    {
        {
            "AV Setting"
        },
        {
            "AV Setting"
        }
    };

    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);

    uif_AVSettingDrawHelpInfo();

    return MM_TRUE;
}

static MBT_VOID uif_AVSettingReadData(MBT_S32 iDataEntryIndex, MBT_S32 iItemIndex, MBT_CHAR* pItem)
{
    MBT_CHAR* pAspectInfo[2][AV_SET_ASPECT_RATIO_NUM] =
    {
    	{	
    		"Auto",
    		"16:9 PillarBox",
    		"16:9 Pan&Scan",
    		"4:3 Letter Box",
    		"4:3 Pan&Scan",
    		"4:3 Full",
    		"16:9 Wide Screen",
    	},
    	{
    		"Auto",
    		"16:9 PillarBox",
    		"16:9 Pan&Scan",
    		"4:3 Letter Box",
    		"4:3 Pan&Scan",
    		"4:3 Full",
    		"16:9 Wide Screen",		
    	}
    };

    MBT_CHAR* pResolutionInfo[2][AV_SET_RESOLUTION_NUM] =
    {
    	{	
    		"576p",
    		"576i",
    		"720p",
    		"1080p",
    		"1080i"
    	},
    	{
            "576p",
            "576i",
            "720p",
            "1080p",
            "1080i"
    	}
    };

    if(MM_NULL == pItem)
    {
        return;
    }

    if(iDataEntryIndex == 5)
    {
        if ((iItemIndex > AV_SET_ASPECT_RATIO_NUM-1) || (iItemIndex < 0))
        {
            return;
        }
        strcpy(pItem, pAspectInfo[uiv_u8Language][iItemIndex]);
    }

    if(iDataEntryIndex == 6)
    {	
        if ((iItemIndex > AV_SET_RESOLUTION_NUM-1) || (iItemIndex < 0))
        {
            return;
        }
	    strcpy(pItem, pResolutionInfo[uiv_u8Language][iItemIndex]);
    }
}

static MBT_VOID uif_AVSettingDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][AV_SET_LISTITEMS_NUM] =
    {
        {
            "Brightness",
            "Contrast",
            "Saturation",
            "Sharpness",
            "Hue",
            "Aspect Ratio",
            "Resolution"
        },
        {
            "Brightness",
            "Contrast",
            "Saturation",
            "Sharpness",
            "Hue",
            "Aspect Ratio",
            "Resolution"
        }
    };
    MBT_CHAR *ptrTitle = MM_NULL;   
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontHeight;
    MBT_S32 iLeftArrowCol_W = 0;

    s32FontHeight =  WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    if(bSelect)
    {
        uif_DrawFocusArrawBar(x,y,iWidth,-1);
        if (u32ItemIndex == 5 || u32ItemIndex == 6)
        {
            iLeftArrowCol_W = AV_SET_ITEM_W - AV_SET_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor)- BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor) - AV_SET_TXT_TO_ARROW_W*2 - AV_SET_TXT_W;
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W+BMPF_GetBMPWidth(m_ui_SetPage_Left_ArrowIfor)+AV_SET_TXT_TO_ARROW_W*2+AV_SET_TXT_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
        }
        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);        
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y,iWidth, iHeight, pstFramBmp, MM_FALSE);
        ptrTitle = SubTitle[uiv_u8Language][u32ItemIndex];
        WGUIF_FNTDrawTxt(x+10,y + (iHeight - WGUIF_GetFontHeight()) / 2, strlen(ptrTitle), ptrTitle, FONT_FRONT_COLOR_WHITE);        
    }

    WGUIF_SetFontHeight(s32FontHeight);
}

static void uif_AVSettingInitEdit(EDIT *pstEdit)
{
    MBT_U8 i;
    MBT_U8 u8NormalItemNum[AV_SET_LISTITEMS_NUM] = {AV_SET_LISTITEMS_INPUT_NUM,AV_SET_LISTITEMS_INPUT_NUM,AV_SET_LISTITEMS_INPUT_NUM,AV_SET_LISTITEMS_INPUT_NUM,AV_SET_LISTITEMS_INPUT_NUM, AV_SET_ASPECT_RATIO_NUM, AV_SET_RESOLUTION_NUM};
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();
    MBT_S32 iTxtCol_W = 0;
    MBT_S32 bAspectIndex = 0;
    MMT_AV_HDResolution_E eResolution = MM_AV_RESOLUTION_AUTO;
    MBT_U8 u8ResolutionIndex = 0;
    
    if(MM_NULL == pstEdit)
    {
        return;
    }

    bAspectIndex = pstBoxInfo->ucBit.uAspectRatio;
    eResolution = pstBoxInfo->ucBit.iVideoMode;
    u8ResolutionIndex = uif_AVSettingResolutionChangeToIndex(eResolution);
    
    iTxtCol_W = AV_SET_ITEM_W - AV_SET_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor) - AV_SET_TXT_TO_ARROW_W - AV_SET_TXT_W;
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 7;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = uif_AVSettingDrawItem;

    //big high light
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = uif_AVSettingReadData;   
        pstDataEntry[i].iTxtCol   = AV_SET_1ST_ITEM_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = AV_SET_TXT_W;	
        pstDataEntry[i].iCol = AV_SET_TOP_LEFT_X;
        pstDataEntry[i].iWidth = AV_SET_ITEM_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
        pstDataEntry[i].iRow = AV_SET_1ST_ITEM_Y+(AV_SET_LIST_ITEM_GAP)*i;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        if (i == 5 || i == 6)
        {
            if (i == 5)
            {
                pstDataEntry[i].iSelect = bAspectIndex;
            }
            else
            {
                pstDataEntry[i].iSelect = u8ResolutionIndex;
            }
            pstDataEntry[i].field_type = SELECT_BOTTON;
        }
        else
        {
            pstDataEntry[i].iSelect = 0;
            pstDataEntry[i].field_type = DATE_FIELD;
        }
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_WHITE;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_BLACK;
        pstDataEntry[i].u32FontSize = SECONDMENU_LISTFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 
    sprintf(pstDataEntry[0].acDataRead,"%02d",pstBoxInfo->videoBrightness);
    sprintf(pstDataEntry[1].acDataRead,"%02d",pstBoxInfo->videoContrast);
    sprintf(pstDataEntry[2].acDataRead,"%02d",pstBoxInfo->videoSaturation);
    sprintf(pstDataEntry[3].acDataRead,"%02d",pstBoxInfo->videoSharpness);
    sprintf(pstDataEntry[4].acDataRead,"%02d",pstBoxInfo->videoHue);
    MLUI_DEBUG("--->videoBrightness = %d",pstBoxInfo->videoBrightness);
    MLUI_DEBUG("--->videoContrast = %d",pstBoxInfo->videoContrast);
    MLUI_DEBUG("--->videoSaturation = %d",pstBoxInfo->videoSaturation);
    MLUI_DEBUG("--->videoSharpness = %d",pstBoxInfo->videoSharpness);
    MLUI_DEBUG("--->videoHue = %d",pstBoxInfo->videoHue);
}

static MBT_BOOL uif_AVSettingSyncModify(EDIT *pstEdit,DVB_BOX *pstBoxInfo)
{    
    MBT_S32 iItemIndex;
    MBT_U32 u32Temp = 0;
    MBT_BOOL bChanged = MM_FALSE;
    DATAENTRY *pstDataEntry;
    MMT_AV_HDResolution_E eResolution = MM_AV_RESOLUTION_AUTO;
    
    if(MM_NULL == pstEdit||MM_NULL == pstBoxInfo)
    {
        return bChanged;
    }

    iItemIndex = pstEdit->iSelect;
    pstDataEntry = pstEdit->stDataEntry;

    switch(iItemIndex)
    {
        case 0:	//Brightness
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstBoxInfo->videoBrightness)
            {
                pstBoxInfo->videoBrightness = u32Temp;
                MLUI_DEBUG("--->Set Brightness = %d",u32Temp);
                MLMF_AV_SetBrightness(u32Temp);
                bChanged = MM_TRUE;
            }
            break;

        case 1:	//Contrast
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstBoxInfo->videoContrast)
            {
                pstBoxInfo->videoContrast = u32Temp;
                MLUI_DEBUG("--->Set Contrast = %d",u32Temp);
                MLMF_AV_SetContrast(u32Temp);
                bChanged = MM_TRUE;
            }
            break;

        case 2:	//Saturation
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstBoxInfo->videoSaturation)
            {
                pstBoxInfo->videoSaturation = u32Temp;
                MLUI_DEBUG("--->Set Saturation = %d",u32Temp);
                MLMF_AV_SetSaturation(u32Temp);
                bChanged = MM_TRUE;
            }
            break;

        case 3:	//Sharpness
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstBoxInfo->videoSharpness)
            {
                pstBoxInfo->videoSharpness = u32Temp;
                MLUI_DEBUG("--->Set Sharpness = %d",u32Temp);
                MLMF_AV_SetSharpness(u32Temp);
                bChanged = MM_TRUE;
            }
            break;

        case 4:	//Hue
            u32Temp = atoi(pstDataEntry[iItemIndex].acDataRead);
            if(u32Temp != pstBoxInfo->videoHue)
            {
                pstBoxInfo->videoHue = u32Temp;
                MLUI_DEBUG("--->Set Hue = %d",u32Temp);
                MLMF_AV_SetHue(u32Temp);
                bChanged = MM_TRUE;
            }
            break;

        case 5:	//aspect ratio
            u32Temp = pstDataEntry[iItemIndex].iSelect;
            if(u32Temp != pstBoxInfo->ucBit.uAspectRatio)
            {
                switch(u32Temp)
    			{
    			case 0://auto
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_AUTO;
    				break;
    			case 1://16:9 PillarBox
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_16_9_PILLAR;
    				break;
    			case 2://16:9 Pan&Scan
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_16_9_PAN;
    				break;
    			case 3://4:3 Letter Box
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_4_3_LETTER;
    				break;
    			case 4://4:3 Pan&Scan
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_4_3_PAN;
    				break;
    			case 5://4:3 Full
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_4_3_FULL;
    				break;
    			case 6://16:9 Wide Screen
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_16_9_WIDE;
    				break;
    			default:
    				pstBoxInfo->ucBit.uAspectRatio = MM_VIDEO_ASPECT_RATIO_AUTO;
    				break;
    			}
                MLUI_DEBUG("--->Set aspect ratio = %d",u32Temp);
                MLMF_AV_SetAspectRatio(pstBoxInfo->ucBit.uAspectRatio);
                bChanged = MM_TRUE;
            }
            break;

        case 6:	//resolution
            u32Temp = pstDataEntry[iItemIndex].iSelect;
            eResolution = uif_AVSettingResolutionChangeToResolution(u32Temp);
            if(eResolution != pstBoxInfo->ucBit.iVideoMode)
            {
                pstBoxInfo->ucBit.iVideoMode = eResolution;
                MLUI_DEBUG("--->Set resolution = %d",u32Temp);
                MLMF_AV_SetHDOutVideoMode(pstBoxInfo->ucBit.iVideoMode);
                bChanged = MM_TRUE;
            }
            break;

        default:
            break;
    }
    
    return bChanged;
}

MBT_S32 uif_AVSettingMenu( MBT_S32 bExitAuto )
{
    MBT_S32  iKey;
    MBT_S32  iRetKey = DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
	DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
	EDIT stAVSettingEdit;
    MBT_BOOL bCheckAVSetting = MM_FALSE;
    
    bRefresh |= uif_ResetAlarmMsgFlag();
    UIF_StopAV();
	
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_AVSettingDrawPanel();
            uif_AVSettingInitEdit(&stAVSettingEdit);
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= UCTRF_EditOnDraw(&stAVSettingEdit);
        bRedraw = MM_FALSE;	
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey(2000);
        
		if(MM_FALSE == UCTRF_EditGetKey(&stAVSettingEdit,iKey))
		{
            uif_ShareDisplayResultDlg("Information","Invalid data",DLG_WAIT_TIME);
		}

        switch ( iKey )
        {
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
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
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                bCheckAVSetting = MM_TRUE;
                bRefresh = MM_TRUE;
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

        if(MM_TRUE == bCheckAVSetting)
        {
            bCheckAVSetting = MM_FALSE;
            if(MM_TRUE == uif_AVSettingSyncModify(&stAVSettingEdit,pstBoxInfo))
            {
                MLUI_DEBUG("--->SAVE BOX INFO");
                DBSF_DataSetBoxInfo(pstBoxInfo);
            }
        }
    }

    WGUIF_ClsFullScreen();
    return iRetKey;
}

