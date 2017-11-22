/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_avctr.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-14
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_AVCTR_H__ /* 防止头文件被重复引用 */
#define	__MLM_AVCTR_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/

/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
typedef enum _m_av_streamtype_e
{
    MM_STREAMTYPE_INVALID =   0,
    /* None : Invalid type                         */
    MM_STREAMTYPE_MP1V    =   1,
    /* Video    : MPEG1                                */
    MM_STREAMTYPE_MP2V    =   2, 
    /* Video    : MPEG2                                */
    MM_STREAMTYPE_MP4V    =   3,
    /* Video    : H264                                 */
    MM_STREAMTYPE_MP1A    =   4, 
    /* Audio    : MPEG 1 Layer I                       */
    MM_STREAMTYPE_MP2A    =   5,
    /* Audio    : MPEG 1 Layer II                      */
    MM_STREAMTYPE_MP4A    =   6, 
    /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
    MM_STREAMTYPE_TTXT    =   7, 
    /* Teletext : Teletext pid                         */
    MM_STREAMTYPE_SUBT    =   8, 
    /* Subtitle : Subtitle pid                         */
    MM_STREAMTYPE_PCR     =   9, 
    /* Synchro  : PCR pid                              */
    MM_STREAMTYPE_AC3     =  10, 
    /* Audio    : AC3                                  */
    MM_STREAMTYPE_H264    =  11,
    /* Video    : H264                                 */
    MM_STREAMTYPE_MPEG4P2 =  12,
    /* Video    : MPEG4 Part II                        */
    MM_STREAMTYPE_VC1     =  13, 
    /* Video    : Decode Simple/Main/Advanced profile  */
    MM_STREAMTYPE_AAC     =  14, 
    /* Audio    : Decode ADTS - AAC                    */
    MM_STREAMTYPE_HEAAC   =  15, 
    /* Audio    : Decoder LOAS / LATM - AAC            */
    MM_STREAMTYPE_WMA     =  16, 
    /* Audio    : WMA,WMAPRO                           */
    MM_STREAMTYPE_DDPLUS  =  17, 
    /* Audio    : DD+ Dolby digital                    */
    MM_STREAMTYPE_DTS     =  18,
    /* Audio    : DTS                                  */
    MM_STREAMTYPE_MMV     =  19, 
    /* Video    : Multimedia content                   */
    MM_STREAMTYPE_MMA     =  20,
    /* Audio    : Multimedia content                   */
    MM_STREAMTYPE_AVS     =  21, 
    /* Video    : AVS Video format                     */
    MM_STREAMTYPE_OTHER   = 255  
    /* Misc     : Non identified pid                   */
} MMT_AV_StreamType_E;		

typedef struct _m_av_streamdata_t
{
    MMT_AV_StreamType_E  Type;
    MET_PTI_PID_T        Pid;
} MST_AV_StreamData_T;

typedef enum _m_av_videoscaleparams_e
{
	MM_VIDEO_ASPECT_RATIO_AUTO,
    MM_VIDEO_ASPECT_RATIO_16_9_PILLAR,
    MM_VIDEO_ASPECT_RATIO_16_9_PAN,
    MM_VIDEO_ASPECT_RATIO_4_3_LETTER,
    MM_VIDEO_ASPECT_RATIO_4_3_PAN,
    MM_VIDEO_ASPECT_RATIO_4_3_FULL,
    MM_VIDEO_ASPECT_RATIO_16_9_WIDE
}MMT_AV_VideoAspectRatio_E;

typedef enum _m_av_sdvideomode_e
{
    MM_VIDEO_MODE_AUTO,
    MM_VIDEO_MODE_PAL,
    MM_VIDEO_MODE_NTSC,
}MMT_AV_SDVideoMode_E;

typedef enum _m_av_hdresolution_e
{
    MM_AV_RESOLUTION_AUTO,
    MM_AV_RESOLUTION_AUTO_N,
    MM_AV_RESOLUTION_AUTO_P,
    MM_AV_RESOLUTION_1080p_A,
    MM_AV_RESOLUTION_1080p_N,
    MM_AV_RESOLUTION_1080p_P,
    MM_AV_RESOLUTION_1080i_A,
    MM_AV_RESOLUTION_1080i_N,
    MM_AV_RESOLUTION_1080i_P,
    MM_AV_RESOLUTION_720p_A,
    MM_AV_RESOLUTION_720p_N,//10
    MM_AV_RESOLUTION_720p_P,
    MM_AV_RESOLUTION_576p_P,
    MM_AV_RESOLUTION_576i_P,
    MM_AV_RESOLUTION_480p_N,
    MM_AV_RESOLUTION_480i_N,
}MMT_AV_HDResolution_E;

typedef enum _m_av_audiomedia_tpye_e
{
    MM_AUDIO_MEDIA_TYPE_ES,
    MM_AUDIO_MEDIA_TYPE_PCM,
    MM_AUDIO_MEDIA_TYPE_MP3,
    MM_AUDIO_MEDIA_TYPE_UNKNOW
}MMT_AV_AudioMediaTpye_E;

typedef struct _m_av_media_Pcm_t
{
    MBT_U32 freq;/* 采样率*/
    MBT_U8 endian;/* 高低字节顺序,1表示高字节在前，0表示低字节在前*/
    MBT_U8 channel;/*0表示双通道，1表示单通道*/
    MBT_U8 u8DataPrecision;/*数据的类型8或者16，8表示8位的数据，16表示16位的数据*/
}MST_AV_MediaPcm_T;

typedef enum _m_av_StereoMode_e
{
    MM_AUD_MONO_RIGHT = 1,
    MM_AUD_MONO_LEFT = 2,
    MM_AUD_DUAL_STEREO = 3
}MMT_AV_StereoMode_E;

typedef enum _m_av_voutMode_e
{
    MM_AV_VOUT_AUTO = 0,
    MM_AV_VOUT_YUV = 1,
    MM_AV_VOUT_YC = 2
} MMT_AV_VOutMode_E;


typedef enum _m_av_playrecspeed_e
{
    MM_AV_PLAYSPEED_ID_NONE,
    MM_AV_PLAYSPEED_ID_REV128,/*128倍速快退*/
    MM_AV_PLAYSPEED_ID_REV64,/*64倍速快退*/
    MM_AV_PLAYSPEED_ID_REV32,/*32倍速快退*/
    MM_AV_PLAYSPEED_ID_REV16, /*16倍速快退*/
    MM_AV_PLAYSPEED_ID_REV08, /*8倍速快退*/
    MM_AV_PLAYSPEED_ID_REV04, /*4倍速快退*/
    MM_AV_PLAYSPEED_ID_REV02, /*2倍速快退*/
    MM_AV_PLAYSPEED_ID_REV01,/*1倍速退*/
    MM_AV_PLAYSPEED_ID_ZERO,	 
    MM_AV_PLAYSPEED_ID_FWD01, /*1倍速进*/
    MM_AV_PLAYSPEED_ID_FWD02, /*2倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD04, /*4倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD08, /*8倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD16,/*16倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD32,/*32倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD64,/*64倍速快进*/
    MM_AV_PLAYSPEED_ID_FWD128,/*128倍速快进*/
    MM_AV_PLAYSPEED_ID_END_SLOW_REV2,/*1/4倍速慢退*/
    MM_AV_PLAYSPEED_ID_SLOW_REV1,/*1/2倍速慢退*/
    MM_AV_PLAYSPEED_ID_SLOW_FWD1,/*1/2倍速慢进*/
    MM_AV_PLAYSPEED_ID_SLOW_FWD2/*1/4倍速慢进*/
}MMT_AV_PlayRecSpeed_E;

typedef enum _m_av_seekflags_e
{
    MM_AV_PLAY_SEEK_SET=0,
    MM_AV_PLAY_SEEK_CUR,
    MM_AV_PLAY_SEEK_END
} MMT_AV_SeekFlags_E;

typedef enum
{
    ///Decode error
    MM_AV_PLAY_DECODE_ERROR   = 0x00000001,
    ///First frame event
    MM_AV_PLAY_FIRST_FRAME    = 0x00000002,
    ///One frame decoded event
    MM_AV_PLAY_DECODE_ONE_FRAME = 0x00000004,
} MMT_AV_Event_e;

/*-----------------------Module Variables-------------------------*/
#define DEFAULT_BRIGHTNESS      50
#define DEFAULT_CONSTRACT       50
#define DEFAULT_SATURATION      50
#define DEFAULT_SHARPNESS       50
#define DEFAULT_HUE             19

#define M_PLAYREC_MAX_PIDS 16
/*-----------------------Module Functions-------------------------*/
/*
*视音频播放接口
*/
/*
*视音视播放模块用于视音频播放的启动停止及PID更新。
*任何接口都可能被重入，底层必须实现视音视播放模块各接口的互斥访问，
*不能存在两个接口同时被执行的情况。
*/

/*
*说明：播放音视频。
*输入参数：
*			u32PidNumber: pstPidList中包含的PID 个数。
*			pstPidList: 要播放的PID列表，每个PID有对应的媒体类型。
*          GetFirstFram:第一帧到来时调用此回调
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_Start(MBT_U32 u32PidNumber,MST_AV_StreamData_T * pstPidList,MBT_BOOL bAudioOpen,MBT_VOID(* GetFram)(MMT_AV_Event_e eEvent));

/*
*说明：开始当前节目的录制。录制生成的文件名字底层自动生成。生成文件名字不可覆盖已经存在的文件。
*输入参数：
*                         pstrMountName：录制节目流存放的目录。
*                         strFileName:录制节目流存放的目录的名字。在播放时同样把这个目录的名字传给底层。
*			u32PidNumber: pstPidList中包含的PID 个数。
*			pstPidList: 要播放的PID列表，每个PID有对应的媒体类型。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/

extern MMT_STB_ErrorCode_E BLSLMF_AV_StartRecPrg(MBT_CHAR * pstrMountName,MBT_CHAR * stringFileDir,MST_AV_StreamData_T * pstPidList,MBT_U32 u32PidNumber);

/*
*说明：结束当前节目的录制。
*输入参数：
*                        无。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/

extern MMT_STB_ErrorCode_E BLSLMF_AV_StopRecPrg(MBT_VOID);

/*
*说明：暂停当前节目的录制。
*输入参数：
*                        无。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_PauseRecPrg(MBT_VOID);

/*
*说明：重新开始录制当前已经暂停录制的节目。
*输入参数：
*                         无。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_ResumeRecPrg(MBT_VOID);

/*
*说明：播放一个已经录制好的节目文件。
*输入参数：
*                         strDirPathName：要播放的文件所在的目录。
*                         strFileName：要播放的文件名字。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_PlayRecFile(char * strDirPathName,char * strFileName);

/*
*说明：停止播放一个已经录制好的节目文件。
*输入参数：
*                         无。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_StopPlayRecFile(MBT_VOID);


/*
*说明：获取当前正在播放的已经录制的节目流的信息。如果当前没有播放录制的流则返回错误。
*输入参数：
*                         无。
*输出参数:
*			pu32StreamTotalTimeS：正在播放的流的总的时间。
*			pu32StreamTotalTimeS：正在播放的流的已经播放的时间。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_GetCurRecPrgInfo(MBT_U32 *pu32StreamTotalTimeS,MBT_U32 *pu32TimePlayedS);

/*
*说明：设置播放播放一个已经录制好的节目文件的速率。
*输入参数：
*                         stSpeed：播放速率。
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_PlayRecSetSpeed(MMT_AV_PlayRecSpeed_E stSpeed);

/*
*说明：定位播放时间。
*输入参数：
*                         u32SeekS：播放时间，单位是秒。
*                         stSeekMode：时间计算方式 
*输出参数:
*			无。
*		返回：
*		        BLSM_NO_ERROR:成功。
*	                 错误号：失败。
*/
extern MMT_STB_ErrorCode_E BLSLMF_AV_PlayRecFileSeek( MBT_U32 u32SeekS, MMT_AV_SeekFlags_E stSeekMode);
/*
*说明：注册视频状态改变回调函函数。当视频流的制式或宽高比改变时调用此回调函数来通知上层。
*输入参数：
*videoModeChangeCall：当节目流的制式或宽高比发生变化时调用此回调通知上层。
*输出参数:
*			无。
*		返回：
*		         无。
*/
extern MBT_VOID MLMF_AV_VideoModeNotify(MBT_VOID (*videoModeChangeCall)(
                                                                                                                                                  MMT_AV_SDVideoMode_E stVideoMode,
                                                                                                                                                  MMT_AV_VideoAspectRatio_E stVideoAspect));

/*
*说明：停止正在播放的AV。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_Stop(MBT_VOID);

/*
*说明：清除视频framebuffer。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_VideoClear(MBT_VOID);

/*
*说明：往视频缓冲区里注入数据，播放注入的数据。
*输入参数：
*			Data: 注入的数据。
*			Len: Data长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_VideoInjectFrame(MBT_U8 *data, MBT_U32 len);

/*
*说明：停止视频数据注入。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_VideoInjectStop(MBT_VOID);

/*
*说明：播放一段内存音频数据。
*输入参数：
*			MediaType: 播放媒体数据的类型，具体请看MMT_AV_AudioMediaTpye_E。
*			Data: 媒体数据。
*			Len: 数据长度。
*Param: 播放的相关参数，如果是PCM，则参数是MST_AV_MediaPcm_T结构，否则为MBT_ NULL。
*AudioPlayCompleteCall :音频数据播放完调用此函数通知上层
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_AudioPlayData(
                                                            MMT_AV_AudioMediaTpye_E MediaType,
                                                            MBT_U8* data,
                                                            MBT_U32 len,
                                                            MBT_VOID *param,
                                                            MBT_VOID (*AudioPlayCompleteCall)(MBT_U8* data )
                                                            );

/*
*说明：停止播放一段内存音频数据。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataStop(MBT_VOID);

/*
*说明：暂停播放一段内存音频数据。与MLMF_AV_AudioPlayDataResume成对调用。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataPause(MBT_VOID);

/*
*说明：重新开始播放一段内存音频数据。与MLMF_AV_AudioPlayDataPause成对调用。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
    


extern MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataResume(MBT_VOID);

/*
*说明：在不改变VIDEO PIDS的情况下，改变AUDIO PIDS，适用于多语言伴音的情况。
*输入参数：
*			PidsNum：PID的个数。
*			PLAYREC_StreamData：AUDIO 的PID。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_PlayChangeAudioPids(MBT_U32 PidsNum,MST_AV_StreamData_T *PLAYREC_StreamData);

/*
*视频图像接口
*/
/*
*说明：设置视频的电视制式。
*输入参数：
*			Mode: 电视制式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetVideoMode(MMT_AV_SDVideoMode_E mode);

/*
*说明：设置音频的声道。
*输入参数：
*			mode: 输入参数，声道模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/

extern MMT_STB_ErrorCode_E MLMF_AV_SetAudioMode(MMT_AV_StereoMode_E mode);
/*
*说明：设置视频的位置大小。还原视频是恢复到当前全屏的状态。
*输入参数：
*Port_X：显示在图层的x 坐标。
*Port_Y：显示在图层的y 坐标。
*Width：显示的视频区域宽,若其值为0则表示恢复全屏。
*Height：显示的视频区域高,若其值为0则表示恢复全屏。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetVideoWindow(	MBT_S32 Port_X,
																MBT_S32 Port_Y,
																MBT_U32 Width,
																MBT_U32 Height);

/*
*说明：打开视频播放窗口。可能存在重复打开的情况，底层需要考察当前状态，如果已经打开则直接返回正确。
*输入参数：
*无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_OpenVideoWindow (MBT_VOID);


/*
*说明：关闭视频播放窗口。可能存在重复关闭的情况，底层需要考察当前状态，如果已经关闭则直接返回正确。
*输入参数：
*无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_CloseVideoWindow (MBT_VOID);

/*
*说明：设置音频静音状态。
*输入参数：
*			Flag：输入参数， =1，静音，=0，恢复音量。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功
*			错误号：失败
*/

extern MMT_STB_ErrorCode_E MLMF_AV_SetMute(MBT_BOOL bMute);
/*
*说明：设置高清输出接口的显示模式（分辨率）,高清机顶盒专用，标清可把此函数放空。
*输入参数：
*			stResolution: 显示模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetHDOutVideoMode(MMT_AV_HDResolution_E stResolution);

/*
*说明：设置视频的比例模式，16:9或者4：3。
*输入参数：
*			Mode: 设置的比例模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetAspectRatio(MMT_AV_VideoAspectRatio_E mode);

/*
*说明：设置第二输出模式。有的CPU YUV输出跟S-video输出共用脚，
*所以需要在软件上切换，如果不重需要切则可以放空。
*输入参数：
*			stVoutMode:输出类型。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetAuxVoutMode(MMT_AV_VOutMode_E stVoutMode);


/*
*说明：设置图像的亮度。
*输入参数：
*			Brightness: 要设置的亮度值(0~255)。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetBrightness(MBT_U8 Brightness);

/*
*说明：设置图像的对比度(0~255)。
*输入参数：
*			Contrast: 图像的对比度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetContrast(MBT_U8 Contrast);

/*
*说明：设置图像的饱和度(0~255)。
*输入参数：
*			Saturation: 图像的饱和度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetSaturation(MBT_U8 Saturation);

/*
*说明：设置图像的明锐度(0~235)。
*输入参数：
*           Sharpness: 图像的明锐度。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetSharpness(MBT_U8 Sharpness);

/*
*说明：设置图像的色调(0~235)。
*输入参数：
*           Hue: 图像的色调。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetHue(MBT_U8 Hue);

/*
*说明：获取音视频解码器的状态。如果音频解码器，视频解码器都没在工作，返回0；如果其中一个解码器在工作，则返回1；
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*			解码器状态：1表示有解码器在工作；0表示解码器都没在工作状态。
*/
extern MBT_U8 MLMF_AV_GetAVState(MBT_VOID);

/*
*说明：设置音量大小。
*输入参数：
*			Volume: 输入参数，音量大小（0-100）。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_AV_SetVolume(MBT_U32 volume);

/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__ERRORCODE_H__ */

/*----------------------End of mlm_avctr.h-------------------------*/

