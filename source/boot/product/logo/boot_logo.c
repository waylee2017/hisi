/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : boot_logo.c
Version             : Initial Draft
Author              : 
Created             : 2016/01/12
Description         : 
                       CNcomment: logo数据处理文件 CNend\n
Function List   :                                           
History         :
Date                        Author                  Modification
2016/01/12                  y00181162               Created file      
******************************************************************************/


/*********************************add include here******************************/
#include <uboot.h>
#include "hi_boot_logo.h"
#include "hi_go_logo.h"

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/


/**********************       API realization       **************************/


/***************************************************************************************
* func          : HI_LOGO_DecImg
* description   : CNcomment: 图片解码 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_LOGO_DecImg(HI_PDM_LOGO_INFO_S stLogoParam, HI_U32 u32LogoDataAddr, HI_HANDLE *hSurface)
{
    HI_S32  s32Ret       = HI_SUCCESS;
    HI_HANDLE hDecHandle = HI_INVALID_HANDLE;
	HI_CHAR* pSrcBuf     = (HI_CHAR*)(u32LogoDataAddr);
	HI_U32 u32SrcLen     = stLogoParam.contentLen;

    s32Ret = HI_GO_CreateDecode(&hDecHandle,pSrcBuf,u32SrcLen);
    if(HI_SUCCESS != s32Ret || HI_INVALID_HANDLE == hDecHandle){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    
	s32Ret = HI_GO_StartDecode(hDecHandle,hSurface);
	if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        (HI_VOID)HI_GO_DestroyDecode(hDecHandle);
        return HI_FAILURE;
    }
	
    s32Ret |= HI_GO_DestroyDecode(hDecHandle);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
