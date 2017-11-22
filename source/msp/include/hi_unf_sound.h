/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : hi_unf_vo.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/1/22
  Last Modified :
  Description   : header file for audio and video output control
  Function List :
  History       :
  1.Date        :
  Author        : z67193
  Modification  : Created file
******************************************************************************/
/** 
 * \file
 * \brief Describes the information about the SOUND (SND) module. CNcomment:提供SOUND的相关信息 CNend
 */
 
#ifndef  __HI_UNF_SND_H__
#define  __HI_UNF_SND_H__

#include "hi_unf_common.h"
//#include "hi_debug.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/********************************Macro Definition********************************/
/** \addtogroup      SOUND */
/** @{ */  /** <!-- 【SOUND】 */

/**Maximum sound outputport*/
/**CNcomment:最大sound输出端口*/
#define HI_UNF_SND_OUTPUTPORT_MAX 16

/** @} */  /** <!-- ==== Macro Definition end ==== */


/*************************** Structure Definition ****************************/
/** \addtogroup      SOUND */
/** @{ */  /** <!--  【SOUND】 */

/**Audio volume attribute*/
/**CNcomment:音频音量属性*/
typedef struct hiHI_UNF_SND_GAIN_ATTR_S
{
    HI_BOOL bLinearMode; /**< gain type of volume*/ /**<CNcomment:音量模式 */
    HI_S32  s32Gain; /**<Linear gain(bLinearMode is HI_TRUE) , ranging from 0 to 100*/ /**<CNcomment:线性音量: 0~100 */
                     /**<Decibel gain(bLinearMode is HI_FALSE) , ranging from -70dB to 0dB */ /**<CNcomment: dB音量:-70~0*/
} HI_UNF_SND_GAIN_ATTR_S;

/**Audio outputport: DAC0,I2S0,SPDIF0,HDMI0,ARC0*/
/**CNcomment:音频输出端口:DAC0,I2S0,SPDIF0,HDMI0,ARC0*/
typedef enum hiUNF_SND_OUTPUTPORT_E
{
    HI_UNF_SND_OUTPUTPORT_DAC0 = 0,

    HI_UNF_SND_OUTPUTPORT_I2S0,

    HI_UNF_SND_OUTPUTPORT_I2S1,

    HI_UNF_SND_OUTPUTPORT_SPDIF0,

    HI_UNF_SND_OUTPUTPORT_HDMI0,

    HI_UNF_SND_OUTPUTPORT_ARC0,
	
    HI_UNF_SND_OUTPUTPORT_EXT_DAC1 = 0x50,

    HI_UNF_SND_OUTPUTPORT_EXT_DAC2,

    HI_UNF_SND_OUTPUTPORT_EXT_DAC3,

    HI_UNF_SND_OUTPUTPORT_ALL = 0x7fff,

    HI_UNF_SND_OUTPUTPORT_BUTT,
} HI_UNF_SND_OUTPUTPORT_E;

/**Defines internal Audio DAC outport attribute */
/**CNcomment:定义内置音频DAC输出端口属性*/
typedef struct hiUNF_SND_DAC_ATTR_S
{
    HI_VOID* pPara;
} HI_UNF_SND_DAC_ATTR_S;

/**Defines  Audio I2S outport attribute */
/**CNcomment:定义音频I2S输出端口属性*/
typedef struct hiUNF_SND_I2S_ATTR_S
{
    HI_UNF_I2S_ATTR_S  stAttr;
}  HI_UNF_SND_I2S_ATTR_S;

/**Defines  S/PDIF outport attribute */
/**CNcomment:定义S/PDIF输出端口属性*/
typedef struct hiUNF_SND_SPDIF_ATTR_S
{
    HI_VOID* pPara;
}  HI_UNF_SND_SPDIF_ATTR_S;

/**Defines  HDMI Audio outport attribute */
/**CNcomment:定义HDMI音频输出端口属性*/
typedef struct hiUNF_SND_HDMI_ATTR_S
{
    HI_VOID* pPara;
} HI_UNF_SND_HDMI_ATTR_S;

/**Defines  HDMI ARC outport attribute */
/**CNcomment:定义HDMI音频回传通道端口属性*/
typedef struct hiUNF_SND_ARC_ATTR_S
{
    HI_VOID* pPara;
} HI_UNF_SND_ARC_ATTR_S;

/**Defines  Audio outport attribute */
/**CNcomment:定义音频输出端口属性*/
typedef struct hiUNF_SND_OUTPORT_S
{
    HI_UNF_SND_OUTPUTPORT_E enOutPort;
    union
    {
        HI_UNF_SND_DAC_ATTR_S stDacAttr;
        HI_UNF_SND_I2S_ATTR_S stI2sAttr;
        HI_UNF_SND_SPDIF_ATTR_S stSpdifAttr;
        HI_UNF_SND_HDMI_ATTR_S stHDMIAttr;
        HI_UNF_SND_ARC_ATTR_S stArcAttr;
    } unAttr;
} HI_UNF_SND_OUTPORT_S;

/**Defines  AVC attribute */
/**CNcomment:AVC属性*/
typedef struct hiHI_UNF_SND_AVC_ATTR_S
{
    HI_S32  s32ThresholdLevel;  /**<the threshold value, if -32.125, value is -32125, step by 0.125dB,threshold ranging from -40dB to -16dB,default value -32dB*/
                                /**<CNcomment: 达到最大抬升增益的转折电平,如值为-32.125,设置值为-32125,步长为0.125dB,范围:[-40dB, -16dB),默认值-32dB*/
    HI_S32  s32Gain;            /**<the gain value, if 2.125, value is 2125,step by 0.125dB,threshold ranging from 0dB to 22dB,default value 5dB*/
                                /**<CNcomment: 抬升增益,如值为2.125,设置值为2125,步长为0.125dB,范围:[0dB,22dB],默认值5dB*/
    HI_S32  s32LimiterLevel;    /**<the target level value, if -2.125, value is -2125, step by 0.125dB,threshold ranging from -16dB to -6dB,default value -10dB*/
                                /**<CNcomment:目标值,如值为-2.125,设置值为-2125,步长为0.125dB,范围:[-16dB,-6dB],默认值-10dB*/
    HI_U32  u32AttackTime;      /**<the attack time(unit:ms),ranging from 20 to 2000,default value 50(recommended)*/ /**<CNcomment: 开始生效时间(单位:ms),范围:[20, 2000]，默认值50，不建议修改*/
    HI_U32  u32ReleaseTime;     /**<the release time(unit:ms),ranging from 20 to 2000,default value 100(recommended)*/ /**<CNcomment: 开始失效时间(单位:ms),范围:[20, 2000]，默认值100，不建议修改*/
} HI_UNF_SND_AVC_ATTR_S;
/**HDMI MODE:AUTO,LPCM,RAW,HBR2LBR*/
/**CNcomment:HDMI 模式:AUTO,LPCM,RAW,HBR2LBR*/
typedef enum hiHI_UNF_SND_HDMI_MODE_E
{
    HI_UNF_SND_HDMI_MODE_LPCM = 0,       /**<HDMI LCPM2.0*/ /**<CNcomment: 立体声pcm*/
    HI_UNF_SND_HDMI_MODE_RAW,            /**<HDMI Pass-through.*/ /**<CNcomment: HDMI透传*/
    HI_UNF_SND_HDMI_MODE_HBR2LBR,        /**<HDMI Pass-through force high-bitrate to low-bitrate.*/ /**<CNcomment: 蓝光次世代音频降规格输出*/
    HI_UNF_SND_HDMI_MODE_AUTO,           /**<automatically match according to the EDID of HDMI */ /**<CNcomment: 根据HDMI EDID能力自动匹配*/
    HI_UNF_SND_HDMI_MODE_BUTT
} HI_UNF_SND_HDMI_MODE_E;

/**SPDIF MODE:LPCM,RAW*/
/**CNcomment:SPDIF 模式:LPCM,RAW*/
typedef enum hiHI_UNF_SND_SPDIF_MODE_E
{
    HI_UNF_SND_SPDIF_MODE_LPCM,           /**<SPDIF LCPM2.0*/ /**<CNcomment: 立体声pcm*/
    HI_UNF_SND_SPDIF_MODE_RAW,            /**<SPDIF Pass-through.*/ /**<CNcomment: SPDIF透传*/
    HI_UNF_SND_SPDIF_MODE_BUTT
} HI_UNF_SND_SPDIF_MODE_E;
/** @} */  /** <!-- ==== Structure Definition end ==== */
/**Audio Track Type: Master, Slave, Virtual channel*/
/**CNcomment:音频Track类型:主通道 辅通道 虚拟通道*/
typedef enum hiHI_UNF_SND_TRACK_TYPE_E
{
    HI_UNF_SND_TRACK_TYPE_MASTER = 0,     
    HI_UNF_SND_TRACK_TYPE_SLAVE, 
    HI_UNF_SND_TRACK_TYPE_BUTT 
} HI_UNF_SND_TRACK_TYPE_E;
/**Audio output attribute */
/**CNcomment:音频输出属性*/
typedef struct hiHI_UNF_AUDIOTRACK_ATTR_S
{
    HI_UNF_SND_TRACK_TYPE_E   enTrackType;    /**<Track Type*/ /**<CNcomment:Track类型*/
    HI_U32                  u32FadeinMs;      /**<Fade in time(unit:ms)*/ /**<CNcomment:淡入时间(单位: ms)*/
    HI_U32                  u32FadeoutMs;     /**<Fade out time(unit:ms)*/ /**<CNcomment:淡出时间(单位: ms)*/
    HI_U32                    u32OutputBufSize;  /**<Track output buffer size*/ /**<CNcomment:Track输出缓存大小*/
    HI_U32                  u32BufLevelMs;    /**<Output buffer data size control(ms)*/ /**<CNcomment:输出缓存中数据量控制(ms)*/
} HI_UNF_AUDIOTRACK_ATTR_S;


/**Defines the ID of the audio output (AO) device.*/
/**CNcomment:定义音频输出设备号*/
typedef enum hiUNF_SND_E
{
    HI_UNF_SND_0,           /**<AO device 0*/ /**<CNcomment:音频输出设备0 */
    HI_UNF_SND_BUTT    
} HI_UNF_SND_E;

/**Defines the type of the AO interface.*/
/**CNcomment:定义音频输出接口类型*/
typedef enum hiUNF_SND_INTERFACE_E
{
    HI_UNF_SND_INTERFACE_I2S,      /**<Inter-IC sound (I2S) mode*/ /**<CNcomment:I2S 模式 */
    HI_UNF_SND_INTERFACE_SPDIF,    /**<Sony/Philips digital interface (SPDIF) mode*/ /**<CNcomment:SPDIF 模式 */
    HI_UNF_SND_INTERFACE_HBR,      /**<SPDIF mode*/ /**<CNcomment:SPDIF 模式 */
    HI_UNF_SND_INTERFACE_BUTT
}HI_UNF_SND_INTERFACE_E;


/**Audio mixing type*/
/**CNcomment:音频混音类型 */
typedef enum hiHI_UNF_SND_MIX_TYPE_E
{
    HI_UNF_SND_MIX_TYPE_MASTER,     /**<Primary audio*/ /**<CNcomment:作为主音 */
    HI_UNF_SND_MIX_TYPE_SLAVE,      /**<Mixing audio*/ /**<CNcomment:作为混音 */
    HI_UNF_SND_MIX_TYPE_BUTT 
} HI_UNF_SND_MIX_TYPE_E;


/**Defines the AO mode.*/
/**CNcomment:定义音频输出模式结构体*/
typedef struct hiUNF_SND_INTERFACE_S
{
    HI_UNF_SND_INTERFACE_E  enInterface;     /**<Output type of the audio interface*/ /**<CNcomment:音频接口输出类型 */
    HI_BOOL                 bEnable;         /**<AO enable*/ /**<CNcomment:是否使能音频输出 */
}HI_UNF_SND_INTERFACE_S;

/**Defines the AO attributes.*/
/**CNcomment:定义音频输出属性结构体*/
typedef struct hiHI_UNF_SND_ATTR_S
{
    HI_U32                    u32PortNum;  /**<Outport number attached sound*/ /**<CNcomment:绑定到Sound设备的输出端口数*/
    HI_UNF_SND_OUTPORT_S stOutport[HI_UNF_SND_OUTPUTPORT_MAX];  /**<Outports attached sound*/ /**<CNcomment:绑定到Sound设备的输出端口*/
    HI_UNF_SAMPLE_RATE_E    enSampleRate;       /**<Sound samplerate*/ /**<CNcomment:Sound设备输出采样率*/
    HI_U32              u32MasterOutputBufSize; /**<Size (in byte) of the buffer for playing the master audio. Note: The size must be 64 times of word8.*/
                                                /**<CNcomment:主音回放缓冲区空间大小. unit:byte */
    HI_U32              u32SlaveOutputBufSize;  /**<Size (in byte) of the buffer for playing the slave audio. Note: The size must be 64 times of word8 */
                                                /**<CNcomment:辅音回放缓冲区空间大小. unit:byte */
    HI_BOOL            bMixerEngineSupport;   /**< if bMixerEngineSupport == HI_TRUE,  UNF_SND support MixerEngine,slave pcm is repalced by one mixer of the MixerEngine,
    									  if bMixerEngineSupport == HI_FALSE, UNF_SND dont support MixerEngine default: HI_FALSE
    									  */  
} HI_UNF_SND_ATTR_S;

/**Audio Mixer attribute */
typedef struct hiHI_UNF_MIXER_ATTR_S
{
    HI_U32              u32MixerWeight;    /**<Mixer weight, ranging from 0 to 100*/ /**<CNcomment:混音权重: 0~100 */
    HI_U32              u32MixerBufSize;   /**<Size (in byte) of the mixer buffer, ranging from (1024 x 16) to (1024 x 1024)*/ /**<CNcomment:混音器缓冲区大小 unit:byte */
} HI_UNF_MIXER_ATTR_S;

typedef struct hiHI_UNF_MIXER_STATUSINFO_S
{
    HI_S32 u32MixerID;   /**<Mixer ID, ranging from 0 to 7*/ /**<CNcomment:混音器硬件ID : 范围0~7 */
    HI_S32 u32Working;   /**<Working status of the mixer. 0 : stop; 1: pause; 2: running*/ /**<CNcomment:混音器工作状态: 0 : stop, 1: pause, 2:running */

    HI_U32 u32BufferSize;      /**<Size (in byte) of the mixer buffer*/ /**<CNcomment:混音器缓冲区大小unit: byte.*/
    HI_U32 u32BufferByteLeft;  /**<Remaining audio data (in byte) in the mixer buffer*/ /**<CNcomment:混音器缓冲区音频数据剩余 unit : byte.*/
    HI_BOOL bDataNotEnough;    /**<HI_FALSE : data is enough, HI_TRUE: data is not enough,need more data */
    HI_U32  u32BufDurationMs;  /**<Duration (in ms) for playing the remaining audio data in the mixer buffer*/ /**<CNcomment:混音器缓冲区剩余音频数据可播放时长  unit : MS.*/

} HI_UNF_MIXER_STATUSINFO_S;

/** @} */  /** <!-- ==== Structure Definition end ==== */


/******************************* API declaration *****************************/
/** \addtogroup      SOUND */
/** @{ */  /** <!--  [SOUND] */

/** 
\brief Initializes an AO device. CNcomment:初始化音频输出设备 CNend
\attention \n
Before calling the SND module, you must call this application programming interface (API). CNcomment:调用SND模块要求首先调用该接口 CNend
\param N/A
\retval HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_Init(HI_VOID);

/** 
\brief Deinitializes an AO device. CNcomment:去初始化音频输出设备 CNend
\attention \n
N/A
\param N/A
\retval HI_SUCCESS Success CNcomment:成功 CNend 
\see \n
N/A
*/
HI_S32 HI_UNF_SND_DeInit(HI_VOID);

/** 
\brief Sets an AO device. CNcomment:设置音频输出设备 CNend
\attention \n
You must call this API before calling HI_UNF_SND_Open. Otherwise, the VO device is started in the default mode. 
CNcomment:必须在HI_UNF_SND_Open 前调用，否则按照默认方式打开音频设备 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] pstAttr     Configured audio attributes CNcomment:音频设置属性 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetOpenAttr(HI_UNF_SND_E enSound,HI_UNF_SND_ATTR_S *pstAttr);

/** 
\brief Obtains the configured parameters of an AO device. CNcomment:获取音频输出设备设置参数 CNend
\attention \n
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pstAttr     Audio attributes CNcomment:音频属性 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr);

/** 
\brief Starts an AO device. CNcomment:打开音频输出设备 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\retval ::HI_SUCCESS Success CNcomment:
\retval ::HI_ERR_HIAO_CREATE_FAIL	    The device fails to be started. CNcomment:打开设备失败 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_Open(HI_UNF_SND_E enSound);

/** 
\brief Destroys a VO SND instance. CNcomment:销毁音频输出Sound实例 CNend
\attention \n
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_Close(HI_UNF_SND_E enSound);

/** 
\brief Enables an AO port. CNcomment:设置音频输出端口使能控制 CNend
\attention \n
The analog I2S output port and SPDIF output port can be controlled separately. CNcomment:可以分别控制模拟I2S输出和SPDIF输出 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] pInterface    Pointer to the AO mode. For details, see the description of ::HI_UNF_SND_INTERFACE_S.
CNcomment:指针类型，音频输出模式结构体，请参见::HI_UNF_SND_INTERFACE_S CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN       No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetInterface(HI_UNF_SND_E enSound, const HI_UNF_SND_INTERFACE_S *pInterface);

/** 
\brief Obtains the enable flag of an AO port. CNcomment:获取音频输出端口使能状态 CNend
\attention \n
The enInterface parameter of pInterface is an input parameter, and the bEnable parameter is an output parameter.
CNcomment:第二个参数中结构体的第一个参数（enInterface）为输入参数，第二个参数（bEnable）为输出参数 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in/out] pInterface   Pointer to the AO mode. For details, see the description of ::HI_UNF_SND_INTERFACE_S. 
CNcomment:指针类型。音频输出模式结构体，请参见::HI_UNF_SND_INTERFACE_S CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is disabled. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetInterface(HI_UNF_SND_E enSound, HI_UNF_SND_INTERFACE_S *pInterface);


/** 
\brief Sets the mute status of an analog AO port. CNcomment:音频模拟输出的静音开关设置 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bMute    AO mute enable. HI_TRUE: mute; HI_FALSE: unmute CNcomment:模拟输出静音开关。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN       No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetAnalogMute(HI_UNF_SND_E enSound, HI_BOOL bMute);

/** 
\brief Obtains the mute status of an analog AO port. CNcomment:获取音频模拟输出的静音开关状态 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pbMute    Pointer to the mute status. HI_TRUE: mute; HI_FALSE: unmute CNcomment:指针类型。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetAnalogMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute);

/** 
\brief Sets the mute status of a digital AO port. CNcomment:音频数字输出的静音开关设置 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bMute    Digital AO mute enable. HI_TRUE: mute; HI_FALSE: unmute CNcomment:数字输出静音开关。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetDigitalMute(HI_UNF_SND_E enSound, HI_BOOL bMute);

/** 
\brief Obtains the mute status of a digital AO port. CNcomment:获取音频数字输出的静音开关状态 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pbMute    Pointer to the mute status. HI_TRUE: mute; HI_FALSE: unmute CNcomment:指针类型。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN       No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetDigitalMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute);

/** 
\brief Sets the mute status of the digital and analog AO ports. CNcomment:音频数字和模拟输出的静音开关设 CNend
\attention \n
N/A
\param[in] enSound CNcomment:音频输出设备号 CNend
\param[in] bMute CNcomment:音频数字和模拟输出的静音开关 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetMute(HI_UNF_SND_E enSound, HI_BOOL bMute);

/** 
\brief Obtains the mute status of the digital and analog AO ports. CNcomment:获取音频数字和模拟输出的静音开关状态 CNend
\attention \n
N/A
\param[in] enSound CNcomment:音频输出设备号 CNend
\param[in] pbMute CNcomment: 静音设置开关 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute);

/** 
\brief Sets the mute status of the DAC for analog audio output. CNcomment:音频模拟输出的DAC静音开关设置 CNend
\attention \n
This API is applicable to the scenario where the analog output audio needs to be muted, but the HDMI audio needs to be retained.
CNcomment:用于模拟输出静音而保留HDMI声音输出的场景，一般情况下不需要使用 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bMute    DAC muteHI_TRUE: mute; HI_FALSE: unmute CNcomment:DAC静音开关。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetADACMute(HI_UNF_SND_E enSound, HI_BOOL bMute);

/** 
\brief Obtains the mute status of the DAC for analog audio output. CNcomment:获取音频模拟输出的DAC的静音开关状态 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pbMute  Pointer typeHI_TRUE: mute; HI_FALSE: unmute CNcomment:指针类型。HI_TRUE：静音；HI_FALSE：非静音 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN       No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetADACMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute);

/** 
\brief Sets the output audio data of the SPDIF interface. CNcomment:设置SPDIF 音频数据输出 CNend
\attention \n
Before calling this API, ensure that the audio decoding mode is set to :HD_DEC_MODE_SIMUL (PCM+transparent decoding mode).\n
For the SPDIF interface, INTERFACE_SPDIF must be enabled no matter what data is output. 
CNcomment:使用该接口时，音频解码模式必须设定为:HD_DEC_MODE_SIMUL(PCM + 透传解码模式)\n
同时，对于SPDIF接口，不管输出什么数据，必须使能INTERFACE_SPDIF CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bEnable   Transparent data output enable. HI_TRUE: The transparent data is output; HI_FALSE: The PCM data is output.
 CNcomment:透传数据输出开关。HI_TRUE：输出透传数据；HI_FALSE：输出PCM数据 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_E enSound, HI_BOOL bEnable);

/** 
\brief Sets the pass-through function of the HDMI.
\attention \n
Ensure that the audio decoder works in HD_DEC_MODE_SIMUL mode. CNcomment:使用该接口时，音频解码模式必须设定为:HD_DEC_MODE_SIMUL(PCM + 透传解码模式) CNend
\param[in] enSound CNcomment:音频输出设备号  CNend
\param[in] bEnable , HI_TRUE: pass-through enabled; HI_FALSE: pass-through disabled CNcomment:透传数据输出开关。HI_TRUE：使能HDMI透传输出；HI_FALSE：关闭HDMI透传输出 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_E enSound, HI_BOOL bEnable);

/** 
\brief Sets auto edid function of the HDMI.
\attention \n
Ensure that the audio decoder works in HD_DEC_MODE_SIMUL mode. CNcomment:使用该接口时，音频解码模式必须设定为:HD_DEC_MODE_SIMUL(PCM + 透传解码模式) CNend
\param[in] enSound CNcomment:音频输出设备号  CNend
\param[in] bEnable , HI_TRUE: EDID AUTO enabled; HI_FALSE: EDID AUTO disabled CNcomment:自动HDMI EDID输出开关。HI_TRUE：使能EDID自动模式；HI_FALSE：关闭HDMI EDID自动模式 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetHdmiEdidAutoMode(HI_UNF_SND_E enSound, HI_BOOL bEnable);

/**
\brief Sets the output mode of the HDMI(Auto/PCM/RAW/HBR2LBR).
\attention \n
\param[in] enSound CNcomment:音频输出设备号  CNend
\param[in] enOutPort  Audio OutputPort   CNcomment:音频输出端口 CNend
\param[in] enHdmiMode HDMI mode CNcomment:HDMI模式CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_FAILURE FAILURE CNcomment:失败 CNend
\retval ::HI_ERR_AO_SOUND_NOT_OPEN    Sound device is not opened. CNcomment:Sound设备未打开 CNend
\retval ::HI_ERR_AO_INVALID_ID      The parameter enSound is invalid. CNcomment:无效Sound ID CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_SetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E enHdmiMode);


/** 
\brief Sets the output volume value. CNcomment:设置输出音量 CNend
\attention \n
If u32Volume is set to a value greater than 100, the value 100 is used by default. CNcomment:如果u32Volume设置大于100，默认设置的值为100 CNend
\param[in] enSound        ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] u32Volume     Volume value, ranging from 0 to 100. 0: mute; 100: maximum volume CNcomment:设置的音量值，范围0～100。0：静音；100：最大音量 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetVolume(HI_UNF_SND_E enSound, HI_U32 u32Volume);

/** 
\brief Sets the output volume value. CNcomment:设置输出绝对音量 CNend
\attention \n
If s32AbsVolume is set to a value greater than 0 dB, the value 0 dB is used by default. CNcomment:如果s32AbsVolume设置大于 0 dB，默认设置的值为0 dB CNend
\param[in] enSound        ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] s32AbsVolume     Volume value, ranging from -70dB to 0 dB -70dB: mute; 0 dB: maximum volume CNcomment:设置的音量值，范围-70dB~0dB。-70dB：静音；0dB：最大音量 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetAbsoluteVolume(HI_UNF_SND_E enSound, HI_S32 s32AbsVolume);

/** 
\brief Obtains the output volume value. CNcomment:获取输出绝对音量 CNend
\attention \n
The default volume value is 100. CNcomment:查询的默认音量值为0dB CNend
\param[in] enSound         ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] ps32AbsVolume    Pointer to the obtained volume value CNcomment:指针类型，获取到的音量值 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetAbsoluteVolume(HI_UNF_SND_E enSound, HI_S32 *ps32AbsVolume);

/** 
\brief Obtains the output volume value. CNcomment:获取输出音量 CNend
\attention \n
The default volume value is 100. CNcomment:查询的默认音量值为100 CNend
\param[in] enSound         ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pu32Volume    Pointer to the obtained volume value CNcomment:指针类型，获取到的音量值 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetVolume(HI_UNF_SND_E enSound, HI_U32 *pu32Volume);

/** 
\brief Sets the sampling rate during audio output. CNcomment:设置音频输出时的采样率 CNend
\attention \n
At present, the sampling rate cannot be set, and it is fixed at 48 kHz. The streams that are not sampled at 48 kHz are resampled at 48 kHz.
CNcomment:目前输出采样率默认为48k(实际输出采样率为48K~192K)，支持从8K到192K码流输入，因最大支持6倍重采样，\n
因此当设定输出采样率为192K时(实际输出采样率为192K)，播小于32K的码流会出错(此时不影响其它采样率的码流切换)\n
然而当设定输出采样率为8K时(实际输出采样率为8K~192K)，此时不能通过HDMI输出小于32K的码流(HDMI不支持) CNend
\param[in] enSound          ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] enSampleRate    Audio sampling rate. For details, see the description of ::HI_UNF_SAMPLE_RATE_E. CNcomment:音频采样率。请参见::HI_UNF_SAMPLE_RATE_E CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E enSampleRate);

/** 
\brief Obtains the sampling rate during audio output. CNcomment:获取音频输出时的采样率 CNend
\attention \n
The 48 kHz sampling rate is returned by default. CNcomment:此接口默认返回48kHz采样率 CNend
\param[in] enSound           ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] penSampleRate   Pointer to the type of the audio sampling rate CNcomment:指针类型，音频采样率的类型 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E *penSampleRate);

/** 
\brief Enables the AO auto-resampling function. CNcomment:音频输出自动进行重采样开关设置 CNend
\attention \n
By default, auto-resampling is enabled and cannot be disabled.\n CNcomment:默认已经打开重采样，不允许关闭 CNend
At present, the source sampling rates 8 kHz, 16 kHz, 22.05 kHz, 24 kHz, 32 kHz, 44.1 kHz, and 48 kHz are supported. The default value is 48 kHz.\n
If you call this API to set bAutoResample to HI_TRUE, HI_SUCCESS is returned.\n
If you call this API to set bAutoResample to HI_FALSE, the error code HI_UNF_ERR_SND_NOTSUPPORT is returned.
CNcomment:目前仅支持源采样率为8kHz、16kHz、22.05kHz、24kHz、32kHz、44.1kHz和48kHz，默认以48kHz输出\n
如果通过本接口设置bAutoResample为HI_TRUE，则此接口将直接返回成功\n
如果通过本接口设置bAutoResample为HI_FALSE，则此接口将直接返回HI_UNF_ERR_SND_NOTSUPPORT错误码 CNend
\param[in] enSound            ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bAutoResample     Auto-resampling enable. HI_TRUE: enabled; HI_FALSE: disabled CNcomment:是否自动重采样。HI_TRUE：设置自动重采样；HI_FALSE：不设置自动重采样 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetAutoResample(HI_UNF_SND_E enSound, HI_BOOL bAutoResample);

/** 
\brief Obtains the enable status of AO auto-sampling. CNcomment:获取音频输出自动重采样开关状态 CNend
\attention \n
N/A
\param[in] enSound              ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pbAutoResample     Pointer to the enable status of auto-sampling CNcomment:指针类型，是否自动重采样 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetAutoResample(HI_UNF_SND_E enSound, HI_BOOL *pbAutoResample);

/** 
\brief Sets the smart volume for audio output. CNcomment:音频输出进行智能音量处理处理开关设置 CNend
\attention \n
1. The smart volume is disabled by default.\n 
2. The smart volume is valid only for the master audio.\n 
3. The smart volume is enabled only when the program is switched. 
CNcomment:1. 默认关闭该智能音量\n
2. 智能音量仅对主音有效\n
3. 智能音量仅在切换节目时触发 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] bSmartVolume     Smart volume enableHI_TRUE: enabled; HI_FALSE: disabled CNcomment:是否打开智能音量。HI_TRUE：打开；HI_FALSE：关闭 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetSmartVolume(HI_UNF_SND_E enSound, HI_BOOL bSmartVolume);

/** 
\brief Obtains the status of the smart volume for audio output. CNcomment:获取音频输出智能音量开关状态\attention \n CNend
\attention \n
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] pbSmartVolume     Pointer to the enable status of the smart volume CNcomment:指针类型，是否打开智能音量 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetSmartVolume(HI_UNF_SND_E enSound, HI_BOOL *pbSmartVolume);

/** 
\brief Set the AO track mode. CNcomment:设置音频输出声道模式 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] enMode     Audio track mode. For details, see the description of ::HI_UNF_TRACK_MODE_E. CNcomment:音频声道模式，请参见::HI_UNF_TRACK_MODE_E CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetTrackMode(HI_UNF_SND_E enSound, HI_UNF_TRACK_MODE_E enMode);

/** 
\brief Obtains the AO track mode. CNcomment:获取音频输出声道模式 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] penMode   Pointer to the AO track mode. For details, see the description of ::HI_UNF_TRACK_MODE_E.
CNcomment:指针类型，音频声道模式。请参见::HI_UNF_TRACK_MODE_E CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	    No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	    The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetTrackMode(HI_UNF_SND_E enSound, HI_UNF_TRACK_MODE_E *penMode);

/** 
\brief Attaches the SND module to an audio/video player (AVPLAY). CNcomment:绑定音频输出Sound和AV（Audio Video）播放器 CNend
\attention \n
Before calling this API, you must create a player and ensure that the player has no output. CNcomment:调用此接口前必须先创建播放器，对应这路播放器没有输出 CNend
\param[in] enSound          ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource         
\param[in] enMixType       Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\param[in] u32MixWeight    Mixing weight, ranging from 0 to 100. 0: minimum value; 100: maximum value CNcomment:权重，范围为0～100。0：最小值；100：最大值 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PORT	        The attach type is invalid. CNcomment:无效绑定类型 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_Attach(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_UNF_SND_MIX_TYPE_E enMixType, HI_U32 u32MixWeight);

/** 
\brief Detaches the SND module from an AVPLAY. CNcomment:解除Sound和AV播放器绑定 CNend
\attention \n
N/A
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource    Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_Detach(HI_UNF_SND_E enSound, HI_HANDLE hSource);

/** 
\brief Sets the mixing weight of an audio player. CNcomment:设置音频播放器混音权重 CNend
\attention \n
The output volumes of two players are calculated as follows: (volume x weight 1 + volume x weight 2)/100. The formula of calculating the output volumes of multiple players is similar.
CNcomment:两个播放器输出音量的计算方法为：（设置的音量%权重1+设置的音量%权重2）/100，多个播放器的计算方法与此类似 CNend
\param[in] enSound              ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource    Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\param[in] u32MixWeight    Mixing weight, ranging from 0 to 100. 0: minimum value; 100: maximum value CNcomment:权重，范围为0～100。0：最小值；100：最大值 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetMixWeight(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 u32MixWeight);

/** 
\brief Obtains the mixing weight of an audio player. CNcomment:获取音频播放器混音权重 CNend
\attention \n

\param[in] enSound            ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource    Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\param[in] pu32MixWeight     Pointer to the mixing weight CNcomment:指针类型，权重值 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR               The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetMixWeight(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 *pu32MixWeight);

/** 
\brief Sets the fade in time and fade out time of an audio player. CNcomment:设置音频播放器淡入淡出时间 CNend
\attention \n
\param[in] enSound             ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource    Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\param[in] u32FadeinMs         Fade in time (in ms). The maximum value is 2000 ms. CNcomment:淡入时间，单位为毫秒，最大取值2000 CNend
\param[in] u32FadeoutMs        Fade out time (in ms). The maximum value is 500 ms. CNcomment:淡出时间，单位为毫秒，最大取值500 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetFadeTime(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 u32FadeinMs, HI_U32 u32FadeoutMs);

/** 
\brief Obtains the fade in time and fade out time of an audio player. CNcomment:获取音频播放器淡入淡出时间 CNend
\attention \n

\param[in] enSound           ID of an AO device CNcomment:音频输出设备号 CNend
\param[in] hSource    Instance handle of an AVPLAY CNcomment:AV播放器播放实例句柄 CNend
\param[in] pu32FadeinMs      Pointer to the fade in time CNcomment:指针类型，淡入时间 CNend
\param[in] pu32FadeoutMs     Pointer to the fade out time CNcomment:指针类型，淡出时间 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_HIAO_DEV_NOT_OPEN	        No audio device is started. CNcomment:Audio设备未打开 CNend
\retval ::HI_ERR_HIAO_NULL_PTR               The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_HIAO_INVALID_PARA	        The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetFadeTime(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 *pu32FadeinMs, HI_U32 *pu32FadeoutMs);

/** 
\brief Enables a mixer. CNcomment:打开一个混音器 CNend
\attention \n
A mixer is available only after HI_UNF_SND_Open is called successfully. CNcomment:只有HI_UNF_SND_Open 成功后，才能操作混音设备 CNend
\param[in] enSound     ID of an AO device CNcomment:音频输出设备号 CNend
\param[out] phMixer   Pointer to the handle of the created mixer CNcomment:指针类型，创建的混音器 句柄 CNend
\param[in] pstMixerAttr    Pointer to mixer attributes CNcomment:指针类型，混音器属性 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_INVALID_ID	The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Open(HI_UNF_SND_E enSound,HI_HANDLE *phMixer, HI_UNF_MIXER_ATTR_S *pstMixerAttr);

/** 
\brief Disables a mixer. CNcomment:关闭 一个混音器 CNend
\attention \n
N/A
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Close(HI_HANDLE hMixer);

/** 
\brief Starts a mixer. CNcomment:启动混音器 CNend
\attention \n
N/A
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Start(HI_HANDLE hMixer);

/** 
\brief Stops a mixer. CNcomment:停止混音器 CNend
\attention \n
The data in the buffer will be discarded. CNcomment:缓冲区数据将会丢弃 CNend
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Stop(HI_HANDLE hMixer);

/** 
\brief Pauses a mixer. CNcomment:暂停混音器 CNend
\attention \n
The data in the buffer is retained. CNcomment:缓冲区数据仍然保留 CNend
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Pause(HI_HANDLE hMixer);

/** 
\brief  Resets the status of a mixer. CNcomment:混音器状态复位 CNend
\attention \n
N/A
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_Flush(HI_HANDLE hMixer);

/** 
\brief Obtains the status of a mixer. CNcomment:获取混音器状态信息 CNend
\attention \n
N/A
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\param[out] pstStatus  Mixer handle CNcomment:混音器句柄 CNend
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_ERR_SND_NULL_PTR	The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_Mixer_GetStatus(HI_HANDLE hMixer, HI_UNF_MIXER_STATUSINFO_S *pstStatus);

/** 
\brief  Transmits data to a mixer. CNcomment:送数据到混音器 CNend
\attention \n
1. If HI_ERR_HIAO_OUT_BUF_FULL is returned, you need to transmit the data that fails to be transmitted last time to ensure the audio continuity.
2. For the PCM data, the restrictions are as follows:
    s32BitPerSample must be set to 16.
    bInterleaved must be set to HI_TRUE. Only interlaced mode is supported.
    u32Channels can be set to 1 or 2.
    u32PtsMs can be ignored.
    ps32PcmBuffer indicates the PCM data pointer.
    ps32BitsBuffer can be ignored.
    u32PcmSamplesPerFrame indicates the number of audio sampling. The data length (in byte) is calculated as follows: u32PcmSamplesPerFrame x u32Channels x sizeof(HI_u16)
    u32BitsBytesPerFrame can be ignored.
    u32FrameIndex can be ignored.
CNcomment:1 如果返回HI_ERR_HIAO_OUT_BUF_FULL，需要调度者继续送上次失败数据，才能保证声音的连续
2 PCM 数据格式在混音器的限制如下
    s32BitPerSample: 必须为16
    bInterleaved: 必须为HI_TRUE, 仅支持交织模式
    u32Channels: 1 或2
    u32PtsMs: 忽略该参数
    ps32PcmBuffer: PCM 数据指针
    ps32BitsBuffer: 忽略该参数
    u32PcmSamplesPerFrame: 音频样点数, 数据长度(unit:Bytes): u32PcmSamplesPerFrame*u32Channels*sizeof(HI_u16)
    u32BitsBytesPerFrame: 忽略该参数
    u32FrameIndex: 忽略该参数 CNend
\param[in] hMixer   Mixer handle CNcomment:混音器句柄 CNend
\param[out] pstAOFrame   Information about the audio data CNcomment:音频数据信息 CNend
\retval ::HI_SUCCESS Success CNcomment:成功
\retval ::HI_ERR_SND_NULL_PTR	The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_SND_INVALID_PARA	The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_HIAO_OUT_BUF_FULL  Data fails to be transmitted because the mixer buffer is full. CNcomment:混音缓冲区数据满，送数据失败 CNend
\see \n
N/A
*/
HI_S32	 HI_UNF_SND_Mixer_SendData(HI_HANDLE hMixer, const HI_UNF_AO_FRAMEINFO_S *pstAOFrame);

/**
\brief Set the attr of Avc. CNcomment:设置avc属性函数
\attention \n
N/A
\param[in] enSound   sound ID. CNcomment:声卡 ID值
\param[in] pstAvcAttr  attribute of avc. CNcomment:avc 属性参数
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_SetAvcAttr(HI_UNF_SND_E enSound, const HI_UNF_SND_AVC_ATTR_S* pstAvcAttr);

/**
\brief get the attr of Avc. CNcomment:获取avc属性函数
\attention \n
N/A
\param[in] enSound   sound ID. CNcomment:声卡 ID值
\param[out] pstAvcAttr  information of avc attribute. CNcomment:avc 属性参数
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetAvcAttr(HI_UNF_SND_E enSound, HI_UNF_SND_AVC_ATTR_S* pstAvcAttr);

/**
\brief Sets the mute status of  AO ports. CNcomment:音频输出静音开关设置 CNend
\attention the function is same of HI_UNF_SND_SetMute when enOutPort is HI_UNF_SND_OUTPUTPORT_ALL.CNcomment:当enOutPort为HI_UNF_SND_OUTPUTPORT_ALL时，此函数作用同HI_UNF_SND_SetMute一样\n
N/A
\param[in] enSound
\param[in] enOutPort CNcomment:sound输出端口 CNend
\param[in] bMute
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_FAILURE FAILURE CNcomment:失败 CNend
\retval ::HI_ERR_AO_SOUND_NOT_OPEN    Sound device is not opened. CNcomment:Sound设备未打开 CNend
\retval ::HI_ERR_AO_INVALID_PARA        The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_AO_INVALID_ID      The parameter enSound is invalid. CNcomment:无效Sound ID CNend
\see \n
N/A
*/
HI_S32   HI_UNF_SND_SetPortMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute);

/**
\brief Obtains the mute status of AO ports. CNcomment:获取音频输出的静音开关状态 CNend
\attention the function is same of HI_UNF_SND_GetMute when enOutPort is HI_UNF_SND_OUTPUTPORT_ALL.CNcomment:当enOutPort为HI_UNF_SND_OUTPUTPORT_ALL时，此函数作用同HI_UNF_SND_GetMute一样\n
N/A
\param[in] enSound CNcomment:
\param[in] enOutPort CNcomment:sound输出端口 CNend
\param[out] pbMute CNcomment:
\retval ::HI_SUCCESS Success CNcomment:成功 CNend
\retval ::HI_FAILURE FAILURE CNcomment:失败 CNend
\retval ::HI_ERR_AO_SOUND_NOT_OPEN    Sound device is not opened. CNcomment:Sound设备未打开 CNend
\retval ::HI_ERR_AO_NULL_PTR           The pointer is null. CNcomment:指针参数为空 CNend
\retval ::HI_ERR_AO_INVALID_PARA        The parameter is invalid. CNcomment:无效的参数 CNend
\retval ::HI_ERR_AO_INVALID_ID      The parameter enSound is invalid. CNcomment:无效Sound ID CNend
\see \n
N/A
*/
HI_S32 HI_UNF_SND_GetPortMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /*__HI_UNF_SND_H__*/

