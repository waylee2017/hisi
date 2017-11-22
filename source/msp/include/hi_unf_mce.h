/******************************************************************************

  Copyright (C), 2001-2011, HiSilicon Technologies Co., Ltd.

 ******************************************************************************
  File Name     : hi_unf_mce.h
  Version       : Initial Draft
  Author        : HiSilicon multimedia software group
  Created       : 2011-xx-xx
  Description   : hi_unf_mce.h header file
  History       :
  1.Date        : 2011/xx/xx
    Author      : 
    Modification: This file is created.

******************************************************************************/
/**
 * \file
 * \brief Describes the logo and play contents and related configuration information.
 */
#ifndef __HI_UNF_MCE_H__
#define __HI_UNF_MCE_H__

#include "hi_unf_common.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_ecs.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif  /* End of #ifdef __cplusplus */

/********************************Struct Definition********************************/
/** \addtogroup      MCE */
/** @{ */  /** <!-- [MCE CONFIG] */

/** The name of the fastplay area must be the same as that in the flash memory.*/
#define MTD_FASTPLAY_NAME  "fastplay"
#define MTD_LOGO_NAME "logo"
#define MTD_BASEPARAM_NAME "baseparam"
/**<The fastplay area is divided into five parts:
CNcomment: fastplay 区域被划分为5个部分:
 	1, base param part,  8KB
 	2, logo param part,  8KB
 	3, logo data part,   XKB
 	4, play param part,  8KB
 	5, play data part,	fastplay total size - 24KB - XKB
 */
#define PART_DEFT_PARA_SIZE		0x2000

/** play attr*//**CNcomment: 播放属性*/
typedef enum	hiUNF_PIC_PLAYMODE
{
    HI_UNF_PIC_PLAYMODE_LOOP,  	/**<Play loop*//**<CNcomment:循环*/
    HI_UNF_PIC_PLAYMODE_ONE,   	/**<Play one time*//**<CNcomment:一次*/
    HI_UNF_PIC_PLAYMODE_BYTIME, /**<Play loop by time*//**<CNcomment:通过时间循环*/
    HI_UNF_PIC_PLAYMODE_BUTT
}HI_UNF_PIC_PLAYMODE;

/** Common attributes *//**CNcomment:公共属性 */
typedef struct hiUNF_PIC_COMMINFO
{
    HI_U32 		            uCount;         	/**<Number of pictures*//**<CNcomment:图片数量*/
    HI_U32                  u32Xpos;        	/**<The x start postion in canvas*//**<CNcomment:在canvas中的x起始位置*/
    HI_U32                  u32Ypos;        	/**<The y start postion in canvas*//**<CNcomment:在canvas中的y起始位置*/
    HI_U32                  u32Width;        	/**<The display width in canvas*//**<CNcomment:在canvas中的显示宽度 */
    HI_U32                  u32Height;        	/**<The display height in canvas*//**<CNcomment:在canvas中的显示高度 */
    HI_U32                  BGColor;         	/**<Background color*//**<CNcomment:背景颜色*/  
    HI_UNF_PIC_PLAYMODE     PlayMode;           /**<Play mode*//**<CNcomment:播放模式*/
    HI_U32                  uLoopCount;         /**<Loopcount,0xfffffff means play util user stop it*//**<CNcomment:循环次数，loopcount,0xfffffff means play util user stop it*/
    HI_U32 	                uPlaySecond;        /**<Time of play(second)*//**<CNcomment:播放时间 time for play(second)*/
    HI_S8                   chVersion[8];

    HI_U32		            u32ScreenXpos;		/**<Screen X pos*//**<CNComment: 屏幕X坐标*/
	HI_U32		            u32ScreenYpos;		/**<Screen Y pos*//**<CNComment: 屏幕Y坐标*/
	HI_U32		            u32ScreenWidth;		/**<Screen Width*//**<CNComment: 屏幕宽度*/
	HI_U32		            u32ScreenHeight;	/**<Screen Height*//**<CNComment: 屏幕高度*/
	HI_U32		            u32ScreenBGColor;	/**<Screen Background color*//**<CNComment: 屏幕背景色*/

 }HI_UNF_PIC_COMMINFO;

/**Picture attributes *//**CNcomment:图片属性*/
typedef struct hiUNF_PIC_PICTURE
{
	HI_U32          u32FileAddr;	/**<Physical address*//**<CNcomment:物理地址*/
	HI_U32          u32FileLen;		/**<File length*//**<CNcomment:文件大小*/
	HI_U32          u32Xpos;    	/**<x start position*//**<CNcomment:x 起始位置*/
	HI_U32          u32Ypos;		/**<y start position*//**<CNcomment:y 起始位置*/
	HI_U32          u32Width;		/**<width*//**<CNcomment:宽度*/
	HI_U32          u32Height;		/**<height*//**<CNcomment:高度*/
	HI_U32          u32DelayTime;	/**<Delay time*//**<CNcomment:延迟时间 */
}HI_UNF_PIC_PICTURE;


/**Base config information*//** CNcomment:基本配置信息*/
typedef struct hiUNF_MCE_BASE_PARAM_S
{
	HI_UNF_ENC_FMT_E hdFmt;				/**<High-definition (HD) video format*//**<CNcomment:高清视频制式 */
	HI_UNF_ENC_FMT_E sdFmt;				/**<Standard-definition (SD) video format*//**<CNcomment:标清视频制式  */
	HI_UNF_DISP_INTF_TYPE_E hdIntf;		/**<HD channel type*//**<CNcomment:高清通道类型*/
  	HI_UNF_DISP_INTF_TYPE_E sdIntf;		/**<SD channel type*//**<CNcomment:标清通道类型*/
	HI_UNF_DISP_INTERFACE_S DacMode;	/**<Digital-to-analog converter (DAC) mode*//**<CNcomment:DAC 模式 */
	HI_U32 layerformat;					/**<Layer pixel format*//**<CNcomment:图层像素格式*/
	HI_U32 inrectwidth;					/**<Input width*//**<CNcomment:输入宽度 */
	HI_U32 inrectheight;				/**<Input height*//**<CNcomment:输入高度*/
	
	HI_U32 u32Top;
	HI_U32 u32Left;
	
	unsigned int u32HuePlus;
	unsigned int u32Saturation;
	unsigned int u32Contrast;
	unsigned int u32Brightness;
	HI_UNF_DISP_BG_COLOR_S enBgcolor;
	HI_UNF_ASPECT_RATIO_E enAspectRatio;
	HI_UNF_ASPECT_CVRS_E enAspectCvrs;
	HI_UNF_DISP_MACROVISION_MODE_E enDispMacrsn;
	
}HI_UNF_MCE_BASE_PARAM_S;


/**Logo configuration parameters*//** CNcomment: logo 配置信息 */
typedef struct hiUNF_MCE_LOGO_PARAM_S
{
	HI_U32 logoflag;          			/**<Is logo display or not,0:not 1:yes*//**<CNcomment:logo显示标志，0：不显示，1：显示*/
	HI_U32 contentLen;					/**<Size of the logo data*//**<CNcomment:logo data 的大小*/
	//HI_U32 dispTime;					/**<Display time*//**<CNcomment:显示时间*/
	unsigned int u32XPos;				/**<Display x position offset*//**<CNcomment: 显示x 坐标偏移量*/
	unsigned int u32YPos;				/**<Display y position offset*//**<CNcomment: 显示y 坐标偏移量*/
	unsigned int u32OutWidth;			/**<Display output width*//**<CNcomment: 显示图片输出的宽度*/
	unsigned int u32OutHeight;			/**<Display output height*//**<CNcomment: 显示图片输出的高度*/
	unsigned int u32BgColor;			/**<Display output backgrand color*//**<CNcomment: 显示图片输出的背景色*/
}HI_UNF_MCE_LOGO_PARAM_S;

/**fastplay supports the decoding mode of audio output (AO)*//**CNcomment:fastplay 支持的AO解码格式 */
typedef enum hiUNF_MCE_ADEC_TYPE_E
{
	HI_UNF_MCE_ADEC_TYPE_MP2 = 0,		/**<MP2 format*//**<CNcomment:MP2 制式 */
	HI_UNF_MCE_ADEC_TYPE_MP3 = 1,		/**<MP3 format*//**<CNcomment:MP3 制式 */
	HI_UNF_MCE_ADEC_TYPE_BUTT			/**<Invalid format*//**<CNcomment:无效 制式 */
}HI_UNF_MCE_ADEC_TYPE_E;

/**fastplay supports the decoding mode of video output (VO)*//**CNcomment:fastplay 支持的VO解码格式 */
typedef enum hiUNF_MCE_VDEC_TYPE_E
{
	HI_UNF_MCE_VDEC_TYPE_MPEG2 = 0,		/**<MPEG2 format*//**<CNcomment:MPEG2  制式 */
	HI_UNF_MCE_VDEC_TYPE_MPEG4 = 1,		/**<MPEG4 format*//**<CNcomment:MPEG4  制式 */
	HI_UNF_MCE_VDEC_TYPE_H264  = 2,		/**<H264 format*//**<CNcomment:H264  制式 */
	HI_UNF_MCE_VDEC_TYPE_AVS   = 3,		/**<AVS format*//**<CNcomment:AVS   制式 */
	HI_UNF_MCE_VDEC_TYPE_BUTT			/**<Invalid format*//**<CNcomment:无效 制式 */
}HI_UNF_MCE_VDEC_TYPE_E;



/**Parameters for digital video broadcasting (DVB) play configuration*//**CNcomment:DVB配置信息  */
typedef struct hiUNF_MCE_DVB_PARAM_S
{
	HI_U32 PcrPid;						/**<Program clock reference (PCR) packet ID (PID)*//**<CNcomment:pcr pid*/
	HI_U32 u32PlayTime;				    /*<Play time *//*<CNcomment:播放时间 */
	HI_U32 VElementPid;					/**<Video PID*//**<CNcomment:视频 pid*/
	HI_U32 AElementPid;					/**<Audio PID*//**<CNcomment:音频 pid*/
	HI_UNF_MCE_VDEC_TYPE_E VideoType;	/**<Video type*//**<CNcomment:视频 类型*/
	HI_UNF_MCE_ADEC_TYPE_E AudioType;	/**<Audio type*//**<CNcomment:音频 类型*/
	HI_U32 tunerId;						/**<Tuner ID. The default value is 0.*//**<CNcomment:tuner Id ，默认值是0*/
	HI_U32 tunerFreq;					/**<Tuner frequency*//**<CNcomment:tuner 频率*/
	HI_U32 tunerSrate;					/**<tuner symbol rate*/
	HI_U32 tunerQam;					/**<Tuner quadrature amplitude modulation (QAM)*//**<CNcomment:tuner QAM */
	HI_U32 volume;						/**<volume of output*/
	HI_UNF_TRACK_MODE_E trackMode;		/**<Track mode. Only HI_UNF_TRACK_MODE_STEREO is supported.*//**<CNcomment:仅支持立体声*/
	HI_UNF_VO_DEV_MODE_E devMode;		/**<Working mode of the VO device*//**<CNcomment:dev 的 vo 模式  */
    HI_UNF_TUNER_DEV_TYPE_E          tunerDevType;
	HI_UNF_DEMOD_DEV_TYPE_E          demoDev;
	HI_UNF_TUNER_I2cChannel_E        I2cChannel; 
}HI_UNF_MCE_DVB_PARAM_S;

/**Play parameter configuration of transport stream (TS) files*//**CNcomment:TS文件配置信息 */
typedef struct hiUNF_MCE_TSFILE_PARAM_S
{
	HI_U32 contentLen;					/**<File length*//**<CNcomment:文件长度 */
	HI_BOOL IsCycle;					/**<Default cycle*//**<CNcomment:是否循环，默认为循环*/
	HI_U32   u32PlayTime;				/**<Play time *//**<CNcomment:播放时间 */
	HI_U32 PcrPid;						/**<pcr pid*/
	HI_U32 VElementPid;					/**<Video PID*//**<CNcomment:视频 pid*/	
	HI_U32 AElementPid;					/**<Audio PID*//**<CNcomment:音频 pid*/
	HI_UNF_MCE_VDEC_TYPE_E VideoType;	/**<Video type*//**<CNcomment:视频 类型*/
	HI_UNF_MCE_ADEC_TYPE_E AudioType;	/**<Audio type*//**<CNcomment:音频 类型*/
	HI_U32 volume;						/**<volume of output*/
	HI_UNF_TRACK_MODE_E trackMode;		/**<Track mode. Only HI_UNF_TRACK_MODE_STEREO is supported.*//**<CNcomment:仅支持立体声*/
	HI_UNF_VO_DEV_MODE_E devMode;		/**<vo mode of dev *//**<CNcomment:dev 的 vo 模式  */
}HI_UNF_MCE_TSFILE_PARAM_S;


/**Parameter configuration of animation*//**CNcomment:animation模式配置信息 */
typedef struct hiUNF_MCE_GPHFILE_PARAM_S
{
	HI_UNF_PIC_COMMINFO comInfo;	   /**<Animation common information*/
	HI_UNF_PIC_PICTURE	*ppicInfo;	   /**<Animation picture display information*/
}HI_UNF_MCE_GPHFILE_PARAM_S;


/**Play type*//**CNcomment:播放类型*/
typedef enum hiUNF_MCE_PLAY_TYPE_E
{
	HI_UNF_MCE_TYPE_PLAY_DVB	 = 0, 	/**<DVB type*/ /**<CNcomment:DVB 类型 */ 
	HI_UNF_MCE_TYPE_PLAY_TSFILE  = 1,   /**<TS file type*/ /**<CNcomment:ts 文件类型 */ 
	HI_UNF_MCE_TYPE_PLAY_GPHFILE = 2,  	/**<Image animation file type*//**<CNcomment:animation 类型 */ 
	HI_UNF_MCE_TYPE_PLAY_BUTT  			/**<Invalid type *//**<CNcomment:无效类型 */
}HI_UNF_MCE_PLAY_TYPE_E;


/**The fastplay part that will be operated.*//**CNcomment:fastplay分区信息 */
typedef enum hiUNF_PARTION_TYPE_E
{
	HI_UNF_PARTION_TYPE_BASE  = 0,  	 /**<Configuration related to video display*//**<CNcomment:base 配置信息 */ 
	HI_UNF_PARTION_TYPE_LOGO  = 1,  	 /**<Logo configuration and logo data*//**<CNcomment:logo 配置信息和数据 */
	HI_UNF_PARTION_TYPE_PLAY  = 2, 	 	/**<Play configuration and play data*//**<CNcomment:play 配置信息和数据*/
	HI_UNF_PARTION_TYPE_BUTT  = 3		/**<Invalid operation *//**<CNcomment:无效操作 */
}HI_UNF_PARTION_TYPE_E;


/**Play configuration*//**CNcomment:播放配置信息 */
typedef struct hiUNF_MCE_PLAY_PARAM_S
{
	HI_UNF_MCE_PLAY_TYPE_E playType;				/**<Play type*//**<CNcomment:播放类型*/
	HI_U32 fastplayflag;                            /**<The fastplay is play or not. 0: not play, 1:play*//**<CNcomment:是否播放 ;0 :不播放, 1:播放*/
	union 
	{
		HI_UNF_MCE_DVB_PARAM_S     dvbParam;		/**<DVB configuration *//**<CNcomment:DVB 配置信息 */
		HI_UNF_MCE_TSFILE_PARAM_S  tsFileParam;	    /**<TS configuration *//**<CNcomment:ts 配置信息 */
		HI_UNF_MCE_GPHFILE_PARAM_S gphFileParam;	/**<Animation configuration *//**<CNcomment:animation 配置信息 */
 	}param;
}HI_UNF_MCE_PLAY_PARAM_S;

/** MCE stop mode */
typedef enum hiUNF_MCE_STOPMODE_E
{
    HI_UNF_MCE_STOPMODE_STILL = 0,  /**< MCE stop with last frame  */ /**<CNcomment: stop后保留最后一帧*/
    HI_UNF_MCE_STOPMODE_BLACK = 1,  /**< MCE stop with black frame */ /**<CNcomment: stop后黑屏*/
    HI_UNF_MCE_STOPMODE_BUTT
} HI_UNF_MCE_STOPMODE_E;

/** MCE stop parameter*/
typedef struct hiUNF_MCE_STOPPARM_S
{
	HI_UNF_MCE_STOPMODE_E enStopMode; /**< MCE stop mode */ /**<CNcomment: fastplay 停止模式：0 静帧，1 黑屏 */
	HI_HANDLE hNewWin;   				/**< MCE stop with still mode ,the need user create new windou handle */ /**<CNcomment: */
	HI_U32 u32PlayTime;					/**< MCE least playing time before stop . unit: s.if set u32PlayTime parameter available ,then need set  u32PlayCount to 0.*/ /**<CNcomment: 动画或者视频最少的播放时间，单位: 秒。 该值设为非零时，u32PlayCount必需设为0*/
	HI_U32 u32PlayCount;				/**< MCE least playing count before stop. unit: cycle .if set u32PlayCount parameter available ,then need set u32PlayTime to 0 */ /**<CNcomment: 动画或者视频的播放的最少次数，单位: 次。该值设为非零时，u32PlayTime必需设为0 */
} HI_UNF_MCE_STOPPARM_S;

/** MCE is Ended parameter*/
typedef struct hiUNF_MCE_PLAYCURSTATUS_S
{
	HI_BOOL isEnded; /**< whether MCE is ended */ /**<CNcomment: fastplay 是否已停止 */
    HI_U32   playedTime; /**< how much time MCE has played*/ /**<CNcomment: fastplay 已经播放的时间长度 */
} HI_UNF_MCE_PLAYCURSTATUS_S;


/** @} */  /** <!-- ==== Struct Definition end ==== */


/********************************API declaration********************************/
/** \addtogroup      MCE */
/** @{ */  /** <!-- [MCE CONFIG]*/

/**
\brief  clear boot logo  CNcomment:清空开机logo CNend
\attention \n
this use to clear boot logo when  noly boot logo change to video
CNcomment: 只有烧开机logo 的情况下，启动应用视频前，先清空开机logo CNend
\param N/A
\retval ::HI_SUCCESS 
\retval ::HI_FAILURE 
\see \n
N/A
*/
HI_S32 HI_UNF_MCE_ClearLogo(HI_VOID);

/**
\brief  stop fastplay and destrory fastplay source CNcomment:停止fastplay,销毁fastplay资源 CNend
\attention \n
this function realized stop fastplay with black frame or still frame manner.can be set u32PlayTime or u32PlayCount begore stop.
if set them nonzero at the same time that is invalid .if set them to zore ,then call this functiom with no block.  if you want to realize
change to user app  smoothly, you need input avalid hNewWin handle parameter.
CNcomment: 调用本接口可实现fastplay 视频播放的停止，可以选择静帧停止，也可以选择黑屏停止，
可以设置停止播放前的最短播放时间u32PlayTime或最小循环次数u32PlayCount，两者都设为非0 值无效，
两者都设为0表示非阻塞。两参数只能设置以一种有效。如果要实现 静帧平滑切换，
需要用户传入有效的hNewWin  句柄.CNend
	
\param[in]  pstStopParam  Fastplay  stop parameter

\retval ::HI_SUCCESS 
\retval :: HI_FAILURE   			Failure
\retval ::HI_ERR_MCE_PARAM_INVALID  Parameter invalid 
\retval ::HI_ERR_MCE_PTR_NULL	NULL pointer

\see \n
N/A
*/
HI_S32 HI_UNF_MCE_Stop(HI_UNF_MCE_STOPPARM_S *pstStopParam);

/**
\brief  get current fastplay status  CNcomment:得到当前FastPlay播放状态 CNend
\attention \n
\param[out]  pPlayCurStatus current fastplay status.  CNcomment:Fastplay当前的播放状态 CNend
\retval ::HI_SUCCESS 
\retval :: HI_FAILURE   			Failure
\see \n
N/A
*/
HI_S32 HI_UNF_MCE_GetPlayCurStatus(HI_UNF_MCE_PLAYCURSTATUS_S *pPlayCurStatus);

/** 
\brief init mce  CNcomment:MCE配置初始化接口 CNend
\attention \n
Initializes the media control engine (MCE) for preparing other operations.
CNcomment:使用MCE配置工作首先调用该接口 CNend
\param[in]  PartType  Part to be operated  CNcomment:该配置涉及到的分区 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_OPEN_ALREADY  The MCE is already opened.  CNcomment:设备已经打开 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid.  CNcomment:参数错误 CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有默认分区 CNend
\retval ::HI_ERR_MCE_MTD_INFO      The size is insufficient for loading data. CNcomment:实际分区尺寸不满足配置涉及的大小 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_E  PartType);

/** 
\brief deinit mce  CNcomment:MCE配置去初始化接口 CNend
\attention \n
Destroys all MCE resources.  CNcomment:完成MCE配置工作最终调用该接口 CNend
\param N/A
\retval N/A
\see \n
N/A
*/
HI_VOID HI_UNF_MCE_deInit(HI_VOID);

/** 
\brief Obtains the basic configuration information.  CNcomment:获取BASE配置区信息 CNend
\attention \n
N/A
\param[in]  baseParam   Pointer to the basic parameters.  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS    Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_READ      The read operation fails. CNcomment:分区读取错误 CNend
\retval ::HI_ERR_MCE_BASE_INFO     Get information fails. CNcomment:由分区中获取信息错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetBaseParam(HI_UNF_MCE_BASE_PARAM_S *baseParam);


/** 
\brief Modifies the basic configuration information.  CNcomment:更新BASE配置区信息 CNend
\attention \n
N/A
\param[in]  baseParam Pointer to the basic parameters.  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_BASE_INFO     The config information is error.  CNcomment:配置信息错误 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_UpdateBaseParam(HI_UNF_MCE_BASE_PARAM_S *baseParam);

/** 
\brief Obtains the basic configuration information from the flash memory.  
CNcomment:获取LOGO配置区信息 CNend
\attention \n
N/A
\param[in]  logoParam   Pointer to the logo parameter  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails.  CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_READ      The read operation fails.  CNcomment:分区读取错误 CNend
\retval ::HI_ERR_MCE_LOGO_INFO     Get information from partition error. CNcomment:由分区中获取信息错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetLogoParam(HI_UNF_MCE_LOGO_PARAM_S *logoParam);

/** 
\brief Modifies the configuration of the logo parameter.  CNcomment:更新LOGO配置区信息 CNend
\attention \n
Update logo parameter, you must invoke this function befor update data of logo
\CNcomment:更新logo参数，在更新logo内容前必须先调用此函数 CNend
\param[in]  logoParam   Pointer to the logo parameter  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_LOGO_INFO     The config infogmation is error.  CNcomment:配置信息错误 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_UpdateLogoParam(HI_UNF_MCE_LOGO_PARAM_S *logoParam);


/** 
\brief Obtains the logo data from the flash memory. CNcomment:获取LOGO内容区信息 CNend
\attention \n
N/A
\param[in]  content Pointer to the logo data that is written from the flash memory CNcomment:内容buf指针 CNend
\param[in]  size  Size of the logo data to be written  CNcomment:内容长度 CNend
\retval ::HI_SUCCESS  Success CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid. CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_READ      The read operation fails. CNcomment:分区读取错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetLogoContent(HI_U8 *content, HI_U32 size);


/** 
\brief Modifies the logo data.  CNcomment:更新LOGO内容区信息 CNend
\attention \n
Update data in logo partition, You must invoke HI_UNF_MCE_UpdateLogoParam to update logo parameter before invoke this function
\CNcomment:更新logo内容，在此函数之前必须先调用HI_UNF_MCE_UpdateLogoParam函数更新logo参数 CNend
\param[in]  content   Pointer to the logo data that is read from the flash memory  CNcomment:内容buf指针 CNend
\param[in]  size   Size of the logo data to be read  CNcomment:内容长度 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid.  CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails.  CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails.  CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails.  CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_UpdateLogoContent(HI_U8 *content, HI_U32 size);

/** 
\brief Obtains the playing configuration information.  CNcomment:获取PLAY配置区信息 CNend
\attention \n
N/A
\param[in]  playParam   Playing configuration information  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_READ      The read operation fails. CNcomment:分区读取错误 CNend
\retval ::HI_ERR_MCE_PLAY_INFO     Get information fails.  CNcomment:由分区中获取信息错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails.  CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetPlayParam(HI_UNF_MCE_PLAY_PARAM_S *playParam);

/** 
\brief   Modifies the playing configuration information.  CNcomment:更新PLAY配置区信息 CNend
\attention \n 
Update play parameter, you must invoke this function befor update data of play
\CNcomment:更新play参数，在更新play内容前必须先调用此函数 CNend
\param[in]  playParam  Playing configuration information  CNcomment:参数指针 CNend
\retval ::HI_SUCCESS    Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PLAY_INFO     The config information is invalid. CNcomment:配置信息错误 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_UpdatePlayParam(HI_UNF_MCE_PLAY_PARAM_S *playParam);

/** 
\brief Obtains the data being playing from the flash memory.  CNcomment:获取PLAY内容区信息 CNend
\attention \n
N/A
\param[in]  content Pointer to the data that is read from the flash memory  CNcomment:内容buf指针 CNend
\param[in]  size  Size of the data being played that is read from the flash memory  CNcomment:内容长度 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID  The parameter is invalid. CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_READ      The read operation fails. CNcomment:分区读取错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetPlayContent(HI_U8 *content, HI_U32 size);


/** 
\brief Updates the playing data part. CNcomment:更新PLAY内容区信息 CNend
\attention \n
Update data in play partition, You must invoke HI_UNF_MCE_UpdatePlayParam to update plat parameter before invoke this function
\CNcomment:更新play内容，在此函数之前必须先调用HI_UNF_MCE_UpdatePlayParam函数更新play参数 CNend
\param[in]  content  Pointer to the data that is written to the flash memroy  CNcomment:内容buf指针 CNend
\param[in]  size  Size of the data being played  CNcomment:内容长度 CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid. CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_UpdatePlayContent(HI_U8 *content, HI_U32 size);


/** 
\brief  Enables or disables the logo.  CNcomment:打开或者关闭logo CNend
\attention \n
N/A
\param[in]  bLogoOpen Logo enable  CNcomment:bLogoOpen设置为HI_TRUE为开logo，HI_FALSE为关闭logo CNend
\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid. CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/

HI_S32  HI_UNF_MCE_SetLogoFlag(HI_BOOL bLogoOpen);

/** 
\brief Starts or stops playing. CNcomment:打开或者关闭Fastplay CNend
\attention \n
N/A
\param[in]  bPlayOpen: Playing enable  CNcomment:bLogoOpen设置为HI_TRUE为开Fastplay，HI_FALSE为关闭Fastplay CNend
\retval ::HI_SUCCESS  Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid.  CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails.  CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails.  CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails.  CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_SetFastplayFlag(HI_BOOL bPlayOpen);

/** 
\brief  Obtains the status of the logo.  CNcomment:获取logo的打开或者关闭Flag CNend
\attention \n
N/A
\param[out]  pbLogoOpen Flag indicating the status of the logo  CNcomment:获取logo的(打开或关闭)Flag的指针 CNend

\retval ::HI_SUCCESS    Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null.  CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist.  CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid.  CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails.   CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails.  CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails.  CNcomment:分区关闭错误 CNend

\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetLogoFlag(HI_BOOL *pbLogoOpen);

/** 
\brief Obtains the playing status.  CNcomment:获取Fastplay的打开或者关闭Flag CNend
\attention \n
N/A

\param[out]  pbPlayOpen Flag indicating the playing status  CNcomment:获取Fastplay的(打开或关闭)Flag的指针 CNend

\retval ::HI_SUCCESS   Success  CNcomment:成功 CNend
\retval ::HI_ERR_MCE_PTR_NULL      The pointer is null. CNcomment:参数指针NULL CNend
\retval ::HI_ERR_MCE_MTD_NOFIND    This part does not exist. CNcomment:没有该分区 CNend
\retval ::HI_ERR_MCE_PARAM_INVALID The parameter is invalid. CNcomment:参数无效 CNend
\retval ::HI_ERR_MCE_MTD_OPEN      The open operation fails. CNcomment:分区打开错误 CNend
\retval ::HI_ERR_MCE_MTD_WRITE     The write operation fails. CNcomment:分区写入错误 CNend
\retval ::HI_ERR_MCE_MTD_CLOSE     The close operation fails. CNcomment:分区关闭错误 CNend
\see \n
N/A
*/
HI_S32  HI_UNF_MCE_GetFastplayFlag(HI_BOOL *pbPlayOpen);

/** @} */  /** <!-- ==== API declaration end ==== */


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif



