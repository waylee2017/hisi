#include "ui_share.h"
#include "nvm_api.h"
#include "envopt.h"

#define STB_INFORMAITON_START_X     0
#define STB_INFORMAITON_START_Y     0
#define STB_INFORMAITION_DISTANCE   50
#define STB_INFORMAITON_START_OFFSET_W   235
#define STB_INFORMAITON_START_OFFSET_H   145
#define STB_INFORMAITON_SECD_OFFSET_W   375

static MBT_BOOL uif_STBInfoDrawPanel(MBT_VOID)
{
    MBT_S32 x, y;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontStrlen;
    MBT_S32 s32font_height = 0;
    MBT_S32 s32xOffset = 0;
    MBT_S32 s32yOffset = 0;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Information",
			"Exit"
        },
        {
            "Information",
            "Exit"
        }
    };

    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
    s32font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    //exit
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    s32xOffset = (OSD_REGINMAXWIDHT - (pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;
    x = STB_INFORMAITON_START_Y + s32xOffset;
    y = STB_INFORMAITON_START_Y + STB_SUBMENU_HELP_Y;
    
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    s32yOffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    WGUIF_FNTDrawTxt(x, y+s32yOffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32font_height);
    return MM_TRUE;
}


MBT_VOID uif_STBInfoDrawContent(MBT_VOID)
{
	MBT_CHAR buf[32];
	MBT_CHAR *pstring;
    MBT_S32 x, y;
    MBT_U16 PlatformID = 0;
    MBT_U32 STBID = 0;
    MBT_CHAR ucSn[CDCA_MAXLEN_SN + 1] = {0};
	MBT_U16	wRet = 0;
    MBT_ULONG calib_version;
    MBT_S32 s32Font_height = 0;
    MBT_U32 ouiVer, swVer, hwVer;
    MBT_CHAR* infostr[2][9]=
    {
        {
			"Product ID:",
			"SW Version:",
			"HW Version:",
			"CA Lib Version:",
			"Loader Version:",
			"STBID:",
			"Build Time:",
			"Card SN:",
			"Invalid SC"
        },
        {
            "Product ID:",
			"SW Version:",
			"HW Version:",
			"CA Lib Version:",
			"Loader Version:",
			"STBID:",
			"Build Time:",
			"Card SN:",
			"Invalid SC"
        },
    };
	
    s32Font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
  
	/*Product ID*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
    y =  STB_INFORMAITON_START_Y + STB_INFORMAITON_START_OFFSET_H;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);
	x = x + STB_INFORMAITON_SECD_OFFSET_W;
    ouiVer = MApp_AppOuiGet();
	sprintf(buf, "%04X",(ouiVer)&0xFFFF);
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);

	/*SW Version*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
    swVer = MApp_AppSwGet();
    sprintf(buf, "%04x", ((swVer>>16)&0xFFFF));
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);

	/*HW Version*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
    hwVer = MApp_AppHwGet();
    sprintf(buf, "%04x", hwVer);
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);


#if(1 == M_CDCA)
	/*CA Lib Version*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
	
    calib_version = CDCASTB_GetVer();
    sprintf(buf, "0x%08x", calib_version);
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);
#endif
	/*Loader Version*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][4]), infostr[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
    pstring = "1.0";
    WGUIF_FNTDrawTxt(x, y, strlen(pstring), pstring, FONT_FRONT_COLOR_WHITE);

#if(1 == M_CDCA)
    /*STBID*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][5]), infostr[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
    CDSTBCA_GetSTBID(&PlatformID, &STBID);
    sprintf(buf,"%04x%08x",PlatformID,STBID);
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);
#endif

    /*Build Time*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][6]), infostr[uiv_u8Language][6], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;
    sprintf(buf,"%s",ProjectBuildDateTime());
    WGUIF_FNTDrawTxt(x, y, strlen(buf), buf, FONT_FRONT_COLOR_WHITE);

#if(1 == M_CDCA)
    /*Card SN*/
    x =  STB_INFORMAITON_START_X + STB_INFORMAITON_START_OFFSET_W;
	y = y + STB_INFORMAITION_DISTANCE;
    WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][7]), infostr[uiv_u8Language][7], FONT_FRONT_COLOR_WHITE);
    x = x + STB_INFORMAITON_SECD_OFFSET_W;		
    wRet = CDCASTB_GetCardSN(ucSn);
    if (wRet == CDCA_RC_OK)
	{
		WGUIF_FNTDrawTxt(x, y, strlen(ucSn), ucSn, FONT_FRONT_COLOR_WHITE);
	}
    else
    {
        WGUIF_FNTDrawTxt(x, y, strlen(infostr[uiv_u8Language][8]), infostr[uiv_u8Language][8], FONT_FRONT_COLOR_WHITE); 
    }
#endif    
    WGUIF_SetFontHeight(s32Font_height);
}

MBT_S32  uif_STB_Information( MBT_S32 iPara )
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
            uif_STBInfoDrawPanel();
	        uif_STBInfoDrawContent();
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
                
            case DUMMY_KEY_FORCEUPDATE_PROGRAM:
                //接收这个键是为了不退出 产测开机按F6键显示stb information界面
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
