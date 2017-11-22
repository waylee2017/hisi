#include "ui_share.h"

#define GAMEMENU_LIST_X  484//272
#define GAMEMENU_LIST_Y  200//160
#define GAMEMENU_LIST_W  312//175
#define GAMEMENU_LIST_H  50
#define GAMEMENU_LIST_GAP  20

#define GAMEMENU_HELP_BAR_X 502//260
#define GAMEMENU_HELP_BAR_Y 662//530
#define GAMEMENU_HELP_BMPTOTXT_W 10
#define GAMEMENU_HELP_TXT_W 142//80

#define GAMEMENU_ITEM_MAX 3

static MBT_VOID uif_GameMenuDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x = GAMEMENU_HELP_BAR_X;
	MBT_S32 y = GAMEMENU_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32HelpWXoffset = 0;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    BITMAPTRUECOLOR *pstFramBmpTemp = NULL;
	MBT_CHAR* infostr[2][2]=
    {
        {
			"Confirm",
			"EXIT"
        },
        {
			"Confirm",
			"EXIT"
        },
    };

    font_height =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    
	//ok
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_LeftRightIfor) - SMALL_GWFONT_HEIGHT)/2;
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + GAMEMENU_HELP_BMPTOTXT_W, y+s32Yoffset, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

	//Exit
	s32HelpWXoffset = pstFramBmp->bWidth + GAMEMENU_HELP_BMPTOTXT_W + GAMEMENU_HELP_TXT_W;
	pstFramBmpTemp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    s32Yoffset = (pstFramBmp->bHeight - pstFramBmpTemp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(x + s32HelpWXoffset, y+s32Yoffset, 0, 0, pstFramBmpTemp->bWidth, pstFramBmpTemp->bHeight, pstFramBmpTemp,MM_TRUE);

    s32HelpWXoffset = s32HelpWXoffset + pstFramBmpTemp->bWidth + GAMEMENU_HELP_BMPTOTXT_W;
    s32Yoffset = (pstFramBmp->bHeight - SMALL_GWFONT_HEIGHT)/2;
	WGUIF_FNTDrawTxt(x + s32HelpWXoffset, y+s32Yoffset, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);	
}

static MBT_BOOL uif_GameMenuDrawPanel( MBT_VOID)
{
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Game"
        },
        {
			"Game"
        }
    };

    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
    uif_GameMenuDisplayHelpInfo();
    
    return MM_TRUE;
}


static MBT_BOOL uif_GameMenuDrawListItem( MBT_S32 iItemIndex, MBT_BOOL bSelect )
{
    MBT_CHAR* MM_SubTitle[2][3] =
    {
        {
            "Gobang",
            "Snakes",
            "Tetris"
        },

        {
            "Gobang",
            "Snakes",
            "Tetris"
        },
    };
    MBT_S32 x, y;
    MBT_S32 iStrlen;
    MBT_S32 iLen;
    MBT_S32 iWidth = GAMEMENU_LIST_W;
    MBT_S32 iListHeight = GAMEMENU_LIST_H;
    MBT_S32 Font_h;

    x = GAMEMENU_LIST_X;
    y = GAMEMENU_LIST_Y + (iListHeight + GAMEMENU_LIST_GAP)*iItemIndex;


    if ( bSelect )
    {
        uif_ShareDrawCombinHBar(x, y, iWidth,BMPF_GetBMP(m_ui_game_item_foucse_leftIfor),BMPF_GetBMP(m_ui_game_item_foucse_midIfor),BMPF_GetBMP(m_ui_game_item_foucse_rightIfor));
    }
    else
    {
        uif_ShareDrawCombinHBar(x, y, iWidth,BMPF_GetBMP(m_ui_game_item_unfoucse_leftIfor),BMPF_GetBMP(m_ui_game_item_unfoucse_midIfor),BMPF_GetBMP(m_ui_game_item_unfoucse_rightIfor));
    }

    Font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

    iStrlen = strlen(MM_SubTitle[uiv_u8Language][iItemIndex]);
    iLen = WGUIF_FNTGetTxtWidth(iStrlen, MM_SubTitle[uiv_u8Language][iItemIndex]);

    WGUIF_FNTDrawTxt(x + (iWidth - iLen)/2, y + (iListHeight - WGUIF_GetFontHeight())/2, iStrlen, MM_SubTitle[uiv_u8Language][iItemIndex], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(Font_h);
    return MM_TRUE;
}

static MBT_BOOL uif_GameMenuDrawMenuList( MBT_S32 iSelect)
{
    MBT_S32 i;
    MBT_BOOL bRefresh = MM_FALSE;
    
    for ( i=0; i<GAMEMENU_ITEM_MAX; i++ )
    {
        if ( i == iSelect )
        {
            bRefresh |= uif_GameMenuDrawListItem( i, MM_TRUE );
        }
        else
        {
             bRefresh |= uif_GameMenuDrawListItem( i, MM_FALSE );
        }
    }

    return bRefresh;
}


MBT_S32  uif_GameStage ( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_S32 iItemPreSelect;
    static MBT_S32 iItemSelected = 0;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;

    UIF_StopAV();
    bRefresh |= uif_ResetAlarmMsgFlag();

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= uif_GameMenuDrawPanel();
            bRefresh |= uif_GameMenuDrawMenuList(iItemSelected);	
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
            case DUMMY_KEY_UPARROW:
                iItemPreSelect = iItemSelected;
                iItemSelected --;
                if ( iItemSelected < 0 )
                {
                    iItemSelected = GAMEMENU_ITEM_MAX - 1;
                }
                bRefresh |= uif_GameMenuDrawListItem(iItemPreSelect, MM_FALSE);
                bRefresh |= uif_GameMenuDrawListItem(iItemSelected, MM_TRUE);
                break;

            case DUMMY_KEY_DNARROW:
                iItemPreSelect = iItemSelected;
                iItemSelected ++;
                if ( iItemSelected >= GAMEMENU_ITEM_MAX )
                {
                    iItemSelected = 0;
                }
                bRefresh |= uif_GameMenuDrawListItem(iItemPreSelect, MM_FALSE);
                bRefresh |= uif_GameMenuDrawListItem(iItemSelected, MM_TRUE);
                break;


            case DUMMY_KEY_SELECT:
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_ADDWINDOW;
                switch ( iItemSelected)
                {		
                    case 0:
                        WDCtrF_PutWindow(Game_Gobang, 1);
                        break;					

                    case 1:
                        WDCtrF_PutWindow(Game_Snake, 1);
                        break;

                    case 2:
                        WDCtrF_PutWindow(Game_Elosi, 1);
                        break;					
                }
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
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
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

    WGUIF_ClsFullScreen();
    return iRetKey;
}

