/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_wm.c
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
#include <unistd.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
    HI_S32 ret;
    HI_HANDLE hLayer;
    HIGO_WNDINFO_S WinInfo;
    HI_HANDLE hWindow;
    HI_S32 sWidth = 500, sHeight=400;
    HI_HANDLE hWinSurface;
    HIGO_LAYER_INFO_S LayerInfo;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif
          
    /** initial*/
    ret = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    ret = Display_Init();
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    /** get the HD layer's default parameters*/
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &LayerInfo);
    if (HI_SUCCESS != ret)
    {
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
  
    /** create graphic layer */
    ret = HI_GO_CreateLayer(&LayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    /** set the background color of graphic layer*/    
    ret = HI_GO_SetLayerBGColor(hLayer,0xffffffff);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    WinInfo.hLayer   = hLayer;
    WinInfo.rect.x   = 50;
    WinInfo.rect.y   = 50;
    WinInfo.rect.w   = sWidth;
    WinInfo.rect.h   = sHeight;
    WinInfo.LayerNum = 0;
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        WinInfo.PixelFormat  = HIGO_PF_1555;
    else
        WinInfo.PixelFormat  = HIGO_PF_8888;

#ifdef CHIP_TYPE_hi3110ev500
         WinInfo.PixelFormat = HIGO_PF_1555;
#endif


    WinInfo.BufferType = HIGO_BUFFER_SINGLE;
    
    /** create window*/
    ret = HI_GO_CreateWindowEx(&WinInfo, &hWindow);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    /** get surface of the window */
    ret = HI_GO_GetWindowSurface(hWindow, &hWinSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    /** fill window*/
    ret = HI_GO_FillRect(hWinSurface,NULL,0xFFFF0000,HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
        
    /** set the opacity of the window */ 
    ret =  HI_GO_SetWindowOpacity(hWindow,128); 
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    /** should fresh the window if any changed to the window*/	
    ret = HI_GO_UpdateWindow(hWindow,NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    //fresh the window to the graphic layer
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }  
    
    SAMPLE_TRACE("press any key to change pos\n");
    getchar();
    
    /** change the position of the window*/
    ret = HI_GO_SetWindowPos(hWindow,300,200);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /** fresh the window */
    ret = HI_GO_UpdateWindow(hWindow, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    //fresh the window to the graphic layer
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyWindow(hWindow);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }  
    SAMPLE_TRACE("press any key to exit\n");
    getchar();
    HI_GO_DestroyWindow(hWindow);
    HI_GO_DestroyLayer(hLayer);
    Display_DeInit();
    HI_GO_Deinit();
    return HI_SUCCESS;    
}
