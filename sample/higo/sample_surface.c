/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_surface.c
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
#include <string.h>
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
    HI_HANDLE hLayer,hLayerSurface,hMemSurface;
    HIGO_BLTOPT_S stBlitOpt;
    HI_RECT stRect;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif


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
    ret = HI_GO_GetLayerSurface (hLayer,&hLayerSurface); 
    if (HI_SUCCESS != ret)  
    {
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE;
    }

    /** create memory Surface */
    ret = HI_GO_CreateSurface(320,240,HIGO_PF_1555,&hMemSurface);
    if (HI_SUCCESS != ret)
    {
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE; 
    }

    /** set the attribute of memory surface */
    ret = HI_GO_SetSurfaceAlpha(hMemSurface,128);
    if (HI_SUCCESS != ret)
    {
        HI_GO_FreeSurface(hMemSurface);
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE; 
    }
    
    /** draw a rectangle on the memory surface */
    ret = HI_GO_FillRect(hMemSurface,NULL,0xFFFF0000,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)
    {
       HI_GO_FreeSurface(hMemSurface); 
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE; 
    }

    /** move it to graphic layer Surface */
    stRect.x = stRect.y = 50;
    stRect.w = 320;
    stRect.h = 240;
    memset(&stBlitOpt,0,sizeof(HIGO_BLTOPT_S));
    //stBlitOpt.EnablePixelAlpha = HI_TRUE;
    stBlitOpt.EnableGlobalAlpha = HI_TRUE;
    /** should set the pixel alpha mix mode when enable global alpha*/	
    stBlitOpt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    ret = HI_GO_Blit(hMemSurface,NULL,hLayerSurface,&stRect,&stBlitOpt);
    if (HI_SUCCESS != ret)
    {
       HI_GO_FreeSurface(hMemSurface); 
       HI_GO_DestroyLayer(hLayer);
       HI_GO_Deinit();
       return HI_FAILURE;  
    }

    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_FreeSurface(hMemSurface); 
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    SAMPLE_TRACE("please input anykey to stop the test case\n");
    getchar();

    /** free memory Surface */
    ret = HI_GO_FreeSurface(hMemSurface);
    
    /** destroy graphic layer */
    ret |= HI_GO_DestroyLayer(hLayer);
    
    /** de inital */
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
