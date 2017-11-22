/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_task.h
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

#ifndef	__MLM_TASK_H__ /* 防止头文件被重复引用 */
#define	__MLM_TASK_H__


/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define M_MIN_USER_PRIORITY 0
#define M_MAX_USER_PRIORITY 31

typedef MBT_U32 MET_Task_T;

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
extern MMT_STB_ErrorCode_E MLMF_Task_Create(
                                    MBT_VOID (*func)(MBT_VOID *),
					MBT_VOID *param,
					MBT_U32 stacksize,
					MBT_U32 priority,
					MET_Task_T *taskID,
					const char *name) ;


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
extern MMT_STB_ErrorCode_E MLMF_Task_Destroy(MET_Task_T taskID);


extern MBT_VOID MLMF_Task_Exit(MBT_VOID);

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
extern MBT_VOID MLMF_Task_Sleep(MBT_U32 u32MilliSeconds);

extern MBT_VOID MLMF_Task_Lock(MBT_VOID);

extern MBT_VOID MLMF_Task_Unlock(MBT_VOID);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_TASK_H__ */

/*----------------------End of mlm_task.h-------------------------*/

