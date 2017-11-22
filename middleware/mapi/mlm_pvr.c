#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "mapi_inner.h"
#include "mlm_pvr.h"
#include <sys/stat.h>
#include <string.h>
#include <dirent.h>
#include <sys/types.h>




//-------------------------------------------------------------------------------------------------
//  Local Compiler Options
//-------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------
//  Local Defines
//-------------------------------------------------------------------------------------------------
#if 1
#define MLPVR_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLPVR_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLPVR_ERR(fmt, args...)  {}
#define MLPVR_DEBUG(fmt, args...) {}
#endif


#define PVR_LIVE_AUTO_SWITCH            1
#define PVR_TIMESHIFT_AUTO_FREEZE       1

#define PVR_TIMESHIFT_FILENAME          "ovt_pvr_timeshift.ts"

//-------------------------------------------------------------------------------------------------
//  Global Variables
//-------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------
//  Local Variables
//-------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------
//  Local Functions
//-------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------
//  Global Functions
//-------------------------------------------------------------------------------------------------
/*******************************************************************************
 * Description : 注册状态改变回调函数
 * Parameters  :  
 * Returns     :  PVR_NO_ERROR -- 成功
 * 			    other -- 错误
 */
MMT_STB_ErrorCode_E MLMF_PVR_StateChangeCallback_Register(MBT_VOID (*pBCallback)(MBT_U8 u8Event))
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_Init(MMT_PVR_Type_e eFSType,MBT_U32 u32HashVal,MBT_U8 *pszMountPath,MBT_VOID (*pNotify)(MBT_VOID *pData,MBT_S32 iDataSize))
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_DeInit(MBT_VOID)
{
	
}


MBT_BOOL MLMF_PVR_IsRecord(void)
{
	
}


MBT_BOOL MLMF_PVR_IsPlay(void)
{
	
}


MBT_BOOL MLMF_PVR_IsTimeshift(void)
{
	
}


MBT_BOOL MLMF_PVR_IsTimeshiftPlay(void)
{
	
}


// pszFileName: rec filename; pu32Lcn: 可以实用service id 或是progno 来代替
MMT_STB_ErrorCode_E MLMF_PVR_RecordStart(MBT_U8 *pszFileName)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_RecordStop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_RecordPause(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_RecordResume(MBT_VOID)
{
	
}


MBT_ULONG MLMF_PVR_RecordGetTime(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStart(MBT_U8 *pszFileName, MBT_ULONG u32PlayStartTime, MBT_U16 *pEcmPid)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackPause(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackResume(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackStepIn(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackSetSpeed(MMT_PVR_PlaybackSpeed_e eSpeed)
{
	
}


MMT_PVR_PlaybackSpeed_e MLMF_PVR_PlaybackGetSpeed(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackJump(MBT_U8 pu8Pos, MBT_ULONG pu32Time)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackAbLoop(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackResetAbLoop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackSkip(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackRemoveSkip(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_PlaybackGetTime(MBT_U32 *curTime, MBT_U32 *durTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftStart(MBT_ULONG ulSize)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftStop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPause(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftResume(MBT_VOID)
{
	
}


MBT_ULONG MLMF_PVR_TimeshiftGetTime(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayStart(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayStop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayPause(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayResume(MBT_VOID)
{
	
}


MMT_PVR_PlaybackSpeed_e MLMF_PVR_TimeshiftPlayGetSpeed(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlaySetSpeed(MMT_PVR_PlaybackSpeed_e eSpeed)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayGetTime(MBT_U32 *curTime, MBT_U32 *durTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayJump(MBT_U8 u8Pos, MBT_ULONG u32Time)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayAbLoop(MBT_U8 *pu8StartTime, MBT_U8 *pu8EndTime)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_TimeshiftPlayResetAbLoop(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_CheckUsbSpeed(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_GetFileInfo(MBT_CHAR *pszFileName, MBT_U32 *duration, MBT_U32 *size)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_RemoveFile(MBT_CHAR *pszFileName)
{
	
}


MMT_STB_ErrorCode_E MLMF_PVR_RenameFile(MBT_CHAR *pszFileName, MBT_CHAR *pszNewFileName)
{
	
}


