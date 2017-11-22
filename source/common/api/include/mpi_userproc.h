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

#ifndef __MPI_USERPROC_H__
#define __MPI_USERPROC_H__

/******************************* Include Files *******************************/

/* add include here */
#include "hi_type.h"
#include "hi_module.h"
#include "hi_debug.h"
#include "hi_common.h"

#include "hi_drv_userproc.h"
#include "drv_userproc_ioctl.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
#if !(0 == HI_PROC_SUPPORT)
HI_S32 MPI_UPROC_Init(HI_VOID);
HI_S32 MPI_UPROC_DeInit(HI_VOID);
HI_S32 MPI_UPROC_AddDir(const HI_CHAR *pszName);
HI_S32 MPI_UPROC_RemoveDir(const HI_CHAR *pszName);
HI_S32 MPI_UPROC_AddEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry);
HI_S32 MPI_UPROC_RemoveEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry);
#else
static inline HI_S32 MPI_UPROC_Init(HI_VOID)
{
    return HI_SUCCESS;
}
static inline HI_S32 MPI_UPROC_DeInit(HI_VOID)
{
    return HI_SUCCESS;
}
static inline HI_S32 MPI_UPROC_AddDir(const HI_CHAR *pszName)
{
    return HI_SUCCESS;
}
static inline HI_S32 MPI_UPROC_RemoveDir(const HI_CHAR *pszName)
{
    return HI_SUCCESS;
}
static inline HI_S32 MPI_UPROC_AddEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return HI_SUCCESS;
}
static inline HI_S32 MPI_UPROC_RemoveEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return HI_SUCCESS;
}
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __MPI_USERPROC_H__ */

