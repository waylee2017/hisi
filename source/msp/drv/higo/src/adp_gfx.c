/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : mmz_api.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/

#include "hi_tde_type.h"
#include "hi_tde_api.h"
#include "higo_common.h"
#include "higo_surface.h"
#include "higo_blit.h"
#include "hi_go_bliter.h"
#include "higo_adp_sys.h"


/*****************************************************************************/


/***************************** Macro Definition ******************************/
#define TIMEOUT            10

HI_BOOL g_SynFlag     = HI_TRUE;
#define TDE_FLAG           g_SynFlag

#define MAX_PIXELFORMAT 3
#define MAX_OPERATION_NUM   6 

#define FORMAT_CLUT     0
#define FORMAT_RGB      1
#define FORMAT_YUV      2
#define FORMAT_INVALID  4

#define GFX_TRUE    1    /*hardware support */
#define GFX_FALSE   0    /*hardware not support */
#define GFX_PART    2    /*hardware support partly */


#define BLIT_OPT_COPY               0 //lint -e750
#define BLIT_OPT_COLORKEY           0x1
#define BLIT_OPT_ALPHA              0x2
#define BLIT_OPT_COLORKEY2ALPHA    (BLIT_OPT_COLORKEY|BLIT_OPT_ALPHA)
#define BLIT_OPT_ROP                0x4
#define BLIT_OPT_COLORKEY2ROP       (BLIT_OPT_COLORKEY|BLIT_OPT_ROP)

#define OPERAT_TYPE_MAXNUM 5 /** all kinds of  operation type, include "LINE     CIRCLE    FILLRECT  RECTANGLE   ELLIPSE"*/

#define  BLIT_CHECK_OPTINDEX(BlitMask,OptIndex) (OptIndex =  BlitMask)
#define  BLIT_CHECK_SRCFORMAT(PF, SrcIndex) \
do \
{ \
    if (IS_RGB_FORMAT(PF)) \
    { \
        SrcIndex = FORMAT_RGB;\
    } \
    else if (IS_YUV_FORMAT(PF))\
    { \
        SrcIndex = FORMAT_YUV; \
    } else if (IS_CLUT_FORMAT(PF))\
    { \
        SrcIndex = FORMAT_CLUT; \
    } \
    else \
    { \
        SrcIndex = FORMAT_INVALID; \
    }\
} \
while (0)

#define  BLIT_CHECK_DSTFORMAT(PF, DstIndex) \
do \
{ \
    if (IS_RGB_FORMAT(PF)) \
    { \
        DstIndex = FORMAT_RGB;\
    } \
    else if (IS_YUV_FORMAT(PF))\
    { \
        DstIndex = FORMAT_YUV; \
    } else if (IS_CLUT_FORMAT(PF))\
    { \
        DstIndex = FORMAT_CLUT; \
    } \
    else \
    { \
        DstIndex = FORMAT_INVALID; \
    }\
} \
while (0)

#define  ADP_ConvertRop(TdeRop, HiGoRop)  (TdeRop = (TDE2_ROP_CODE_E)(HiGoRop))

/*************************** Structure Definition ****************************/
/** maping pixel format table*/
struct
{
    HIGO_PF_E        HiGoPF;
    TDE2_COLOR_FMT_E X5PF;
} g_HiGo_PF_MapTable[] = {
    {HIGO_PF_0444,  TDE2_COLOR_FMT_RGB444  },
    {HIGO_PF_4444,  TDE2_COLOR_FMT_ARGB4444},
    {HIGO_PF_0555,  TDE2_COLOR_FMT_RGB555  },
    {HIGO_PF_565,   TDE2_COLOR_FMT_RGB565  },
    {HIGO_PF_1555,  TDE2_COLOR_FMT_ARGB1555},
    {HIGO_PF_0888,  TDE2_COLOR_FMT_RGB888  },
    {HIGO_PF_8888,  TDE2_COLOR_FMT_ARGB8888},
    {HIGO_PF_8565,  TDE2_COLOR_FMT_ARGB8565},
    {HIGO_PF_CLUT1, TDE2_COLOR_FMT_CLUT1   },
    {HIGO_PF_CLUT4, TDE2_COLOR_FMT_CLUT4   },
    {HIGO_PF_CLUT8, TDE2_COLOR_FMT_CLUT8   },
    {HIGO_PF_A1,    TDE2_COLOR_FMT_A1      },
    {HIGO_PF_A8,    TDE2_COLOR_FMT_A8      },
};


struct
{
    HIGO_PF_E           HiGoPF;
    TDE2_MB_COLOR_FMT_E X5PF;
} g_HiGo_MBPF_MapTable[] = {
    {HIGO_PF_YUV400, TDE2_MB_COLOR_FMT_JPG_YCbCr400MBP},
    {HIGO_PF_YUV420, TDE2_MB_COLOR_FMT_JPG_YCbCr420MBP},
    {HIGO_PF_YUV422, TDE2_MB_COLOR_FMT_JPG_YCbCr422MBHP},
    {HIGO_PF_YUV422_V, TDE2_MB_COLOR_FMT_JPG_YCbCr422MBVP},
    {HIGO_PF_YUV444, TDE2_MB_COLOR_FMT_JPG_YCbCr444MBP}
    };


/********************** Global Variable declaration **************************/

static HI_BOOL g_HigoInitTde = HI_FALSE;

/******************************* API declaration *****************************/


/******************************* API realize *****************************/

HI_S32 ADP_GFXBlitBility(const HIGO_SURFACE_S* pSrcSurface, const HIGO_SURFACE_S* pDstSurface, const HIGO_BLTOPT2_S* pBlitOpt)
{
    return  GFX_TRUE;
}

HI_S32 ADP_GFXStretchBlitBility(const HIGO_SURFACE_S* pSrcSurface, const HIGO_SURFACE_S* pDstSurface, const HIGO_BLTOPT2_S* pBlitOpt)
{
    return  GFX_TRUE;
}

HI_S32 ADP_GFXOperateBility(const HIGO_SURFACE_S* pDstSurface, const GFX_OPT_TYPE_E GfxOpt, const HIGO_BLTOPT2_S* pBlitOpt)
{
    return GFX_TRUE;
}
static HI_S32 ADP_ConvertFormat(HIGO_PF_E ColorFmt, TDE2_COLOR_FMT_E *pX5ColorFmt)
{
    HI_S32 i;
    for (i = 0; i < (HI_S32)HIGO_ARRAY_SIZE(g_HiGo_PF_MapTable); i++)
    {
        if (g_HiGo_PF_MapTable[i].HiGoPF == ColorFmt)
        {
            *pX5ColorFmt = g_HiGo_PF_MapTable[i].X5PF;
            return HI_SUCCESS;
        }
    }

    HIGO_ERROR("invalid pixel format\n", HIGO_ERR_INVPIXELFMT);
    return HIGO_ERR_INTERNAL;
}
static HI_S32 ADP_ConvertMBFormat(HIGO_PF_E ColorFmt, TDE2_MB_COLOR_FMT_E *pX5ColorFmt)
{
    HI_S32 i;
    for (i = 0; i < (HI_S32)HIGO_ARRAY_SIZE(g_HiGo_MBPF_MapTable); i++)
    {
        if (g_HiGo_MBPF_MapTable[i].HiGoPF == ColorFmt)
        {
            *pX5ColorFmt = g_HiGo_MBPF_MapTable[i].X5PF;
            return HI_SUCCESS;
        }
    }

    HIGO_ERROR("invalid pixel format\n", HIGO_ERR_INVPIXELFMT);
    return HIGO_ERR_INTERNAL;
}

static HI_S32 ADP_ColorExpand(const HIGO_SURFACE_S *pSrcSurface, HI_COLOR Color, HI_U32 *pFillData)
{
    switch (pSrcSurface->PixelFormat)
    {
    case HIGO_PF_0444:
    case HIGO_PF_4444:
        *pFillData = (HI_U32)RGB32TO4444(Color);
        break;
    case HIGO_PF_0555:
    case HIGO_PF_1555:

        *pFillData = (HI_U32)RGB32TO1555(Color);
        break;
    case HIGO_PF_0888:
    case HIGO_PF_8888:
        *pFillData = (HI_U32)Color;
        break;
    case HIGO_PF_565:
        *pFillData = RGB32TO565(Color);
        break;
    case HIGO_PF_8565:
        *pFillData = RGB32TO8565(Color);
        break;        
    case HIGO_PF_CLUT1:
    case HIGO_PF_CLUT4:
    case HIGO_PF_CLUT8:    
        *pFillData = Color;
        break;
    default:
        HIGO_ADP_LOG(0, "invalid fill format\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
//lint -e550
static HI_S32 ADP_ConverKey(HI_COLOR ColorKey, HIGO_PF_E PixelF, TDE2_COLORKEY_U *pKeyValue)
{
    HI_U8 a, r, g, b;
    HI_U32 RMin = 0, RMax = 0, GMin = 0, GMax = 0, BMin = 0, BMax = 0; 

    GetARGB(ColorKey, a, r, g, b);
    switch (PixelF)
    {
    case HIGO_PF_0444:
    case HIGO_PF_4444:
        RMin = r & 0xf0;
        RMax = r | 0x0f;
        GMin = g & 0xf0;
        GMax = g | 0x0f;
        BMin = b & 0xf0;
        BMax = b | 0x0f;
        break;
    case HIGO_PF_0555:
    case HIGO_PF_1555:
        RMin = r & 0xf8;
        RMax = r | 0x07;
        GMin = g & 0xf8;
        GMax = g | 0x07;
        BMin = b & 0xf8;
        BMax = b | 0x07;
        break;
    case HIGO_PF_565:
    case HIGO_PF_8565:
        RMin = r & 0xf8;
        RMax = r | 0x07;
        GMin = g & 0xfc;
        GMax = g | 0x03;
        BMin = b & 0xf8;
        BMax = b | 0x07;
        break;
    case HIGO_PF_0888:
    case HIGO_PF_8888:
        RMin = RMax = r;
        GMin = GMax = g;
        BMin = BMax = b;
        break;
    default:
        break;
    }
    pKeyValue->struCkARGB.stRed.u8CompMin     = (HI_U8)RMin;
    pKeyValue->struCkARGB.stRed.u8CompMax     = (HI_U8)RMax;
    pKeyValue->struCkARGB.stGreen.u8CompMin   = (HI_U8)GMin;
    pKeyValue->struCkARGB.stGreen.u8CompMax   = (HI_U8)GMax;
    pKeyValue->struCkARGB.stBlue.u8CompMin    = (HI_U8)BMin;
    pKeyValue->struCkARGB.stBlue.u8CompMax    = (HI_U8)BMax;

    pKeyValue->struCkARGB.stAlpha.bCompIgnore = HI_TRUE;
    return HI_SUCCESS;
}
//lint +e550

inline static HI_S32 ADP_MEMSurfaceToTDESurface(const HIGO_SURFACE_S *pSurface, TDE2_SURFACE_S* pTDESurface)
{
    pTDESurface->u32PhyAddr = (HI_U32)pSurface->Data[0].pPhyData;
    if (HI_SUCCESS != ADP_ConvertFormat(pSurface->PixelFormat, &(pTDESurface->enColorFmt)))
    {   
        HIGO_ERROR("invalid pixel format\n", HIGO_ERR_INVPIXELFMT);
        return HIGO_ERR_INVPIXELFMT;
    }

    pTDESurface->u32Height = (HI_U32)pSurface->Height;
    pTDESurface->u32Width  = (HI_U32)pSurface->Width;
    pTDESurface->u32Stride = pSurface->Data[0].Pitch;
    /** if clut format , reload the clut, attention the pSurface->Palette address must be phyaddress*/
    if (IS_CLUT_FORMAT(pSurface->PixelFormat))
    {
        pTDESurface->pu8ClutPhyAddr = (HI_U8*)pSurface->pPhyPalette;
        pTDESurface->bYCbCrClut = HI_FALSE;
    }
    else
    {
        pTDESurface->pu8ClutPhyAddr = NULL;
        pTDESurface->bYCbCrClut = HI_FALSE;
    }
    /** below to be modified*/
    pTDESurface->bAlphaMax255  = HI_TRUE;
    pTDESurface->bAlphaExt1555 = HI_TRUE;
    pTDESurface->u8Alpha0 = 0;
    pTDESurface->u8Alpha1 = 255;
    return HI_SUCCESS;
}

static HI_S32 ADP_MEMSurfaceToTDEMBSurface(const HIGO_SURFACE_S *pSurface, TDE2_MB_S* pTDEMBSurface)
{
    HI_S32 s32Ret;
    
    s32Ret = ADP_ConvertMBFormat(pSurface->PixelFormat, &pTDEMBSurface->enMbFmt);
    if (s32Ret != HI_SUCCESS)
    {
        HIGO_ERROR("quick copy error\n", s32Ret);
        return HIGO_ERR_INVPIXELFMT;
    }
    pTDEMBSurface->u32YPhyAddr = (HI_U32)pSurface->Data[0].pPhyData;
    pTDEMBSurface->u32CbCrPhyAddr = (HI_U32)pSurface->Data[1].pPhyData;
    pTDEMBSurface->u32YStride = pSurface->Data[0].Pitch;
    pTDEMBSurface->u32CbCrStride = pSurface->Data[1].Pitch;
    pTDEMBSurface->u32YWidth  = (HI_U32)pSurface->Width;
    pTDEMBSurface->u32YHeight = (HI_U32)pSurface->Height;
    return HI_SUCCESS;
}

static HI_S32 ADP_CSCBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect,  const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, HI_BOOL bScale)
{
    TDE2_SURFACE_S TDEDstSurface;
    TDE2_MBOPT_S stMbOpt;
    TDE2_MB_S TDEMBSurface;
    TDE2_RECT_S SrcRect = {pSrcRect->x, pSrcRect->y, (HI_U32)pSrcRect->w, (HI_U32)pSrcRect->h};
    TDE2_RECT_S DstRect = {pDstRect->x, pDstRect->y, (HI_U32)pDstRect->w, (HI_U32)pDstRect->h};
    TDE_HANDLE s32Handle;
    HI_S32  s32Ret;
    
    /** doing flicker resisting when doing scaling*/
    HIGO_MemSet(&stMbOpt, 0 , sizeof(TDE2_MBOPT_S));
    /** convert source and dest surface to TDE format */
    s32Ret = ADP_MEMSurfaceToTDEMBSurface(pSrcSurface, &TDEMBSurface);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    /** prepare dst surface */     
    s32Ret = ADP_MEMSurfaceToTDESurface(pDstSurface, &TDEDstSurface);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    /** convert surface to X5 marco block surface */
    s32Handle = HI_TDE2_BeginJob();
    if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
    {
        HIGO_ERROR("begin jop failed\n", s32Handle);
        return HIGO_ERR_DEPEND_TDE;
    }

    /** enable clip rect*/
    if (IS_HAVE_CLIPRECT(pDstSurface))
    {
        stMbOpt.enClipMode = TDE2_CLIPMODE_INSIDE;
        stMbOpt.stClipRect.s32Xpos = pDstSurface->ClipRect.x;
        stMbOpt.stClipRect.s32Ypos = pDstSurface->ClipRect.y;
        stMbOpt.stClipRect.u32Width = (HI_U32)pDstSurface->ClipRect.w;
        stMbOpt.stClipRect.u32Height = (HI_U32)pDstSurface->ClipRect.h;
    }

    /** set the scale param*/
    if (HI_TRUE == bScale)
    {
        stMbOpt.enResize = TDE2_MBRESIZE_QUALITY_LOW;
    }

    /** semi-planar YUV to packet */
    s32Ret = HI_TDE2_MbBlit(s32Handle, &TDEMBSurface, &SrcRect, &TDEDstSurface, &DstRect, &stMbOpt);
    if (HI_SUCCESS != s32Ret)
    {
        HIGO_ERROR("Mbblit failed\n", s32Ret);
        (HI_VOID)HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
        return HIGO_ERR_DEPEND_TDE;
    }

    s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
    if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
    {
        HIGO_ERROR("end job failed\n", s32Ret);
        return HIGO_ERR_DEPEND_TDE;
    }
    return HI_SUCCESS;
}


static HI_S32 ADP_GenerateTDEOpt(const HIGO_SURFACE_S* pSrcSurface,
                                 const HIGO_SURFACE_S* pDstSurface,
                                 const HIGO_BLTOPT2_S*      pBlitOpt,
                                 TDE2_OPT_S*               pTDEOpt, HI_BOOL bScale)
{
    TDE2_OPT_S stOpt;

    HIGO_MemSet(&stOpt, 0, sizeof(TDE2_OPT_S));
    /** handle colorkey */
    if (pBlitOpt->ColorKeyFrom != HIGO_CKEY_NONE)
    {
        HI_U8 clutIndex = 0;
        HI_BOOL IsClut = HI_FALSE;

        switch (pBlitOpt->ColorKeyFrom)
        {
        case HIGO_CKEY_SRC:
            if (IS_CLUT_FORMAT(pSrcSurface->PixelFormat))
            {
                clutIndex = (HI_U8)pSrcSurface->ColorKey;
                IsClut = HI_TRUE;
            }
            else
            {
                (HI_VOID)ADP_ConverKey(pSrcSurface->ColorKey, pSrcSurface->PixelFormat, &stOpt.unColorKeyValue);
            }
            stOpt.enColorKeyMode = TDE2_COLORKEY_MODE_FOREGROUND;
            break;
        case HIGO_CKEY_DST:
            if (IS_CLUT_FORMAT(pDstSurface->PixelFormat))
            {
                clutIndex = (HI_U8)pDstSurface->ColorKey;
                IsClut = HI_TRUE;
            }
            else
            {
                (HI_VOID)ADP_ConverKey(pDstSurface->ColorKey, pDstSurface->PixelFormat, &stOpt.unColorKeyValue);
            }
            stOpt.enColorKeyMode = TDE2_COLORKEY_MODE_BACKGROUND;
            break;
        default:
            return HIGO_ERR_UNSUPPORTED;
        }

        if (IsClut == HI_TRUE)
        {
            stOpt.unColorKeyValue.struCkClut.stClut.u8CompMin = clutIndex;
            stOpt.unColorKeyValue.struCkClut.stClut.u8CompMax = clutIndex;
            stOpt.unColorKeyValue.struCkClut.stAlpha.bCompIgnore = HI_TRUE;
        }
    }
    else
    {
        stOpt.enColorKeyMode = TDE2_COLORKEY_MODE_NONE;
    }

    /** process ROP */
    if (pBlitOpt->EnableRop)
    {
        stOpt.enAluCmd = TDE2_ALUCMD_ROP;
        ADP_ConvertRop(stOpt.enRopCode_Color, pBlitOpt->Rop);
        stOpt.enRopCode_Alpha = TDE2_ROP_COPYPEN;
    }
    else
    {
        /** process pixel alpha opt */
        switch (pBlitOpt->PixelAlphaComp)
        {
        case HIGO_COMPOPT_AKS:
            stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_FOREGROUND;
            stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
            break;
        case HIGO_COMPOPT_AKD:
            stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_BACKGROUND;
            stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
            break;
        case HIGO_COMPOPT_SRCOVER:
            stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
            stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
            break;
        case HIGO_COMPOPT_NONE:
            stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
            stOpt.enAluCmd = TDE2_ALUCMD_NONE;
            break;
        default:
            stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
            stOpt.enAluCmd = TDE2_ALUCMD_NONE;
            break;
        }

        /** process global alpha opt */
        switch (pBlitOpt->EnableGlobalAlpha)
        {
        case HI_TRUE:
            stOpt.u8GlobalAlpha = pSrcSurface->Alpha;
            break;
        case HI_FALSE:
            stOpt.u8GlobalAlpha = 0xff;
            break;
        default:
            stOpt.u8GlobalAlpha = 0xff;
            break;
        }
    }

    /** global alpha enable pixel alpha disable*/
    if ((stOpt.enAluCmd == TDE2_ALUCMD_NONE) && (pBlitOpt->EnableGlobalAlpha))
    {
        stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_FOREGROUND;
        stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
    }
    /** deal with clip rect*/
    if (IS_HAVE_CLIPRECT(pDstSurface))
    {
        stOpt.enClipMode = TDE2_CLIPMODE_INSIDE;
        stOpt.stClipRect.s32Xpos = pDstSurface->ClipRect.x;
        stOpt.stClipRect.s32Ypos = pDstSurface->ClipRect.y;
        stOpt.stClipRect.u32Width = (HI_U32)pDstSurface->ClipRect.w;
        stOpt.stClipRect.u32Height = (HI_U32)pDstSurface->ClipRect.h;
    }
    if (IS_CLUT_FORMAT(pSrcSurface->PixelFormat ))
    {
        stOpt.bClutReload = HI_TRUE;
    }
    /** deal scale*/
    if (bScale)
    {
        stOpt.bResize  = HI_TRUE;
        stOpt.enFilterMode = TDE2_FILTER_MODE_COLOR;
    }
    memcpy(pTDEOpt, &stOpt, sizeof(stOpt));
    return HI_SUCCESS;
}
TDE2_COLOR_FMT_E ADP_ConvertA2NOAFormat(TDE2_COLOR_FMT_E enColorFmt)
{
    switch (enColorFmt)
    {
    case TDE2_COLOR_FMT_ARGB4444:
        return TDE2_COLOR_FMT_RGB444;
    case TDE2_COLOR_FMT_ARGB1555:
        return TDE2_COLOR_FMT_RGB555;
#ifndef RGB24
    case TDE2_COLOR_FMT_ARGB8888:
        return TDE2_COLOR_FMT_RGB888;
#endif
    default:
        return enColorFmt;
    }

    //return enColorFmt;
}

HI_S32 ADP_GFXBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect, const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, const HIGO_BLTOPT2_S* pBlitOpt, HI_BOOL bScale)
{
    HI_S32 s32Ret = HI_SUCCESS;
    TDE_HANDLE s32Handle;
    TDE2_SURFACE_S TDESrcSurface, TDEDstSurface;
    TDE2_RECT_S SrcRect = {pSrcRect->x, pSrcRect->y, (HI_U32)pSrcRect->w, (HI_U32)pSrcRect->h};
    TDE2_RECT_S DstRect = {pDstRect->x, pDstRect->y, (HI_U32)pDstRect->w, (HI_U32)pDstRect->h};
    TDE2_OPT_S stOpt;

    HIGO_MemSet(&stOpt, 0, sizeof(TDE2_OPT_S));
    /** prepare surface*/
    s32Ret = ADP_MEMSurfaceToTDESurface(pSrcSurface, &TDESrcSurface);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    /** prepare dst surface */     
    s32Ret = ADP_MEMSurfaceToTDESurface(pDstSurface, &TDEDstSurface);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    /** prepare alpha,key,rop opt */ 
    s32Ret = ADP_GenerateTDEOpt(pSrcSurface, pDstSurface, pBlitOpt, &stOpt, bScale);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    if ((stOpt.enAluCmd == TDE2_ALUCMD_NONE) && (pBlitOpt->EnableGlobalAlpha))
    {
        TDESrcSurface.enColorFmt = ADP_ConvertA2NOAFormat(TDESrcSurface.enColorFmt);
        TDEDstSurface.enColorFmt = ADP_ConvertA2NOAFormat(TDEDstSurface.enColorFmt);

        /** global alpha enable pixel alpha disable*/
        stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_FOREGROUND;
        stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
    }
    /** do tde job*/
    s32Handle = HI_TDE2_BeginJob();
    if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
    {
        HIGO_ADP_LOG(0, "tde job invalid handle\n");
        return HIGO_ERR_INTERNAL;
    }
    
    s32Ret = HI_TDE2_Bitblit(s32Handle, &TDEDstSurface, &DstRect, &TDESrcSurface, &SrcRect, &TDEDstSurface,
                          &DstRect, &stOpt);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
        return HIGO_ERR_DEPEND_TDE;
    }
    s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
    if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
    {
        HIGO_ERROR("blit end job failed\n", s32Ret);
        return HIGO_ERR_DEPEND_TDE;
    }
    
    return HI_SUCCESS;
}
HI_S32 ADP_FillRect(const HIGO_SURFACE_S* pDstSurface, const HIGO_OPRECT_S *pOpRect, const HIGO_BLTOPT2_S* pBlitOpt)
{
    HI_U32 u32FillData;
    TDE2_SURFACE_S TDESurface;
    HI_S32 s32Ret;
    TDE2_RECT_S Rect = {pOpRect->Rect.x, pOpRect->Rect.y, (HI_U32)pOpRect->Rect.w, (HI_U32)pOpRect->Rect.h};
    TDE_HANDLE s32Handle;
    HIGO_COMPOPT_E CompositeOpt = pBlitOpt->PixelAlphaComp;

    /** convert memsurface to tde surface */
    s32Ret =  ADP_MEMSurfaceToTDESurface(pDstSurface, &TDESurface);
    if (HI_SUCCESS != s32Ret)
    {
        HIGO_ERROR("convert surface failed\n", s32Ret);
        return s32Ret;
    }

    if ((CompositeOpt == HIGO_COMPOPT_NONE) && (!IS_HAVE_CLIPRECT(pDstSurface)))
    {
        /** quick fill */

        /** color convertion */
        s32Ret = ADP_ColorExpand(pDstSurface, pOpRect->Color, &u32FillData);
        if (s32Ret != HI_SUCCESS)
        {
            HIGO_ERROR("ColorExpand failed", s32Ret);
            return s32Ret;
        }

        /** call X5 quick fill */
        s32Handle = HI_TDE2_BeginJob();
        if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
        {
            HIGO_ERROR("begin job failde\n", s32Handle);
            return HIGO_ERR_DEPEND_TDE;
        }

        s32Ret = HI_TDE2_QuickFill(s32Handle, &TDESurface, &Rect, u32FillData);
        if (s32Ret != HI_SUCCESS)
        {
            HIGO_ERROR("quick fill success\n", s32Ret);
            (HI_VOID)HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
            return HIGO_ERR_DEPEND_TDE;
        }

        s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
        if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
        {
            HIGO_ERROR("endjob failed\n", s32Ret);
            return HIGO_ERR_DEPEND_TDE;
        }
    }
    else
    {
        TDE2_OPT_S TDEOpt;
         HIGO_MemSet(&TDEOpt, 0, sizeof(TDE2_OPT_S));
        /** using X5 SolidDraw do alpha blending */

        s32Handle = HI_TDE2_BeginJob();
        if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
        {
            HIGO_ERROR("HI_TDE2_BeginJob failed\n", s32Handle);
            return HIGO_ERR_DEPEND_TDE;
        }

        TDEOpt.enAluCmd = TDE2_ALUCMD_BLEND;
        TDEOpt.u8GlobalAlpha = 0xff; /*> to be modify global alpha should be disable */
        switch (CompositeOpt)
        {
            case HIGO_COMPOPT_AKD:
                TDEOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_BACKGROUND;
                break;
            case HIGO_COMPOPT_AKS:
                TDEOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_FOREGROUND;
                break;
            default:
                TDEOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
                break;
        }
        /** set clip rect*/
        if (IS_HAVE_CLIPRECT(pDstSurface))
        {
            TDEOpt.enClipMode = TDE2_CLIPMODE_INSIDE;
            TDEOpt.stClipRect.s32Xpos = pDstSurface->ClipRect.x;
            TDEOpt.stClipRect.s32Ypos = pDstSurface->ClipRect.y;
            TDEOpt.stClipRect.u32Width = (HI_U32)pDstSurface->ClipRect.w;
            TDEOpt.stClipRect.u32Height = (HI_U32)pDstSurface->ClipRect.h;
        }
        s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, TDE_FLAG, TIMEOUT);
        if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
        {
            HIGO_ERROR("endjob failed\n", s32Ret);
            return HIGO_ERR_DEPEND_TDE;
        }
    }


    return HI_SUCCESS;
}

HI_S32  HIGO_ADP_InitBlitter(HI_VOID)
{
    HI_S32 s32Ret;
        /** tde initial */
    s32Ret = HI_TDE2_Open();
    if (HI_SUCCESS != s32Ret) /** attention if reopen need to be deal*/
    {
        HIGO_ADP_LOG(0, "open tde failed\n");
        return HI_FAILURE;
    }
    s32Ret = HI_TDE2_SetAlphaThresholdState(HI_TRUE);
    if (s32Ret != HI_SUCCESS)
    {
        HIGO_ERROR("set threshhold enable failed", s32Ret);
        return HIGO_ERR_DEPEND_TDE;
    }
    
    /** when the target color format is 1555, we needed to change the threshold value*/	
    s32Ret = HI_TDE2_SetAlphaThresholdValue(0x80);       
    if (s32Ret != HI_SUCCESS)
    {
        HIGO_ERROR("set threshhold failed", s32Ret);
        return HIGO_ERR_DEPEND_TDE;
    }

    g_HigoInitTde = HI_TRUE;
    return HI_SUCCESS;
}

HI_VOID  HIGO_ADP_DeinitBlitter(HI_VOID)
{
    HI_TDE2_Close();
    g_HigoInitTde = HI_FALSE;    
    return;
}


/**  a collection of operations about 2D module */
HI_S32 HIGO_ADP_GFXBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect, const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, const HIGO_BLTOPT2_S* pBlitOpt)
{
    HI_S32  s32Ret;

    /** check bility*/
    s32Ret = ADP_GFXBlitBility(pSrcSurface, pDstSurface, pBlitOpt);
    if (GFX_FALSE == s32Ret)
    {
        HIGO_ERROR("Operation not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }

    if (GFX_PART == s32Ret)
    {
        /** to be modify , multiple operation*/
        HIGO_ERROR("Operation not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }

    /** YUV 2 RGB*/
    if (IS_YUV_FORMAT(pSrcSurface->PixelFormat))
    {
        return ADP_CSCBlit(pSrcSurface, pSrcRect, pDstSurface, pDstRect, HI_FALSE);
    }

    /** RGB 2 RGB: attention no support clut blit*/
    return ADP_GFXBlit(pSrcSurface, pSrcRect,  pDstSurface, pDstRect, pBlitOpt, HI_FALSE);
}

HI_S32 HIGO_ADP_GFXStretchBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect, const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, const  HIGO_BLTOPT2_S* pBlitOpt)
{
    HI_S32  s32Ret;
    /** check bility*/
    s32Ret = ADP_GFXStretchBlitBility(pSrcSurface, pDstSurface, pBlitOpt);
    if (GFX_FALSE == s32Ret)
    {
        HIGO_ERROR("Operation not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }
    
    if (GFX_PART == s32Ret)
    {
        /** to be modify , multiple operation*/
        HIGO_ERROR("Operation not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }

    /** YUV 2 RGB*/
    if (IS_YUV_FORMAT(pSrcSurface->PixelFormat))
    {
        return ADP_CSCBlit(pSrcSurface, pSrcRect, pDstSurface, pDstRect, HI_TRUE);
    }
    
    /** RGB 2 RGB: attention no support clut blit*/
    return ADP_GFXBlit(pSrcSurface, pSrcRect,  pDstSurface, pDstRect, pBlitOpt, HI_TRUE);
}

HI_S32 HIGO_ADP_GFXOperate(const HIGO_SURFACE_S* pDstSurface, const GFX_OPT_TYPE_E GfxOpt, const void * pInfo,const  HIGO_BLTOPT2_S* pBlitOpt)
{
    HI_S32 s32Ret;

    s32Ret = ADP_GFXOperateBility(pDstSurface, GfxOpt, pBlitOpt);
    if (GFX_FALSE == s32Ret)
    {
        HIGO_ERROR("Operate not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }
    if (GFX_PART == s32Ret)
    {
        HIGO_ERROR("Operate not supported\n", HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }
    if (GfxOpt == GFX_OPT_FILLRECT)
    {
        return ADP_FillRect(pDstSurface,  (HIGO_OPRECT_S *)pInfo, pBlitOpt);
    }else
    {
        return HIGO_ERR_UNSUPPORTED;
    }

}
