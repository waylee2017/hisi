/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_memory.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef __HIGO_MEMORY_H__
#define __HIGO_MEMORY_H__

/*********************************add include here******************************/
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/kernel.h>
#include <linux/slab.h>      /* kmalloc() */
#include <linux/fs.h>        /* everything... */
#include <linux/errno.h>     /* error codes */
#include <linux/types.h>     /* size_t */
#include <linux/fcntl.h>     /* O_ACCMODE */
#include <linux/cdev.h>
#include <asm/uaccess.h>     /* copy_*_user */
#include <linux/interrupt.h>
#include <linux/poll.h>
#include <linux/workqueue.h>
#include <asm/io.h>



#include "hi_type.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define HIGO_Malloc(size)       kmalloc(size, GFP_KERNEL)
#define HIGO_Free(pVirm)        kfree(pVirm)

#define HIGO_MMZ_Malloc(size)   HIGO_Malloc2(size)
#define HIGO_MMZ_Free(pVirm)    HIGO_Free2(pVirm)

/*************************** Structure Definition ****************************/
typedef struct _BT_FREE_S
{
	HI_U32 u32Size;
    struct _BT_FREE_S *pNext;
}BT_FREE_S;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
HI_S32 HIGO_InitMemory(HI_VOID *pBuffHead , HI_U32 u32BuffLen );

HI_VOID* HIGO_Malloc2(HI_U32 u32Size);

HI_VOID HIGO_Free2(HI_VOID* pAddr);

HI_VOID HIGO_DeInitMemory(HI_VOID);

BT_FREE_S* HIGO_GetFreeList(HI_VOID);

HI_S32 HIGO_SetMemInfo(HI_U32 u32PhyAddr, HI_VOID *pVirAddr, HI_U32 u32BufLen);

HI_U32 HIGO_GetPhyAddrByVir(HI_VOID *pVirAddr);


/*****************************************************************************/

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HIGO_MEMORY_H__ */
