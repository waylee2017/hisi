#ifndef __NMSHARE_H__
#define __NMSHARE_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ui_api.h"
#include "appblast.h"
#include "mm_common.h"
#include "ca_api.h"
#include "dbs_api.h"
#include "nvm_api.h"          
#include "bmp_src.h"    // bitmap data     
#include "apptimer.h"
#include "ospctr.h"
#include "wd_ctr.h"
#include "gif.h"
#include "lodepng.h"
#include "uictr_api.h"
#include "section_api.h"
#include "rsa.h"
#include "advert_api.h"

#define DLG_WAIT_TIME    3
#define OSD_WAIT_TIME    12
#define EMAIL_ICON_TICK    500

//小页面的背景位置(CA)
#define TOP_LEFT_X 124
#define TOP_LEFT_Y 110
#define ITEM_BG_WIDTH      (1032)
#define TOP_TITLE_X	(TOP_LEFT_X + 101)
#define TOP_TITLE_Y	(TOP_LEFT_Y + 25)
//大页面的标题顶部
#define TOP_LEFT_Y_BIG 35

#define TIME_YMD_W 62
#define TIME_HM_W 62
#define TIME_BS_W 5
#define TIME_CT_W 10
#define TIME_START_X (OSD_REGINMAXWIDHT - 80 -48 - TIME_YMD_W - TIME_HM_W -20)//80到最后的间距，48两个图片的宽度
#define TIME_BIG_BG 0xff313a73//0xff213a84

#define STB_SUBMENU_HELP_Y   670

#define WATERMAK_TO_RIGHT_W 80
#define WATERMAK_TO_BOTTOM_H 45

typedef struct _channel_edit_
{
    MBT_U16 uProgramIndex;
    MBT_U16 uSrcPosition;
    MBT_U8      ucProgram_status;
    MBT_U8      ucLastProgram_status;
    MBT_U16     u16FavGroup;
}CHANNEL_EDIT;

typedef struct _fav_edit_
{
    MBT_U16  ucProgram_FavGroup;
    MBT_U16  ucLastProgram_FavGroup;
}FAV_EDIT;

typedef struct _ui_prg_list_
{
    MBT_S32 iPrgNum;
    DBST_PROG *pstPrgHead;
}UI_PRGLIST;


/*位图字库，小星星啊，小圆圈啊，箭头啊等等*/

typedef enum
{
	MENU_PROGRESS_GREEN = 0,
	MENU_PROGRESS_YELLOW,
	MENU_PROGRESS_RED,
	MAX_PROGRESS_TYPE
}MENU_PROGRESS_TYPE;

#define MANUAL_SRCH_MODE 0
#define AUTO_SRCH_MODE_FROM_MAINFRENQ 1
#define AUTO_SRCH_MODE_FROM_SPECIFYFRENQ 2

#define NM_SUPER_PASSWORD 2017
#define NM_RECIEVER_VIEW_PASSWORD (2790)

#define TITLE_FRAME_HEIGHT 86
#define P_HELPBAR_HEIGHT 80
#define P_WORKSPACE_HEIGHT (OSD_REGINMAXHEIGHT - TITLE_FRAME_HEIGHT  - P_HELPBAR_HEIGHT)

#define P_MENU_LEFT 0
#define P_MENU_RIGHT (P_MENU_LEFT + OSD_REGINMAXWIDHT-1)
#define P_MENU_TOP 0
#define P_MENU_BOTTOM (P_MENU_TOP + OSD_REGINMAXHEIGHT-1)

#define P_WORKSPACE_TOP (P_MENU_TOP + TITLE_FRAME_HEIGHT) 
#define P_HELPBAR_TOP (P_MENU_BOTTOM - P_HELPBAR_HEIGHT) 
#define P_HELP_TXTSTARTX (P_MENU_LEFT +20 + 32 + 2)

#define UICOMMON_TITLE_AREA_X       80
#define UICOMMON_TITLE_AREA_Y       (36)

#define UI_EMIL_DISPLAY_W  94
#define UI_EMIL_DISPLAY_H  57
#define UI_EMIL_DISPLAY_X  155
#define UI_EMIL_DISPLAY_Y  36

#define UI_LOCKPRG_DISPLAY_W  250
#define UI_LOCKPRG_DISPLAY_H  57
#define UI_LOCKPRG_DISPLAY_X  220
#define UI_LOCKPRG_DISPLAY_Y  76

#define UI_CLOCK_DISPLAY_W  40
#define UI_CLOCK_DISPLAY_H  40
#define UI_CLOCK_DISPLAY_X  616
#define UI_CLOCK_DISPLAY_Y  96

#define UI_MUTE_WIDTH  60
#define UI_MUTE_HEIGHT  50

#define UI_MUTE_DISPLAY_X  50 //静音图标位置
#define UI_MUTE_DISPLAY_Y  (170)
#define UI_MUTE_DISPLAY_W_NOBMP  (75)

#define UI_MSGBG_WIDTH 300
#define UI_MSGBG_HEIGH 142

#define UI_ICON_Y 670 //底部提示图标的y坐标
#define UI_ICON_TEXT_MARGIN 5 //图标与文字的距离
#define UI_DLG_OFFSET_Y 105 //对话框居中向上的偏移位置

#define m_OsdHeight 44
#define m_OsdMovStep 2
#define m_OsdStatX 30
#define m_OsdStatTopY 30
#define m_OsdStatBottomY (OSD_REGINMAXHEIGHT - m_OsdHeight - m_OsdStatTopY)
#define m_OsdWidth (OSD_REGINMAXWIDHT - 2*m_OsdStatX)
#define m_SuperFingerStartTopY   (m_OsdStatTopY + m_OsdHeight + 5)

#define MSG_BOX_WIDTH      460
#define MSG_BOX_HEIGHT     140  



#define OSD_BUFFER_SIZE 250

#define INPUT_PROGRAM_NUMBER_WIDTH 180
#define INPUT_PROGRAM_NUMBER_HEIGHT 70
#define INPUT_PROGRAM_NUMBER_X  (10)
#define INPUT_PROGRAM_NUMBER_Y  90

//------------------------------ debug --------------------------------------//
#if 0
#define MLUI_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLUI_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLUI_ERR(fmt, args...)  {}
#define MLUI_DEBUG(fmt, args...) {}
#endif
//------------------------------- end  --------------------------------------//


enum
{
    m_Off,
    m_Mon,
    m_Tue,
    m_Wed,
    m_Thu,
    m_Fri,
    m_Sat,
    m_Sun,
    m_Event,
    m_Poweron,
    m_Poweroff
};

enum 
{
    AUTO_STARTUP,
    AUTO_POWEROFF,
    AUTO_RESERVED
};


enum 
{
    TIMER_EVENT_POWERON,
    TIMER_EVENT_POWEROFF,
    TIMER_EVENT_RERERVE_GET,
    TIMER_EVENT_CHANGE_CHANNEL   
};




enum 
{
    SWITCH_CHANNEL_TIMER,
    EPG_TIMER
};



enum
{
    MUTE_STATE_MSG = 0,
    CA_DTVIA_EMAIL_MSG,
    BOOK_CLOCK_MSG,
    MAX_ALARM_MSG
};
enum 
{
    POSITION_ADJUST_H_LEFT_V_TOP,	/*水平向方居左，垂直方向居上*/
	POSITION_ADJUST_H_LEFT_V_MID,	/*水平向方居左，垂直方向居中*/
	POSITION_ADJUST_H_MID_V_MID,	/*水平向方居中，垂直方向居中*/
};


typedef enum
{
    m_NoTV,
    m_NoSignal
}MMT_DLG; 


typedef enum
{
    m_CASEcmMsg,
    m_CASMsg,
    m_TunerMsg,
    m_UsbMsg,
    m_DbsMsg,
    m_AVDrvMsg,
}E_UI_PromptType; 



enum
{
    PLAY_IDEL,
    PLAY_ADPRG,
    PLAY_NVODPRG,
    PLAY_NOMALPRG,
    PLAY_URGENCYPRG
};

typedef enum _m_uiChListType_e
{
    MM_UI_CHNLIST_ALLCHANNLE = 0,
    MM_UI_CHNLIST_HDCHANNLE = 1,
    MM_UI_CHNLIST_BATCHANNLE = 2,
    MM_UI_CHNLIST_MAX
} MMT_ChListType_E;



typedef union
{
	struct
	{
		MBT_U32 	uCurState : 1;            /*用来表示当前的某种物理状态，比如tuner是否锁定，是否处于静音等*/
		MBT_U32 	uBoxDisplayed : 1;    /*用来表示当前与uCurState相对应的提示框是否已经显示*/
		MBT_U32 	uReserveded : 30;    /*用来表示当前与uCurState相对应的提示框是否已经显示*/
	}ucBit;
	MBT_U32 uBoxStatus;
}UI_MSGBARCTR ;

typedef struct prompt_list_t
{
    MBT_U8 u8DisplaySign;
    MBT_U8 u8PRILevel;
    MBT_U16 u16EcmPid;
    MBT_U32  i32PromptType;
    E_UI_PromptType ePromptType;
    MBT_CHAR *pacMsg;
    struct prompt_list_t *pstNext;
} PROMPT_LIST;  


//#define UIAPP_DEBUG(x)   MLMF_Print x
#define UIAPP_DEBUG(x) 



extern MBT_U8 uiv_u8Language ;
extern MET_PTI_PID_T uiv_stCaPassedEcmPid ;
extern UI_MSGBARCTR   uiv_stMsgBar[MAX_ALARM_MSG];

/////////////////////////////////////// bitmap /////////////////////////////////////
extern CHANNEL_EDIT *uiv_pstPrgEditList;
extern UI_PRGLIST uiv_PrgList;

#define m_GetUIPrg(x)  (MM_NULL == uiv_PrgList.pstPrgHead ? MM_NULL: uiv_PrgList.pstPrgHead + uiv_pstPrgEditList[x].uProgramIndex )


extern MBT_U8 uif_GetMenuState(MBT_VOID);
extern MBT_U8 uif_CancelSpecifyEcmPrompt(MBT_U16 u16EcmPid);
extern MBT_U8 uif_PlayBookedPrg(MBT_BOOL * pbRefresh);
extern MBT_U8 uif_GetBookedPlayFlag(MBT_VOID);
extern MBT_U8 uif_GetManulFeedMenuState(MBT_VOID);
extern MBT_U8 uif_IsPlayProcess(MBT_VOID);
extern MBT_VOID uif_SetBookedFlag(MBT_BOOL bFlag);
extern MBT_BOOL uif_GetBookedFlag(MBT_VOID);
extern MBT_U32 uif_GetBookedPlayDuration(MBT_VOID);
extern MBT_S32 uif_bookingLockScreem(MBT_S32 iPara);
extern MBT_S32 uif_NumberKeyChange(MBT_S32 iKey);
extern MBT_S32 uif_CAMGetCaMsg(MBT_S32 sMsgType, MBT_S32 iExtern1, MBT_S32 iExtern2);
extern MBT_S32 uif_NVODMenu(MBT_S32 iPara);
extern MBT_U8 uif_GetBookedPlayRecordFlag(MBT_VOID);
extern MBT_VOID uif_DelPlayTimer(MBT_VOID);
extern MBT_VOID uif_ShareDrawGameCommonPanel(MBT_VOID);
extern MBT_VOID *uif_ForceMalloc(MBT_U32 uMenmSize);
extern MBT_VOID uif_TriggerPlay(MBT_U8 u8Play, MBT_U32 u32Trans, MBT_U16 u16ServiceID, MBT_U32 secondsDuration, MBT_U8 bRecord);
extern MBT_VOID uif_SetMenuFlag(MBT_U8 u8MenuState);
extern MBT_VOID uif_ShareDrawCommonPanel(MBT_CHAR *ptrTitle, BITMAPTRUECOLOR *pstFramBmpTemp, MBT_BOOL isNeedToShowTime);
extern MBT_VOID uif_ShareDrawSetPageFouce(MBT_S32 x, MBT_S32 y, MBT_CHAR *ptrTitle1, MBT_CHAR *ptrTitle2, MBT_BOOL bShowArrow, MBT_BOOL bArrowLargeSpace);
extern MBT_VOID uif_CAMResetAllPromptDisplaySign(MBT_VOID);
extern MBT_VOID uif_SetBookedPlayFlag(MBT_U8 u8PlayFlag);
extern MBT_VOID uif_GetEventStartEndTime(MBT_U8 *puStartTime,MBT_U8 *puDuration,TIMER_M* pStartTimer, TIMER_M* pEndTimer );
extern MBT_VOID uif_Draw3DProtrudeFrame( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height );
extern MBT_VOID uif_ShareSetSecondTitle(MBT_S32 x,MBT_S32 y,MBT_S32 s32TitleWidth,MBT_S32 s32TitleHeight,MBT_CHAR * pTitle,MBT_U32 u32FontColor);
extern MBT_VOID uif_ShareDrawCombinHBar( MBT_S32 x, MBT_S32 y, MBT_S32 width,BITMAPTRUECOLOR *pFirstBmp,BITMAPTRUECOLOR *pMidBmp,BITMAPTRUECOLOR *pLastBmp);
extern MBT_VOID uif_ShareFillRectWithBmp( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height, BITMAPTRUECOLOR *pBmp);
extern MBT_VOID uif_CACardMsgCheckResult(MBT_U32 usResult);
extern MBT_VOID uif_ShareDrawFilledBoxWith4CircleCorner(MBT_S32 iStartX, MBT_S32 iStartY, MBT_S32 iWidth, MBT_S32 iHeight, MBT_S32 iRadius, MBT_U32 iColor);
extern MBT_VOID uif_DrawProgress(MBT_S32 x, MBT_S32 y, MENU_PROGRESS_TYPE me_ProgressType, MBT_U32 me_ProgressRate, MBT_S32 me_TotalLen,MBT_S32 iTotalStep);
extern MBT_VOID uif_SetTimer(EPG_TIMER_M * pstEpgTimer, TIMER_M * pstTriggerTimer);
extern MBT_VOID uif_DrawChannel(MBT_VOID);
extern MBT_VOID uif_AdjustGlobalVolume(MBT_U32 key);
extern MBT_VOID uif_DestroyUIPrgArray(MBT_VOID);
extern MBT_VOID uif_SetLockServiceInfo(MBT_VOID *pData);
extern MBT_VOID uif_ShowCaProcess( MBT_S32 iMark);
extern MBT_VOID uif_PlayLockService(MBT_VOID);
extern MBT_VOID uif_UnPlayLockService(MBT_VOID);
extern MBT_VOID uif_DrawRightArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor);
extern MBT_VOID uif_DrawLeftArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor);
extern MBT_VOID uif_DrawUpArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor);
extern MBT_VOID uif_DrawDownArrow(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iColor);
extern MBT_VOID uif_ForceInputPWD(MBT_VOID);
extern MBT_VOID uif_StartUpConfirm(MBT_VOID);
extern MBT_VOID uif_PwdErrorDlg(MBT_U32 u32Error);
extern MBT_VOID uif_ShareDisplayResultDlg( MBT_CHAR* pMsgTitle, MBT_CHAR* pMsg, MBT_U32 u8DisappearTime );
extern MBT_VOID uif_InitOSDParas(MBT_VOID);
extern MBT_VOID uif_InitMenuResource(MBT_VOID);
extern MBT_VOID uif_SetupUI(MBT_VOID);
extern MBT_VOID uif_GetDbsMsg(MBT_S32  iCmd,MBT_VOID *pMsgData,MBT_S32 iMsgDatLen);
extern MBT_VOID uif_RemoveTimerFile(MBT_VOID);
extern MBT_VOID uif_SetTimer2File(EPG_TIMER_M * pEpgTimer, TIMER_M * pTimer);
extern MBT_VOID uif_GetTimerFromFile(EPG_TIMER_M * pEpgTimer, TIMER_M * pTimer);
extern MBT_VOID uif_SetVtgAspectRatio(MBT_S32 iAspectRatioKey);
extern MBT_VOID uif_CAMDispIppvInfo(MBT_S32 iKey);
extern MBT_VOID uif_SetAutoVtgAspectInfo(MBT_S32 iVtgAspectMode);
extern MBT_VOID uif_DrawExtTxtAtMid(MBT_CHAR *pString,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_U32 u32FontColor);
extern MBT_VOID uif_DrawTxtAtMid(MBT_CHAR *pString,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight,MBT_U32 u32FontColor);
extern MBT_VOID uif_FactoryReset (MBT_VOID);
extern MBT_VOID uif_ForceFactoryReset(MBT_VOID);
extern MBT_VOID uif_DisplayTimeOnCaptionBMP( MBT_S32 s32YPosition );
extern MBT_VOID uif_CAStopEntitleCheckTask(MBT_VOID);
extern MBT_VOID uif_CAStartEntitleCheckTask(MBT_VOID);

extern MBT_BOOL uif_CheckEntitleExpire(MBT_VOID);
extern MBT_BOOL uif_CAMHideEmailItem(MBT_VOID);
extern MBT_BOOL uif_CAMDisplayEmailItem(MBT_VOID);
extern MBT_BOOL uif_CAMCancelSpecifyTypePrompt(MBT_S32 i32PromptType);
extern MBT_BOOL uif_PlayNewPosPrg(MBT_S32 iNewProNo, MBT_U16 u6ServiceID);
extern MBT_BOOL uif_PutEPGTimer(EPG_TIMER_M * pCurrSelectEPGInfo, EPG_TIMER_M * tTempTimeSet);
extern MBT_BOOL uif_TVRadioExchange(MBT_BOOL * pbRefresh);
extern MBT_BOOL uif_ShareAutoChangePNTVMode(MBT_S32 iTVSysMsg);
extern MBT_BOOL uif_PermitPlayLockPrg(UI_PRG * pstUIPrgInfo);
extern MBT_BOOL uif_ShareIsKeyPressed( MBT_S32 iKey );
extern MBT_BOOL uif_WhetherCurPrg(UI_PRG * pstProgInfo);
extern MBT_BOOL uif_ForceFree(MBT_VOID *ptr);
extern MBT_BOOL uif_AlarmMsgBoxes(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight);
extern MBT_BOOL uif_ShowMsgList(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight);
extern MBT_BOOL uif_CAMShowEmailLessMem(MBT_VOID);
extern MBT_BOOL uif_SetMuteAndDrawICO(MBT_U8 uSet);
extern MBT_BOOL uif_ShowTopScreenICO(MBT_VOID);
extern MBT_BOOL uif_PrgRecall( MBT_VOID );
extern MBT_BOOL uif_ChnListPlayPrg(DBST_PROG * pstServiceInfo);
extern MBT_BOOL uif_ResetAlarmMsgFlag(MBT_VOID);
extern MBT_BOOL uif_CAMHideFingerPrint(MBT_VOID);
extern MBT_BOOL uif_CAMShowFingerPrint(MBT_VOID);
extern MBT_BOOL uif_CAMDisplayCDCASuperFinger(MBT_VOID);
extern MBT_BOOL uif_CAMFingerSuperRandom(MBT_VOID);
extern MBT_BOOL uif_CAMFingerSuperBlinkShow(MBT_VOID);
extern MBT_BOOL uif_CAMFingerSuperBlinkHide(MBT_VOID);
extern MBT_BOOL uif_CAMFingerSuperUnvisibleShow(MBT_VOID);
extern MBT_BOOL uif_CAMShowBottomOsd(MBT_VOID);
extern MBT_BOOL uif_CAMShowTopOsd(MBT_VOID);
extern MBT_BOOL uif_CAMDisplayCDCASuperOSD(MBT_VOID);
extern MBT_BOOL uif_CAMDisplayCDCAOSD(MBT_U8 u8OSDType);
extern MBT_BOOL uif_CAMClearSuperOSD(MBT_VOID);
extern MBT_BOOL uif_CAMClearOSD(MBT_U8 u8OSDType);
extern MBT_BOOL uif_CAMClearSuperFinger(MBT_VOID);
extern MBT_BOOL uif_FlushFingerPrint(MBT_VOID);
extern MBT_BOOL uif_DisplayTimeOnCaptionStr( MBT_BOOL bRedraw , MBT_S32 s32YPosition);
/*返回其宽度*/
extern MBT_S32 uif_GetDayOfWeekStr(TIMER_M stTime, MBT_CHAR * pcBuffer);
extern MBT_S32 uif_DeskTop(MBT_S32 iFirst);
extern MBT_S32 uif_ChannelSet(MBT_S32 iPara);
extern MBT_S32 uif_Tuner_LoopoutMenu( MBT_S32 bExitAuto);
extern MBT_S32 uif_Lcn_OnOff_Menu( MBT_S32 bExitAuto);
extern MBT_S32 uif_Parental_GuidanceMenu( MBT_S32 bExitAuto);
extern MBT_S32 uif_UsbUpgrade(MBT_S32 iPara);
extern MBT_S32 uif_UsbMain(MBT_S32 iPara);
extern MBT_S32 uif_UsbBroswer(MBT_S32 iPara);
extern MBT_S32 uif_QuickKey(MBT_S32 iKey);
extern MBT_S32 uif_XDayOfWeek(MBT_S32 y, MBT_S32 m, MBT_S32 d) ;
extern MBT_S32 uif_SharePwdCheckDlg(MBT_U32 u32StoredPwd,MBT_BOOL bPinPwd);
extern MBT_S32 uif_ReadKey ( MBT_U32 tclkWaitTime );
extern MBT_S32 uif_PlayPrg(UI_PRG * pstProgInfo);
extern MBT_S32 uif_SavePrgToBoxInfo(DBST_PROG * pstProInfo);
extern MBT_S32 uif_EPGMenu(MBT_S32 iPara);
extern MBT_S32 uif_ShortMsg(MBT_S32 iPara);
extern MBT_S32 uif_OtaUpgrade(MBT_S32 iPara);
extern MBT_S32 uif_CardInfo(MBT_S32 iPara);
extern MBT_S32 uif_ForceEmail(MBT_S32 iPara);
extern MBT_S32 uif_GetValideSubscribeNum(MBT_VOID);
extern MBT_S32 uif_ChannelProgramList(MBT_S32 iChnType);
extern MBT_S32 uif_ChnFavEditList(MBT_S32 iPara);
extern MBT_S32 uif_ChannelFavList(MBT_S32 iPara);
extern MBT_S32 uif_LanguageSetMenu( MBT_S32 bExitAuto );
extern MBT_S32 uif_AudioLanguageSetMenu(MBT_S32 bExitAuto);
extern MBT_S32 uif_AudioLanguageShortCut(MBT_S32 bExitAuto);
extern MBT_S32 uif_PasswordSettingMenu( MBT_S32 bExitAuto );
extern MBT_S32 uif_PrgEdit(MBT_S32 bExitAuto);
extern MBT_S32 uif_ChnInfoExt(MBT_S32 iPara);
extern MBT_S32 uif_STB_Information(MBT_S32 iPara);
#if NETWORK_LOCK
extern MBT_S32 uif_NetWorkLock(MBT_S32 iPara);
#endif
extern MBT_S32 uif_MainTPSet( MBT_S32 iPara );
extern MBT_S32 uif_CACardSlots(MBT_S32 iPara);
extern MBT_S32 uif_Card_Marry(MBT_S32 iPara);
extern MBT_S32 uif_Modify_Pin(MBT_S32 iPara);
extern MBT_S32 uif_Working_Time(MBT_S32 iPara);
extern MBT_S32 uif_CACardIPPVInfo(MBT_S32 iPara);
extern MBT_S32 uif_Subscribe(MBT_S32 iPara);
extern MBT_S32 uif_MainMenu(MBT_S32 bExitAuto);
extern MBT_S32 uif_GetFirstPlayProg(UI_PRG * pstPrgInfo);
extern MBT_S32 uif_CreateUIPrgArray(MBT_VOID);
extern MBT_S32 uif_GetPrgUpdateMsg(MBT_VOID);
extern MBT_S32 uif_GetDayInGregorianMonth(MBT_S32 y, MBT_S32 m) ;
extern MBT_S32 uif_XDayOfYear(MBT_S32 y, MBT_S32 m, MBT_S32 d) ;
/*返回字符串所占屏幕宽度*/
extern MBT_S32 uif_DrawColorKey(MBT_S32 x,MBT_S32 y,MBT_S32 iColor);
/*返回字符串所占屏幕宽度*/
extern MBT_S32 uif_CardSet( MBT_S32 iPara );
extern MBT_S32 uif_SrchPrg( MBT_S32 iPara );
extern MBT_S32 uif_SrchAntennaSetting( MBT_S32 iPara );
extern MBT_S32 uif_PowerMenu( MBT_S32 iPara );
extern MBT_S32 uif_AspectRatioMenu( MBT_S32 iPara );
extern MBT_S32 uif_ResolutionMenu( MBT_S32 iPara );
extern MBT_S32 uif_AVSettingMenu( MBT_S32 bExitAuto );
extern MBT_S32 uif_GameStage ( MBT_S32 iPara );
extern MBT_S32 Game_Gobang(MBT_S32 iPara);
extern MBT_S32 Game_Snake(MBT_S32 iPara);
extern MBT_S32 Game_Elosi(MBT_S32 iPara);
extern MBT_U32 uif_PrgPFKeyFunction(MBT_S32 ikeyvalue, MBT_U8 u8VideoAudioState, UI_PRG * pstProgInfo);
extern PROMPT_LIST *uif_CAMPutNewPrompt(stPrompt i32PromptType,E_UI_PromptType ePromptType,MBT_U16 u16EcmPid);
extern PROMPT_LIST *uif_CAMPopUpPromptNode(MBT_VOID);
extern PROMPT_LIST *uif_DetectVidioState(MBT_BOOL *bClsScrn);
extern MMT_STB_ErrorCode_E uif_InitGraphicsRegions(MBT_U8 u8VideoMode);
extern MBT_BOOL uif_ShareEpgTimerTriggerSelectDlg(MBT_U32 *pu32LeftTime,MBT_U8 dlgType);
extern MBT_BOOL uif_ShareMakeSelectDlg(MBT_CHAR * pMsgTitle,MBT_CHAR * pMsg,MBT_BOOL bExitAuto);
extern MBT_BOOL uif_ShareMakeSelectForUsbUpgradeDlg( MBT_CHAR* pMsgTitle, MBT_CHAR* pMsg,MBT_BOOL bExitAuto);
extern MBT_BOOL uif_ShareMakeSelectDlgNoTitle(MBT_CHAR * pMsg,MBT_BOOL bExitAuto);
extern MBT_BOOL uif_ShareMakeSelectDlgDynamicContent(MBT_CHAR* title,MBT_CHAR* pMsg,MBT_CHAR* buttonLeft,MBT_CHAR* buttonRight,MBT_BOOL bExitAuto);
extern MBT_VOID uif_ShareReboot(MBT_VOID);
extern MBT_VOID uif_ShareStandby(MBT_VOID);
extern MBT_VOID uif_ShareFakeWakeup(MBT_VOID);
extern MBT_VOID uif_DrawFocusArrawBar(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XArrawOffset);
extern MBT_VOID uif_DrawFocusArrawBarForBookManage(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XSIOffset1,MBT_S32 s32SIWidth1,MBT_S32 s32XSIOffset2,MBT_S32 s32SIWidth2);
extern MBT_VOID uif_DrawUnfocusArrawBar(MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 s32XArrawOffset);
extern MBT_VOID uif_BookPrgPlayCall(MBT_U32 u32Para[]);
extern MBT_VOID uif_DrawMsgBgPanel(MBT_S32 x,MBT_S32 y,MBT_CHAR *pStrTitle);
extern MBT_VOID uif_DrawMsgBgTextVerPanel(MBT_S32 x,MBT_S32 y,MBT_CHAR *pStrTitle);
extern MBT_BOOL uif_HideClockItem(MBT_VOID);
extern MBT_BOOL uif_DisplayClockItem(MBT_VOID);
extern MBT_VOID UIF_PlayAudioIframe(MBT_VOID);
extern MBT_VOID UIF_StopAudioIframe(MBT_VOID);
extern MBT_BOOL UIF_GetPlayAudioIframeStatus(MBT_VOID);
extern MBT_BOOL UIF_ShowWaterLogoPNG(MBT_S32 s32ScrX,MBT_S32 s32ScrY);
extern MBT_BOOL UIF_HideWaterLogoPNG(MBT_S32 s32ScrX,MBT_S32 s32ScrY);
extern MBT_S32 uif_CACardEntile(MBT_S32 iPara);
extern MBT_S32 uif_CACardDeEntitle(MBT_S32 iPara);
#if(OVT_FAC_MODE == 1)
extern MBT_S32  uif_AgingTest( MBT_S32 iPara );
extern MBT_S32  uif_FacMainTest( MBT_S32 iPara );
#endif
extern MBT_S32 uif_Pvr(MBT_S32 iPara);
extern MBT_S32 uif_PvrConfig(MBT_S32 iPara);
extern MBT_S32 uif_RecordDevice(MBT_S32 iPara);
extern MBT_S32 uif_Format(MBT_S32 iPara);
extern MBT_S32 uif_PVRRecord(MBT_S32 iPara);
extern MBT_S32 uif_Timeshift(MBT_S32 iPara);
extern MBT_BOOL Pvr_RecordStart(void);
extern void Pvr_RecordStop(void);
extern MBT_VOID UIF_SetAddMainMenuFlag(MBT_BOOL bflag);
extern MBT_BOOL UIF_GetAddMainMenuFlag(MBT_VOID);
extern MMT_BLAST_Status_E uif_GetKeyStatus(MBT_VOID);
extern MBT_VOID uif_DisplayWaterMark(MBT_VOID);
extern MBT_VOID uif_ClearWaterMark(MBT_VOID);
extern MBT_BOOL uif_JudgeWaterMarkPositionToShowFinger(MBT_S32 s32fx, MBT_S32 s32fy, MBT_S32 s32fw, MBT_S32 s32fh);
#endif
