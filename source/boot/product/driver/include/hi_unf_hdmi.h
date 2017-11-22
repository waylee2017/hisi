/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_unf_hdmi.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2016/06/16
  Description   :
  History       :
  Date          : 2016/06/16
  Author        : l00232354
  Modification  :
*******************************************************************************/
#ifndef  __HI_HDMI_H__
#define  __HI_HDMI_H__

#include "hi_type.h"
#include "hi_unf_disp.h"
#include "hi_boot_common.h"
#include "hi_type.h"
#include "exports.h"

#ifdef HI_HDMI_EDID_SUPPORT
#include "hi_unf_edid.h"
#include "hi_drv_pdm.h"
#endif


/******************************************************************************
 Marco defined
*******************************************************************************/
#ifdef HI_ADVCA_FUNCTION_RELEASE
#define COM_INFO(fmt...)
#define COM_WARN(fmt...)
#define COM_ERR(fmt...)
#define COM_FATAL(fmt...)
#else
#define COM_INFO(fmt...)    HI_INFO_BOOT(0, fmt)
#define COM_WARN(fmt...)    HI_INFO_BOOT(0, fmt)
#define COM_ERR(fmt...)     HI_INFO_BOOT(0, fmt)
#define COM_FATAL(fmt...)   HI_INFO_BOOT(0, fmt)
#endif


/******************************************************************************
 Enum defined
*******************************************************************************/
typedef enum hiUNF_HDMI_VIDEO_MODE
{
    HI_UNF_HDMI_VIDEO_MODE_RGB444, 
    HI_UNF_HDMI_VIDEO_MODE_YCBCR422,
    HI_UNF_HDMI_VIDEO_MODE_YCBCR444,        
    HI_UNF_HDMI_VIDEO_MODE_BUTT    
}HI_UNF_HDMI_VIDEO_MODE_E;

typedef enum hiHI_UNF_HDMI_COLORSPACE_E
{
    HDMI_COLORIMETRY_NO_DATA,
    HDMI_COLORIMETRY_ITU601,
    HDMI_COLORIMETRY_ITU709,
    HDMI_COLORIMETRY_EXTENDED,
    HDMI_COLORIMETRY_XVYCC_601,
    HDMI_COLORIMETRY_XVYCC_709,
}HI_UNF_HDMI_COLORSPACE_E;

typedef enum hiUNF_HDMI_ASPECT_RATIO_E
{
    HI_UNF_HDMI_ASPECT_RATIO_UNKNOWN,
    HI_UNF_HDMI_ASPECT_RATIO_4TO3,  
    HI_UNF_HDMI_ASPECT_RATIO_16TO9,
    HI_UNF_HDMI_ASPECT_RATIO_BUTT
}HI_UNF_HDMI_ASPECT_RATIO_E;

/*HDMI interface ID *//**CNcomment:HDMI接口ID  */
typedef enum hiUNF_HDMI_ID_E
{
    HI_UNF_HDMI_ID_0         = 0,          /*HDMI interface 0*/ /**CNcomment:< HDMI接口0 */
    HI_UNF_HDMI_ID_BUTT
} HI_UNF_HDMI_ID_E;

/*HDMI contain output mode enum */
/**CNcomment: HDMI牵制输出模式 枚举 */
typedef enum hiUNF_HDMI_FORCE_ACTION_E
{
    HI_UNF_HDMI_FORCE_NULL,               /*standard mode*//**CNcomment:< 标准模式 */
    HI_UNF_HDMI_FORCE_HDMI,               /*Force HDMI mode output*//**CNcomment:< 强制按HDMI方式输出 */
    HI_UNF_HDMI_FORCE_DVI,                /*Force DVI mode output*//**CNcomment:< 强制按DVI方式输出 */
    HI_UNF_HDMI_INIT_BOOT_CONFIG          /*Set HDMI init config by boot,test only*//**CNcomment:< 使用boot对HDMI设置的参数初始化HDMI, Test Only */
}HI_UNF_HDMI_FORCE_ACTION_E;

/*HDMI event type*//**CNcomment: HDMI事件类型 */
typedef enum hiUNF_HDMI_EVENT_TYPE_E
{
    HI_UNF_HDMI_EVENT_HOTPLUG = 0x10,       /*HDMI HotPlug event type*//**CNcomment:<HDMI热插拔事件 */
    HI_UNF_HDMI_EVENT_NO_PLUG,              /*HDMI unplug event type*//**CNcomment:<HDMI Cable没有连接 事件 */
    HI_UNF_HDMI_EVENT_EDID_FAIL,            /*HDMI read edid fail event type*//**CNcomment:<HDMI EDID读取失败事件 */
    HI_UNF_HDMI_EVENT_HDCP_FAIL,            /*HDCP authentication fail event type *//**CNcomment:<HDCP验证失败事件 */
    HI_UNF_HDMI_EVENT_HDCP_SUCCESS,         /*HDCP authentication succeed event type*//**CNcomment:<HDCP验证成功 */
    HI_UNF_HDMI_EVENT_RSEN_CONNECT,         /*TMDS link is connected*/   
    HI_UNF_HDMI_EVENT_RSEN_DISCONNECT,      /*TMDS link is disconnected*/    
    HI_UNF_HDMI_EVENT_HDCP_USERSETTING,     /**<HDMI Reset */
    HI_UNF_HDMI_EVENT_BUTT
}HI_UNF_HDMI_EVENT_TYPE_E;


/******************************************************************************
 Structure data defined
*******************************************************************************/
/*The hotplug callback function interface */
/**CNcomment: 接口热插拔回调函数 */
typedef void (*HI_UNF_HDMI_CallBack)(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData);

/*HDMI interface init parameter*/
/** CNcomment:HDMI接口初始化参数 */
typedef struct hiUNF_HDMI_INIT_PARA_S
{
    HI_UNF_HDMI_CallBack pfnHdmiEventCallback;    /*event callback*//**CNcomment:< 事件回调 */
    HI_VOID             *pCallBackArgs;           /*the private data of callback function parameter *//**CNcomment:< 回调函数参数私有数据 */
    HI_UNF_HDMI_FORCE_ACTION_E enForceMode;       /*0:standard protocol mode,you must set 0 when HDMI ATC test;1: Force  HDMI mode;2: force DVI mode*//**CNcomment:< 0:按标准协议模式 HDMI ATC测试必须使用0,1:强制HDMI模式,2:强制为DVI模式 */
}HI_UNF_HDMI_INIT_PARA_S;


/**HDMI CEC logical address,please reference  HDMI specification 1.4a*/
/**CNcomment: HDMI CEC逻辑地址，请参考HDMI 1.4a协议 */
typedef enum hiUNF_CEC_LOGICALADD_S
{
    HI_UNF_CEC_LOGICALADD_TV               = 0X00, /**<TV*//**CNcomment:<电视 */
    HI_UNF_CEC_LOGICALADD_RECORDDEV_1      = 0X01, /**<Record device 1*//**CNcomment:<录像机 1 */
    HI_UNF_CEC_LOGICALADD_RECORDDEV_2      = 0X02, /**<Record device 2*//**CNcomment:<录像机 2 */
    HI_UNF_CEC_LOGICALADD_TUNER_1          = 0X03, /**<Tuner 1*//**CNcomment:<高频头 1*/
    HI_UNF_CEC_LOGICALADD_PLAYDEV_1        = 0X04, /**<play device 1*//**CNcomment:<播放设备 1 */
    HI_UNF_CEC_LOGICALADD_AUDIOSYSTEM      = 0X05, /**<audio system*//**CNcomment:<音频系统 */
    HI_UNF_CEC_LOGICALADD_TUNER_2          = 0X06, /**<tuner 2*//**CNcomment:<高频头 2 */
    HI_UNF_CEC_LOGICALADD_TUNER_3          = 0X07, /**<tuner 3*//**CNcomment:<高频头 3 */
    HI_UNF_CEC_LOGICALADD_PLAYDEV_2        = 0X08, /**<play device 2*//**CNcomment:<播放设备 2 */
    HI_UNF_CEC_LOGICALADD_RECORDDEV_3      = 0X09, /**<Record device 3*//**CNcomment:<录像机 3 */
    HI_UNF_CEC_LOGICALADD_TUNER_4          = 0X0A, /**<tuner 4*//**CNcomment:<高频头 4 */
    HI_UNF_CEC_LOGICALADD_PLAYDEV_3        = 0X0B, /**<play device 3*//**CNcomment:<播放设备 3 */
    HI_UNF_CEC_LOGICALADD_RESERVED_1       = 0X0C, /**<reserved 1*//**CNcomment:<保留项 1 */
    HI_UNF_CEC_LOGICALADD_RESERVED_2       = 0X0D, /**<reserved 2*//**CNcomment:<保留项 2 */
    HI_UNF_CEC_LOGICALADD_SPECIALUSE       = 0X0E, /**<special use*//**CNcomment:<特殊用途 */
    HI_UNF_CEC_LOGICALADD_BROADCAST        = 0X0F, /**<broadcast*//**CNcomment:<广播 */
    HI_UNF_CEC_LOGICALADD_BUTT
}HI_UNF_CEC_LOGICALADD_S;


/**HDMI CEC Raw Data struct,please reference  HDMI specification 1.4a*/
/**CNcomment: HDMI CEC原始数据结构体，请参考HDMI 1.4a协议 */
typedef struct hiUNF_CEC_RAWDATA_S
{
    HI_U8                              u8Length;  /**<CEC raw data lengh*//**<CNcomment:cec 有效参数个数 */
    HI_U8                              u8Data[15];     /**<CEC raw data*//**<CNcomment:CEC 参数结构体 */
}HI_UNF_CEC_RAWDATA_S;

/**HDMI CEC user Interface Command Opcode,please reference  HDMI specification 1.4a*/
/**CNcomment: HDMI CEC 用户接口操作指令，请参考HDMI 1.4a协议 */
typedef enum hiUNF_CEC_UICMD_E                  
{
    HI_UNF_CEC_UICMD_SELECT                      = 0x00,
    HI_UNF_CEC_UICMD_UP                          = 0x01,
    HI_UNF_CEC_UICMD_DOWN                        = 0x02,
    HI_UNF_CEC_UICMD_LEFT                        = 0x03,
    HI_UNF_CEC_UICMD_RIGHT                       = 0x04,
    HI_UNF_CEC_UICMD_RIGHT_UP                    = 0x05,
    HI_UNF_CEC_UICMD_RIGHT_DOWN                  = 0x06,
    HI_UNF_CEC_UICMD_LEFT_UP                     = 0x07,
    HI_UNF_CEC_UICMD_LEFT_DOWN                   = 0x08,
    HI_UNF_CEC_UICMD_ROOT_MENU                   = 0x09,
    HI_UNF_CEC_UICMD_SETUP_MENU                  = 0x0A,
    HI_UNF_CEC_UICMD_CONTENTS_MENU               = 0x0B,
    HI_UNF_CEC_UICMD_FAVORITE_MENU               = 0x0C,
    HI_UNF_CEC_UICMD_EXIT                        = 0x0D,
    HI_UNF_CEC_UICMD_NUM_0                       = 0x20,
    HI_UNF_CEC_UICMD_NUM_1                       = 0x21,
    HI_UNF_CEC_UICMD_NUM_2                       = 0x22,
    HI_UNF_CEC_UICMD_NUM_3                       = 0x23,
    HI_UNF_CEC_UICMD_NUM_4                       = 0x24,
    HI_UNF_CEC_UICMD_NUM_5                       = 0x25,
    HI_UNF_CEC_UICMD_NUM_6                       = 0x26,
    HI_UNF_CEC_UICMD_NUM_7                       = 0x27,
    HI_UNF_CEC_UICMD_NUM_8                       = 0x28,
    HI_UNF_CEC_UICMD_NUM_9                       = 0x29,
    HI_UNF_CEC_UICMD_DOT                         = 0x2A,
    HI_UNF_CEC_UICMD_ENTER                       = 0x2B,
    HI_UNF_CEC_UICMD_CLEAR                       = 0x2C,
    HI_UNF_CEC_UICMD_NEXT_FAVORITE               = 0x2F,
    HI_UNF_CEC_UICMD_CHANNEL_UP                  = 0x30,
    HI_UNF_CEC_UICMD_CHANNEL_DOWN                = 0x31,
    HI_UNF_CEC_UICMD_PREVIOUS_CHANNEL            = 0x32,
    HI_UNF_CEC_UICMD_SOUND_SELECT                = 0x33,
    HI_UNF_CEC_UICMD_INPUT_SELECT                = 0x34,
    HI_UNF_CEC_UICMD_DISPLAY_INFORMATION         = 0x35,
    HI_UNF_CEC_UICMD_HELP                        = 0x36,
    HI_UNF_CEC_UICMD_PAGE_UP                     = 0x37,
    HI_UNF_CEC_UICMD_PAGE_DOWN                   = 0x38,
    HI_UNF_CEC_UICMD_POWER                       = 0x40,
    HI_UNF_CEC_UICMD_VOLUME_UP                   = 0x41,
    HI_UNF_CEC_UICMD_VOLUME_DOWN                 = 0x42,
    HI_UNF_CEC_UICMD_MUTE                        = 0x43,
    HI_UNF_CEC_UICMD_PLAY                        = 0x44,
    HI_UNF_CEC_UICMD_STOP                        = 0x45,
    HI_UNF_CEC_UICMD_PAUSE                       = 0x46,
    HI_UNF_CEC_UICMD_RECORD                      = 0x47,
    HI_UNF_CEC_UICMD_REWIND                      = 0x48,
    HI_UNF_CEC_UICMD_FAST_FORWARD                = 0x49,
    HI_UNF_CEC_UICMD_EJECT                       = 0x4A,
    HI_UNF_CEC_UICMD_FORWARD                     = 0x4B,
    HI_UNF_CEC_UICMD_BACKWARD                    = 0x4C,
    HI_UNF_CEC_UICMD_STOP_RECORD                 = 0x4D,
    HI_UNF_CEC_UICMD_PAUSE_RECORD                = 0x4E,
    HI_UNF_CEC_UICMD_ANGLE                       = 0x50,
    HI_UNF_CEC_UICMD_SUBPICTURE                  = 0x51,
    HI_UNF_CEC_UICMD_VIDEO_ON_DEMAND             = 0x52,
    HI_UNF_CEC_UICMD_ELECTRONIC_PROGRAM_GUIDE    = 0x53,
    HI_UNF_CEC_UICMD_TIMER_PROGRAMMING           = 0x54,
    HI_UNF_CEC_UICMD_INITIAL_CONFIGURATION       = 0x55,
    HI_UNF_CEC_UICMD_PLAY_FUNCTION               = 0x60,
    HI_UNF_CEC_UICMD_PAUSE_PLAY_FUNCTION         = 0x61,
    HI_UNF_CEC_UICMD_RECORD_FUNCTION             = 0x62,
    HI_UNF_CEC_UICMD_PAUSE_RECORD_FUNCTION       = 0x63,
    HI_UNF_CEC_UICMD_STOP_FUNCTION               = 0x64,
    HI_UNF_CEC_UICMD_MUTE_FUNCTION               = 0x65,
    HI_UNF_CEC_UICMD_RESTORE_VOLUME_FUNCTION     = 0x66,
    HI_UNF_CEC_UICMD_TUNE_FUNCTION               = 0x67,
    HI_UNF_CEC_UICMD_SELECT_MEDIA_FUNCTION       = 0x68,
    HI_UNF_CEC_UICMD_SELECT_AV_INPUT_FUNCTION    = 0x69,
    HI_UNF_CEC_UICMD_SELECT_AUDIO_INPUT_FUNCTION = 0x6A,
    HI_UNF_CEC_UICMD_POWER_TOGGLE_FUNCTION       = 0x6B,
    HI_UNF_CEC_UICMD_POWER_OFF_FUNCTION          = 0x6C,
    HI_UNF_CEC_UICMD_POWER_ON_FUNCTION           = 0x6D,
    HI_UNF_CEC_UICMD_F1_BLUE                     = 0x71,
    HI_UNF_CEC_UICMD_F2_RED                      = 0x72,
    HI_UNF_CEC_UICMD_F3_GREEN                    = 0x73,
    HI_UNF_CEC_UICMD_F4_YELLOW                   = 0x74,
    HI_UNF_CEC_UICMD_F5                          = 0x75,
    HI_UNF_CEC_UICMD_DATA                        = 0x76
}HI_UNF_CEC_UICMD_E;                                    

/**HDMI CEC operand command,please reference  HDMI specification 1.4a*/
/**CNcomment: HDMI CEC 操作指令，请参考HDMI 1.4a协议 */
typedef union hiUNF_CEC_Operand_t
{
    HI_UNF_CEC_RAWDATA_S               stRawData;   /**<CEC raw date*//**<CNcomment:CEC 原始命令 */
    HI_UNF_CEC_UICMD_E                 stUIOpcode;  /**<CEC user interface command*//**<CNcomment:CEC用户自定义操作 */
}HI_UNF_CEC_Operand_t;

/**HDMI CEC struct command*/
/**CNcomment: HDMI CEC 命令结构 */
typedef struct hiUNF_HDMI_CEC_CMD_S
{
    HI_UNF_CEC_LOGICALADD_S  enSrcAdd;     /**<logical address of source *//**<CNcomment:源端设备地址 */         
    HI_UNF_CEC_LOGICALADD_S  enDstAdd;     /**<logical address of destination*//**<CNcomment:目标设备地址 */
    HI_U8                    u8Opcode;     /**<opration code*//**<CNcomment:操作码*/
    HI_UNF_CEC_Operand_t     unOperand;    /**<operand*//**<CNcomment:操作数*/
}HI_UNF_HDMI_CEC_CMD_S;


/******************************************************************************
 Public infterface
*******************************************************************************/
HI_S32 HI_UNF_HDMI_Init(void);
HI_S32 HI_UNF_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFormat);
HI_S32 HI_UNF_HDMI_Start(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_UNF_HDMI_DeInit(void);
HI_S32 HI_UNF_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi);
HI_U32 HDMI_Display(HI_UNF_ENC_FMT_E enHdFmt, HI_UNF_HDMI_VIDEO_MODE_E einput, HI_UNF_HDMI_VIDEO_MODE_E eoutput);
#ifdef HI_HDMI_EDID_SUPPORT
HI_S32 HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_EDID_BASE_INFO_S *pSinkCap);
HI_S32 HI_UNF_HDMI_SetBaseParamByEDID(HI_VOID);
#endif

#endif
