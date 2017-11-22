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
/** @addtogroup iKMODULE_MGR */

/** @{ */
#ifndef __KMODULE_MGR_H__
#define __KMODULE_MGR_H__

#ifdef __cplusplus
extern "C"
{
#endif

#define KMODULE_MAX_COUNT      (256)
#define KMODULE_MEM_MAX_COUNT  (256*256)

HI_S32  MMNGR_DRV_ModInit(HI_U32 u32ModuleCount, HI_U32 u32ModuleMemCount);
HI_VOID MMNGR_DRV_ModExit(HI_VOID);

HI_S32  HI_DRV_MMNGR_Init(HI_U32 u32ModuleCount, HI_U32 u32ModuleMemCount);
HI_VOID HI_DRV_MMNGR_Exit(HI_VOID);


#ifdef __cplusplus
}
#endif

#endif
/** @} */
