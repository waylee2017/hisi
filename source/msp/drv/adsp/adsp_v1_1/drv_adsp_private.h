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
#ifndef __HI_ADSP_PRIVATE_H__
#define __HI_ADSP_PRIVATE_H__

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_sys.h"
#include "drv_dev_ext.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mem.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"
#include "hi_drv_module.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define HI_FATAL_ADSP(fmt...) \
    HI_FATAL_PRINT(HI_ID_ADSP, fmt)

#define HI_ERR_ADSP(fmt...) \
    HI_ERR_PRINT(HI_ID_ADSP, fmt)

#define HI_WARN_ADSP(fmt...) \
    HI_WARN_PRINT(HI_ID_ADSP, fmt)

#define HI_INFO_ADSP(fmt...) \
    HI_INFO_PRINT(HI_ID_ADSP, fmt)

typedef struct tagADSP_REGISTER_PARAM_S
{
    DRV_PROC_READ_FN  pfnReadProc;
    DRV_PROC_WRITE_FN pfnWriteProc;
} ADSP_REGISTER_PARAM_S;

typedef struct
{
    /*  AOE  */

} ADSP_SETTINGS_S;





HI_S32	ADSP_DRV_Init(HI_VOID);
HI_VOID ADSP_DRV_Exit(HI_VOID);
HI_S32	ADSP_DRV_Open(struct inode *inode, struct file  *filp);
HI_S32	ADSP_DRV_Release(struct inode *inode, struct file  *filp);
HI_S32	ADSP_DRV_RegisterProc(ADSP_REGISTER_PARAM_S *pstParam);
HI_VOID ADSP_DRV_UnregisterProc(HI_VOID);
HI_S32	ADSP_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
HI_S32	ADSP_DRV_Resume(PM_BASEDEV_S *pdev);
HI_S32  ADSP_DRV_ReadProc(struct seq_file *p, HI_VOID *v);
HI_S32  ADSP_DRV_WriteProc(struct file * file,
                                   const char __user * buf, size_t count, loff_t *ppos);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __HI_ADSP_PRIVATE_H__ */

