























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : optm_hifb_adpt.c
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/

#include <linux/string.h>
#include <linux/fb.h>

#include "optm_disp.h"
#include "optm_m_disp.h"
#include "optm_hal.h"
#include "optm_hifb.h"

#include "hifb_drv.h"
#include "hi_drv_tde.h"


/***************************** Macro Definition ******************************/

#define OPTM_HIFB_INTERFACE_ENABLE      1
#define HIFB_MAX_LOGIC_HIFB_LAYER       7       /** 默认7个图层，后续扩展使用 **/

#define D_OptmCheckRet(ret)  \
do{                                                   \
       if (ret != HI_SUCCESS){ HI_WARN_DISP("Ret=0x%x\n", ret);  \
      	HI_WARN_DISP("Failed! FUNC=%s, LINE=%d\n", __FUNCTION__, __LINE__);         \
      	return HI_FAILURE;}                   \
}while(0)

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static char *LcdPara  =  "1440*900";
module_param(LcdPara, charp, S_IRUGO);



/**
 ** SD0/SD1  /HD0/HD1  /AD/HC  /对芯片规格 
 **/
const HIFB_CAPABILITY_S g_stHifbGfxCap[HIFB_MAX_LOGIC_HIFB_LAYER] =
{
    /* SD0/fb0 support */
    {
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_FALSE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,0,0,0,  0,0,0,0, 0,0}, /** 34 **/
		.u32MaxWidth  = 720,
		.u32MaxHeight = 576,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,             /** not surpport **/
		.u32HDefLevel = 0,             /** not surpport **/
		.bLayerSupported = HI_TRUE,
		.bCompression    = HI_FALSE,   /** not   surpport compress   **/
		.bStereo         = HI_FALSE,   /** not support 3D            **/
		.bVoScale        = HI_TRUE,    /** to be modify in 3720      **/
		.bHasCmapReg     = HI_FALSE,
    },
    /* SD1/fb1 unsupport */
    {
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  1,1,1,1, 1,1}, /** 34 **/
		.u32MaxWidth  = 720,
		.u32MaxHeight = 576,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,             /** not surpport **/
		.u32HDefLevel = 0,             /** not surpport **/
		.bLayerSupported = HI_FALSE,   /** 不支持       **/
		.bCompression    = HI_FALSE,   /** surpport compress   **/
		.bStereo         = HI_FALSE,   /** support 3D 	       **/
		.bVoScale        = HI_FALSE,
		.bHasCmapReg     = HI_FALSE,
    },
    /* HD0/fb2 support */
    {
		.bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,1,0,0,  0,0,0,0, 0,0}, /** 34 **/
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,            /** not surpport **/
		.u32HDefLevel = 0,            /** not surpport **/
		.bLayerSupported = HI_TRUE,
		.bCompression    = HI_FALSE,  /** not surpport compress **/
		.bStereo         = HI_FALSE,  /** not support 3D        **/
		.bVoScale        = HI_TRUE,
		.bHasCmapReg     = HI_TRUE,
    },
    /* HD1/fb3 unsupport */
    {
		.bKeyAlpha     = HI_TRUE,
		.bGlobalAlpha  = HI_TRUE,
		.bCmap         = HI_TRUE,
		.bColFmt       = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  1,1,1,1, 1,1}, /** 34 **/
		.u32MaxWidth   = 1920,
		.u32MaxHeight  = 1080,
		.u32MinWidth   = 32,
		.u32MinHeight  = 32,
		.u32VDefLevel  = 0,           /** not surpport        **/
		.u32HDefLevel  = 0,           /** not surpport        **/
		.bLayerSupported = HI_TRUE,   /** add virtual layer   **/
		.bCompression    = HI_FALSE,  /** surpport compress   **/
		.bStereo         = HI_FALSE,  /** support 3D          **/
		.bVoScale        = HI_FALSE,
		.bHasCmapReg     = HI_FALSE,
    },
    /* AD0/fb4 support */
    {
		.bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_FALSE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,0,0,0,  0,0,0,0, 0,0},/** 34 **/
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 0,
		.u32MinHeight = 0,
		.u32VDefLevel = 0,               /** not surpport **/
		.u32HDefLevel = 0,               /** not surpport **/
		.bLayerSupported = HI_TRUE,
		.bCompression    = HI_FALSE,     /** not surpport compress   **/
		.bStereo         = HI_FALSE,     /** not support 3D	         **/
		.bVoScale        = HI_TRUE,
		.bHasCmapReg     = HI_FALSE,
    },
    /* HC/fb5 unsupport */
    {
		.bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  0,0,0,0, 0,0},/** 34 **/
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,              /** not surpport **/
		.u32HDefLevel = 0,              /** not surpport **/
		.bLayerSupported = HI_FALSE,
		.bCompression    = HI_FALSE,    /** surpport compress  **/
		.bStereo         = HI_FALSE,    /** support 3D 		   **/
		.bVoScale        = HI_FALSE,
		.bHasCmapReg     = HI_FALSE,
    },
     /* AD1/fb6 unsupport */
    {
		.bKeyAlpha    = 1,
		.bGlobalAlpha = 1,
		.bCmap        = 1,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  0,0,0,0, 0,0},/** 34 **/
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,               /** not surpport **/
		.u32HDefLevel = 0,               /** not surpport **/
		.bLayerSupported = HI_FALSE,
		.bCompression    = HI_FALSE,     /** surpport compress  **/
		.bStereo         = HI_TRUE,      /** support 3D 		**/
		.bVoScale        = HI_TRUE,
		.bHasCmapReg     = HI_FALSE,
    }
};


HI_HANDLE g_hifbSDisphandle = 0;
HI_HANDLE g_hifbHDisphandle = 0;

/******************************* API realization *****************************/


/***************************************************************************************
* func          : HIFB_DRV_ColorFmtConvert
* description   : CNcomment:  CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
OPTM_GFX_PIXELFORMAT_E HIFB_DRV_ColorFmtConvert(HIFB_COLOR_FMT_E enDataFmt)
{
    switch(enDataFmt)
    {
        case HIFB_FMT_1BPP:
            return OPTM_GFX_FMT_CLUT_1BPP;
        case HIFB_FMT_2BPP:
            return OPTM_GFX_FMT_CLUT_2BPP;
        case HIFB_FMT_4BPP:
            return OPTM_GFX_FMT_CLUT_4BPP;
        case HIFB_FMT_8BPP:
            return OPTM_GFX_FMT_CLUT_8BPP;
        case HIFB_FMT_RGB565:
            return OPTM_GFX_FMT_RGB_565;
        case HIFB_FMT_ARGB4444:
            return OPTM_GFX_FMT_ARGB_4444;
        case HIFB_FMT_ARGB1555:
            return OPTM_GFX_FMT_ARGB_1555;
        case HIFB_FMT_KRGB888:
            return OPTM_GFX_FMT_KRGB_888;
        case HIFB_FMT_ARGB8888:
            return OPTM_GFX_FMT_ARGB_8888;
        case HIFB_FMT_ACLUT44:
           return OPTM_GFX_FMT_ACLUT_44;
        case HIFB_FMT_KRGB444:
        	return OPTM_GFX_FMT_RGB_444;
        case HIFB_FMT_KRGB555:
             return OPTM_GFX_FMT_RGB_555;
       case HIFB_FMT_PUYVY:
             return OPTM_GFX_FMT_CbYCrY_PACKAGE_422_GRC;
        case HIFB_FMT_PYUYV:
           return OPTM_GFX_FMT_YCbYCr_PACKAGE_422_GRC;
        case HIFB_FMT_PYVYU:
           return     OPTM_GFX_FMT_YCrYCb_PACKAGE_422_GRC;
        case HIFB_FMT_ACLUT88:
           return OPTM_GFX_FMT_ACLUT_88;
        case HIFB_FMT_RGB888:
           return OPTM_GFX_FMT_RGB_888;
        case HIFB_FMT_YUV888:
           return OPTM_GFX_FMT_YCbCr_888;
        case HIFB_FMT_ARGB8565:
           return OPTM_GFX_FMT_ARGB_8565;
        case HIFB_FMT_AYUV8888:
           return OPTM_GFX_FMT_AYCbCr_8888;
        case HIFB_FMT_RGBA4444:
           return OPTM_GFX_FMT_RGBA_4444;
        case HIFB_FMT_RGBA5551:
           return OPTM_GFX_FMT_RGBA_5551;
        case HIFB_FMT_RGBA5658:
           return OPTM_GFX_FMT_RGBA_5658;
        case HIFB_FMT_RGBA8888:
           return OPTM_GFX_FMT_RGBA_8888;
        case HIFB_FMT_YUVA8888:
           return OPTM_GFX_FMT_YCbCrA_8888;
            
        case HIFB_FMT_BGR565:
             return OPTM_GFX_FMT_BGR565;
             
        case HIFB_FMT_BGR888:
             return OPTM_GFX_FMT_BGR888;
             
        case HIFB_FMT_ABGR4444:
             return OPTM_GFX_FMT_ABGR4444;
             
        case HIFB_FMT_ABGR1555:
             return OPTM_GFX_FMT_ABGR1555;
             
        case HIFB_FMT_ABGR8888:
             return OPTM_GFX_FMT_ABGR8888;
             
        case HIFB_FMT_ABGR8565:
             return OPTM_GFX_FMT_ABGR8565;
             
        case HIFB_FMT_KBGR444:
             return OPTM_GFX_FMT_KBGR444;
             
        case HIFB_FMT_KBGR555:
             return OPTM_GFX_FMT_KBGR555;
             
        case HIFB_FMT_KBGR888:
             return OPTM_GFX_FMT_KBGR888;

        default:
            return OPTM_GFX_FMT_BUTT;
    }
}



/***************************************************************************************
* func          : HIFB_DRV_GetGfxId
* description   : CNcomment: hifb中的图层ID转换成OSD的图层ID CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
OPTM_GFX_LAYER_EN HIFB_DRV_GetGfxId(HIFB_LAYER_ID u32LayerId)
{
    if (u32LayerId == ADAPT_LAYER_SD_0)
    {
        return OPTM_GFX_LAYER_SD0;
    }
    else if (u32LayerId == ADAPT_LAYER_HD_0)
    {
        return OPTM_GFX_LAYER_HD0;
    }
	else if (u32LayerId == ADAPT_LAYER_AD_0)
	{
	    return OPTM_GFX_LAYER_AD0;
	}
	else if (u32LayerId == ADAPT_LAYER_AD_1)
	{
	    return OPTM_GFX_LAYER_AD1;
	}
    else
    {
        return OPTM_GFX_LAYER_BUTT;
    }
}

HI_S32 HIFB_DRV_SetLayerZorder(HIFB_LAYER_ID u32LayerId, HIFB_ZORDER_E eZorder)
{
    return OPTM_GfxSetLayerZorder(HIFB_DRV_GetGfxId(u32LayerId), (OPTM_GFX_ZORDER_E)eZorder);
}

HI_S32 HIFB_DRV_GetLayerZorder(HIFB_LAYER_ID u32LayerId, HI_U32* u32Zorder)
{
    return OPTM_GfxGetLayerZorder(HIFB_DRV_GetGfxId(u32LayerId), u32Zorder);
}
HI_S32 HIFB_DRV_EnableLayer(HIFB_LAYER_ID u32LayerId, HI_BOOL bEnable)
{
    return OPTM_GfxSetEnable(HIFB_DRV_GetGfxId(u32LayerId), bEnable);
}

HI_S32 HIFB_DRV_GetLayerState(HIFB_LAYER_ID u32LayerId, HI_BOOL *pbState)
{
    return OPTM_GfxGetEnable(HIFB_DRV_GetGfxId(u32LayerId), pbState);
}

HI_S32 HIFB_DRV_SetLayerAddr(HIFB_LAYER_ID u32LayerId, HI_U32 u32Addr)
{	
    return OPTM_GfxSetLayerAddr(HIFB_DRV_GetGfxId(u32LayerId), u32Addr);
}

HI_S32 HIFB_DRV_SetLayerStride(HIFB_LAYER_ID u32LayerId, HI_U32 u32Stride)
{
    return OPTM_GfxSetLayerStride(HIFB_DRV_GetGfxId(u32LayerId), u32Stride);
}

HI_S32 HIFB_DRV_SetLayerDataFmt(HIFB_LAYER_ID u32LayerId, HIFB_COLOR_FMT_E enDataFmt)
{
    if(enDataFmt >= HIFB_FMT_BUTT){
     	  return -1;
    }

    return OPTM_GfxSetLayerDataFmt(HIFB_DRV_GetGfxId(u32LayerId), HIFB_DRV_ColorFmtConvert(enDataFmt));
}

HI_S32 HIFB_DRV_SetColorReg(HIFB_LAYER_ID u32LayerId, HI_U32 u32OffSet, HI_U32 u32Color, HI_S32 UpFlag)
{
    if (u32OffSet > 255)
    {
        HI_WARN_DISP("GFX color clut offset > 255.\n");
        return -1;
    }
    return OPTM_GfxSetColorReg(HIFB_DRV_GetGfxId(u32LayerId), u32OffSet, u32Color, UpFlag);
}

HI_S32 HIFB_DRV_WaitVBlank(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxWaitVBlank(HIFB_DRV_GetGfxId(u32LayerId));
}

HI_S32 HIFB_DRV_WaitUpFinish(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxWaitRR(HIFB_DRV_GetGfxId(u32LayerId));
}


HI_S32 HIFB_DRV_SetLayerDeFlicker(HIFB_LAYER_ID u32LayerId, HIFB_DEFLICKER_S stDeFlicker)
{
    return OPTM_GfxSetLayerDeFlicker(HIFB_DRV_GetGfxId(u32LayerId), (OPTM_GFX_DEFLICKER_S *)&stDeFlicker);;
}

HI_S32 HIFB_DRV_SetLayerAlpha(HIFB_LAYER_ID u32LayerId, HIFB_ALPHA_S stAlpha)
{
    return OPTM_GfxSetLayerAlpha(HIFB_DRV_GetGfxId(u32LayerId), (OPTM_GFX_ALPHA_S *)&stAlpha);
}

//Set Output Window Rectangular
HI_S32 HIFB_DRV_GetLayerRect(HIFB_LAYER_ID u32LayerId, HIFB_RECT *pstInputRect, HIFB_RECT *pstOutputRect)
{
    HI_U32 u32Ret;
    HI_RECT_S stInputRect, stOutputRect;   
    
    u32Ret = OPTM_GfxGetLayerRect(HIFB_DRV_GetGfxId(u32LayerId), &stInputRect, &stOutputRect);
    if (u32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }
    
    pstInputRect->x = stInputRect.s32X;
    pstInputRect->y = stInputRect.s32Y;
    pstInputRect->w = stInputRect.s32Width;
    pstInputRect->h = stInputRect.s32Height;
    
    pstOutputRect->x = stOutputRect.s32X;
    pstOutputRect->y = stOutputRect.s32Y;
    pstOutputRect->w = stOutputRect.s32Width;
    pstOutputRect->h = stOutputRect.s32Height;



    return HI_SUCCESS;
}
HI_S32 HIFB_DRV_SetLayerRect(HIFB_LAYER_ID u32LayerId, const HIFB_RECT *pstInputRect, const HIFB_RECT *pstOutputRect)
{
    HI_RECT_S stInputRect, stOutputRect;
    
    stInputRect.s32X      = pstInputRect->x;
    stInputRect.s32Y      = pstInputRect->y;
    stInputRect.s32Width  = pstInputRect->w;
    stInputRect.s32Height = pstInputRect->h;
    
    stOutputRect.s32X      = pstOutputRect->x;
    stOutputRect.s32Y      = pstOutputRect->y;
    stOutputRect.s32Width  = pstOutputRect->w;
    stOutputRect.s32Height = pstOutputRect->h;

    return OPTM_GfxSetLayerRect(HIFB_DRV_GetGfxId(u32LayerId), &stInputRect, &stOutputRect);
}
HI_S32 HIFB_DRV_SetHDRect(HIFB_LAYER_ID u32SrcLayerId, const HIFB_RECT *pstInputRect, const HIFB_RECT *pstOutputRect)
{
    HI_RECT_S stInputRect, stOutputRect;
    
    stInputRect.s32X      = pstInputRect->x;
    stInputRect.s32Y      = pstInputRect->y;
    stInputRect.s32Width  = pstInputRect->w;
    stInputRect.s32Height = pstInputRect->h;
    
    stOutputRect.s32X      = pstOutputRect->x;
    stOutputRect.s32Y      = pstOutputRect->y;
    stOutputRect.s32Width  = pstOutputRect->w;
    stOutputRect.s32Height = pstOutputRect->h;

    return OPTM_GfxSetHDRect(HIFB_DRV_GetGfxId(u32SrcLayerId), &stInputRect, &stOutputRect);
}
 HI_S32 HIFB_DRV_SetEncPicFraming(HI_U32 u32LayerId, HIFB_ENCODER_PICTURE_FRAMING_E enStereoMode)
 {
      
     if( HIFB_ENCPICFRM_MONO == enStereoMode)
     {
       return OPTM_GfxSetTriDimEnable(HIFB_DRV_GetGfxId(u32LayerId), HI_FALSE);
     }
     else
     {
        OPTM_GfxSetTriDimEnable(HIFB_DRV_GetGfxId(u32LayerId), HI_TRUE);
        if(HIFB_ENCPICFRM_STEREO_SIDEBYSIDE_HALF == enStereoMode)
        {
           return OPTM_GfxSetTriDimMode(HIFB_DRV_GetGfxId(u32LayerId), OPTM_GFX_MODE_SIDE_BY_SIDE);
        }
        else if(HIFB_ENCPICFRM_STEREO_TOPANDBOTTOM == enStereoMode)
        {
           return OPTM_GfxSetTriDimMode(HIFB_DRV_GetGfxId(u32LayerId), OPTM_GFX_MODE_TOP_BOTTOM);
        }
        else
        {
           return -1;
        }     
     }
 }
#if 0
HI_S32 HIFB_DRV_EnableCompression(HI_U32 u32LayerId, HI_BOOL bCompressionEnable)
{
     return OPTM_GfxSetLayerDeCmpEnable(HIFB_DRV_GetGfxId(u32LayerId), bCompressionEnable);
}

HI_S32 HIFB_DRV_SetCompressionRect(HI_U32 u32LayerId, const HIFB_RECT *pstRect)
{
     return OPTM_GfxSetGfxCmpRect(HIFB_DRV_GetGfxId(u32LayerId),(HI_RECT_S *)pstRect);

}

HI_S32 HIFB_DRV_CompressionHandle(HI_U32 u32LayerId)
{

   return OPTM_GfxGfxCmpHandle(HIFB_DRV_GetGfxId(u32LayerId));

}
#endif


/***************************************************************************************
* func          : HIFB_DRV_GetGFXCap
* description   : CNcomment: 获取图层层能力级 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_GetGFXCap(HIFB_CAPABILITY_S* pstCap)
{
    pstCap[0].bStereo      = HI_FALSE;/** SD不支持3D      **/
    pstCap[2].bCompression = HI_FALSE;/** HD不支持压缩解压 **/
    pstCap[2].bStereo      = HI_TRUE;
    return HI_SUCCESS;
}
 

HI_S32 HIFB_DRV_ColorConvert(const struct fb_var_screeninfo *pstVar, HIFB_COLORKEYEX_S *pCkey)
{
//    HI_U8 r, g, b;
    HI_U8 rOff, gOff, bOff;
    #if 0
    r = (u32InColor >> pstVar->red.offset) << (8-pstVar->red.length) ;
    g = (u32InColor >> pstVar->green.offset) << (8-pstVar->green.length) ;
    b = (u32InColor >> pstVar->blue.offset) << (8-pstVar->blue.length) ;

    r += (r >> pstVar->red.length);
    g += (g >> pstVar->green.length);
    b += (b >> pstVar->blue.length);
    rOff = 8-pstVar->red.length;
    gOff = 8-pstVar->green.length;
    bOff = 8-pstVar->blue.length;
    
    r &= (0xff << rOff);
    g &= (0xff << gOff);
    b &= (0xff << bOff);
    
    *pu32OutColor = (r << 16) + (g << 8) + b;
    #endif

    rOff = pstVar->red.length;
    gOff = pstVar->green.length;
    bOff = pstVar->blue.length;

    #if 0
    pCkey->u8RedMax |= (0xff >> rOff);
    pCkey->u8RedMin |= (0xff >> rOff); 
    pCkey->u8GreenMax |= (0xff >> gOff); 
    pCkey->u8GreenMin |= (0xff >> gOff); 
    pCkey->u8BlueMax |= (0xff >> bOff); 
    pCkey->u8BlueMin |= (0xff >> bOff); 
    printk ("redmin: %x, redmax:%x, greenmin:%x, greenmax:%x, bluemax:%x, bluemin:%x\n",
             pCkey->u8RedMin,pCkey->u8RedMax,pCkey->u8GreenMin,pCkey->u8GreenMax,pCkey->u8BlueMin,pCkey->u8BlueMax);
    printk("mask:red:%x,green:%x, blut:%x\n", pCkey->u8RedMask, pCkey->u8GreenMask,pCkey->u8BlueMask); 

    #endif
    pCkey->u8RedMask = (0xff >> rOff);
    pCkey->u8GreenMask = (0xff >> gOff);
    pCkey->u8BlueMask  = (0xff >> bOff);
    //pCkey->u32KeyMode = 0;

    return 0;
}


HI_S32 HIFB_DRV_SetLayKeyMask(HIFB_LAYER_ID u32LayerId, const HIFB_COLORKEYEX_S *pstColorkey)
{
   return OPTM_GfxSetLayKeyMask(HIFB_DRV_GetGfxId(u32LayerId), (OPTM_COLOR_KEY_S *)pstColorkey);
}

HI_S32 HIFB_DRV_UpdataLayerReg(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxUpLayerReg(HIFB_DRV_GetGfxId(u32LayerId));
}

//Set Default external bit mode
HI_S32 HIFB_DRV_LayerDefaultBitExtMode(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxSetLayerBitExtMode(HIFB_DRV_GetGfxId(u32LayerId), OPTM_GFX_BITEXTEND_3RD);;
}

HI_S32 HIFB_DRV_LayerBitExtMode(HIFB_LAYER_ID u32LayerId, HI_U32 u32Mode)
{
    return OPTM_GfxSetLayerBitExtMode(HIFB_DRV_GetGfxId(u32LayerId), u32Mode);
}

HI_S32 HIFB_DRV_SetLayerPreMult(HIFB_LAYER_ID u32LayerId, HI_BOOL bEnable)
{
    return OPTM_GfxSetLayerPreMult(HIFB_DRV_GetGfxId(u32LayerId), bEnable);
}


HI_S32  HIFB_DRV_SetClutAddr(HIFB_LAYER_ID u32LayerId, HI_U32 u32PhyAddr)
{
    return OPTM_GfxSetClutAddr(HIFB_DRV_GetGfxId(u32LayerId), u32PhyAddr);
}


HIFB_COLOR_FMT_E HIFB_DRV_ColorFmtConvertBack(HI_U32 DataFmt)
{
    OPTM_GFX_PIXELFORMAT_E enDataFmt;
    enDataFmt = (OPTM_GFX_PIXELFORMAT_E)DataFmt;

    switch(enDataFmt)
    {
        case OPTM_GFX_FMT_CLUT_1BPP:
            return HIFB_FMT_1BPP;
        case OPTM_GFX_FMT_CLUT_2BPP:
            return HIFB_FMT_2BPP;
        case OPTM_GFX_FMT_CLUT_4BPP:
            return HIFB_FMT_4BPP;
        case OPTM_GFX_FMT_CLUT_8BPP:
            return HIFB_FMT_8BPP;
        case OPTM_GFX_FMT_RGB_565:
            return HIFB_FMT_RGB565;
        case OPTM_GFX_FMT_ARGB_4444:
            return HIFB_FMT_ARGB4444;
        case OPTM_GFX_FMT_ARGB_1555:
            return HIFB_FMT_ARGB1555;
        case OPTM_GFX_FMT_KRGB_888:
            return HIFB_FMT_KRGB888;
        case OPTM_GFX_FMT_ARGB_8888:
            return HIFB_FMT_ARGB8888;
        case OPTM_GFX_FMT_ACLUT_44:
           return HIFB_FMT_ACLUT44;
        case OPTM_GFX_FMT_RGB_444:
        	return HIFB_FMT_KRGB444;
        case OPTM_GFX_FMT_RGB_555:
             return HIFB_FMT_KRGB555;
       case OPTM_GFX_FMT_CbYCrY_PACKAGE_422_GRC:
             return HIFB_FMT_PUYVY;
        case OPTM_GFX_FMT_YCbYCr_PACKAGE_422_GRC:
           return HIFB_FMT_PYUYV;
        case OPTM_GFX_FMT_YCrYCb_PACKAGE_422_GRC:
           return  HIFB_FMT_PYVYU;
        case OPTM_GFX_FMT_ACLUT_88:
           return HIFB_FMT_ACLUT88;
        case OPTM_GFX_FMT_RGB_888:
           return HIFB_FMT_RGB888;
        case OPTM_GFX_FMT_YCbCr_888:
           return HIFB_FMT_YUV888;
        case OPTM_GFX_FMT_ARGB_8565:
           return HIFB_FMT_ARGB8565;
        case OPTM_GFX_FMT_AYCbCr_8888:
           return HIFB_FMT_AYUV8888;
        case OPTM_GFX_FMT_RGBA_4444:
           return HIFB_FMT_RGBA4444;
        case OPTM_GFX_FMT_RGBA_5551:
           return HIFB_FMT_RGBA5551;
        case OPTM_GFX_FMT_RGBA_5658:
           return HIFB_FMT_RGBA5658;
        case OPTM_GFX_FMT_RGBA_8888:
           return HIFB_FMT_RGBA8888;
        case OPTM_GFX_FMT_YCbCrA_8888:
           return HIFB_FMT_YUVA8888;
        default:
            return HIFB_FMT_BUTT;
    }
    return HIFB_FMT_BUTT;
}


/***************************************************************************************
* func          : HIFB_DRV_GetOSDData
* description   : CNcomment: 获取OSD的相关数据信息 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_GetOSDData(HI_U32 u32LayerId, HIFB_OSD_DATA_S *pstLayerData)
{

    HI_S32 nRet = HI_FAILURE;
    OPTM_OSD_DATA_S stLayerData;

    memset(&stLayerData, 0, sizeof(OPTM_OSD_DATA_S));
    nRet = OPTM_GfxGetOSDData(HIFB_DRV_GetGfxId(u32LayerId), &stLayerData);
    if (nRet == HI_SUCCESS)
    {
        pstLayerData->eState           = (HIFB_LAYER_STATE_E)stLayerData.eState;
        pstLayerData->u32BufferPhyAddr = stLayerData.u32BufferPhyAddr; 
        pstLayerData->u32RegPhyAddr    = stLayerData.u32RegPhyAddr; 
        pstLayerData->u32Stride        = stLayerData.u32Stride;
        pstLayerData->s32XInPos        = stLayerData.stInRect.s32X;
        pstLayerData->s32YInPos        = stLayerData.stInRect.s32Y;
        pstLayerData->u32InWidth       = stLayerData.stInRect.s32Width;
        pstLayerData->u32InHeight      = stLayerData.stInRect.s32Height;
        pstLayerData->s32XPos          = stLayerData.stOutRect.s32X;
        pstLayerData->s32YPos          = stLayerData.stOutRect.s32Y;
        pstLayerData->u32Width         = stLayerData.stOutRect.s32Width;
        pstLayerData->u32Height        = stLayerData.stOutRect.s32Height;
		
        pstLayerData->eFmt = HIFB_DRV_ColorFmtConvertBack(stLayerData.eFmt);
        memcpy(&(pstLayerData->stAlpha), &(stLayerData.stAlpha), sizeof(HIFB_ALPHA_S));
        memcpy(&(pstLayerData->stColorKey), &(stLayerData.stColorKey), sizeof(HIFB_COLORKEYEX_S));

		pstLayerData->eScanMode       = (stLayerData.bProgressiveDisp) ? HIFB_SCANMODE_P : HIFB_SCANMODE_I;
        pstLayerData->bPreMul         = stLayerData.bPreMul;
        pstLayerData->u32ScreenWidth  = stLayerData.u32ScreenWidth; /* Screan width in Current Video Format */
        pstLayerData->u32ScreenHeight = stLayerData.u32ScreenHeight; /*Screan height in Current Video Format*/
        pstLayerData->u32gfxWorkMode  = stLayerData.gfxWorkMode;
		
    }
    /* 
    width, height, stride, addr, ckey, alpha, pix
    */
    return nRet;
	
}




/***************************************************************************************
* func          : HIFB_DRV_SetIntCallback
* description   : CNcomment: 设置中断回调函数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
IntCallBack s_pTdeCallBack;
HI_S32 HIFB_DRV_SetIntCallback(HIFB_INT_TPYE_E eIntType, IntCallBack pCallBack, HIFB_LAYER_ID u32LayerId)
{
    HI_S32 nRet = HI_FAILURE;
    
    if ( (u32LayerId > 6) || (eIntType >= HIFB_INTTYPE_BUTT))
    {
        return HI_FAILURE;
    }

    if (HIFB_INTTYPE_VO == eIntType)
    {
        nRet = OPTM_GfxSetIntCallback(OPTM_INTTYPE_VTHD, (PF_OPTM_GFX_INT_CALLBACK)pCallBack, HIFB_DRV_GetGfxId(u32LayerId));
    }
    else if (HIFB_INTTYPE_VO_DISP == eIntType)
    {
        nRet = OPTM_GfxSetIntCallback(OPTM_INTTYPE_CHANGE_DISP, (PF_OPTM_GFX_INT_CALLBACK)pCallBack, HIFB_DRV_GetGfxId(u32LayerId));
    }
    else
    {
        s_pTdeCallBack = pCallBack;
        nRet = HI_SUCCESS;
    }

    return nRet;
	
}

/***************************************************************************************
* func          : HIFB_DRV_OpenLayer
* description   : CNcomment: 打开图层 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_OpenLayer(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxOpenLayer(HIFB_DRV_GetGfxId(u32LayerId));
}


/***************************************************************************************
* func          : HIFB_DRV_CloseLayer
* description   : CNcomment: 关闭图层 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_CloseLayer(HIFB_LAYER_ID u32LayerId)
{
    return OPTM_GfxCloseLayer(HIFB_DRV_GetGfxId(u32LayerId));
}

/***************************************************************************************
* func          : HIFB_DRV_Init
* description   : CNcomment: 图层初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_Init(HI_VOID)
{
    return HI_SUCCESS;
}
/***************************************************************************************
* func          : HIFB_DRV_DeInit
* description   : CNcomment: 图层去初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_DeInit(HI_VOID)
{
    return HI_SUCCESS;
}

HI_S32 HIFB_DRV_GfxInit(HI_VOID)
{
    return OPTM_GfxInit();
}

HI_S32 HIFB_DRV_GfxDeInit(HI_VOID)
{
    return OPTM_GfxDeInit();
}

HI_S32 HIFB_DRV_SetLayerPriority(HI_U32 u32DispChn, HI_U32 u32Priority)
{
    HI_U8 u8Prio[4];

    u8Prio[0] = u32Priority & 0xff;
    u8Prio[1] = (u32Priority >> 8) & 0xff;
    u8Prio[2] = (u32Priority >> 16) & 0xff;
    u8Prio[3] = (u32Priority >> 24) & 0xff;

    Vou_SetCbmMixerPrioNew((HI_U8) u32DispChn, u8Prio);
    
    return 0;
}

extern HI_S32 DISP_MOD_ExtOpen(HI_UNF_DISP_E enDisp);
extern HI_S32 DISP_MOD_ExtClose(HI_UNF_DISP_E enDisp);
extern HI_S32 DISP_MOD_Init(HI_VOID);
extern HI_S32 DISP_MOD_DeInit(HI_VOID);
extern HI_S32 DISP_MOD_Ioctl(unsigned int cmd, HI_VOID *arg);


/***************************************************************************************
* func          : HIFB_DRV_OpenDisplay
* description   : CNcomment: 打开VO CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_OpenDisplay(HI_VOID)
{
    HI_UNF_DISP_BG_COLOR_S      stBgColor;
    HI_UNF_DISP_INTERFACE_S     DacMode;
    HI_S32 nRet = HI_SUCCESS;

    nRet =DISP_MOD_Init();
	
    D_OptmCheckRet(nRet);

    DacMode.bScartEnable = HI_FALSE;
    DacMode.bBt1120Enable = HI_FALSE;
    DacMode.bBt656Enable = HI_FALSE;

	#define DACMODE0 HI_UNF_DISP_DAC_MODE_HD_Y
	#define DACMODE1 HI_UNF_DISP_DAC_MODE_HD_PR
	#define DACMODE2 HI_UNF_DISP_DAC_MODE_HD_PB
	#define DACMODE3 HI_UNF_DISP_DAC_MODE_SVIDEO_C
	#define DACMODE4 HI_UNF_DISP_DAC_MODE_SVIDEO_Y
	#define DACMODE5 HI_UNF_DISP_DAC_MODE_CVBS

    DacMode.enDacMode[0] = DACMODE0;
    DacMode.enDacMode[1] = DACMODE1;
    DacMode.enDacMode[2] = DACMODE2;
    DacMode.enDacMode[3] = DACMODE3;
   // DacMode.enDacMode[4] = DACMODE4;
   // DacMode.enDacMode[5] = DACMODE5;

    DISP_SetDacMode(&DacMode);

    DISP_SetBright(HI_UNF_DISP_HD0, 50);
    DISP_SetContrast(HI_UNF_DISP_HD0, 50);

    g_hifbHDisphandle = HI_UNF_DISP_HD0;
    nRet = DISP_MOD_Ioctl(CMD_DISP_OPEN, &g_hifbHDisphandle);

    D_OptmCheckRet(nRet);
    g_hifbHDisphandle = HI_UNF_DISP_HD0;
    
    stBgColor.u8Red   = 0;
    stBgColor.u8Green = 0;
    stBgColor.u8Blue  = 0;
    nRet = DISP_SetBgColor(g_hifbHDisphandle, &stBgColor);
    D_OptmCheckRet(nRet);

    HI_INFO_DISP("HD display opened\n");

    DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVETOP);

    g_hifbSDisphandle = HI_UNF_DISP_SD0;
    nRet = DISP_MOD_Ioctl(CMD_DISP_OPEN, &g_hifbSDisphandle);

    D_OptmCheckRet(nRet);
    g_hifbSDisphandle = HI_UNF_DISP_SD0;

    stBgColor.u8Red   = 0;
    stBgColor.u8Green = 0;
    stBgColor.u8Blue  = 0;
    nRet = DISP_SetBgColor(g_hifbSDisphandle, &stBgColor);
    D_OptmCheckRet(nRet);

    HI_INFO_DISP("SD display opened\n");

    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : HIFB_DRV_CloseDisplay
* description   : CNcomment: 关闭VO CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_CloseDisplay(HI_VOID)
{
	HI_S32 nRet;

	nRet = DISP_SetEnable(g_hifbSDisphandle, HI_FALSE);
	D_OptmCheckRet(nRet);

	nRet = DISP_MOD_Ioctl(CMD_DISP_CLOSE, &g_hifbSDisphandle);

	D_OptmCheckRet(nRet);

	nRet = DISP_SetEnable(g_hifbHDisphandle, HI_FALSE);
	D_OptmCheckRet(nRet);

	nRet = DISP_MOD_Ioctl(CMD_DISP_CLOSE, &g_hifbHDisphandle);

	D_OptmCheckRet(nRet);

	nRet = DISP_MOD_DeInit();

	D_OptmCheckRet(nRet);

	HI_INFO_DISP("HD display closed\n");

	return HI_SUCCESS;
	   
}


/***************************************************************************************
* func          : HIFB_DRV_GetHaltDispStatus
* description   : CNcomment: 获取display打开状态 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_GetHaltDispStatus(HI_U32 uLayerID,HI_BOOL *pbDispInit)
{
    return (OPTM_GetHaltDispStatus(uLayerID,pbDispInit));
}

/***************************************************************************************
* func          : HIFB_DRV_GetOps
* description   : CNcomment:  获取适配层的相关函数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HIFB_DRV_GetOps(HI_VOID *Ops)
{
    
    HIFB_DRV_OPS_S *pstOps = (HIFB_DRV_OPS_S *)Ops;
    pstOps->u32LayerCount   = 3; /** 支持3个图层fb0标清,fb2高清,fb4字幕**/
  
    pstOps->HIFB_DRV_Init                  = HIFB_DRV_Init;
    pstOps->HIFB_DRV_DeInit                = HIFB_DRV_DeInit;    
    pstOps->HIFB_DRV_LayerDefaultSetting   = HIFB_DRV_LayerDefaultBitExtMode;
    pstOps->HIFB_DRV_EnableLayer           = HIFB_DRV_EnableLayer;
    pstOps->HIFB_DRV_SetLayerZorder        = HIFB_DRV_SetLayerZorder;
    pstOps->HIFB_DRV_GetLayerZorder        = HIFB_DRV_GetLayerZorder;
    pstOps->HIFB_DRV_SetLayerAddr          = HIFB_DRV_SetLayerAddr;
    pstOps->HIFB_DRV_SetLayerStride        = HIFB_DRV_SetLayerStride;
    pstOps->HIFB_DRV_SetLayerDataFmt       = HIFB_DRV_SetLayerDataFmt;
    pstOps->HIFB_DRV_SetColorReg           = HIFB_DRV_SetColorReg;
    pstOps->HIFB_DRV_WaitVBlank            = HIFB_DRV_WaitVBlank;
    pstOps->HIFB_DRV_SetLayerDeFlicker     = HIFB_DRV_SetLayerDeFlicker;
    pstOps->HIFB_DRV_SetLayerAlpha         = HIFB_DRV_SetLayerAlpha;
    pstOps->HIFB_DRV_SetLayerRect          = HIFB_DRV_SetLayerRect;
    pstOps->HIFB_DRV_SetHDRect             = HIFB_DRV_SetHDRect;
    pstOps->HIFB_DRV_ColorConvert          = HIFB_DRV_ColorConvert;
    pstOps->HIFB_DRV_SetLayerKeyMask       = HIFB_DRV_SetLayKeyMask;
    pstOps->HIFB_DRV_UpdataLayerReg        = HIFB_DRV_UpdataLayerReg;
    pstOps->HIFB_DRV_WaitRegUpdateFinished = HIFB_DRV_WaitUpFinish;
    pstOps->HIFB_DRV_SetPreMul             = HIFB_DRV_SetLayerPreMult;
    pstOps->HIFB_DRV_SetClutAddr           = HIFB_DRV_SetClutAddr;
    pstOps->HIFB_DRV_GetOSDData            = HIFB_DRV_GetOSDData;
    pstOps->HIFB_DRV_SetIntCallback        = HIFB_DRV_SetIntCallback;
    pstOps->HIFB_DRV_OpenLayer             = HIFB_DRV_OpenLayer;
    pstOps->HIFB_DRV_CloseLayer            = HIFB_DRV_CloseLayer;
    pstOps->HIFB_DRV_OpenDisplay           = HIFB_DRV_OpenDisplay;
    pstOps->HIFB_DRV_CloseDisplay          = HIFB_DRV_CloseDisplay;
    pstOps->HIFB_DRV_GetHaltDispStatus     = HIFB_DRV_GetHaltDispStatus;
    pstOps->HIFB_DRV_SetEncPicFraming      = HIFB_DRV_SetEncPicFraming;
    pstOps->HIFB_DRV_GetGFXCap             = HIFB_DRV_GetGFXCap;

	memcpy(&pstOps->pstCapability[0], &g_stHifbGfxCap[0], sizeof(HIFB_CAPABILITY_S)*HIFB_MAX_LOGIC_HIFB_LAYER);

}
