
#ifndef _MLM_PVR_H_
#define _MLM_PVR_H_

#ifdef __cplusplus
extern "C" {
#endif


typedef enum
{
    MPVR_FS_UNKNOWN = 0,                            ///< unknown file system
    MPVR_FS_JFFS2,                                  ///< jffs2 file system
    MPVR_FS_VFAT,                                   ///< fat, fat32 file system
    MPVR_FS_EXT2,                                   ///< ext2 file system
    MPVR_FS_EXT3,                                   ///< ext3 file system
    MPVR_FS_MSDOS,                                  ///< msdos file system
    MPVR_FS_NTFS,                                   ///< ntfs file system

    MPVR_FS_MAX
} MMT_PVR_Type_e;

typedef enum
{
    MPVR_PLAYBACK_SPEED_32XFB    = -32000,          /// < -32 X for fast backward
    MPVR_PLAYBACK_SPEED_16XFB    = -16000,          /// < -16 X for fast backward
    MPVR_PLAYBACK_SPEED_8XFB     =  -8000,          /// < - 8 X for fast backward
    MPVR_PLAYBACK_SPEED_4XFB     =  -4000,          /// < - 4 X for fast backward
    MPVR_PLAYBACK_SPEED_2XFB     =  -2000,          /// < - 2 X for fast backward
    MPVR_PLAYBACK_SPEED_1XFB     =  -1000,          /// < - 1 X for fast backward
    MPVR_PLAYBACK_SPEED_0X       =      0,          /// < Freeze for PAUSE
    MPVR_PLAYBACK_SPEED_FF_1_32X =     32,          /// < 1 / 32 X for slow forward
    MPVR_PLAYBACK_SPEED_FF_1_16X =     64,          /// < 1 / 16 X for slow forward
    MPVR_PLAYBACK_SPEED_FF_1_8X  =    125,          /// < 1 / 8  X for slow forward
    MPVR_PLAYBACK_SPEED_FF_1_4X  =    250,          /// < 1 / 4  X for slow forward
    MPVR_PLAYBACK_SPEED_FF_1_2X  =    500,          /// < 1 / 2  X for slow forward
    MPVR_PLAYBACK_SPEED_1X       =   1000,          /// <     1  X for normal playback
    MPVR_PLAYBACK_SPEED_2XFF     =   2000,          /// <     2  X for fast forward
    MPVR_PLAYBACK_SPEED_4XFF     =   4000,          /// <     4  X for fast forward
    MPVR_PLAYBACK_SPEED_8XFF     =   8000,          /// <     8  X for fast forward
    MPVR_PLAYBACK_SPEED_16XFF    =  16000,          /// <    16  X for fast forward
    MPVR_PLAYBACK_SPEED_32XFF    =  32000,          /// <    32  X for fast forward
} MMT_PVR_PlaybackSpeed_e;

typedef enum
{
    MPVR_EVENT_RECORD_NOSPACE = 0,
    MPVR_EVENT_PLAYBACK_STOP  = 1,
    MPVR_EVENT_NOENTITLEMENT_STOP = 2,
    MPVR_EVENT_MAX

} MMT_PVR_Event_e;

extern MMT_STB_ErrorCode_E MLMF_PVR_StateChangeCallback_Register(MBT_VOID (*pBCallback)(MBT_U8 u8Event));
extern MMT_STB_ErrorCode_E MLMF_PVR_Init(MMT_PVR_Type_e eFSType,MBT_U32 u32HashVal,MBT_U8 *pszMountPath,MBT_VOID (*pNotify)(MBT_VOID *pData,MBT_S32 iDataSize));
extern MMT_STB_ErrorCode_E MLMF_PVR_DeInit(MBT_VOID);
typedef MBT_VOID (*MLMF_PVR_StateChange_CallBack_Fuc)(MBT_U8 u8Event);
extern MBT_BOOL MLMF_PVR_IsRecord(void);
extern MBT_BOOL MLMF_PVR_IsPlay(void);
extern MBT_BOOL MLMF_PVR_IsTimeshift(void);
extern MBT_BOOL MLMF_PVR_IsTimeshiftPlay(void);
extern MMT_STB_ErrorCode_E MLMF_PVR_RecordStart(MBT_U8 *pszFileName);
extern MMT_STB_ErrorCode_E MLMF_PVR_RecordStop(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_RecordPause(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_RecordResume(MBT_VOID);
extern MBT_ULONG MLMF_PVR_RecordGetTime(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStart(MBT_U8 *pszFileName, MBT_ULONG ulPlayStartTime, MBT_U16 *pEcmPid);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStop(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackPause(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackResume(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStepIn(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackSetSpeed(MMT_PVR_PlaybackSpeed_e eSpeed);
extern MMT_PVR_PlaybackSpeed_e MLMF_PVR_PlaybackGetSpeed(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackGetTime(MBT_U32 *curTime, MBT_U32 *durTime);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackJump(MBT_U8 pu8Pos, MBT_ULONG pu32Time);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackAbLoop(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackResetAbLoop(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackSkip(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime);
extern MMT_STB_ErrorCode_E MLMF_PVR_PlaybackRemoveSkip(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime);


extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftStart(MBT_ULONG ulSize);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftStop(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPause(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftResume(MBT_VOID);
extern MBT_ULONG MLMF_PVR_TimeshiftGetTime(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayGetTime(MBT_U32 *curTime, MBT_U32 *durTime);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayStart(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayStop(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayPause(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayResume(MBT_VOID);
extern MMT_PVR_PlaybackSpeed_e MLMF_PVR_TimeshiftPlayGetSpeed(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlaySetSpeed(MMT_PVR_PlaybackSpeed_e eSpeed);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayJump(MBT_U8 u8Pos, MBT_ULONG u32Time);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayAbLoop(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime);
extern MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayResetAbLoop(MBT_VOID);


extern MMT_STB_ErrorCode_E MLMF_PVR_CheckUsbSpeed(MBT_VOID);
extern MMT_STB_ErrorCode_E MLMF_PVR_GetFileInfo(MBT_CHAR *pszFileName, MBT_U32 *duration, MBT_U32 *size);
extern MMT_STB_ErrorCode_E MLMF_PVR_RemoveFile(MBT_CHAR *pszFileName);
extern MMT_STB_ErrorCode_E MLMF_PVR_RenameFile(MBT_CHAR *pszFileName, MBT_CHAR *pszNewFileName);

extern MBT_BOOL MLMF_PVR_ExtraFile_Add(MBT_VOID *data, MBT_U32 len);
extern MBT_VOID MLMF_PVR_ExtraFile_Pop(MBT_VOID *data, MBT_U32 len);

#ifdef __cplusplus
}
#endif

#endif///_MLM_PVR_H_

