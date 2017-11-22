/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_logo.c
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
#include <string.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc,HI_CHAR **argv)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfoHD;
    HI_HANDLE hLayerHD,hLayerSurfaceHD;
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif

    /** initial */
    ret = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    HI_SYS_Init();
    
    /** format,displaysize,screensize pixelformat should be the same as logo picture */
#ifdef CHIP_TYPE_hi3110ev500
    HIADP_Disp_Init(HI_UNF_ENC_FMT_PAL);
#else
    HIADP_Disp_Init(HI_UNF_ENC_FMT_720P_50);
#endif

    /** create graphic layer  */    
#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfoHD.CanvasWidth    = 720;
    stLayerInfoHD.CanvasHeight   = 576;
    stLayerInfoHD.DisplayWidth   = 720;
    stLayerInfoHD.DisplayHeight  = 576;
    stLayerInfoHD.ScreenWidth    = 720;
    stLayerInfoHD.ScreenHeight   = 576;
#else
    stLayerInfoHD.CanvasWidth    = 1280;
    stLayerInfoHD.CanvasHeight   = 720;
    stLayerInfoHD.DisplayWidth   = 1280;
    stLayerInfoHD.DisplayHeight  = 720;
    stLayerInfoHD.ScreenWidth    = 1920;
    stLayerInfoHD.ScreenHeight   = 1080;
#endif
    
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfoHD.PixelFormat = HIGO_PF_1555;
    else
        stLayerInfoHD.PixelFormat = HIGO_PF_8888;

#ifdef CHIP_TYPE_hi3110ev500
        stLayerInfoHD.PixelFormat = HIGO_PF_1555;
#endif

    stLayerInfoHD.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfoHD.AntiLevel      = HIGO_LAYER_DEFLICKER_AUTO;
#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfoHD.LayerID = HIGO_LAYER_SD_0;
#else
    stLayerInfoHD.LayerID = HIGO_LAYER_HD_0;
#endif


    ret = HI_GO_CreateLayer(&stLayerInfoHD,&hLayerHD);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("failure to create layer\n");
        HI_GO_Deinit();
        return HI_FAILURE;
    }
       
    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayerHD,&hLayerSurfaceHD); 
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failure to get surface\n");
       HI_GO_DestroyLayer(hLayerHD);
       HI_GO_Deinit();
       return HI_FAILURE;
    }
    
    /** draw a rectangle on the Surface*/
    ret = HI_GO_FillRect(hLayerSurfaceHD,NULL,0xFFFF0000,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)
    {
       SAMPLE_TRACE("failure to fillrect\n");
       HI_GO_DestroyLayer(hLayerHD);
       HI_GO_Deinit();
       return HI_FAILURE; 
    }

    ret = HI_GO_RefreshLayer(hLayerHD, NULL);
    if (HI_SUCCESS != ret)
    {
       HI_GO_DestroyLayer(hLayerHD);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    SAMPLE_TRACE("HD, SD both show red at the same time, there is no black screen, no flicker, please input anykey and stop it\n");	
    getchar();
    
     /** destroy graphic layer */
    ret |= HI_GO_DestroyLayer(hLayerHD);
    /** De initial */
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
