/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_alg_api.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_ALG_API_H__
#define __OPTM_ALG_API_H__

#include "optm_alg.h"
#include "hi_unf_disp.h"

#ifndef __ASM__
#include "hi_boot_common.h"
#endif

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#ifdef __ASM__
typedef struct hiMMZ_BUFFER_S
{
    HI_U32 u32StartVirAddr;
    HI_U32 u32StartPhyAddr;
    HI_U32 u32Size;
}MMZ_BUFFER_S;
#endif

/*****************************************************************************
            VIDEO ZOOM PROCESS FUNCTION START......
*****************************************************************************/

/* VO ZME coefficients */
typedef struct tagOPTM_VZME_COEF_S
{
    MMZ_BUFFER_S stMBuf;
    FIR_COEF_ADDR_S stCoefAddr;
}OPTM_VZME_COEF_S;

/*
 * the further division of bits, is to match 10 bit MEM arrangement;
 * on the other hand, if bit field operates across int, there will be error
 */
typedef struct hiVO_ZOOM_BIT_S
{
    HI_S32  bits_0  :   10  ;
    HI_S32  bits_1  :   10  ;
    HI_S32  bits_2  :   10  ;
    HI_S32  bits_32 :   2   ;
    HI_S32  bits_38 :   8   ;
    HI_S32  bits_4  :   10  ;
    HI_S32  bits_5  :   10  ;
    HI_S32  bits_64 :   4   ;
    HI_S32  bits_66 :   6   ;
    HI_S32  bits_7  :   10  ;
    HI_S32  bits_8  :   10  ;
    HI_S32  bits_96 :   6   ;
    HI_S32  bits_94 :   4   ;
    HI_S32  bits_10 :   10  ;
    HI_S32  bits_11 :   10  ;
    HI_S32  bits_12 :   8   ;
} VO_ZOOM_BIT_S;

typedef struct hiVO_ZOOM_BITARRAY_S
{
    HI_U32        u32Size;
    VO_ZOOM_BIT_S stBit[12];
} VO_ZOOM_BITARRAY_S;


/* DIE module passage parameters */
typedef struct hiOPTM_VD_DIE_S
{
    MMZ_BUFFER_S stMBuf;

    /* save the statistic information for DIE writeback */
    HI_U32 u32DieInfoBufPhyAddr;
    HI_U32 u32DieInfoBufVirAddr;

    REF_FLD stRefFld;             /**/
    OPTM_ALG_PBCTX_S stDieCtxt;   /* DIE passage parameters */
    DIE_CONFIG stDieCfg;

    DIE_CONFIG stDieCfgNew;
    HI_BOOL bNewCfgFlag;

    OPTM_ALG_BTMODE_S stBtMode;
    HI_U32 dieStAddr[10];

    DETECT_STAT_S stLastDutRslt;
    REG_PLAYBACK_CONFIG_S stCfgInfo;
    OPTM_ALG_PD32N2PFRC_CTRL stFrcCtrl;
    OPTM_ALG_WinDeiEn_S stWinDeiEn;
}OPTM_VD_DIE_S;

/* DIE detection information */
typedef struct tagOPTM_AA_DET_INFO_S
{
    HI_S32 s32IsProgressive; //0, I; 1, P; -1, unknown */
    HI_S32 s32TopFirst;      //0, bt; 1, tb; -1, unknown */
}OPTM_AA_DET_INFO_S;

/*sharpen info passed by vo */
typedef struct tagOPTM_AA_SHARPEN_INFO_S
{
    HI_BOOL  bEnable;
    HI_S16  s16LTICTIStrengthRatio; 
    HI_S16  s16LTICTIStrengthRatio_hd; 
}OPTM_AA_SHARPEN_INFO_S;


/* de-initialize/initialize video layer zoom ratio */
HI_S32  OPTM_AA_InitVzmeCoef(OPTM_VZME_COEF_S *pstZmeModule);
HI_VOID OPTM_AA_DeInitVzmeCoef(OPTM_VZME_COEF_S *pstZmeModule);

/* Get Zme Information */
HI_VOID OPTM_AA_VZmeApi( HAL_DISP_LAYER_E   enLayer,
                                   WND_SCALER_CONFIG *pstWndIn,
                                   WND_INFO *         pstWndCfg,
                                   OPTM_VD_DIE_S *    pstDie,
                                   HAL_WBC_DFPSEL_E   enDfpSel,
                                   HI_U32 u32FrameType,
                        OPTM_AA_SHARPEN_INFO_S *pstSharpenInfo);


/*****************************************************************************
            GFX ZOOM PROCESS FUNCTION START......
            graphic layer loading coefficients
*****************************************************************************/
typedef struct tagOPTM_GZME_COEF_S{
    MMZ_BUFFER_S stMBuf;
    GFX_FIR_COEF_ADDR_S stCoefAddr;
}OPTM_GZME_COEF_S;

HI_S32  OPTM_AA_InitGzmeCoef(OPTM_GZME_COEF_S *pstZmeModule, HI_BOOL bEnSharp);
HI_VOID OPTM_AA_DeInitGzmeCoef(OPTM_GZME_COEF_S *pstZmeModule);

HI_VOID OPTM_AA_GfxZmeApi(HAL_DISP_LAYER_E enLayer, GFX_SCALER_CONFIG_S *pstZmeCfgIn, HI_U32 *pBtmOffset);


/*****************************************************************************
            DIE PROCESS FUNCTION START......
*****************************************************************************/
#define OPTM_AA_DIE_WB_BUFFER_SIZE  320
#define OPTM_AA_DIE_LIST_MAX_LENGTH 8

#ifndef __BOOT__
HI_VOID OPTM_DieListServiceInit(HI_VOID);
HI_VOID OPTM_DieListServiceSetWbAddr(HI_U32 u32WbAddr);
HI_VOID OPTM_DieListService(HI_U32 u32P0, HI_U32 u32P1);


/* initialize DIE module */
HI_S32 OPTM_AA_InitDieModule(OPTM_VD_DIE_S *pstDieModule, HI_U32 flag);

/* de-initialize DIE module */
HI_VOID OPTM_AA_DeInitDieModule(OPTM_VD_DIE_S *pstDieModule);

/* reset DIE module */
HI_S32 OPTM_AA_ResetDieModule(OPTM_VD_DIE_S *pstDieModule, HI_BOOL bTopFirst, HI_U32 u32Width, HI_U32 u32Height);


HI_S32 OPTM_AA_ProcRefFld(OPTM_VD_DIE_S *pstDie, HI_S32 InBtmFlag);

/* get offline DIE information */
HI_VOID OPTM_AA_GetOfflineDieInfo(HAL_DISP_LAYER_E enLayer, OPTM_VD_DIE_S *pstDieModule);

/* HI_VOID OPTM_AA_DieApi(HAL_DISP_LAYER_E enLayer, OPTM_VD_DIE_S *pstDieModule, 
                          HI_S32 nRepeat, HI_S32 nDrop, HI_BOOL bWbc1En, OPTMALG_VDEC_INFO_S *pstVdecInfo); */
HI_VOID OPTM_AA_DieCalcApi(HAL_DISP_LAYER_E enLayer, OPTM_VD_DIE_S *pstDieModule, HI_S32 nRepeat, HI_S32 nDrop,
                                     HI_BOOL bWbc1En, HI_UNF_VO_FRAMEINFO_S *pstFrmInfo, HI_BOOL bRefFldOpppzed, HI_BOOL n2pFlag)  ;
/* HI_VOID OPTM_AA_DieCfgApi(HAL_DISP_LAYER_E enLayer, OPTM_VD_DIE_S *pstDieModule, HI_S32 nRepeat,
                             HI_BOOL bRefFldOpppzed, HI_BOOL bWbc1En); */

HI_VOID OPTM_AA_DieCfgApi(HAL_DISP_LAYER_E enLayer, OPTM_VD_DIE_S *pstDieModule, HI_S32 nRepeat,HI_BOOL bRefFldOpppzed, HI_BOOL bWbc1En, HI_BOOL bDoDei, HI_U32 u32WinNum, HI_U32 u32VRatio);


/* DIE module detect information */
HI_VOID OPTM_AA_GetDieDetInfo(OPTM_VD_DIE_S *pstDieModule, OPTM_AA_DET_INFO_S *pstInfo);
#endif
/*****************************************************************************
            ACC/GAMMA PROCESS FUNCTION START......
*****************************************************************************/
#define OPTM_AA_GMM_COMPONENT_COEF_NUM 40
#define OPTM_AA_GMM_COEF_NUM 256
#define OPTM_AA_ACC_TABLE_SIZE 45

typedef struct tagOPTM_GMM_COEF_S{
    HAL_DISP_OUTPUTCHANNEL_E enDisp;
    HI_BOOL bInited;
    HI_BOOL bEnable;

    MMZ_BUFFER_S stMBuf;
}OPTM_AA_GMM_COEF_S;


HI_S32 OPTM_AA_InitGmmCoef(HI_VOID);
HI_S32 OPTM_AA_DeInitGmmCoef(HI_VOID);

HI_S32 OPTM_AA_InitDispGmm(HAL_DISP_OUTPUTCHANNEL_E enDisp, OPTM_AA_GMM_COEF_S *pstGamma);
HI_S32 OPTM_AA_DeInitDispGmm(OPTM_AA_GMM_COEF_S *pstGamma);
HI_S32 OPTM_AA_SetGmmCoef(OPTM_AA_GMM_COEF_S *pstGamma, HI_UNF_ENC_FMT_E enEncFmt);
HI_S32 OPTM_AA_SetGmmEnable(OPTM_AA_GMM_COEF_S *pstGamma, HI_BOOL bEnable);


typedef struct tagOPTM_ACC_S{
    HAL_DISP_LAYER_E enLayer;
    HI_BOOL bInited;
    HI_BOOL bEnable;
    HI_BOOL bMasked;
    HI_U32 u32ResetCount;
}OPTM_AA_ACC_S;

HI_S32 OPTM_AA_AccCoefInit(HI_VOID);
HI_S32 OPTM_AA_AccCoefDeInit(HI_VOID);

HI_S32 OPTM_AA_AccInitLayer(HAL_DISP_LAYER_E enLayer, OPTM_AA_ACC_S *pstAcc);
HI_S32 OPTM_AA_AccDeInitLayer(OPTM_AA_ACC_S *pstAcc);
HI_S32 OPTM_AA_AccResetLayer(OPTM_AA_ACC_S *pstAcc);
HI_S32 OPTM_AA_AccSetLayerEnable(OPTM_AA_ACC_S *pstAcc, HI_BOOL bEnable);
//HI_S32 OPTM_AA_AccSetLayerMasked(OPTM_AA_ACC_S *pstAcc, HI_BOOL bMasked);

/*****************************************************************************
            ACM PROCESS FUNCTION START......
*****************************************************************************/
typedef struct tagOPTM_ACM_S{
    HAL_DISP_LAYER_E enLayer;
    HI_BOOL bInited;
    HI_BOOL bEnable;
        
    HAL_DISP_ACMINFO_S stAcm_info;
    HI_BOOL bTypeValue;
}OPTM_AA_ACM_S;

HI_S32 OPTM_AA_InitAcm(HAL_DISP_LAYER_E enLayer, OPTM_AA_ACM_S *pstAcm);
HI_S32 OPTM_AA_SetAcmEnable(OPTM_AA_ACM_S *pstAcm, HI_BOOL bEnable);

/*****************************************************************************
            RATIO PROCESS FUNCTION START......
            processing of image with/height ratio
*****************************************************************************/
HI_S32 OPTM_AA_RatioProc(HI_RECT_S *pInWnd, HI_UNF_ASPECT_RATIO_E enInRatio,
                         HI_RECT_S *pOutWnd, HI_UNF_ASPECT_RATIO_E enOutRatio,
                         HI_UNF_ASPECT_CVRS_E enCvrsMode);


/*****************************************************************************
            CSC PROCESS FUNCTION START......
*****************************************************************************/
/* color space */
typedef enum hiOPTM_CS_E
{
    OPTM_CS_eUnknown            = 0,
    OPTM_CS_eItu_R_BT_709       = 1,
    OPTM_CS_eFCC                = 4,
    OPTM_CS_eItu_R_BT_470_2_BG  = 5,
    OPTM_CS_eSmpte_170M         = 6,
    OPTM_CS_eSmpte_240M         = 7,
    OPTM_CS_eXvYCC_709          = OPTM_CS_eItu_R_BT_709,
    OPTM_CS_eXvYCC_601          = 8,
    OPTM_CS_eRGB                = 9,
    OPTM_CS_BUTT
} OPTM_CS_E;

/*
* color space transformation mode 
*
typedef enum hiOPTM_CSC_MODE_E
{
    OPTM_CSC_MODE_NONE = 0,
    OPTM_CSC_MODE_BT601_TO_BT601,
    OPTM_CSC_MODE_BT601_TO_BT709,
    OPTM_CSC_MODE_BT601_TO_RGB,

    OPTM_CSC_MODE_BT709_TO_BT601,
    OPTM_CSC_MODE_BT709_TO_BT709,
    OPTM_CSC_MODE_BT709_TO_RGB,

    OPTM_CSC_MODE_RGB_TO_BT601,
    OPTM_CSC_MODE_RGB_TO_BT709,
    OPTM_CSC_MODE_RGB_TO_RGB,
    
    OPTM_CSC_MODE_BUTT
} OPTM_CSC_MODE_E;
*/

typedef struct hiHI_UNF_YCBCR_COLOR_S
{
    HI_U8 u8Y;
    HI_U8 u8Cb;
    HI_U8 u8Cr;
} HI_UNF_YCBCR_COLOR_S;


/* RGB_YUV color space transformation */
HI_VOID OPTM_ALG_API_Rgb2Yuv(HI_UNF_DISP_BG_COLOR_S *pstRgbColor,
                             HI_UNF_YCBCR_COLOR_S *pYuvColor);

/* compute CSC coefficients */
HI_VOID OPTM_ALG_API_CalcChroma(OPTM_CS_E eInputColorSpace, OPTM_CS_E eOutputColorSpace,
                                                 HI_U32 Saturation, HI_U32 Contrast,HI_U32 Hue,
                                                 HI_U32 Kr, HI_U32 Kg, HI_U32 Kb,
                                                 IntfCscCoef_S *pstCSCCoef);

/* compute DC component */
HI_VOID OPTM_ALG_API_CalcCscDc(OPTM_CS_E eInputColorSpace, OPTM_CS_E eOutputColorSpace,
                               HI_U32 Bright, HI_U32 Contrast, IntfCscDcCoef_S *pstCscDcCoef);


HI_VOID  OPTM_ALG_TICoefInit(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md);

HI_VOID OPTM_AA_VTIApi(HAL_DISP_LAYER_E enLayer,  HI_U32 u32Md,  LTICTI_S *LTICTI);
HI_VOID OPTM_AA_GFX_VTIApi(HAL_DISP_LAYER_E enLayer, GFX_SCALER_CONFIG_S *pstCfg, HI_U32 u32Md);
HI_BOOL OPTM_AA_GetDie5FMode(OPTM_VD_DIE_S *pstDieModule, HI_BOOL bWbc1En);
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_ALG_API_H__ */

