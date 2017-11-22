
#ifndef _PUBLICBMPDATA_
#define _PUBLICBMPDATA_
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mm_common.h"


enum
{
	m_ui_Audio_language_bgIfor
	,m_ui_Audio_Lang_DB_SelectIfor
	,m_ui_Audio_Lang_Left_SelectIfor
	,m_ui_Audio_Lang_MP_SelectIfor
	,m_ui_Audio_Lang_Right_SelectIfor
	,m_ui_Audio_Lang_SelectIfor
    ,m_ui_BookManage_logoIfor
    ,m_ui_ChannelEdit_del_logoIfor
    ,m_ui_ChannelEdit_fav_logoIfor
    ,m_ui_ChannelEdit_lock_logoIfor
    ,m_ui_ChannelEdit_move_logoIfor
    ,m_ui_ChannelInfo_caIfor
    ,m_ui_ChannelInfo_muteIfor
    ,m_ui_ChannelInfo_Time_BgIfor
    ,m_ui_ChannelInfo_usbIfor
    ,m_ui_ChannelInfo_volumeIfor
    ,m_ui_Email_already_readIfor
    ,m_ui_Email_iconIfor
    ,m_ui_Email_not_readIfor
    ,m_ui_game_blackIfor
    ,m_ui_game_downIfor
    ,m_ui_game_exitIfor
    ,m_ui_game_greenIfor
    ,m_ui_game_item_foucse_leftIfor
    ,m_ui_game_item_foucse_midIfor
    ,m_ui_game_item_foucse_rightIfor
    ,m_ui_game_item_unfoucse_leftIfor
    ,m_ui_game_item_unfoucse_midIfor
    ,m_ui_game_item_unfoucse_rightIfor
    ,m_ui_game_leftIfor
    ,m_ui_game_okIfor
    ,m_ui_game_redIfor
    ,m_ui_game_rightIfor
    ,m_ui_game_upIfor
    ,m_ui_game_whiteIfor
    ,m_ui_Genres_ClockIfor
    ,m_ui_Genres_DateIfor
    ,m_ui_Genres_Focus_Tmp_LeftIfor
    ,m_ui_Genres_Focus_Tmp_MidIfor
    ,m_ui_Genres_Focus_Tmp_RightIfor
    ,m_ui_Genres_Help_Button_BlueIfor
    ,m_ui_Genres_Help_Button_EXITIfor
    ,m_ui_Genres_Help_Button_GreenIfor
    ,m_ui_Genres_Help_Button_LeftRightIfor
    ,m_ui_Genres_Help_Button_LISTIfor
    ,m_ui_Genres_Help_Button_MENUIfor
    ,m_ui_Genres_Help_Button_OKIfor
    ,m_ui_Genres_Help_Button_RedIfor
    ,m_ui_Genres_Help_Button_UpDownIfor
    ,m_ui_Genres_Help_Button_YellowIfor
    ,m_ui_Guide_Common_LeftIfor
    ,m_ui_Guide_Common_MiddleIfor
    ,m_ui_Guide_Common_RightIfor
    ,m_ui_Guide_Data_Foucs_LeftIfor
    ,m_ui_Guide_Data_Foucs_MiddleIfor
    ,m_ui_Guide_Data_Foucs_RightIfor
    ,m_ui_Guide_Program_Focus_LeftIfor
    ,m_ui_Guide_Program_Focus_MiddleIfor
    ,m_ui_Guide_Program_Focus_RightIfor
	,m_ui_Guide_TV_Type_LeftIfor
    ,m_ui_Guide_TV_Type_MiddleIfor
    ,m_ui_Guide_TV_Type_RightIfor
    ,m_ui_Help_Button_FavIfor
    ,m_ui_Installation_arrow_leftIfor
    ,m_ui_Installation_arrow_rightIfor
    ,m_ui_Installation_item_focus_middleIfor
    ,m_ui_Installation_item_focus_short_leftIfor
    ,m_ui_Installation_item_focus_short_middleIfor
    ,m_ui_Installation_item_focus_short_rightIfor
    ,m_ui_item_select_LIfor
    ,m_ui_item_select_MIfor
    ,m_ui_item_select_RIfor
    ,m_ui_MainMenu_Arrow_LeftIfor
    ,m_ui_MainMenu_Arrow_RightIfor
    ,m_ui_MainMenu_Bottom_BarIfor
    ,m_ui_MainMenu_CA_FocusIfor
    ,m_ui_MainMenu_CA_NormalIfor
    ,m_ui_MainMenu_Channel_FocusIfor
    ,m_ui_MainMenu_Channel_normalIfor
    ,m_ui_MainMenu_func_focusIfor
    ,m_ui_MainMenu_func_unfocusIfor
    ,m_ui_MainMenu_LogoIfor
    ,m_ui_MainMenu_Option_FocusIfor
    ,m_ui_MainMenu_Option_NormalIfor
    ,m_ui_MainMenu_Search_FocusIfor
    ,m_ui_MainMenu_Search_NormalIfor
    ,m_ui_MainMenu_Select_BarIfor
    ,m_ui_MainMenu_Setting_FocusIfor
    ,m_ui_MainMenu_Setting_NormalIfor
    ,m_ui_MainMenu_Sub_List_Bg_LineIfor
    ,m_ui_MainMenu_USB_FocusIfor
    ,m_ui_MainMenu_USB_NormalIfor
    ,m_ui_Msg_backgroundIfor
    ,m_ui_Msg_background_shortIfor
    ,m_ui_play_iconIfor
    ,m_ui_programedit_title_leftIfor
    ,m_ui_programedit_title_left_arrowIfor
    ,m_ui_programedit_title_midIfor
    ,m_ui_programedit_title_rightIfor
    ,m_ui_programedit_title_right_arrowIfor
    ,m_ui_Pvr_LogoIfor
    ,m_ui_PVR_play_button_fastbackwardIfor
    ,m_ui_PVR_play_button_fastforwardIfor
    ,m_ui_PVR_play_button_playIfor
    ,m_ui_PVR_play_button_suspendIfor
    ,m_ui_Pvr_RedIfor
    ,m_ui_Radio_LogoIfor
    ,m_ui_Scrollbar_ballIfor
    ,m_ui_Scrollbar_line_down_include_arrowIfor
    ,m_ui_Scrollbar_line_midIfor
    ,m_ui_Scrollbar_line_up_include_arrowIfor
    ,m_ui_selectbar_arrow_leftIfor
    ,m_ui_selectbar_arrow_rightIfor
    ,m_ui_selectbar_leftIfor
    ,m_ui_selectbar_midIfor
    ,m_ui_selectbar_rightIfor 
    ,m_ui_SetPage_Focus_LeftIfor
    ,m_ui_SetPage_Focus_MidIfor
    ,m_ui_SetPage_Focus_RightIfor
    ,m_ui_SetPage_Left_ArrowIfor
    ,m_ui_SetPage_Right_ArrowIfor
    ,m_ui_Signer_progressbar_blue_leftIfor
    ,m_ui_Signer_progressbar_blue_midIfor
    ,m_ui_Signer_progressbar_blue_rightIfor
    ,m_ui_Signer_progressbar_green_leftIfor
    ,m_ui_Signer_progressbar_green_midIfor
    ,m_ui_Signer_progressbar_green_rightIfor
    ,m_ui_Signer_progressbar_white_leftIfor
    ,m_ui_Signer_progressbar_white_midIfor
    ,m_ui_Signer_progressbar_white_rightIfor
    ,m_ui_SubMemu_background_bigIfor
    ,m_ui_Title_ClockIfor
    ,m_ui_Title_DateIfor
    ,m_ui_USB_file_logoIfor
    ,m_ui_USB_folder_logoIfor
    ,m_ui_USB_play_bgIfor
    ,m_ui_USB_play_button_fastbackwardIfor
    ,m_ui_USB_play_button_fastforwardIfor
    ,m_ui_USB_play_button_playIfor
    ,m_ui_USB_play_button_suspendIfor
    ,m_ui_USB_play_progressbarIfor
    ,m_ui_USB_play_progressbar_buttonIfor
    ,m_ui_USB_play_progressbar_greenIfor
    ,m_ui_USB_play_radio_bgIfor
    ,m_ui_Volume_progress_bg_LeftIfor
    ,m_ui_Volume_progress_bg_MiddleIfor
    ,m_ui_Volume_progress_bg_RightIfor
    ,m_ui_Volume_progress_LeftIfor
    ,m_ui_Volume_progress_MiddleIfor
    ,m_ui_Volume_progress_RightIfor
    ,m_MaxBmp
};

typedef struct tagBITMAPTRUECOLOR { 
  MMT_OSD_ColorMode_E    bColorType;    
  MBT_U16                    bWidth; 
  MBT_U16 		 bHeight; 
  MBT_VOID 				*pBData; 
} BITMAPTRUECOLOR, *PBITMAPTRUECOLOR;

#define BMPF_GetBMP(x)  (&bmpv_stBmpData[x])
#define BMPF_GetBMPHeight(x)  (bmpv_stBmpData[x].bHeight)
#define BMPF_GetBMPWidth(x)  (bmpv_stBmpData[x].bWidth)


extern BITMAPTRUECOLOR bmpv_stBmpData[m_MaxBmp];
extern MMT_STB_ErrorCode_E BMPF_CreateSrc(MBT_VOID);
extern MBT_VOID BMPF_TermSrc(MBT_VOID);

#endif
