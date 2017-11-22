/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_adp_layer.c
Version             : Initial Draft
Author              :
Created             : 2016/01/12
Description         :
                       CNcomment: 图层操作适配层 CNend\n
Function List   :
History         :
Date                        Author                  Modification
2016/01/12                  y00181162               Created file
******************************************************************************/


/*********************************add include here******************************/

#include "hi_go_common.h"
#include "hi_go_adp_layer.h"
#include "hi_go_logo.h"
#include "optm_hifb.h"
#include "hi_boot_pdm.h"

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/
extern HI_VOID OPTM_Wbc2Isr(HI_U32 u32Param0, HI_U32 u32Param1);


/**********************       API realization       **************************/


/***************************************************************************************
* func          : GFX_ADP_LAYERID_TO_GfxId
* description   : CNcomment: 获取VDP图形层ID CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static OPTM_GFX_LAYER_EN GFX_ADP_LAYERID_TO_GfxId(HI_GO_LAYER_ID_E eLayerID)
{
    if(HI_GO_LAYER_AD_0 == eLayerID)
    {
        return OPTM_GFX_LAYER_AD0;
    }
    else if(HI_GO_LAYER_HD_0 == eLayerID)
    {
        return OPTM_GFX_LAYER_HD0;
    }
    else if(HI_GO_LAYER_SD_0 == eLayerID)
    {
        return OPTM_GFX_LAYER_SD0;
    }
    else
    {
        return OPTM_GFX_LAYER_BUTT;
    }
}

/*****************************************************************************
* func            : GFX_ADP_GetDisplayInfo
* description     : 获取图层显示信息
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
static HI_S32 GFX_ADP_GetDisplayInfo(HI_GO_SURFACE_S *pstSurface)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32BufferSize = 0;
    MMZ_BUFFER_S stDisplayBuf;

    switch(pstSurface->enPixelFormat){
        case HIGO_PF_8888:
             pstSurface->u32Stride[0] = (pstSurface->u32Width[0] * 4 + 0xf) & 0xfffffff0;
             break;
        case HIGO_PF_0888:
             pstSurface->u32Stride[0] = (pstSurface->u32Width[0] * 3 + 0xf) & 0xfffffff0;
             break;
        case HIGO_PF_565:
        case HIGO_PF_1555:
             pstSurface->u32Stride[0] = (pstSurface->u32Width[0] * 2 + 0xf) & 0xfffffff0;
             break;
        default:
             break;
    }
    u32BufferSize = pstSurface->u32Stride[0] * pstSurface->u32Height[0];

    s32Ret = HI_PDM_AllocReserveMem(DISPLAY_BUFFER_HD, u32BufferSize, &stDisplayBuf.u32StartPhyAddr);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    pstSurface->pPhyAddr[0] = (HI_CHAR*)stDisplayBuf.u32StartPhyAddr;
    pstSurface->pVirAddr[0] = (HI_CHAR*)stDisplayBuf.u32StartPhyAddr;

    return HI_SUCCESS;

}

/*****************************************************************************
* func            : GFX_ADP_LayerToHifbFmt
* description     : 将layer像素格式转层图层像素格式
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
static HI_VOID GFX_ADP_LayerToHifbFmt(HIGO_PF_E SrcFmt,OPTM_GFX_PIXELFORMAT_E *DstFmt)
{
    switch(SrcFmt)
    {
        case HIGO_PF_1555:
            *DstFmt = OPTM_GFX_FMT_ARGB_1555;
            break;
        case HIGO_PF_8888:
            *DstFmt = OPTM_GFX_FMT_ARGB_8888;
            break;
        default:
            *DstFmt = OPTM_GFX_FMT_BUTT;
            break;
    }
    return;
}

/*****************************************************************************
* func            : HI_GFX_ADP_CreateLayer
* description     : 创建图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GFX_ADP_CreateLayer(HI_GO_SURFACE_S *pstGfxSurface)
{

    HI_S32 s32Ret    = HI_SUCCESS;
    OPTM_GFX_ALPHA_S stAlpha          = {0};
    OPTM_GFX_LAYER_EN      enLayerId  = OPTM_GFX_LAYER_AD0;
    OPTM_GFX_PIXELFORMAT_E enLayerFmt = OPTM_GFX_FMT_ARGB_8888;
    OPTM_GFX_MODE_EN enMode           = OPTM_GFX_MODE_HD_WBC;

    if(NULL == pstGfxSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    enLayerId = GFX_ADP_LAYERID_TO_GfxId(pstGfxSurface->enLayerID);
    if(OPTM_GFX_LAYER_BUTT == enLayerId){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    GFX_ADP_LayerToHifbFmt(pstGfxSurface->enPixelFormat, &enLayerFmt);

    /**
     **初始化参数信息
     **/
    s32Ret = GFX_ADP_GetDisplayInfo(pstGfxSurface);
    if (s32Ret != HI_SUCCESS){
           HI_GFX_Log();
        return HI_FAILURE;
    }

    OPTM_GfxInit                ();    
#ifndef CHIP_TYPE_hi3110ev500
    OPTM_GfxSetWorkMode         (OPTM_GFX_MODE_HD_WBC);
#endif
    OPTM_GfxOpenLayer           (enLayerId);
    OPTM_GfxSetLayerBitExtMode  (enLayerId, OPTM_GFX_BITEXTEND_3RD);
    OPTM_GfxSetLayerDataFmt     (enLayerId, enLayerFmt);
    OPTM_GfxSetLayerAddr        (enLayerId, (HI_U32)pstGfxSurface->pPhyAddr[0]);
    OPTM_GfxSetLayerStride      (enLayerId, pstGfxSurface->u32Stride[0]);

    stAlpha.bAlphaEnable  = HI_TRUE;
    stAlpha.bAlphaChannel = HI_FALSE;
    stAlpha.u8Alpha0      = 0;
    stAlpha.u8Alpha1      = 255;
    stAlpha.u8GlobalAlpha = 255;
    OPTM_GfxSetLayerAlpha (enLayerId, &stAlpha);

#ifndef CHIP_TYPE_hi3110ev500
    s32Ret = OPTM_GfxGetWorkMode(&enMode);
    if(OPTM_GFX_MODE_HD_WBC == enMode || HI_SUCCESS != s32Ret)
    {
        OPTM_Wbc2Isr(enLayerId, 0);
    }
#endif

    return HI_SUCCESS;

}

/*****************************************************************************
* func            : HI_GFX_ADP_SetLayerPos
* description     : 设置layer显示分辨率和位置信息
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GFX_ADP_SetLayerPos(HI_GO_SURFACE_S *pstGfxSurface,HI_U32 u32StartX, HI_U32 u32StartY)
{

    HI_S32 s32Ret = HI_SUCCESS;
    HI_RECT_S stInputRect  = {0};
    HI_RECT_S stOutputRect = {0};
    OPTM_GFX_LAYER_EN enLayerId = OPTM_GFX_LAYER_AD0;
    OPTM_GFX_MODE_EN enMode     = OPTM_GFX_MODE_HD_WBC;

    if(NULL == pstGfxSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    enLayerId = GFX_ADP_LAYERID_TO_GfxId(pstGfxSurface->enLayerID);
    if(OPTM_GFX_LAYER_BUTT == enLayerId){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    stInputRect.s32X      = 0;
    stInputRect.s32Y      = 0;
    stInputRect.s32Width  = pstGfxSurface->u32Width[0];
    stInputRect.s32Height = pstGfxSurface->u32Height[0];

    stOutputRect.s32X      = u32StartX;
    stOutputRect.s32Y      = u32StartY;
    stOutputRect.s32Width  = pstGfxSurface->u32Width[1];
    stOutputRect.s32Height = pstGfxSurface->u32Height[1];

    OPTM_GfxSetHDRect    (enLayerId, &stInputRect, &stOutputRect);
    OPTM_GfxSetLayerRect (enLayerId, &stInputRect, &stOutputRect);
    OPTM_GfxUpLayerReg   (enLayerId);

    s32Ret = OPTM_GfxGetWorkMode  (&enMode);
    if(OPTM_GFX_MODE_HD_WBC == enMode || HI_SUCCESS != s32Ret)
    {
        OPTM_Wbc2Isr(enLayerId, 0);
    }

    return HI_SUCCESS;

}

/*****************************************************************************
* func            : HI_GFX_ADP_RefreshLayer
* description     : 刷新图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GFX_ADP_RefreshLayer(HI_GO_SURFACE_S *pstGfxSurface)
{
    HI_S32 s32Ret = HI_SUCCESS;
    OPTM_GFX_LAYER_EN enLayerId = OPTM_GFX_LAYER_AD0;
    OPTM_GFX_MODE_EN enMode     = OPTM_GFX_MODE_HD_WBC;

    if(NULL == pstGfxSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    enLayerId = GFX_ADP_LAYERID_TO_GfxId(pstGfxSurface->enLayerID);
    if(OPTM_GFX_LAYER_BUTT == enLayerId){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    OPTM_GfxSetEnable  (enLayerId, HI_TRUE);
    OPTM_GfxUpLayerReg (enLayerId);


    s32Ret = OPTM_GfxGetWorkMode(&enMode);
    if(OPTM_GFX_MODE_HD_WBC == enMode || HI_SUCCESS != s32Ret)
    {
        OPTM_Wbc2Isr(enLayerId, 0);
    }

    return HI_SUCCESS;

}
/*****************************************************************************
* func            : HI_GFX_ADP_DestoryLayer
* description     : 销毁图层
* in              : 图层参数
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GFX_ADP_DestoryLayer(HI_GO_SURFACE_S *pstGfxSurface)
{
    OPTM_GFX_LAYER_EN enLayerId = OPTM_GFX_LAYER_AD0;

    if(NULL == pstGfxSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    enLayerId = GFX_ADP_LAYERID_TO_GfxId(pstGfxSurface->enLayerID);
    if(OPTM_GFX_LAYER_BUTT == enLayerId){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    OPTM_GfxCloseLayer(enLayerId);

    return HI_SUCCESS;
}
/*****************************************************************************
* func            : HI_GO_Init
* description     : logo初始化
* retval          : HI_SUCCESS
* retval          : HI_FAILURE
*****************************************************************************/
HI_S32 HI_GO_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    s32Ret = HI_GO_BLIT_Init();
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}
