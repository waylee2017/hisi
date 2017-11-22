/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#ifndef __UPDATE_OSD_H__
#define __UPDATE_OSD_H__

#include "download_ota.h"
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_4 */
/** @{ */  /** <!-- [UI display data structure] */

typedef enum tagLOADER_Content_E
{
    //0-4
    LOADER_CONTENT_MAN_UPGRD,
    LOADER_CONTENT_PROMPT_UPGRD_PWD1,
    LOADER_CONTENT_PROMPT_UPGRD_PWD2,
    LOADER_CONTENT_INPUT_PWD,
    LOADER_CONTENT_PROMPT_NOT_OP1,

    //5-9
    LOADER_CONTENT_PROMPT_NOT_OP2,
    LOADER_CONTENT_PROMPT_NOT_OP3,
    LOADER_CONTENT_BUTTON_CONFIRM,
    LOADER_CONTENT_BUTTON_CANCLE,
    LOADER_CONTENT_PROMPT_OPRTN,

    //10-14
    LOADER_CONTENT_TITLE_FREQ,
    LOADER_CONTENT_TITLE_SYM_RATE,
    LOADER_CONTENT_TITLE_MODULATE,
    LOADER_CONTENT_TITLE_PID,
    LOADER_CONTENT_TITLE_AUTO,

    //15-19
    LOADER_CONTENT_BUTTON_START,
    LOADER_CONTENT_TRANS_YES,
    LOADER_CONTENT_TRANS_NO,
    LOADER_CONTENT_TRANS_EXIT,
    LOADER_CONTENT_PROMPT_POWER1,

    //20-24
    LOADER_CONTENT_PROMPT_POWER2,
    LOADER_CONTENT_PROMPT_SEARCH,
    LOADER_CONTENT_NT_CUR_PRGRSS,
    LOADER_CONTENT_NT_TTL_PRGRSS,
    LOADER_CONTENT_PT_UPGRADING,

    //25-29
    LOADER_CONTENT_FAIL_SIG_EXPT,
    LOADER_CONTENT_FAIL_FACTORY,
    LOADER_CONTENT_FAIL_HARD_VER,
    LOADER_CONTENT_FAIL_SOFT_VER,
    LOADER_CONTENT_FAIL_SN_DISMATCH,

    //30-34
    LOADER_CONTENT_FAIL_FILE_RNG,
    LOADER_CONTENT_FAIL_CRC,
    LOADER_CONTENT_FAIL_DOWNLOAD_TIMEOUT,
    LOADER_CONTENT_FAIL_DOWNLOAD,
    LOADER_CONTENT_FAIL_DATA,

    //35-39
    LOADER_CONTENT_FAIL_FREQUENCY,
    LOADER_CONTENT_FAIL_SYMBOL,
    LOADER_CONTENT_FAIL_PID,
    LOADER_CONTENT_FAIL_MODUL,
    LOADER_CONTENT_PT_DOWNLOADING,

    //40-44
    LOADER_CONTENT_PT_WRITING,
    LOADER_CONTENT_PT_SUCC,
    LOADER_CONTENT_IP_NOT_FIND_FILE,
    LOADER_CONTENT_SET_IP_ERR,
    LOADER_CONTENT_FAIL_NET_EXPT,

    //45-49
    LOADER_CONTENT_FAIL_NET_TIMEOUT,
    LOADER_CONTENT_FAIL_NO_RESP,
    LOADER_CONTENT_FAIL_FILE_LEN,
    LOADER_CONTENT_DWNLD_WTING,
    LOADER_CONTENT_FAIL_UPGRD,

    //50-54
    LOADER_CONTENT_DWNLD_PROGRESS,
    LOADER_CONTENT_BURN_PROGRESS,
    LOADER_CONTENT_UPGRADING,
    LOADER_CONTENT_NOT_FIND_USB_FILE,
    LOADER_CONTENT_REBOOT,

    //55-
    LOADER_CONTENT_WARNING,
    LOADER_CONTENT_INFO,

    LOADER_CONTENT_MAX
} LOADER_Content_E;

//below is chinese cotent
//0-4
#define UPGRD_L_CN_MAN_UPGRD "手动升级"
#define UPGRD_L_CN_PROMPT_UPGRD_PWD1 "请输入系统升级权限密码 "
#define UPGRD_L_CN_PROMPT_UPGRD_PWD2 ""
#define UPGRD_L_CN_INPUT_PWD "输入密码"
#define UPGRD_L_CN_PROMPT_NOT_OP1 ""

//5-9
#define UPGRD_L_CN_PROMPT_NOT_OP2 "   请出现此界面的用户不要进行任何操作并"
#define UPGRD_L_CN_PROMPT_NOT_OP3 "   及时与运营商联系客服电话:3928888"
#define UPGRD_L_CN_BUTTON_CONFIRM "  确定  "
#define UPGRD_L_CN_BUTTON_CANCLE "  取消  "
#define UPGRD_L_CN_PROMPT_OPRTN "      操作提示:按退出键继续启动应用"

//10-14
#define UPGRD_L_CN_TITLE_FREQ " 下载频点(MHz)  "
#define UPGRD_L_CN_TITLE_SYM_RATE " 符号率(KS/s)  "
#define UPGRD_L_CN_TITLE_MODULATE " 调制方式:      "
#define UPGRD_L_CN_TITLE_PID " 升级PID    "
#define UPGRD_L_CN_TITLE_AUTO " 主动下载"

//15-19
#define UPGRD_L_CN_BUTTON_START " 开始 "
#define UPGRD_L_CN_TRANS_YES "  是   "
#define UPGRD_L_CN_TRANS_NO "  否   "
#define UPGRD_L_CN_TRANS_EXIT " 退出 "
#define UPGRD_L_CN_PROMPT_POWER1 "升级过程中请勿断电,请稍候..."

//20-24
#define UPGRD_L_CN_PROMPT_POWER2 ""
#define UPGRD_L_CN_PROMPT_SEARCH "正在搜索数据  "
#define UPGRD_L_CN_NT_CUR_PRGRSS "当前进度"
#define UPGRD_L_CN_NT_TTL_PRGRSS "总进度"
#define UPGRD_L_CN_PT_UPGRADING "升级过程中请勿断电,请稍候..."

//25-29
#define UPGRD_L_CN_FAIL_SIG_EXPT "   信号异常    "
#define UPGRD_L_CN_FAIL_FACTORY "   厂商标志不匹配"
#define UPGRD_L_CN_FAIL_HARD_VER "   硬件版本不匹配"
#define UPGRD_L_CN_FAIL_SOFT_VER "   软件版本不匹配"
#define UPGRD_L_CN_FAIL_SN_DISMATCH "  系列号不匹配"

//30-34
#define UPGRD_L_CN_FAIL_FILE_RNG "   文件范围出错"
#define UPGRD_L_CN_FAIL_CRC "   CRC出错"
#define UPGRD_L_CN_FAIL_DOWNLOAD_TIMEOUT "下载数据超时"
#define UPGRD_L_CN_FAIL_DOWNLOAD "   下载数据出错"
#define UPGRD_L_CN_FAIL_DATA "   数据无效"

//35-39
#define UPGRD_L_CN_FAIL_FREQUENCY "   频点设置错误！"
#define UPGRD_L_CN_FAIL_SYMBOL "    Symbol rate设置错误！"
#define UPGRD_L_CN_FAIL_PID "    PID设置错误！"
#define UPGRD_L_CN_FAIL_MODUL "    modulation设置错误！"
#define UPGRD_L_CN_PT_DOWNLOADING "正在下载数据  "

//40-44
#define UPGRD_L_CN_PT_WRITING "正在更新数据  "
#define UPGRD_L_CN_PT_SUCC "升级成功  "
#define UPGRD_L_CN_IP_NOT_FIND_FILE "   没有找到升级文件！"
#define UPGRD_L_CN_SET_IP_ERR "   配置IP失败"
#define UPGRD_L_CN_FAIL_NET_EXPT "   网络异常"

//45-49
#define UPGRD_L_CN_FAIL_NET_TIMEOUT "  网络超时"
#define UPGRD_L_CN_FAIL_NO_RESP "   连接服务器失败"
#define UPGRD_L_CN_FAIL_FILE_LEN "   下载失败:文件长度不匹配"
#define UPGRD_L_CN_DWNLD_WTING "正在下载数据中请勿断电,请稍候..."
#define UPGRD_L_CN_FAIL_UPGRD " 警告！"

//50-54
#define UPGRD_L_CN_DWNLD_PROGRESS "下载进度"
#define UPGRD_L_CN_BURN_PROGRESS "烧写进度"
#define UPGRD_L_CN_UPGRADING "正在升级"
#define UPGRD_L_CN_NOT_FIND_USB_FILE "没有找到USB或升级文件"
#define UPGRD_L_CN_REBOOT "请重启机顶盒!"

//55-
#define UPGRD_L_CN_WARNING "警告!"
#define UPGRD_L_CN_INFO "提示:"

////below is english cotent
//0-4
#define UPGRD_L_EN_MAN_UPGRD "Manual Upgrade"
#define UPGRD_L_EN_PROMPT_UPGRD_PWD1 "Enter password for obtaining"
#define UPGRD_L_EN_PROMPT_UPGRD_PWD2 "system upgrade permission."
#define UPGRD_L_EN_INPUT_PWD "Password: "
#define UPGRD_L_EN_PROMPT_NOT_OP1 "Do not perform any operation when"

//5-9
#define UPGRD_L_EN_PROMPT_NOT_OP2 "this page appears. Contact the"
#define UPGRD_L_EN_PROMPT_NOT_OP3 "operator by calling 3928888."
#define UPGRD_L_EN_BUTTON_CONFIRM "Confirm"
#define UPGRD_L_EN_BUTTON_CANCLE " Cancel "
#define UPGRD_L_EN_PROMPT_OPRTN "Tip: Press BACK to restart."

//10-14
#define UPGRD_L_EN_TITLE_FREQ "Frequency (MHz)  "
#define UPGRD_L_EN_TITLE_SYM_RATE "Symbol rate (KS/s)  "
#define UPGRD_L_EN_TITLE_MODULATE "Modulation:      "
#define UPGRD_L_EN_TITLE_PID "PID    "
#define UPGRD_L_EN_TITLE_AUTO "Auto download"

//15-19
#define UPGRD_L_EN_BUTTON_START "Start "
#define UPGRD_L_EN_TRANS_YES " Yes  "
#define UPGRD_L_EN_TRANS_NO "  No  "
#define UPGRD_L_EN_TRANS_EXIT " Exit  "
#define UPGRD_L_EN_PROMPT_POWER1 "Do not power off the STB "

//20-24
#define UPGRD_L_EN_PROMPT_POWER2 "during upgrade. Waiting..."
#define UPGRD_L_EN_PROMPT_SEARCH "Searching"
#define UPGRD_L_EN_NT_CUR_PRGRSS "Current progress"
#define UPGRD_L_EN_NT_TTL_PRGRSS "Total progress"
#define UPGRD_L_EN_PT_UPGRADING "Do not power off. Waiting..."

//25-29
#define UPGRD_L_EN_FAIL_SIG_EXPT "Signal exception."
#define UPGRD_L_EN_FAIL_FACTORY "Invalid factory ID."
#define UPGRD_L_EN_FAIL_HARD_VER "Invalid hardware ver."
#define UPGRD_L_EN_FAIL_SOFT_VER "Invalid software ver."
#define UPGRD_L_EN_FAIL_SN_DISMATCH "Invalid serial num."

//30-34
#define UPGRD_L_EN_FAIL_FILE_RNG "File is too large."
#define UPGRD_L_EN_FAIL_CRC "CRC error."
#define UPGRD_L_EN_FAIL_DOWNLOAD_TIMEOUT "Download data timeout."
#define UPGRD_L_EN_FAIL_DOWNLOAD "Error when downloading."
#define UPGRD_L_EN_FAIL_DATA "Invalid data."

//35-39
#define UPGRD_L_EN_FAIL_FREQUENCY "Invalid frequency."
#define UPGRD_L_EN_FAIL_SYMBOL "Invalid symbol rate."
#define UPGRD_L_EN_FAIL_PID "Invalid PID."
#define UPGRD_L_EN_FAIL_MODUL "Invalid modulation."
#define UPGRD_L_EN_PT_DOWNLOADING "Downloading"

//40-44
#define UPGRD_L_EN_PT_WRITING "Writing to flash"
#define UPGRD_L_EN_PT_SUCC "Upgrade succeeded"
#define UPGRD_L_EN_IP_NOT_FIND_FILE "Can't find upgrade file on server!"
#define UPGRD_L_EN_SET_IP_ERR "Config IP Failed."
#define UPGRD_L_EN_FAIL_NET_EXPT "Network exception."

//45-49
#define UPGRD_L_EN_FAIL_NET_TIMEOUT "Network timeout."
#define UPGRD_L_EN_FAIL_NO_RESP "Connect Server failed."
#define UPGRD_L_EN_FAIL_FILE_LEN "Invalid length of file."
#define UPGRD_L_EN_DWNLD_WTING "Downloading data, Waiting..."
#define UPGRD_L_EN_FAIL_UPGRD "Warning!"

//50-54
#define UPGRD_L_EN_DWNLD_PROGRESS "Download progress"
#define UPGRD_L_EN_BURN_PROGRESS "Burn progress"
#define UPGRD_L_EN_UPGRADING "Upgrading"
#define UPGRD_L_EN_NOT_FIND_USB_FILE "can not find upgrade file"
#define UPGRD_L_EN_REBOOT "Please reboot the machine!"

//55-
#define UPGRD_L_EN_WARNING "WARNING!"
#define UPGRD_L_EN_INFO "INFO"

/** Maximum width */
#define     APPOSD_MAX_HEIGHT_PAL 576

/** Maximum length */
#define        APPOSD_MAX_WIDTH_PAL 704

#define    GRPH_COLOR_MODE RGB5551

/**24 x 24 for Asian characters and 16 x 24 for numerical characters and letters */
#define GRPH_FONT_SIZE 24

#define CN_FONT_HEIGHT 24
#define CN_FONT_WIDTH  24

#define EN_FONT_HEIGHT 24
#define EN_FONT_WIDTH  13

/** Total number of Asian characters */
#define CHN_CHR_NUM 128 + 4 + 11 + 9 + 5 + 8   /* 添加烧写重机顶盒警告 */

//#define GET_COLOR(r, g, b) ((0x1 << 15) + ((r) << 10) + ((g) << 5) + (b))    /* ARGB16 */
#define GET_COLOR(r, g, b) (0xff000000 | (((r) << 16) & 0x00ff0000) | (((g) << 8) & 0x0000ff00) | (b & 0xff))

//#define GET_COLOR(b, g, r) ((0xff << 24) + ((r) << 19) + ((g) << 11) + (b<<3))
 #define APP_WIND_BGCOLOR GET_COLOR(72, 160, 248) //(77,120,200)
 #define APP_WIND_LCOLOR GET_COLOR(192, 240, 240)
 #define APP_BG_COLOR GET_COLOR(0, 0, 0) //(199,200,203)
 #define APP_WIND_BWIDTH 2
 #define APP_TXT_FONTCOLOR GET_COLOR(0, 6, 0)
 #define APP_TXT_BGCOLOR 0x80FAFA00 //GET_COLOR(248, 128, 0)
 #define APP_TXT_FONTCOLOR_F GET_COLOR(0, 255, 255)
 #define APP_TXT_BGCOLOR_F 0x80FAFA00
 #define APP_WIN_TXT_BGCOLOR GET_COLOR(120, 120, 248)
 #define APP_WIN_TXT_COLOR GET_COLOR(248, 248, 248)
 #define APP_PROGREE_BGCOLOR GET_COLOR(192, 192, 192)
 #define APP_WIN_TXT_RED GET_COLOR(0, 0, 248)
 #define BACK_COLOR 0xFF000000
 #define BLUE_COLOR 0xFF0000FA
 #define YELLOW_COLOR 0x80FAFA00

typedef struct hi_sPositionXY
{
    HI_S32 x;    /**< X axis*/
    HI_S32 y;    /**< Y axis*/
} sPositionXY;

typedef enum hi_eWindType
{
    APP_WIND_NOTES,     /**< Prompt window. For Digital Video Networks, a exclamation mark is added on the left.*/
    APP_WIND_INPUT      /**< A common window with a text box.*/
} eWindType;

typedef struct hi_sCode2Index
{
    unsigned short ChCode;        /* 汉字的GB2312码 */
    unsigned short Index;        /* GB2312码对应的字库查询索引 */
} sCode2Index;

typedef enum hi_eWMembType
{
    APP_WMEMB_INPUT,     /**< Text box*/
    APP_WMEMB_BUTTOM,    /**< Button*/
    APP_WMEMB_TRANS,     /**< Translation box*/
    APP_WMEMB_TRANS_2,
    APP_WMEMB_PASSWD,    /**< Password prompt*/
} eWMembType;

typedef struct hi_sWindMember
{
    HI_U32        hMembHandle; /**< To store the structure pointer as a window ID*/
    eWMembType    MembType;    /**< Window member type: message input or button*/
    HI_BOOL       IsOnFocus;   /**< Focus or not*/
    HI_BOOL       IsOnEdit;    /**<  Input status or not */
    sPositionXY   MembPos;     /**< Relative position in the window*/
    HI_CHAR *     pDefString;   /**< Input character, not modifiable for a non-text box*/
    HI_U8         TotalLen;    /**< Maximum characters length allowed, available for text boxes*/
    HI_U8         SubFocusIndex; /**< Current focus index (relative position of the input character string of the current member)*/
    CABLE_MOD_E   QamNumber;   /**<Quadrature amplitude modulation (QAM) mode*/
    HI_U32        u32Polar;
    HI_BOOL       bAuto;       /**<  Automatic download */
    struct hi_sWindMember *pNext; /**< Pointed to the next member*/
} sWindMember;

typedef struct hi_sWindow
{
    HI_U32       hWindHandle;   /**< To store the structure pointer as a window ID*/
    eWindType    WindType;      /**< Window type*/
    sPositionXY  WindPos;       /**< Position of a window in the region*/
    HI_S32       WindLength;    /**<Window width*/
    HI_S32       WindWidth;     /**<Window height*/
    HI_HANDLE    hMemSurface;   /**< Window picture buffer*/
    sPositionXY  FocusPos;      /**< Focus position of the current member (WindPos for members of inputting types)*/
    sWindMember *pMemberList;   /**< Member link table*/
} sWindow;

typedef struct tagNOTIFY_INFO_S
{
    HI_S32  s32StartX;
    HI_S32  s32StartY;
    HI_CHAR acInfo[64];
} NOTIFY_INFO_S;

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_5 */
/** @{ */  /** <!- [UI display function API]*/

//HI_S32 force_upgrade_cable_check(HI_VOID);

/**
 \brief To create an upgrade progress UI
 \attention \n
Background of two progress bars displayed during data download. The progress bars are not drawn.
 \param N/A
 \retval ::HI_SUCCESS  Success
 \retval ::HI_FAILURE  Failure
 \see ::sWindow\n
For details, see the definition in sWindow.
 */
HI_S32			Drv_CreatGuageWin(HI_VOID);

/**
 \brief Displaying the two progress bars during upgrade
 \attention \n
This API is used to show the data download progress
 \param[in] Progress percentages of two items
 \retval ::HI_SUCCESS  Success
 \retval ::HI_FAILURE  Failure
 \see \n
N/A
 */

HI_S32			Drv_ShowDoubleGuage(HI_U32 u32Percent1, HI_U32 u32Percent2);

HI_S32			Drv_DestroyGuageWin(HI_VOID);

//////////////////////////////////////
HI_S32			Drv_ShowText(HI_U32 WindHandle, LOADER_Content_E enContent, HI_S32 StartX, HI_S32 StartY,
                             HI_U32 FontColor);

HI_S32			Drv_ShowTextEx(HI_U32 WindHandle, const HI_CHAR *pCharBuffer, HI_S32 StartX, HI_S32 StartY,
                               HI_U32 FontColor);

/*--------------------------------*
*Role: to create a window
*input:WindPos -- The relative position of the window in the Region
        Length -- window length
        Width -- window width
        WindType -- window type
*output: N/A
*return: window handle or fail(-1)
*--------------------------------*/
HI_U32			WIN_CreateWind(sPositionXY WindPos, HI_U32 u32Widht, HI_U32 u32Height, eWindType WindType);

/*--------------------------------*
*Role: to create a window member (input box or button)
*input:WindHandle -- window handle
        MembType -- members type
        MembPos -- The relative position of members in the window
        DefString -- Enter the default of a member of the character (for the input box, which only supports digital input)
        MaxLength -- The maximum length of characters (a character that is occupied by two characters)
*output: N/A
*return: success(0) or fail(-1)
*--------------------------------*/
HI_U32			WIN_CreateWindMember(HI_U32 WindHandle, eWMembType MembType, sPositionXY MembPos,
                                     const HI_CHAR *DefString, HI_U8 MaxLength);

HI_S32			WIN_BuildAndPasteWind(HI_U32 WindHandle);

/**
 \brief Upgrading failure display UI
 \attention \n
All the contradictions during the upgrade are displayed, such as the hardware and software contradiction, vendor ID contradiction, frequency unlocking, or IP contradiction.
 \param[in] String.
 \retval ::HI_SUCCESS  Prompt display UI success
 \retval ::HI_FAILURE  Prompt display UI failure
 \see \n
N/A
 */
HI_S32			Drv_DownLoadFail(LOADER_Content_E enContent);

/**
 \brief Initializes UI display
 \attention \n
This API is used to enable the OSD interface
 \param N/A
 \retval ::HI_SUCCESS  Initialization success
 \retval ::HI_FAILURE  Initialization failure
 \see ::VO_OSD_REGION_S \n
For details, see the definition in VO_OSD_REGION_S.
 */
HI_S32			LOADER_OSD_Init(HI_VOID);

//HI_S32 Drv_CheckPara(VO_OSD_REGION_S *pRegion);
//HI_S32 Drv_WinDialogBox(HI_U8 *CharBuffer1, HI_U8 *CharBuffer2);

/**
 \brief UI clear function
 \attention \n
This API is used to clear the UI when no UI needs to be displayed.
 \param N/A
 \retval none
 \see  \n
N/A
 */

HI_VOID			Drv_OSDClear(HI_VOID);

/**
 \brief UI prompt function for download
 \attention \n
This API is used to display a message indicating the device is searching data,
downloading data, or updating data when performing a data download task.
 \param[in] String
 \retval none
 \see  \n
N/A
 */

HI_VOID			Drv_UpdateIndictorText(LOADER_Content_E enContent);

//UPGRD_MODE_E force_serial_upgrade_check(HI_VOID);

const HI_CHAR * LoaderOSDGetText(LOADER_Content_E enContent);

/*--------------------------------*
*Role: the display window
*Input: MembHandle - members of the handle
*output: N/A
*return: success(0) or fail(-1)
*--------------------------------*/
HI_S32			WIN_ShowWind(HI_U32 WindHandle);

HI_S32			WIN_DestroyWind(HI_U32 hWind);

HI_S32			LOADER_NotifyInfo(HI_HANDLE *hWin, HI_U32 u32InfoNum, NOTIFY_INFO_S *pstInfo);

/** @} */  /** <!-- ==== API declaration end ==== */
#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__UPDATE_OSD_H__*/
