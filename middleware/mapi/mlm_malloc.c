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
#include <stdio.h>
#include <stdlib.h>

#include "mapi_inner.h"


#define BLMALLOC_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)



/*
*说明：申请指定大小的内存。
*输入参数：
*			Size：输入参数，要分配的大小。       
*输出参数:
*无。
*		返回：
*			分配成功内存的起始地址，或者分配失败MM_NULL。
*/
MBT_VOID * MLMF_Malloc(MBT_U32 size)
{
	return malloc(size);
}


/*
*说明：释放申请到的内存。
*输入参数：
*			Addr：输入参数，释放的内存指针。
*输出参数:
*无。
*		返回：
*			无。
*/
MBT_VOID MLMF_Free(MBT_VOID *addr)
{
	if (NULL != addr)
	{
		free(addr);
	}
}




MBT_VOID MLF_ShowMemInfo(MBT_VOID)
{
	
}



/*----------------------End of ErrorCode.h-------------------------*/

