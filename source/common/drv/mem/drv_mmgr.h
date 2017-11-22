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
/** @addtogroup iKMEM */
/** @{ */
#ifndef __KMODULE_MEM_MGR_H__
#define __KMODULE_MEM_MGR_H__

#ifdef __cplusplus
extern "C"
{
#endif

HI_S32 KModule_MemMgr_Init(HI_U32 u32ModuleCount, HI_U32 u32ModuleMemCount);
HI_VOID KModule_MemMgr_Exit(HI_VOID);

#ifdef __cplusplus
}
#endif

#endif
/** @} */
