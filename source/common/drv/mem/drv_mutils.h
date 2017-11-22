/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
/** @ingroup module_mmz kmem_utils*/
/** @{ */
#ifndef __KMEM_UTILS_H__
#define __KMEM_UTILS_H__

#ifdef __cplusplus
extern "C"{
#endif

#include "hi_type.h"

typedef enum {
    KMEM_POOL_TYPE_MODULE,        /* module manager request memory pool */
    KMEM_POOL_TYPE_MODULE_MEMORY, /* module memory request memory pool  */
    KMEM_POOL_TYPE_USR_MEMORY,    /* memory wrap request memory pool    */
    KMEM_POOL_TYPE_LOG,

    KMEM_POOL_TYPE_BUTT
}UTILS_KMEM_POOL_TYPE_E;


typedef struct tagKMemUtils{
    UTILS_KMEM_POOL_TYPE_E enType; /* the pool memory type.                 */

    HI_U32      u32ItemCount;      /* the total numbers of item in pool     */
    HI_U32      u32HasCount;       /* the allocated numbers of item in pool */

    HI_VOID*    pMemBaseAddr;      /* the base address of pool              */
}KMEM_UTILS_S;


/**
@brief Initialize this memory pool manager module in kernel, which will allocate u32Count ITEMS pool.
@attention Before calling other interfaces of this module, calling this interface.
@param[in] u32Count the request ITEMS number.
@param[in] stMem the item attributes in pool.
@param[out] None
@retval ::handle of the pool with special attributes Success
@retval ::0 Failure
@see \n
N/A
*/
HI_HANDLE KMem_Utils_Init(HI_U32 u32Count, KMEM_UTILS_S stMem);

/**
@brief Terminate the pool with the special handle.
@attention None.
@param[in] hUtils the pool handle to terminate.
@param[out] None
@retval ::None
@see \n
N/A
*/
HI_VOID KMem_Utils_DeInit(HI_HANDLE hUtils);

/**
@brief Request one idle item position from the pool with hUtils.
@attention None.
@param[in] hUtils the pool handle to terminate.
@param[out] None
@retval ::address of the item from pool Success
@retval ::NULL Failure
@see \n
N/A
*/
HI_VOID* KMem_Utils_MALLOC(HI_HANDLE hUtils);

/**
@brief Release one item position to the pool with hUtils, and make it idle.
@attention None.
@param[in] hUtils the pool handle to terminate.
@param[out] None
@retval ::None
@see \n
N/A
*/
HI_VOID KMem_Utils_FREE(HI_HANDLE hUtils, HI_VOID* pAddr);

/**
@brief Get the valid item numbers in pool with hUtils.
@attention None.
@param[in] hUtils the pool handle to terminate.
@param[out] None
@retval ::number of the valid item in pool Success
@retval ::0 Failure
@see \n
N/A
*/
HI_U32 KMem_Utils_GetItemNo(HI_HANDLE hUtils);

#ifdef __cplusplus
}
#endif

#endif

/** @} */

