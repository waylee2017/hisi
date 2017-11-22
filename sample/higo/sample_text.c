/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_text.c
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
    HI_S32 s32Ret = 0;
    HI_HANDLE hFont = HIGO_INVALID_HANDLE;
    HIGO_LAYER_INFO_S stLayerInfo = {0};
    HI_HANDLE hLayer = HIGO_INVALID_HANDLE;
    HI_HANDLE hLayerSurface;
    HI_RECT rc = {0};
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif
    
/**
#if    defined(CHIP_TYPE_hi3716m)        \
    || defined(CHIP_TYPE_hi3716mv310)    \
    || defined(CHIP_TYPE_hi3716mv320)    \
    || defined(CHIP_TYPE_hi3110ev500)
    **/
#if 1
    HI_CHAR szText[] = " ∏¡øAabc÷–”¢ŒƒªÏ∫œ";
#else
    HI_CHAR szText[] = "Áü¢ÈáèAabC‰∏≠Ëã±ÊñáÊ∑∑Âêà";
#endif

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

    
    s32Ret = Display_Init();
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to init display!\n");
        return 0;
    }
    s32Ret = HI_GO_Init();
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to init higo! ret = 0x%x !\n", s32Ret);
        return 0;
    }

    HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo); 
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfo.PixelFormat = HIGO_PF_1555;
    else
        stLayerInfo.PixelFormat = HIGO_PF_8888;

#ifdef CHIP_TYPE_hi3110ev500
        stLayerInfo.PixelFormat = HIGO_PF_1555;
#endif

    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to create the layer sd 0, ret = 0x%x !\n", s32Ret);
        goto RET;
    }

    s32Ret =  HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if  (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to get layer surface! s32Ret = 0x%x \n", s32Ret);
        goto RET;        
    }
    HI_GO_FillRect(hLayerSurface, NULL, 0xFF000000, HIGO_COMPOPT_NONE);

	/**≤ª÷ß≥÷VBF**/
    s32Ret = HI_GO_CreateText("./res/DroidSansFallbackLegacy.ttf", NULL,  &hFont);
    if (HI_SUCCESS != s32Ret) 
    {
    	SAMPLE_TRACE("failed to create text!\n");
        goto RET;       
    }

#if defined(CHIP_TYPE_hi3716m) || defined(CHIP_TYPE_hi3716mv310)
	/** ≤ª”∞œÏ‘≠”–µƒ π”√∑Ω Ω£¨◊Ó∫√≤ª“™ π”√Ω”ø⁄µ˜”√ **/
	//s32Ret = HI_GO_SetInputCharSet(hFont,HIGO_CHARSET_GB2312);
#endif

    HI_GO_SetTextColor(hFont, 0xffff0000);
    
    rc.x = 200;
    rc.y = 100;
    rc.w = 400;
    rc.h = 30;
    HI_GO_DrawRect(hLayerSurface, &rc, 0xffffffff);
    s32Ret = HI_GO_TextOutEx(hFont, hLayerSurface, szText, &rc, HIGO_LAYOUT_RIGHT);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to text out char!\n");
        goto RET;
    }

    HI_GO_SetTextColor(hFont, 0xff00ff00);
    
    rc.y += 50;

    HI_GO_SetTextStyle(hFont, HIGO_TEXT_STYLE_ITALIC);
    HI_GO_DrawRect(hLayerSurface, &rc, 0xffffffff);    
    s32Ret = HI_GO_TextOut(hFont, hLayerSurface, szText, &rc);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to text out char!\n");
        goto RET;
    }

    HI_GO_SetTextColor(hFont, 0xff0000ff);
    
    rc.y += 50;

    HI_GO_DrawRect(hLayerSurface, &rc, 0xffffffff);
    s32Ret = HI_GO_TextOut(hFont, hLayerSurface, szText, &rc);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("failed to text out char!\n");
        goto RET;
    }

    HI_GO_RefreshLayer(hLayer, NULL);

    getchar();

RET:
    if (HIGO_INVALID_HANDLE != hLayer)
    {
        HI_GO_DestroyLayer(hLayer);
    }

    if  (HIGO_INVALID_HANDLE != hFont)
    {
        HI_GO_DestroyText(hFont);
    }
    
    HI_GO_Deinit();

    Display_DeInit();
    return HI_SUCCESS;
}
