/**
 \file
 \brief Server (SVR) player module. CNcomment:svr player模块
 \author HiSilicon Technologies Co., Ltd.
 \date 2008-2018
 \version 1.0
 \author
 \date 2010-02-10
 */

#ifndef __HI_SVR_PLAYER_H__
#define __HI_SVR_PLAYER_H__

#include "hi_type.h"
#include "hi_svr_format.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

/*************************** Macro Definition ****************************/
/** \addtogroup     HiPlayer */
/** @{ */  /** <!-- [HiPlayer] */

/** Invalid handle */
/** CNcomment:非法句柄 */
#define HI_SVR_PLAYER_INVALID_HDL        (0)

/** Normal playing speed */
/** CNcomment:正常速度播放 */
#define HI_SVR_PLAYER_PLAY_SPEED_NORMAL  (1024)

/** @} */  /*! <!-- Macro Definition End */

/*************************** Structure Definition ****************************/
/** \addtogroup     HiPlayer */
/** @{ */  /** <!-- [HiPlayer] */

/** File type */
/** CNcomment:设置的文件类型 */
typedef enum hiSVR_PLAYER_MEDIA_PARAM_E
{
    HI_SVR_PLAYER_MEDIA_STREAMFILE = (1 << 0),    /**< Audio and video (AV) media file *//**< CNcomment:音视频媒体文件 */
    HI_SVR_PLAYER_MEDIA_SUBTITLE   = (1 << 1),    /**< Subtitle file *//**< CNcomment:字幕文件 */
    HI_SVR_PLAYER_MEDIA_BUTT       = (1 << 2)
} HI_SVR_PLAYER_MEDIA_PARAM_E;

/** The play mode of the player */
/** CNcomment:设置播放器播放属性 */
typedef enum hiSVR_PLAYER_PLAY_MODE_E
{
    HI_SVR_PLAYER_PLAYMODE_NORMAL = 0x0, /**< Normal play mode *//**< CNcomment: 正常播放模式 */
    HI_SVR_PLAYER_PLAYMODE_PRELOAD = 0x1,/**< Preload play mode. This mode will be used only in network playing *//**< CNcomment: 预加载播放模式 */
    HI_SVR_PLAYER_PLAYMODE_BUTT
} HI_SVR_PLAYER_PLAY_MODE_E;

/** Player attribute ID */
/** 播放器属性ID */
typedef enum hiSVR_PLAYER_ATTR_E
{
    HI_SVR_PLAYER_ATTR_STREAMID = 0x0,         /**< Set or obtain the stream ID. This attribute is applicable to multi-audio multi-video streams. The parameter is ::HI_SVR_PLAYER_STREAMID_S. *//**< CNcomment:设置/获取流编号，该属性针对多音频、多视频流的情况，参数为::HI_SVR_PLAYER_STREAMID_S */
    HI_SVR_PLAYER_ATTR_WINDOW_HDL,             /**< Obtain the window ID. The parameter is the HI_U32 variable. *//**< CNcomment:获取window id，参数为HI_U32变量 */
    HI_SVR_PLAYER_ATTR_AVPLAYER_HDL,           /**< Obtain the audio/video play (AVPlay) handle. The parameter is the HI_HANDLE variable. *//**< CNcomment:获取AVPlayer句柄，参数为HI_HANDLE变量 */
    HI_SVR_PLAYER_ATTR_SO_HDL,                 /**< Obtain the subtitle output (SO) handle. The parameter is the HI_HANDLE variable. *//**< CNcomment:获取so句柄，参数为HI_HANDLE变量 */
    HI_SVR_PLAYER_ATTR_SYNC,                   /**< Set the sync attribute. The parameter is ::HI_SVR_PLAYER_SYNC_ATTR_S. *//**< CNcomment:设置音视频、字幕时间戳偏移，参数为::HI_SVR_PLAYER_SYNC_ATTR_S */
    HI_SVR_PLAYER_ATTR_BUTT
} HI_SVR_PLAYER_ATTR_E;

/************************************Player Event Start***********************************/

/** Error information of the player */
/** 播放器错误信息 */
typedef enum hiSVR_PLAYER_ERROR_E
{
    HI_SVR_PLAYER_ERROR_NON = 0x0,
    HI_SVR_PLAYER_ERROR_VID_PLAY_FAIL,         /**< The video fails to be played. *//**< CNcomment: 视频播放启动失败 */
    HI_SVR_PLAYER_ERROR_AUD_PLAY_FAIL,         /**< The audio fails to be played. *//**< CNcomment: 音频播放启动失败 */
    HI_SVR_PLAYER_ERROR_PLAY_FAIL,             /**< The file fails to be played. *//**< CNcomment: 音视频播放失败 */
    HI_SVR_PLAYER_ERROR_TIMEOUT,               /**< Operation timeout. For example, reading data timeout. *//**< CNcomment: 操作超时， 如读取数据超时 */
    HI_SVR_PLAYER_ERROR_NOT_SUPPORT,           /**< The file format is not supportted. *//**< CNcomment: 文件格式不支持 */
    HI_SVR_PLAYER_ERROR_UNKNOW,                /**< Unknown error. *//**< CNcomment: 未知错误 */
    HI_SVR_PALYER_ERROR_BUTT,
} HI_SVR_PLAYER_ERROR_E;

/** Buffer status, the conditions of the event report can be configured by setting ::HI_FORMAT_BUFFER_CONFIG_S.
 1. When the data size is smaller than 1 MB or duration is smaller than 200 ms, the::HI_SVR_PLAYER_BUFFER_START event is reported.
 2. When the data size is 0 byte, the ::HI_SVR_PLAYER_BUFFER_EMPTY event is reported.
 3. When the data size is smaller than 4 MB or duration is smaller than 4 minutes, the player notify the ::HI_SVR_PLAYER_BUFFER_ENOUGH event.
 4. When the data size is larger than 4 MB or duration is smaller than 5 minutes, the ::HI_SVR_PLAYER_BUFFER_FULL event is reported.  */
/** CNcomment:缓冲状态类型信息,该事件上报的条件,需要通过::HI_FORMAT_BUFFER_CONFIG_S,来配置。
  默认: 音视频数据缓冲小于 1M bytes或者缓冲数据小于200ms, 上报::HI_SVR_PLAYER_BUFFER_START
  当音视频数据为0 bytes时，上报::HI_SVR_PLAYER_BUFFER_EMPTY
  当音视频数据小于4M bytes 或者 音视频缓冲数据小于4分钟, 上报::HI_SVR_PLAYER_BUFFER_ENOUGH
  当音视频数据大于5M bytes 或者 音视频数据大于 5分钟, 上报::HI_SVR_PLAYER_BUFFER_FULL
 */
typedef enum hiSVR_PLAYER_BUFFER_E
{
    HI_SVR_PLAYER_BUFFER_EMPTY=0,   /**< The buffer is empty. *//**< CNcomment:缓冲为空 */
    HI_SVR_PLAYER_BUFFER_START,     /**< The data in the buffer is insufficient.*//**< CNcomment:缓冲开始事件 */
    HI_SVR_PLAYER_BUFFER_ENOUGH,    /**< The data in the buffer is sufficient *//**< CNcomment:缓冲足够,可以播放 */
    HI_SVR_PLAYER_BUFFER_FULL,      /**< The buffer is full. *//**< CNcomment:缓冲为满 */
    HI_SVR_PLAYER_DOWNLOAD_FIN,     /**< The download is complete. *//**< CNcomment:下载完毕 */
    HI_SVR_PLAYER_BUFFER_BUTT
} HI_SVR_PLAYER_BUFFER_E;

/** Player status */
/** CNcomment:PLAYER状态 */
typedef enum hiSVR_PLAYER_STATE_E
{
    HI_SVR_PLAYER_STATE_INI = 0,    /**< The player is in the initial state. It changes to the initial state after being created. *//**< CNcomment:播放器当前处于初始状态，create后播放器处于ini状态 */
    HI_SVR_PLAYER_STATE_DEINI,      /**< The player is deinitialized. *//**< CNcomment:播放器已经去初始状态 */
    HI_SVR_PLAYER_STATE_PLAY,       /**< The player is in the playing state. *//**< CNcomment:播放器当前处于播放状态 */
    HI_SVR_PLAYER_STATE_FORWARD,    /**< The player is in the fast forward state. *//**< CNcomment:播放器当前处于快进状态 */
    HI_SVR_PLAYER_STATE_BACKWARD,   /**< The player is in the rewind state. *//**< CNcomment:播放器当前处于快退状态 */
    HI_SVR_PLAYER_STATE_PAUSE,      /**< The player is in the pause state. *//**< CNcomment:播放器当前处于暂停状态 */
    HI_SVR_PLAYER_STATE_STOP,       /**< The player is in the stop state. *//**< CNcomment:播放器当前处于停止状态 */
    HI_SVR_PLAYER_STATE_PREPARING,  /**< The player is in the preparing state. *//**< CNcomment:播放器当前处于准备状态 */
    HI_SVR_PLAYER_STATE_BUTT
} HI_SVR_PLAYER_STATE_E;

/** Player fast forward or backward modes */
/** CNcomment:PLAYER快进快退模式 */
typedef enum hiSVR_PLAYER_TPLAY_MODE_E
{
    HI_SVR_PLAYER_TPLAY_MODE_SMOOTH = 0,    /**< Output video frames with given speed as possible as the Player can. *//**< CNcomment:播放器在快进快退状态下会尽可能的按照指定的速率播放视频 */
    HI_SVR_PLAYER_TPLAY_MODE_I,             /**< Only output I-frames of video in HI_SVR_PLAYER_STATE_FORWARD or HI_SVR_PLAYER_STATE_BACKWARD status. *//**< CNcomment:在快进快退状态下只输出视频的I帧 */
    HI_SVR_PLAYER_TPLAY_MODE_BUTT
} HI_SVR_PLAYER_TPLAY_MODE_E;

/** Event type */
/** CNcomment:事件类型 */
typedef enum hiSVR_PLAYER_EVENT_E
{
    HI_SVR_PLAYER_EVENT_STATE = 0x0,   /**< Player status change event. The parameter value is ::HI_SVR_PLAYER_STATE_E. *//**< CNcomment:播放器状态转换事件，参数值为::HI_SVR_PLAYER_STATE_E */
    HI_SVR_PLAYER_EVENT_SOF,           /**< Event indicating that file playing starts or a file is rewound to the file header. The parameter type is HI_U32. The value ::HI_SVR_PLAYER_STATE_PLAY indicates that file playing starts and the value ::HI_SVR_PLAYER_STATE_BACKWARD indicates that a file is rewound to the file header. */
                                       /**< CNcomment:文件开始播放或快退到文件头事件，参数类型为HI_U32，值为::HI_SVR_PLAYER_STATE_PLAY表示开始播放，参数值为::HI_SVR_PLAYER_STATE_BACKWARD表示快退到文件头 */
    HI_SVR_PLAYER_EVENT_EOF,           /**< Event indicating that a file is played till the end of the file. There is no parameter. *//**< CNcomment:文件播放到尾事件，无参数 */
    HI_SVR_PLAYER_EVENT_PROGRESS,      /**< Event indicating the current progress of the player. This event is reported once every 500 ms. The parameter is ::HI_SVR_PLAYER_PROGRESS_S. *//**< CNcomment:播放器当前播放进度事件，每隔300ms上报一次该事件，参数值为::HI_SVR_PLAYER_PROGRESS_S */
    HI_SVR_PLAYER_EVENT_STREAMID_CHG,  /**< Stream ID change event. The parameter is ::HI_SVR_PLAYER_STREAMID_S. *//**< CNcomment:stream id 发生变化事件，参数为::HI_SVR_PLAYER_STREAMID_S */
    HI_SVR_PLAYER_EVENT_SEEK_FIN,      /**< Seek operation is complete. The parameter is HI_U32. When the value of the parameter is ::HI_FAILURE, the seek operation fails. When the value of the parameter is ::HI_SUCCESS, the seek operation succeeds. When seek out of file,this event will arise twice,the second will be with NULL parameter*/
                                       /**< CNcomment:Seek操作完成，参数为HI_U32，值为::HI_FAILURE Seek失败，::HI_SUCCESS seek成功.当seek超出文件时，此事件会上报两次，第二次携带数据为NULL */
    HI_SVR_PLAYER_EVENT_CODETYPE_CHG,  /**< Event of indicating the byte encoding configuration is complete. The parameter is ::HI_SVR_PLAYER_SUB_CODETYPE_S. *//**< Ncomment:设置字符编码完成事件，事件参数::HI_SVR_PLAYER_SUB_CODETYPE_S */
    HI_SVR_PLAYER_EVENT_DOWNLOAD_PROGRESS,   /**< Current download progress of the player. The event is reported every 300 ms. The parameter is ::HI_SVR_PLAYER_PROGRESS_S. *//**< CNcomment:播放器当前下载进度，每隔300ms上报一次该事件，参数值为::HI_SVR_PLAYER_PROGRESS_S */
    HI_SVR_PLAYER_EVENT_BUFFER,        /**< Reporting buffer status. The parameter type is ::HI_SVR_PLAYER_BUFFER_S. *//**< CNcomment:缓冲状态上报,参数类型为::HI_SVR_PLAYER_BUFFER_S */
    HI_SVR_PLAYER_EVENT_FIRST_FRAME_TIME,    /**< The display time of the first frame from setting the setMedia. The parameter is ::HI_U32, in the unit of ms. *//**< CNcomment:从设置媒体setMedia开始第一帧显示时间,参数为::HI_U32,单位为ms */

    HI_SVR_PLAYER_EVENT_ERROR,               /**< Event of indicating that an error occurs in the player. The parameter is ::HI_SVR_PLAYER_ERROR_E.*//**< CNcomment:播放器错误信息事件，参数为::HI_SVR_PLAYER_ERROR_E */
    HI_SVR_PLAYER_EVNET_NETWORK,       /**< Report the network status. The parameter is ::HI_FORMAT_NET_STATUS_S. *//**< CNcomment:网络状态上报, 参数为::HI_FORMAT_NET_STATUS_S */
    HI_SVR_PLAYER_EVENT_ASYNC_SETMEDIA_FINISH, /**< Async set media finish event*//**< CNcomment:异步打开媒体完成事件*/
    HI_SVR_PLAYER_EVENT_BUTT
} HI_SVR_PLAYER_EVENT_E;

/** Information of playing progress */
/** CNcomment:进度事件信息内容 */
typedef struct hiSVR_PLAYER_PROGRESS_S
{
    HI_U32 u32Progress;    /**< Progress of current playing. The value ranges from 0 to 100. *//**< CNcomment:进度值, 值0-100 */
    HI_S64 s64Duration;    /**< Duration (in the unit of ms) of current playing *//**< CNcomment:当前进度时长,单位为ms */
    HI_S64 s64BufSize;     /**< Data size (in the unit of byte) in the buffer *//**< CNcomment:缓冲数据大小,单位为bytes */
} HI_SVR_PLAYER_PROGRESS_S;

/** Information of the buffer event */
/** CNcomment:HI_SVR_PLAYER_EVENT_BUFFER 缓冲事件内容 */
typedef struct hiSVR_PLAYER_BUFFER_S
{
    HI_SVR_PLAYER_BUFFER_E eType;        /**< Buffer type *//**< CNcomment:缓冲类型::HI_SVR_PLAYER_BUFFER_E */
    HI_FORMAT_BUFFER_STATUS_S stBufStat; /**< Buffer status *//**< CNcomment:缓冲状态::HI_FORMAT_BUFFER_STATUS_S */
} HI_SVR_PLAYER_BUFFER_S;

/** Player event callback parameters */
/** CNcomment:播放器事件回调参数 */
typedef struct hiSVR_PLAYER_EVENT_S
{
    HI_SVR_PLAYER_EVENT_E  eEvent;    /**< Event type *//**< CNcomment:事件类型 */
    HI_U32  u32Len;                   /**< Event parameter length, in the unit of byte. *//**< CNcomment:事件参数长度，字节为单位 */
    HI_U8   *pu8Data;                 /**< Start address of event parameter data *//**< CNcomment:事件参数数据起始地址 */
} HI_SVR_PLAYER_EVENT_S;

/************************************Player Event End************************************/

/** Type of the registered dynamic link library (DLL) */
/** CNcomment:注册的动态库类型 */
typedef enum hiSVR_PLAYER_DLLTYPE_E
{
    HI_SVR_PLAYER_DLL_PARSER = 0x0,    /**< DLLs for parsing audio and video media files and subtitle files *//**< CNcomment:音视频媒体文件解析、字幕解析动态库 */
    HI_SVR_PLAYER_DLL_BUTT
} HI_SVR_PLAYER_DLLTYPE_E;

/** Playing speed flag */
/** CNcomment:播放速度标识 */
typedef enum hiSVR_PLAYER_PLAY_SPEED_E
{
    HI_SVR_PLAYER_PLAY_SPEED_2X_FAST_FORWARD   = 2 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,      /**< 2 x speed fast forward *//**< CNcomment:2倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_4X_FAST_FORWARD   = 4 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,      /**< 4 x speed fast forward *//**< CNcomment:4倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_8X_FAST_FORWARD   = 8 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,      /**< 8 x speed fast forward *//**< CNcomment:8倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_16X_FAST_FORWARD  = 16 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 16 x speed fast forward *//**< CNcomment:16倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_32X_FAST_FORWARD  = 32 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 32 x speed fast forward *//**< CNcomment:32倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_64X_FAST_FORWARD  = 64 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 64 x speed fast forward *//**< CNcomment:64倍速快放 */
    HI_SVR_PLAYER_PLAY_SPEED_2X_FAST_BACKWARD  = -2 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 2 x speed rewind *//**< CNcomment:2倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_4X_FAST_BACKWARD  = -4 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 4 x speed rewind *//**< CNcomment:4倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_8X_FAST_BACKWARD  = -8 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,     /**< 8 x speed rewind *//**< CNcomment:8倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_16X_FAST_BACKWARD = -16 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,    /**< 16 x speed rewind *//**< CNcomment:16倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_32X_FAST_BACKWARD = -32 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,    /**< 32 x speed rewind *//**< CNcomment:32倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_64X_FAST_BACKWARD = -64 * HI_SVR_PLAYER_PLAY_SPEED_NORMAL,    /**< 64 x speed rewind *//**< CNcomment:64倍速快退 */
    HI_SVR_PLAYER_PLAY_SPEED_BUTT                                                          /**< Invalid speed value *//**< CNcomment:无效的速度值 */
} HI_SVR_PLAYER_PLAY_SPEED_E;

/** The parameters need to be specified when the player is created. */
/** CNcomment:播放器创建时需指定的参数 */
typedef struct hiSVR_PLAYER_PARAM_S
{
    HI_U32  u32DmxId;                 /**< Dmx ID. This parameter is mandatory when transport streams (TSs) are played. *//**< CNcomment:dmx id，播放ts流时需设置该参数 */
    HI_U32  u32PortId;                /**< Port ID. This parameter is mandatory when TS streams are played. *//**< CNcomment:port id，播放ts流时需设置该参数 */
    HI_U32  x, y, w, h;               /**< Coordinate, width, and height of the video output window. This parameter is invalid in the case of hAVPlayer!=HI_SVR_PLAYER_INVALID_HDL. *//**< CNcomment:视频输出窗口坐标及宽高，hAVPlayer!=HI_SVR_PLAYER_INVALID_HDL，该参数无效 */
    HI_U32  u32MixHeight;             /**< Audio output mix weight. The value ranges from 0 to 100. This parameter is invalid in the case of hAVPlayer!=HI_SVR_PLAYER_INVALID_HDL. *//**< CNcomment:音频输出混音权重0-100，hAVPlayer!=HI_SVR_PLAYER_INVALID_HDL，该参数无效 */
    HI_HANDLE hAVPlayer;              /**< AVPlay created externally. A window device and a sound device are bound to the AVPlay and the window size and the sound volume are set.
                                                                    The AVPlay handle can be transferred to the HiPlayer, which will use the AVPlay for playing. If this parameter is set to
                                                                    HI_SVR_PLAYER_INVALID_HDL, the HiPlayer internally creates the AVPlay and window automatically. */
                                      /**< CNcomment:外部已经创建了avplay并绑定了window,sound，并设置好window的大小位置，sound的音量，
                                                                    可以将avplay句柄传给HiPlayer，HiPlayer继续使用该avplay播放。如果该参数设置为
                                                                    HI_SVR_PLAYER_INVALID_HDL，HiPlayer内部会自动创建avplayer和window */
    HI_U32   u32SndPort;             /**< Specified audio port number, 0: master audio, 1: slave audio  *//**< CNcomment:指定音频端口号，0代表主音，1代表辅音*/
    HI_HANDLE hDRMClient;            /**< DRM client created externally. */
} HI_SVR_PLAYER_PARAM_S;

/** Input media file */
/** CNcomment:输入的媒体文件 */
typedef struct hiSVR_PLAYER_MEDIA_S
{
    HI_CHAR  aszUrl[HI_FORMAT_MAX_URL_LEN];          /**< File path, absolute file path, such as /mnt/filename.ts. *//**< CNcomment:文件路径，绝对路径，如/mnt/filename.ts */
    HI_S32   s32PlayMode;                            /**< Set the mode of the player. The parameter is ::HI_SVR_PLAYER_PLAY_MODE_E *//**< CNcomment:设置播放模式,参数::HI_SVR_PLAYER_PLAY_MODE_E */
    HI_U32   u32SubTitileNum;                        /**< Number of subtitle files *//**< CNcomment:字幕文件个数 */
    HI_CHAR  aszSubTitle[HI_FORMAT_MAX_LANG_NUM][HI_FORMAT_MAX_URL_LEN];  /**< Absolute path of a subtitle file, such as /mnt/filename.ts. *//**< CNcomment:字幕文件路径，绝对路径，如/mnt/filename.ts */
    HI_U32   u32UserData;                            /**< Create a handle by calling the fmt_open function, send the user data to the DEMUX by calling the fmt_invoke, and then call the fmt_find_stream function. */
                                                     /**< CNcomment:用户数据，HiPlayer仅作透传，调用解析器fmt_open之后，通过fmt_invoke接口传递给解析器(HI_FORMAT_INVOKE_SET_USERDATA)，再调用fmt_find_stream接口 */
} HI_SVR_PLAYER_MEDIA_S;

/** IDs of the AV and subtitle streams to be switched. */
/** CNcomment:要切换到的音视频、字幕流ID  */
typedef struct hiSVR_PLAYER_STREAMID_S
{
    HI_U32 u32ProgramId;   /**< Program ID. The value is the subscript of the astProgramInfo array in the ::HI_FORMAT_FILE_INFO_S structure and ranges from 0 to (u32ProgramNum - 1). */
                           /**< CNcomment:节目id，值为::HI_FORMAT_FILE_INFO_S结构astProgramInfo数组下标，0-(u32ProgramNum - 1) */
    HI_U32 u32VStreamId;   /**< Video stream ID. The value equals the value of u32ProgramId. *//**< CNcomment:视频流id，值与u32ProgramId相等 */
    HI_U32 u32AStreamId;   /**< Audio stream ID. The value is the subscript of the astAudStream array in the ::HI_FORMAT_PROGRAM_INFO_S structure and ranges from 0 to (u32AudStreamNum - 1).*/
                           /**< CNcomment:音频流id，值为::HI_FORMAT_PROGRAM_INFO_S结构astAudStream数组下标，0-(u32AudStreamNum - 1)*/
    HI_U32 u32SubTitleId;  /**< Subtitle ID. The value is the subscript of the astSubTitle array in the ::HI_FORMAT_PROGRAM_INFO_S structure and ranges from 0 to (u32SubTitleNum - 1). */
                           /**< CNcomment:字幕id，值为::HI_FORMAT_PROGRAM_INFO_S结构astSubTitle数组下标，0-(u32SubTitleNum - 1) */
} HI_SVR_PLAYER_STREAMID_S;

/** Set the offset of the stream PTS */
/** CNcomment:设置音视频、字幕时间偏移 */
typedef struct hiSVR_PLAYER_SYNC_ATTR_S
{
    HI_S32 s32VFrameOffset;    /**< offset (in the unit of ms) of the video stream. Add this offset to the PTS of the video stream. *//**< 视频流偏移值，在视频流时间戳基础上增加该offset，单位ms */
    HI_S32 s32AFrameOffset;    /**< offset (in the unit of ms) of the audio stream. Add this offset to the PTS of the video stream. *//**< 音频流偏移值，在音频流时间戳基础上增加该offset，单位ms */
    HI_S32 s32SubTitleOffset;  /**< offset (in the unit of ms) of the subtitle stream. Add this offset to the PTS of the video stream. *//**< 字幕流偏移值，在音频流时间戳基础上增加该offset，单位ms */
} HI_SVR_PLAYER_SYNC_ATTR_S;

/** Player information */
/** CNcomment:播放器信息 */
typedef struct hiSVR_PLAYER_INFO_S
{
    HI_U32  u32Progress;                 /**< Playing progress. The value ranges from 0 to 100. *//**< CNcomment:播放百分比，0-100 */
    HI_U64  u64TimePlayed;               /**< Elapsed time, in the unit of ms. *//**< CNcomment:已播放时间，单位ms */
    HI_S32  s32Speed;                    /**< Playing speed *//**< CNcomment:播放速率 */
    HI_SVR_PLAYER_STATE_E  eStatus;      /**< Playing status *//**< CNcomment:播放状态 */
} HI_SVR_PLAYER_INFO_S;

/** The result of setting the subtitle transcoding type */
/** CNcomment:Invoke命令设置字幕编码类型的事件回调参数 */
typedef struct hiSVR_PLAYER_SUB_CODETYPE_S
{
    HI_U32 u32SubId;                    /**< Subtitle ID. For details, see ::HI_FORMAT_SUBTITLE_INFO_S:s32StreamIndex *//**< 字幕ID，参考::HI_FORMAT_SUBTITLE_INFO_S:s32StreamIndex定义 */
    HI_U32 u32Result;                   /**< Result of setting the subtitle transcoding type *//**< invoke命令返回值 */
} HI_SVR_PLAYER_SUB_CODETYPE_S;

/** @}*/  /** <!-- ==== Structure Definition End ====*/

/******************************* API Declaration *****************************/
/** \addtogroup      HiPlayer*/
/** @{*/  /** <!-- -HiPlayer=*/

/**
\brief Player event callback function. The ::HI_SVR_PLAYER_RegCallback interface can be called to register the callback function. CNcomment:播放器事件回调函数，调用::HI_SVR_PLAYER_RegCallback接口注册该回调函数
\attention \n
None.
\param[out] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[out] pstruEvent event parameter. CNcomment: 事件参数 CNend

\retval ::HI_SUCCESS

\see \n
None.
*/
typedef HI_S32 (*HI_SVR_PLAYER_EVENT_FN)(HI_HANDLE hPlayer, HI_SVR_PLAYER_EVENT_S *pstruEvent);

/**
\brief Initialize the player. CNcomment:初始化Player CNend
\attention \n
The HI_S32 HI_SVR_PLAYER_Init interface can be called to return a success message after the initialization is successful. Multiple processes are not supported
. This interface must be called prior to other interfaces.
CNcomment:初始化成功后再调用该接口返回成功，不支持多进程，调用其它接口前必须先调用该接口 CNend
\param None. CNcomment:无 CNend

\retval ::HI_SUCCESS The initialization is successful. CNcomment:初始化成功 CNend
\retval ::HI_FAILURE The initialization fails. CNcomment:初始化失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Init(HI_VOID);

/**
\brief Deinitialize the player module by calling the HI_S32 HI_SVR_PLAYER_Deinit interface. The player module is not used any more. CNcomment:去初始化player模块，不再使用player模块，调用该接口去初始化player模块 CNend
\attention \n
The ::HI_SVR_PLAYER_Destroy interface must be called to release the created player first. Otherwise, a failure is returned. The Deinit interface does not release the player resource. \n
This interface can be called to return a success message after the deinitialization is successful.
CNcomment:必须先调用::HI_SVR_PLAYER_Destroy接口释放掉创建的播放器，再调用该接口，否则会返回失败，Deinit不负责释放\n
播放器资源。去初始化成功后再调用该接口返回成功 CNend
\param None. CNcomment:无 CNend

\retval ::HI_SUCCESS The deinitialization is successful. CNcomment:去初始化成功 CNend
\retval ::HI_FAILURE The deinitialization fails and the created player is not released. CNcomment:去初始化失败，没有释放掉创建的播放器 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Deinit(HI_VOID);

/**
\brief Create a player. CNcomment:创建一个播放器 CNend
\attention \n
This interface must be called after initialization. Only one player can be created. \n
CNcomment:该接口必须在初始化后调用，支持最多创建一个播放器 CNend\n
\param[in] pstruParam player initialization attribute. The available Dmx ID and port ID must be specified for TS streams to be played. CNcomment:播放器初始化属性，播放ts流，必须指定可用的dmx id和port id CNend
\param[out] phPlayer handle of the created player. CNcomment:创建的播放器句柄 CNend

\retval ::HI_SUCCESS A player is created successfully and the player handle is valid. CNcomment:创建成功，播放器句柄有效 CNend
\retval ::HI_FAILURE A player fails to be created. The parameters are invalid or resources are insufficient. CNcomment:创建失败，参数非法或资源不够 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Create(const HI_SVR_PLAYER_PARAM_S *pstruParam, HI_HANDLE *phPlayer);

/**
\brief Set the URL of the media file to be played. The URL format is absolute path + media file name. CNcomment:设置要播放的媒体文件url地址，url格式为:绝对路径+媒体文件名 CNend
\attention \n
The HI_SVR_PLAYER_SetMedia interface is a synchronous interface. It must be called after the ::HI_SVR_PLAYER_Create interface is called or after the ::
HI_SVR_PLAYER_Stop interface is called to stop the player.
This interface performs the following operations:
1. Queries the media file set by the DEMUX during parsing.
2. Queries a subtitle file if no subtitle file is specified.
3. Performs the following steps if no AVPlay is specified:
   Creates an AVPlay and sets the audio and video attributes based on the parsed file attributes such as the AV encoding type.
   Creates a window, set the window size, and bind the window to the AVPlay.
   Bind HI_UNF_SND_0 to the AVPlay.
The window display location and mixheight set for binding HI_UNF_SND_0 to the AVPlay are specified when the ::HI_SVR_PLAYER_Create interface is called.
The window display location and mixheight are invalid if the AVPlay is specified externally. The player creates a TS buffer based on the Dmx ID and port ID
if TS streams need to be played.
CNcomment:同步接口，该接口必须在调用::HI_SVR_PLAYER_Create之后调用，或者调用::HI_SVR_PLAYER_Stop接口停止播放器后调用
该接主要执行以下处理:
1、查找解析器解析设置的媒体文件
2、如果没有指定字幕文件，则查找字幕文件
3、如果没有指定avplay则
   创建avplay，根据解析出的文件属性设置音视频属性，如音视频编码类型
   创建window，设置window窗口位置，将window绑定到avplay
   将HI_UNF_SND_0设备绑定到avplay
window显示位置，HI_UNF_SND_0绑定到avplay设置的mixheight(如果avplay是外部指定，则显示位置和mixheight参数无效)，
在调用::HI_SVR_PLAYER_Create接口时指定，如果是播放ts流，播放器会根据指定的dmx id,port id创建ts buffer CNend

\param[in] hPlayer handle of the player is created by calling the ::HI_SVR_PLAYER_Create interface. CNcomment:通过调用::HI_SVR_PLAYER_Create接口创建的播放器句柄 CNend
\param[in] eType media file. If only AV media files are specified, set this parameter to HI_SVR_PLAYER_MEDIA_STREAMFILE.\n
           If a subtitle file is specified, set this parameter to HI_SVR_PLAYER_MEDIA_STREAMFILE | HI_SVR_PLAYER_MEDIA_SUBTITLE.
           CNcomment:媒体文件。只指定音视频媒体文件，则该参数设置为HI_SVR_PLAYER_MEDIA_STREAMFILE，\n
            如果还指定了字幕文件则设置(HI_SVR_PLAYER_MEDIA_STREAMFILE | HI_SVR_PLAYER_MEDIA_SUBTITLE) CNend
\param[in] pstruMedia media file information. Only absolute path is supported. If no subtitle file is set, \n
           the player searches for a subtitle file whose name is the same as the name of the audio and video media files in the same directory as the audio and video media files automatically.
            CNcomment:媒体文件信息，只支持绝对路径。如果没有设置字幕文件，播放器会自动在音视频媒\n
            体文件所在目录下查找与音视频媒体文件名相同的字幕文件 CNend

\retval ::HI_SUCCESS The media file is set successfully. The ::HI_SVR_PLAYER_Play interface can be called to start playing the file. CNcomment:媒体文件设置成功，此时调用::HI_SVR_PLAYER_Play接口可以开始播放 CNend
\retval ::HI_FAILURE The media file fails to be set. CNcomment:媒体文件设置失败 CNend
\retval ::HI_ERRNO_NOT_SUPPORT_FORMAT The file format is not supported. CNcomment:不支持的文件格式 CNend
\retval ::HI_ERRNO_NOT_SUPPORT_PROTOCOL The protocol is not supported. CNcomment:不支持的协议 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_SetMedia(HI_HANDLE hPlayer, HI_U32 eType, HI_SVR_PLAYER_MEDIA_S *pstruMedia);

/**
\brief Set the URL of the media file to be played. The URL format is absolute path + media file name. CNcomment:设置要播放的媒体文件url地址，url格式为:绝对路径+媒体文件名CNend
\attention \n
The HI_SVR_PLAYER_SetMedia interface is a synchronous interface. It must be called after the ::HI_SVR_PLAYER_Create interface is called or after the ::
HI_SVR_PLAYER_Stop interface is called to stop the player.
This interface performs the following operations:
1. Queries the media file set by the DEMUX during parsing.
2. Queries subtitle files in the same directory as the audio and video media file automatically, and the queried subtitle files' name are the same as the name of the media file.
3. Performs the following steps if no AVPlay is specified:
   Creates an AVPlay and sets the audio and video attributes based on the parsed file attributes such as the AV encoding type.
   Creates a window, set the window size, and bind the window to the AVPlay.
   Creates a audio track(use device HI_UNF_SND_0),and bind it to the AVPlay.
The window display location and mixheight set for binding audio track to the AVPlay are specified when the ::HI_SVR_PLAYER_Create interface is called.
The window display location and mixheight are invalid if the AVPlay is specified externally.
CNcomment:异步接口，该接口必须在调用::HI_SVR_PLAYER_Create之后调用，或者调用::HI_SVR_PLAYER_Stop接口停止播放器后调用
该接口主要执行以下处理:
1、查找解析器解析设置的媒体文件
2、在与媒体文件相同的路径下查找与媒体文件同名的字幕文件
3、如果没有指定avplay则
   创建avplay，根据解析出的文件属性设置音视频属性，如音视频编码类型
   创建window，设置window窗口位置，将window绑定到avplay
   创建audio track(使用设备HI_UNF_SND_0)，并将audio track绑定到avplay
window显示位置，绑定到avplay的audio track的mixheight(如果avplay是外部指定，则显示位置和mixheight参数无效)，
在调用::HI_SVR_PLAYER_Create接口时指定CNend
注意:使用本接口，在调用PLay接口之前，需要使用HI_SVR_PLAYER_EVENT_ASYNC_SETMEDIA_FINISH事件和返回值进行判断，若返回值为HI_SUCCESS这表示SetMedia成功，可以进行play。否则不能播放。

\param[in] hPlayer handle of the player is created by calling the ::HI_SVR_PLAYER_Create interface. CNcomment:通过调用::HI_SVR_PLAYER_Create接口创建的播放器句柄CNend
\param[in] eType media file. If only AV media files are specified, set this parameter to HI_SVR_PLAYER_MEDIA_STREAMFILE.\n
           If a subtitle file is specified, set this parameter to HI_SVR_PLAYER_MEDIA_STREAMFILE | HI_SVR_PLAYER_MEDIA_SUBTITLE.
           CNcomment:媒体文件。只指定音视频媒体文件，则该参数设置为HI_SVR_PLAYER_MEDIA_STREAMFILE，\n
            如果还指定了字幕文件则设置(HI_SVR_PLAYER_MEDIA_STREAMFILE | HI_SVR_PLAYER_MEDIA_SUBTITLE) CNend
\param[in] pstruMedia media file information. Only absolute path is supported.  \n
           The player searches for a subtitle file whose name is the same as the name of the audio and video media file in the same directory as the audio and video media file automatically.
            CNcomment:媒体文件信息，只支持绝对路径。播放器会自动在音视频媒\n
            体文件所在目录下查找与音视频媒体文件名相同的字幕文件CNend

\retval ::HI_SUCCESS The media file is set successfully. The ::HI_SVR_PLAYER_Play interface can be called to start playing the file. CNcomment:媒体文件设置成功，此时调用::HI_SVR_PLAYER_Play接口可以开始播放CNend
\retval ::HI_FAILURE The media file fails to be set. CNcomment:媒体文件设置失败CNend
\retval ::HI_ERRNO_NOT_SUPPORT_FORMAT The file format is not supported. CNcomment:不支持的文件格式CNend
\retval ::HI_ERRNO_NOT_SUPPORT_PROTOCOL The protocol is not supported. CNcomment:不支持的协议CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_SetMediaAsync(HI_HANDLE hPlayer, HI_U32 eType, HI_SVR_PLAYER_MEDIA_S *pstruMedia);

/**
\brief Destroy a player instance. CNcomment:销毁一个播放器实例 CNend
\attention \n
The HI_S32 HI_SVR_PLAYER_Destroy interface is called to destroy the player resource after the ::HI_SVR_PLAYER_Create interface is called to create a player.
CNcomment:调用::HI_SVR_PLAYER_Create创建播放器后，调用该接口销毁播放器资源 CNend
\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The player is released successfully. CNcomment:播放器释放成功 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Destroy(HI_HANDLE hPlayer);

/**
\brief Set player parameters. CNcomment:设置播放器参数 CNend
\attention \n
The following operations are supported:
The ::HI_SVR_PLAYER_ATTR_STREAMID interface can be used to set the ID of the stream to be played. It can be called to set the audio streams to be played for
single-video multi-audio files. \n
Calling the HI_SVR_PLAYER_SetParam interface is an asynchronous operation during playing. Nevertheless, calling this interface is a synchronous operation
after the SetMedia operation is performed prior to playing. Values returned by the interface cannot be used to check whether the operation is successful.
The player notifies the application (APP) of the stream ID setting status by using the ::HI_SVR_PLAYER_EVENT_STREAMID_CHG event. The event parameter is ::
HI_SVR_PLAYER_STREAMID_S.
CNcomment:该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用 CNend
CNcomment:支持的操作如下
::HI_SVR_PLAYER_ATTR_STREAMID : 设置播放的流id，对于单视频、多音频文件，可以通过该操作设置要播放的音频流\n
播放过程中调用该接口为异步操作，播放前，SetMedia后调用该接口为同步操作，异步操作不能通过接口返回值来判断\n
流id是否设置成功，播放器会通过::HI_SVR_PLAYER_EVENT_STREAMID_CHG事件通知app，事件参数为::HI_SVR_PLAYER_STREAMID_S。\n
::HI_SVR_PLAYER_ATTR_SYNC : 设置音视频、字幕流时间戳偏移，HiPlayer读取音视频帧后将时间戳加上设置的偏移值再用于同步 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] eAttrId ID of the player parameter to be set. CNcomment:要设置的播放器参数ID CNend
\param[in] pArg player parameter to be set. CNcomment:要设置的播放器参数 CNend

\retval ::HI_SUCCESS Parameters are set successfully. CNcomment:参数设置成功 CNend
\retval ::HI_FAILURE The operation fails. CNcomment:操作失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_SetParam(HI_HANDLE hPlayer, HI_SVR_PLAYER_ATTR_E eAttrId, const HI_VOID *pArg);

/**
\brief Obtain player parameters. CNcomment:获取播放器参数 CNend
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_SetMedia interface is called.
The following operations are supported:
::HI_SVR_PLAYER_ATTR_STREAMID: Obtain the ID of the stream that is played currently.
::HI_SVR_PLAYER_ATTR_WINDOW_HDL: Obtain the window handle created by the player.
::HI_SVR_PLAYER_ATTR_AVPLAYER_HDL: Obtain the AVPlay handle created by the player.
::HI_SVR_PLAYER_ATTR_SO_HDL: Obtain the SO module handle created by the player.

CNcomment:该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用
支持的操作如下 CNend
::HI_SVR_PLAYER_ATTR_STREAMID : CNcomment:获取当前播放的流id CNend
::HI_SVR_PLAYER_ATTR_WINDOW_HDL : CNcomment:获取播放器创建的window句柄 CNend
::HI_SVR_PLAYER_ATTR_AVPLAYER_HDL : CNcomment:获取播放器创建的avplay句柄 CNend
::HI_SVR_PLAYER_ATTR_SO_HDL : CNcomment:获取播放器创建的字幕输出模块(so)句柄 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] eAttrId player parameter ID. CNcomment:播放器参数ID CNend
\param[out] pArg obtained player parameters. CNcomment:获取的播放器参数 CNend

\retval ::HI_SUCCESS Parameters are obtained successfully. CNcomment:获取参数成功 CNend
\retval ::HI_FAILURE The operation fails. CNcomment:操作失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_GetParam(HI_HANDLE hPlayer, HI_SVR_PLAYER_ATTR_E eAttrId, HI_VOID *pArg);

/**
\brief Register a player event callback function. CNcomment:注册播放器事件回调函数 CNend
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_Create interface is called. This interface is unrelated to the player status. This function cannot be called in any player callback event.
CNcomment:该函数必须在调用::HI_SVR_PLAYER_Create接口后调用，该接口与播放器状态无关，该函数不能在player任何回调事件中调用 CNend
\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] pfnCallback player event callback function. The callback function definition is ::HI_SVR_PLAYER_EVENT_FN. CNcomment:播放器事件回调函数，回调函数定义::HI_SVR_PLAYER_EVENT_FN CNend

\retval ::HI_SUCCESS The registration is successful. CNcomment:注册成功 CNend
\retval ::HI_FAILURE The registration fails. CNcomment:设置失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_RegCallback(HI_HANDLE hPlayer, HI_SVR_PLAYER_EVENT_FN pfnCallback);

/**
\brief Start playing. CNcomment:开始播放 CNend
\attention \n
This interface is an asynchronous interface. It must be called after the ::HI_SVR_PLAYER_SetMedia interface is called. If this interface is called after successful playing, HI_FAILURE is returned. \n
Values returned by this interface cannot be used to check whether the playing is successful. The player notifies the APP of playing success or failure by using the ::HI_SVR_PLAYER_EVENT_STATE event. \n
The event parameter value is ::HI_SVR_PLAYER_STATE_PLAY.This interface can be called to restart playing after the playing stops.

CNcomment:异步接口，该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用，播放成功后再调用该接口返回HI_FAILURE，\n
不能通过该接口返回值来判断播放器是否播放成功，播放器会通过::HI_SVR_PLAYER_EVENT_STATE事件通知\n
app播放成功，事件参数值为::HI_SVR_PLAYER_STATE_PLAY。停止播放后，可以调用该接口重新播放 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The operation is valid. CNcomment:合法操作 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Play(HI_HANDLE hPlayer);

/**
\brief Stop playing. CNcomment:停止播放 CNend
\attention \n
This interface is an asynchronous interface. It can be called to stop playing during playing, fast forward, rewind, and pause. Values returned by this interface cannot be used to check whether playing is stopped successfully. \n
The player notifies the APP of stop success or failure by using the ::HI_SVR_PLAYER_EVENT_STATE event. The event parameter value is ::HI_SVR_PLAYER_STATE_STOP. \n
The ::HI_SVR_PLAYER_Play interface can be called to restart playing after playing is stopped.

CNcomment:异步接口，播放、快进、快退、暂停过程中都可以调用该接口停止播放，不能通过该接口返回值来判断播放器\n
是否停止成功，播放器会通过::HI_SVR_PLAYER_EVENT_STATE事件通知app停止成功，事件参数值为::HI_SVR_PLAYER_STATE_STOP。\n
停止播放后，可以调用::HI_SVR_PLAYER_Play接口重新播放 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The operation is valid. CNcomment:合法操作 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Stop(HI_HANDLE hPlayer);

/**
\brief Pause playing.  CNcomment:暂停播放 CNend
\attention \n
This interface is an asynchronous interface. It can be called to pause playing but cannot be called during fast forward and rewind. Values returned by this interface cannot be used to check whether playing is paused successfully. \n
The player notifies the APP of pause success or failure by using the ::HI_SVR_PLAYER_EVENT_STATE event. The event parameter value is ::HI_SVR_PLAYER_STATE_PAUSE. \n
The ::HI_SVR_PLAYER_Resume interface can be called to resume playing after a successful pause.
CNcomment:异步接口，播放过程中可以调用该接口暂停播放，快进、快退状态下不能调用该接口，不能通过该接口返回值来判断播放器\n
是否暂停成功，播放器会通过::HI_SVR_PLAYER_EVENT_STATE事件通知app停止成功，事件参数值为::HI_SVR_PLAYER_STATE_PAUSE。\n
暂停成功后，可以调用::HI_SVR_PLAYER_Resume继续播放 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The operation is valid. CNcomment:合法操作 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Pause(HI_HANDLE hPlayer);

/**
\brief Resume playing. CNcomment:恢复播放 CNend
\attention \n
This interface is an asynchronous interface. It can be called to resume playing during pause, fast forward, and rewind. Values returned by this interface cannot be used to check whether playing is resumed successfully. \n
The player notifies the APP of resumption success or failure by using the ::HI_SVR_PLAYER_EVENT_STATE event. The event parameter value is ::HI_SVR_PLAYER_STATE_PLAY.

CNcomment:异步接口，暂停、快进、快退状态下，调用该接口恢复正常播放，不能通过该接口返回值来判断播放器是否恢复播放\n
播放器会通过::HI_SVR_PLAYER_EVENT_STATE事件通知app恢复成功，事件参数值为::HI_SVR_PLAYER_STATE_PLAY。 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The operation is valid. CNcomment:合法操作 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Resume(HI_HANDLE hPlayer);

/**
\brief Fast forward and rewind. CNcomment:快进、快退 CNend
\attention \n
This interface is an asynchronous interface. It must be called in play, pause or tplay status. The negative value of s32Speed indicates rewind and the
positive value of s32Speed indicates fast forward. Values returned by the interface cannot be used to check whether the fast forward or rewind is successful.
\n
The player notifies the APP of the fast forward or rewind status by using the ::HI_SVR_PLAYER_EVENT_STATE event. \n
The event parameter value is ::HI_SVR_PLAYER_STATE_FORWARD or ::HI_SVR_PLAYER_STATE_BACKWARD. The ::HI_SVR_PLAYER_Resume interface can be called to \n
resume normal playing after fast forward or rewind.
CNcomment:异步接口，该函数必须播放、暂停或快进/快退状态下调用，s32Speed为负表示快退，为正表示快进，不能通过该接口\n
返回值来判断是否快进或快退成功，播放器会通过::HI_SVR_PLAYER_EVENT_STATE事件通知app，事件参数值为\n
::HI_SVR_PLAYER_STATE_FORWARD或::HI_SVR_PLAYER_STATE_BACKWARD，快进、快退后通过调用::HI_SVR_PLAYER_Resume\n
接口恢复正常播放。 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] s32Speed playing speed. The value is HI_SVR_PLAYER_PLAY_SPEED_E. CNcomment:播放倍数,值为HI_SVR_PLAYER_PLAY_SPEED_E CNend

\retval ::HI_SUCCESS The operation is valid. CNcomment:合法操作 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_TPlay(HI_HANDLE hPlayer, HI_S32 s32Speed);

/**
\brief Seek to a specified location for playing. CNcomment:跳到指定位置播放 CNend
\attention \n
This interface is an asynchronous interface. It must be called after the ::HI_SVR_PLAYER_SetMedia interface is called. It can be called to jump to a specified time point for playing.
CNcomment:异步接口，该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用，播放、停止状态下，调用该接口跳到指定时间点播放 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] s64TimeInMs seeking time. The unit is ms. CNcomment:seek时间，单位ms CNend

\retval ::HI_SUCCESS The operation is successful. CNcomment:Seek成功 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Seek(HI_HANDLE hPlayer, HI_S64 s64TimeInMs);

/**
\brief Seek to a specified location for playing. CNcomment:跳到指定位置播放 CNend
\attention \n
This interface is an asynchronous interface. It must be called after the ::HI_SVR_PLAYER_SetMedia interface is called. It can be called to jump to a specified time point for playing.
CNcomment:异步接口，该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用，播放、停止状态下，调用该接口跳到指定位置播放 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] s64Offset offset(in bytes) of the starting position. CNcomment:相对文件起始位置的字节偏移 CNend

\retval ::HI_SUCCESS The operation is successful. CNcomment:Seek成功 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_SeekPos(HI_HANDLE hPlayer, HI_S64 s64Offset);

/**
\brief Invoke operation. Application expand operation. The player only transparently transmits the data. CNcomment:invoke操作，app扩展使用，player仅作透传 CNend
\attention \n
It must be called after the ::HI_SVR_PLAYER_SetMedia interface is called.
CNcomment:该接口必须在调用::HI_SVR_PLAYER_SetMedia接口后调用 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[in] u32InvokeId Operation ID of application expanding. The value cannot be within the range of HI_FORMAT_INVOKE_ID_E. CNcomment:app扩展的操作id，值不能在HI_FORMAT_INVOKE_ID_E枚举范围内 CNend
\param[in/out] pArg param of the invoking operation. CNcomment:操作参数 CNend

\retval ::HI_SUCCESS The operation is successful. CNcomment:操作成功 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_Invoke(HI_HANDLE hPlayer, HI_U32 u32InvokeId, HI_VOID *pArg);

/**
\brief Obtain information about the current open file, such as the file size, playing duration, file bit rate, video width, video height, coding format, frame rate, video bit rate, audio encoding, and audio bit rate.
CNcomment:获取当前打开文件信息，如文件大小、文件播放时长、码率等，视频宽、高，编码格式，帧率、码率，音频编码、码率等 CNend
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_SetMedia interface is called.
CNcomment:该函数必须在调用::HI_SVR_PLAYER_SetMedia接口后调用 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[out] pstruInfo obtained file information. CNcomment:获取的文件信息 CNend

\retval ::HI_SUCCESS The file information is obtained successfully. CNcomment:获取到文件信息 CNend
\retval ::HI_FAILURE The file information fails to be obtained. CNcomment:获取文件信息失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_GetFileInfo(HI_HANDLE hPlayer, HI_FORMAT_FILE_INFO_S *pstruInfo);

/**
\brief Obtain the player information, such as the current playing status, playing progress, and elapsed time. CNcomment:获取播放器信息，如当前播放状态、播放进度、已播放时间等 CNend
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_Create interface is called. The playing progress and elapsed time are valid only after the ::HI_SVR_PLAYER_Play interface is called.
CNcomment:该函数必须在调用::HI_SVR_PLAYER_Create接口后调用，播放进度、已播放时间只有在调用::HI_SVR_PLAYER_Play接口后有效
::HI_SVR_PLAYER_SetMedia未返回前不允许调用该接口 CNend

\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend
\param[out] pstruInfo player information. CNcomment:播放器信息 CNend

\retval ::HI_SUCCESS The player information is obtained successfully. CNcomment:播放器信息获取成功 CNend
\retval ::HI_FAILURE The player information fails to be obtained. CNcomment:播放器信息获取失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_GetPlayerInfo(HI_HANDLE hPlayer, HI_SVR_PLAYER_INFO_S *pstruInfo);

/**
\brief Register a file and subtitle DEMUX. The DEMUX must be a DLL and is implemented based on the specifications of the hi_svr_format.h header file.  CNcomment:注册文件解析、字幕解析器，解析器必须是动态库，且按hi_svr_format.h头文件规范实现
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_Init interface is called.
DDLs such as libformat.so are stored in /usr/lib. The interface is called as follows:
HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libformat.so")
CNcomment:该接口必须在调用::HI_SVR_PLAYER_Init接口后调用 CNend
动态库放在/usr/lib目录下，如libformat.so，则调用该接口方式为:
HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libformat.so")

\param[in] eDllType DDL type. CNcomment:动态库类型 CNend
\param[in] dllName DDL name. CNcomment:动态库名称 CNend

\retval ::HI_SUCCESS The DDL is registered successfully.  CNcomment:动态库注册成功 CNend
\retval ::HI_FAILURE The DDL fails to be registered. CNcomment:注册失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLLTYPE_E eDllType, const HI_CHAR *dllName);

/**
\brief Register a file and subtitle DEMUX. The DEMUX must be a point of HI_FORMAT_S struct and is implemented based on the specifications of the hi_svr_format.h header file.  CNcomment:注册文件解析、字幕解析器，解析器必须是HI_FORMAT_S结构体指针，且按hi_svr_format.h头文件规范实现
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_Init interface is called.
CNcomment:该接口必须在调用::HI_SVR_PLAYER_Init接口后调用 CNend

\param[in] pEntry HI_FORMAT_S struct point. CNcomment:HI_FORMAT_S结构体指针 CNend

\retval ::HI_SUCCESS The format is registered successfully.  CNcomment:format注册成功 CNend
\retval ::HI_FAILURE The format fails to be registered. CNcomment:注册失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_RegisterEntry(HI_FORMAT_S * pEntry);

/**
\brief Remove all DDLs for parsing files and subtitles. CNcomment:卸载所有文件解析、字幕解析动态库 CNend
\attention \n
This interface must be called after the ::HI_SVR_PLAYER_Init interface is called.
CNcomment:该接口必须在调用::HI_SVR_PLAYER_Init接口后调用 CNend

\param[in] eDllType DDL type. CNcomment:动态库类型 CNend
\param[in] dllName DDL name. It is reserved. CNcomment:动态库名称，保留参数，暂不使用 CNend

\retval ::HI_SUCCESS The DDLs are removed successfully. CNcomment:卸载成功 CNend
\retval ::HI_FAILURE The DDLs fail to be removed. CNcomment:卸载失败 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_UnRegisterDynamic(HI_SVR_PLAYER_DLLTYPE_E eDllType, const HI_CHAR *dllName);

/**
\brief Enable or disable the player dbg. CNcomment:打开/关闭player dbg信息 CNend
\attention \n
This interface can be called in any state.
CNcomment:该接口可以在任何状态调用 CNend

\param[in] bEnable enable value. HI_TRUE: enables the player log. HI_FALSE: disables the player log. CNcomment:使能值，HI_TRUE:打开player日志信息，HI_FALSE:关闭日志信息 CNend

\retval :: None.

\see \n
None.
*/
HI_VOID HI_SVR_PLAYER_EnableDbg(HI_BOOL bEnable);

/**
\brief Obtain the player version. CNcomment:获取播放器版本号 CNend
\attention \n
This interface can be called in any state.
CNcomment:该接口可以在任何状态调用 CNend

\param[out] pstVersion player version. CNcomment:播放器版本号 CNend

\retval :: None.

\see \n
None.
*/
HI_VOID HI_SVR_PLAYER_GetVersion(HI_FORMAT_LIB_VERSION_S *pstVersion);


/**
\brief Create a player for meta retriever. CNcomment:创建一个播放器用于媒体元数据获取 CNend
\attention \n
This interface must be called after initialization. Only one player can be created. \n
CNcomment:该接口必须在初始化后调用，支持最多创建一个播放器 CNend\n
\param[in] pstruParam player initialization attribute. The available Dmx ID and port ID must be specified for TS streams to be played. CNcomment:播放器初始化属性，播放ts流，必须指定可用的dmx id和port id CNend
\param[in] pstruMedia media file information. Only absolute path is supported.\n
\param[out] phPlayer handle of the created player. CNcomment:创建的播放器句柄 CNend

\retval ::HI_SUCCESS A player is created successfully and the player handle is valid. CNcomment:创建成功，播放器句柄有效 CNend
\retval ::HI_FAILURE A player fails to be created. The parameters are invalid or resources are insufficient. CNcomment:创建失败，参数非法或资源不够 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_CreateMetaRetriever(const HI_SVR_PLAYER_PARAM_S *pstruParam,
                                            HI_SVR_PLAYER_MEDIA_S *pstruMedia, HI_HANDLE *phPlayer);

/**
\brief Destroy a player instance for meta retriever. CNcomment:销毁一个用于媒体元数据获取的播放器实例 CNend
\attention \n
The HI_S32 HI_SVR_PLAYER_Destroy interface is called to destroy the player resource after the ::HI_SVR_PLAYER_CreateMetaRetriever interface is called to create a player.
CNcomment:调用::HI_SVR_PLAYER_CreateMetaRetriever创建播放器后，调用该接口销毁播放器资源 CNend
\param[in] hPlayer player handle. CNcomment:播放器句柄 CNend

\retval ::HI_SUCCESS The player is released successfully. CNcomment:播放器释放成功 CNend
\retval ::HI_FAILURE The operation is invalid. CNcomment:非法操作 CNend

\see \n
None.
*/
HI_S32 HI_SVR_PLAYER_DestroyMetaRetriever(HI_HANDLE hPlayer);

/** @}*/  /** <!-- ==== API Declaration End ====*/

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_SVR_PLAYER_H__ */

