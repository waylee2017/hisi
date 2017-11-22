/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_semaphore.h
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
#ifndef	__MLM_SEMAPHORE_H__ /* 防止头文件被重复引用 */
#define	__MLM_SEMAPHORE_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

typedef MBT_U32 MET_Sem_T;

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
extern MMT_STB_ErrorCode_E MLMF_Sem_Create(MET_Sem_T *semID, MBT_U32 count);

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
extern MMT_STB_ErrorCode_E MLMF_Sem_Destroy(MET_Sem_T semID);

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
extern MMT_STB_ErrorCode_E MLMF_Sem_Wait(MET_Sem_T semID,MBT_U32 waitTime);

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
extern MMT_STB_ErrorCode_E MLMF_Sem_Release(MET_Sem_T semID);
/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_SEMAPHORE_H__ */

/*----------------------End of mlm_semaphore.h-------------------------*/

