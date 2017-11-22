/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
 * FileName: drv_aiao_intf.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/

/***************************** included files ******************************/
#include "drv_struct_ext.h"
#include "drv_dev_ext.h"
#include "hi_module.h"

#include "hi_drv_ao.h"
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

#ifdef HI_ALSA_AO_SUPPORT
extern int AO_ALSA_ModInit(void);
extern void  AO_ALSA_ModExit(void);
#endif

extern HI_S32 AO_DRV_ModInit(HI_VOID);
extern HI_S32 AO_DRV_ModExit(HI_VOID);


/*****************************************************************************
 Prototype    : AIAO_DRV_ModInit
 Description  : initialize function in AIAO module
 Input        : None
 Output       : None
 Return Value :
*****************************************************************************/
HI_S32 AIAO_DRV_ModInit(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;
	
    //init AO module
    s32Ret = AO_DRV_ModInit();
    if(HI_SUCCESS != s32Ret)
    {
        //to do
        HI_FATAL_AO("AO_ModInit Fail \n");
        return HI_FAILURE;
    }

#ifdef HI_ALSA_AO_SUPPORT
    s32Ret = AO_ALSA_ModInit();
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_AO("Init alsa drv fail!\n");
        goto err_alsa;
    }
#endif

#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("Load hi_aiao.ko success.  \t(%s)\n", VERSION_STRING);
#endif
#endif

    return HI_SUCCESS;

#ifdef HI_ALSA_AO_SUPPORT
err_alsa:
	AO_DRV_ModExit();	
#endif

    return HI_FAILURE;

}


/*****************************************************************************
 Prototype    : AIAO_DRV_ModExit
 Description  : exit function in AIAO module
 Input        : None
 Output       : None
 Return Value :
*****************************************************************************/
HI_VOID AIAO_DRV_ModExit(HI_VOID)
{

#ifdef HI_ALSA_AO_SUPPORT
    AO_ALSA_ModExit();
#endif

    //deinit AO module
    AO_DRV_ModExit();

    HI_INFO_AO(" **** AIAO_DRV_ModExit OK  **** \n");  
}

#ifdef MODULE
module_init(AIAO_DRV_ModInit);
module_exit(AIAO_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */
