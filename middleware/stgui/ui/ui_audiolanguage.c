#include "ui_share.h"



typedef enum
{
    E_SI_ADU_English    = 0x00,
    E_SI_ADU_Hindi      = 0x01,
    E_SI_ADU_Tamil      = 0x02,
    E_SI_ADU_Telugu     = 0x03,
    E_SI_ADU_Kannada    = 0x04,
    E_SI_ADU_Marathi    = 0x05,
    E_SI_ADU_Oriya      = 0x06,
    E_SI_ADU_Panjabi    = 0x07,    
    E_SI_ADU_Pali       = 0x08,
    E_SI_ADU_Sanskrit   = 0x09,
    E_SI_ADU_Sindhi     = 0x0a,
    E_SI_ADU_Urdu       = 0x0b,
    E_SI_ADU_MAX
} AduLanguageType;

#define AUDIO_LANGUAGE_SET_START_X    0
#define AUDIO_LANGUAGE_SET_START_Y    0

#define AUDIO_LANGUAGE_SET_START_XOFFSET    125
#define AUDIO_LANGUAGE_SET_START_YOFFSET    150

#define LANGUAGE_SHORTCUT_X 100
#define LANGUAGE_SHORTCUT_Y 100
#define LANGUAGE_FIRST_ITEM_MARGIN_TOP 50
#define LANGUAGE_FIRST_ITEM_MARGIN_LEFT 2
#define LANGUAGE_ITEM_HEIGHT 40

#define max_fileNameLen 256

static MBT_BOOL uif_AudioLanguageSetDrawPanel(AduLanguageType eAduLanguageType)
{
    MBT_S32 x, y;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    MBT_S32 yOffSet, xOffset;
    MBT_CHAR* infostr[2][3] =
    {
        {
            "Audio Language",
			"Change",
			"Exit"
        },
        {
            "Audio Language",
            "Change",
            "Exit"
        }
    };

    MBT_CHAR* audiolanguagestr[2][12] =
    {
        {
            "English",
			"Hindi",
			"Tamil",
			"Telugu",
			"Kannada",
			"Marathi",
			"Oriya",
			"Panjabi",
			"Pali",
			"Sanskrit",
			"Sindhi",
			"Urdu"
        },
        {
            "English",
            "Hindi",
            "Tamil",
            "Telugu",
            "Kannada",
            "Marathi",
            "Oriya",
            "Panjabi",
            "Pali",
            "Sanskrit",
            "Sindhi",
            "Urdu"
        }
    };

    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);

    //Focus
    font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    uif_ShareDrawSetPageFouce(AUDIO_LANGUAGE_SET_START_X + AUDIO_LANGUAGE_SET_START_XOFFSET, AUDIO_LANGUAGE_SET_START_Y + AUDIO_LANGUAGE_SET_START_YOFFSET, infostr[uiv_u8Language][0], audiolanguagestr[uiv_u8Language][eAduLanguageType], MM_TRUE, MM_TRUE);
    WGUIF_SetFontHeight(font_height);
    
	//change
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	xOffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_LeftRightIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2])))/2;

	x = AUDIO_LANGUAGE_SET_START_X + xOffset;
    y = AUDIO_LANGUAGE_SET_START_Y + UI_ICON_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + yOffSet, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + yOffSet, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
    return MM_TRUE;
}

static AduLanguageType uif_AudioLanguageSetSwitchLanguage(MBT_S32 iKey,AduLanguageType eAudioLanguageType)
{
    MBT_CHAR strAudCode[4];
    DBS_ISO639AudLANGUAGE eDbsAudType;
    MBT_S32 font_height;
    MBT_CHAR* infostr[2][3] =
    {
        {
            "Audio Language",
			"Change",
			"Exit"
        },
        {
            "Audio Language",
            "Change",
            "Exit"
        }
    };
    MBT_CHAR* audiolanguagestr[2][12] =
    {
        {
            "English",
			"Hindi",
			"Tamil",
			"Telugu",
			"Kannada",
			"Marathi",
			"Oriya",
			"Panjabi",
			"Pali",
			"Sanskrit",
			"Sindhi",
			"Urdu"
        },
        {
            "English",
            "Hindi",
            "Tamil",
            "Telugu",
            "Kannada",
            "Marathi",
            "Oriya",
            "Panjabi",
            "Pali",
            "Sanskrit",
            "Sindhi",
            "Urdu"
        }
    };
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();   

    if(iKey == DUMMY_KEY_LEFTARROW)
    {
        if(eAudioLanguageType == E_SI_ADU_English)
        {
            eAudioLanguageType = E_SI_ADU_Urdu;
        }
        else
        {
            eAudioLanguageType = eAudioLanguageType - 1;
        }
    }
    else if(iKey == DUMMY_KEY_RIGHTARROW)
    {
        if(eAudioLanguageType == E_SI_ADU_Urdu)
        {
            eAudioLanguageType = E_SI_ADU_English;
        }
        else
        {
            eAudioLanguageType = eAudioLanguageType + 1;
        }
    }


    switch(eAudioLanguageType)
    {
        case E_SI_ADU_English:
            eDbsAudType = E_LANGUAGE_ENGLISH;
            break;
        case E_SI_ADU_Hindi:
            eDbsAudType = E_LANGUAGE_HINDI;
            break;
        case E_SI_ADU_Tamil:
            eDbsAudType = E_LANGUAGE_TAMIL;
            break;
        case E_SI_ADU_Telugu:
            eDbsAudType = E_LANGUAGE_TELUGU;
            break;
        case E_SI_ADU_Kannada:
            eDbsAudType = E_LANGUAGE_KANNADA;
            break;
        case E_SI_ADU_Marathi:
            eDbsAudType = E_LANGUAGE_MARATHI;
            break;
        case E_SI_ADU_Oriya:
            eDbsAudType = E_LANGUAGE_ORIYA;
            break;
        case E_SI_ADU_Panjabi:
            eDbsAudType = E_LANGUAGE_PANJABI;
            break;
        case E_SI_ADU_Pali:
            eDbsAudType = E_LANGUAGE_PALI;
            break;
        case E_SI_ADU_Sanskrit:
            eDbsAudType = E_LANGUAGE_SANSKRIT;
            break;
        case E_SI_ADU_Sindhi:
            eDbsAudType = E_LANGUAGE_SINDHI;
            break;
        case E_SI_ADU_Urdu:
            eDbsAudType = E_LANGUAGE_URDU;
            break;
        default:
            eDbsAudType = E_LANGUAGE_ENGLISH;
            break;
    }

    DBSF_PlyGetAduLanguageCode(eDbsAudType,strAudCode);
    pstBoxInfo->ucBit.ISO_CurLanguageCode=((strAudCode[0]<<16)|(strAudCode[1]<<8)|(strAudCode[2]));
    DBSF_DataSetBoxInfo(pstBoxInfo);
    
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    uif_ShareDrawSetPageFouce(AUDIO_LANGUAGE_SET_START_X + AUDIO_LANGUAGE_SET_START_XOFFSET, AUDIO_LANGUAGE_SET_START_Y + AUDIO_LANGUAGE_SET_START_YOFFSET, infostr[uiv_u8Language][0], audiolanguagestr[uiv_u8Language][eAudioLanguageType], MM_TRUE, MM_TRUE);
    WGUIF_SetFontHeight(font_height);
    return eAudioLanguageType;
}


MBT_S32 uif_AudioLanguageSetMenu( MBT_S32 bExitAuto )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    AduLanguageType eAudioLanguageType = 0;
    MBT_CHAR strCode[4];
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();   

    bRefresh |= uif_ResetAlarmMsgFlag();
    UIF_StopAV();
    strCode[0] = (MBT_CHAR)(((pstBoxInfo->ucBit.ISO_CurLanguageCode)>>16)&0x000000ff);
    strCode[1] = (MBT_CHAR)(((pstBoxInfo->ucBit.ISO_CurLanguageCode)>>8)&0x000000ff);
    strCode[2] = (MBT_CHAR)((pstBoxInfo->ucBit.ISO_CurLanguageCode)&0x000000ff);
    strCode[3] = 0;
    switch(DBSF_PlyGetAduLanguageType(strCode))
    {
        case E_LANGUAGE_ENGLISH:
            eAudioLanguageType = E_SI_ADU_English;
            break;
        case E_LANGUAGE_HINDI:
            eAudioLanguageType = E_SI_ADU_Hindi;
            break;
        case E_LANGUAGE_TAMIL:
            eAudioLanguageType = E_SI_ADU_Tamil;
            break;
        case E_LANGUAGE_TELUGU:
            eAudioLanguageType = E_SI_ADU_Telugu;
            break;
        case E_LANGUAGE_KANNADA:
            eAudioLanguageType = E_SI_ADU_Kannada;
            break;
        case E_LANGUAGE_MARATHI:
            eAudioLanguageType = E_SI_ADU_Marathi;
            break;
        case E_LANGUAGE_ORIYA:
            eAudioLanguageType = E_SI_ADU_Oriya;
            break;
        case E_LANGUAGE_PANJABI:
            eAudioLanguageType = E_SI_ADU_Panjabi;
            break;
        case E_LANGUAGE_PALI:
            eAudioLanguageType = E_SI_ADU_Pali;
            break;
        case E_LANGUAGE_SANSKRIT:
            eAudioLanguageType = E_SI_ADU_Sanskrit;
            break;
        case E_LANGUAGE_SINDHI:
            eAudioLanguageType = E_SI_ADU_Sindhi;
            break;
        case E_LANGUAGE_URDU:
            eAudioLanguageType = E_SI_ADU_Urdu;
            break;
        default:
            eAudioLanguageType = E_SI_ADU_English;
            break;
    }
    

    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_AudioLanguageSetDrawPanel(eAudioLanguageType);
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(2000);

        switch ( iKey )
        {
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
				eAudioLanguageType = uif_AudioLanguageSetSwitchLanguage(iKey,eAudioLanguageType);
                bRefresh = MM_TRUE;
                break;
        
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


/////////////////////////////////////////////////////////////////
#define AUDIO_LANGUAGE_MAX 6

typedef struct _st_audio_language_lanlr_node_
{
    MBT_U8 type;//mpeg or Dolby
    MBT_U16 Pid;
    MBT_CHAR acAudioLanguage[4];
}ST_AUDIO_LANGUAGE_LANLR;

typedef struct _st_audio_language_node_
{
    MBT_U8 u8TotalLag;
    MBT_U8 u8CurLag;
    MBT_U8 u8LRstatus;
    MBT_U16 u16CurAudioPID;
    ST_AUDIO_LANGUAGE_LANLR st_lan_lr[AUDIO_LANGUAGE_MAX];
}ST_AUDIO_LANGUAGE;

static ST_AUDIO_LANGUAGE st_Audio_Language;


static MBT_VOID AudioLan_SetTrack(MBT_U8 ucAudioTrack)
{
    MMT_AV_StereoMode_E eTrack;

    switch(ucAudioTrack)
    {
        case 0:
            eTrack = MM_AUD_MONO_LEFT;
            break;
        case 1:
            eTrack = MM_AUD_DUAL_STEREO;
            break;
        case 2:
            eTrack = MM_AUD_DUAL_STEREO;
            break;
        case 3:
            eTrack = MM_AUD_MONO_RIGHT;
            break;
        default:
            eTrack = MM_AUD_DUAL_STEREO;
            break;
    }
    
    MLMF_AV_SetAudioMode(eTrack);
}


static MBT_VOID uif_AudioShortCutDrawPanel(MBT_S32 x,MBT_S32 y)
{
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 font_height;
	MBT_S32 s32FontStrlen;
	MBT_S32 len;
	MBT_S32 bgWidth;
	MBT_S32 bgHeight;
	MBT_S32 yOffSet;
	MBT_CHAR* infostr[2][2] =
    {
        {
            "Audio Language",
			"Confirm"
        },
        {
            "Audio Language",
            "Confirm"
        }
    };
	
	pstFramBmp = BMPF_GetBMP(m_ui_Audio_language_bgIfor);
	uif_ShareFillRectWithBmp(x,y,pstFramBmp->bWidth,pstFramBmp->bHeight,pstFramBmp);

	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);	
	s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
	uif_DrawTxtAtMid(infostr[uiv_u8Language][0],x,y+10,pstFramBmp->bWidth,WGUIF_GetFontHeight(),FONT_FRONT_COLOR_WHITE);

	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);	
	bgWidth = pstFramBmp->bWidth;
	bgHeight = pstFramBmp->bHeight;
	pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
	len = pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(s32FontStrlen,infostr[uiv_u8Language][1]) + 5;
	x = x + (bgWidth - len)/2;
	y = y + bgHeight - 30;
	uif_ShareFillRectWithBmp(x,y,pstFramBmp->bWidth,pstFramBmp->bHeight,pstFramBmp);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
	WGUIF_FNTDrawTxt(x+pstFramBmp->bWidth+5, y + yOffSet, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
	WGUIF_SetFontHeight(font_height);	
}

static MBT_BOOL uif_subListReadItem(MBT_S32 iIndex, MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if (st_Audio_Language.st_lan_lr[iIndex].type == 10 || st_Audio_Language.st_lan_lr[iIndex].type == 17)
    {
        pItem[0*max_fileNameLen] = CO_AUDIO_TYPE_DLOBY;
    }
    else 
    {
        pItem[0*max_fileNameLen] = CO_AUDIO_TYPE_MPEG;
    }
	
    if (st_Audio_Language.st_lan_lr[iIndex].acAudioLanguage[0] == 0)
    {
        iLen = sprintf(pItem + 1*max_fileNameLen, "%s", "udf");//undefine		
    }
    else
    {
        iLen = sprintf(pItem + 1*max_fileNameLen, "%s", st_Audio_Language.st_lan_lr[iIndex].acAudioLanguage);		
    }
    pItem[1*max_fileNameLen+iLen] = 0;

	switch(st_Audio_Language.u8LRstatus)
	{
		case 0:
			pItem[2*max_fileNameLen] = CO_AUDIO_LL;
			break;
		case 1:
			pItem[2*max_fileNameLen] = CO_AUDIO_LR;
			break;
		case 2:
			pItem[2*max_fileNameLen] = CO_AUDIO_RL;
			break;
		case 3:
			pItem[2*max_fileNameLen] = CO_AUDIO_RR;
			break;
		default:
			pItem[2*max_fileNameLen] = CO_AUDIO_LL;
			break;
	}

    return MM_TRUE;
}

static MBT_BOOL uif_subListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstRefreshBmp = NULL; 
    pstRefreshBmp = BMPF_GetBMP(m_ui_Audio_language_bgIfor);
    MBT_S32 yOffSet = 0;
    if(MM_TRUE == bSelect)
    {
        pstRefreshBmp = BMPF_GetBMP(m_ui_Audio_Lang_SelectIfor);
    	WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight,0xFF0000FF);
        yOffSet = (iHeight- pstRefreshBmp->bHeight)/2;
		WGUIF_DisplayReginTrueColorBmp(x+260,y+yOffSet,0,0,pstRefreshBmp->bWidth,pstRefreshBmp->bHeight,pstRefreshBmp, MM_TRUE);
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(LANGUAGE_SHORTCUT_X,LANGUAGE_SHORTCUT_Y,x-LANGUAGE_SHORTCUT_X, y-LANGUAGE_SHORTCUT_X,iWidth,iHeight,pstRefreshBmp, MM_TRUE);
    }
    
    return MM_TRUE;
}


MBT_VOID uif_subListInit( LISTITEM* pstList,UI_PRG *pstProgInfo)
{
	MBT_S32 me_StartX, me_StartY;	
	MBT_S32 bgX,bgY;
	BITMAPTRUECOLOR *pstRefreshBmp;
    MBT_U8 u8TotalLag = 0;
    MBT_U8 u8CurLag = 0;
    MBT_S32 i;
    
    if(MM_NULL == pstProgInfo)
    {
        return;
    }
    
    bgX = LANGUAGE_SHORTCUT_X;
    bgY = LANGUAGE_SHORTCUT_Y;
    pstRefreshBmp = BMPF_GetBMP(m_ui_Audio_language_bgIfor);
    me_StartX = bgX + LANGUAGE_FIRST_ITEM_MARGIN_LEFT;
    me_StartY = bgY + LANGUAGE_FIRST_ITEM_MARGIN_TOP;

    memset((void*)&st_Audio_Language, 0, sizeof(ST_AUDIO_LANGUAGE));
    
    //audio language            
    for(i = 0;i < pstProgInfo->stService.NumPids;i++)
    {
        switch(pstProgInfo->stService.Pids[i].Type)
        {
            case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
            case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
            case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
            case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
            case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
            case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
            case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
            case MM_STREAMTYPE_H264: /* Video    : H264                                 */
            case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
            case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
            case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                break;

            case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
            case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
            case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
            case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
            case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
            case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
            case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
            case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
            case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
            case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
            case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
            case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                if(pstProgInfo->stService.u16CurAudioPID == pstProgInfo->stService.Pids[i].Pid)
                {
                    u8CurLag = u8TotalLag;
                }
                
                memcpy(st_Audio_Language.st_lan_lr[u8TotalLag].acAudioLanguage, pstProgInfo->stService.Pids[i].acAudioLanguage, 3);
                st_Audio_Language.st_lan_lr[u8TotalLag].Pid = pstProgInfo->stService.Pids[i].Pid;
                st_Audio_Language.st_lan_lr[u8TotalLag].type = pstProgInfo->stService.Pids[i].Type;
                u8TotalLag++;
                MLMF_Print("=================1%c%c%c \n",pstProgInfo->stService.Pids[i].acAudioLanguage[0],pstProgInfo->stService.Pids[i].acAudioLanguage[1],pstProgInfo->stService.Pids[i].acAudioLanguage[2]);                        
                break;
        }
    }

    st_Audio_Language.u8CurLag = u8CurLag;
    st_Audio_Language.u8TotalLag = u8TotalLag;
    st_Audio_Language.u8LRstatus = pstProgInfo->stService.ucProgram_status & AUDIOL_R_BIT_MASK;
    st_Audio_Language.u16CurAudioPID = pstProgInfo->stService.u16CurAudioPID;
    
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = 5;

    pstList->iPrevSelect = 0;
    pstList->iSelect = st_Audio_Language.u8CurLag;
    pstList->iWidth  = BMPF_GetBMPWidth(m_ui_Audio_language_bgIfor) - 18 - BMPF_GetBMPWidth(m_ui_Scrollbar_line_midIfor);
    pstList->iHeight = LANGUAGE_ITEM_HEIGHT;
    pstList->iSpace = 15;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 3;
    pstList->iColPosition[0] = pstList->iColStart+10;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+50; 
    pstList->iColPosition[2] = pstList->iColPosition[1]+80; 
    
	pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];	
	pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];	
	pstList->iColWidth[2] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[2] - 70;	

    pstList->ListReadFunction = uif_subListReadItem;
    pstList->ListDrawBar = uif_subListDraw;
    pstList->iNoOfItems = u8TotalLag;
    pstList->cHavesScrollBar = st_Audio_Language.u8TotalLag;
}

/*
*
*	在播放UI按lang进入此UI
*/
MBT_S32 uif_AudioLanguageShortCut( MBT_S32 bExitAuto )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_U16 u16PrevAudPID;
    MBT_U8 u8PrevTrack;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
	BITMAPTRUECOLOR  Copybitmap;
	BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Audio_language_bgIfor);
    UI_PRG ProgInfo;
	MBT_S32 x,y;
	LISTITEM stFileList;

    if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
    {
        return iRetKey;
    }
    memset((void*)&st_Audio_Language, 0, sizeof(ST_AUDIO_LANGUAGE));
    u16PrevAudPID = ProgInfo.stService.u16CurAudioPID;
    u8PrevTrack = ProgInfo.stService.ucProgram_status;
	x = LANGUAGE_SHORTCUT_X;
	y = LANGUAGE_SHORTCUT_Y;

	Copybitmap.bWidth = pstMsgBckBmp->bWidth;
	Copybitmap.bHeight = pstMsgBckBmp->bHeight;
	WGUIF_GetRectangleImage(x, y,&Copybitmap);
	
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_AudioShortCutDrawPanel(x,y);
			uif_subListInit(&stFileList,&ProgInfo);
            bRefresh = MM_TRUE;
        }

		bRefresh |= UCTRF_ListOnDraw(&stFileList);
		
        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(2000);

        switch ( iKey )
        {
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_SELECT:
                iRetKey = DUMMY_KEY_EXIT;
				bExit = MM_TRUE;
                break;
			case DUMMY_KEY_LEFTARROW:
			case DUMMY_KEY_RIGHTARROW:
				if(iKey == DUMMY_KEY_LEFTARROW)
				{
				    if(st_Audio_Language.u8LRstatus > 0)
				    {
                        st_Audio_Language.u8LRstatus--;
				    }
                    if(st_Audio_Language.u8LRstatus == 0)
					{
						st_Audio_Language.u8LRstatus = 3;
					}
				}
                else
				{
					st_Audio_Language.u8LRstatus++;
                    if(st_Audio_Language.u8LRstatus > 3)
					{
						st_Audio_Language.u8LRstatus = 0;
					}
				}

                AudioLan_SetTrack(st_Audio_Language.u8LRstatus);
                ProgInfo.stService.ucProgram_status=((ProgInfo.stService.ucProgram_status&(~AUDIOL_R_BIT_MASK))|st_Audio_Language.u8LRstatus);
				stFileList.bUpdatePage = MM_TRUE;
				break;
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
			case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                if (st_Audio_Language.u8TotalLag == 0 || st_Audio_Language.u8TotalLag == 1)
                {
                    break;
                } 
                
				UCTRF_ListGetKey(&stFileList, iKey);
                st_Audio_Language.u8CurLag = stFileList.iSelect;
                st_Audio_Language.u16CurAudioPID = st_Audio_Language.st_lan_lr[stFileList.iSelect].Pid;
                if(ProgInfo.stService.u16CurAudioPID != st_Audio_Language.u16CurAudioPID)
                {
                    ProgInfo.stService.u16CurAudioPID = st_Audio_Language.u16CurAudioPID;
                    DBSF_PlyPrgPlayChgAudioPID(&ProgInfo.stService);
                }
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
    }

    
	if(MM_TRUE == WGUIF_PutRectangleImage(x, y,&Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }

    if(u16PrevAudPID != ProgInfo.stService.u16CurAudioPID||u8PrevTrack != ProgInfo.stService.ucProgram_status)
    {
        DBSF_DataPrgEdit(&(ProgInfo.stService));
    }
	
    WGUIF_ClsFullScreen();
    return iRetKey;
}

