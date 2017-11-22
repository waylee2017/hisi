/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_cursorck.c
Version		    : Initial Draft
Author		    : 
Created		    : 2014/07/22
				  这个地方可以做优化，不需要调用鼠标接口，直接把AD0当作鼠标层
				  使用，和其它图层使用没有区别，直接绘制在AD0上。
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
#include <unistd.h>

/***************************** Macro Definition ******************************/
#define MY_CURSOR_GIF "./res/bmp/cursor.bmp"
/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer, hLayerSurface, hSurface;
    HIGO_CURSOR_INFO_S CursorInfo;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

    
    /** initial*/
    ret = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("higo init failure\n");
        return HI_FAILURE;
    }
    ret = Display_Init();
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("Display_Init failure\n");
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_DecodeFile(MY_CURSOR_GIF, &hSurface);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_DecodeFile failure\n");
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /** create graphic layer */
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_GetLayerDefaultParam failure\n");
        HI_GO_FreeSurface(hSurface);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /**set the flush type**/
    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER; 
    
    ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_CreateLayer failure\n");
        HI_GO_FreeSurface(hSurface);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer, &hLayerSurface);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_GetLayerSurface failure\n");
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_FillRect(hLayerSurface, NULL, 0xffffff00, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_FillRect failure\n");
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_RefreshLayer failure\n");
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    CursorInfo.hCursor  = hSurface;
    CursorInfo.HotspotX = 0;
    CursorInfo.HotspotY = 0;
    ret = HI_GO_SetCursorInfo(&CursorInfo);
    if (HI_SUCCESS != ret)
    {
    	SAMPLE_TRACE("HI_GO_SetCursorInfo failure 0x%x\n",ret);
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_AttchCursorToLayer(eLayerID);
    if (HI_SUCCESS != ret)
    {
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_ShowCursor(HI_TRUE);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DetachCursorFromLayer(eLayerID);
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_SetCursorPos(100, 100);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DetachCursorFromLayer(eLayerID);
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    SAMPLE_TRACE("Cursor position is (100,100)\n");
    getchar();
    ret = HI_GO_SetCursorPos(200, 200);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DetachCursorFromLayer(eLayerID);
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    SAMPLE_TRACE("Cursor position is (200,200)\n");
    getchar();
    
    CursorInfo.hCursor  = HIGO_INVALID_HANDLE;
    CursorInfo.HotspotX = 0;
    CursorInfo.HotspotY = 0;
    ret = HI_GO_SetCursorInfo(&CursorInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_DetachCursorFromLayer(eLayerID);
    if (HI_SUCCESS != ret)
    {
        HI_GO_FreeSurface(hSurface);
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_FreeSurface(hSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    ret = HI_GO_DestroyLayer(hLayer);
    if (HI_SUCCESS != ret)
    {
        Display_Init();
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    ret = Display_Init();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
