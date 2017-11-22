#include "ui_share.h"
#include "envopt.h"
#include "ffs.h"

#define OTA_UPGRADE_HELP_X  0
#define OTA_UPGRADE_HELP_Y  0
#define OTA_UPGRADE_TOP_LEFT_X 148
#define OTA_UPGRADE_TOP_LEFT_Y 155
#define OTA_UPGRADE_ITEM_W 760
#define OTA_UPGRADE_1ST_ITEM_X (OTA_UPGRADE_TOP_LEFT_X)
#define OTA_UPGRADE_1ST_ITEM_Y (OTA_UPGRADE_TOP_LEFT_Y)
#define OTA_UPGRADE_STRENGTH_BAR_X (OTA_UPGRADE_TOP_LEFT_X)
#define OTA_UPGRADE_STRENGTH_BAR_Y (OTA_UPGRADE_TOP_LEFT_Y+372)
#define OTA_UPGRADE_LIST_ITEM_GAP (58)
#define OTA_UPGRADE_EDIT_MODE_LISTITEMS_NUM 4
#define OTA_UPGRADE_PROGRESS_BAR_WIDTH 754
#define OTA_UPGRADE_TXT_W 160
#define OTA_UPGRADE_RIGHT_ARROW_TO_END_W 30
#define OTA_UPGRADE_TXT_TO_ARROW_W 60
#define OTA_UPGRADE_SIGNER_H 50
#define DEFAULT_OAD_UPGRADE_FREQ   306
#define DEFAULT_OAD_UPGRADE_SYMBOLRATE   6875
#define DEFAULT_OAD_UPGRADE_QAM   2
#define DEFAULT_OAD_UPGRADE_PID   336

static MBT_U16  s_u16OadPid = DEFAULT_OAD_UPGRADE_PID;

static MBT_BOOL OtaUpgradeSyncFrontEndModify(EDIT *pstEdit,TRANS_INFO *pstTransInfo)
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

        case 3:
			s_u16OadPid = (MBT_U16)atoi(pstDataEntry[iItemIndex].acDataRead);
			break;

        default:
            break;
    }
    
    return bChanged;
}

static MBT_BOOL OtaUpgradeDisplaySignal(MBT_VOID)
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
    WGUIF_DisplayReginTrueColorBmp(0, 0, OTA_UPGRADE_STRENGTH_BAR_X+s32TxtW+60, OTA_UPGRADE_STRENGTH_BAR_Y,OTA_UPGRADE_PROGRESS_BAR_WIDTH+90,OTA_UPGRADE_SIGNER_H*2,pstFramBmp,MM_FALSE);

    s32Yoffset = (WGUIF_GetFontHeight() - BMPF_GetBMPHeight(m_ui_Signer_progressbar_white_midIfor))/2;

	//level bar
    iTemp = (strength*(OTA_UPGRADE_PROGRESS_BAR_WIDTH))/100;
	x = OTA_UPGRADE_STRENGTH_BAR_X+s32TxtW+40;
    y = OTA_UPGRADE_STRENGTH_BAR_Y;
    uif_ShareDrawCombinHBar(x, y + s32Yoffset,
                            OTA_UPGRADE_PROGRESS_BAR_WIDTH,
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
	x += (OTA_UPGRADE_PROGRESS_BAR_WIDTH + 30);
	iLen = sprintf(pstring,"%3d%%",strength);
    WGUIF_FNTDrawTxt(x,y, strlen(pstring),pstring, FONT_FRONT_COLOR_WHITE);

	
    
	//quality bar
    iTemp = (quality*(OTA_UPGRADE_PROGRESS_BAR_WIDTH))/100;
	x = OTA_UPGRADE_STRENGTH_BAR_X+s32TxtW+40;
    y = OTA_UPGRADE_STRENGTH_BAR_Y + OTA_UPGRADE_SIGNER_H;

    uif_ShareDrawCombinHBar(x,y + s32Yoffset,
                            OTA_UPGRADE_PROGRESS_BAR_WIDTH,
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
	x += (OTA_UPGRADE_PROGRESS_BAR_WIDTH + 30);
	iLen = sprintf(pstring,"%3d%%",quality);
	WGUIF_FNTDrawTxt(x,y, strlen(pstring),pstring, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
	return MM_TRUE;
}


static MBT_VOID OtaUpgradeDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR* SubTitle[2][OTA_UPGRADE_EDIT_MODE_LISTITEMS_NUM] =
    {
        {
            "Frequency(MHz)",
            "Symbol",
            "QAM  Type",
            "OAD  PID",
        },
        {
            "Frequency(MHz)",
            "Symbol",
            "QAM  Type",
			"OAD  PID",
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
        if(2==u32ItemIndex)
        {
            uif_DrawFocusArrawBar(x,y,iWidth,-1);

            iLeftArrowCol_W = OTA_UPGRADE_ITEM_W - OTA_UPGRADE_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor)- BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor) - OTA_UPGRADE_TXT_TO_ARROW_W*2 - OTA_UPGRADE_TXT_W;
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
            pstFramBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
            WGUIF_DisplayReginTrueColorBmp(x+iLeftArrowCol_W+BMPF_GetBMPWidth(m_ui_selectbar_arrow_leftIfor)+OTA_UPGRADE_TXT_TO_ARROW_W*2+OTA_UPGRADE_TXT_W, y,0,0, pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
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


static MBT_VOID OtaUpgradeReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem)
{
    if(MM_NULL == pItem||iDataEntryIndex != 2)
    {
        return;
    }

    
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


static void OtaUpgradeInitEdit(EDIT *pstEdit,MBT_U32 u32ScanMode,TRANS_INFO *pstTransInfo)
{
    MBT_U8 i;
    MBT_U8 u8NormalItemNum[4] = {3,4,MM_TUNER_QAM_MAX,4};
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;
    MBT_S32 iTxtCol_W;

    if(MM_NULL == pstEdit||MM_NULL == pstTransInfo)
    {
        return;
    }

    iTxtCol_W = OTA_UPGRADE_ITEM_W - OTA_UPGRADE_RIGHT_ARROW_TO_END_W - BMPF_GetBMPWidth(m_ui_selectbar_arrow_rightIfor) - OTA_UPGRADE_TXT_TO_ARROW_W - OTA_UPGRADE_TXT_W;
    
    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 4;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = OtaUpgradeDrawItem;

    //big high light
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = OtaUpgradeReadData;   
        pstDataEntry[i].iTxtCol = OTA_UPGRADE_1ST_ITEM_X+iTxtCol_W;   
        pstDataEntry[i].iTxtWidth = OTA_UPGRADE_TXT_W;	
        pstDataEntry[i].iCol = OTA_UPGRADE_TOP_LEFT_X;
        pstDataEntry[i].iWidth = OTA_UPGRADE_ITEM_W;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
        pstDataEntry[i].iRow = OTA_UPGRADE_1ST_ITEM_Y+(OTA_UPGRADE_LIST_ITEM_GAP)*i;	
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        if(2 == i)
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
    
    sprintf(pstDataEntry[3].acDataRead,"%04d", s_u16OadPid);
}

static MBT_VOID OtaUpgradeDrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y = OTA_UPGRADE_HELP_Y;
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

	x = OTA_UPGRADE_HELP_X + s32Xoffset;
    y = OTA_UPGRADE_HELP_Y + UI_ICON_Y;
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


static MBT_BOOL OtaUpgradeDrawPanel( MBT_S32 scan_mode)
{
	MBT_S32 x;
	MBT_S32 y;
	MBT_CHAR *ptrTitle;
	MBT_S32 font_height;
	MBT_CHAR* infostr[2][3] =
	{
		{
			"Level",
			"Quality",
			"Ota Upgrade"
		},
		{
			"Level",
			"Quality",
			"Ota Upgrade"
		}
	};

    ptrTitle = infostr[uiv_u8Language][2];

	font_height = WGUIF_GetFontHeight();
	uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	//Strength
	x = OTA_UPGRADE_TOP_LEFT_X;
	y = OTA_UPGRADE_STRENGTH_BAR_Y;
	WGUIF_FNTDrawTxt(x,y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

	//Quality
	x = OTA_UPGRADE_TOP_LEFT_X;
	y = OTA_UPGRADE_STRENGTH_BAR_Y + OTA_UPGRADE_SIGNER_H;
	WGUIF_FNTDrawTxt(x,y, strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

	WGUIF_SetFontHeight(font_height);
	
	OtaUpgradeDrawHelpInfo();
	
	return MM_TRUE;
}

MBT_S32  uif_OtaUpgrade( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 s32SrchMode = iPara;
    EDIT stFrontEndEdit;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bCheckFrontEnd = MM_TRUE;
    MBT_BOOL bForceLock = MM_TRUE;
    TRANS_INFO stTransInfo;
	
    UIF_StopAV();

    /* Init the trans info */
	stTransInfo.uBit.uiTPFreq = DEFAULT_OAD_UPGRADE_FREQ;
	stTransInfo.uBit.uiTPSymbolRate = DEFAULT_OAD_UPGRADE_SYMBOLRATE;
	stTransInfo.uBit.uiTPQam = DEFAULT_OAD_UPGRADE_QAM;

    DBSF_MntStopHeatBeat();
    MLMF_FP_Display("otau",4,MM_FALSE);

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= OtaUpgradeDrawPanel(s32SrchMode);
            OtaUpgradeInitEdit(&stFrontEndEdit,s32SrchMode,&stTransInfo);
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= OtaUpgradeDisplaySignal();
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
            if(MM_TRUE == OtaUpgradeSyncFrontEndModify(&stFrontEndEdit,&stTransInfo)||MM_TRUE == bForceLock)
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
				appCa_SetOtaFreq(stTransInfo.uBit.uiTPFreq*10);
				appCa_SetOtaSymb(stTransInfo.uBit.uiTPSymbolRate*10);
				appCa_SetOtaMod(stTransInfo.uBit.uiTPQam+1);
				appCa_SetOtaPID(s_u16OadPid);
				appCa_triggerOta();
				FFSF_Lock();
				MLMF_SYS_WatchDog(0);
				FFSF_UnLock();
				MLMF_Task_Sleep(10000);

                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_ADDWINDOW;
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

    DBSF_MntStartHeatBeat(BEARTRATE,MM_FALSE,uif_GetDbsMsg);
    WGUIF_ClsFullScreen();
    return iRetKey;
}

