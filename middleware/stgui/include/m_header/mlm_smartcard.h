/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_smartcard.h
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
* 		Date ：2010-08-11
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_SMARTCARD_H__ /* 防止头文件被重复引用 */
#define	__MLM_SMARTCARD_H__


/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
typedef enum _m_stcd_status_e
{
    MM_SMARTCARD_IN,
    MM_SMARTCARD_OUT,
    MM_SMARTCARD_ERROR
} MMT_STCD_Status_E;

typedef enum _m_stcd_standard_e
{
    MM_SMARTCARD_STANDARD_ISO7816,
    MM_SMARTCARD_STANDARD_NDS,
    MM_SMARTCARD_STANDARD_EMV96,
    MM_SMARTCARD_STANDARD_EMV2000,
    MM_SMARTCARD_STANDARD_ECHOCHAR_T,
    MM_SMARTCARD_STANDARD_UNDEFINE
} MMT_STCD_Standard_E;
	
typedef enum _m_stcd_protocol_e
{
    MM_SMARTCARD_PROTOCOL_T0,
    MM_SMARTCARD_PROTOCOL_T1,
    MM_SMARTCARD_PROTOCOL_T14,
    MM_SMARTCARD_PROTOCOL_UNDEFINE
} MMT_STCD_Protocol_E;

/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
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
extern MMT_STB_ErrorCode_E  MLMF_SmartCard_SetNotify (MBT_S32 cardno, 
                                                                                                                                         MBT_VOID (*pSCStatusNotify)(
                                                                                                                                                    MBT_S32 cardno, 
                                                                                                                                                    MMT_STCD_Status_E status, 
                                                                                                                                                    MMT_STCD_Standard_E standard, 
                                                                                                                                                    MMT_STCD_Protocol_E protocol));


                                                                                                                                
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
extern MMT_STB_ErrorCode_E  MLMF_SmartCard_Reset(MBT_S32 cardno, MBT_U8 *msgATR,MBT_U32 *msgATRLen);

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
extern MMT_STB_ErrorCode_E  MLMF_SmartCard_GetStatus(MBT_S32 cardno, MMT_STCD_Status_E*status);

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
extern MMT_STB_ErrorCode_E  MLMF_SmartCard_TransferData(MBT_S32 cardno, 
                                                                    MBT_U8 *command,
                                                                    MBT_U32 commandLen, 
                                                                    MBT_U8 *recvBuffer, 
                                                                    MBT_U32 *recvLen, 
                                                                    MBT_U16 *statusWord);

/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_SMARTCARD_H__ */

/*----------------------End of mlm_smartcard.h-------------------------*/

