#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "mapi_inner.h"
#include "mlm_mplayer.h"
#include "mlm_system.h"



#if 0
#define MLMM_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLMM_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLMM_ERR(fmt, args...)  {}
#define MLMM_DEBUG(fmt, args...) {}
#endif



static MBT_U32 _mlm_strlen( const char *s )
{
    int r = 0;
    while( *s++ ) r++;
    return r;
}

//------------------------------------------------------------------------------
/// @brief Handle photo callback, EX: MPLAYER_PHOTO_DECODE_DONE...for related handle or notify app.
/// @param[in] eCmd: MPLAYER_COMMAND_NOTIFY
/// @param[in] u32Param: command's parameter
/// @param[in] u32Info: unused
/// @return None
/// @sa
/// @note
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
/// @brief Handle music callback, EX: MPLAYER_START_PLAY... for related handle or notify app.
/// @param[in] eCmd: MPLAYER_COMMAND_NOTIFY
/// @param[in] u32Param: command's parameter
/// @param[in] u32Info: unused
/// @return None
/// @sa
/// @note
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
/// @brief Handle MPPLAYER callback, EX: MPLAYER_FRAME_READY, MPLAYER_EXIT_OK, MPLAYER_SUBQUEUE_PUSH...for related handle or notify app.
/// @param[in] eCmd: MPPLAYER_COMMAND_NOTIFY or MPPLAYER_COMMAND_SUBTITLE
/// @param[in] u32Param: command's parameter
/// @param[in] u32Info: mainly to get subtitle type
/// @return None
/// @sa
/// @note
//------------------------------------------------------------------------------


MMT_STB_ErrorCode_E MLMF_MPLAYER_Init(MBT_U32 u32FileOption, MBT_U32 u32APType)
{
	
}


MMT_STB_ErrorCode_E MLMF_MPLAYERTerm(void)
{
	
}


MMT_STB_ErrorCode_E MLMF_MPLAYER_Start(MBT_CHAR *pFileName, MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_Stop(MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_Pause(MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_Resume(MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_Seek(MBT_U32 u32OffsetInMs, MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_SetSpeed(MEDIA_PLAYER_SPEED_e eSpeed, MMT_MPLAYER_Type_e ePlayTpye)
{
	
}


MBT_S8 MLMF_MPLAYER_GetSpeed(MMT_MPLAYER_Type_e ePlayTpye)
{
    return 0;
}

MMT_STB_ErrorCode_E MLMF_MPLAYER_GetDuration(MBT_U32 *pu32TimeInS, MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_GetCurrentTime(MBT_U32 *pTimeInS, MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_MPLAYER_Status_e MLMF_MPLAYER_GetStatus(MMT_MPLAYER_Type_e ePlayTpye)
{
	
}
	

MMT_STB_ErrorCode_E MLMF_MPLAYER_GetPhotoInfo(MBT_U32 *pu32Width,MBT_U32 *pu32Height)
{
	
}


MMT_STB_ErrorCode_E MLMF_MPLAYER_ShowPicture(MBT_U32 x,MBT_U32 y,MBT_U32 u32Width,MBT_U32 u32Height)
{
	
}


MMT_STB_ErrorCode_E MLMF_MPLAYER_RegisterEvent(MLMF_MPLAYER_CallBack_Fuc fCallBack)
{
	return MM_NO_ERROR;
}	

MMT_STB_ErrorCode_E MLMF_MPLAYER_UnRegisterEvent(MBT_VOID)
{
	return MM_NO_ERROR;
}

