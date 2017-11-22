/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_gfx_logo.c
Version             : Initial Draft
Author              :
Created             : 2016/01/12
Description         :
                       CNcomment: 开机logo图层操作实现源文件 CNend\n
Function List   :
History         :
Date                        Author                  Modification
2016/01/12                  y00181162               Created file
******************************************************************************/


/*********************************add include here******************************/
#include "hi_go_logo.h"
#include "hi_go_adp_layer.h"
#include "hi_go_common.h"

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/


/**********************       API realization       **************************/


/*****************************************************************************
* func            : HI_GO_CreateLayer
* description     : 创建图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_CreateLayer(HI_GO_SURFACE_S *pstLayerInfo,HI_HANDLE *pSurface)
{

    HI_HANDLE hSurface = 0;
    HI_GO_SURFACE_S *pstSurface = NULL;

    hSurface = (HI_HANDLE)HI_GFX_Malloc(sizeof(HI_GO_SURFACE_S),"layer-surface-handle");
    if(0 == hSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    memset((HI_VOID*)hSurface,0x0,sizeof(HI_GO_SURFACE_S));

    *pSurface = hSurface;

    pstSurface = (HI_GO_SURFACE_S*)hSurface;
    pstSurface->enLayerID     = pstLayerInfo->enLayerID;
    pstSurface->enPixelFormat = pstLayerInfo->enPixelFormat;
    pstSurface->u32Width[0]   = pstLayerInfo->u32Width[0];
    pstSurface->u32Height[0]  = pstLayerInfo->u32Height[0];
    pstSurface->u32Width[1]   = pstLayerInfo->u32Width[1];
    pstSurface->u32Height[1]  = pstLayerInfo->u32Height[1];

    return HI_GFX_ADP_CreateLayer(pstSurface);

}


/*****************************************************************************
* func            : HI_GO_SetLayerPos
* description     : 设置layer显示分辨率和位置信息
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_SetLayerPos(HI_HANDLE hSurface,HI_U32 u32StartX, HI_U32 u32StartY)
{
    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;
    if(NULL == pstSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    return HI_GFX_ADP_SetLayerPos(pstSurface,u32StartX,u32StartY);
}

/*****************************************************************************
* func            : HI_GO_RefreshLayer
* description     : 刷新图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_RefreshLayer(HI_HANDLE hSurface)
{
    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;

    if(NULL == pstSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    return HI_GFX_ADP_RefreshLayer(pstSurface);
}

/*****************************************************************************
* func            : HI_GO_DestroyLayer
* description     : 销毁图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_DestroyLayer(HI_HANDLE hSurface)
{
    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;

    if(NULL == pstSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    return HI_GFX_ADP_DestoryLayer(pstSurface);
}

/*****************************************************************************
* func            : HI_GO_CreateSurface
* description     : 创建surface
* in              : surface信息
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_CreateSurface(HI_U32 u32Width, HI_U32 u32Height, HIGO_PF_E enPixelFormat,HI_HANDLE *pSurface)
{
#ifdef HI_LOADER_BOOTLOADER
    /** boot loader used **/
    HI_HANDLE hSurface = 0;
    HI_U32 u32Stride   = 0;
    HI_GO_SURFACE_S *pstSurface = NULL;

    hSurface = (HI_HANDLE)HI_GFX_Malloc(sizeof(HI_GO_SURFACE_S),"memory-surface-handle");
    if(0 == hSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    memset((HI_VOID*)hSurface,0x0,sizeof(HI_GO_SURFACE_S));
    *pSurface = hSurface;

    switch(enPixelFormat){
        case HIGO_PF_8888:
            u32Stride = (u32Width * 4 + 16 - 1) & (~(16 - 1));
            break;
        case HIGO_PF_0888:
            u32Stride = (u32Width * 3 + 16 - 1) & (~(16 - 1));
            break;
        case HIGO_PF_1555:
        case HIGO_PF_565:
            u32Stride = (u32Width * 2 + 16 - 1) & (~(16 - 1));
            break;
        default:
            HI_GFX_Log();
            HI_GFX_Free((HI_CHAR*)hSurface);
            return HI_FAILURE;
    }

    pstSurface = (HI_GO_SURFACE_S*)hSurface;
    pstSurface->enPixelFormat = enPixelFormat;
    pstSurface->u32Width[0]   = u32Width;
    pstSurface->u32Height[0]  = u32Height;
    pstSurface->u32Stride[0]  = u32Stride;
    pstSurface->u32Size[0]    = u32Stride * u32Height;

    pstSurface->pPhyAddr[0] = (HI_CHAR*)HI_GFX_Malloc(pstSurface->u32Size[0],"surface-buf");
    if(NULL == pstSurface->pPhyAddr[0]){
        HI_GFX_Log();
        HI_GFX_Free((HI_CHAR*)hSurface);
        return HI_FAILURE;
    }
    pstSurface->pVirAddr[0] = pstSurface->pPhyAddr[0];
#else
    UNUSED(u32Width);
    UNUSED(u32Height);
    UNUSED(enPixelFormat);
    UNUSED(*pSurface);
#endif
    return HI_SUCCESS;
}

/*****************************************************************************
* func            : HI_GO_CreateDecSurface
* description     : 创建解码surface
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_CreateDecSurface(HI_HANDLE hSurface)
{
    HI_U32 u32YMemSize  = 0;
    HI_U32 u32UMemSize  = 0;
    HI_U32 u32VMemSize  = 0;
    HI_U32 u32TotalSize = 0;

    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;
    if(NULL == pstSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    u32YMemSize  = pstSurface->u32Size[0];
    u32UMemSize  = pstSurface->u32Size[1];
    u32VMemSize  = pstSurface->u32Size[2];
    u32TotalSize = u32YMemSize + u32UMemSize + u32VMemSize;
    if(0 == u32TotalSize){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    pstSurface->pPhyAddr[0] = (HI_CHAR*)HI_GFX_MMZ_Malloc(u32TotalSize,"decode-out-buf");
    if(NULL == pstSurface->pPhyAddr[0]){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    pstSurface->pVirAddr[0] = pstSurface->pPhyAddr[0];

    pstSurface->pPhyAddr[1] = pstSurface->pPhyAddr[0] + u32YMemSize;
    pstSurface->pVirAddr[1] = pstSurface->pVirAddr[0] + u32YMemSize;

    pstSurface->pPhyAddr[2] = pstSurface->pPhyAddr[1] + u32UMemSize;
    pstSurface->pVirAddr[2] = pstSurface->pVirAddr[1] + u32UMemSize;

#if 0
    HI_GFX_Print("\n=============================================\n");
    HI_GFX_Print("pstSurface->pPhyAddr[0]   = 0x%x\n",pstSurface->pPhyAddr[0]);
    HI_GFX_Print("pstSurface->pPhyAddr[1]   = 0x%x\n",pstSurface->pPhyAddr[1]);
    HI_GFX_Print("pstSurface->u32Stride[0]  = %d\n",pstSurface->u32Stride[0]);
    HI_GFX_Print("pstSurface->u32Height[0]  = %d\n",pstSurface->u32Height[0]);
    HI_GFX_Print("pstSurface->u32Stride[1]  = %d\n",pstSurface->u32Stride[1]);
    HI_GFX_Print("pstSurface->u32Height[1]  = %d\n",pstSurface->u32Height[1]);
    HI_GFX_Print("pstSurface->enPixelFormat = %d\n",pstSurface->enPixelFormat);
    HI_GFX_Print("u32YMemSize               = %d\n",u32YMemSize);
    HI_GFX_Print("u32TotalSize              = %d\n",u32TotalSize);
    HI_GFX_Print("=============================================\n");
#endif
    return HI_SUCCESS;

}
/*****************************************************************************
* func            : HI_GO_GetSurfaceSize
* description     : 获取surface大小
* in              : surface信息
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_GetSurfaceSize(HI_HANDLE hSurface, HI_U32* pu32Width, HI_U32* pu32Height)
{
#ifdef HI_LOADER_BOOTLOADER
    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;
    if(NULL == pstSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    if(NULL != pu32Width){
        *pu32Width = pstSurface->u32Width[0];
    }

    if (NULL != pu32Height){
        *pu32Height = pstSurface->u32Height[0];
    }
#else
    UNUSED(hSurface);
    UNUSED(*pu32Width);
    UNUSED(*pu32Height);
#endif
    return HI_SUCCESS;
}

/*****************************************************************************
* func            : HI_GO_FreeDecSurface
* description     : 释放surface
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_FreeDecSurface(HI_HANDLE hSurface)
{

    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;

    if(NULL == pstSurface){
        return HI_SUCCESS;
    }

    if(NULL != pstSurface->pPhyAddr[0]){
        HI_GFX_MMZ_Free(pstSurface->pPhyAddr[0]);
        pstSurface->pPhyAddr[0] = NULL;
    }
    if(NULL != pstSurface->pPhyAddr[1]){
        HI_GFX_MMZ_Free(pstSurface->pPhyAddr[1]);
        pstSurface->pPhyAddr[1] = NULL;
    }
    if(NULL != pstSurface->pPhyAddr[2]){
        HI_GFX_MMZ_Free(pstSurface->pPhyAddr[2]);
        pstSurface->pPhyAddr[2] = NULL;
    }

    HI_GFX_Free((HI_CHAR*)pstSurface);

    return HI_SUCCESS;
}
/*****************************************************************************
* func            : HI_GO_FreeSurface
* description     : 释放surface
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_FreeSurface(HI_HANDLE hSurface)
{
#ifdef HI_LOADER_BOOTLOADER
    HI_GO_SURFACE_S *pstSurface = (HI_GO_SURFACE_S*)hSurface;

    if(NULL == pstSurface){
        return HI_SUCCESS;
    }

    if(NULL != pstSurface->pPhyAddr[0]){
        HI_GFX_Free(pstSurface->pPhyAddr[0]);
        pstSurface->pPhyAddr[0] = NULL;
    }
    if(NULL != pstSurface->pPhyAddr[1]){
        HI_GFX_Free(pstSurface->pPhyAddr[1]);
        pstSurface->pPhyAddr[1] = NULL;
    }
    if(NULL != pstSurface->pPhyAddr[2]){
        HI_GFX_Free(pstSurface->pPhyAddr[2]);
        pstSurface->pPhyAddr[2] = NULL;
    }

    HI_GFX_Free((HI_CHAR*)pstSurface);
#else
    UNUSED(hSurface);
#endif

    return HI_SUCCESS;
}

/*****************************************************************************
* func            : HI_GO_LockSurface
* description     : 获取surface信息
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_LockSurface(HI_HANDLE hSurface, HI_PIXELDATA pData, HI_BOOL bSync)
{
#ifdef HI_LOADER_BOOTLOADER
    HI_GO_SURFACE_S *pstGfxSurface = (HI_GO_SURFACE_S*)hSurface;
    pData[0].Pitch      = pstGfxSurface->u32Stride[0];
    pData[0].pPhyData   = pstGfxSurface->pPhyAddr[0];
    switch(pstGfxSurface->enPixelFormat){
        case HIGO_PF_8888:
            pData[0].Bpp = 4;
            break;
        case HIGO_PF_0888:
            pData[0].Bpp = 3;
            break;
        case HIGO_PF_1555:
        case HIGO_PF_565:
            pData[0].Bpp = 2;
            break;
        default:
            pData[0].Bpp = 4;
            break;
    }
#else
    UNUSED(hSurface);
    UNUSED(pData);
    UNUSED(bSync);
#endif
    return HI_SUCCESS;
}
/*****************************************************************************
* func            : HI_GO_UnlockSurface
* description     : 解绑定surface信息
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_UnlockSurface(HI_HANDLE hSurface)
{
    UNUSED(hSurface);
    return HI_SUCCESS;
}
