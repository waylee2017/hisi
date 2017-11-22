/******************************************************************************

  Copyright (C), 2001-2011, Huawei Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_priv_hdmi.h
  Version       : Initial Draft
  Author        : q46153 l00168554
  Created       : 2010/6/15
  Last Modified :
  Description   : hdmi ioctl and HDMI API common data structs

******************************************************************************/

#ifndef  __HI_DRV_HDMI_H__
#define  __HI_DRV_HDMI_H__

//#include "hi_common_id.h"
#include "hi_module.h"
//#include "hi_common_log.h"
#include "hi_debug.h"

#include "hi_unf_hdmi.h"
#include "hi_error_mpi.h"
#include "hi_mpi_ao.h"

#ifdef __cplusplus
#if __cplusplus
	extern "C"{
#endif
#endif





/*
**HDMI Debug
*/
#ifndef CONFIG_SUPPORT_CA_RELEASE
#define HI_FATAL_HDMI(fmt...)       HI_FATAL_PRINT  (HI_ID_HDMI, fmt)
#define HI_ERR_HDMI(fmt...)         HI_ERR_PRINT    (HI_ID_HDMI, fmt)
#define HI_WARN_HDMI(fmt...)        HI_WARN_PRINT   (HI_ID_HDMI, fmt)
#define HI_INFO_HDMI(fmt...)        HI_INFO_PRINT   (HI_ID_HDMI, fmt)

#define debug_printk(fmt,args...) // printk(fmt,##args)
#else

#define HI_FATAL_HDMI(fmt...) 
#define HI_ERR_HDMI(fmt...) 
#define HI_WARN_HDMI(fmt...)
#define HI_INFO_HDMI(fmt...)
#define debug_printk(fmt,args...)  

#endif

/*hdmi audio interface */
typedef enum  hiHDMI_AUDIOINTERFACE_E
{
    HDMI_AUDIO_INTERFACE_I2S,
    HDMI_AUDIO_INTERFACE_SPDIF, 
    HDMI_AUDIO_INTERFACE_HBR, 
    HDMI_AUDIO_INTERFACE_BUTT
}HDMI_AUDIOINTERFACE_E;


typedef struct hiHDMI_AUDIO_ATTR_S
{
//  HI_BOOL                 bEnableAudio;        /**<Enable flag of Audio*//**CNcomment:是否Enable音频 */
    HDMI_AUDIOINTERFACE_E   enSoundIntf;         /**<the origin of Sound,suggestion set HI_UNF_SND_INTERFACE_I2S,the parameter need consistent with Ao input *//**<CNcomment:HDMI音频来源, 建议HI_UNF_SND_INTERFACE_I2S,此参数需要与AO输入保持一致 */
    HI_BOOL                 bIsMultiChannel;     /**<set mutiChannel or stereo ;0:stereo,1:mutichannel fixup 8 channel *//**<CNcomment:多声道还是立体声，0:立体声，1:多声道固定为8声道 */
	HI_U32 					u32Channels;         //先channel和multy channel都保留，后续在内核态干掉multy channel
    HI_UNF_SAMPLE_RATE_E    enSampleRate;        /**<the samplerate of audio,this parameter consistent with AO config *//**<CNcomment:PCM音频采样率,此参数需要与AO的配置保持一致 */
    HI_U8                   u8DownSampleParm;    /**<PCM parameter of dowmsample,default 0*//**CNcomment:PCM音频向下downsample采样率的参数，默认为0 */
    
    HI_UNF_BIT_DEPTH_E      enBitDepth;          //目前默认配16bit    /**<the audio bit depth,defualt 16,this parameter consistent with AO config*//**<CNcomment:音频位宽，默认为16,此参数需要与AO的配置保持一致 */
    HI_U8                   u8I2SCtlVbit;        /**<reserve:config 0,I2S control(0x7A:0x1D)*//**CNcomment:保留，请配置为0, I2S control (0x7A:0x1D) */

    HI_UNF_HDMI_CODING_TYPE_E   enAudioCode;

//  HI_BOOL                 bEnableAudInfoFrame; /**<Enable flag of Audio InfoFrame,suggestion:enable*//**<CNcomment:是否使能 AUDIO InfoFrame，建议使能 */
}HDMI_AUDIO_ATTR_S;

/**HDMI status*/
/**CNcomment: HDMI状态 */
typedef struct hiDRV_HDMI_STATUS_S
{
    HI_BOOL             bConnected;             /**<The Device is connected or disconnected *//**<CNcomment:设备是否连接 */
    HI_BOOL             bSinkPowerOn;           /**<The sink is PowerOn or not*//**<CNcomment:Sink设备是否上电 */
    HI_BOOL             bAuthed;                /**<HDCP Authentication *//**<CNcomment:HDCP 是否握手完成 */
    HI_U8               u8Bksv[5];              /**<Bksv of sink 40bits*//**<CNcomment:接收端的Bksv */
}HI_DRV_HDMI_STATUS_S;

/**HDMI Delay struct*/
/**CNcomment: HDMI 延时结构 */
typedef struct hiDRV_HDMI_DELAY_S
{
    HI_U32  u32MuteDelay;           /**<delay for avmute *//**<CNcomment:avmute的延时 */
    HI_U32  u32FmtDelay;  			/**<delay for setformat *//**<CNcomment:设置制式的延时 */
    HI_BOOL bForceFmtDelay;         /**<force setformat delay mode *//**<CNcomment:切换制式强制延时模式 */
    HI_BOOL bForceMuteDelay;        /**<force avmute delay mode *//**<CNcomment:mute强制延时模式 */
}HI_DRV_HDMI_DELAY_S;

/**EDID MANUFACTURE Info struct*//**CNcomment:EDID制造商信息 */
typedef struct hiHDMI_EDID_MANUFACTURE_INFO_E
{
    HI_U8               u8IDManufactureName[4]; /**<Manufacture name*//**<CNcomment:设备厂商标识 */
    HI_U32              u32IDProductCode;       /**<Product code*//**<CNcomment:设备ID */
    HI_U32              u32IDSerialNumber;      /**<Serial numeber of Manufacture*//**<CNcomment:设备序列号 */
    HI_U32              u32WeekOfManufacture;   /**<the week of manufacture*//**<CNcomment:设备生产日期(周) */
    HI_U32              u32YearOfManufacture;   /**<the year of manufacture*//**<CNcomment:设备生产日期(年) */
}HI_HDMI_EDID_MANUFACTURE_INFO_S;

typedef struct hiHDMI_AUDIO_CAPABILITY_S
{
    HI_BOOL             bAudioFmtSupported[HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT]; /**<Audio capability,reference EIA-CEA-861-D,table 37,HI_TRUE:support this Audio type;HI_FALSE,nonsupport this Audio type*//**<CNcomment:音频能力集, 请参考EIA-CEA-861-D 表37;HI_TRUE表示支持这种显示格式，HI_FALSE表示不支持 */
    HI_U32              u32AudioSampleRateSupported[HI_UNF_HDMI_MAX_AUDIO_SMPRATE_COUNT]; /**<PCM smprate capability,0: illegal value,other is support PCM smprate *//**<CNcomment:PCM音频采样率能力集，0为非法值，其他为支持的音频采样率 */
    HI_U32              u32MaxPcmChannels;        /**<Audio max PCM Channels number*//**CNcomment:音频最大的PCM通道数 */
    //HI_U8             u8Speaker;                /**<Speaker location,please reference EIA-CEA-D the definition of SpekearDATABlock*//**<CNcomment:扬声器位置，请参考EIA-CEA-861-D中SpeakerDATABlock的定义 */
}HI_DRV_HDMI_AUDIO_CAPABILITY_S;


/*In order to extern ,so we define struct*/
typedef struct hiHDMI_VIDEO_ATTR_S
{
//	HI_BOOL                 bEnableHdmi;         /**<force to HDMI or DVI,the value must set before HI_UNF_HDMI_Start or behind HI_UNF_HDMI_Stop*//**<CNcomment:是否强制HDMI,否则为DVI.该值必须在 HI_UNF_HDMI_Start之前或者HI_UNF_HDMI_Stop之后设置  */
//  HI_BOOL                 bEnableVideo;        /**<parameter must set HI_TRUE,or the HDMI diver will force to set HI_TRUE*//**<CNcomment:必须是HI_TRUE, 如果是HI_FALSE:HDMI驱动会强制设置为HI_TRUE */ 
    HI_UNF_ENC_FMT_E        enVideoFmt;          /**<video fromat ,the format must consistent with display  config*//**<CNcomment:视频制式,此参数需要与Display配置的制式保持一致 */
//  HI_UNF_HDMI_VIDEO_MODE_E enVidOutMode;       /**<HDMI output vedio mode VIDEO_MODE_YCBCR,VIDEO_MODE_YCBCR444，VIDEO_MODE_YCBCR422，VIDEO_MODE_RGB444 *//**<CNcomment:HDMI输出视频模式，VIDEO_MODE_YCBCR444，VIDEO_MODE_YCBCR422，VIDEO_MODE_RGB444 */
//  HI_UNF_HDMI_DEEP_COLOR_E enDeepColorMode;    /**<Deep Color output mode,defualt: HI_UNF_HDMI_DEEP_COLOR_24BIT *//**<CNcomment:DeepColor输出模式, 默认为HI_UNF_HDMI_DEEP_COLOR_24BIT */
//  HI_BOOL                 bxvYCCMode;          /**<the xvYCC output mode,default:HI_FALSE*//**<CNcomment:< xvYCC输出模式，默认为HI_FALSE */

//  HI_BOOL                 bEnableAviInfoFrame; /**<Enable flag of AVI InfoFrame,suggestion:enable *//**<CNcomment:是否使能 AVI InfoFrame，建议使能 */
//  HI_BOOL                 bEnableSpdInfoFrame; /**<Enable flag of SPD info frame,suggestion:disable*//**<CNcomment:是否使能 SPD InfoFrame， 建议关闭 */
//  HI_BOOL                 bEnableMpegInfoFrame;/**<Enable flag of MPEG info frame,suggestion:disable*//**<CNcomment:是否使能 MPEG InfoFrame， 建议关闭 */

    HI_BOOL                 b3DEnable;           /**<0:disable 3d,1,enable 3d mode*//**<CNcomment:< 0:3D不激活，1:3D模式打开 */
    HI_U32                  u83DParam;           /**<3D Parameter,defualt HI_FALSE*//**<CNcomment:< 3D Parameter, 默认为HI_FALSE */

//  HI_U32                  bDebugFlag;          /**<the flag of hdmi dubug,suggestion:disable*//**<CNcomment:< 是否使能 打开hdmi内部debug信息， 建议关闭 */
//  HI_BOOL                 bHDCPEnable;         /**<0:HDCP disable mode,1:eable HDCP mode*//**<CNcomment:< 0:HDCP不激活，1:HDCP模式打开 */
}HDMI_VIDEO_ATTR_S;
    
    /*In order to extern ,so we define struct*/
typedef struct hiHDMI_APP_ATTR_S
{
    HI_BOOL                 bEnableHdmi;         /**<force to HDMI or DVI,the value must set before HI_UNF_HDMI_Start or behind HI_UNF_HDMI_Stop*//**<CNcomment:是否强制HDMI,否则为DVI.该值必须在 HI_UNF_HDMI_Start之前或者HI_UNF_HDMI_Stop之后设置  */
    HI_BOOL                 bEnableVideo;        /**<parameter must set HI_TRUE,or the HDMI diver will force to set HI_TRUE*//**<CNcomment:必须是HI_TRUE, 如果是HI_FALSE:HDMI驱动会强制设置为HI_TRUE */
    HI_BOOL                 bEnableAudio;        /**<Enable flag of Audio*//**CNcomment:是否Enable音频 */

    HI_UNF_HDMI_VIDEO_MODE_E enVidOutMode;       /**<HDMI output vedio mode VIDEO_MODE_YCBCR,VIDEO_MODE_YCBCR444，VIDEO_MODE_YCBCR422，VIDEO_MODE_RGB444 *//**<CNcomment:HDMI输出视频模式，VIDEO_MODE_YCBCR444，VIDEO_MODE_YCBCR422，VIDEO_MODE_RGB444 */
    HI_UNF_HDMI_DEEP_COLOR_E enDeepColorMode;    /**<Deep Color output mode,defualt: HI_UNF_HDMI_DEEP_COLOR_24BIT *//**<CNcomment:DeepColor输出模式, 默认为HI_UNF_HDMI_DEEP_COLOR_24BIT */
    HI_BOOL                 bxvYCCMode;          /**<the xvYCC output mode,default:HI_FALSE*//**<CNcomment:< xvYCC输出模式，默认为HI_FALSE */

    HI_BOOL                 bEnableAviInfoFrame; /**<Enable flag of AVI InfoFrame,suggestion:enable *//**<CNcomment:是否使能 AVI InfoFrame，建议使能 */
    HI_BOOL                 bEnableSpdInfoFrame; /**<Enable flag of SPD info frame,suggestion:disable*//**<CNcomment:是否使能 SPD InfoFrame， 建议关闭 */
    HI_BOOL                 bEnableMpegInfoFrame;/**<Enable flag of MPEG info frame,suggestion:disable*//**<CNcomment:是否使能 MPEG InfoFrame， 建议关闭 */
    HI_BOOL                 bEnableAudInfoFrame; /**<Enable flag of Audio InfoFrame,suggestion:enable*//**<CNcomment:是否使能 AUDIO InfoFrame，建议使能 */

    HI_U32                  bDebugFlag;          /**<the flag of hdmi dubug,suggestion:disable*//**<CNcomment:< 是否使能 打开hdmi内部debug信息， 建议关闭 */
    HI_BOOL                 bHDCPEnable;         /**<0:HDCP disable mode,1:eable HDCP mode*//**<CNcomment:< 0:HDCP不激活，1:HDCP模式打开 */
    
    HI_BOOL                 b3DEnable;           /**<0:disable 3d,1,enable 3d mode*//**<CNcomment:< 0:3D不激活，1:3D模式打开 */
    HI_U32                  u83DParam;           /**<3D Parameter,defualt HI_FALSE*//**<CNcomment:< 3D Parameter, 默认为HI_FALSE */
}HDMI_APP_ATTR_S;

/*hdmi struct */
typedef struct hiHDMI_ATTR_S
{
    HDMI_AUDIO_ATTR_S  stAudioAttr;
    HDMI_VIDEO_ATTR_S  stVideoAttr;
    HDMI_APP_ATTR_S    stAppAttr;
}HDMI_ATTR_S;



    
    
/******************************************** end ************************************************/
  
///*
//** HDMI IOCTL Data Structure
//*/
//typedef struct hiHDMI_OPEN_S
//{
//    HI_UNF_HDMI_ID_E                  enHdmi;
//    HI_UNF_HDMI_FORCE_ACTION_E        enDefaultMode;
//}HDMI_OPEN_S;

typedef struct hiHDMI_OPEN_S
{
	HI_UNF_HDMI_ID_E                  enHdmi;
    HI_UNF_HDMI_FORCE_ACTION_E        enDefaultMode;
    HI_U32                            u32ProcID;
}HDMI_OPEN_S;


typedef struct hiHDMI_DEINIT_S
{
    HI_U32                          NoUsed;
}HDMI_DEINIT_S;

//typedef struct hiHDMI_INIT_S
//{
//    HI_U32                          NoUsed;
//}HDMI_INIT_S;

/*
** HDMI IOCTL Data Structure
*/
typedef struct hiHDMI_INIT_S
{
    HI_UNF_HDMI_FORCE_ACTION_E      enForceMode;
    HI_U32                          UCallbackAddr;
}HDMI_INIT_S;

typedef struct hiHDMI_COLSE_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          NoUsed;
}HDMI_CLOSE_S;

typedef struct hiHDMI_START_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          NoUsed;
}HDMI_START_S;

typedef struct hiHDMI_STOP_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          NoUsed;
}HDMI_STOP_S;

//typedef struct hiHDMI_POLL_EVENT_S
//{
//    HI_UNF_HDMI_ID_E                enHdmi;
//    HI_UNF_HDMI_EVENT_TYPE_E        Event;
//    HI_U32                          u32CallbackAddr;
//}HDMI_POLL_EVENT_S;

typedef struct hiHDMI_POLL_EVENT_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_EVENT_TYPE_E        Event;
    HI_U32                          u32ProcID;
}HDMI_POLL_EVENT_S;    


typedef struct hiHDMI_SINK_CAPABILITY_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_SINK_CAPABILITY_S   SinkCap;
}HDMI_SINK_CAPABILITY_S;

//typedef struct hiHDMI_PORT_ATTR_S
//{
//    HI_UNF_HDMI_ID_E                enHdmi;
//    HDMI_ATTR_S                     stHDMIAttr;
//}HDMI_PORT_ATTR_S;

typedef struct hiHDMI_PORT_ATTR_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HDMI_APP_ATTR_S                 stHdmiAppAttr;
}HDMI_PORT_ATTR_S;


typedef struct hiHDMI_INFORFRAME_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_INFOFRAME_TYPE_E    enInfoFrameType;
    HI_UNF_HDMI_INFOFRAME_S         InfoFrame;
}HDMI_INFORFRAME_S;

typedef struct hiHDMI_AVMUTE_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          AVMuteEnable;
}HDMI_AVMUTE_S;

//typedef struct hiHDMI_VIDEOTIMING_S
//{
//    HI_UNF_HDMI_ID_E                enHdmi;
//    HI_U32                          VideoTiming;
//}HDMI_VIDEOTIMING_S;

typedef struct hiHDMI_VIDEOTIMING_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_ENC_FMT_E                VideoTiming;
    HI_UNF_HDMI_3D_FORMAT_E         enStereo;
}HDMI_VIDEOTIMING_S;


typedef struct hiHDMI_PREVIDEOTIMING_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          VideoTiming;
}HDMI_PREVIDEOTIMING_S;

typedef struct hiHDMI_DEEPCOLOR_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_DEEP_COLOR_E        enDeepColor;
}HDMI_DEEPCOLORC_S;

typedef struct hiHDMI_SET_XVYCC_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          xvYCCEnable;
}HDMI_SET_XVYCC_S;

typedef struct hiHDMI_CEC_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_CEC_CMD_S           CECCmd;
    HI_U32                          timeout;
}HDMI_CEC_S;


typedef struct
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_UNF_HDMI_CEC_STATUS_S        stStatus;
}HDMI_CEC_STATUS;

typedef struct hiHDMI_EDID_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U8                           u8EdidValid;
    HI_U32                          u32Edidlength;
    HI_U8                           u8Edid[512];
}HDMI_EDID_S;

typedef struct hiHDMI_PLAYSTAUS_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          u32PlayStaus;
}HDMI_PLAYSTAUS_S;

typedef struct hiHDMI_CEC_ENABLE_S
{
    HI_U32                          NoUsed;
}HDMI_CEC_ENABlE_S;

typedef struct hiHDMI_CEC_DISABLE_S
{
    HI_U32                          NoUsed;
}HDMI_CEC_DISABLE_S;

typedef struct hiHDMI_REGCALLBACKFUNC_S
{
    HI_UNF_HDMI_ID_E                enHdmi;
    HI_U32                          u32CallBackAddr;
}HDMI_REGCALLBACKFUNC_S;

/******************************************** start ************************************************/
typedef struct hiHDMI_GETPROCID_S
{
	HI_UNF_HDMI_ID_E                enHdmi;
	HI_U32                          u32ProcID;
}HDMI_GET_PROCID_S;

typedef struct hiHDMI_GETAOATTR_S
{
	HI_UNF_HDMI_ID_E                enHdmi;
	HDMI_AUDIO_ATTR_S               stAudAttr;
}HDMI_GETAOATTR_S;

typedef struct hiHDMI_STATUS_S
{
	HI_UNF_HDMI_ID_E               enHdmi;
	HI_DRV_HDMI_STATUS_S           stStatus;
}HDMI_STATUS_S;

typedef struct hiHDMI_SETFMT_DELAY_S
{
	HI_UNF_HDMI_ID_E               enHdmi;
	HI_DRV_HDMI_DELAY_S            stDelay;
}HDMI_DELAY_S;

/******************************************** end ************************************************/
  


HI_S32 HI_DRV_HDMI_Init(HI_VOID);
HI_VOID HI_DRV_HDMI_Deinit(HI_VOID);
HI_S32 HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi);

HI_S32 HI_DRV_HDMI_PlayStus(HI_UNF_HDMI_ID_E enHdmi, HI_U32 *pu32Stutus);
HI_S32 HI_DRV_AO_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr);
HI_S32 HI_DRV_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_SINK_CAPABILITY_S *pstSinkCap);
HI_S32 HI_DRV_HDMI_GetAudioCapability(HI_UNF_HDMI_ID_E enHdmi, HI_DRV_HDMI_AUDIO_CAPABILITY_S *pstAudCap);
HI_S32 HI_DRV_HDMI_SetAudioMute(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_DRV_HDMI_SetAudioUnMute(HI_UNF_HDMI_ID_E enHdmi);

HI_S32 HI_DRV_HDMI_AudioChange(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr);

HI_S32 HI_DRV_HDMI_PreFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enEncodingFormat);
HI_S32 HI_DRV_HDMI_SetFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enFmt, HI_UNF_HDMI_3D_FORMAT_E enStereo);

HI_S32 HI_DRV_HDMI_Detach(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_DRV_HDMI_Attach(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFmt, HI_UNF_HDMI_3D_FORMAT_E enStereo);

HI_VOID HI_DRV_HDMI_ProcHotPlug(HI_HANDLE hHdmi);
HI_S32 HI_DRV_HDMI_ExtIoctl(unsigned int cmd, void *argp);
HI_S32  HI_DRV_HDMI_GetCECAddr(HI_U32 *pcec_addr);
HI_S32 HI_DRV_HDMI_GetBinInfoFrame(HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType,void *infor_ptr);
HI_S32 HI_DRV_HDMI_Set3DMode(HI_UNF_HDMI_ID_E enHdmi, HI_BOOL b3DEnable,HI_U8 u83Dmode);

////-----------------
//HI_S32 HI_DRV_HDMI_SetFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enEncodingFormat);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif
/*--------------------------END-------------------------------*/
