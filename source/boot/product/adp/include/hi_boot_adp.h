/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
* 
******************************************************************************
File Name           : hi_boot_adp.h
Version             : Initial Draft
Author              : 
Created             : 2016/01/12
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2016/01/12                                          modify by y00181162        
******************************************************************************/

#ifndef __HI_BOOT_ADP_H__
#define __HI_BOOT_ADP_H__


#ifdef __cplusplus
extern "C" {
#endif

/*********************************add include here******************************/
#include "hi_boot_pdm.h"


/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/


/**********************       API realization       **************************/
/***************************************************************************************
* func          : HI_ADP_GrcCreate
* description   : 创建图形层并获取图形层surface
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ADP_GrcCreate(HI_GRC_PARAM_S stGrcParam,HI_HANDLE *phLayerSurface);


/***************************************************************************************
* func          : HI_ADP_DispInit
* description   : initial the display
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ADP_DispInit(HI_PDM_BASE_INFO_S stDispParam);

#ifdef __cplusplus
}
#endif

#endif

