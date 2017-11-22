/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_gdev.c
Version		    : Initial Draft
Author		    : 
Created		    : 2014/07/22
Description	    :
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2014/07/22  	    y00181162  		    Created file      	
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/



/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hSurface;
    HI_RECT stRect;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif


    stRect.x = stRect.y = 100;
    stRect.w = stRect.h = 500;
    /** initial */
    ret = HI_GO_Init();
    ret |= Display_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    /** create graphic layer */
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }
	
    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hSurface); 
    if (HI_SUCCESS != ret)  
    {
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE;
    }
    
    /** draw a rectange on the surface */
    ret = HI_GO_FillRect(hSurface,&stRect,0xFFFF0000,HIGO_COMPOPT_NONE);
    stRect.x += stRect.w;
    ret |= HI_GO_FillRect(hSurface,&stRect,0xFF00FF00,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)
    {
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE; 
    }

    /** set ColorKey of the graphic layer surface */
    ret = HI_GO_SetSurfaceColorKey(hSurface,0xFFFF0000);
    if (HI_SUCCESS != ret)
    {
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE;  
    }

    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    SAMPLE_TRACE("please input anykey and stop it \n");
    getchar();

    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    /** De initial */
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
	
}
