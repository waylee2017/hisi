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

#include <unistd.h>
#include <pthread.h>

#include "mapi_inner.h"


#define ClOCKS_PER_SECOND (1000)


static int ClkPerSec = 0;


/*
*说明：创建一个任务。
*输入参数：
*Func:要创建的任务函数，可以带参数。
*Param:任务函数的参数。
*Stacksize:任务堆栈大小。
*Priority:任务的优先级大小（0-15）。
*name:任务的名称（各个平台支持的字符个数不一样，使用的时候最好不要超过10个字符）。
*输出参数:
*taskID：返回创建的任务句柄，如果成功返回非0值，失败返回MM_INVALID_HANDLE。
*返回：
*MM_NO_ERROR:成功。
*具体的错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Task_Create(MBT_VOID (*func)(MBT_VOID *),
                                            MBT_VOID *param,
                                            MBT_U32 stacksize,
                                            MBT_U32 priority,
                                            MET_Task_T *taskID,
                                            const MBT_CHAR *name)
{
	int _err=0;
	pthread_t _TsThd;
	pthread_attr_t _attr;
	struct sched_param  _sparam;

	*taskID = MM_INVALID_HANDLE;

	if(NULL == name)
	{
		return MM_ERROR_BAD_PARAMETER; 
	}
	
	pthread_attr_init(&_attr);
	pthread_attr_setschedpolicy(&_attr,SCHED_RR);

	//min = 1 ; max = 99
	if (priority < sched_get_priority_min(SCHED_RR))
		priority = sched_get_priority_min(SCHED_RR);

	if (priority > sched_get_priority_max(SCHED_RR))
		priority = sched_get_priority_max(SCHED_RR);

	_sparam.sched_priority = priority;
	pthread_attr_setschedparam(&_attr,&_sparam);

	_err = pthread_create(&_TsThd,&_attr,(void*)func,(void *)param);
	
	if(_err != 0)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	pthread_detach(_TsThd);//set thread auto free mem
	*taskID = _TsThd;
	
	return MM_NO_ERROR;
}


/*
*说明：销毁一个任务，并回收系统资源。
*输入参数：
*			taskID：要销毁的任务ID。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR:成功。
*			具体的错误号：失败。
*
*/
MMT_STB_ErrorCode_E MLMF_Task_Destroy(MET_Task_T taskID)
{
	if (MM_INVALID_HANDLE != taskID)
	{
		pthread_kill((pthread_t)taskID,0);
	}
	return MM_NO_ERROR;
}

MBT_VOID MLMF_Task_Exit(MBT_VOID)
{
    return;
}


/*
*说明：任务休眠ms毫秒。
*输入参数：
*Ms:任务要休眠的毫秒数。若传MM_SYS_TIME_INIFIE，则为永久休眠
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR:成功。
*			具体的错误号：失败。
*/
MBT_VOID MLMF_Task_Sleep(MBT_U32 u32MilliSeconds)
{
	struct timespec x;
	if (ClkPerSec == 0)
		ClkPerSec = ClOCKS_PER_SECOND;
	/* if < 2ms */
	if (u32MilliSeconds <= (2 * ClkPerSec / 1000 ))
	{
		x.tv_sec  = 0;
		x.tv_nsec = 2000001;
	}
	else
	{
		x.tv_sec  = u32MilliSeconds / ClkPerSec;
		x.tv_nsec = (((u32MilliSeconds % ClkPerSec) * 1000000) / ClkPerSec) * 1000;
	}
	nanosleep (&x, 0);
	return ;
}

MBT_VOID MLMF_Task_Lock(MBT_VOID)
{
}

MBT_VOID MLMF_Task_Unlock(MBT_VOID)
{
}
/*----------------------End of ErrorCode.h-------------------------*/

