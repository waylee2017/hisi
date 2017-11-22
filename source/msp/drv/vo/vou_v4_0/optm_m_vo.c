























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

******************************************************************************
  File Name             :   optm_m_disp.c
  Version               :   Initial Draft
  Author                :   Hisilicon multimedia software group
  Created               :
  Description           :
  History               :
  1.Date                :
    Author              :
    Modification    :   Created file

******************************************************************************/


#include "optm_m_vo.h"
#include "optm_vo.h"
#include "optm_debug.h"
#include "drv_vdec_ext.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

typedef struct tagWBCInputData
{
    HI_U32 u32HDCropWidth;
    HI_U32 u32HDCropHeight;
    HI_BOOL bProgressive;
    HI_U32 u32NextHDSrcField;  /* 0 Top, 1 Bottom, 2 Frame */
}WBC_INPUT_DATA_S;

extern MMZ_BUFFER_S   g_DispRegBuf;
extern OPTM_VZME_COEF_S g_stVzmeCoef;
WBC_INPUT_DATA_S g_stWBCInputData = {1920, 1080, HI_FALSE, 2};


/* do basic revise for rect */
HI_VOID VoReviseRect1(HI_RECT_S *pstRect)
{
    pstRect->s32X &= 0xfffffffeL;
    pstRect->s32Y &= 0xfffffffcL;
    pstRect->s32Width  &= 0xfffffffeL;
    pstRect->s32Height &= 0xfffffffcL;
}

/* based on base rect, do basic revise for rect */
HI_VOID VoReviseRect2(HI_RECT_S *pstBaseRect, HI_RECT_S *pstDstRect)
{
    if (pstDstRect->s32X > (pstBaseRect->s32Width - OPTM_RECT_MIN_W))
    {
        pstDstRect->s32X = pstBaseRect->s32Width - OPTM_RECT_MIN_W;
    }
    if ( (pstDstRect->s32X+pstDstRect->s32Width) >= pstBaseRect->s32Width)
    {
        pstDstRect->s32Width = pstBaseRect->s32Width - pstDstRect->s32X;
    }

    if (pstDstRect->s32Y > (pstBaseRect->s32Height- OPTM_RECT_MIN_H))
    {
        pstDstRect->s32Y = pstBaseRect->s32Height - OPTM_RECT_MIN_H;
    }
    if ( (pstDstRect->s32Y+pstDstRect->s32Height) >= pstBaseRect->s32Height)
    {
        pstDstRect->s32Height = pstBaseRect->s32Height - pstDstRect->s32Y;
    }
}

HI_VOID VoReviseOutRect(HI_RECT_S *pstDispRect, HI_RECT_S *pstDstRect, HI_RECT_S *pstSrcRect)
{
    HI_S32 width, height, x, y;
    HI_BOOL Outflag = HI_FALSE;
    if (pstDstRect->s32X <= 0)
    {
        width = pstDstRect->s32Width + pstDstRect->s32X;
        x = 0;
        if(width > pstDispRect->s32Width)
            width = pstDispRect->s32Width;
        else if (width <= 0)
            Outflag = HI_TRUE;
        pstSrcRect->s32X = (x - pstDstRect->s32X) * pstSrcRect->s32Width / pstDstRect->s32Width ;
        pstSrcRect->s32Width = (width * pstSrcRect->s32Width) / pstDstRect->s32Width;
    }
    else if (pstDstRect->s32X >= pstDispRect->s32Width)
    {
        width = 0;
        x = 0;
        Outflag = HI_TRUE;
    }
    else if (pstDstRect->s32X + pstDstRect->s32Width <= pstDispRect->s32Width)
    {
        width = pstDstRect->s32Width;
        x = pstDstRect->s32X;
    }
    else
    {
        width = pstDispRect->s32Width - pstDstRect->s32X ;
        x = pstDstRect->s32X;
        pstSrcRect->s32Width = (width * pstSrcRect->s32Width) / pstDstRect->s32Width;
    }

    if(pstDstRect->s32Y <= 0)
    {
        y = 0;
        height = pstDstRect->s32Height + pstDstRect->s32Y;
        if(height > pstDispRect->s32Height)
            height = pstDispRect->s32Height;
        else if (height <= 0)
            Outflag = HI_TRUE;
        pstSrcRect->s32Y = (y - pstDstRect->s32Y) * pstSrcRect->s32Height / pstDstRect->s32Height;
        pstSrcRect->s32Height = (height * pstSrcRect->s32Height) / pstDstRect->s32Height;

        if(pstSrcRect->s32Height == 0)
            pstSrcRect->s32Height = 8;
    }
    else if (pstDstRect->s32Y >= pstDispRect->s32Height)
    {
        height = 0;
        y = 0;
        Outflag = HI_TRUE;
    }
    else if ((pstDstRect->s32Y + pstDstRect->s32Height) <= pstDispRect->s32Height)
    {
        height = pstDstRect->s32Height;
        y = pstDstRect->s32Y;
    }
    else
    {
        height = pstDispRect->s32Height - pstDstRect->s32Y;
        y = pstDstRect->s32Y;
        pstSrcRect->s32Height = (height * pstSrcRect->s32Height) / pstDstRect->s32Height;
    }

    pstDstRect->s32X = x;
    pstDstRect->s32Y = y;
    pstDstRect->s32Height = height;
    pstDstRect->s32Width = width;

    if (HI_TRUE == Outflag)
        return;

    if (pstDstRect->s32Height <= 32 )
    {
        pstDstRect->s32Height = 32;
    }

    if (pstSrcRect->s32Height <= 32)
        pstSrcRect->s32Height = 32;

    if (pstDstRect->s32Width <= 32 )
    {
        pstDstRect->s32Width = 32;
    }

    if (pstSrcRect->s32Width <= 32)
        pstSrcRect->s32Width = 32;
}
/**************************************************************
 *                     VO MODULE                              *
 **************************************************************/

/*
   HAL_DISP_LAYER_VIDEO1 = 0,
   HAL_DISP_LAYER_VIDEO2,
   HAL_DISP_LAYER_VIDEO3,
   0, VHD; 1, VAD; 2, VSD
 */

static OPTM_M_VO_S s_stVoMod[OPTM_M_VO_MAX_LAYER];

typedef struct tagOPTM_M_VM_S
{
    HI_BOOL bOnlineFlag ;   /* VM online flag */

    HI_BOOL bVmEnableState; /* VM work status  */

    HI_BOOL bVhdEnableState;
    HI_BOOL bVadEnableState;
    HI_BOOL bVedEnableState;
    HAL_DISP_LAYER_E  enPri2Layer;   /* highest-priority layer */
    HAL_DISP_LAYER_E  enPri1Layer;   /* high-priority layer */
    HAL_DISP_LAYER_E  enPri0Layer;   /* low-priority layer  */
}OPTM_M_VM_S;

static OPTM_M_VM_S s_stVmDevie;

HI_VOID OPTM_M_SetVmLayer(HAL_DISP_LAYER_E  enPri2Layer, HAL_DISP_LAYER_E  enPri1Layer, HAL_DISP_LAYER_E  enPri0Layer)
{
    s_stVmDevie.enPri2Layer = enPri2Layer;
    s_stVmDevie.enPri1Layer = enPri1Layer;
    s_stVmDevie.enPri0Layer = enPri0Layer;
}

static OPTM_M_VO_S *OPTM_M_VO_GetHandle(HAL_DISP_LAYER_E enLayer)
{
    return &(s_stVoMod[(HI_S32)enLayer]);
}

HI_S32 OPTM_M_VO_InitAttr(HAL_DISP_LAYER_E enLayer)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);
    memset((HI_U8 *)pstVo, 0, sizeof(OPTM_M_VO_S));

    pstVo->bEnable = HI_FALSE;
    pstVo->enLayer = enLayer; //

    pstVo->stAttr.u32Alpha = 255;

    pstVo->stAttr.u32BgcAlpha   = 255;
    pstVo->stAttr.stBgc.u8Red   = 0;
    pstVo->stAttr.stBgc.u8Green = 0;
    pstVo->stAttr.stBgc.u8Blue  = 0;

    pstVo->stAttr.u32Bright     = 50;
    pstVo->stAttr.u32Contrast   = 50;
    pstVo->stAttr.u32Saturation = 50;
    pstVo->stAttr.u32Hue        = 50;

    pstVo->stAttr.u32Kr        = 50;
    pstVo->stAttr.u32Kg        = 50;
    pstVo->stAttr.u32Kb        = 50;


    pstVo->stAttr.enIFIRMode = HAL_IFIRMODE_6TAPFIR;
    pstVo->stAttr.bOffLine = HI_FALSE;

    pstVo->stAttr.bMute = HI_FALSE;
    pstVo->stAttr.bCscEnable = HI_TRUE;

    pstVo->stCap.bSharpenFunc = HI_FALSE;

    pstVo->s32AccRatio = 50;
    if (HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        pstVo->stAttr.enSrcCs = OPTM_CS_eXvYCC_709; /* color space transformation mode */
        pstVo->stAttr.enDstCs = OPTM_CS_eXvYCC_709; /* color space transformation mode */

        pstVo->stCap.bDieFunc = HI_TRUE;
        pstVo->stCap.bZmeFunc = HI_TRUE;
        pstVo->stCap.bAcmFunc = HI_TRUE;
        pstVo->stCap.bAccFunc = HI_TRUE;

        pstVo->stCap.bSharpenFunc = HI_TRUE;
        pstVo->alg_controll_info.s16LTICTIStrengthRatio = 8;
        pstVo->alg_controll_info.s16LTICTIStrengthRatio_hd = 0;


        pstVo->stAttr.u32Saturation = OPTM_VO_SATURATION_NORMAL;
    }
    else
    {
        pstVo->stAttr.enSrcCs = OPTM_CS_eXvYCC_601; /* color space transformation mode */
        pstVo->stAttr.enDstCs = OPTM_CS_eXvYCC_601; /* color space transformation mode */
        pstVo->stCap.bDieFunc = HI_FALSE;
        pstVo->stCap.bZmeFunc = HI_TRUE;
        pstVo->stCap.bAcmFunc = HI_FALSE;
        pstVo->stCap.bAccFunc = HI_FALSE;

        pstVo->stAttr.u32Saturation = OPTM_VO_SATURATION_NORMAL;
    }

    if (pstVo->stCap.bSharpenFunc == HI_TRUE)
    {
        pstVo->bSharpenEnable = HI_TRUE;
        pstVo->bSharpenMask   = HI_FALSE;
    }

    if (pstVo->stCap.bAccFunc == HI_TRUE)
    {
        pstVo->bAccEnable = HI_TRUE;
        pstVo->bAccMasked = HI_FALSE;
    }


    OPTM_AA_InitAcm(enLayer, &(pstVo->stAcmInfo));

    OPTM_ALG_TICoefInit(enLayer, HAL_DISP_TIMODE_ALL);

    if (pstVo->stCap.bAcmFunc == HI_TRUE)
    {
        pstVo->bAcmEnable = HI_FALSE;
        pstVo->bAcmMasked = HI_FALSE;
    }

    OPTM_M_VO_SetAttr(enLayer, &(pstVo->stAttr));

#ifdef OPTM_VIDEO_MIXER_ENABLE

    /* initialize VM */
    if(HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        s_stVmDevie.bOnlineFlag     = HI_TRUE;
        s_stVmDevie.bVadEnableState = HI_FALSE;
        s_stVmDevie.bVhdEnableState = HI_FALSE;
        s_stVmDevie.bVedEnableState = HI_FALSE;
        s_stVmDevie.bVmEnableState  = HI_FALSE;
        s_stVmDevie.enPri1Layer     = HAL_DISP_LAYER_VIDEO1;
        s_stVmDevie.enPri0Layer     = HAL_DISP_LAYER_VIDEO1;
        s_stVmDevie.enPri2Layer     = HAL_DISP_LAYER_VIDEO1;
    }
#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_GetAttr(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_ATTR_S *pstAttr)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    memcpy(&(pstVo->stAttr.Sharpen_info), &(pstVo->alg_controll_info),  sizeof(pstVo->alg_controll_info));
    pstVo->stAttr.s32AccRatio = pstVo->s32AccRatio;
    *pstAttr = pstVo->stAttr;

    return HI_SUCCESS;
}

#ifdef HI_DISP_ACC_SUPPORT
HI_S32 OPTM_M_UpdateACC(HAL_DISP_LAYER_E enLayer)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    OPTM_AA_AccUpdateLayer(enLayer, pstVo->s32AccRatio);

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_VO_SetAttr(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_ATTR_S *pstAttr)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr = *pstAttr;

    OPTM_M_VO_SetAlpha(enLayer, pstAttr->u32Alpha);
    OPTM_M_VO_SetBgc(enLayer, &(pstAttr->stBgc));
    OPTM_M_VO_SetBgcAlpha(enLayer, pstAttr->u32BgcAlpha);

    /* color space transformation mode */
    OPTM_M_VO_SetBright(enLayer, pstAttr->u32Bright);
    OPTM_M_VO_SetContrast(enLayer, pstAttr->u32Contrast);
    OPTM_M_VO_SetSaturation(enLayer, pstAttr->u32Saturation);
    OPTM_M_VO_SetHue(enLayer, pstAttr->u32Hue);
    OPTM_M_VO_SetCscEnable(enLayer, pstAttr->bCscEnable);

    OPTM_M_VO_SetFirMode(enLayer, pstAttr->enIFIRMode);

    OPTM_M_VO_SetMute(enLayer, pstAttr->bMute);
    OPTM_M_VO_SetOffLine(enLayer, pstAttr->bOffLine);

#ifdef HI_DISP_ACC_SUPPORT
    OPTM_AA_AccInitLayer(enLayer, &(pstVo->stAcc));
    if (pstVo->stCap.bAccFunc == HI_TRUE)
    {
        //DEBUG_PRINTK("pstVo->stCap.bAccFunc id= %d, en=%d\n", enLayer, pstVo->bAcmEnable);
        OPTM_M_VO_SetAccEnable(enLayer, pstVo->bAccEnable);
    }

    (HI_VOID)OPTM_AA_AccUpdateLayer(enLayer, pstVo->s32AccRatio);
#endif

    if (pstVo->stCap.bAcmFunc == HI_TRUE)
    {
        //DEBUG_PRINTK("pstVo->stCap.bAcmFunc id= %d, en=%d\n", enLayer, pstVo->bAcmEnable);
        OPTM_M_VO_SetAcmEnable(enLayer, pstVo->bAcmEnable);
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;
//  HI_U32 vn1, vn2;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->bEnable = bEnable;

    if ( (HAL_DISP_LAYER_VIDEO1 == enLayer)
            && (pstVo->stAttr.bOffLine == HI_TRUE))
    {
        HAL_DISP_EnableLayer(enLayer, bEnable);
        Vou_SetWbcEnable(HAL_DISP_LAYER_WBC1, bEnable);
    }
    else
    {
        HAL_DISP_EnableLayer(enLayer, bEnable);

        /* update VHD REG */
        HAL_DISP_SetRegUpNoRatio(enLayer);
    }

#ifdef OPTM_VIDEO_MIXER_ENABLE

    /* set VM work status, in user operation of VHD/VAD */
    if(  (HAL_DISP_LAYER_VIDEO1 == enLayer))
    {

        if(HAL_DISP_LAYER_VIDEO1 == enLayer)
        {
            s_stVmDevie.bVhdEnableState = bEnable;
        }


        if(HI_TRUE == s_stVmDevie.bOnlineFlag)
        {
                if ((s_stVmDevie.bVedEnableState == HI_FALSE)
                        && (s_stVmDevie.bVadEnableState == HI_FALSE)
                        && (s_stVmDevie.bVhdEnableState == HI_FALSE))
                {
                    s_stVmDevie.bVmEnableState = HI_FALSE;
                }
                else
                {
                    s_stVmDevie.bVmEnableState = HI_TRUE;
                }

                OPTM_HAL_SetVideoMixerPrio(s_stVmDevie.enPri2Layer, s_stVmDevie.enPri1Layer, s_stVmDevie.enPri0Layer);
                Vou_SetCbmMixerVideoEn((HI_U32)s_stVmDevie.bVmEnableState);

        }

    }
#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetDieEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stCap.bDieFunc = bEnable;

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_GetCap(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_CAP_S *pstCap)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    *pstCap = pstVo->stCap;

    return HI_SUCCESS;
}

#ifdef HI_DISP_ACC_SUPPORT
HI_S32 OPTM_M_VO_SetCapAcc(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);
    pstVo->bAccEnable     = bEnable;
    OPTM_AA_AccSetLayerEnable(&(pstVo->stAcc), bEnable);

    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_VO_SetCapAcm(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->bAcmEnable     = bEnable;
    OPTM_AA_SetAcmEnable(&(pstVo->stAcmInfo), bEnable);

    return HI_SUCCESS;
}


HI_S32 OPTM_M_VO_SetCapZme(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stCap.bZmeFunc = bEnable;

    if ( (HAL_DISP_LAYER_VIDEO2 == enLayer)
            &&(HI_FALSE == bEnable))
    {
        HAL_SetZmeEnable(enLayer, HAL_DISP_ZMEMODE_ALL, 0);
    }

    return HI_SUCCESS;
}


HI_S32 OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_E enLayer, HI_U32 u32Alpha)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32Alpha = u32Alpha;
    Vou_SetLayerGalpha(enLayer, (HI_U8)(u32Alpha));

    return HI_SUCCESS;
}
HI_S32 OPTM_M_VO_SetBgc(HAL_DISP_LAYER_E enLayer, HI_UNF_DISP_BG_COLOR_S *pstBgc)
{
    OPTM_M_VO_S *pstVo;
    HI_UNF_YCBCR_COLOR_S stYuvBgc;
    HAL_DISP_BKCOLOR_S stBkg;
    OPTM_CS_E enSrcCs=OPTM_CS_eUnknown, enDstCs;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.stBgc = *pstBgc;

    if((enLayer == HAL_DISP_LAYER_VIDEO1) )
    {
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DHD, &enSrcCs, &enDstCs);
    }else{
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DSD, &enSrcCs, &enDstCs);
    }

    if (OPTM_CS_eRGB == enSrcCs)
    {
        stYuvBgc.u8Y     = pstBgc->u8Red;
        stYuvBgc.u8Cb = pstBgc->u8Green;
        stYuvBgc.u8Cr   = pstBgc->u8Blue;
    } else{
        OPTM_ALG_API_Rgb2Yuv(pstBgc, &stYuvBgc);
    }

    stBkg.u8Bkg_a  = (HI_U8)(pstVo->stAttr.u32BgcAlpha);
    stBkg.u8Bkg_y  = stYuvBgc.u8Y;
    stBkg.u8Bkg_cb = stYuvBgc.u8Cb;
    stBkg.u8Bkg_cr = stYuvBgc.u8Cr;
    Vou_SetLayerBkg(enLayer, stBkg);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_E enLayer, HI_U32 u32BgcAlpha)
{
    OPTM_M_VO_S *pstVo;
    HI_UNF_YCBCR_COLOR_S stYuvBgc;
    HAL_DISP_BKCOLOR_S stBkg;
    OPTM_CS_E enSrcCs=OPTM_CS_eUnknown, enDstCs;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32BgcAlpha = u32BgcAlpha;


    if((enLayer == HAL_DISP_LAYER_VIDEO1))
    {
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DHD, &enSrcCs, &enDstCs);
    }else{
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DSD, &enSrcCs, &enDstCs);
    }

    if (OPTM_CS_eRGB == enSrcCs)
    {
        stYuvBgc.u8Y     = pstVo->stAttr.stBgc.u8Red;
        stYuvBgc.u8Cb = pstVo->stAttr.stBgc.u8Green;
        stYuvBgc.u8Cr  = pstVo->stAttr.stBgc.u8Blue;
    } else{
        OPTM_ALG_API_Rgb2Yuv(&(pstVo->stAttr.stBgc), &stYuvBgc);
    }

    stBkg.u8Bkg_a  = (HI_U8)(u32BgcAlpha);
    stBkg.u8Bkg_y  = stYuvBgc.u8Y;
    stBkg.u8Bkg_cb = stYuvBgc.u8Cb;
    stBkg.u8Bkg_cr = stYuvBgc.u8Cr;
    Vou_SetLayerBkg(enLayer, stBkg);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetCscEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.bCscEnable = bEnable;

    //TODO: set csc enable
    OPTM_HAL_SetLayerCsc(enLayer, bEnable);

    return HI_SUCCESS;
}

/* color space transformation */
HI_S32 OPTM_M_VO_SetCscMode(HAL_DISP_LAYER_E enLayer, OPTM_CS_E enSrcCs, OPTM_CS_E enDstCs)
{
    OPTM_M_VO_S *pstVo;
    IntfCscDcCoef_S stCscDcCoef;
    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.enSrcCs= enSrcCs;
    pstVo->stAttr.enDstCs= enDstCs;

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Bright,
            pstVo->stAttr.u32Contrast,
            &stCscDcCoef);
    HAL_Layer_SetCscDcCoef(enLayer, &stCscDcCoef);

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Saturation,
            pstVo->stAttr.u32Contrast,
            pstVo->stAttr.u32Hue,
            pstVo->stAttr.u32Kr,
            pstVo->stAttr.u32Kg,
            pstVo->stAttr.u32Kb,
            &stCSCCoef);

    HAL_Layer_SetCscCoef(enLayer, &stCSCCoef);

    return HI_SUCCESS;
}

HI_VOID OPTM_M_VO_GetCscMode(HAL_DISP_LAYER_E enLayer, OPTM_CS_E *penSrcCs, OPTM_CS_E *penDstCs)
{
    OPTM_M_VO_S *pstVo;
    OPTM_CS_E  enDispSrcCSC,enDispDstCSC;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    *penSrcCs = pstVo->stAttr.enSrcCs;

    if ((HAL_DISP_LAYER_VIDEO1 == enLayer) ||(HAL_DISP_LAYER_VIDEO2 == enLayer))
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DHD, &enDispSrcCSC, &enDispDstCSC);
    else
        OPTM_M_GetDispCscMode(HAL_DISP_CHANNEL_DSD, &enDispSrcCSC, &enDispDstCSC);
    pstVo->stAttr.enDstCs = enDispDstCSC;

    *penDstCs = pstVo->stAttr.enDstCs;

    return;
}


HI_S32 OPTM_M_VO_SetBright(HAL_DISP_LAYER_E enLayer, HI_U32 u32Bright)
{
    OPTM_M_VO_S *pstVo;
    IntfCscDcCoef_S stCscDcCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32Bright = u32Bright;

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Bright,
            pstVo->stAttr.u32Contrast,
            &stCscDcCoef);

    HAL_Layer_SetCscDcCoef(enLayer, &stCscDcCoef);

    return HI_SUCCESS;
}
HI_S32 OPTM_M_VO_SetContrast(HAL_DISP_LAYER_E enLayer, HI_U32 u32Contrast)
{
    OPTM_M_VO_S *pstVo;
    IntfCscDcCoef_S stCscDcCoef;
    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32Contrast = u32Contrast;

    /* calculate DC component */
    OPTM_ALG_API_CalcCscDc(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Bright,
            pstVo->stAttr.u32Contrast,
            &stCscDcCoef);
    HAL_Layer_SetCscDcCoef(enLayer, &stCscDcCoef);

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Saturation,
            pstVo->stAttr.u32Contrast,
            pstVo->stAttr.u32Hue,
            pstVo->stAttr.u32Kr,
            pstVo->stAttr.u32Kg,
            pstVo->stAttr.u32Kb,
            &stCSCCoef);

    HAL_Layer_SetCscCoef(enLayer, &stCSCCoef);

    return HI_SUCCESS;
}
HI_S32 OPTM_M_VO_SetSaturation(HAL_DISP_LAYER_E enLayer, HI_U32 u32Saturation)
{
    OPTM_M_VO_S *pstVo;
    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32Saturation = u32Saturation;

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Saturation,
            pstVo->stAttr.u32Contrast,
            pstVo->stAttr.u32Hue,
            pstVo->stAttr.u32Kr,
            pstVo->stAttr.u32Kg,
            pstVo->stAttr.u32Kb,
            &stCSCCoef);

    HAL_Layer_SetCscCoef(enLayer, &stCSCCoef);

    return HI_SUCCESS;
}
HI_S32 OPTM_M_VO_SetHue(HAL_DISP_LAYER_E enLayer, HI_U32 u32Hue)
{
    OPTM_M_VO_S *pstVo;
    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.u32Hue = u32Hue;

    /* calculate CSC coefficients */
    OPTM_ALG_API_CalcChroma(pstVo->stAttr.enSrcCs,
            pstVo->stAttr.enDstCs,
            pstVo->stAttr.u32Saturation,
            pstVo->stAttr.u32Contrast,
            pstVo->stAttr.u32Hue,
            pstVo->stAttr.u32Kr,
            pstVo->stAttr.u32Kg,
            pstVo->stAttr.u32Kb,
            &stCSCCoef);

    HAL_Layer_SetCscCoef(enLayer, &stCSCCoef);

    return HI_SUCCESS;
}

#ifdef HI_DISP_ACC_SUPPORT
HI_S32 OPTM_M_VO_ResetAcc(HAL_DISP_LAYER_E enLayer)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);
    if (pstVo->stCap.bAccFunc == HI_TRUE)
    {
        OPTM_AA_AccResetLayer(&(pstVo->stAcc));
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetAccEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bAccEnable)
{
    OPTM_M_VO_S *pstVo;
    //    IntfCscCoef_S stCSCCoef;


    pstVo = OPTM_M_VO_GetHandle(enLayer);

    if ((pstVo->stCap.bAccFunc == HI_TRUE) && (pstVo->bAccMasked != HI_TRUE))
    {
            //OPTM_AA_SetAccEnable(enLayer, bAccEnable);
        OPTM_AA_AccSetLayerEnable(&(pstVo->stAcc), bAccEnable);
        pstVo->bAccEnable = bAccEnable;
    }
    else
    {
        OPTM_AA_AccSetLayerEnable(&(pstVo->stAcc), HI_FALSE);
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetAccMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked)
{
    OPTM_M_VO_S *pstVo;
    pstVo = OPTM_M_VO_GetHandle(enLayer);
    pstVo->bAccMasked = bMasked;
    return HI_SUCCESS;
}
#endif

HI_S32 OPTM_M_VO_SetAcmEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bAcmEnable)
{
    OPTM_M_VO_S *pstVo;
    //    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);
    if ((pstVo->stCap.bAcmFunc == HI_TRUE ) && (pstVo->bAcmMasked != HI_TRUE))
    {

        OPTM_AA_SetAcmEnable(&(pstVo->stAcmInfo), bAcmEnable);

        pstVo->bAcmEnable = bAcmEnable;
    }
    else
    {
        OPTM_AA_SetAcmEnable(&(pstVo->stAcmInfo), HI_FALSE);
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetAcmMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked)
{

    OPTM_M_VO_S *pstVo;
    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->bAcmMasked = bMasked;

    return HI_SUCCESS;
}
HI_S32 OPTM_M_VO_SetSharpenEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bSharpenEnable)
{
    OPTM_M_VO_S *pstVo;


    pstVo = OPTM_M_VO_GetHandle(enLayer);

    if ((pstVo->stCap.bSharpenFunc== HI_TRUE) && (pstVo->bSharpenMask != HI_TRUE))
    {
        pstVo->bSharpenEnable= bSharpenEnable;
    }
    else
    {
        pstVo->bSharpenEnable= HI_FALSE;
    }

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetSharpenMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked)
{
    OPTM_M_VO_S *pstVo;
    pstVo = OPTM_M_VO_GetHandle(enLayer);
    pstVo->bSharpenMask = bMasked;
    return HI_SUCCESS;
}




HI_S32 OPTM_M_VO_SetShareEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;
    //    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);
    pstVo->bShareEnable = bEnable;

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_GetShareInfo(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_SHARE_S *pstShareInfo)
{
    OPTM_M_VO_S *pstVo;
    //    IntfCscCoef_S stCSCCoef;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    *pstShareInfo = pstVo->stShareInfo;

    return HI_SUCCESS;
}


HI_S32 OPTM_M_VO_SetFirMode(HAL_DISP_LAYER_E enLayer, HAL_IFIRMODE_E enIFIRMode)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.enIFIRMode = enIFIRMode;
    Vou_SetIfirMode(enLayer, enIFIRMode);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetMute(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    pstVo->stAttr.bMute = bEnable;
    HAL_DISP_MuteEnable(enLayer, bEnable);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_VO_SetOffLine(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    OPTM_M_VO_S *pstVo;

    if (HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        pstVo = &(s_stVoMod[(HI_S32)enLayer]);
        pstVo->stAttr.bOffLine = bEnable;

        if (bEnable == HI_TRUE)
        {
            Vou_SetWbcMd(HAL_WBC_RESOSEL_OFL);

            Vou_SetRdBusId(1);

#ifdef OPTM_VIDEO_MIXER_ENABLE
            s_stVmDevie.bOnlineFlag     = HI_FALSE;
#endif
        }
        else
        {
            Vou_SetWbcMd(HAL_WBC_RESOSEL_ONL);

            Vou_SetRdBusId(0);

#ifdef OPTM_VIDEO_MIXER_ENABLE
            s_stVmDevie.bOnlineFlag     = HI_TRUE;
#endif
        }
    }

    return HI_SUCCESS;
}

#if 0
/* flag: 0, T; 1, B; 2, Frame */
HI_S32 OPTM_M_VO_SetConfigZme(HAL_DISP_LAYER_E enLayer, HI_U32 u32DispFlag)
{
    OPTM_M_VO_S *pstVo;

    pstVo = &(s_stVoMod[(HI_S32)enLayer]);

    return HI_SUCCESS;
}
#endif

/**************************************************************
 *                     WIN MODULE                             *
 **************************************************************/
#ifdef PLAYER_ASPECT
// Equal to 1, for calc h_ratio and v_ratio
#define OPTM_D_AA_RATIO_ONE_AT_15BIT 32768

// Equal to 1, for calc frame aspectratio
#define OPTM_D_AA_RATIO_FRAME_RATIO_FIXED_POINT 4096

HI_S32 OPTM_AA_RatioProcess(HI_RECT_S *pInWnd, HI_UNF_ASPECT_RATIO_E enInRatio,
        HI_RECT_S *pOutWnd, HI_UNF_ASPECT_RATIO_E enOutRatio,
        HI_UNF_ASPECT_CVRS_E enCvrsMode, HI_RECT_S *pScreen)
{
    HI_U32 l_Height, l_Width;
    //    HI_U32 l_ClipHeight, l_ClipWidth;
    HI_S32 wpp, hpp;

    /*useless to deal with.*/
    /*CNcomment:不需要处理 */
    if (HI_UNF_ASPECT_RATIO_FULL == enOutRatio)
    {
        //DEBUG_PRINTK("1");
        return HI_SUCCESS;
    }

    if (HI_UNF_ASPECT_RATIO_4TO3 == enOutRatio)
    {
        // outrect is 4 to 3
        wpp = 4;
        hpp = 3;
        //DEBUG_PRINTK("2");
    }
    else if (HI_UNF_ASPECT_RATIO_16TO9 == enOutRatio)
    {
        // outrect is 16 to 9
        wpp = 16;
        hpp = 9;
    }
    else if (HI_UNF_ASPECT_RATIO_SQUARE == enOutRatio)
    {
        // outrect is 1 to 1
        wpp = 1;
        hpp = 1;
    }
    else if (HI_UNF_ASPECT_RATIO_14TO9 == enOutRatio)
    {
        // outrect is 14 to 9
        wpp = 14;
        hpp = 9;
    }
    else if (HI_UNF_ASPECT_RATIO_221TO1 == enOutRatio)
    {
        // outrect is 2.21 to 1
        wpp = 221;
        hpp = 100;
    }
    else
    {
        // image's width and height are not always the output aspectratio,
        // so here we need calc output aspect use image aspectratio
        switch(enInRatio)
        {
            case HI_UNF_ASPECT_RATIO_4TO3:
                {
                    wpp = (4*pInWnd->s32Height) / 3;
                    hpp = pInWnd->s32Height;
                    break;
                }
            case HI_UNF_ASPECT_RATIO_16TO9:
                {
                    wpp = (16*pInWnd->s32Height) / 9;
                    hpp = pInWnd->s32Height;
                    break;
                }
            case HI_UNF_ASPECT_RATIO_SQUARE:
                {
                    wpp = pInWnd->s32Width;
                    hpp = pInWnd->s32Height;
                    break;
                }
            case HI_UNF_ASPECT_RATIO_14TO9:
                {
                    wpp = (14*pInWnd->s32Height) / 9;
                    hpp = pInWnd->s32Height;
                    break;
                }
            case HI_UNF_ASPECT_RATIO_221TO1:
                {
                    wpp = (221*pInWnd->s32Height) / 100;
                    hpp = pInWnd->s32Height;
                    break;
                }
            case HI_UNF_ASPECT_RATIO_235TO1:
                {
                    wpp = (235*pInWnd->s32Height) / 100;
                    hpp = pInWnd->s32Height;
                    break;
                }
            default:
                {
                    wpp = pInWnd->s32Width;
                    hpp = pInWnd->s32Height;
                }
        }
        //DEBUG_PRINTK("4");
    }

    // calc temp height with out width for comparing with out height
    l_Height = (pOutWnd->s32Width * hpp) / wpp;

    if (l_Height >= pOutWnd->s32Height)
    {
        // if temp height is too big, the out height is accepted
        l_Width = (pOutWnd->s32Height * wpp / hpp) & 0xfffffffeul;
        pOutWnd->s32X = (pOutWnd->s32X + (pOutWnd->s32Width - l_Width)/2) & 0xfffffffeul;
        pOutWnd->s32Width = l_Width;
    }
    else
    {
        // if temp height is too big, the out width is accepted
        l_Height = l_Height & 0xfffffffcul;
        pOutWnd->s32Y = (pOutWnd->s32Y + (pOutWnd->s32Height - l_Height)/2) & 0xfffffffcul;
        pOutWnd->s32Height = l_Height;
    }

    return HI_SUCCESS;
}

#else

// Equal to 1, for calc pix_ratio
#define OPTM_D_AA_RATIO_PIX_RATIO1 1024
static HI_VOID OPTM_AA_GetAspectRatioW_H(HI_UNF_ASPECT_RATIO_E enRatio, HI_U32 *pw, HI_U32 *ph)
{
    switch(enRatio)
    {
        case HI_UNF_ASPECT_RATIO_4TO3:
            {
                *pw = 4;
                *ph = 3;
                break;
            }
        case HI_UNF_ASPECT_RATIO_16TO9:
            {
                *pw = 16;
                *ph = 9;
                break;
            }
        case HI_UNF_ASPECT_RATIO_SQUARE:
            {
                *pw = 0;
                *ph = 0;
                break;
            }
        case HI_UNF_ASPECT_RATIO_14TO9:
            {
                *pw = 14;
                *ph = 9;
                break;
            }
        case HI_UNF_ASPECT_RATIO_221TO1:
            {
                *pw = 221;
                *ph = 100;
                break;
            }
        case HI_UNF_ASPECT_RATIO_235TO1:
            {
                *pw = 235;
                *ph = 100;
                break;
            }
        default:
            {
                *pw = 0;
                *ph = 0;
            }
    }
}

/* To simply the aspect ratio conversion,  reducing w and h value */
static HI_VOID OPTM_AA_CorrectAspectRatioW_H(HI_U32 *pw, HI_U32 *ph)
{
    HI_U32 w, h;

    w = *pw;
    h = *ph;

    while((w > 256) || (h > 256))
    {
        w >>= 1;
        h >>= 1;
    }

    if (!w) w = 1;
    if (!h) h =1;

    *pw = w;
    *ph  = h;
}


HI_S32 OPTM_AA_RatioProcess(HI_RECT_S *pInWnd, HI_UNF_ASPECT_RATIO_E enInRatio,
        HI_RECT_S *pOutWnd, HI_UNF_ASPECT_RATIO_E enOutRatio,
        HI_UNF_ASPECT_CVRS_E enCvrsMode, HI_RECT_S *pScreen)
{
    // screen ratio w h, aspect ratio w h, output format w h
    HI_S32 sr_w, sr_h, ar_w, ar_h, f_w, f_h;
    // output video w h
    HI_U32 v_w, v_h, i_w, i_h;
    HI_S32 u32pixr1;

    //DEBUG_PRINTK("in_w/in_h: %d/%d\n", pInWnd->s32Width, pInWnd->s32Height);
    /* full the window */
    if ((HI_UNF_ASPECT_CVRS_IGNORE == enCvrsMode) || (HI_UNF_ASPECT_RATIO_UNKNOWN == enOutRatio))
    {
        return HI_SUCCESS;
    }

#if 0
    /* input aspect ratio matches output aspect ratio, need not to process */
    if ((HI_UNF_ASPECT_RATIO_UNKNOWN != enOutRatio)
            && (enOutRatio == enInRatio))
    {
        return HI_SUCCESS;
    }
#endif

    // using ar_w and ar_h replace video output window ratio
    OPTM_AA_GetAspectRatioW_H(enInRatio, &ar_w, &ar_h);
    if ( (0 == ar_w) || (0 == ar_h))
    {
        ar_w = pInWnd->s32Width;
        ar_h = pInWnd->s32Height;

        OPTM_AA_CorrectAspectRatioW_H(&ar_w, &ar_h);
    }

    // using sr_w and sr_h replace screen ratio
    OPTM_AA_GetAspectRatioW_H(enOutRatio, &sr_w, &sr_h);
    if ( (0 == sr_w) || (0 == sr_h))
    {
        sr_w = pOutWnd->s32Width;
        sr_h = pOutWnd->s32Height;

        OPTM_AA_CorrectAspectRatioW_H(&sr_w, &sr_h);
    }

    // get output format w h
    f_w = pScreen->s32Width;
    f_h = pScreen->s32Height;
    //DEBUG_PRINTK("aw=%d, ah=%d, ", ar_w, ar_h);

    if (HI_UNF_ASPECT_CVRS_LETTERBOX == enCvrsMode)
    {
        // pixr1 is  pixel height / pixel width
        u32pixr1 = (sr_h * f_w * OPTM_D_AA_RATIO_PIX_RATIO1) / (sr_w * f_h);
#if 0
        v_w = (ar_w * pOutWnd->s32Height * u32pixr1) / ar_h;
#else
        v_w = ((ar_w * u32pixr1) / ar_h) * pOutWnd->s32Height;
#endif

        v_w = v_w / OPTM_D_AA_RATIO_PIX_RATIO1;
        //DEBUG_PRINTK("ow=%d, v_w=%d\n", pOutWnd->s32Width, v_w);

        if ( (v_w >= (pOutWnd->s32Width - 32))&&(v_w <= (pOutWnd->s32Width+32)) )
        {
            //DEBUG_PRINTK("RRR\n");
            return HI_SUCCESS;
        }
        else if (v_w <= pOutWnd->s32Width)
        {
            v_w = v_w & 0xfffffffeul;
            pOutWnd->s32X = (pOutWnd->s32X + (pOutWnd->s32Width - v_w)/2) & 0xfffffffeul;
            pOutWnd->s32Width = v_w;
        }
        else
        {
#if 0
            // pixr1 is  pixel width / pixel height
            u32pixr1 = (sr_w * f_h * OPTM_D_AA_RATIO_PIX_RATIO1) / (sr_h * f_w);
            v_h = (ar_h * pOutWnd->s32Width * u32pixr1) / ar_w;
            v_h /= OPTM_D_AA_RATIO_PIX_RATIO1;
#else
            v_h = pOutWnd->s32Height * pOutWnd->s32Width / v_w;
#endif
            v_h = v_h & 0xfffffffcul;

            pOutWnd->s32Y = (pOutWnd->s32Y + (pOutWnd->s32Height - v_h)/2) & 0xfffffffcul;
            pOutWnd->s32Height = v_h;
        }
    }
    else if(HI_UNF_ASPECT_CVRS_PANANDSCAN == enCvrsMode)
    {
        // pixr1 is  pixel width / pixel height
        u32pixr1 = (sr_w * f_h * OPTM_D_AA_RATIO_PIX_RATIO1) / (sr_h * f_w);

        i_w = ( pOutWnd->s32Width * ar_h * u32pixr1) / (pOutWnd->s32Height * ar_w);
        i_w = pInWnd->s32Width * i_w / OPTM_D_AA_RATIO_PIX_RATIO1;

        //DEBUG_PRINTK("Inw=%d, i_w=%d\n", pInWnd->s32Width, i_w);

        //i_w = (pOutWnd->s32Width * pInWnd->s32Height) /pOutWnd->s32Height;
        if (i_w < (pInWnd->s32Width) / 2)
        {
            return HI_SUCCESS;
        }

        if ( (i_w >= (pInWnd->s32Width - 32))&&(i_w <= (pInWnd->s32Width+32)) )
        {
            //DEBUG_PRINTK("RRR\n");
            return HI_SUCCESS;
        }
        else if (i_w <= pInWnd->s32Width)
        {
            i_w = i_w & 0xfffffffeul;
            pInWnd->s32X = (pInWnd->s32X + (pInWnd->s32Width - i_w)/2) & 0xfffffffeul;
            pInWnd->s32Width = i_w;
        }
        else
        {
            i_h = pInWnd->s32Width * pInWnd->s32Height / i_w;
            i_h = i_h & 0xfffffffcul;

            if (i_h < (pInWnd->s32Height/2))
            {
                return HI_SUCCESS;
            }
            pInWnd->s32Y = (pInWnd->s32Y + (pInWnd->s32Height - i_h)/2) & 0xfffffffcul;
            pInWnd->s32Height = i_h;
        }
    } else if (HI_UNF_ASPECT_CVRS_COMBINED == enCvrsMode) {

        HI_S32 cropped_flag = 0, u32pixr1_out = 0, u32pixr1_in = 0, tmp = 0, aspect_orginal_sink = 1;
        HI_S32 aspect_cropped_source = 1, aspect_orginal_source = 1, cropped_w = 0, aspect_cropped_sink = 1, cropped_h = 0;
        HI_S32 tttmp;
        /*
         * 1) u32pixr1_out: tv pixel aspect ratio concluded from  tv resolution and  output aspect ratio.
         * 2) u32pixr1_in:  expected pixel aspect ratio of input picture.
         * 3) aspect_cropped_source: input window aspect ratio which describes the input cropped picture regardless pixel.
         * 4) aspect_cropped_sink: output window aspect ratio.
         */

        /*
         * in fact, we use the right side of the equation  belows instead of u32pixr1_out/u32pixr1_in.
         * for the reason that we don't want to lose the accuracy.
         */
        u32pixr1_out = (sr_w * f_h * OPTM_D_AA_RATIO_PIX_RATIO1) / (sr_h * f_w);
        if (u32pixr1_out < (OPTM_D_AA_RATIO_PIX_RATIO1/4))
        {
            u32pixr1_out = OPTM_D_AA_RATIO_PIX_RATIO1/4;
        }
        else if (u32pixr1_out > (OPTM_D_AA_RATIO_PIX_RATIO1 *4))
        {
            u32pixr1_out = OPTM_D_AA_RATIO_PIX_RATIO1 * 4;
        }

        u32pixr1_in = ((HI_U32)ar_w * pInWnd->s32Height * OPTM_D_AA_RATIO_PIX_RATIO1) / (ar_h * pInWnd->s32Width);
        if (u32pixr1_in < (OPTM_D_AA_RATIO_PIX_RATIO1/4))
        {
            u32pixr1_in = OPTM_D_AA_RATIO_PIX_RATIO1/4;
        }
        else if (u32pixr1_in > (OPTM_D_AA_RATIO_PIX_RATIO1 *4))
        {
            u32pixr1_in = OPTM_D_AA_RATIO_PIX_RATIO1 * 4;
        }

        /*
         * To keep the cropped picture in a right shape on tv, conditions below must be satisfied.
         * aspect_cropped_source * u32pixr1_in =  (pOutWnd->s32Width / pOutWnd->s32Height) * u32pixr1_out
         * to expand the  equation,so:  aspect_cropped_source  =  (pOutWnd->s32Width * sr_w * f_h * ar_h * pInWnd->s32Width * OPTM_D_AA_RATIO_PIX_RATIO1)
         *  /(ar_w *pInWnd->s32Height * pOutWnd->s32Height * sr_h * f_w);
         */
        //tmp = (pOutWnd->s32Width * sr_w * f_h * ar_h * pInWnd->s32Width * OPTM_D_AA_RATIO_PIX_RATIO1);
        //tmp1 =  ar_w *pInWnd->s32Height * pOutWnd->s32Height * sr_h * f_w;
        //aspect_cropped_source = tmp/tmp1;
        aspect_cropped_source = (pOutWnd->s32Width * u32pixr1_out) / pOutWnd->s32Height;
        aspect_cropped_source = (aspect_cropped_source * OPTM_D_AA_RATIO_PIX_RATIO1) / u32pixr1_in;

        /*original input window aspect ratio is :  (ar_w * OPTM_D_AA_RATIO_PIX_RATIO1)/ar_h*/
        aspect_orginal_source = (ar_w * OPTM_D_AA_RATIO_PIX_RATIO1) / ar_h;
        aspect_orginal_source = (aspect_orginal_source * OPTM_D_AA_RATIO_PIX_RATIO1) / u32pixr1_in;

        if(aspect_cropped_source == aspect_orginal_source)
            return HI_SUCCESS;

        tttmp = aspect_cropped_source - aspect_orginal_source;
        if (tttmp < 0)
            tttmp = -tttmp;

        if( tttmp <= (OPTM_D_AA_RATIO_PIX_RATIO1/8))
            return HI_SUCCESS;


        /*Comparing the input aspect and  the cropped aspect, we decide which side to crop, width or height. */
        if (aspect_cropped_source < aspect_orginal_source) {
            cropped_flag = 0;
        } else {
            cropped_flag = 1;
        }

        /*first we calculate the cropped width/height, then we make a adjust to it. after that, we recalculate the cropped_aspect.*/
        if (cropped_flag == 0) {
            cropped_w = (aspect_cropped_source * pInWnd->s32Height) / OPTM_D_AA_RATIO_PIX_RATIO1;

            if ( (cropped_w >= (pInWnd->s32Width - 32)) && (cropped_w <= (pInWnd->s32Width+32)) )
                return HI_SUCCESS;

            if (cropped_w < (pInWnd->s32Width / 2 ))
                return HI_SUCCESS;

            //DEBUG_PRINTK("acs=%d,cw0=%d, ", aspect_cropped_source, cropped_w);

            /*in combined mode: we only crop half */
            cropped_w += (pInWnd->s32Width - cropped_w)/2;

            //DEBUG_PRINTK("1cw1=%d, ", cropped_w);

            /*give a modification to x/width. */
            //pInWnd->s32X += (pInWnd->s32Width - cropped_w)/4;
            //pInWnd->s32Width -= (pInWnd->s32Width - cropped_w)/2;
            cropped_w &= 0xfffffffeul;

            //DEBUG_PRINTK("ix=%d, iw=%d, cw=%d, ", pInWnd->s32X, pInWnd->s32Width, cropped_w);
            pInWnd->s32X += (pInWnd->s32Width - cropped_w)/2;
            pInWnd->s32X &= 0xfffffffeul;
            pInWnd->s32Width = cropped_w;

            //DEBUG_PRINTK("ox=%d, ow=%d\n", pInWnd->s32X, pInWnd->s32Width);

            /*(cropped_w / pInWnd->s32Height) * u32pixr1_in = (aspect_cropped_sink) * u32pixr1_out */
            //tmp = cropped_w * ar_w * pInWnd->s32Height * sr_h * f_w * OPTM_D_AA_RATIO_PIX_RATIO1;
            //tmp1 = pInWnd->s32Height * ar_h * pInWnd->s32Width * sr_w * f_h ;
            //aspect_cropped_sink = tmp / tmp1;
            aspect_cropped_sink = (cropped_w * u32pixr1_in * OPTM_D_AA_RATIO_PIX_RATIO1)  / (u32pixr1_out * pInWnd->s32Height);
        }else{
            cropped_h = (pInWnd->s32Width * OPTM_D_AA_RATIO_PIX_RATIO1) / aspect_cropped_source;

            if(cropped_h < (pInWnd->s32Height/2))
                return HI_SUCCESS;

            if ( (cropped_h >= (pInWnd->s32Height - 32)) && (cropped_h <= (pInWnd->s32Height + 32)) )
                return HI_SUCCESS;

            /* in combined mode: we only crop half */
            cropped_h += (pInWnd->s32Height - cropped_h)/2;
            cropped_h &= 0xfffffffcul;

            //pInWnd->s32Y += (pInWnd->s32Height - cropped_h)/4;
            //pInWnd->s32Height -= (pInWnd->s32Height - cropped_h)/2;
            pInWnd->s32Y += (pInWnd->s32Height - cropped_h)/2;
            pInWnd->s32Y &= 0xfffffffcul;

            pInWnd->s32Height = cropped_h;

            /*(pInWnd->s32Width / cropped_h) * u32pixr1_in = (aspect_cropped_sink) * u32pixr1_out */
            //tmp  = pInWnd->s32Width * ar_w * pInWnd->s32Height * OPTM_D_AA_RATIO_PIX_RATIO1 * sr_h * f_w;
            //tmp1 =  cropped_h * ar_h * pInWnd->s32Width * sr_w * f_h;
            //aspect_cropped_sink = tmp / tmp1;
            aspect_cropped_sink = (pInWnd->s32Width * u32pixr1_in * OPTM_D_AA_RATIO_PIX_RATIO1 )/( cropped_h * u32pixr1_out);
        }

        if (aspect_cropped_sink < (OPTM_D_AA_RATIO_PIX_RATIO1/16))
        {
            aspect_cropped_sink = OPTM_D_AA_RATIO_PIX_RATIO1/16;
        }
        else if (aspect_cropped_sink > (OPTM_D_AA_RATIO_PIX_RATIO1 * 16))
        {
            aspect_cropped_sink = OPTM_D_AA_RATIO_PIX_RATIO1 * 16;
        }

        /*original input window aspect ratio is :  (ar_w * OPTM_D_AA_RATIO_PIX_RATIO1)/ar_h*/
        //aspect_orginal_sink = pOutWnd->s32Width / pOutWnd->s32Height * OPTM_D_AA_RATIO_PIX_RATIO1;
        aspect_orginal_sink = (pOutWnd->s32Width * OPTM_D_AA_RATIO_PIX_RATIO1) / pOutWnd->s32Height;
        if (aspect_orginal_sink < (OPTM_D_AA_RATIO_PIX_RATIO1/16))
        {
            aspect_orginal_sink = OPTM_D_AA_RATIO_PIX_RATIO1/16;
        }
        else if (aspect_orginal_sink > (OPTM_D_AA_RATIO_PIX_RATIO1 * 16))
        {
            aspect_orginal_sink = OPTM_D_AA_RATIO_PIX_RATIO1 * 16;
        }

        if (aspect_cropped_sink < aspect_orginal_sink) {
            tmp = pOutWnd->s32Width;

            pOutWnd->s32Width  = pOutWnd->s32Height * aspect_cropped_sink / OPTM_D_AA_RATIO_PIX_RATIO1;
            pOutWnd->s32X += (tmp - pOutWnd->s32Width) / 2;

            pOutWnd->s32X &= 0xfffffffeul;
            pOutWnd->s32Width &= 0xfffffffeul;
        } else {
            tmp = pOutWnd->s32Height;
            pOutWnd->s32Height = pOutWnd->s32Width * OPTM_D_AA_RATIO_PIX_RATIO1 / aspect_cropped_sink;
            pOutWnd->s32Y += (tmp - pOutWnd->s32Height) / 2;

            pOutWnd->s32Y      &= 0xfffffffcul;
            pOutWnd->s32Height &= 0xfffffffcul;
        }
    }

    return HI_SUCCESS;
}
#endif

/* according to window offset,
 * calculate the offset of start position of image display in memory, relative to basic address.
 * When format is not SEMIPLANAR, bLuma is invalid
 */
HI_U32 OPTM_M_CalcAddrDiff(HI_UNF_VIDEO_FORMAT_E enFormat, HI_U32 X, HI_U32 Y, HI_U32 Stride, HI_BOOL bLuma)
{
    HI_U32 AddrDiff;

    switch(enFormat)
    {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            {
                /* calculate real address offset */
                if (HI_TRUE == bLuma)
                {
                    AddrDiff = X + (Stride * Y);
                }
                else
                {
                    AddrDiff = X + (Stride * Y / 2);
                }
                break;
            }
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            {
                /* calculate real address offset */
                if (HI_TRUE == bLuma)
                {
                    AddrDiff = X + (Stride * Y);
                }
                else
                {
                    AddrDiff = (X * 2) + (Stride * Y);
                }
                break;
            }
        case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
            {
                /* calculate real address offset */
                AddrDiff = (X * 2) + (Stride * Y);
                break;
            }
        default:
            {
                AddrDiff = 0;
            }
    }

    return AddrDiff;
}


static HI_S32 OPTM_M_GetZmePixFmt(HAL_DISP_PIXELFORMAT_E enPixFmt)
{
    HI_S32 fmt = 0;

    /* 0-422;1-420;2-411;3-400 */
    switch(enPixFmt)
    {
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_420:
        case HAL_INPUTFMT_YCbCr_PLANAR_420:
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_400:
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_422_1X2:
        case HAL_INPUTFMT_YCbCr_PLANAR_422_1X2:
            {
                fmt = 1;
                break;
            }
        case HAL_INPUTFMT_CbYCrY_PACKAGE_422:
        case HAL_INPUTFMT_YCbYCr_PACKAGE_422:
        case HAL_INPUTFMT_YCrYCb_PACKAGE_422:
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_444:
        case HAL_INPUTFMT_YCbCr_PLANAR_444:
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_422_2X1:
        case HAL_INPUTFMT_YCbCr_PLANAR_422_2X1:
            {
                fmt = 0;
                break;
            }
#if 0
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_400:
            {
                fmt = 3;
                break;
            }
#endif
#if 0
        case HAL_INPUTFMT_YCbCr_SEMIPLANAR_411_1X4:
            {
                fmt = 2;
                break;
            }
#endif
        default:
            {
                fmt = 0;
            }
    }

    return fmt;
}

static HAL_DISP_PIXELFORMAT_E OPTM_M_GetHalPixFmt(HI_UNF_VIDEO_FORMAT_E enFmt)
{
    /* format: data format transformation */
    switch (enFmt)
    {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            {
                return HAL_INPUTFMT_YCbCr_SEMIPLANAR_422_2X1;
            }
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            {
                return HAL_INPUTFMT_YCbCr_SEMIPLANAR_420;
            }
        case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
            {
                return HAL_INPUTFMT_CbYCrY_PACKAGE_422;
            }
        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
            {
                return HAL_INPUTFMT_YCbYCr_PACKAGE_422;
            }
        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
            {
                return HAL_INPUTFMT_YCrYCb_PACKAGE_422;
            }
        default:
            {
                //return HAL_DISP_PIXELFORMAT_BUTT;
                return ((HAL_DISP_PIXELFORMAT_E)enFmt);
            }
    }
}

static HI_S32 OPTM_M_CalExtractLineNumber(HI_S32 InHeight, HI_S32 InWidth, HI_S32 OutHeight, HI_BOOL bProgressive, HI_BOOL *pbDoDie)
{
    HI_S32  s32VZmeRatio;
    HI_S32  s32ExtLine = 1; /*  line-decimation lines, count from 1 */
    HI_S32  InHeight2 = InHeight;
    HI_S32  HD_DEI_THD = 2; /*  HD source, close zoom multiple threshold of dei  */
    HI_S32  SD_DEI_THD = 5; /*  SD source, close zoom multiple threshold of dei  */
    HI_S32  HD_THD = 3;     /*  HD source, line-decimation threshold (6) */
    HI_S32  SD_THD = 7;     /*  SD source, line-decimation threshold (14) */
    //HI_BOOL bHD_CUTFlag = HI_FALSE;
    HI_BOOL bsd = HI_FALSE;

    if ((InHeight2 < 720) && (InWidth < 1024))
        bsd = HI_TRUE;

    /*  interlaced source operation  */
    if (bProgressive == HI_FALSE)
    {
        if (*pbDoDie == HI_TRUE)
        {
            if (!bsd)
            {
                if (InHeight2 > 1080)
                {
                    InHeight2 = 1080;
                }

                if (InHeight2 > (OutHeight*HD_DEI_THD))
                {
                    /* in big zoom-out operation, close DIE operation, zoom by field */
                    *pbDoDie = HI_FALSE;
                    InHeight = InHeight / 2;
                    //bHD_CUTFlag = HI_TRUE;
                }
            }
            else
            {
                if (InHeight2 > (OutHeight*SD_DEI_THD))
                {
                    /* in big zoom-out operation, close DIE operation, zoom by field */
                    *pbDoDie = HI_FALSE;
                    InHeight = InHeight / 2;
                    //bHD_CUTFlag = HI_TRUE;
                }
            }
        }
        else
        {
            InHeight = InHeight / 2;
        }
    }

    /* considering fractional part, keep 10bit fractional bits, the same with ZME */
    s32VZmeRatio = (InHeight << 10) / OutHeight;

    /* once Deinterlace is closed, height will be half */
#if 0
    if (((bHD_CUTFlag == HI_FALSE) && (InHeight > 720))
       ||((bHD_CUTFlag == HI_TRUE) && (InHeight > (720 >> 1))))
#endif
    if (!bsd)
    {
        if(s32VZmeRatio > (HD_THD<<10))
        {
            s32ExtLine = (s32VZmeRatio + ((HD_THD<<10)-1)) / (HD_THD<<10);
        }
    }
    else
    {
        if(s32VZmeRatio > (SD_THD<<10))
        {
            s32ExtLine = (s32VZmeRatio + ((SD_THD<<10)-1)) / (SD_THD<<10);
        }
    }

    if (s32ExtLine != 1)
    {
        s32ExtLine = (s32ExtLine + 1) & 0xfffffffe;
        *pbDoDie = HI_FALSE;
    }

    return s32ExtLine;
}


HI_BOOL OPTM_M_GetRwzbFlag(HI_RECT_S* pstScrnWin, HI_UNF_VO_FRAMEINFO_S* pFrame, HI_S32 bDispProgressive)
{
    HI_BOOL bIsProFrame = HI_FALSE;
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv =  HI_NULL;

    if ((!pFrame) || (!pstScrnWin))
    {
        return HI_FALSE;
    }

    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);

    if (!pVdecPriv->Rwzb)
    {
        return HI_FALSE;
    }


    bIsProFrame = (HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE == pFrame->enSampleType) ? HI_TRUE : HI_FALSE;
    if ( (bIsProFrame == bDispProgressive) && (pstScrnWin->s32Height == pFrame->u32DisplayHeight) )
    {

        return HI_TRUE;
    }
    else
    {
		//printk("-err--\n");
        return HI_FALSE;
    }

}


HI_VOID OPTM_M_RwzbRect_Revise(HI_UNF_VO_FRAMEINFO_S *pFrame, HI_RECT_S *stScrnWin, HI_RECT_S *stLocOutRect, OPTM_M_CFG_S *pstCfg)
{
    OPTM_M_DISP_INFO_S pstInfo;
    HI_BOOL  flag = 0;
    HI_VDEC_PRIV_FRAMEINFO_S *  pVdecPriv = HI_NULL ;

    if ((!pFrame) || (!stScrnWin)  || (!stLocOutRect) || (!pstCfg))
   {
       return ;
   }
//	return;

    OPTM_M_GetDispInfo(pstCfg->enDispHalId, &pstInfo);

    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);

    /*to see whether the stream is for cvbs testing or not.*/
    if (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_CVBS_MATRIX625) {

        flag = (HI_UNF_ENC_FMT_PAL == pstInfo.enFmt)
            || (HI_UNF_ENC_FMT_PAL_N == pstInfo.enFmt)
            || (HI_UNF_ENC_FMT_PAL_Nc == pstInfo.enFmt);

    }
    else if ((pVdecPriv->Rwzb == OPTM_VO_FME_PAT_480I)
            || (pVdecPriv->Rwzb == OPTM_VO_FME_PAT_480I_MATRX525)
            || (OPTM_VO_FME_PAT_CVBS_50_FLAT_FIELD == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_75_COLORBARS == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_NTC7_COMBINATION == pVdecPriv->Rwzb)
            || (OPTM_VO_FME_PAT_CVBS_NTC7_COMPOSITE == pVdecPriv->Rwzb))
    {

        flag = (HI_UNF_ENC_FMT_NTSC == pstInfo.enFmt)
            || (HI_UNF_ENC_FMT_NTSC_J == pstInfo.enFmt)
             || (HI_UNF_ENC_FMT_480P_60 == pstInfo.enFmt)
            || (HI_UNF_ENC_FMT_NTSC_PAL_M == pstInfo.enFmt);
    }

    if (flag == 1) {
        if ((stLocOutRect->s32Width == 720) && (stLocOutRect->s32X == 0)){
            stLocOutRect->s32Width = pFrame->u32DisplayWidth;
            stLocOutRect->s32Height = pFrame->u32DisplayHeight;
            stLocOutRect->s32X  =  (stScrnWin->s32Width - pFrame->u32DisplayWidth)/2 ;
            stLocOutRect->s32Y  =  (stScrnWin->s32Height - pFrame->u32DisplayHeight)/2 ;
        }
    }

    return ;
}

HI_U32 u32RWZB[HI_UNF_DISP_BUTT] = {0,0};
extern HI_UNF_VO_DEV_MODE_E g_enVoDevMode;

HI_VOID OPTM_M_VO_GetHDFrameInfo(HI_U32* pu32CropWidth, HI_U32* pu32CropHeight, HI_BOOL *pbProgressive, HI_U32* pu32NextField)
{
    if (HI_NULL != pu32CropWidth)
    {
        *pu32CropWidth = g_stWBCInputData.u32HDCropWidth;
    }

    if (HI_NULL != pu32CropHeight)
    {
        *pu32CropHeight = g_stWBCInputData.u32HDCropHeight;
    }

    if (HI_NULL != pbProgressive)
    {
        *pbProgressive = g_stWBCInputData.bProgressive;
    }

    if (HI_NULL != pu32NextField)
    {
        *pu32NextField = g_stWBCInputData.u32NextHDSrcField;
    }
}

HI_S32 OPTM_M_VO_ConfigFrame(OPTM_M_CFG_S *pstCfg, HAL_DISP_LAYER_E enLayer, OPTM_AA_DET_INFO_S *pstDetInfo, HI_BOOL bWbc1)
{
    OPTM_M_VO_CAP_S stLayerCap;
    HI_UNF_VO_FRAMEINFO_S *pFrame;
    HI_RECT_S stFrmDispArea, stLocInRec, stLocOutRect;
    WND_INFO stWndOut;
    WND_SCALER_CONFIG stWndZmeCfg;
    HI_U32 u32YAddrDiff = 0, u32CAddrDiff = 0 ,u32CRAddrDiff = 0;
    HAL_DISP_PIXELFORMAT_E enPixFmt;
    HI_BOOL bDoDie = HI_FALSE;
    HI_BOOL bProgressive;
    HI_S32 s32ExtLine;
    HI_U32 u32VerRatio4Dei = 0;
    HI_BOOL bNeedDoRwzbFlag = HI_FALSE;
    HI_S32  bProgressivetype;
    HI_RECT_S stScrnWin;
    OPTM_M_DISP_INFO_S stSrcInfo;
    HI_S32  s32X = 0;
    HAL_DISP_RECT_S stCrop;
    HI_U32 vn1, vn2;
    //HI_VO_MOSAIC_TYPE_E enVoMosaicType = HI_VO_MOSAIC_TYPE_NORMAL;
    //HI_UNF_VO_DEV_MODE_E enDevMode = HI_UNF_VO_DEV_MODE_BUTT;
    OPTM_AA_SHARPEN_INFO_S  SharpenInfo;
    OPTM_M_VO_S *pstVo;
    HI_VDEC_PRIV_FRAMEINFO_S *pVdecPriv;

    memset(&stLayerCap,0x0,sizeof(OPTM_M_VO_CAP_S));

    memset(&stFrmDispArea,0x0,sizeof(HI_RECT_S));
    memset(&stLocInRec,0x0,sizeof(HI_RECT_S));
    memset(&stLocOutRect,0x0,sizeof(HI_RECT_S));

    memset(&stWndOut,0x0,sizeof(WND_INFO));
    memset(&stWndZmeCfg,0x0,sizeof(WND_SCALER_CONFIG));
    memset(&stScrnWin,0x0,sizeof(HI_RECT_S));

    memset(&stSrcInfo,0x0,sizeof(OPTM_M_DISP_INFO_S));

    memset(&stCrop,0x0,sizeof(HAL_DISP_RECT_S));

    memset(&SharpenInfo,0x0,sizeof(OPTM_AA_SHARPEN_INFO_S));

    pstVo = OPTM_M_VO_GetHandle(enLayer);

    bProgressivetype=OPTM_M_GetDispProgressive(pstCfg->enDispHalId);

    OPTM_M_GetDispScreen(pstCfg->enDispHalId, &stScrnWin);

    OPTM_M_GetDispInfo(pstCfg->enDispHalId, &stSrcInfo);

    if ((HAL_DISP_CHANNEL_DHD == pstCfg->enDispHalId)
        || (HAL_DISP_CHANNEL_DAD == pstCfg->enDispHalId)
        || (HAL_DISP_CHANNEL_DSD == pstCfg->enDispHalId)
        )
    {

        /*change  set CSC in video layers*/
        pstVo->stAttr.u32Bright =  stSrcInfo.u32Bright;
        pstVo->stAttr.u32Contrast =  stSrcInfo.u32Contrast;
        pstVo->stAttr.u32Saturation =  stSrcInfo.u32Saturation;
        pstVo->stAttr.u32Hue =  stSrcInfo.u32Hue;

        pstVo->stAttr.u32Kr =  stSrcInfo.u32Kr;
        pstVo->stAttr.u32Kg =  stSrcInfo.u32Kg;
        pstVo->stAttr.u32Kb =  stSrcInfo.u32Kb;

    }

    /* get current frame  */
    pFrame = pstCfg->pstCurrF;
    if(pFrame->u32Height < 720)
    {
        OPTM_AA_UpdateZmeCoef_SD(&g_stVzmeCoef);
    }
    else
    {
        OPTM_AA_UpdateZmeCoef_HD(&g_stVzmeCoef);
    }

    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S * )(&pFrame->u32VdecInfo[0]);

    bNeedDoRwzbFlag = (HI_BOOL) OPTM_M_GetRwzbFlag(&stScrnWin, pFrame, bProgressivetype);
    if ((enLayer == HAL_DISP_LAYER_VIDEO1)
            || (enLayer == HAL_DISP_LAYER_VIDEO3))
    {
        vo_debug_frame(enLayer, pFrame, g_enVoDevMode);
    }

   if ( (enLayer == HAL_DISP_LAYER_VIDEO1) && ( pstCfg->bDebug ))
   {
        HI_VO_PRINT("--C--%#x---\n",pFrame->u32YAddr);
    }


    /* get VO layer capacity  */
    OPTM_M_VO_GetCap(enLayer, &stLayerCap);
    OPTM_M_GetDispScreen(pstCfg->enDispHalId, &stScrnWin);

    /* DO DEI check is executed outwards, no repeat,
     * to avoid error from difference of results
     */
    if(HI_TRUE == stLayerCap.bDieFunc)
    {
        bDoDie = pstCfg->bDoDei;
    }

    bProgressive = (pFrame->enSampleType == HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE);

    /* setting of frame format */
    enPixFmt = OPTM_M_GetHalPixFmt(pFrame->enVideoFormat);

    HAL_DISP_SetLayerDataFmt(enLayer, enPixFmt);

    /*========================================
      set  zoom  module
      ====================================*/
    /* get display region of current frame */
    stFrmDispArea.s32X = (pFrame->u32DisplayCenterX - (pFrame->u32DisplayWidth/2)) & 0xfffffffeL;
    stFrmDispArea.s32Y = (pFrame->u32DisplayCenterY - (pFrame->u32DisplayHeight/2)) & 0xfffffffeL;
    stFrmDispArea.s32Width = pFrame->u32DisplayWidth & 0xfffffffeL;
    stFrmDispArea.s32Height = pFrame->u32DisplayHeight & 0xfffffffcL;

    /* get / revise input window  */
    stLocInRec = pstCfg->stInRect;
    VoReviseRect2(&stFrmDispArea, &stLocInRec);

    if((pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
            || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YUYV)
            || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YVYU))
    {
        /* revise input window is the multiple of 2 */
        stLocInRec.s32X     = stLocInRec.s32X & 0xfffffffe;
        stLocInRec.s32Y     = stLocInRec.s32Y & 0xfffffffe;
        stLocInRec.s32Width = stLocInRec.s32Width & 0xfffffffe;
        stLocInRec.s32Height= stLocInRec.s32Height & 0xfffffffe;
    }
    else
    {
        /* revise input window is the multiple of 4 */
        stLocInRec.s32X     = stLocInRec.s32X & 0xfffffffc;
        stLocInRec.s32Y     = stLocInRec.s32Y & 0xfffffffc;
        stLocInRec.s32Width = stLocInRec.s32Width & 0xfffffffc;
        stLocInRec.s32Height= stLocInRec.s32Height & 0xfffffffc;
    }


    /* get size of output window */
    stLocOutRect = pstCfg->stOutRect;

    if(bNeedDoRwzbFlag == 1)
    {
        OPTM_M_RwzbRect_Revise(pFrame, &stScrnWin, &stLocOutRect, pstCfg);
    }


    if (stLayerCap.bZmeFunc != HI_TRUE)
    {
        /* set content window; when there is no zoom capacity, set output window as the same size of input window */
        D_OPTM_MIN(stLocInRec.s32Width, stLocOutRect.s32Width, stLocOutRect.s32Width);
        D_OPTM_MIN(stLocInRec.s32Height, stLocOutRect.s32Height, stLocOutRect.s32Height);

        /* revise input window; if image exceeds assigned output window, revise input window */
        stLocInRec.s32Width  = stLocOutRect.s32Width;
        stLocInRec.s32Height = stLocOutRect.s32Height;

        if(pVdecPriv->u32Is1D )
        {
            stCrop.s32CXS = stLocInRec.s32X;
            stCrop.s32CYS = stLocInRec.s32Y;
            stCrop.s32CXL = stLocInRec.s32X + stLocInRec.s32Width;
            stCrop.s32CYL = stLocInRec.s32Y + stLocInRec.s32Height;
            /*when open crop, the crop resolution is the same with the frame */
            stCrop.u32InHeight = pFrame->u32Height;
            stCrop.u32InWidth = pFrame->u32Width;

            Vou_SetCropReso(enLayer, stCrop);
            Vou_SetSrcReso(enLayer, stCrop);
            /*when open crop, the input  horilization resolution is the same with the frame*/

            //stLocInRec.s32Width  = pFrame->u32Width;
            /* set  input  window  */
            //HAL_DISP_SetLayerInRect(enLayer, stLocInRec);
        //}else{
            /* set  input  window  */
            //HAL_DISP_SetLayerInRect(enLayer, stLocInRec);
        }
		/* set  input  window  */
        HAL_DISP_SetLayerInRect(enLayer, stLocInRec);
        /* set video content window  */
        HAL_DISP_SetLayerOutRect(enLayer, stLocOutRect);

#if 0
        VO_GetMosaicType(&enVoMosaicType);
        VO_GetDevMode(&enDevMode);
        if((HI_UNF_VO_DEV_MODE_MOSAIC == enDevMode) && (HI_VO_MOSAIC_TYPE_STANDALONE == enVoMosaicType))
        {
            u32YAddrDiff = 0;
            u32CAddrDiff = 0;
        }
        else
#endif
        {
            if((pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
                    || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YUYV)
                    || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YVYU))
            {
                s32X = stLocInRec.s32X & 0xfffffff8;
            }
            else
            {
                s32X = stLocInRec.s32X;
            }

            /*when crop is open,  the calculation of y/c addr is not necessary.*/
            if(!((pVdecPriv->u32Is1D))){

            /* calculate basic address of image data, hardware reads data always from (0,0) */
            u32YAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height) * pVdecPriv->u32Circumrotate,
                    pFrame->u32YStride,
                    HI_TRUE);
            u32CAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height) * pVdecPriv->u32Circumrotate,
                    pFrame->u32CStride,
                    HI_FALSE);
            u32CRAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height) * pVdecPriv->u32Circumrotate,
                    pFrame->u32CStride,
                    HI_FALSE);

            u32YAddrDiff -= pFrame->u32YStride * pVdecPriv->u32Circumrotate;
            u32CAddrDiff -= pFrame->u32CStride * pVdecPriv->u32Circumrotate;
            u32CRAddrDiff -= pFrame->u32CStride * pVdecPriv->u32Circumrotate;
			            }
        }

        s32ExtLine = 1;
        u32VerRatio4Dei = 1;
        pstCfg->DoDeiFlag_tmp = bProgressive;
    }
    else
    {
        {
            HI_RECT_S TmpInRect, TmpOutRect;

            TmpInRect  = stLocInRec;
            TmpOutRect = stLocOutRect;

            OPTM_HAL_GetVersion(&vn1, &vn2);

     {

                OPTM_AA_RatioProcess(&stLocInRec, pFrame->enAspectRatio,
                        &stLocOutRect, pstCfg->enOutRatio, pstCfg->enCvsMode, &stScrnWin);
            }

            // In and Out Rect check
            if (   (stLocOutRect.s32X < 0) || (stLocOutRect.s32Width < OPTM_RECT_MIN_W)
                    || (stLocOutRect.s32Y < 0) || (stLocOutRect.s32Height < OPTM_RECT_MIN_H)
                    || (stLocInRec.s32X < 0)   || (stLocInRec.s32Width < OPTM_RECT_MIN_W)
                    || (stLocInRec.s32Y < 0)   || (stLocInRec.s32Height < OPTM_RECT_MIN_H) )
            {
                stLocInRec   = TmpInRect;
                stLocOutRect = TmpOutRect;
            }
        }


        stLocInRec.s32Y      = stLocInRec.s32Y & 0xfffffffc;
        stLocInRec.s32Height = stLocInRec.s32Height & 0xfffffffc;

        /* calculate line number of line-decimation */
        if (pstCfg->OutBtmFlag == 2)
        {
            s32ExtLine = OPTM_M_CalExtractLineNumber(stLocInRec.s32Height, stLocInRec.s32Width, stLocOutRect.s32Height,
                                                     bProgressive, &bDoDie);
        }
        else
        {
            s32ExtLine = OPTM_M_CalExtractLineNumber(stLocInRec.s32Height, stLocInRec.s32Width, stLocOutRect.s32Height/2,
                                                     bProgressive, &bDoDie);
        }

        if((pVdecPriv->u32Is1D)){
            if(s32ExtLine >4) {
                s32ExtLine = 8;
            }
        }

        /* 1080p60/p50: VDP ZME performance -->250MHz:148.5MHz = 16:10*/
        if ( (HI_UNF_ENC_FMT_1080P_60 == stSrcInfo.enFmt)
             || (HI_UNF_ENC_FMT_1080P_50 == stSrcInfo.enFmt))
        {
            if ((stLocInRec.s32Height * 10 / s32ExtLine) > (16 * stLocOutRect.s32Height))
            {
                bDoDie = HI_FALSE;
                s32ExtLine = 2 * s32ExtLine; /*ExtLine level : 2 4 8 */
                //printk("%d-%d,(%d,%d)\n",bDoDie,s32ExtLine,stLocInRec.s32Height,stLocOutRect.s32Height);
            }
        }

    //printk("ExtLine--%d\n",s32ExtLine);
        /* after decimation, revise Y and Height */
        if (s32ExtLine > 1)
        {
            stLocInRec.s32Y      = (stLocInRec.s32Y / s32ExtLine) & 0xfffffffcL;
            stLocInRec.s32Height = (stLocInRec.s32Height / s32ExtLine) / (4 * s32ExtLine);
            stLocInRec.s32Height *= (4 * s32ExtLine);
            stLocInRec.s32Height = (stLocInRec.s32Height == 0) ? 4 * s32ExtLine : stLocInRec.s32Height;
        }


        /* set ZME input  window  information */
        stWndZmeCfg.ori_in_width  = pFrame->u32Width;
        stWndZmeCfg.ori_in_height = (pFrame->u32Height /s32ExtLine) & 0xfffffffcL;
        stWndZmeCfg.pan_scan_in_hoffset= stLocInRec.s32X << 12;
        stWndZmeCfg.pan_scan_in_voffset= stLocInRec.s32Y << 12;
        stWndZmeCfg.pan_scan_in_width  = stLocInRec.s32Width;
        stWndZmeCfg.pan_scan_in_height = stLocInRec.s32Height;
        stWndZmeCfg.yuv_type = OPTM_M_GetZmePixFmt(enPixFmt);
        stWndZmeCfg.zme_input_inter = (bProgressive == HI_TRUE) ? 1 : 0;

        /*problem sheet : DTS2011090204332 DTS2011092102458
         *author:t00177539
         *There is a restrict for using DIE module, the video input window should be larger
         *than 64 * 64.
         * */
        if (bDoDie == HI_TRUE)
        {
            if ((stLocInRec.s32Width < 64) || (stLocInRec.s32Height < 64))
            {
                bDoDie = HI_FALSE;
            }
        }

        if (bDoDie == HI_TRUE)
        {
            /* through DIE operation, interlaced image becomes progressive image  */
            stWndZmeCfg.zme_input_inter = 1;
            stWndZmeCfg.die_lum_en = 1;
            stWndZmeCfg.die_chm_en = 1;
        }
        else
        {
            stWndZmeCfg.die_lum_en = 0;
            stWndZmeCfg.die_chm_en = 0;
        }

        stWndZmeCfg.zme_input_bfield = pstCfg->InBtmFlag;  /*  0-top field; 1-bottom field */

        /**********************************************
          set ZME output window  information
         **********************************************/
        stWndZmeCfg.zme_in_height = stLocInRec.s32Height;
        stWndZmeCfg.zme_in_width = stLocInRec.s32Width;
        stWndZmeCfg.zme_out_width  = stLocOutRect.s32Width;
        stWndZmeCfg.zme_out_height = stLocOutRect.s32Height;
        stWndZmeCfg.zme_output_inter  = (pstCfg->OutBtmFlag==2); /*  0-interlaced; 1-progressive */
        stWndZmeCfg.zme_output_bfield = (pstCfg->OutBtmFlag==1); /*  0-top field; 1-bottom field */
        stWndZmeCfg.source_cosited    = 0;
        stWndZmeCfg.p_coef_addr = pstCfg->pstZmeCoefAddr;

        /*************************************************************************************
          calculate vertical zoom ratio, passed to DEI algorithm, for inner status control
         *************************************************************************************/
        if (stWndZmeCfg.zme_output_inter == stWndZmeCfg.zme_input_inter)
        {
            u32VerRatio4Dei = stWndZmeCfg.pan_scan_in_height / stWndZmeCfg.zme_out_height;
        }
        else if (0 == stWndZmeCfg.zme_input_inter)
        {
            u32VerRatio4Dei = stWndZmeCfg.pan_scan_in_height / (2*stWndZmeCfg.zme_out_height);
        }
        else
        {
            u32VerRatio4Dei = (stWndZmeCfg.pan_scan_in_height * 2) / stWndZmeCfg.zme_out_height;
        }



        /*  zoom  operation */
        if (( HI_TRUE  ==  stLayerCap.bSharpenFunc) && (HI_FALSE == pstVo->bSharpenMask))
            SharpenInfo.bEnable = pstVo->bSharpenEnable;
        else
            SharpenInfo.bEnable = 0;

        SharpenInfo.s16LTICTIStrengthRatio_hd= pstVo->alg_controll_info.s16LTICTIStrengthRatio_hd;
        SharpenInfo.s16LTICTIStrengthRatio  = pstVo->alg_controll_info.s16LTICTIStrengthRatio;

        OPTM_AA_VZmeApi(enLayer, &stWndZmeCfg, &stWndOut, pstCfg->pstDie, HAL_WBC_DFPSEL_BUTT, bNeedDoRwzbFlag, &SharpenInfo);



        if ((pVdecPriv->u32Is1D) ){

            stCrop.s32CXS = stLocInRec.s32X;
            stCrop.s32CYS = stLocInRec.s32Y;
            stCrop.s32CXL = stLocInRec.s32X + stLocInRec.s32Width;
            stCrop.s32CYL = stLocInRec.s32Y + stLocInRec.s32Height*s32ExtLine;

            stCrop.u32InHeight = pFrame->u32Height;
            stCrop.u32InWidth = pFrame->u32Width;
            Vou_SetCropReso(enLayer, stCrop);
            Vou_SetSrcReso(enLayer, stCrop);

            //stLocInRec.s32Width  =  pFrame->u32Width;
            //stLocInRec.s32Height =  stLocInRec.s32Height ;
            /*set input window  */
            HAL_DISP_SetLayerInRect(enLayer, stLocInRec);
        }

        /* Save HD Crop width and height here, if SD wbc0 data fetch point is 0, it will use the value here. */
        if (HAL_DISP_LAYER_VIDEO1 == enLayer)
        {
            g_stWBCInputData.u32HDCropWidth = stLocInRec.s32Width;
            g_stWBCInputData.u32HDCropHeight = stLocInRec.s32Height;
            g_stWBCInputData.bProgressive = (stWndZmeCfg.zme_input_inter==1);
        }

        /*  set input window  */
        HAL_DISP_SetLayerInRect(enLayer, stLocInRec);
        /*  set video content window  */
        HAL_DISP_SetLayerOutRect(enLayer, stLocOutRect);


        if((pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_UYVY)
                || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YUYV)
                || (pFrame->enVideoFormat == HI_UNF_FORMAT_YUV_PACKAGE_YVYU))
        {
            s32X = stLocInRec.s32X & 0xfffffff8ul;
        }
        else
        {
            s32X = stLocInRec.s32X;
        }

        if(!((pVdecPriv->u32Is1D))){
            /*  calculate basic address of image data; hardware always read data from (0,0) */
            u32YAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height) * pVdecPriv->u32Circumrotate,
                    pFrame->u32YStride * s32ExtLine,
                    HI_TRUE);

            u32CAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height)* pVdecPriv->u32Circumrotate,
                    pFrame->u32CStride * s32ExtLine,
                    HI_FALSE);
            u32CRAddrDiff = OPTM_M_CalcAddrDiff(pFrame->enVideoFormat,
                    s32X,
                    stLocInRec.s32Y + (stLocInRec.s32Height) * pVdecPriv->u32Circumrotate,
                    pFrame->u32CStride,
                    HI_FALSE);

            u32YAddrDiff -= pFrame->u32YStride * s32ExtLine * pVdecPriv->u32Circumrotate;
            u32CAddrDiff -= pFrame->u32CStride * s32ExtLine * pVdecPriv->u32Circumrotate;
            u32CRAddrDiff -= pFrame->u32CStride * pVdecPriv->u32Circumrotate;
        }

        pstCfg->DoDeiFlag_tmp = stWndZmeCfg.zme_input_inter;
    }

    if((pVdecPriv->u32Is1D)){
        Vou_SetDrawMode(enLayer, (s32ExtLine - 1));
        u32YAddrDiff  = 0;
        u32CAddrDiff = 0;
        s32ExtLine = 1;
    }

    /*========================================
      settings of DIE module
      ====================================*/
#if 0
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        printk("int l");
        if (pstCfg->pstLastF)
            printk(" %08x ", pstCfg->pstLastF->u32YAddr);
        else
            printk(" ");
        printk("c");
        if (pstCfg->pstCurrF)
            printk(" %08x ", pstCfg->pstCurrF->u32YAddr);
        else
            printk(" ");
        printk("n");
        if (pstCfg->pstNextF)
            printk(" %08x ", pstCfg->pstNextF->u32YAddr);
        else
            printk(" ");
        printk("die %d fd %d ", bDoDie, pstCfg->InBtmFlag);
        printk("\r\n");
    }
#endif

    if (bDoDie != HI_TRUE)
    {
        /* set image basic address */
        HAL_DISP_SetLayerAddr(enLayer, 0,
                pFrame->u32YAddr+u32YAddrDiff,
                pFrame->u32CAddr+u32CAddrDiff,
                pFrame->u32YStride * s32ExtLine,
                pFrame->u32CStride * s32ExtLine);
        HAL_DISP_SetLayerCrAddr(enLayer, 0,
                pFrame->u32CAddr+u32CRAddrDiff,
                pFrame->u32CStride * s32ExtLine);

        /* can do DEI, but in condition of no-DEI for line-decimation, inform DEI module operation  */
        if (HI_TRUE == pstCfg->bDoDei)
        {
            OPTM_AA_DieCfgApi(enLayer, pstCfg->pstDie, pstCfg->ReFlag, HI_TRUE, bWbc1, HI_FALSE, pstCfg->u32CurrWinNumber, u32VerRatio4Dei);
            Vou_SetDieEnable(enLayer, HI_FALSE, HI_FALSE);
        }
        else
        {
            Vou_SetDieEnable(enLayer, HI_FALSE, HI_FALSE);
        }

        if (bProgressive == HI_TRUE)
        {
            /* set progressive read mode */
            HAL_DISP_SetReadMode(enLayer, HAL_DISP_PROGRESSIVE, HAL_DISP_PROGRESSIVE);

            if (HAL_DISP_LAYER_VIDEO1 == enLayer)
            {
                g_stWBCInputData.u32NextHDSrcField = 2;
            }
        }
        else
        {
            HAL_DISP_DATARMODE_E enRMode;

            enRMode = (0==pstCfg->InBtmFlag) ? HAL_DISP_TOP : HAL_DISP_BOTTOM;

#if (1 == WBC_USE_FILED_MODE)
            /* SD WBC0 field mode always read top field */
            if (HAL_DISP_LAYER_VIDEO3 == enLayer)
            {
                HAL_DISP_SetReadMode(enLayer, HAL_DISP_TOP , HAL_DISP_TOP);
            }
            else
#endif
            {
                HAL_DISP_SetReadMode(enLayer, enRMode , enRMode );
            }

            if (HAL_DISP_LAYER_VIDEO1 == enLayer)
            {
                g_stWBCInputData.u32NextHDSrcField = pstCfg->InBtmFlag;
            }
        }

        if (pstDetInfo != HI_NULL)
        {
            /* no detection */
            pstDetInfo->s32TopFirst = -1;
        }
    }
#ifndef VDP_USE_DEI_FB_OPTIMIZE
    else
    {
        HI_BOOL  bRefFldOpppzed = HI_TRUE;

        if ((OPTM_AA_GetDie5FMode(pstCfg->pstDie, bWbc1) == HI_FALSE)
                && (HI_TRUE != pstCfg->bInFrc))
            bRefFldOpppzed = HI_FALSE;

        if (HAL_DISP_LAYER_VIDEO1 == enLayer)
        {
            if (bRefFldOpppzed)
            {
                g_stWBCInputData.u32NextHDSrcField = 1 - pstCfg->InBtmFlag;
            }
            else
            {
                g_stWBCInputData.u32NextHDSrcField = pstCfg->InBtmFlag;
            }
        }

        /* update of reference-field */
        OPTM_AA_ProcRefFld(pstCfg->pstDie, pstCfg->InBtmFlag);

        /* in multi-channel, set this address in each time */
        HAL_DieAddr(enLayer, pstCfg->pstDie->stMBuf.u32StartPhyAddr);

        OPTM_AA_DieCfgApi(enLayer, pstCfg->pstDie, pstCfg->ReFlag,
                bRefFldOpppzed, bWbc1,
                HI_TRUE, pstCfg->u32CurrWinNumber, u32VerRatio4Dei);

        /* submit FOD/DIE detection information  */
        if (pstDetInfo != HI_NULL)
        {
            OPTM_AA_GetDieDetInfo(pstCfg->pstDie, pstDetInfo);
        }

        /* Do DIE */
        if (!bRefFldOpppzed)
        {

            if (  ((HI_TRUE == pstCfg->bTopFirst) && (1 == pstCfg->InBtmFlag))
                    ||((HI_FALSE == pstCfg->bTopFirst)&& (0 == pstCfg->InBtmFlag)) )
            {
                /* DIE operation, in line-decimation it may not enter this branch */
                HAL_DISP_SetLayerAddr(enLayer, 0,
                        pstCfg->pstNextF->u32YAddr+u32YAddrDiff,
                        pstCfg->pstNextF->u32CAddr+u32CAddrDiff,
                        pstCfg->pstNextF->u32YStride * s32ExtLine,
                        pstCfg->pstNextF->u32CStride * s32ExtLine);

                HAL_DISP_SetLayerCrAddr(enLayer, 0,
                        pstCfg->pstNextF->u32CAddr+u32CRAddrDiff,
                        pstCfg->pstNextF->u32CStride * s32ExtLine);

                /* set image basic address */
                HAL_DISP_SetLayerAddr(enLayer, 1,
                        pFrame->u32YAddr+u32YAddrDiff,
                        pFrame->u32CAddr+u32CAddrDiff,
                        pFrame->u32YStride * s32ExtLine,
                        pFrame->u32CStride * s32ExtLine);

                HAL_DISP_SetLayerCrAddr(enLayer, 1,
                        pFrame->u32CAddr+u32CRAddrDiff,
                        pFrame->u32CStride * s32ExtLine);

            }
            else
            {
                /* set image basic address */
                HAL_DISP_SetLayerAddr(enLayer, 0,
                        pFrame->u32YAddr+u32YAddrDiff,
                        pFrame->u32CAddr+u32CAddrDiff,
                        pFrame->u32YStride * s32ExtLine,
                        pFrame->u32CStride * s32ExtLine);
                HAL_DISP_SetLayerCrAddr(enLayer, 0,
                        pFrame->u32CAddr+u32CRAddrDiff,
                        pFrame->u32CStride * s32ExtLine);

                /* DIE operation, in line-decimation it may not enter this branch */
                HAL_DISP_SetLayerAddr(enLayer, 2,
                        pstCfg->pstNextF->u32YAddr+u32YAddrDiff,
                        pstCfg->pstNextF->u32CAddr+u32CAddrDiff,
                        pstCfg->pstNextF->u32YStride * s32ExtLine,
                        pstCfg->pstNextF->u32CStride * s32ExtLine);
                HAL_DISP_SetLayerCrAddr(enLayer, 2,
                        pstCfg->pstNextF->u32CAddr+u32CRAddrDiff,
                        pstCfg->pstNextF->u32CStride * s32ExtLine);

                HAL_DISP_SetLayerAddr(enLayer, 1,
                        pstCfg->pstLastF->u32YAddr+u32YAddrDiff,
                        pstCfg->pstLastF->u32CAddr+u32CAddrDiff,
                        pstCfg->pstLastF->u32YStride * s32ExtLine,
                        pstCfg->pstLastF->u32CStride * s32ExtLine);
                HAL_DISP_SetLayerCrAddr(enLayer, 1,
                        pstCfg->pstLastF->u32CAddr+u32CRAddrDiff,
                        pstCfg->pstLastF->u32CStride * s32ExtLine);

            }

        }
        else
        {
            /* set image basic address */
            HAL_DISP_SetLayerAddr(enLayer, 0,
                    pFrame->u32YAddr+u32YAddrDiff,
                    pFrame->u32CAddr+u32CAddrDiff,
                    pFrame->u32YStride * s32ExtLine,
                    pFrame->u32CStride * s32ExtLine);

            /* DIE operation, in line-decimation it may not enter this branch */
            HAL_DISP_SetLayerAddr(enLayer, 2,
                    pstCfg->pstNextF->u32YAddr+u32YAddrDiff,
                    pstCfg->pstNextF->u32CAddr+u32CAddrDiff,
                    pstCfg->pstNextF->u32YStride * s32ExtLine,
                    pstCfg->pstNextF->u32CStride * s32ExtLine);
            HAL_DISP_SetLayerAddr(enLayer, 1,
                    pstCfg->pstLastF->u32YAddr+u32YAddrDiff,
                    pstCfg->pstLastF->u32CAddr+u32CAddrDiff,
                    pstCfg->pstLastF->u32YStride * s32ExtLine,
                    pstCfg->pstLastF->u32CStride * s32ExtLine);

        }
    }
#else
    /* DEI */
    else
    {
        HI_BOOL bRefFldOpppzed = HI_TRUE;
        HI_BOOL b5FieldDEIMode = OPTM_AA_GetDie5FMode(pstCfg->pstDie, bWbc1);

        if ((b5FieldDEIMode == HI_FALSE) && (HI_TRUE != pstCfg->bInFrc))
        {
            bRefFldOpppzed = HI_FALSE;
        }

        if (HAL_DISP_LAYER_VIDEO1 == enLayer)
        {
            if (bRefFldOpppzed)
            {
                g_stWBCInputData.u32NextHDSrcField = 1 - pstCfg->InBtmFlag;
            }
            else
            {
                g_stWBCInputData.u32NextHDSrcField = pstCfg->InBtmFlag;
            }
        }

        /* update of reference-field */
        OPTM_AA_ProcRefFld(pstCfg->pstDie, pstCfg->InBtmFlag);

        /* in multi-channel, set this address in each time */
        HAL_DieAddr(enLayer, pstCfg->pstDie->stMBuf.u32StartPhyAddr);

        OPTM_AA_DieCfgApi(enLayer, pstCfg->pstDie, pstCfg->ReFlag,
                bRefFldOpppzed, bWbc1, HI_TRUE, pstCfg->u32CurrWinNumber, u32VerRatio4Dei);

        /* submit FOD/DIE detection information  */
        if (pstDetInfo != HI_NULL)
        {
            OPTM_AA_GetDieDetInfo(pstCfg->pstDie, pstDetInfo);
        }

        if (!bRefFldOpppzed)
        {
            if (((HI_TRUE == pstCfg->bTopFirst) && (1 == pstCfg->InBtmFlag))
                    ||((HI_FALSE == pstCfg->bTopFirst)&& (0 == pstCfg->InBtmFlag)) )
            {
                /* set image basic address */
                HAL_DISP_SetLayerAddr(enLayer, 1,
                        pFrame->u32YAddr+u32YAddrDiff,
                        pFrame->u32CAddr+u32CAddrDiff,
                        pFrame->u32YStride * s32ExtLine,
                        pFrame->u32CStride * s32ExtLine);
                if (HI_NULL != pstCfg->pstNextF)
                {
                    HAL_DISP_SetLayerAddr(enLayer, 0,
                            pstCfg->pstNextF->u32YAddr+u32YAddrDiff,
                            pstCfg->pstNextF->u32CAddr+u32CAddrDiff,
                            pstCfg->pstNextF->u32YStride * s32ExtLine,
                            pstCfg->pstNextF->u32CStride * s32ExtLine);
                }
            }
            else
            {
                /* set image basic address */
                HAL_DISP_SetLayerAddr(enLayer, 0,
                        pFrame->u32YAddr+u32YAddrDiff,
                        pFrame->u32CAddr+u32CAddrDiff,
                        pFrame->u32YStride * s32ExtLine,
                        pFrame->u32CStride * s32ExtLine);
                if (HI_NULL != pstCfg->pstLastF)
                {
                    HAL_DISP_SetLayerAddr(enLayer, 1,
                            pstCfg->pstLastF->u32YAddr+u32YAddrDiff,
                            pstCfg->pstLastF->u32CAddr+u32CAddrDiff,
                            pstCfg->pstLastF->u32YStride * s32ExtLine,
                            pstCfg->pstLastF->u32CStride * s32ExtLine);
                }
            }
        }
        else
        {
            /* set image basic address */
            HAL_DISP_SetLayerAddr(enLayer, 0,
                    pFrame->u32YAddr+u32YAddrDiff,
                    pFrame->u32CAddr+u32CAddrDiff,
                    pFrame->u32YStride * s32ExtLine,
                    pFrame->u32CStride * s32ExtLine);
            if (HI_NULL != pstCfg->pstLastF)
            {
                HAL_DISP_SetLayerAddr(enLayer, 1,
                        pstCfg->pstLastF->u32YAddr+u32YAddrDiff,
                        pstCfg->pstLastF->u32CAddr+u32CAddrDiff,
                        pstCfg->pstLastF->u32YStride * s32ExtLine,
                        pstCfg->pstLastF->u32CStride * s32ExtLine);
            }
        }

        if (b5FieldDEIMode)
        {
            /* DIE operation, in line-decimation it may not enter this branch */
            if (HI_NULL != pstCfg->pstNextF)
            {
                HAL_DISP_SetLayerAddr(enLayer, 2,
                        pstCfg->pstNextF->u32YAddr+u32YAddrDiff,
                        pstCfg->pstNextF->u32CAddr+u32CAddrDiff,
                        pstCfg->pstNextF->u32YStride * s32ExtLine,
                        pstCfg->pstNextF->u32CStride * s32ExtLine);
            }
        }
    }
#endif

    /*  vc1 process*/
    if ((pFrame->stSeqInfo.entype == HI_UNF_VCODEC_TYPE_VC1)
            && (enLayer == HAL_DISP_LAYER_VIDEO1)) {

        Vc1MapCoefCfg stMapCoefCfg;
        HAL_VC1PROFILE_E u32VC1Pfofile;
        HAL_DISP_VC1RDMD_E RdMd;

        u32VC1Pfofile = pVdecPriv->stVC1RangeInfo.u8VC1Profile;
        RdMd = bProgressive == HI_TRUE ? HAL_DISP_VC1RDMD_FRM : HAL_DISP_VC1RDMD_FLD;

        Vou_SetVc1Enable(enLayer, HI_TRUE);
        stMapCoefCfg.u32Bmapc = pVdecPriv->stVC1RangeInfo.u8BtmRangeMapUV;
        stMapCoefCfg.u32Bmapy = pVdecPriv->stVC1RangeInfo.u8BtmRangeMapY;
        stMapCoefCfg.u32Mapc  = pVdecPriv->stVC1RangeInfo.u8RangeMapUV;
        stMapCoefCfg.u32Mapy  = pVdecPriv->stVC1RangeInfo.u8RangeMapY;
        Vou_SetVc1MapCoef(enLayer, stMapCoefCfg);
        Vou_SetVc1Profile(enLayer, u32VC1Pfofile);
        Vou_SetVc1MapFlg(enLayer,u32VC1Pfofile, pVdecPriv->stVC1RangeInfo.u8RangeMapYFlag, RdMd);
        Vou_SetVc1RangeDfrm(enLayer, u32VC1Pfofile, pVdecPriv->stVC1RangeInfo.s32RangedFrm);
    }
    else {
        Vou_SetVc1Enable(enLayer, HI_FALSE);
    }


	/*3'b000 :2D
		3'b010 :1D
 		3'b011 : 1D Compress
    */
    if (pVdecPriv->u32Is1D)
    {
        Vou_SetSrcMode(enLayer, 2);
    }
    else
    {
        Vou_SetSrcMode(enLayer, 0);
    }


    /*  vp6 process */
    if (HI_TRUE == pVdecPriv->u32Circumrotate) {
        Vou_SetFlipEn(enLayer, HI_TRUE);
    }
    else {
        Vou_SetFlipEn(enLayer, HI_FALSE);
    }


    {
        OPTM_M_VO_S *pstVo;
        //HI_BOOL bRWZBChange = HI_FALSE;

        pstVo = OPTM_M_VO_GetHandle(enLayer);


        if (enLayer == HAL_DISP_LAYER_VIDEO1)
        {
            if (u32RWZB[HI_UNF_DISP_HD0] != pVdecPriv->Rwzb)
            {
                u32RWZB[HI_UNF_DISP_HD0] = pVdecPriv->Rwzb;
                //bRWZBChange= HI_TRUE;
            }
        }
        else if (enLayer == HAL_DISP_LAYER_VIDEO3)
        {
            if (u32RWZB[HI_UNF_DISP_SD0] != pVdecPriv->Rwzb)
            {
                u32RWZB[HI_UNF_DISP_SD0] = pVdecPriv->Rwzb;
                //bRWZBChange= HI_TRUE;
            }
        }

#ifdef HI_DISP_ACC_SUPPORT
        /*  dynamic ACC switch  control  */
        if (HI_TRUE == stLayerCap.bAccFunc)
        {
            if ( (stLocOutRect.s32Width > 1920) || (stLocOutRect.s32Height > 1080))
            {
                OPTM_M_VO_SetAccEnable(pstVo->enLayer, HI_FALSE);
            }
            else
            {
                if (bNeedDoRwzbFlag == HI_TRUE)
                {
                    OPTM_M_VO_SetAccMask(pstVo->enLayer, HI_TRUE);
                }
                else
                    {
                    OPTM_M_VO_SetAccMask(pstVo->enLayer, HI_FALSE);

                }
            }
            OPTM_M_VO_SetAccEnable(pstVo->enLayer, pstVo->bAccEnable);
        }
        else
        {
            OPTM_M_VO_SetAccEnable(pstVo->enLayer, HI_FALSE);
        }
#endif

        /*  dynamic ACM switch  control  */
        if (HI_TRUE == stLayerCap.bAcmFunc)
        {
            //if (pVdecPriv->Rwzb > 0)
            if (bNeedDoRwzbFlag == HI_TRUE)
            {
                //DEBUG_PRINTK("m");
                OPTM_M_VO_SetAcmMask(pstVo->enLayer, HI_TRUE);

            }
            else
            {
                OPTM_M_VO_SetAcmMask(pstVo->enLayer, HI_FALSE);
            }
             OPTM_M_VO_SetAcmEnable(pstVo->enLayer, pstVo->bAcmEnable);
        }
        else
        {
            OPTM_M_VO_SetAcmEnable(pstVo->enLayer, HI_FALSE);
        }

         /*  dynamic ACM switch  control  */
        if (HI_TRUE == stLayerCap.bSharpenFunc)
        {
            //if (pVdecPriv->Rwzb > 0)
            if (bNeedDoRwzbFlag == HI_TRUE)
            {
                //DEBUG_PRINTK("m");
                OPTM_M_VO_SetSharpenMask(pstVo->enLayer, HI_TRUE);

            }
            else
            {
                OPTM_M_VO_SetSharpenMask(pstVo->enLayer, HI_FALSE);
            }
             OPTM_M_VO_SetSharpenEnable(pstVo->enLayer, pstVo->bSharpenEnable);
        }
        else
        {
            OPTM_M_VO_SetSharpenEnable(pstVo->enLayer, HI_FALSE);
        }

        /*RWZB  Revise  process*/

        //if(  bRWZBChange)
        {
           if  (u32RWZB[HI_UNF_DISP_HD0])
           {
                if ((u32RWZB[HI_UNF_DISP_HD0] == OPTM_VO_FME_PAT_576I)
                    || (u32RWZB[HI_UNF_DISP_HD0] == OPTM_VO_FME_PAT_480I))
                {
                    VDP_Set_SDateSrcCoef(DISP_SDATE_SRC_COEF_INDEX_480I_576I);
                }

                if ((u32RWZB[HI_UNF_DISP_HD0] == OPTM_VO_FME_PAT_CVBS_CCITT033_NTSC)
                    || (u32RWZB[HI_UNF_DISP_HD0] == OPTM_VO_FME_PAT_480I_CODEC43))
                {
                	HAL_DISP_CLIP_S stClip;

                     stClip.bClipEn        = HI_TRUE;

                     stClip.u16ClipLow_y   = 0;
                     stClip.u16ClipLow_cb  = 0;
                     stClip.u16ClipLow_cr  = 0;

                     stClip.u16ClipHigh_y  = 1024-1;
                     stClip.u16ClipHigh_cb = 1024-1;
                     stClip.u16ClipHigh_cr = 1024-1;

                     HAL_DISP_SetIntfClip(HAL_DISP_CHANNEL_DHD, stClip);
                     HAL_DISP_SetIntfClip(HAL_DISP_CHANNEL_DSD, stClip);
                }
                /*Closed CSC */
                OPTM_M_VO_SetCscEnable(pstVo->enLayer, HI_FALSE);

#ifdef HI_DISP_ACC_ENABLE
                OPTM_M_VO_SetAccMask(pstVo->enLayer, HI_TRUE);
#endif
                OPTM_M_VO_SetAcmMask(pstVo->enLayer, HI_TRUE);
                OPTM_M_VO_SetSharpenMask(pstVo->enLayer, HI_TRUE);

                VDP_Set_SDateRwzbReviseSrcCoef(u32RWZB[HI_UNF_DISP_HD0]);
           }
           else
           {
                OPTM_M_VO_SetCscEnable(pstVo->enLayer, HI_TRUE);
                VDP_Set_SDateSrcCoef(DISP_SDATE_SRC_COEF_INDEX_480I_576I);
                VDP_Set_SDateRwzbReviseSrcCoef(u32RWZB[HI_UNF_DISP_HD0]);
                OPTM_HAL_DISP_SetDateDisIRE(HAL_DISP_CHANNEL_DSD,HI_FALSE);
#ifdef HI_DISP_ACC_ENABLE
                OPTM_M_VO_SetAccMask(pstVo->enLayer, HI_FALSE);
#endif
                OPTM_M_VO_SetAcmMask(pstVo->enLayer, HI_FALSE);
                OPTM_M_VO_SetSharpenMask(pstVo->enLayer, HI_FALSE);
           }
        }

    }

    return HI_SUCCESS;
}


#ifndef HI_VDP_ONLY_SD_SUPPORT
/**************************************************************
  WBC MODULE
 */
HI_S32 OPTM_M_WBC0_Config(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0)
{
    if(enLayer != HAL_DISP_LAYER_WBC0)
    {
        return HI_FAILURE;
    }

    Vou_SetWbcDfpSel((HAL_WBC_DFPSEL_E)(pstWbc0->s32DfpSel));
    Vou_SetWbcOutFmt(enLayer, (HAL_DISP_INTFDATAFMT_E)(pstWbc0->s32DataFmt));
    Vou_SetWbcSpd(enLayer, pstWbc0->u32ReqInterval);

    return HI_SUCCESS;
}
HI_S32 OPTM_M_WBC0_SendTask(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0)
{
    WND_SCALER_CONFIG stZmeCfg;
    WND_INFO stWndInfo;
    //SCALER_INFO stZmeCfgOut;
    OPTM_AA_SHARPEN_INFO_S  SharpenInfo;

    if(enLayer != HAL_DISP_LAYER_WBC0)
    {
        return HI_FAILURE;
    }

    /*  calculate information of input/output window   */
    /*  set ZME */
    stZmeCfg.p_coef_addr = pstWbc0->pstZmeCoefAddr;
    stZmeCfg.source_cosited = 0;
    stZmeCfg.die_lum_en = 0;
    stZmeCfg.die_chm_en = 0;
    stZmeCfg.yuv_type = pstWbc0->iYuvType; /*  0-422;1-420;2-411;3-400 */

    stZmeCfg.ori_in_width  = pstWbc0->stCropRect.s32Width;
    stZmeCfg.ori_in_height = pstWbc0->stCropRect.s32Height;

    stZmeCfg.pan_scan_in_hoffset = 0;
    stZmeCfg.pan_scan_in_voffset = 0;
    stZmeCfg.pan_scan_in_width  = stZmeCfg.ori_in_width;
    stZmeCfg.pan_scan_in_height = stZmeCfg.ori_in_height;

    /* wbc0 fetch point is 0(after DEI) */
    if (0 == pstWbc0->s32DfpSel)
    {
        /* If the source is interlace and don't do DEI, the zme input shoule be interlace */
        if (!(pstWbc0->bSrcProgressive))
        {
            stZmeCfg.zme_input_inter = 0;
        }
        /* If the source is progressive or interlace but do DEI, the zme input shoule be progressive */
        else
        {
            stZmeCfg.zme_input_inter = 1;
        }
    }
    /* wbc0 fetch point is 4(after CBM), the zme input in decided by HD format */
    else
    {
        if (2 == pstWbc0->s32InBtmFlag)
        {
            stZmeCfg.zme_input_inter = 1;
        }
        else
        {
            stZmeCfg.zme_input_inter = 0;
        }
    }
    stZmeCfg.zme_input_bfield = pstWbc0->s32InBtmFlag & 1;

    stZmeCfg.zme_in_height = pstWbc0->stCropRect.s32Height;
    stZmeCfg.zme_in_width = pstWbc0->stCropRect.s32Width;
    stZmeCfg.zme_out_width  = pstWbc0->stOutRect.s32Width;
    stZmeCfg.zme_out_height = pstWbc0->stOutRect.s32Height; /*  interlaced  output */

    if (2 == pstWbc0->s32OutBtmFlag)
    {
        stZmeCfg.zme_output_inter = 1; /*  0-interlaced; 1-progressive */
    }
    else
    {
        stZmeCfg.zme_output_inter = 0; /*  0-interlaced; 1-progressive */
    }
    stZmeCfg.zme_output_bfield = pstWbc0->s32OutBtmFlag & 1;


    SharpenInfo.bEnable = HI_FALSE;
    SharpenInfo.s16LTICTIStrengthRatio= 0;
	SharpenInfo.s16LTICTIStrengthRatio_hd= 0;
    /* zoom  operation  */
    OPTM_AA_VZmeApi(HAL_DISP_LAYER_WBC0, &stZmeCfg, &stWndInfo, HI_NULL, (HAL_WBC_DFPSEL_E)(pstWbc0->s32DfpSel), 0, &SharpenInfo);

    /* set WBC0 input  coefficients  */
    Vou_SetWbcCropEx(enLayer, pstWbc0->stCropRect);

    HAL_DISP_SetLayerOutRect(enLayer, pstWbc0->stOutRect);

    /* All writeback point wirteback to the start address, and use the max stride */
    Vou_SetWbcStride(enLayer, pstWbc0->u32YStride);
    Vou_SetWbcAddr(enLayer, pstWbc0->u32YAddr);

#ifdef CHIP_TYPE_hi3716mv330
    Vou_SetWbcCStride(enLayer, pstWbc0->u32CStride);
    Vou_SetWbcCAddr(enLayer, pstWbc0->u32CAddr);
    //printk("Y:0x%08x %u, C:0x%08x %u\n", pstWbc0->u32YAddr, pstWbc0->u32YStride, pstWbc0->u32CAddr, pstWbc0->u32CStride);
#endif

    /* set WBC0 output coefficients  */
    if (2 == pstWbc0->s32OutBtmFlag)
    {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_PROGRESSIVE);
    }
    else if (1 == pstWbc0->s32OutBtmFlag)
    {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_BOTTOM);
    }
    else
    {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_TOP);
    }

    /* start WBC0 */
    Vou_SetWbcEnable(enLayer, HI_TRUE);

    /* register update */
    HAL_DISP_SetRegUpNoRatio(enLayer);

    return HI_SUCCESS;
}

HI_S32 OPTM_M_WBC0_SetEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable)
{
    if(enLayer != HAL_DISP_LAYER_WBC0)
    {
        return HI_FAILURE;
    }

    Vou_SetWbcEnable(enLayer, bEnable);

    /* register  update  */
    HAL_DISP_SetRegUpNoRatio(enLayer);

    return HI_SUCCESS;
}
#endif

HI_VOID OPTM_M_VO_SaveVXD(HAL_DISP_LAYER_E enLayer)
{
    DRV_VOU_SaveVXD(enLayer, g_DispRegBuf.u32StartVirAddr);

    HAL_DISP_EnableLayer(enLayer, HI_FALSE);

    if (HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        Vou_SetWbcEnable(HAL_DISP_LAYER_WBC1, HI_FALSE);
    }

    return;
}

HI_VOID OPTM_M_VO_RestoreVXD(HAL_DISP_LAYER_E enLayer)
{
    DRV_VOU_RestoreVXD(enLayer, g_DispRegBuf.u32StartVirAddr);

    return;
}

HI_VOID OPTM_M_VO_SaveWbc(HAL_DISP_LAYER_E enLayer)
{
    DRV_VOU_SaveWbc(enLayer, g_DispRegBuf.u32StartVirAddr);

    Vou_SetWbcEnable(enLayer, HI_FALSE);

    return;
}

HI_VOID OPTM_M_VO_RestoreWbc(HAL_DISP_LAYER_E enLayer)
{
    DRV_VOU_RestoreWbc(enLayer, g_DispRegBuf.u32StartVirAddr);

    return;
}

HI_S32 OPTM_M_VO_AlgControl(HI_UNF_ALG_TYPE_E enAlgType, HI_BOOL bEnable, HI_UNF_VO_DEV_MODE_E *penDevMode,const HI_UNF_ALG_CONTROL_S *pAlgControl)
{
    HI_S32 Ret = HI_SUCCESS;
    OPTM_M_VO_S *pstVo;
    HAL_DISP_LAYER_E enLayer;

    for (enLayer = HAL_DISP_LAYER_VIDEO1; enLayer <= HAL_DISP_LAYER_VIDEO3; enLayer ++)
    {
        switch(enAlgType)
        {
            case HI_ALG_TYPE_DEI:
                {
                    HI_ERR_VO("can not control DIE module in this version.\n");
                    Ret = HI_FAILURE;
                    break;
                }
            case HI_ALG_TYPE_ACC:
                {
#ifdef HI_DISP_ACC_SUPPORT
                    pstVo = OPTM_M_VO_GetHandle(enLayer);
                    pstVo->bAccEnable = bEnable;
                    if(!(pAlgControl->alg_info))
                    {
                        HI_ERR_VO("alg_info is null ,need to pass in a accRatio parameter!\n");
                        break;
                    }
                    pstVo->s32AccRatio = *(HI_S32 *)(pAlgControl->alg_info);
                    if(! (pstVo->bAccEnable))
                    {
                        pstVo->s32AccRatio = 0;
                    }
                    if(pstVo->bAccEnable && enLayer == HAL_DISP_LAYER_VIDEO1)
                    {
                        (HI_VOID)OPTM_M_UpdateACC(enLayer);
                    }
#endif
                    break;
                }
            case HI_ALG_TYPE_ACM:
                {
                    pstVo = OPTM_M_VO_GetHandle(enLayer);
                    pstVo->bAcmEnable= bEnable;
                    break;
                }
                /* for mv300 sharpness */
            case HI_ALG_TYPE_SHARPNESS:
                {
                    pstVo = OPTM_M_VO_GetHandle(enLayer);
                    pstVo->bSharpenEnable= bEnable;
                    memcpy(&(pstVo->alg_controll_info), pAlgControl->alg_info, sizeof(HI_UNF_VO_SHARPEN_INFO_S));
                    break;
                }
            case HI_ALG_TYPE_DNR:
                {
                    VO_SetDNREnable(bEnable);
                    break;
                }
            default:
                {
                    HI_ERR_VO("invalid HI_UNF_ALG_TYPE_E type.\n");
                    Ret = HI_FAILURE;
                    break;
                }
        }
    }
    return Ret;
}

#ifdef HI_VDP_HD_SD_RATIO_INDEPENDENT_SUPPORT
HI_S32 OPTM_M_WBC0_SendTask_standalone(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0, HI_S32 nTimes)
{
    WND_SCALER_CONFIG stZmeCfg;
    WND_INFO stWndInfo;
    //SCALER_INFO stZmeCfgOut;
    HI_U32 newAddr;
    HI_RECT_S stLocInRec, stLocOutRect;
    HI_RECT_S stScrnWin;
    OPTM_AA_SHARPEN_INFO_S  SharpenInfo;

    if(enLayer != HAL_DISP_LAYER_WBC0)
        return HI_FAILURE;


    OPTM_M_GetDispScreen(HAL_DISP_CHANNEL_DSD, &stScrnWin);
    stLocInRec = pstWbc0->stCropRect;
    stLocOutRect = pstWbc0->stOutRect;
    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d stLocInRec (%d, %d, %d, %d) enInAspectRatio %d stLocOutRect (%d, %d, %d, %d) enOutAspectRatio %d, enOutAspectCvrs %d\r\n", __func__, __LINE__, stLocInRec.s32X,stLocInRec.s32Y, stLocInRec.s32Width, stLocInRec.s32Height, pstWbc0->enInAspectRatio, stLocOutRect.s32X, stLocOutRect.s32Y, stLocOutRect.s32Width, stLocOutRect.s32Height, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
    //stLocInRec.s32X = 0;
    //stLocInRec.s32Y = 0;
#if 1
    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d stLocInRec (%d, %d, %d, %d) enInAspectRatio %d stLocOutRect (%d, %d, %d, %d) enOutAspectRatio %d, enOutAspectCvrs %d\r\n", __func__, __LINE__, stLocInRec.s32X,stLocInRec.s32Y, stLocInRec.s32Width, stLocInRec.s32Height, pstWbc0->enInAspectRatio, stLocOutRect.s32X, stLocOutRect.s32Y, stLocOutRect.s32Width, stLocOutRect.s32Height, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
#if 0
    /* width/high ratio conversion */
    OPTM_AA_RatioProc(&(stLocInRec), pstWbc0->enInAspectRatio,
            &(stLocOutRect), pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
#else
    {
        HI_RECT_S TmpInRect, TmpOutRect;

        TmpInRect  = stLocInRec;
        TmpOutRect = stLocOutRect;

        /* width/high ratio conversion */
        OPTM_AA_RatioProcess(&stLocInRec, pstWbc0->enInAspectRatio,
                &stLocOutRect, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs, &stScrnWin);

        // In and Out Rect check
        if (   (stLocOutRect.s32X < 0) || (stLocOutRect.s32Width < OPTM_RECT_MIN_W)
                || (stLocOutRect.s32Y < 0) || (stLocOutRect.s32Height < OPTM_RECT_MIN_H) )

        {
            stLocInRec   = TmpInRect;
            stLocOutRect = TmpOutRect;
        }
    }
#endif

    /*for 1080--->32 process  */
    stLocOutRect.s32Height *= nTimes;
#if 0
    /* calculate line number of line-decimation */
    if (pstWbc0->s32OutBtmFlag == 2) {
        s32ExtLine = OPTM_M_CalExtractLineNumber(stLocInRec.s32Height, stLocOutRect.s32Height,
                HI_TRUE, &bDoDie);
    }
    else {
        s32ExtLine = OPTM_M_CalExtractLineNumber(stLocInRec.s32Height, stLocOutRect.s32Height/2,
                HI_FALSE, &bDoDie);
    }

    /* after decimation, revise Y and Height */
    if (s32ExtLine > 1) {
        stLocInRec.s32Y      = stLocInRec.s32Y / s32ExtLine;
        stLocInRec.s32Height = (stLocInRec.s32Height / s32ExtLine) & 0xfffffffcL;
    }
#endif

#endif
    stLocInRec.s32X = stLocInRec.s32X & 0xfffffffeL;
    stLocInRec.s32Y = stLocInRec.s32Y & 0xfffffffeL;
    stLocInRec.s32Width = stLocInRec.s32Width & 0xfffffffeL;
    stLocInRec.s32Height = stLocInRec.s32Height & 0xfffffffeL;

    stLocOutRect.s32X = stLocOutRect.s32X & 0xfffffffeL;
    stLocOutRect.s32Y = stLocOutRect.s32Y & 0xfffffffeL;
    stLocOutRect.s32Height = stLocOutRect.s32Height & 0xfffffffeL;
    stLocOutRect.s32Width = stLocOutRect.s32Width & 0xfffffffeL;

    stZmeCfg.zme_in_height = stLocInRec.s32Height;
    stZmeCfg.zme_in_width = stLocInRec.s32Width;
    stZmeCfg.ori_in_width  = stLocInRec.s32Width;
    stZmeCfg.ori_in_height = stLocInRec.s32Height;
    stZmeCfg.zme_out_width  = stLocOutRect.s32Width;
    stZmeCfg.zme_out_height = stLocOutRect.s32Height; /*  interlaced  output */

    /*  calculate information of input/output window   */
    /*  set ZME */
    stZmeCfg.p_coef_addr = pstWbc0->pstZmeCoefAddr;
    stZmeCfg.source_cosited = 0;
    stZmeCfg.die_lum_en = 0;
    stZmeCfg.die_chm_en = 0;
    stZmeCfg.yuv_type = pstWbc0->iYuvType; /*  0-422;1-420;2-411;3-400 */

    stZmeCfg.pan_scan_in_hoffset = 0;
    stZmeCfg.pan_scan_in_voffset = 0;
    stZmeCfg.pan_scan_in_width  = stLocInRec.s32Width;
    stZmeCfg.pan_scan_in_height = stLocInRec.s32Height;

    if (2 == pstWbc0->s32InBtmFlag)
        stZmeCfg.zme_input_inter = 1;
    else
        stZmeCfg.zme_input_inter = 0;
    stZmeCfg.zme_input_bfield = pstWbc0->s32InBtmFlag & 1;

    if (2 == pstWbc0->s32OutBtmFlag)
        stZmeCfg.zme_output_inter = 1; /*  0-interlaced; 1-progressive */
    else
        stZmeCfg.zme_output_inter = 0; /*  0-interlaced; 1-progressive */
    stZmeCfg.zme_output_bfield = pstWbc0->s32OutBtmFlag & 1;

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d zme_input_bfield %d zme_output_bfield %d\r\n", __func__, __LINE__, stZmeCfg.zme_input_bfield, stZmeCfg.zme_output_bfield);

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d stLocInRec (%d, %d, %d, %d) enInAspectRatio %d stLocOutRect (%d, %d, %d, %d) enOutAspectRatio %d, enOutAspectCvrs %d\r\n", __func__, __LINE__, stLocInRec.s32X,stLocInRec.s32Y, stLocInRec.s32Width, stLocInRec.s32Height, pstWbc0->enInAspectRatio, stLocOutRect.s32X, stLocOutRect.s32Y, stLocOutRect.s32Width, stLocOutRect.s32Height, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
    /* zoom  operation  */
    SharpenInfo.bEnable = HI_FALSE;
    SharpenInfo.s16LTICTIStrengthRatio= 0;
	SharpenInfo.s16LTICTIStrengthRatio_hd= 0;
    OPTM_AA_VZmeApi(HAL_DISP_LAYER_WBC0, &stZmeCfg, &stWndInfo, HI_NULL, (HAL_WBC_DFPSEL_E)(pstWbc0->s32DfpSel), 0,&SharpenInfo);

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d stLocInRec (%d, %d, %d, %d) enInAspectRatio %d stLocOutRect (%d, %d, %d, %d) enOutAspectRatio %d, enOutAspectCvrs %d\r\n", __func__, __LINE__, stLocInRec.s32X,stLocInRec.s32Y, stLocInRec.s32Width, stLocInRec.s32Height, pstWbc0->enInAspectRatio, stLocOutRect.s32X, stLocOutRect.s32Y, stLocOutRect.s32Width, stLocOutRect.s32Height, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
#if 0
    stLocInRec.s32X      = stWndInfo.lum_coordinate_x;
    stLocInRec.s32Y      = stWndInfo.lum_coordinate_y;
    stLocInRec.s32Width  = stWndInfo.video_in_width;
    stLocInRec.s32Height = stWndInfo.video_in_height;
#endif

    stLocOutRect.s32X = stLocOutRect.s32X & 0xfffffffeL;
    stLocOutRect.s32Y = stLocOutRect.s32Y & 0xfffffffeL;
    stLocOutRect.s32Height = stLocOutRect.s32Height & 0xfffffffeL;
    stLocOutRect.s32Width = stLocOutRect.s32Width & 0xfffffffeL;

    /* set WBC0 input  coefficients  */
    Vou_SetWbcCropEx(enLayer, stLocInRec);

    HAL_DISP_SetLayerOutRect(enLayer, stLocOutRect);
    Vou_SetWbcStride(enLayer, pstWbc0->u32Stride);

    //newAddr = pstWbc0->u32Addr+stLocOutRect.s32Y*pstWbc0->u32Stride + 2*stLocOutRect.s32X;
    //newAddr = newAddr & 0xfffffff0L;
    newAddr = pstWbc0->u32Addr;
    Vou_SetWbcAddr(enLayer, newAddr);

    /* restore outrect */
    stLocOutRect.s32Height /= nTimes;

    pstWbc0->stOutRect = stLocOutRect;

    /* set WBC0 output coefficients  */
    if (2 == pstWbc0->s32OutBtmFlag) {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_PROGRESSIVE);
    }
    else if (1 == pstWbc0->s32OutBtmFlag) {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_BOTTOM);
    }
    else {
        Vou_SetWbcOutIntf(enLayer, HAL_DISP_TOP);
    }

    //DEBUG_PRINTK(KERN_DEBUG "<---------------------------------------->func %s line %d stLocInRec (%d, %d, %d, %d) enInAspectRatio %d stLocOutRect (%d, %d, %d, %d) enOutAspectRatio %d, enOutAspectCvrs %d\r\n", __func__, __LINE__, stLocInRec.s32X,stLocInRec.s32Y, stLocInRec.s32Width, stLocInRec.s32Height, pstWbc0->enInAspectRatio, stLocOutRect.s32X, stLocOutRect.s32Y, stLocOutRect.s32Width, stLocOutRect.s32Height, pstWbc0->enOutAspectRatio, pstWbc0->enOutAspectCvrs);
    /* start WBC0 */
    Vou_SetWbcEnable(enLayer, HI_TRUE);

    /* register update */
    HAL_DISP_SetRegUpNoRatio(enLayer);

    return HI_SUCCESS;
}
#endif

HI_U32  OPTM_M_VO_GetHDEnable(HI_VOID)
{
    //HI_U32 vn1, vn2;
    HI_U32 Ret = 0;

    Ret = OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_VIDEO1) ;

    return Ret;

}
#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

