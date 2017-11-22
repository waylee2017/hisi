/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/
#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "mapi_inner.h"
 

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

static MBT_U8 mlmv_u8FpIsFD650 = 0; //1-fd650, 0-sar

static MBT_U8 s_u8StandbyMode = 0x0; /* 0 - normal, 1 - standby */
MMT_STB_ErrorCode_E MLF_FPInit(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLF_FPTerm(MBT_VOID)
{
	
}


/*
*说明：刷新前面板，此函数会被上层第隔6ms调用一次，以保证前面板LED的正常显示，
*如果前面板中有记忆芯片不用CPU刷新，可以把此函数放空。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*		错误号：失败。
*/
MBT_VOID MLMF_FP_LedFresh (MBT_VOID)
{
    //no use
    return;
}

/*
*说明：点亮或关闭锁定灯。
*输入参数：
*			u8Light: u8Light为1表示点亮，为0表示熄灭。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_FP_SetLock (MBT_U8 u8Light)
{
	
}


/*
*说明：设置待机灯模式
*输入参数：
*			u8Light: u8Light为1表示待机模式，为0表示非待机模式。
*输出参数:
*		无。
*		返回：
*		无。
*/
MMT_STB_ErrorCode_E MLMF_FP_SetLedMode(MBT_U8 u8Light)
{
	s_u8StandbyMode = (u8Light > 0) ? 1 : 0;

    return MM_NO_ERROR;
}

/*
*说明：点亮或关闭待机灯。
*输入参数：
*			u8Light: u8Light为1表示点亮，为0表示熄灭。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_FP_SetStandby(MBT_U8 u8Light)
{
	
}




/*
*说明：读取前面板按键，上层第隔200ms调用一次用来扫描前面板按键。
*输入参数：
*无。
*输出参数:
*    无。
*		返回
*		前面板按键类型。
*/
MMT_FP_KEY_E MLMF_FP_ReadKey(MBT_VOID)
{
	
}


/*
*说明：在前面板LED上显示一个字符串，能显示几位便显示几位。目前只要求显示英文字母和数字。
*输入参数：
*			pString: 要显示的字符串。
*			u32StrLen: 要求显示的长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/

MMT_STB_ErrorCode_E MLMF_FP_Display (MBT_CHAR *pString,MBT_U32 u32StrLen, MBT_BOOL bDotStatus)
{
    //MDrv_FD650_Display(pString,bDotStatus);
    return MM_NO_ERROR;
}

MBT_U8 MLMF_FP_GetFPMode(MBT_VOID)
{
    return mlmv_u8FpIsFD650;
}

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

