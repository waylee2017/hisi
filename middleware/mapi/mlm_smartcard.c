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
#include "mlm_type.h"
#include "string.h"
#include "mapi_inner.h"


/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#if 0
#define MLSMC_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLSMC_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLSMC_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLSMC_DEBUG(fmt, args...) {}
#endif


static MMT_STCD_Status_E mv_eSmartCardStatus = MM_SMARTCARD_OUT;
static MBT_VOID (*mlf_smartcard_SCStatusNotify)(MBT_S32 cardno,MMT_STCD_Status_E status, MMT_STCD_Standard_E standard, MMT_STCD_Protocol_E protocol) = NULL;
static MBT_BOOL mv_eSmartCardActived = MM_FALSE;

/*------------------------------------------------------------*/

/*
*说明:设置智能卡状态改变通知回调函数。
*输入参数：
*cardno：智能卡序号。
*M_SC_STATUS_NOTIFY：智能卡状态改变回调函数，当智能卡插入或拔出时调用此函数来通知上层。
*输出参数:
*			无。
*返回：
*	   MM_NO_ERROR:成功。
*	   错误号：失败。
*/
MMT_STB_ErrorCode_E  MLMF_SmartCard_SetNotify (MBT_S32 cardno, 
                                                            MBT_VOID (*pSCStatusNotify)(
                                                                                    MBT_S32 cardno, 
                                                                                    MMT_STCD_Status_E status, 
                                                                                    MMT_STCD_Standard_E standard, 
                                                                                    MMT_STCD_Protocol_E protocol))
{
    mlf_smartcard_SCStatusNotify = pSCStatusNotify;  
    return MM_NO_ERROR;
}

                                                                                                                                
/*
*说明：智能卡复位。
*输入参数：
*cardno：智能卡序号。
*msgATR：复位应答字符串。
*msgATRLen：ATR应答的长度。
*输出参数:
*			无。
*返回：
*	MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E  MLMF_SmartCard_Reset(MBT_S32 cardno, MBT_U8 *msgATR,MBT_U32 *msgATRLen)
{
	
}


/*
*说明:获取智能卡插拔状态。
*输入参数：
*cardno：智能卡序号。
*status：智能卡状态。
*输出参数:
*			无。
*返回：
*	MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E  MLMF_SmartCard_GetStatus(MBT_S32 cardno, MMT_STCD_Status_E *status)
{
    *status = mv_eSmartCardStatus;
    return MM_NO_ERROR;
}

/*
*说明:智能卡数据通讯。
*输入参数：
*cardno：智能卡序号。
*command：发送的智能卡命令缓存。
*commandLen：发送的智能卡命令长度。
*recvBuffer：返回的数据缓存。
*recvLen：recvBuffer的长度。
*statusWord：状态字。
*输出参数:
*			无。
*返回：
*	MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E  MLMF_SmartCard_TransferData(MBT_S32 cardno, 
                                                                    MBT_U8 *command,
                                                                    MBT_U32 commandLen, 
                                                                    MBT_U8 *recvBuffer, 
                                                                    MBT_U32 *recvLen, 
                                                                    MBT_U16 *statusWord)
{
	
}




MMT_STB_ErrorCode_E MLF_SmartCardInit(MBT_VOID)
{
	
}


MMT_STB_ErrorCode_E MLF_SmartCardTerm(MBT_VOID)
{
	
}


/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */



