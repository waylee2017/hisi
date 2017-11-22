#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <assert.h>
#include <unistd.h>

#include "hi_type.h"
#include "hi_common.h"

#include "hi_unf_disp.h"
#include "hi_go.h"
#include "hi_unf_avplay.h"
#include "hi_unf_so.h"

#include "sample_subtitle_out.h"

#define HI_FATAL_SUBT(fmt...)      HI_FATAL_PRINT(HI_ID_SUBT, fmt)
#define HI_ERR_SUBT(fmt...)        HI_ERR_PRINT(HI_ID_SUBT, fmt)
#define HI_WARN_SUBT(fmt...)       HI_WARN_PRINT(HI_ID_SUBT, fmt)
#define HI_INFO_SUBT(fmt...)       HI_INFO_PRINT(HI_ID_SUBT, fmt)

#define SUBT_OUTPUT_HANDLE (0xFE00)
#define BITWIDTH_8_BITS 8
#define BITWIDTH_32_BITS 32

static HI_HANDLE s_hLayer = HIGO_INVALID_HANDLE;
static HI_HANDLE s_hLayerSurface = HIGO_INVALID_HANDLE;
static HI_HANDLE s_hSubtSurface = HIGO_INVALID_HANDLE;
static HI_HANDLE s_hFont = HIGO_INVALID_HANDLE;

static HI_U8 changeColor256To32(HI_U8 uColor)
{
    return (HI_U8)((uColor / 8) & 0x1F);
}

static HI_S32 higoInit()
{
    HI_S32 s32Ret = 0;

    HIGO_LAYER_INFO_S stLayerInfo = {0};

    s32Ret = HI_GO_Init();

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_SUBT("failed to init higo! ret = 0x%x !\n", s32Ret);
        return HI_FAILURE;
    }

#ifdef CHIP_TYPE_hi3110ev500
    (HI_VOID)HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
#else
    (HI_VOID)HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
#endif
    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;
    stLayerInfo.PixelFormat = HIGO_PF_1555;
    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &s_hLayer);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_SUBT("failed to create the layer hd 0, ret = 0x%x !\n", s32Ret);
        goto RET;
    }

    s32Ret =  HI_GO_GetLayerSurface(s_hLayer, &s_hLayerSurface);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_SUBT("failed to get layer surface! s32Ret = 0x%x !\n", s32Ret);
        goto RET;
    }

    (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);

     s32Ret = HI_GO_CreateText("../higo/res/higo_gb2312.ubf", NULL,  &s_hFont);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_SUBT("failed to create the font:../higo/res/higo_gb2312.ubf !\n");
        goto RET;
    }

    (HI_VOID)HI_GO_SetTextColor(s_hFont, 0xffffffff);
    s32Ret = HI_GO_CreateSurface(720,576,HIGO_PF_1555,&s_hSubtSurface);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_SUBT("failed to create subt surface! s32Ret = 0x%x\n", s32Ret);
        goto RET;
    }
    (HI_VOID)HI_GO_FillRect(s_hSubtSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);

    return HI_SUCCESS;

RET:
    if (HIGO_INVALID_HANDLE != s_hSubtSurface)
    {
        (HI_VOID)HI_GO_FreeSurface(s_hSubtSurface);
        s_hSubtSurface = HIGO_INVALID_HANDLE;
    }

    if (HIGO_INVALID_HANDLE != s_hLayer)
    {
        (HI_VOID)HI_GO_DestroyLayer(s_hLayer);
        s_hLayer = HIGO_INVALID_HANDLE;
    }

    if (HIGO_INVALID_HANDLE != s_hFont)
    {
        (HI_VOID)HI_GO_DestroyText(s_hFont);
        s_hFont = HIGO_INVALID_HANDLE;
    }

    s_hLayerSurface = HIGO_INVALID_HANDLE;

    (HI_VOID)HI_GO_Deinit();

    return HI_FAILURE;
}

static HI_S32 higoDeInit()
{
    if (HIGO_INVALID_HANDLE != s_hSubtSurface)
    {
        (HI_VOID)HI_GO_FreeSurface(s_hSubtSurface);
        s_hSubtSurface = HIGO_INVALID_HANDLE;
    }

    if (HIGO_INVALID_HANDLE != s_hLayer)
    {
        (HI_VOID)HI_GO_DestroyLayer(s_hLayer);
        s_hLayer = HIGO_INVALID_HANDLE;
    }

    if (HIGO_INVALID_HANDLE != s_hFont)
    {
        (HI_VOID)HI_GO_DestroyText(s_hFont);
        s_hFont = HIGO_INVALID_HANDLE;
    }

    s_hLayerSurface = HIGO_INVALID_HANDLE;

    (HI_VOID)HI_GO_Deinit();

    return HI_FAILURE;
}

static HI_S32 ConvertRect(HI_HANDLE hSrcSurface, HI_HANDLE hDstSurface, HI_S32 x, HI_S32 y, HI_S32 w, HI_S32 h, HI_RECT *pstRect)
{
    HI_S32 s32SrcWidth = 0, s32SrcHeight = 0;
    HI_S32 s32DstWidth = 0, s32DstHeight = 0;

    (HI_VOID)HI_GO_GetSurfaceSize(hSrcSurface, &s32SrcWidth, &s32SrcHeight);
    (HI_VOID)HI_GO_GetSurfaceSize(hDstSurface, &s32DstWidth, &s32DstHeight);

    pstRect->x = (x * s32DstWidth) / s32SrcWidth;
    pstRect->y = (y * s32DstHeight) / s32SrcHeight;
    pstRect->w = (w * s32DstWidth) / s32SrcWidth;
    pstRect->h = (h * s32DstHeight) / s32SrcHeight;

    if ((pstRect->x + pstRect->w) > s32DstWidth)
    {
        pstRect->w = s32DstWidth - pstRect->x;
    }
    if ((pstRect->y + pstRect->h) > s32DstHeight)
    {
        pstRect->h = s32DstHeight - pstRect->y;
    }

    return HI_SUCCESS;
}

HI_S32 Subt_Output_OnDraw(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_RECT rect = {0, 0, 0, 0};

    HI_PIXELDATA pData;
    HI_S32 s32Width = 0, s32Height = 0;

    HIGO_BLTOPT_S stBlitOpt;

    if (0 == pstInfo->unSubtitleParam.stGfx.u32CanvasWidth || 0 == pstInfo->unSubtitleParam.stGfx.u32CanvasHeight)
    {
        return HI_SUCCESS;
    }

    HI_INFO_SUBT("display w/h is [%d][%d]\n", pstInfo->unSubtitleParam.stGfx.u32CanvasWidth,
                                                pstInfo->unSubtitleParam.stGfx.u32CanvasHeight);
    if (HIGO_INVALID_HANDLE != s_hSubtSurface)
    {
        (HI_VOID)HI_GO_LockSurface(s_hSubtSurface, pData, HI_TRUE);
        (HI_VOID)HI_GO_GetSurfaceSize(s_hSubtSurface, &s32Width, &s32Height);
        (HI_VOID)HI_GO_UnlockSurface(s_hSubtSurface);
    }

    if (s32Width != pstInfo->unSubtitleParam.stGfx.u32CanvasWidth &&
        s32Height != pstInfo->unSubtitleParam.stGfx.u32CanvasHeight)
    {
        if (HIGO_INVALID_HANDLE != s_hSubtSurface)
        {
            (HI_VOID)HI_GO_FreeSurface(s_hSubtSurface);
            s_hSubtSurface = HIGO_INVALID_HANDLE;
        }
        s32Ret = HI_GO_CreateSurface(pstInfo->unSubtitleParam.stGfx.u32CanvasWidth,pstInfo->unSubtitleParam.stGfx.u32CanvasHeight,
                                        HIGO_PF_1555,&s_hSubtSurface);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_SUBT("call HI_GO_CreateSurface function failure, s32Ret = %d\n",s32Ret);
            return HI_FAILURE;
        }
    }
    switch (pstInfo->eType)
    {
    case HI_UNF_SUBTITLE_BITMAP:
        HI_INFO_SUBT("sub title bitmap! \n");
        HI_U32 u32Index=0;
        HI_U32 i = 0, j = 0;
        HI_U32 u32PaletteIdx = 0;
        HI_U8 *pu8Surface = NULL;
        HI_RECT DstRect = {0, 0, 0, 0};


        (HI_VOID)HI_GO_LockSurface(s_hSubtSurface, pData, HI_TRUE);
        (HI_VOID)HI_GO_GetSurfaceSize(s_hSubtSurface, &s32Width, &s32Height);

        pu8Surface = (HI_U8*)pData[0].pData;

        if (NULL == pu8Surface || NULL == pstInfo->unSubtitleParam.stGfx.stPalette)
        {
            (HI_VOID)HI_GO_UnlockSurface(s_hSubtSurface);
            return HI_SUCCESS;
        }

        if (s32Width * s32Height * pData[0].Bpp < pstInfo->unSubtitleParam.stGfx.h * pstInfo->unSubtitleParam.stGfx.w * 4)
        {
            (HI_VOID)HI_GO_UnlockSurface(s_hSubtSurface);
            return HI_SUCCESS;
        }

        if(BITWIDTH_8_BITS == pstInfo->unSubtitleParam.stGfx.s32BitWidth)
        {
            for (i = 0; i < pstInfo->unSubtitleParam.stGfx.h; i++)
            {
                for (j = 0; j < pstInfo->unSubtitleParam.stGfx.w; j++)
                {
                    if (i * pstInfo->unSubtitleParam.stGfx.w + j > pstInfo->unSubtitleParam.stGfx.u32Len)
                    {
                        break;
                    }

                    u32PaletteIdx = pstInfo->unSubtitleParam.stGfx.pu8PixData[i * pstInfo->unSubtitleParam.stGfx.w + j];
                    if (u32PaletteIdx >= HI_UNF_SO_PALETTE_ENTRY)
                    {
                        break;
                    }

                    HI_U16 tmp = 0;
                    if(pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Alpha > 0)
                    {
                        tmp = 1;
                    }
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Red));   
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Green));  
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Blue)); 
                    
                    pu8Surface[i * pData[0].Pitch + 2 * j + 1] = (HI_U8)((tmp>>8) & 0x00FF);
                    pu8Surface[i * pData[0].Pitch + 2 * j + 0] = (HI_U8)(tmp & 0x00FF);
					
                    #if 0
                    pu8Surface[i * pData[0].Pitch + 4 * j + 3]
                        = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Alpha;
                    pu8Surface[i * pData[0].Pitch + 4 * j + 2]
                        = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Red;
                    pu8Surface[i * pData[0].Pitch + 4 * j + 1]
                        = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Green;
                    pu8Surface[i * pData[0].Pitch + 4 * j + 0]
                        = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Blue;
                    #endif
                }
            }
        }
        else if(BITWIDTH_32_BITS == pstInfo->unSubtitleParam.stGfx.s32BitWidth)
        {
            for (i = 0; i < pstInfo->unSubtitleParam.stGfx.h; i++)
            {
                for (j = 0; j < pstInfo->unSubtitleParam.stGfx.w; j++)
                {
                    if (i * (pstInfo->unSubtitleParam.stGfx.w) + j > (pstInfo->unSubtitleParam.stGfx.u32Len))
                    {
                        break;
                    }
					 
                    HI_U16 tmp = 0;
                    if(pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++] > 0)
                    {
                        tmp = 1;
                    }
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++]));   
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++]));  
                    tmp = ((tmp<<5) | changeColor256To32(pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++])); 
                    
                    pu8Surface[i * pData[0].Pitch + 2 * j + 1] = (HI_U8)((tmp>>8) & 0x00FF);
                    pu8Surface[i * pData[0].Pitch + 2 * j + 0] = (HI_U8)(tmp & 0x00FF);

                    #if 0
                    pu8Surface[i * pData[0].Pitch + 4 * j + 3]
                        = pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++];/*alpha*/
                    pu8Surface[i * pData[0].Pitch + 4 * j + 2]
                        = pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++];/*u8Red*/
                    pu8Surface[i * pData[0].Pitch + 4 * j + 1]
                        = pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++];/*u8Green*/
                    pu8Surface[i * pData[0].Pitch + 4 * j + 0]
                        = pstInfo->unSubtitleParam.stGfx.pu8PixData[u32Index++];/*u8Blue*/
                    #endif
                }
            }
        }

        (HI_VOID)HI_GO_UnlockSurface(s_hSubtSurface);

        rect.x = 0;
        rect.y = 0;
        rect.w = pstInfo->unSubtitleParam.stGfx.w;
        rect.h = pstInfo->unSubtitleParam.stGfx.h;
        (HI_VOID)ConvertRect(s_hSubtSurface, s_hLayerSurface, pstInfo->unSubtitleParam.stGfx.x, pstInfo->unSubtitleParam.stGfx.y,
                    pstInfo->unSubtitleParam.stGfx.w, pstInfo->unSubtitleParam.stGfx.h, &DstRect);

        memset(&stBlitOpt, 0, sizeof(HIGO_BLTOPT_S));
        stBlitOpt.EnableScale = HI_TRUE;
        (HI_VOID)HI_GO_Blit (s_hSubtSurface, &rect,
                       s_hLayerSurface, &DstRect,
                       &stBlitOpt);
        (HI_VOID)HI_GO_RefreshLayer(s_hLayer, &DstRect);
        break;

    case HI_UNF_SUBTITLE_TEXT:
        if (NULL == pstInfo->unSubtitleParam.stText.pu8Data)
        {
            return HI_FAILURE;
        }

        HI_INFO_SUBT("OUTPUT: %s \n", pstInfo->unSubtitleParam.stText.pu8Data);

        rect.x = 0;
        rect.y = 0;
        rect.w = pstInfo->unSubtitleParam.stText.w;
        rect.h = pstInfo->unSubtitleParam.stText.h;
        (HI_VOID)ConvertRect(s_hSubtSurface, s_hLayerSurface, pstInfo->unSubtitleParam.stText.x, pstInfo->unSubtitleParam.stText.y,
                        pstInfo->unSubtitleParam.stText.w, pstInfo->unSubtitleParam.stText.h, &DstRect);

        if (HIGO_INVALID_HANDLE != s_hFont && HIGO_INVALID_HANDLE != s_hLayer)
        {
            HI_CHAR* pszText = (HI_CHAR*)pstInfo->unSubtitleParam.stText.pu8Data;

            (HI_VOID)HI_GO_TextOutEx(s_hFont, s_hSubtSurface, pszText, &rect,
                HIGO_LAYOUT_WRAP | HIGO_LAYOUT_HCENTER | HIGO_LAYOUT_BOTTOM);
            memset(&stBlitOpt, 0, sizeof(HIGO_BLTOPT_S));
            stBlitOpt.EnableScale = HI_TRUE;
            (HI_VOID)HI_GO_Blit (s_hSubtSurface, &rect,
                           s_hLayerSurface, &DstRect,
                           &stBlitOpt);
            (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);
        }

        break;

    case HI_UNF_SUBTITLE_ASS:
    default:
        break;
    }

    return HI_SUCCESS;
}

HI_S32 Subt_Output_OnClear(HI_U32 u32UserData, HI_VOID *pArg)
{
    HI_UNF_SO_CLEAR_PARAM_S* pParam = (HI_UNF_SO_CLEAR_PARAM_S*)pArg;
    HI_RECT rect = {0, 0, 0, 0};
    HI_CHAR TextClear[] = "";

    HI_INFO_SUBT("CLEAR Subtitle!\n");

    (HI_VOID)ConvertRect(s_hSubtSurface, s_hLayerSurface, pParam->x, pParam->y, pParam->w, pParam->h, &rect);
    if (rect.w == 0 || rect.h == 0)
    {
        (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);
    }
    else
    {
        (HI_VOID)HI_GO_FillRect(s_hLayerSurface, &rect, 0x00000000, HIGO_COMPOPT_NONE);
    }

    if (HIGO_INVALID_HANDLE != s_hFont)
    {
        (HI_VOID)HI_GO_TextOutEx(s_hFont, s_hLayerSurface, TextClear, &rect,
            HIGO_LAYOUT_WRAP | HIGO_LAYOUT_HCENTER | HIGO_LAYOUT_BOTTOM);
    }
    (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);

    return HI_SUCCESS;
}

HI_S32 Subt_Output_Init(HI_HANDLE* phOut)
{
    if (HIGO_INVALID_HANDLE == s_hLayerSurface)
    {
        (HI_VOID)higoInit();
    }

    *phOut = SUBT_OUTPUT_HANDLE;

    return HI_SUCCESS;
}

HI_S32 Subt_Output_DeInit(HI_HANDLE hOut)
{
    if (HIGO_INVALID_HANDLE != s_hLayerSurface)
    {
        (HI_VOID)higoDeInit();
    }

    return HI_SUCCESS;
}


