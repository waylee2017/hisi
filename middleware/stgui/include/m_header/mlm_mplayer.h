#ifndef	_MLM_MPLAYER_H_
#define	_MLM_MPLAYER_H_

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#include "mlm_type.h"

typedef enum MMT_MPLAYER_Status
{
	MPLAYER_STATUS_INIT,
	MPLAYER_STATUS_STARTING,
	MPLAYER_STATUS_READY,
	MPLAYER_STATUS_PLAYING,
	MPLAYER_STATUS_BUFFERING,
	MPLAYER_STATUS_PAUSED,
	MPLAYER_STATUS_SCANNING,
	MPLAYER_STATUS_DONE,
	MPLAYER_STATUS_ERROR,
	MPLAYER_STATUS_STOPPED,
	MPLAYER_STATUS_RESERVE
}MMT_MPLAYER_Status_e;

typedef enum MMT_MPLAYER
{
	MPLAYER_EVENT_EOF,/*播放到文件尾*/
	MPLAYER_EVENT_ERROR,/*播放内部错误*/
	MPLAYER_EVENT_RESV,/*保留*/
	MPLAYER_EVENT_BUTT/*无效的事件类型*/
}MMT_MPLAYER_Event_e;

typedef enum
{
    MPLAYER_TYPE_VIDEO = 0,
    MPLAYER_TYPE_AUDIO,
    MPLAYER_TYPE_PHOTO,
    MPLAYER_TYPE_NUM
} MMT_MPLAYER_Type_e;

typedef enum _media_player_speed
{
    PLAY_SPEED_BACKWARD_32X	= -32,
    PLAY_SPEED_BACKWARD_16X	= -16,
    PLAY_SPEED_BACKWARD_8X	= -8,
    PLAY_SPEED_BACKWARD_4X	= -4,
    PLAY_SPEED_BACKWARD_2X	= -2,
    PLAY_SPEED_0 = 0,
    PLAY_SPEED_1X	        = 1,
    PLAY_SPEED_FORWARD_2X	= 2,
    PLAY_SPEED_FORWARD_4X	= 4,
    PLAY_SPEED_FORWARD_8X	= 8,
    PLAY_SPEED_FORWARD_16X	= 16,
    PLAY_SPEED_FORWARD_32X	= 32
}MEDIA_PLAYER_SPEED_e;


extern MMT_STB_ErrorCode_E MLMF_MPLAYERTerm(void);

/*启动播放*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_Start(MBT_CHAR *pFileName, MMT_MPLAYER_Type_e ePlayTpye);

/*停止播放*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_Stop(MMT_MPLAYER_Type_e ePlayTpye);

/*暂停播放*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_Pause(MMT_MPLAYER_Type_e ePlayTpye);

/*恢复播放*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_Resume(MMT_MPLAYER_Type_e ePlayTpye);

/*将当前播放位置定位到指定位置*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_Seek(MBT_U32 uOffsetInMs, MMT_MPLAYER_Type_e ePlayTpye);

/*设置快进快退的速度*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_SetSpeed(MEDIA_PLAYER_SPEED_e eSpeed, MMT_MPLAYER_Type_e ePlayTpye);

/*得到当前快进快退的速度*/
extern MBT_S8 MLMF_MPLAYER_GetSpeed(MMT_MPLAYER_Type_e ePlayTpye);

/*获取播放媒体的持续时间*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_GetDuration(MBT_U32 *pu32TimeInS, MMT_MPLAYER_Type_e ePlayTpye);

/*获取媒体当前播放的时间点*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_GetCurrentTime(MBT_U32 *pTimeInS, MMT_MPLAYER_Type_e ePlayTpye);

/*获取当前播放器的状态，保证随时可以被调用*/
extern MMT_MPLAYER_Status_e MLMF_MPLAYER_GetStatus(MMT_MPLAYER_Type_e ePlayTpye);

typedef MBT_VOID (*MLMF_MPLAYER_CallBack_Fuc)(MMT_MPLAYER_Status_e eEvent, MBT_U32 uParam1);

/*注册事件回调函数*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_RegisterEvent(MLMF_MPLAYER_CallBack_Fuc fCallBack);

/*反注册事件回调函数*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_UnRegisterEvent(MBT_VOID);

/*得到图片的长宽信息*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_GetPhotoInfo(MBT_U32 *pu32Width,MBT_U32 *pu32Height);

/*画图*/
extern MMT_STB_ErrorCode_E MLMF_MPLAYER_ShowPicture(MBT_U32 x,MBT_U32 y,MBT_U32 u32Width,MBT_U32 u32Height);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif
