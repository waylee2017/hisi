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
#ifndef __KMODULE_MEM_H__
#define __KMODULE_MEM_H__

#ifdef __cplusplus
extern "C"{
#endif

typedef enum tagKMemType
{
    KMEM_TYPE_MMZ,
    KMEM_TYPE_KMEM,
    KMEM_TYPE_VMEM,

    KMEM_TYPE_BUTT
}KMEM_TYPE_E;

typedef HI_S32 (* fnKMemStatCallback)(HI_U32 u32ModuleID, KMEM_TYPE_E enMemType, HI_S32 s32Size);


HI_S32 KMODULE_MEM_POOL_DelModule(HI_U32 u32ModuleID);
HI_S32 KMODULE_MEM_POOL_AddModule(HI_U32 u32ModuleID);


HI_S32 KModule_Mem_Init(HI_U32 u32CountMem, fnKMemStatCallback fnCallback);

HI_S32 KModule_Mem_DeInit(HI_VOID);


#ifdef __cplusplus
}
#endif

#endif
