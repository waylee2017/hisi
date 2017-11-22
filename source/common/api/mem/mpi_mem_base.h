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
/** @addtogroup iMEM */
/** @{ */
#ifndef __MODULE_MEM_H__
#define __MODULE_MEM_H__

#ifdef __cplusplus
extern "C"{
#endif

#include "hi_type.h"

typedef enum tagMEM_TYPE
{
    MEM_TYPE_MMZ,
    MEM_TYPE_USR,
    MEM_TYPE_KERNEL,
}MEM_TYPE_E;


//!! Bytes:16
struct head
{
    HI_VOID *addr;
    size_t size;

    struct head* prev;
    struct head* next;
};

//!! Bytes:20
typedef struct tagUSR_MEM_POOL
{
    HI_U32  u32Idle;
    struct head stItem;
}USR_MEM_POOL_S;


#define MEM_POOL_COUNT (2000*1024/20) /* about 100K times (102400) and hold 2000K bytes memory*/

typedef HI_S32 (*fnModuleInfoCBK)(HI_U32 u32ModuleID, MEM_TYPE_E enMemType, HI_S32 s32Size);

HI_S32  MEM_POOL_Init(HI_U32 u32Count, fnModuleInfoCBK fnCallback);
HI_VOID MEM_POOL_DeInit(HI_VOID);

#ifdef __cplusplus
}
#endif

#endif
/** @} */

