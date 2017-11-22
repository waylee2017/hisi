/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_performance.c
Version		    : Initial Draft
Author		    : 
Created		    : 2014/07/22
Description	    :
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2014/07/22  	    y00181162  		    Created file      	
******************************************************************************/
#include <assert.h>
#include <stdio.h>
#include <sys/time.h>
#include <string.h>

#include "hi_go.h"

#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/

#define SAMPLE_GB2312_DOTFILE     "./res/higo_gb2312.ubf"
#define SAMPLE_GB2312_TTFFILE     "./res/simhei.ttf"

/*************************** Structure Definition ****************************/
#define MAX_COUNT 100

static HI_BOOL s_NeedSync = HI_TRUE;
static HI_BOOL s_NeedWait = HI_FALSE;

#define SYNC(hSurface, mode) do { if (s_NeedSync) HI_GO_SyncSurface(hSurface, mode);} while(0)
#define WAIT()  do { if (s_NeedWait) getchar(); } while(0)

/********************** Global Variable declaration **************************/
HI_S32 Test_RefreshLayerTime(HIGO_LAYER_E eLayer, HI_S32* pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer;
    HI_HANDLE hSurface;
    HI_S32 i;
    struct timeval t1, t2;
    HI_S32 t;
    
    /** create graphic layer */  
    ret = HI_GO_GetLayerDefaultParam(eLayer, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
	stLayerInfo.CanvasWidth   = 720;
    stLayerInfo.CanvasHeight  = 576;
    stLayerInfo.DisplayWidth  = 720;
    stLayerInfo.DisplayHeight = 576;
#else
	stLayerInfo.CanvasWidth   = 1280;
	stLayerInfo.CanvasHeight  = 720;
    stLayerInfo.DisplayWidth  = 1280;
    stLayerInfo.DisplayHeight = 720;
#endif

    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer id:%d \n", eLayer); 
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hSurface); 
    if (HI_SUCCESS != ret)  
    {
       HI_GO_DestroyLayer(hLayer);
       return HI_FAILURE;
    }

    HI_GO_FillRect(hSurface, NULL, 0xffff0000, HIGO_COMPOPT_NONE);

    gettimeofday(&t1, NULL);
    for (i=0; i< MAX_COUNT; i++)
    {
        HI_GO_RefreshLayer(hLayer, NULL);
    }
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/MAX_COUNT;
    WAIT();
    HI_GO_DestroyLayer(hLayer);    
    return HI_SUCCESS;
}

#ifdef CHIP_TYPE_hi3110ev500
HI_S32 Test_RefreshLayerTime_SD(HI_S32* pTimeCosted)
{
    return Test_RefreshLayerTime(HIGO_LAYER_SD_0, pTimeCosted);
}
#else
HI_S32 Test_RefreshLayerTime_HD(HI_S32* pTimeCosted)
{
    return Test_RefreshLayerTime(HIGO_LAYER_HD_0, pTimeCosted);
}
#endif



HI_S32 Test_DrawTextTime(const HI_CHAR* pFontFile, HI_S32* pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hSurface,hText;
    HI_S32 i;
    HI_CHAR *pszText = "°‘";
    struct timeval t1, t2;
    HI_S32 t;
    HI_S32 CharCount = 0;
    HI_RECT rc;

    CharCount = strlen(pszText)/2;
    
    /** create graphic layer */
#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }


#ifdef CHIP_TYPE_hi3110ev500
	stLayerInfo.CanvasWidth  = 720;
    stLayerInfo.CanvasHeight = 576;
#else
	stLayerInfo.CanvasWidth  = 1280;
	stLayerInfo.CanvasHeight = 720;
#endif
    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hSurface); 
    if (HI_SUCCESS != ret)  
    {
       HI_GO_DestroyLayer(hLayer);
       return HI_FAILURE;
    }

    HIGO_TEXT_INFO_S info;
    info.pMbcFontFile = pFontFile;
    info.pSbcFontFile = NULL;
    info.u32Size      = 24;

    /** create the object of text display */    
    ret = HI_GO_CreateTextEx(&info, &hText);
    if (HI_SUCCESS != ret)
    {
       SAMPLE_TRACE("failed to create the font:line%d,%s\n", __LINE__,pFontFile);
       HI_GO_DestroyLayer(hLayer);
       return HI_FAILURE; 
    }

    /** set the default color of text as white, and background color is black*/	
    ret = HI_GO_SetTextBGColor(hText,0xFFFF0000);
    ret |= HI_GO_SetTextColor(hText,0xFF00FF00);

    rc.x = 50;
    rc.y = 50;
    rc.w = -1;
    rc.h = -1;
    
    HI_GO_SyncSurface(hSurface, HIGO_SYNC_MODE_CPU);

    gettimeofday(&t1, NULL);
    /** output the text */
    for (i=0; i<MAX_COUNT; i++)
    {
        ret = HI_GO_TextOut(hText,hSurface,pszText, &rc);
    }
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/(MAX_COUNT*CharCount);
    
    /**  fresh graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    WAIT();

    /** destroy text display object */
    ret = HI_GO_DestroyText(hText);
    
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return HI_SUCCESS;
}

HI_S32 Test_DrawTextTime_Dot(HI_S32 *pTimeCosted)
{
    return Test_DrawTextTime(SAMPLE_GB2312_DOTFILE, pTimeCosted);
}

HI_S32 Test_DrawTextTime_Ttf(HI_S32 *pTimeCosted)
{
    return Test_DrawTextTime(SAMPLE_GB2312_TTFFILE, pTimeCosted);    
}

HI_S32 Test_DoBlitTime(const HI_RECT* pSrcRect, const HI_RECT* pDstRect, 
                             const HIGO_BLTOPT_S* pOpt, HI_S32 *pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hDstSurface,hSrcSurface;
    HI_S32 i;
    struct timeval t1, t2;
    HI_S32 t;
    HI_COLOR key = 0xffff0000;
    HI_RECT rcTransparent = {50, 50, 200, 200};
    HIGO_BLTOPT_S opt = *pOpt;
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif

    if (pSrcRect->w != pDstRect->w || pSrcRect->h != pDstRect->h)
    {
        opt.EnableScale = HI_TRUE;
    }
    

#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
	stLayerInfo.CanvasWidth  = 720;
    stLayerInfo.CanvasHeight = 576;
#else
	stLayerInfo.CanvasWidth  = 1280;
    stLayerInfo.CanvasHeight = 720;
#endif

    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hDstSurface); 
    if (HI_SUCCESS != ret)  
    {
        SAMPLE_TRACE("failed to get the layer surface!\n");
        goto RET;
    }

    ret = HI_GO_FillRect(hDstSurface, NULL, 0xff00ff00, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the layer surface!\n");
       goto RET;
    }
    
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_1555, &hSrcSurface);
    else
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_8888, &hSrcSurface);
    if (HI_SUCCESS != ret)      
    {
        SAMPLE_TRACE("failed to create the surface (1920*1080@32 bits)!\n");
        goto RET;
    }

    ret = HI_GO_FillRect(hSrcSurface, NULL, 0xff00ffff, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the src surface!\n");
       goto RET;
    }

    ret = HI_GO_FillRect(hSrcSurface, &rcTransparent, key, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the src surface!\n");
       goto RET;
    }
    
    if (pOpt->ColorKeyFrom == HIGO_CKEY_SRC)
    {
        ret = HI_GO_SetSurfaceColorKey(hSrcSurface, key);
        if (HI_SUCCESS != ret)      
        {
            SAMPLE_TRACE("failed to set the src surface colorkey!\n");
            goto RET;
        }
    }

    if (pOpt->EnableGlobalAlpha)
    {
        ret = HI_GO_SetSurfaceAlpha(hSrcSurface, 0x3f);
        if (HI_SUCCESS != ret)      
        {
            SAMPLE_TRACE("failed to set the src surface alpha!\n");
            goto RET;
        }
    }

    HI_GO_SyncSurface(hDstSurface, HIGO_SYNC_MODE_CPU);
    gettimeofday(&t1, NULL);
    /** output text */
    for (i=0; i<MAX_COUNT; i++)
    {
        ret = HI_GO_Blit(hSrcSurface, pSrcRect, hDstSurface, pDstRect, &opt);
        SYNC(hDstSurface, HIGO_SYNC_MODE_CPU);
        if (HI_SUCCESS != ret)
        {
            goto RET;
        }
    }
    
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/MAX_COUNT;
    
    /**  fresh graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    WAIT();
    
RET:
    HI_GO_FreeSurface(hSrcSurface);
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return HI_SUCCESS;
    
}

HI_S32 Test_BlitTime100x100(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 100, 100};
    HI_RECT dst = {0, 0, 100, 100};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_BlitTime720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 720, 576};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_BlitTime1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1920, 1080};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_BlitColorAlphaKeyTime100x100(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 100, 100};
    HI_RECT dst = {0, 0, 100, 100};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_BlitColorAlphaKeyTime720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 720, 576};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_BlitColorAlphaKeyTime1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1920, 1080};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}


HI_S32 Test_DoBlitAntiflickerTime(const HI_RECT* pSrcRect, const HI_RECT* pDstRect, 
                                         HI_S32 *pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hDstSurface,hSrcSurface = HIGO_INVALID_HANDLE;
    HI_S32 i;
    struct timeval t1, t2;
    HI_S32 t;
    HIGO_DEFLICKEROPT_S opt;
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif
    opt.DefLevel = HIGO_DEFLICKER_HIGH;

#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }


#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.CanvasWidth  = 720;
    stLayerInfo.CanvasHeight = 576;
#else
	stLayerInfo.CanvasWidth  = 1920;
    stLayerInfo.CanvasHeight = 1080;
#endif

    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hDstSurface); 
    if (HI_SUCCESS != ret)  
    {
        SAMPLE_TRACE("failed to get the layer surface!\n");
        goto RET;
    }

    ret = HI_GO_FillRect(hDstSurface, NULL, 0xff00ff00, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the layer surface!\n");
       goto RET;
    }
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_1555, &hSrcSurface);
    else
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_8888, &hSrcSurface);
    if (HI_SUCCESS != ret)      
    {
        SAMPLE_TRACE("failed to create the surface (1920*1080@32 bits)!\n");
        goto RET;
    }

    ret = HI_GO_FillRect(hSrcSurface, NULL, 0xff00ffff, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the src surface!\n");
       goto RET;
    }

    HI_GO_SyncSurface(hDstSurface, HIGO_SYNC_MODE_CPU);
    gettimeofday(&t1, NULL);
    /** text output */
    for (i=0; i<MAX_COUNT; i++)
    {
        ret = HI_GO_DeflickerBlit(hSrcSurface, pSrcRect, hDstSurface, pDstRect, &opt);
        SYNC(hDstSurface, HIGO_SYNC_MODE_CPU);
        if (HI_SUCCESS != ret)
        {
            goto RET;
        }
    }
    
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/MAX_COUNT;
    
    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    WAIT();
    
RET:
    HI_GO_FreeSurface(hSrcSurface);
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return HI_SUCCESS;
}

HI_S32 Test_BlitAntifilickerTime30x30(HI_S32 *pTimeCosted)
{
    HI_RECT src = {100, 100, 30, 30};
    HI_RECT dst = {100, 100, 30, 30};
    return Test_DoBlitAntiflickerTime(&src, &dst, pTimeCosted);
}

HI_S32 Test_BlitAntifilickerTime720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 720, 576};
    return Test_DoBlitAntiflickerTime(&src, &dst, pTimeCosted);
}

HI_S32 Test_BlitAntifilickerTime720x576To720x480(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 720, 576};
    return Test_DoBlitAntiflickerTime(&src, &dst, pTimeCosted);
}


HI_S32 Test_BlitAntifilickerTime1280x720To720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 720, 576};
    return Test_DoBlitAntiflickerTime(&src, &dst, pTimeCosted);
}

HI_S32 Test_BlitAntifilickerTime1280x720To1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 1920, 1080};
    return Test_DoBlitAntiflickerTime(&src, &dst, pTimeCosted);
}


HI_S32 Test_StretchBlitTime720x576To1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_StretchBlitTime1280x720To720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 720, 576};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_StretchBlitColorKeyAlphaTime1280x720To720x576(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 720, 576};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_StretchBlitColorKeyAlphaTime720x576To1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 720, 576};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_StretchBlitTime1280x720To1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}

HI_S32 Test_StretchBlitColorKeyAlphaTime1280x720To1920x1080(HI_S32 *pTimeCosted)
{
    HI_RECT src = {0, 0, 1280, 720};
    HI_RECT dst = {0, 0, 1920, 1080};
    HIGO_BLTOPT_S opt = {0};
    opt.ColorKeyFrom = HIGO_CKEY_SRC;
    opt.EnableGlobalAlpha = HI_TRUE;
    opt.PixelAlphaComp = HIGO_COMPOPT_SRCOVER;
    return Test_DoBlitTime(&src, &dst, &opt, pTimeCosted);
}


HI_S32 Test_FillRectTime(const HI_RECT* pDstRect, HI_S32* pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hDstSurface;
    HI_S32 i;
    struct timeval t1, t2;
    HI_S32 t;
    HI_HANDLE hSurface = HIGO_INVALID_HANDLE;
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif
         
#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif


    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.CanvasWidth  = 720;
    stLayerInfo.CanvasHeight = 576;
#else
	stLayerInfo.CanvasWidth  = 1920;
    stLayerInfo.CanvasHeight = 1080;
#endif

    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfo.PixelFormat = HIGO_PF_1555;
    else
        stLayerInfo.PixelFormat = HIGO_PF_8888;
    
    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hDstSurface); 
    if (HI_SUCCESS != ret)  
    {
        SAMPLE_TRACE("failed to get the layer surface!\n");
        goto RET;
    }
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_1555, &hSurface);
    else
        ret = HI_GO_CreateSurface(1920, 1080, HIGO_PF_8888, &hSurface);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create surface!\n");
        goto RET;
    }
    
    gettimeofday(&t1, NULL);
    /** text output */
    for (i=0; i<MAX_COUNT; i++)
    {
        ret = HI_GO_FillRect(hSurface, pDstRect, 0xff00ff00, HIGO_COMPOPT_NONE);
        SYNC(hSurface, HIGO_SYNC_MODE_CPU);
        if (HI_SUCCESS != ret)  
        {
           SAMPLE_TRACE("failed to fill the layer surface!\n");
           goto RET;
        }
    }
    
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/MAX_COUNT;
    HI_GO_Blit(hSurface, NULL, hDstSurface, NULL, NULL);
    
    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    WAIT();
    
RET:
    if (HIGO_INVALID_HANDLE != hSurface)
    {
        HI_GO_FreeSurface(hSurface);
    }
    
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return HI_SUCCESS;
}

HI_S32 Test_FillRectTime720x576(HI_S32* pTimeCosted)
{
    HI_RECT rc={0,0,720,576};
    return Test_FillRectTime(&rc, pTimeCosted);
}

HI_S32 Test_FillRectTime1920x1080(HI_S32* pTimeCosted)
{
    HI_RECT rc={0,0,1920, 1080};
    return Test_FillRectTime(&rc, pTimeCosted);
}


HI_S32 Test_DecFile(const HI_CHAR *pszFileName, HI_HANDLE *pSurface)
{
    HI_S32 ret;
    HI_HANDLE hDecoder;
    HIGO_DEC_ATTR_S stSrcDesc;

    // assert(NULL != pszFileName);
    // assert(NULL != pSurface);

    /** create decode */
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = pszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /** decode and put to Surface */
    ret  = HI_GO_DecImgData(hDecoder, 0, NULL, pSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    return ret;
}

HI_S32 Test_DoDecImageTime(const HI_CHAR* pFile, HI_S32 *pTimeCosted)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hDstSurface, hImageSurface;
    HI_S32 i;
    struct timeval t1, t2;
    HI_S32 t;
    HIGO_BLTOPT_S opt = {0};
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif

#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.CanvasWidth  = 720;
    stLayerInfo.CanvasHeight = 576;
#else
	stLayerInfo.CanvasWidth  = 1920;
    stLayerInfo.CanvasHeight = 1080;
#endif


    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfo.PixelFormat = HIGO_PF_1555;    
    else
        stLayerInfo.PixelFormat = HIGO_PF_8888;    
     
    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        return HI_FAILURE;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hDstSurface); 
    if (HI_SUCCESS != ret)  
    {
        SAMPLE_TRACE("failed to get the layer surface!\n");
        goto RET;
    }

    ret = HI_GO_FillRect(hDstSurface, NULL, 0xff00ff00, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != ret)  
    {
       SAMPLE_TRACE("failed to fill the layer surface!\n");
       goto RET;
    }

    HI_GO_SyncSurface(hDstSurface, HIGO_SYNC_MODE_CPU);

    gettimeofday(&t1, NULL);
    /** output text */
    for (i=0; i<5; i++)
    {
        if (hImageSurface != HIGO_INVALID_HANDLE)
        {
            HI_GO_FreeSurface(hImageSurface);            
        }
        
        ret = Test_DecFile(pFile, &hImageSurface);
        if (HI_SUCCESS != ret)
        {
            SAMPLE_TRACE("failed to dec file:%s !\n", pFile);
            goto RET;
        }
    }
    
    gettimeofday(&t2, NULL);
    t = ((t2.tv_sec*1000000 + t2.tv_usec) - (t1.tv_sec*1000000 + t1.tv_usec))/1000;
    *pTimeCosted = t/5;

    ret = HI_GO_Blit(hImageSurface, NULL, hDstSurface, NULL, &opt);
    HI_GO_SyncSurface(hDstSurface, HIGO_SYNC_MODE_CPU);
    
    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    WAIT();
    
RET:
    HI_GO_FreeSurface(hImageSurface);
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return HI_SUCCESS;
}

HI_S32 Test_DecImageTime_PNG(HI_S32 *pTimeCosted)
{
    return Test_DoDecImageTime("./res/performance.png", pTimeCosted);
}

HI_S32 Test_DecImageTime_JPG(HI_S32 *pTimeCosted)
{
    return Test_DoDecImageTime("./res/performance.jpg", pTimeCosted);
}

HI_S32 Test_DecImageTime_GIF(HI_S32 *pTimeCosted)
{
    return Test_DoDecImageTime("./res/performance.gif", pTimeCosted);
}


HI_S32 Test_DecImageTime_BMP(HI_S32 *pTimeCosted)
{
    return Test_DoDecImageTime("./res/performance.bmp", pTimeCosted);    
}

typedef HI_S32 (*TEST_FUNC)(HI_S32* pTimeCosted);

static TEST_FUNC s_TestCases[] = 
{
    Test_BlitAntifilickerTime30x30,
    Test_BlitTime100x100,
    Test_BlitColorAlphaKeyTime100x100,
    Test_BlitTime720x576,
    Test_BlitColorAlphaKeyTime720x576,
    Test_BlitAntifilickerTime720x576,
    Test_BlitTime1920x1080,
    Test_BlitColorAlphaKeyTime1920x1080,
    Test_BlitAntifilickerTime720x576To720x480,
    Test_StretchBlitTime720x576To1920x1080,
    Test_StretchBlitColorKeyAlphaTime720x576To1920x1080,
    Test_StretchBlitTime1280x720To1920x1080,
    Test_StretchBlitColorKeyAlphaTime1280x720To1920x1080,
    Test_BlitAntifilickerTime1280x720To1920x1080,
    Test_StretchBlitTime1280x720To720x576,
    Test_StretchBlitColorKeyAlphaTime1280x720To720x576,
    Test_BlitAntifilickerTime1280x720To720x576,
    Test_FillRectTime720x576,
    Test_FillRectTime1920x1080,
#ifdef CHIP_TYPE_hi3110ev500
    Test_RefreshLayerTime_SD,
#else
    Test_RefreshLayerTime_HD,
#endif
    Test_DrawTextTime_Dot,
    Test_DecImageTime_JPG,
    Test_DecImageTime_PNG,
    Test_DecImageTime_GIF,
    Test_DecImageTime_BMP,
};

static HI_CHAR* s_pszCaseName[] = 
{
    "Blit 30*30->30*30 @32bits (antifliker)  100 times",
    "Blit 100*100->100*100 @32bits",
    "Blit 100*100->100*100 @32bits (colorkey+alpha)",
    "Blit 720*756->720*576 @32bits",
    "Blit 720*756->720*576 @32bits (colorkey+alpha)",
    "Blit 720*756->720*576 @32bits (antifliker)",
    "Blit 1920*1080->1920*1080 @32bits",
    "Blit 1920*1080->1920*1080 @32bits(colorkey+alpha)",
    "Blit 720*576->720*480@32bits (antifliker)",
    "StretchBlit 720*576 --->1920*1080 @32bits",
    "StretchBlit 720*576 --->1920*1080 @32bits (colorkey+alpha)",
    "StretchBlit 1280*720-->1920*1080 @32bits",
    "StretchBlit 1280*720-->1920*1080 @32bits(colorkey+alpha)",
    "StretchBlit 1280*720-->1920*1080 @32bits(antiflicker)",
    "StretchBlit 1280*720-->720*576 @32bits",
    "StretchBlit 1280*720-->720*576 @32bits(colorkey+alpha)",
    "StretchBlit 1280*720-->720*576 @32bits (anitiflicker)",
    "Fill 720*756 @32bits",   
    "Fill 1920*1080 @32bits",
#ifdef CHIP_TYPE_hi3110ev500
    "refresh sd layer (1280x720->720*576)",
#else
    "refresh hd layer (1280x720->1920*1080)",
#endif
    "draw dot text time ms per char",
    "decode jpg (1920*1080)",
    "decode png (1920*1080)",
    "decode gif (1920*1080)",
    "decode bmp (1920*1080)",
};

HI_S32 Test_DisplayResult(HI_S32 *pResultTime, HI_S32 num)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfo;
    HI_HANDLE hLayer,hSurface,hText;
    HI_RECT stRect;
    HI_CHAR szResult[512];
    HI_S32 Width,Height;
    HI_S32 i;
    
#ifdef CHIP_TYPE_hi3110ev500
    ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
	ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.CanvasWidth  = 1280;
    stLayerInfo.CanvasHeight = 720;
 #else
	stLayerInfo.CanvasWidth  = 1920;
    stLayerInfo.CanvasHeight = 1080;
 #endif
 
    ret = HI_GO_CreateLayer(&stLayerInfo,&hLayer);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the layer!\n");
        goto RET;
    }

    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayer,&hSurface); 
    if (HI_SUCCESS != ret)  
    {
        SAMPLE_TRACE("failed to get the layer surface!\n");
        goto RET;
    }

    HI_GO_GetSurfaceSize(hSurface, &Width, &Height);
	
    /** create the object of text display */   
    ret = HI_GO_CreateText(SAMPLE_GB2312_DOTFILE, NULL, &hText);
    if (HI_SUCCESS != ret)
    {
        SAMPLE_TRACE("failed to create the font: line%d,%s!\n", __LINE__,SAMPLE_GB2312_DOTFILE);
        goto RET;
    }

    /** set the default color of text as white, and background color is black*/
    ret = HI_GO_SetTextBGColor(hText,0xFFFF0000);

    ret |= HI_GO_SetTextColor(hText,0xFF00FF00);

    if (HI_SUCCESS != ret)
    {
        goto RET;
    }

    /** output text */
    stRect.x = 100;
    stRect.y = 20;
    stRect.w = Width - stRect.x;
    stRect.h = Height - stRect.y;

    assert(num == sizeof(s_TestCases)/sizeof(*s_TestCases));
    assert(num == sizeof(s_pszCaseName)/sizeof(*s_pszCaseName));
    for (i=0; i<num; i++)
    {
        sprintf(szResult, "%s, costed :%d ms!\n", s_pszCaseName[i], pResultTime[i]);
        ret = HI_GO_TextOut(hText, hSurface, szResult, &stRect);
        if (HI_SUCCESS != ret)
        {
            SAMPLE_TRACE("HI_GO_TextOut failure\n");
            goto RET;
        }

        stRect.y += 26;
    }

    /**fresh the graphic layer */ 
    ret = HI_GO_RefreshLayer(hLayer, NULL);
    if (HI_SUCCESS != ret)
    {
        goto RET;
    }

    SAMPLE_TRACE("please input anykey to stop\n");
    getchar();
RET:
    
    /** destroy text output object */
    ret = HI_GO_DestroyText(hText);
    /** destroy graphic layer */
    ret = HI_GO_DestroyLayer(hLayer);
    return 0;    
}

#define TEST_CASE_NUM (sizeof(s_TestCases)/sizeof(*s_TestCases))    

/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc,HI_CHAR **argv)
{
    HI_S32 ret;
    HI_S32 i;
    HI_S32 result[TEST_CASE_NUM];
    HI_S32 t;

#ifdef CHIP_TYPE_hi3110ev500
    SAMPLE_TRACE("Tips: The program need the SD display.!\n");
#else
	SAMPLE_TRACE("Tips: The program need the HD display.!\n");
#endif
    SAMPLE_TRACE("tips: -nosync async tde test!\n");
    SAMPLE_TRACE("tips: -wait wait for watching the result and press any key to continue!\n");

    argc--;
    while (argc > 0)
    {
        if ((strcmp(argv[argc], "-nosync") == 0))
        {
            SAMPLE_TRACE("async test!\n");
            s_NeedSync = HI_FALSE;
        }
    
        if ((strcmp(argv[argc], "-wait") == 0))
        {
            SAMPLE_TRACE("wait !\n");
            s_NeedWait = HI_TRUE;
        }

        argc--;
    }
    
    ret = Display_Init();
    
    /** initial */
    ret |= HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    for (i=0; i<TEST_CASE_NUM; i++)
    {
        t = 0;
        SAMPLE_TRACE("test :%s ", s_pszCaseName[i]);
        ret = s_TestCases[i](&t);
        if (HI_SUCCESS == ret)
        {
            result[i] = t;
        }
        else
        {
            result[i] = 0;
        }

        SAMPLE_TRACE("cost: %d ms\n", result[i]);
    }

    Test_DisplayResult(result, TEST_CASE_NUM);
    
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    /** de initial */
    ret |= Display_DeInit();

    return HI_SUCCESS;
}
