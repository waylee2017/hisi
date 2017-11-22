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
#include <semaphore.h>

#include "mapi_inner.h"


#if 0
#define BLSEM_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define BLSEM_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define BLSEM_ERR(fmt, args...)  {}
#define BLSEM_DEBUG(fmt, args...) {}
#endif


/*
*说明：创建一个信号量。
*输入参数：
*		    Count：最大初始化计数。
*semID: 若信号量创建成功返回大于零的信号量ID，若失败则返回MM_INVALID_HANDLE。
*输出参数:
*		    无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Sem_Create(MET_Sem_T *semID, MBT_U32 count)
{
	sem_t *_sem=NULL;
	
	_sem = (sem_t*)MLMF_Malloc(sizeof(sem_t));
	
	if(NULL == _sem)
	{
		return MM_ERROR_NO_MEMORY;
	}
	
	*semID = MM_INVALID_HANDLE;
	
	if(sem_init(_sem,0,count) != 0)
	{	
		MLMF_Free(_sem);
		return MM_ERROR_UNKNOW;
	}

	*semID = (MET_Sem_T)_sem;

	return MM_NO_ERROR;
}


/*
*说明：销毁一个信号量。
*输入参数：
*			semID：要销毁的信号量句柄。
*输出参数:
*		    无。
*		返回：
*		    MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Sem_Destroy(MET_Sem_T semID)
{
	sem_t *_sem=NULL;

	if (MM_INVALID_HANDLE == semID||NULL == semID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_sem = (sem_t *)semID;
	sem_destroy(_sem);
	MLMF_Free(_sem);
	
	return MM_NO_ERROR;
}

/*
*说明：等待一个信号量，等待的过程中任务阻塞，如果到规定的时间内还没有等到该信号量，则返回MM_ERROR_TIMEOUT超时退出。
*输入参数：
*			semID：合法的信号量ID。
*waitTime：信号量等待超时的时间，单位是ms，waitTime = MM_SYS_TIME_INIFIE表示永久等待。
*输出参数:
*		    无。
*		返回
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Sem_Wait(MET_Sem_T semID,MBT_U32 waitTime)
{
	struct timespec _ts;
	unsigned int _sec=0,_msec=0;
	sem_t *_sem=NULL;
			
	if(MM_INVALID_HANDLE == semID||NULL == semID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}

	_sem = (sem_t *)semID;
	
	if(MM_SYS_TIME_INIFIE == waitTime)
	{
		sem_wait(_sem);
		return MM_NO_ERROR;
	}

	if(MM_SYS_TIME_IMEDIEA == waitTime)
	{
		sem_trywait(_sem);

		return MM_NO_ERROR;
	}

	if(clock_gettime(CLOCK_REALTIME, &_ts) == -1)
	{
		return MM_ERROR_TIMEOUT;
	}

	_msec =	waitTime;
	_sec=_msec/1000; //get second count;
	_msec = _msec%1000;
	
	_ts.tv_sec +=  _sec;
	_ts.tv_nsec += (_msec*1000*1000);
      _ts.tv_sec += _ts.tv_nsec/(1000 * 1000 * 1000);
      _ts.tv_nsec %= 1000 * 1000 * 1000;

	if(0 == sem_timedwait(_sem,&_ts))
	{
		return MM_NO_ERROR;
	}

	return MM_ERROR_TIMEOUT;
}


/*
*说明：释放一个信号量。
*输入参数：
*			semID：要释放的信号量ID。
*输出参数:
*		    无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Sem_Release(MET_Sem_T semID)
{
	sem_t *_sem=NULL;

	if (MM_INVALID_HANDLE == semID||NULL == semID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_sem = (sem_t *)semID;
	sem_post(_sem);
	return MM_NO_ERROR;
}



