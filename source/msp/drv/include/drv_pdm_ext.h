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
  File Name	: drv_pdm_ext.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#ifndef __DRV_PDM_EXT_H__
#define __DRV_PDM_EXT_H__

#include "hi_type.h"
#include "hi_drv_pdm.h"

#ifdef __cplusplus
extern "C" {
#endif


typedef HI_S32 (*FN_PDM_GetDispParam)(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam);
typedef HI_S32 (*FN_PDM_GetGrcParam)(HI_GRC_PARAM_S *pGrcParam);
typedef HI_S32 (*FN_PDM_GetMceParam)(HI_MCE_PARAM_S *pMceParam);
typedef HI_S32 (*FN_PDM_GetMceData)(HI_U32 *pAddr);
typedef HI_S32 (*FN_PDM_ReleaseReserveMem)(const HI_CHAR *BufName);


typedef struct tagPDM_EXPORT_FUNC_S
{
    FN_PDM_GetDispParam             pfnPDM_GetDispParam;
    FN_PDM_GetGrcParam              pfnPDM_GetGrcParam;
    FN_PDM_GetMceParam              pfnPDM_GetMceParam;
    FN_PDM_GetMceData               pfnPDM_GetMceData;
    FN_PDM_ReleaseReserveMem        pfnPDM_ReleaseReserveMem;
    
}PDM_EXPORT_FUNC_S;

HI_S32 PDM_DRV_ModInit(HI_VOID);
HI_VOID PDM_DRV_ModExit(HI_VOID);


#ifdef __cplusplus
}
#endif

#endif

