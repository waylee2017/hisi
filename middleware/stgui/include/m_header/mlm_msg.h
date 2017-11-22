/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_msg.h
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
#ifndef	__MLM_MSG_H__ /* 防止头文件被重复引用 */
#define	__MLM_MSG_H__
/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

typedef MBT_U32 MET_Msg_T;

/*
*说明：创建一个消息队列。
*输入参数：
*			msgSize：每个消息的大小，单位字节（byte）。
*			msgCount：消息队列消息的最大个数。
*输出参数:
*msgID：消息队列创建成功返回大于零的ID，创建失败返回MM_INVALID_HANDLE。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Msg_Create(MBT_U32 msgSize,MBT_U32 msgCount,MET_Msg_T *msgID);

/*
*说明：销毁一个消息队列
*输入参数：
*			msgID：要销毁的消息队列的ID。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR：成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Msg_Destroy(MET_Msg_T msgID);

/*
*说明：等待一个消息，如果消息队列里有消息，则直接取出消息；否则等待waitTime
*的时间，直到超时或者有消息到达。
*输入参数：
*				msgID：消息队列的ID。
*u32BufLen：存放此消息的buf长度。
*waitTime：消息等待的时间,单位ms，waitTime = MM_SYS_TIME_INIFIE表示永久等待。
*输出参数:
*buf：保存消息的缓存。调用者要保证缓存的大小能放得下一个消息。
*			返回：
*				MM_NO_ERROR:成功。
*				错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Msg_WaitMsg(MET_Msg_T msgID,MBT_VOID * buf,MBT_U32 msgSize,MBT_U32 waitTime);


/*
*说明：发送一个消息到消息队列中，如果队列中没有空余的消息可用，则一直等待，直到可以申请到新的消息再发送。
*输入参数：
*			msgID：输入参数，消息队列的ID。
*			buf：输入参数，保存消息的缓存。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR：成功。
*			错误号：失败。
*MM_SYS_TIME_IMEDIEA  0 
*MM_SYS_TIME_INIFIE  (0xFFFFFFFF)
*/
extern MMT_STB_ErrorCode_E MLMF_Msg_SendMsg(MET_Msg_T msgID,MBT_VOID * buf,MBT_U32 msgSize,MBT_U32 waitTime);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_MSG_H__ */

/*----------------------End of mlm_msg.h-------------------------*/

