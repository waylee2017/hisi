#include "ui_share.h"

#define ENABLE_DEBUG 1

#define MAIN_SUB_CHANNEL_ITEM_NUM 5
#define MAIN_SUB_SEARCH_ITEM_NUM 3
#define MAIN_SUB_SETTING_ITEM_NUM 7
#define MAIN_SUB_OPTIOIN_ITEM_NUM 6
#define MAIN_SUB_USB_ITEM_NUM 3
#define MAIN_SUB_CA_ITEM_NUM 9

#define MAIN_OSD_WIDTH (OSD_REGINMAXWIDHT) //分辨率
#define MAIN_OSD_HEIGHT (OSD_REGINMAXHEIGHT) //分辨率
#define MAIN_BOTTOM_MENU_BAR_HEIGHT 132 //底部menu的高度
#define MAIN_ITEM_LIST_MARGIN_LEFT 90 //menu底部的第一个图标距离左边的距离
#define MAIN_ITEM_DISTANCE 45 //menu两个item之间的距离
#define MAIN_LOGO_TO_END 25 //logo距离最后距离
#define MAIN_LEFT_ARROW_TO_CHANNEL 50 //左箭头到第一个图片的距离
#define MAIN_RIGHT_ARROW_TO_CHANNEL 20 //右箭头到logo的距离
#define MAIN_SUB_FIRST_ITEM_MARGIN_TOP 36//第一个item距离顶部的距离
#define MAIN_ARROW_TO_TOP 40 //主菜单箭头至顶部的距离
#define MAIN_DRAW_ITEM_TXT_HEIGHT 100 //主菜单箭头至顶部的距离

#define MAINMENU_LISTITEMS_NUM 6 //每页数据显示5条
#define MAINMENU_LISTITEMS_ALL 6 //总共10条数据

#define max_fileNameLen 256
#define SUB_MENU_ITEM_BAK_COLOUR 0xff213a84//非选中时颜色0xff104088
#define SUB_MENU_ITEM_FRONT_COLOUR 0xff266ed9//select color  //0xfffc9b07
#define SUB_MENU_LISTITEMS_PERPAGE 5
#define SUB_MENU_ITEM_GAP (-2)
#define FONT_FOCUS_FRONT_COLOR_BLACK 0xFF200008
#define FONT_UNFOCUS_FRONT_COLOR_BLACK 0xFFe6f6f2

#define SUB_MENU_TITLE_COLOR 0xff02f7c1//0x00F6C0

typedef struct _st_subitemtxt_arr_
{
    MBT_U32 u32SubMenuTxtNodeNum;
    MBT_CHAR** pstSubMenuTxtNode;
}ST_SubItemTxtArr;


static ST_SubItemTxtArr uiv_stSubMenuArrLeft = {0,MM_NULL};

MBT_CHAR* MenuSub_Channel[MAIN_SUB_CHANNEL_ITEM_NUM] = 
{
	"Program Edit",
	"Program Guide",
    "NVOD",
	"Genres",
	"Favorite"
};

MBT_CHAR* MenuSub_Search[MAIN_SUB_SEARCH_ITEM_NUM] = 
{
    "Auto Search",
    "Manual Search",
    "Main Transponder Setting",
};

MBT_CHAR* MenuSub_Setting[MAIN_SUB_SETTING_ITEM_NUM] = 
{
	"Parental Guidance",
	"Set Password",
	"Factory Default",
	"AV Setting",
	"OSD Language",
	"Audio Language",
	"Information"
};

MBT_CHAR* MenuSub_Option[MAIN_SUB_OPTIOIN_ITEM_NUM] = 
{
    "Game",
    "Power On/Off",
    "LCN On/Off",
	"Reminder",
	"Software Update",
	"OTA Upgrade"
};

MBT_CHAR* MenuSub_USB[MAIN_SUB_USB_ITEM_NUM] = 
{
	"PVR Configure",
	"PVR",
	"Media Player"
};

MBT_CHAR* MenuSub_CA[MAIN_SUB_CA_ITEM_NUM] = 
{
	"Entitle Information",
	"Detitle Information",
	"Mail",
	"CA Information",
	"Slot Information",
	"Card Marry",
	"Modify Pin",
	"Modify Working Time",
	"IPPV Information"
};

static MBT_S32 Mainmenu_FindSubmenuNextFocusItem(MBT_S32 iCurSubmenu, MBT_S32 iItemSelected, MBT_S32 iKey )
{
	MBT_S32 iNextItem = iItemSelected;
	MBT_S32 iTotalItems = 0;

	switch(iCurSubmenu)
	{
		case 0:
			iTotalItems = MAIN_SUB_CHANNEL_ITEM_NUM;
			break;
		case 1:
			iTotalItems = MAIN_SUB_SEARCH_ITEM_NUM;
			break;
		case 2:
			iTotalItems = MAIN_SUB_SETTING_ITEM_NUM;
			break;
        case 3:
			iTotalItems = MAIN_SUB_OPTIOIN_ITEM_NUM;
			break;
		case 4:
			iTotalItems = MAIN_SUB_USB_ITEM_NUM;
			break;
		case 5:
			iTotalItems = MAIN_SUB_CA_ITEM_NUM;
			break;
		default:
			break;
	}


	if(iTotalItems <= 0)
	{
		return iNextItem;
	}
	
	switch ( iKey )
	{
		case DUMMY_KEY_UPARROW:
			iNextItem --;
			if ( iNextItem < 0 )
			{
				iNextItem = iTotalItems - 1;
			}
			break;

		case DUMMY_KEY_DNARROW:
			iNextItem ++;
			if ( iNextItem >= iTotalItems )
			{
				iNextItem = 0;
			}
			break;
	}

	return iNextItem;
}


//////////////////////////////////////////////////////////////////////////////////////////////////
//
//		成功进入子项，返回MM_TRUE，否则返回MM_FALSE
//
//
//////////////////////////////////////////////////////////////////////////////////////////////////
static MBT_S32 Mainmenu_EnterChannel(MBT_S32 iItemSelected)
{
	MBT_BOOL bRet = MM_FALSE;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    MBT_CHAR* infostr[2][3] = {
		{
			"Information",
            "No Program",
            "No NVOD Program",
		},
		{
			"Information",
            "No Program",
            "No NVOD Program",
		}
	};
	switch(iItemSelected)
	{
		case 0: //Program edit
			if (!DBSF_DataHaveVideoPrg() && !DBSF_DataHaveRadioPrg())//没有TV 节目弹出提示框
            {
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], DLG_WAIT_TIME);
                break;
            }
            else
            {
                WDCtrF_PutWindow(uif_PrgEdit, 0);
				bRet = MM_TRUE;
            }
			break;
		
		case 1: // program guide		
			if(DBSF_DataHaveVideoPrg() == MM_TRUE)
			{
				WDCtrF_PutWindow(uif_EPGMenu, 1);
				bRet = MM_TRUE;
			}
			else
			{
				uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1],DLG_WAIT_TIME);
			}
			break;
        case 2: //NVOD      
            if(DBSF_NVDHavePrg() == MM_TRUE)
            {
                WDCtrF_PutWindow(uif_NVODMenu, 1);
                bRet = MM_TRUE;
            }
            else
            {
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][2],DLG_WAIT_TIME);
            }
            break;
		case 3: //Genres
		    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
            {      
    		    if(DBSF_DataHaveVideoPrg() == MM_FALSE)
                {
                    break;
                }
            }
            else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
            {
                if(DBSF_DataHaveRadioPrg() == MM_FALSE)
                {
                    break;
                }
            }
            WDCtrF_PutWindow(uif_ChannelProgramList, 0);
            bRet = MM_TRUE;
			break;
            
		case 4://Favorite
		    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
            {      
    		    if(DBSF_DataHaveVideoPrg() == MM_FALSE)
                {
                    break;
                }
            }
            else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
            {
                if(DBSF_DataHaveRadioPrg() == MM_FALSE)
                {
                    break;
                }
            }
            WDCtrF_PutWindow(uif_ChnFavEditList, 0);
            bRet = MM_TRUE;
			break;
		
		default:
			break;
	}
	return bRet;
}

static MBT_S32 Mainmenu_EnterSearch(MBT_S32 iItemSelected)
{
	MBT_BOOL bRet = MM_FALSE;
    
	switch ( iItemSelected )
	{
		case 0:// auto srch
            WDCtrF_PutWindow(uif_SrchAntennaSetting,AUTO_SRCH_MODE_FROM_SPECIFYFRENQ);
			bRet = MM_TRUE;
			break;
	
		case 1: // manual srch
            WDCtrF_PutWindow(uif_SrchAntennaSetting,MANUAL_SRCH_MODE);
			bRet = MM_TRUE;
			break;

		case 2: // main tp set
            WDCtrF_PutWindow(uif_MainTPSet,0);
			bRet = MM_TRUE;
			break;

		
		default:
			break;
	}	

	return bRet;
}

static MBT_S32 Mainmenu_EnterSetting(MBT_S32 iItemSelected)
{
	MBT_BOOL bRet = MM_FALSE;
    DVB_BOX *pstBoxInfo = NULL;
    MBT_S32 s32Ret;

    MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;
    MBT_CHAR* strlist[2][2]=
    {
        {
            "[OK]:Start",
            "[EXIT]:QUIT"
        },
        {
            "[OK]:Start",
            "[EXIT]:QUIT"
        }
    };

	switch ( iItemSelected )
	{
		case 0: //parental guidance
            pstBoxInfo = DBSF_DataGetBoxInfo();  
            s32Ret = uif_SharePwdCheckDlg(pstBoxInfo->ucBit.unPowerOnPwd,MM_FALSE);
            if(1 == s32Ret||2 == s32Ret)
            {
              WDCtrF_PutWindow(uif_Parental_GuidanceMenu, 0);
              bRet = MM_TRUE;
            }  			
			break;
            
		case 1: //set password
		    pstBoxInfo = DBSF_DataGetBoxInfo(); 
            s32Ret = uif_SharePwdCheckDlg(pstBoxInfo->ucBit.unPowerOnPwd,MM_FALSE);
            if(1 == s32Ret||2 == s32Ret)
			{
                WDCtrF_PutWindow(uif_PasswordSettingMenu, 0);
				bRet = MM_TRUE;
			}
			break;
            
		case 2: //restore Factory defualt
		    pstBoxInfo = DBSF_DataGetBoxInfo();
            WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
            s32Ret = uif_SharePwdCheckDlg(pstBoxInfo->ucBit.unPowerOnPwd,MM_FALSE);
            if(1 == s32Ret||2 == s32Ret)
			{
				pMsgTitle = strlist[uiv_u8Language][0];
				pMsgContent = strlist[uiv_u8Language][1];
				
                if(MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
				{
					uif_FactoryReset();
					uif_SetMuteAndDrawICO(0);
					DBSF_PlyOpenVideoWin(MM_FALSE);
					MLMF_FP_Display("0000", 4,MM_FALSE);
                    UIF_SendKeyToUi(DUMMY_KEY_FORCEUPDATE_PROGRAM);
                    break;
				}
			}
			break;
            
        case 3: // av setting
			WDCtrF_PutWindow(uif_AVSettingMenu,0);
			bRet = MM_TRUE;
			break; 
            
	    case 4: //osd language
			WDCtrF_PutWindow(uif_LanguageSetMenu, 0);
			bRet = MM_TRUE;
			break;
            
		case 5: // audio language
			WDCtrF_PutWindow(uif_AudioLanguageSetMenu, 0);
			bRet = MM_TRUE;
			break;
            
        case 6: //information
			WDCtrF_PutWindow(uif_STB_Information, 0);
			bRet = MM_TRUE;
			break;
		default:
			break;		
	}	

	return bRet;
}

static MBT_S32 Mainmenu_EnterOption(MBT_S32 iItemSelected)
{
    MBT_BOOL bRet = MM_FALSE;

    switch ( iItemSelected )
	{
	    case 0://game
	        WDCtrF_PutWindow(uif_GameStage, 0);
			bRet = MM_TRUE;
            break;
            
        case 1: //power on/off
			WDCtrF_PutWindow(uif_PowerMenu,0);
			bRet = MM_TRUE;
			break;
            
        case 2://lcn on/off
            WDCtrF_PutWindow(uif_Lcn_OnOff_Menu,0);
		    bRet = MM_TRUE;
            break;
            
        case 3: // reminder
            WDCtrF_PutWindow(uif_Subscribe,0);
			bRet = MM_TRUE;
			break;
            
        case 4: //software update
		    WDCtrF_PutWindow(uif_UsbUpgrade, 0);
			bRet = MM_TRUE;
			break;

        case 5: //ota
		    WDCtrF_PutWindow(uif_OtaUpgrade, 1);
			bRet = MM_TRUE;
			break;
		default:
			break;
	}	

    return bRet;
}  

static MBT_S32 Mainmenu_EnterUSB(MBT_S32 iItemSelected)
{
    MBT_BOOL bRet = MM_FALSE;
    MBT_CHAR* pMsgTitle = NULL;
    MBT_CHAR* pMsgContent = NULL;
    MBT_CHAR* strlist[2][5]=
    {
        {
            "Confirm",
            "No Valid File !",
            "Please Wait !",

            "Information",
            "No USB device!",
        },
        {
            "Confirm",
            "No Valid File !",
            "Please Wait !",

            "Information",
            "No USB device!",
        }
    };

    if(0==MLMF_USB_GetDevVolNum())
    {
        pMsgTitle = strlist[uiv_u8Language][3];
        pMsgContent = strlist[uiv_u8Language][4];
        uif_ShareDisplayResultDlg(pMsgTitle, pMsgContent, DLG_WAIT_TIME);

        return bRet;
    }

    switch ( iItemSelected )
    {
        case 0: //pvr configure
            WDCtrF_PutWindow(uif_PvrConfig, 0);
            bRet = MM_TRUE;
            break;

        case 1: // pvr
            WDCtrF_PutWindow(uif_Pvr, 0);
            bRet = MM_TRUE;
            break;

        case 2: // media
            WDCtrF_PutWindow(uif_UsbBroswer, 0);
            bRet = MM_TRUE;
            break;

        default:
            break;
    }	

    return bRet;
}

static MBT_S32 Mainmenu_EnterCA(MBT_S32 iItemSelected)
{
	MBT_BOOL bRet = MM_FALSE;

	switch ( iItemSelected )
	{
	    case 0://Entitle Information
	        WDCtrF_PutWindow(uif_CACardEntile, 0);
            bRet = MM_TRUE;
            break;
            
		case 1://Detitle Information
	        WDCtrF_PutWindow(uif_CACardDeEntitle, 0);
			bRet = MM_TRUE;
            break;
            
        case 2: //mail
		    WDCtrF_PutWindow(uif_ShortMsg, 1);
			bRet = MM_TRUE;
			break;
            
        case 3: // ca information
			WDCtrF_PutWindow(uif_CardInfo, 0);
			bRet = MM_TRUE;
			break;
            
		case 4://Slot Information
			WDCtrF_PutWindow(uif_CACardSlots, 0);
			bRet = MM_TRUE;
            break;
            
		case 5://Card Marry
	        WDCtrF_PutWindow(uif_Card_Marry, 0);
			bRet = MM_TRUE;
            break;
            
		case 6://Modify Pin
	        WDCtrF_PutWindow(uif_Modify_Pin, 0);
			bRet = MM_TRUE;
            break;
            
		case 7://Working Time
	        WDCtrF_PutWindow(uif_Working_Time, 0);
			bRet = MM_TRUE;
            break;
            
		case 8://IPPV Information
			WDCtrF_PutWindow(uif_CACardIPPVInfo,1);
			bRet = MM_TRUE;
            break;
		default:
			break;
	}
	
	return bRet;
}
    

/**
*	iCurSubmenu:main item index
*	iItemSelected: sub main item index
*/
static MBT_S32 Mainmenu_EnterSubmenuWindow(MBT_S32 iCurSubmenu, MBT_S32 iItemSelected)
{
	MBT_BOOL bRet = MM_FALSE;

	switch(iCurSubmenu)
	{
		//channel
		case 0:	
			bRet = Mainmenu_EnterChannel(iItemSelected);
			break;

		// search
		case 1:
			bRet = Mainmenu_EnterSearch(iItemSelected);
			break;

        //setting
		case 2:	
			bRet = Mainmenu_EnterSetting(iItemSelected);
			break;

		// option
		case 3:	
			bRet = Mainmenu_EnterOption(iItemSelected);
			break;

		//usb
		case 4:	
			bRet = Mainmenu_EnterUSB(iItemSelected);
			break;
            
		//ca
		case 5:
			bRet = Mainmenu_EnterCA(iItemSelected);
			break;
		default:
			break;
	}

	return bRet;
}



static MBT_VOID MainMenu_DrawPanel( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y;
    BITMAPTRUECOLOR *pstFramBmp;

    WGUIF_ClsFullScreen();

    //绘制底部的横条背景
    x = 0;
    y = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT;
    pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    //绘制底部的左右方向箭头和logo
    pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_LeftIfor);
    x = MAIN_ITEM_LIST_MARGIN_LEFT - 2;
    y = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT + MAIN_ARROW_TO_TOP;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    //logo
    pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_LogoIfor);
    x = MAIN_OSD_WIDTH - BMPF_GetBMPWidth(m_ui_MainMenu_LogoIfor)-MAIN_LOGO_TO_END;
    y = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    //右箭头
    pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_RightIfor);
    x = MAIN_OSD_WIDTH - BMPF_GetBMPWidth(m_ui_MainMenu_LogoIfor)- MAIN_LOGO_TO_END - MAIN_RIGHT_ARROW_TO_CHANNEL - BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_RightIfor) - 10;
    y = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT + MAIN_ARROW_TO_TOP;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
}

/*
*
*	menuIndex:表示在menuIndex中的下标，通过该下标，依次计算位置
*	iItemIndex:在数据列表中的下标
*/
static MBT_VOID MainMenu_DrawListItem(MBT_S32 menuIndex, MBT_S32 iItemIndex)
{

    MBT_S32 s32Icons[MAINMENU_LISTITEMS_ALL] = 
    {
        m_ui_MainMenu_Channel_normalIfor,
        m_ui_MainMenu_Search_NormalIfor,
        m_ui_MainMenu_Setting_NormalIfor,
        m_ui_MainMenu_Option_NormalIfor,
        m_ui_MainMenu_USB_NormalIfor,
        m_ui_MainMenu_CA_NormalIfor
    };
	
	MBT_S32 s32Icons_select[MAINMENU_LISTITEMS_ALL] = 
    {
		m_ui_MainMenu_Channel_FocusIfor,
        m_ui_MainMenu_Search_FocusIfor,        
        m_ui_MainMenu_Setting_FocusIfor,
        m_ui_MainMenu_Option_FocusIfor,
        m_ui_MainMenu_USB_FocusIfor,
        m_ui_MainMenu_CA_FocusIfor
    };

	MBT_CHAR* menuItem[MAINMENU_LISTITEMS_ALL] = 
	{
		"Channel",
		"Search",
		"Setting",
		"Option",
		"USB",
		"CA"
	};
	
    MBT_S32 x = 0, y = 0,itemWidth;
	MBT_S32 s32FontHeight;
	MBT_CHAR* itemTitle;
    BITMAPTRUECOLOR *pstFramBmp;
    if(iItemIndex >= MAINMENU_LISTITEMS_ALL)
    {
		return;
	}

	//each item x and y
	itemWidth = BMPF_GetBMPWidth(s32Icons_select[menuIndex]);
	x = MAIN_ITEM_LIST_MARGIN_LEFT + BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_LeftIfor) + MAIN_LEFT_ARROW_TO_CHANNEL +(itemWidth + MAIN_ITEM_DISTANCE)*menuIndex;
	y = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT;
		
	if(menuIndex == iItemIndex)
    {
    	//选中的图标
		pstFramBmp = BMPF_GetBMP(s32Icons_select[menuIndex]);
    }
    else
    {
    	//非选中的图标
    	pstFramBmp = BMPF_GetBMP(s32Icons[menuIndex]);
    }
	WGUIF_DisplayReginTrueColorBmp(x,y, 0,0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
	
    s32FontHeight = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	
    //标题
	itemTitle = menuItem[menuIndex];
    WGUIF_DisplayReginTrueColorBmp(0, y, x - 15, MAIN_DRAW_ITEM_TXT_HEIGHT-2, pstFramBmp->bWidth + 40, WGUIF_GetFontHeight()+4, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);
	WGUIF_FNTSetTxtMiddle(x - 20, y + MAIN_DRAW_ITEM_TXT_HEIGHT, pstFramBmp->bWidth + 40, 20, WGUIF_FNTGetTxtWidth(strlen(itemTitle), itemTitle), GWFONT_HEIGHT_SIZE22, itemTitle, FONT_FRONT_COLOR_WHITE);
	
	WGUIF_SetFontHeight(s32FontHeight);
}

static MBT_VOID MainMenu_DrawMenuList( MBT_S32 iSelect )
{
    MBT_S32 i;
    
	for ( i = 0; i < MAINMENU_LISTITEMS_NUM; i++ )
    {
        MainMenu_DrawListItem( i, iSelect );
    }
}

static MBT_S32 MainMenu_FindNextFocusItem( MBT_S32 iItemSelected, MBT_S32 iKey )
{
	MBT_S32 iNextItem = iItemSelected;
	
	switch ( iKey )
	{
		case DUMMY_KEY_LEFTARROW:
			iNextItem --;
			if ( iNextItem < 0 )
			{
				iNextItem = MAINMENU_LISTITEMS_ALL - 1;
			}
			break;

		case DUMMY_KEY_RIGHTARROW:
			iNextItem ++;
			if ( iNextItem >= MAINMENU_LISTITEMS_ALL )
			{
				iNextItem = 0;
			}
			break;
	}

	return iNextItem;
}

MBT_VOID MainMenu_ClsPreSelListRect(MBT_S32 iItemSelectedIndex)
{
    MBT_S32 bgX = 0;
    MBT_S32 bgY = 0;
  	MBT_S32 s32Xoffset;	
    MBT_S32 s32ArrW = 0, s32SubListBgW = 0, itemIconW = 0;

    s32ArrW = BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_LeftIfor);
    itemIconW = BMPF_GetBMPWidth(m_ui_MainMenu_Channel_FocusIfor);
    s32SubListBgW = BMPF_GetBMPWidth(m_ui_MainMenu_Sub_List_Bg_LineIfor);
    s32Xoffset = (BMPF_GetBMPWidth(m_ui_MainMenu_Select_BarIfor) - BMPF_GetBMPWidth(m_ui_MainMenu_Sub_List_Bg_LineIfor))/2;

	bgX = MAIN_ITEM_LIST_MARGIN_LEFT + s32ArrW + MAIN_LEFT_ARROW_TO_CHANNEL + (itemIconW - s32SubListBgW)/2 + (itemIconW + MAIN_ITEM_DISTANCE)*iItemSelectedIndex;
	bgY = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT - BMPF_GetBMPHeight(m_ui_MainMenu_Sub_List_Bg_LineIfor) ;
  
    WGUIF_ClsScreen(bgX - s32Xoffset, bgY, BMPF_GetBMPWidth(m_ui_MainMenu_Select_BarIfor), BMPF_GetBMPHeight(m_ui_MainMenu_Sub_List_Bg_LineIfor));
}

MBT_BOOL uif_subMenuReadItemLeft(MBT_S32 iIndex, MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    MBT_CHAR** pstTxtNode = uiv_stSubMenuArrLeft.pstSubMenuTxtNode;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstTxtNode || iIndex >= uiv_stSubMenuArrLeft.u32SubMenuTxtNodeNum)
    {
        memset(pItem, 0, max_fileNameLen);
        return MM_FALSE;
    }

    iLen = sprintf(pItem, "%s", pstTxtNode[iIndex]);		
    pItem[iLen] = 0;
    
    return MM_TRUE;
}

MBT_BOOL SubMenuListDrawLeft(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstRefreshBmp = NULL; 
    BITMAPTRUECOLOR *pstRefreshBmpTemp = NULL; 
  	MBT_S32 bgY = 0;	
  	MBT_S32 s32Xoffset;	
    pstRefreshBmp = BMPF_GetBMP(m_ui_MainMenu_Select_BarIfor);
    s32Xoffset = (pstRefreshBmp->bWidth - BMPF_GetBMPWidth(m_ui_MainMenu_Sub_List_Bg_LineIfor))/2;

	if(MM_TRUE == bSelect)
    {
        WGUIF_DisplayReginTrueColorBmp(x - s32Xoffset, y, 0, 0, pstRefreshBmp->bWidth, pstRefreshBmp->bHeight, pstRefreshBmp, MM_TRUE);
	}
    else
    {
		bgY = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT - BMPF_GetBMPHeight(m_ui_MainMenu_Sub_List_Bg_LineIfor) ;
		pstRefreshBmpTemp = BMPF_GetBMP(m_ui_MainMenu_Sub_List_Bg_LineIfor);
		//清屏
		WGUIF_ClsScreen(x - s32Xoffset, y, BMPF_GetBMPWidth(m_ui_MainMenu_Select_BarIfor), pstRefreshBmp->bHeight);
		WGUIF_DisplayReginTrueColorBmp(x,bgY,0,y - bgY,iWidth,iHeight,pstRefreshBmpTemp, MM_TRUE);
	}
    return MM_TRUE;
}

/*
    subMenu:传入的字符串数组
*/

MBT_BOOL uif_SubMenuCreateSunTreeLeft(MBT_CHAR **subMenu,MBT_S16 count)
{
	uiv_stSubMenuArrLeft.pstSubMenuTxtNode = subMenu;
    uiv_stSubMenuArrLeft.u32SubMenuTxtNodeNum = count;
	return MM_TRUE;
}

MBT_VOID uif_subMenuListInitLeft( LISTITEM* pstList, MBT_S32 iItemSelected)
{
	MBT_S32 me_StartX, me_StartY;	
	MBT_S32 bgX,bgY;
	BITMAPTRUECOLOR *pstRefreshBmp;
    MBT_S32 s32ArrW = 0, s32SubListBgW = 0, itemIconW = 0;

    s32ArrW = BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_LeftIfor);
    itemIconW = BMPF_GetBMPWidth(m_ui_MainMenu_Channel_FocusIfor);
    s32SubListBgW = BMPF_GetBMPWidth(m_ui_MainMenu_Sub_List_Bg_LineIfor);
	bgX = MAIN_ITEM_LIST_MARGIN_LEFT + s32ArrW + MAIN_LEFT_ARROW_TO_CHANNEL + (itemIconW - s32SubListBgW)/2 + (itemIconW + MAIN_ITEM_DISTANCE)*iItemSelected;
	bgY = MAIN_OSD_HEIGHT - MAIN_BOTTOM_MENU_BAR_HEIGHT - BMPF_GetBMPHeight(m_ui_MainMenu_Sub_List_Bg_LineIfor) ;
    
    pstRefreshBmp = BMPF_GetBMP(m_ui_MainMenu_Sub_List_Bg_LineIfor);
	WGUIF_DisplayReginTrueColorBmp(bgX, bgY, 0, 0, pstRefreshBmp->bWidth, pstRefreshBmp->bHeight, pstRefreshBmp, MM_TRUE);

	me_StartX = bgX;
    me_StartY = bgY + MAIN_SUB_FIRST_ITEM_MARGIN_TOP;//BMPF_GetBMPHeight(m_ui_MainMenu_Select_BarIfor);	
	
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = SUB_MENU_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = SUB_MENU_ITEM_GAP;
    pstList->iWidth  = BMPF_GetBMPWidth(m_ui_MainMenu_Sub_List_Bg_LineIfor);
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_MainMenu_Select_BarIfor);

    pstList->iFontHeight = GWFONT_HEIGHT_SIZE22;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 1;
    pstList->iColPosition[0] = pstList->iColStart + 20;  

    pstList->iColWidth[0] = pstList->iWidth - 40;

    pstList->ListReadFunction = uif_subMenuReadItemLeft;
	//选中样式
    pstList->ListDrawBar = SubMenuListDrawLeft;
    pstList->iNoOfItems = uiv_stSubMenuArrLeft.u32SubMenuTxtNodeNum;
    pstList->cHavesScrollBar = 0;
}


void refresh_SubMenuLeft(MBT_S32 iItemSelected,MBT_S32 iSubmenuItemSelected,LISTITEM *stFileList)
{
	switch(iItemSelected)
	{
		case 0:
			uif_SubMenuCreateSunTreeLeft(MenuSub_Channel,MAIN_SUB_CHANNEL_ITEM_NUM);
			break;		
		case 1:
			uif_SubMenuCreateSunTreeLeft(MenuSub_Search,MAIN_SUB_SEARCH_ITEM_NUM);
			break;		
		case 2:
			uif_SubMenuCreateSunTreeLeft(MenuSub_Setting,MAIN_SUB_SETTING_ITEM_NUM);
			break;
		case 3:
            uif_SubMenuCreateSunTreeLeft(MenuSub_Option,MAIN_SUB_OPTIOIN_ITEM_NUM);
			break;
		case 4:
			uif_SubMenuCreateSunTreeLeft(MenuSub_USB,MAIN_SUB_USB_ITEM_NUM);
			break;
		case 5:
			uif_SubMenuCreateSunTreeLeft(MenuSub_CA,MAIN_SUB_CA_ITEM_NUM);
			break;
			
	}
	
	uif_subMenuListInitLeft(stFileList, iItemSelected);
	stFileList->bUpdatePage = MM_TRUE;
	stFileList->iSelect = iSubmenuItemSelected;
}

MBT_S32 uif_MainMenu(MBT_S32 bExitAuto)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_S32 iMsgHeight = BMPF_GetBMPHeight(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgWidth = BMPF_GetBMPWidth(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = (OSD_REGINMAXWIDHT -iMsgWidth)/2;
    MBT_S32 iMsgY = (OSD_REGINMAXHEIGHT - iMsgHeight)/2 - UI_DLG_OFFSET_Y;
    MBT_BOOL bNeedDrawItemListAgain = MM_TRUE;
    MBT_U8 sg_u8KeyBuf[5];
    static MBT_S32 iItemSelectedIndex = 0;
    static MBT_S32 iSubmenuItemSelectedLeft = 0;
    MBT_U8 HideMenuEnterPwdIndex = 0;
    UI_PRG stPrgInfo;
    LISTITEM stFileListLeft;

    if (UIF_GetAddMainMenuFlag())
    {
        iItemSelectedIndex = 0;
        iSubmenuItemSelectedLeft = 0;
        UIF_SetAddMainMenuFlag(MM_FALSE);
    }

	bRefresh |= uif_ResetAlarmMsgFlag();

    if (DVB_INVALID_LINK != DBSF_DataCurPrgInfo(&stPrgInfo) )
    {
        uif_ChnListPlayPrg(&stPrgInfo.stService);
    }

    uif_ClearWaterMark();
	
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            MainMenu_DrawPanel();
            refresh_SubMenuLeft(iItemSelectedIndex,iSubmenuItemSelectedLeft,&stFileListLeft);
            MainMenu_DrawMenuList( iItemSelectedIndex );
            MLMF_AV_SetVideoWindow(0,0,0,0);
            bRedraw = MM_FALSE;	
            bRefresh = MM_TRUE;
        }

        bRefresh |= UCTRF_ListOnDraw(&stFileListLeft);

        if(MM_TRUE == bRefresh)
        {
            if (bNeedDrawItemListAgain)//处理stFileListLeft.iSpace < 0的时候显示的问题
            {
                stFileListLeft.bUpdateItem = MM_TRUE;
                UCTRF_ListOnDraw(&stFileListLeft);
                bNeedDrawItemListAgain = MM_FALSE;
            }
            //refresh UI select
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;  
        }

        iKey = uif_ReadKey(2000);
        if ( bExitAuto && uif_ShareIsKeyPressed( iKey ) )
        {
            bExitAuto = 0;
        }

        switch ( iKey )
        {		
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                HideMenuEnterPwdIndex = 0;
                MainMenu_ClsPreSelListRect(iItemSelectedIndex);
                iItemSelectedIndex = MainMenu_FindNextFocusItem( iItemSelectedIndex, iKey );
                iSubmenuItemSelectedLeft = 0;
                refresh_SubMenuLeft(iItemSelectedIndex,iSubmenuItemSelectedLeft,&stFileListLeft);
                MainMenu_DrawMenuList( iItemSelectedIndex );
                bNeedDrawItemListAgain = MM_TRUE;
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
			case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
				UCTRF_ListGetKey(&stFileListLeft, iKey);
                iSubmenuItemSelectedLeft = Mainmenu_FindSubmenuNextFocusItem( iItemSelectedIndex,iSubmenuItemSelectedLeft, iKey );
                bNeedDrawItemListAgain = MM_TRUE;//翻页的时候会重新画一页，所以也要再画一下
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SELECT:	
				if(MM_TRUE == Mainmenu_EnterSubmenuWindow(iItemSelectedIndex,iSubmenuItemSelectedLeft))
                {
                    bExit = MM_TRUE;
                    iRetKey = DUMMY_KEY_ADDWINDOW;
                }
                else
                {
                    bRefresh = MM_TRUE;
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
                if(HideMenuEnterPwdIndex < 4)
                {
                    sg_u8KeyBuf[HideMenuEnterPwdIndex] = '0' + iKey - DUMMY_KEY_0;
                    HideMenuEnterPwdIndex ++;
                    if(4 == HideMenuEnterPwdIndex)
                    {	
                        int password = 0;

                        HideMenuEnterPwdIndex = 0;
                        sg_u8KeyBuf[4] = 0;
                        password = atoi((MBT_CHAR *)sg_u8KeyBuf);
                    
                        if(9897 == password)
                        {
                        }
                        else if(9971 == password)
                        {
                            uif_ForceFactoryReset();
                        }
                    }
                }
                else
                {
                    HideMenuEnterPwdIndex = 0;
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

                
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                iRetKey = iKey;
                bExit = MM_TRUE;
                break;


            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                break;

            case DUMMY_KEY_MUTE:
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY, iMsgWidth,iMsgHeight);
                break;

            default:				
                if(uif_ShowMsgList(iMsgX,iMsgY,iMsgWidth,iMsgHeight))
                {
                    bRefresh = MM_TRUE;
                }
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    
    WGUIF_ClsFullScreen();
    uif_DisplayWaterMark();
    
    return iRetKey;
}

