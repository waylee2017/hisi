#include "ui_share.h"
#include "nvm_api.h"


#define CARD_MARRY_HELP_START_X     0
#define CARD_MARRY_HELP_START_Y     UI_ICON_Y
#define CARD_MARRY_HELP_DISTANCE   UI_ICON_TEXT_MARGIN
#define CARD_MARRY_START_X     148
#define CARD_MARRY_START_Y     155
#define CARD_MARRY_DISTANCE   50


static MBT_BOOL uif_Card_Marry_DrawPanel(MBT_VOID)
{
    MBT_S32 x, y;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 font_height;
    MBT_S32 s32FontStrlen, s32Xoffset, s32Yoffset;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Card Marry",
			"Exit"
        },
        {
            "Card Marry",
            "Exit"
        }
    };

    font_height = WGUIF_GetFontHeight();
    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    //Exit
    x = CARD_MARRY_HELP_START_X;
    y = CARD_MARRY_HELP_START_Y;
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = x + s32Xoffset;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
    
    return MM_TRUE;
}

MBT_VOID uif_Card_Marry_DrawContent(MBT_VOID)
{
	MBT_CHAR buf[32];
    MBT_S32 x, y;
    MBT_S32 s32Font_height = 0;
	MBT_CHAR acBuf[64];
	MBT_S32 iLen;
    MBT_CHAR* infostr[2][6]=
    {
        {
			"Status:",
			"Paired STB ID:",
			"Paired",
            "NoPair",
            "PairAnother",
            "Invalid SC",
        },
        {
            "Status:",
			"Paired STB ID:",
			"Paired",
            "NoPair",
            "PairAnother",
            "Invalid SC",
        },
    };
    MBT_U8 byNum = 5;
    MBT_U8 pbySTBID_List[30] = {0};
    MBT_U16 wRet = 0;
    MBT_U8 i = 0;

    s32Font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
  
	/*Status*/
    x =  CARD_MARRY_START_X;
    y =  CARD_MARRY_START_Y;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    x = x + 390;
	memset(acBuf, 0, 64);
#if(1 == M_CDCA)	
    wRet = CDCASTB_IsPaired(&byNum, pbySTBID_List);
    
    if (wRet == CDCA_RC_OK)
    {
        iLen = sprintf(acBuf,"%s", infostr[uiv_u8Language][2]);
    }
    else if (wRet == CDCA_RC_CARD_INVALID)
    {
        iLen = sprintf(acBuf,"%s", infostr[uiv_u8Language][5]);
    }
    else if (wRet == CDCA_RC_CARD_NOPAIR)
    {
        iLen = sprintf(acBuf,"%s", infostr[uiv_u8Language][3]);
    }
    else if (wRet == CDCA_RC_CARD_PAIROTHER)
    {
        iLen = sprintf(acBuf,"%s", infostr[uiv_u8Language][4]);
    }
    else
    {
        iLen = sprintf(acBuf,"%s", infostr[uiv_u8Language][5]);
    }
#endif	
    WGUIF_FNTDrawTxt(x, y, iLen, acBuf, FONT_FRONT_COLOR_WHITE);

    if(byNum <= 0)
    {
        WGUIF_SetFontHeight(s32Font_height);
        return;
    }

    if (wRet == CDCA_RC_OK || wRet == CDCA_RC_CARD_PAIROTHER)
    {
        /*Paired STB ID*/
        x =  CARD_MARRY_START_X;
    	y = y + CARD_MARRY_DISTANCE;
        WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

        x = x + 390;
        for (i = 0; i < byNum; i++)
        {
            sprintf(buf, "%02X%02X%02X%02X%02X%02X", pbySTBID_List[i*6],pbySTBID_List[i*6+1],pbySTBID_List[i*6+2],pbySTBID_List[i*6+3],pbySTBID_List[i*6+4],pbySTBID_List[i*6+5]);
            WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE); 
            y = y + 40;
        }
    }
    
    WGUIF_SetFontHeight(s32Font_height);
}

MBT_S32  uif_Card_Marry( MBT_S32 iPara )
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;
	MBT_S32 iKey;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;

	bRefresh |= uif_ResetAlarmMsgFlag();
	UIF_StopAV();	
	
	while ( !bExit )
	{
	    if(bRedraw)
        {
            uif_Card_Marry_DrawPanel();
	        uif_Card_Marry_DrawContent();
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
    
		iKey = uif_ReadKey(1000);
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
