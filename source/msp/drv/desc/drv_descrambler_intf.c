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

/***************************** included files ******************************/
#include "hi_type.h"
#include "drv_struct_ext.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "drv_stat_ext.h"
#include "hi_module.h"
#include "hi_kernel_adapt.h"

#include "hi_drv_module.h"
#include "drv_struct_ext.h"

#include "demux_debug.h"
#include "drv_descrambler.h"
#include "drv_descrambler_func.h"
#include "drv_desc_ext.h"


/**************************** global variables ****************************/

/** the callback functions list used for Descrambler module */
static DSC_RegisterFunctionlist_S s_DscExportFunctionList =
{
	.DMXKeyIoctl                 = DMXKeyIoctl,			 
	.DescramblerReset            = DescramblerReset,
	.DescInitHardFlag            = DescInitHardFlag,		 
	.DmxDescramblerResume        = DmxDescramblerResume,	 
	.DMX_OsiDescramblerDetach    = DMX_OsiDescramblerDetach,
	.DMX_OsiDescramblerAttach    = DMX_OsiDescramblerAttach,
	.DmxDestroyAllDescrambler    = DmxDestroyAllDescrambler,
	.DescGetDevice               = DescGetDevice,
};

HI_S32 DSC_DRV_ModInit(HI_VOID)
{
	HI_S32 ret = HI_SUCCESS;
#ifdef CHIP_TYPE_hi3716m
	DescGetHi3716MV300Flag();
#endif
    ret = HI_DRV_MODULE_Register(HI_ID_DESC, HI_MOD_DESC, (HI_VOID*)&s_DscExportFunctionList); 
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_DEMUX("HI_DRV_MODULE_Register Dsc failed\n");
        return ret;
    }
#ifdef MODULE
    HI_PRINT("Load hi_desc.ko success.  \t(%s)\n", VERSION_STRING);
#endif
    return HI_SUCCESS;

}

HI_VOID DSC_DRV_ModExit(HI_VOID)
{
    HI_DRV_MODULE_UnRegister(HI_ID_DESC);
}

#ifdef MODULE
module_init(DSC_DRV_ModInit);
module_exit(DSC_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");


