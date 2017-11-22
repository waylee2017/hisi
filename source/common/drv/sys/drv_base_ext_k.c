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
#include <linux/version.h>
#include <linux/seq_file.h>
#include <linux/of.h>
#include <linux/platform_device.h>

#include "hi_type.h"

#include "hi_drv_log.h"

#include "drv_dev_ext.h"
#include "drv_log.h"
#include "hi_drv_proc.h"

#include "drv_stat_ext.h"

#include "drv_sys_ext.h"

#include "drv_stat_ioctl.h"

#include "drv_sys_ioctl.h"

#include "drv_media_mem.h"

#include "drv_module.h"

/* Use "strings hi_xx.ko | grep "SDK_VERSION"" to get the version */
/*HI_CHAR g_ModuleVersion[160] ="SDK_VERSION:["\
    MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
    __DATE__", "__TIME__"]";
*/

extern struct platform_driver hi_virt_pltm_driver;

HI_S32 HI_DRV_CommonInit(HI_VOID)
{
    HI_S32 ret;

#ifndef MODULE
    ret = platform_driver_register(&hi_virt_pltm_driver);
    if(ret)
    {
        HI_ERR_SYS("register driver failed:%#x!\n", ret);
        return ret;
    }
#endif
    ret = HI_DRV_MMZ_Init();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("DRV_MMZ_ModInit failed:%#x!\n", ret);
        goto ErrExit_MMZ;
    }

    ret = HI_DRV_DEV_Init();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("CMPI_DEV_ModInit_0 failed:%#x!\n", ret);
        goto ErrExit_DEV;
    }

    ret = HI_DRV_LOG_KInit();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("HI_DRV_LOG_KInit failed:%#x!\n", ret);
        goto ErrExit_LOG;
    }

    ret = HI_DRV_PROC_KInit();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("HI_DRV_PROC_KInit failed:%#x!\n", ret);
        goto ErrExit_PROC;
    }

    ret = HI_DRV_STAT_KInit();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("HI_DRV_STAT_KInit failed:%#x!\n", ret);
        goto ErrExit_STAT;
    }

    ret = HI_DRV_SYS_KInit();
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("HI_DRV_STAT_KInit failed:%#x!\n", ret);
        goto ErrExit_SYS;
    }


    ret = HI_DRV_MMNGR_Init(KMODULE_MAX_COUNT, KMODULE_MEM_MAX_COUNT);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_SYS("KModuleMgr_Init failed:%#x!\n", ret);
        goto ErrExit_SYS;
    }

    return HI_SUCCESS;

ErrExit_SYS:
    HI_DRV_STAT_KExit();

ErrExit_STAT:
    HI_DRV_PROC_KExit();

ErrExit_PROC:
    HI_DRV_LOG_KExit();

ErrExit_LOG:
    HI_DRV_DEV_Exit();
    
ErrExit_DEV:
    HI_DRV_MMZ_Exit();
   
ErrExit_MMZ:
    return ret;
}

HI_VOID HI_DRV_CommonExit(HI_VOID)
{
    HI_DRV_MMNGR_Exit();

    HI_DRV_SYS_KExit();

    HI_DRV_STAT_KExit();

    HI_DRV_LOG_KExit();

    HI_DRV_PROC_KExit();

    HI_DRV_DEV_Exit();

#ifndef MODULE
    platform_driver_unregister(&hi_virt_pltm_driver);
#endif

    return;
}


