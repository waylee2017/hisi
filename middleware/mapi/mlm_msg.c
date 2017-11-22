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
#include "inttypes.h"
#include <sys/stat.h>
#include <mqueue.h>
#include "mapi_inner.h"


#if 0
#define MLMSG_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLMSG_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLMSG_ERR(fmt, args...)  {}
#define MLMSG_DEBUG(fmt, args...) {}
#endif

#define FILE_MODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH)



/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

typedef struct msg_s
{
	mqd_t mqd;
	char msgname[20];
} msg_t;

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
MMT_STB_ErrorCode_E MLMF_Msg_Create(MBT_U32 msgSize,MBT_U32 msgCount,MET_Msg_T *msgID)
{
	static unsigned int s_count=0;
	char _mq_name[14]={0};
	struct mq_attr _attr={0};
	int _oflag=0;
	msg_t *_pmq = NULL;

	_pmq = (msg_t*)MLMF_Malloc(sizeof(msg_t));
	
	if(NULL == _pmq)
	{
		return MM_ERROR_NO_MEMORY;
	}

	sprintf(_mq_name,"/linuxmq%ld",s_count++);

	*msgID = MM_INVALID_HANDLE;
	_oflag = O_CREAT | O_RDWR;
	_attr.mq_maxmsg=msgCount;
	_attr.mq_msgsize=msgSize;
	
	_pmq->mqd = mq_open(_mq_name,_oflag,FILE_MODE,&_attr);
	
	if(-1 == _pmq->mqd)
	{
		MLMF_Free(_pmq);
		return MM_ERROR_UNKNOW;
	}
	strcpy(_pmq->msgname,_mq_name);
	*msgID = _pmq;
	
	return MM_NO_ERROR;
}


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
MMT_STB_ErrorCode_E MLMF_Msg_Destroy(MET_Msg_T msgID)
{
	msg_t *_pmq = NULL;

	if (MM_INVALID_HANDLE == msgID||NULL == msgID)
	{
           return MM_ERROR_BAD_PARAMETER;
	}

	_pmq = (msg_t *)msgID;
	mq_close(_pmq->mqd);
	mq_unlink(_pmq->msgname);

	return MM_NO_ERROR;
}


/*
*说明：等待一个消息，如果消息队列里有消息，则直接取出消息；否则等待waitTime
*的时间，直到超时或者有消息到达。
*输入参数：
*				msgID：消息队列的ID。
*u32BufLen：存放此消息的buf长度。
*waitTime：消息等待的时间,单位ms，waitTime = MM_SYS_TIME_INIFIE表示永久等待,waitTime = MM_SYS_TIME_IMEDIEA表示立即返回。
*输出参数:
*buf：保存消息的缓存。调用者要保证缓存的大小能放得下一个消息。
*			返回：
*				MM_NO_ERROR:成功。
*				错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Msg_WaitMsg(MET_Msg_T msgID,MBT_VOID *buf,MBT_U32 msgSize,MBT_U32 waitTime)
{
	struct timespec _ts;
	struct mq_attr _attr;
	clock_t _total_msec=0;
	int _err=0;
	msg_t *_pmq = NULL;

	unsigned int _sec=0,_msec=0;

	if (MM_INVALID_HANDLE == msgID||NULL == msgID)
	{
           return MM_ERROR_BAD_PARAMETER;
	}

	if (NULL == buf)
	{
		return MM_ERROR_BAD_PARAMETER;
	}

	_pmq = (msg_t *)msgID;
	
	if(MM_SYS_TIME_INIFIE == waitTime)
	{
		mq_getattr(_pmq->mqd, &_attr);
		mq_receive(_pmq->mqd, buf, _attr.mq_msgsize, 0);

		return MM_NO_ERROR;
	}

	if(MM_SYS_TIME_IMEDIEA == waitTime)
	{
		_total_msec = 0;
	}
	else
	{
		_total_msec = waitTime;
	}

	if(clock_gettime(CLOCK_REALTIME, &_ts) == -1)
	{
		return MM_ERROR_TIMEOUT;
	}

	_msec =	_total_msec;
	_sec=_msec/1000; //get second count;
	_msec = _msec%1000;

	_ts.tv_sec +=  _sec;
	_ts.tv_nsec += (_msec*1000*1000);
	_ts.tv_sec += _ts.tv_nsec/(1000 * 1000 * 1000);
	_ts.tv_nsec %= 1000 * 1000 * 1000;
    
	mq_getattr(_pmq->mqd, &_attr);
	
	_err = mq_timedreceive(_pmq->mqd, buf, _attr.mq_msgsize,0, &_ts);
	
	if(-1 == _err)
	{
		return MM_ERROR_TIMEOUT;
	}
	
	return MM_NO_ERROR;
}



/*
*说明：发送一个消息到消息队列中，如果队列中没有空余的消息可用，
*则一直等待，直到可以申请到新的消息再发送。
*输入参数：
*			msgID：输入参数，消息队列的ID。
*			buf：输入参数，保存消息的缓存。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR：成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Msg_SendMsg(MET_Msg_T msgID,MBT_VOID * buf,MBT_U32 msgSize,MBT_U32 waitTime)
{
	int err = 0;
	struct mq_attr _attr;
	clock_t _total_msec=0;
	unsigned int _sec=0,_msec=0;
	struct timespec _ts;
	msg_t *_pmq = NULL;
	
	if (MM_INVALID_HANDLE == msgID||NULL == msgID)
	{
       	return MM_ERROR_BAD_PARAMETER;
	}

	if (NULL == buf)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_pmq = (msg_t *)msgID;
	if (MM_SYS_TIME_INIFIE == waitTime)
	{
		mq_getattr(_pmq->mqd, &_attr);
		mq_send(_pmq->mqd, buf, _attr.mq_msgsize, 0);
		return MM_NO_ERROR;
	}
	if (MM_SYS_TIME_IMEDIEA == waitTime)
	{
		_total_msec = 0;
	}
	else
	{
		_total_msec = waitTime;
	}

	if (clock_gettime(CLOCK_REALTIME, &_ts) == -1)
	{
		return MM_ERROR_TIMEOUT;
	}

	_msec =	_total_msec;
	_sec=_msec/1000; //get second count;
	_msec = _msec%1000;
	
	_ts.tv_sec +=  _sec;
	_ts.tv_nsec += (_msec*1000*1000);
	_ts.tv_sec += _ts.tv_nsec/(1000 * 1000 * 1000);
	_ts.tv_nsec %= 1000 * 1000 * 1000;
	mq_getattr(_pmq->mqd, &_attr);
	err = mq_timedsend(_pmq->mqd, buf,
     						_attr.mq_msgsize, 0, &_ts);

       if (-1 == err)
       {
            return MM_ERROR_TIMEOUT;
     	}

	return MM_NO_ERROR;
}




/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

/*----------------------End of ErrorCode.h-------------------------*/

