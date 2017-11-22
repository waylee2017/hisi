#include "ui_share.h"

#define OSD_LANGUAGE_SET_START_X    0
#define OSD_LANGUAGE_SET_START_Y    0

#define OSD_LANGUAGE_SET_START_XOFFSET    125
#define OSD_LANGUAGE_SET_START_YOFFSET    150

static MBT_BOOL uif_LanguageSetDrawPanel(MBT_VOID)
{
    MBT_S32 x, y;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontStrlen;
    MBT_S32 yOffSet, xOffset;
    MBT_S32 font_height;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "OSD Language",
			"English",
			"Change",
			"Exit"
        },
        {
            "OSD Language",
            "English",
            "Change",
            "Exit"
        }
    };

    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);

    //Focus
    font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    uif_ShareDrawSetPageFouce(OSD_LANGUAGE_SET_START_X + OSD_LANGUAGE_SET_START_XOFFSET, OSD_LANGUAGE_SET_START_Y + OSD_LANGUAGE_SET_START_YOFFSET, infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], MM_TRUE, MM_TRUE);
    WGUIF_SetFontHeight(font_height);
        
	//change
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	xOffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_LeftRightIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2])))/2;

	x = OSD_LANGUAGE_SET_START_X + xOffset;
    y = OSD_LANGUAGE_SET_START_Y + UI_ICON_Y;
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

MBT_S32 uif_LanguageSetMenu( MBT_S32 bExitAuto )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;

    bRefresh |= uif_ResetAlarmMsgFlag();
    UIF_StopAV();

    while ( !bExit )  
    {
        if ( bRedraw )
        {
            uif_LanguageSetDrawPanel();
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

