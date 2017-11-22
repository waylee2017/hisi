/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_malloc.h
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
#ifndef	__MLM_MOLLOC_H__ /* 防止头文件被重复引用 */
#define	__MLM_MOLLOC_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*
*说明：申请指定大小的内存。
*输入参数：
*			Size：输入参数，要分配的大小。       
*输出参数:
*无。
*		返回：
*			分配成功内存的起始地址，或者分配失败MBT_ NULL。
*/
extern MBT_VOID * MLMF_Malloc(MBT_U32 size);

/*
*说明：释放申请到的内存。
*输入参数：
*			Addr：输入参数，释放的内存指针。
*输出参数:
*无。
*		返回：
*			无。
*/
extern MBT_VOID MLMF_Free(MBT_VOID *addr);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_MOLLOC_H__ */

/*----------------------End of mlm_malloc.h-------------------------*/

