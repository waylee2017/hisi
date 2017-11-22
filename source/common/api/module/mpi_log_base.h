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
#ifndef __COMMON_LOG_BASE_H__
#define __COMMON_LOG_BASE_H__

#ifdef __cplusplus
extern "C"{
#endif

#include "hi_type.h"

typedef struct tagModuleLog
{
    HI_U32 u32ModuleID;
    HI_U32 u32ModuleLevel;

    struct tagModuleLog* pstNextNode;
    struct tagModuleLog* pstPrevNode;
}MODULE_LOG_S;

typedef struct tagModuleLogPool
{
    HI_U32 u32Idle;

    MODULE_LOG_S stModuleLog;
}MODULE_LOG_POOL_S;

HI_S32 Module_Log_Pool_Init(HI_U32 u32ModuleCount);
HI_S32 Module_Log_Pool_DeInit(HI_VOID);

#ifdef __cplusplus
}
#endif

#endif

