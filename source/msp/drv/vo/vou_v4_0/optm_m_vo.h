
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_m_vo.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_M_VO_H__
#define __OPTM_M_VO_H__

#include "optm_hal.h"
#include "optm_alg_api.h"
#include "optm_fb.h"
#include "optm_m_disp.h"
#include "optm_disp_rwzb.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/* optm rect limit */
#define OPTM_RECT_MIN_W 64
#define OPTM_RECT_MIN_H 64
#define OPTM_RECT_MIN_X 0
#define OPTM_RECT_MIN_Y 0
#define OPTM_RECT_MAX_W 4096
#define OPTM_RECT_MAX_H 2400
#define OPTM_RECT_MAX_X (OPTM_RECT_MAX_W - OPTM_RECT_MIN_W)
#define OPTM_RECT_MAX_Y (OPTM_RECT_MAX_H - OPTM_RECT_MIN_H)

#define OPTM_IRECT_MIN_W 64
#define OPTM_IRECT_MIN_H 64
#define OPTM_IRECT_MIN_X 0
#define OPTM_IRECT_MIN_Y 0
#define OPTM_IRECT_MAX_W 1920
#define OPTM_IRECT_MAX_H 1080
#define OPTM_IRECT_MAX_X (OPTM_IRECT_MAX_W - OPTM_IRECT_MIN_W)
#define OPTM_IRECT_MAX_Y (OPTM_IRECT_MAX_H - OPTM_IRECT_MIN_H)

#define OPTM_ORECT_MIN_W 64
#define OPTM_ORECT_MIN_H 64
#define OPTM_ORECT_MIN_X 0
#define OPTM_ORECT_MIN_Y 0
#define OPTM_ORECT_MAX_W 1920
#define OPTM_ORECT_MAX_H 1080
#define OPTM_ORECT_MAX_X (OPTM_ORECT_MAX_W - OPTM_ORECT_MIN_W)
#define OPTM_ORECT_MAX_Y (OPTM_ORECT_MAX_H - OPTM_ORECT_MIN_H)

#define OPTM_VO_SATURATION_NORMAL   50
#define	OPTM_VO_SATURATION_RWZB	    52
#define	OPTM_VO_SATURATION_BOWTIE   49

/********************************************************************/
/*
typedef enum
{
    PAT_UNKNOWN = 0,
    PAT_CCITT033,  //CVBS
    PAT_CCITT18,   //CVBS
    PAT_M576i,     //YPbPr
    PAT_480,       //YPbPr
    PAT_720P50,    //YPbPr
    PAT_720P59,    //YPbPr
    PAT_1080,      //YPbPr
    PAT_CBAR576_75 //CVBS
} DNR_PAT_E;

*/

/* do basic revise for rect */
HI_VOID VoReviseRect1(HI_RECT_S *pstRect);

/* based on base rect, do basic revise for rect */
HI_VOID VoReviseRect2(HI_RECT_S *pstBaseRect, HI_RECT_S *pstDstRect);

HI_VOID VoReviseOutRect(HI_RECT_S *pstDispRect, HI_RECT_S *pstDstRect, HI_RECT_S *pstSrcRect);

HI_VOID VOReviseRectBase2Rect(HI_RECT_S *pstRect0, HI_RECT_S *pstRect1, HI_RECT_S *pstDispRect);


/**************************************************************
 *                     VO MODULE                              *
 **************************************************************/
/* add by t00177539, mv300 add VED  */
#define OPTM_M_VO_MAX_LAYER 4

/* stable property, no need of setting for each frame/field */
typedef struct  tagOPTM_M_VO_ATTR_S
{
    HI_U32 u32Alpha; /* 0~255->0~128 */

    HI_UNF_DISP_BG_COLOR_S stBgc;
    HI_U32 u32BgcAlpha; /* 0~255->0~128 */

    HI_BOOL bCscEnable;
    OPTM_CS_E enSrcCs; /* color space transformation mode */
    OPTM_CS_E enDstCs; /* color space transformation mode */

    HI_U32 u32Bright;
    HI_U32 u32Contrast;
    HI_U32 u32Saturation;
    HI_U32 u32Hue;
    HI_U32 u32Kr;
    HI_U32 u32Kg;
    HI_U32 u32Kb;

    HAL_IFIRMODE_E enIFIRMode;
    HI_BOOL bOffLine;
    HI_UNF_VO_SHARPEN_INFO_S  Sharpen_info;
    HI_S32 s32AccRatio;

    HI_BOOL bMute;
}OPTM_M_VO_ATTR_S;

typedef struct  tagOPTM_M_VO_CAP_S
{
    HI_BOOL bDieFunc;
    HI_BOOL bZmeFunc;
    HI_BOOL bAcmFunc;
    HI_BOOL bAccFunc;
    HI_BOOL bSharpenFunc;
}OPTM_M_VO_CAP_S;

typedef struct  tagOPTM_M_VO_SHARE_S
{
    HI_RECT_S stInRect;
    HI_U32    u32InBtmFlag;

    HI_RECT_S stOutRect;
    HI_U32    u32OutBtmFlag;
}OPTM_M_VO_SHARE_S;

typedef struct tagOPTM_M_VO_S
{
    HAL_DISP_LAYER_E enLayer; /* video channel ID */
    HI_BOOL bEnable;

    OPTM_M_VO_ATTR_S stAttr;
    OPTM_M_VO_CAP_S stCap;

    HI_BOOL bAccEnable;
    HI_BOOL bAccMasked;
    HI_S32 s32AccRatio;

    HI_BOOL bSharpenEnable;
    HI_BOOL bSharpenMask;
    HI_BOOL bDnrEnable;

    OPTM_AA_ACC_S stAcc;

    OPTM_AA_ACM_S stAcmInfo;
    HI_BOOL bAcmEnable;
    HI_BOOL bAcmMasked;

    HI_UNF_VO_SHARPEN_INFO_S  alg_controll_info;

    HI_BOOL bShareEnable;
    OPTM_M_VO_SHARE_S stShareInfo;
}OPTM_M_VO_S;

/* set VM superposition priority */
HI_VOID OPTM_M_SetVmLayer(HAL_DISP_LAYER_E  enPri2Layer, HAL_DISP_LAYER_E  enPri1Layer, HAL_DISP_LAYER_E  enPri0Layer);

HI_S32 OPTM_M_VO_InitAttr(HAL_DISP_LAYER_E enLayer);
HI_S32 OPTM_M_VO_GetAttr(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_ATTR_S *pstAttr);
HI_S32 OPTM_M_VO_SetAttr(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_ATTR_S *pstAttr);

HI_S32 OPTM_M_VO_SetEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);
HI_S32 OPTM_M_VO_SetDieEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);
HI_S32 OPTM_M_VO_SetCapZme(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);

HI_S32 OPTM_M_VO_GetCap(HAL_DISP_LAYER_E enLayer, OPTM_M_VO_CAP_S *pstCap);
HI_S32 OPTM_M_VO_SetCapAcc(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);
HI_S32 OPTM_M_VO_SetCapAcm(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);


HI_S32 OPTM_M_VO_SetAlpha(HAL_DISP_LAYER_E enLayer, HI_U32 u32Alpha);
HI_S32 OPTM_M_VO_SetBgc(HAL_DISP_LAYER_E enLayer, HI_UNF_DISP_BG_COLOR_S *pstBgc);
HI_S32 OPTM_M_VO_SetBgcAlpha(HAL_DISP_LAYER_E enLayer, HI_U32 u32BgcAlpha);
HI_S32 OPTM_M_VO_SetFirMode(HAL_DISP_LAYER_E enLayer, HAL_IFIRMODE_E enIFIRMode);
HI_S32 OPTM_M_VO_SetMute(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);
HI_S32 OPTM_M_VO_SetOffLine(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);

/* color space transformation */
HI_S32 OPTM_M_VO_SetCscEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);

HI_S32 OPTM_M_VO_SetCscMode(HAL_DISP_LAYER_E enLayer, OPTM_CS_E enSrcCs, OPTM_CS_E enDstCs);
HI_VOID OPTM_M_VO_GetCscMode(HAL_DISP_LAYER_E enLayer, OPTM_CS_E *penSrcCs, OPTM_CS_E *penDstCs);
HI_S32 OPTM_M_VO_SetBright(HAL_DISP_LAYER_E enLayer, HI_U32 u32Bright);
HI_S32 OPTM_M_VO_SetContrast(HAL_DISP_LAYER_E enLayer, HI_U32 u32Contrast);
HI_S32 OPTM_M_VO_SetSaturation(HAL_DISP_LAYER_E enLayer, HI_U32 u32Saturation);
HI_S32 OPTM_M_VO_SetHue(HAL_DISP_LAYER_E enLayer, HI_U32 u32Hue);


HI_S32 OPTM_M_VO_ResetAcc(HAL_DISP_LAYER_E enLayer);
HI_S32 OPTM_M_VO_SetAccEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bAccEnable);
HI_S32 OPTM_M_VO_SetAccMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked);


HI_S32 OPTM_M_VO_SetAcmEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bAcmEnable);
HI_S32 OPTM_M_VO_SetAcmMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked);


HI_S32 OPTM_M_VO_SetSharpenEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bSharpenEnable);
HI_S32 OPTM_M_VO_SetSharpenMask(HAL_DISP_LAYER_E enLayer, HI_BOOL bMasked);


/**************************************************************
 *                      WIN MODULE                            *
 **************************************************************/
typedef struct tagOPTM_M_CFG_S
{
    /* TRUE, output; FALSE,  close layer output  */
    //HI_BOOL bEnable;

    /*==================================*/
    OPTM_VD_DIE_S *pstDie; /* DIE Algorithm module*/
    FIR_COEF_ADDR_S *pstZmeCoefAddr;

    /* display window  property  */
    HI_RECT_S stOutRect;
    HI_UNF_ASPECT_RATIO_E enOutRatio;
    HI_S32    OutBtmFlag; /* 0, top; 1, bottom; 2, frame */

    /*  image  information  */
    HI_UNF_VO_FRAMEINFO_S *pstLastF; /* last frame */
    HI_UNF_VO_FRAMEINFO_S *pstCurrF; /* current frame */
    HI_UNF_VO_FRAMEINFO_S *pstNextF; /* next frame */
    HI_U32                u32CurrFrameIndex;

    HI_RECT_S stInRect; /*  image  window  */
    HI_UNF_ASPECT_CVRS_E enCvsMode;
    HI_S32 InBtmFlag;  /* 0, top; 1, bottom; */

    HI_S32 ReFlag;    /* repeat flag */
    HI_S32 DropFlag;  /* drop flag */

    /* connected DISPLAY ID */
    HAL_DISP_OUTPUTCHANNEL_E     enDispHalId;

    /* whether in FRC transformation mode or not */
    HI_BOOL bInFrc;
    HI_BOOL bTopFirst;

    HI_BOOL bDoDei;              /* do DEI or not */

	/* current window number; in condition of one window connected with several outputs,
     * it is used for DEI algorithm status control
	 */
	HI_U32  u32CurrWinNumber;
	HI_BOOL DoDeiFlag;      /*remember do dei  flag for standalone mode */
	HI_BOOL DoDeiFlag_tmp;      /*remember do dei  flag for standalone mode */

	HI_BOOL bDebug;              /* whether debug cfg frame */
	}OPTM_M_CFG_S;


/* according to window offset,
 * calculate the offset of start position of image display in memory, relative to basic address.
 * When format is not SEMIPLANAR, bLuma is invalid
 */
HI_U32 OPTM_M_CalcAddrDiff(HI_UNF_VIDEO_FORMAT_E enFormat, HI_U32 X, HI_U32 Y, HI_U32 Stride, HI_BOOL bLuma);
HI_VOID OPTM_M_VO_GetHDFrameInfo(HI_U32* pu32CropWidth, HI_U32* pu32CropHeight, HI_BOOL *pbProgressive, HI_U32* pu32NextField);
HI_S32 OPTM_M_VO_ConfigFrame(OPTM_M_CFG_S *pstCfg, HAL_DISP_LAYER_E enLayer, OPTM_AA_DET_INFO_S *pstDetInfo, HI_BOOL bWbc1);
HI_BOOL OPTM_M_GetRwzbFlag(HI_RECT_S* pstScrnWin, HI_UNF_VO_FRAMEINFO_S* pFrame, HI_S32 bDispProgressive);

typedef struct hioptm_intr_info_s
{
    /*info about int*/
    HI_U32 optm_int_type;
    HI_U32 optm_int_order;
    OPTM_IRQ_FUNC pFunc;
}optm_intr_info_s;
/**************************************************************
 *                    WBC0 MODULE                             *
 **************************************************************/
typedef struct tagOPTM_M_WBC0_S
{
    /* config parameters */
    HI_S32 s32DfpSel;       /* for mpw: 0, DIE; 1, ZME; 2, CBM; */
                            /* for pilot: 0,DIE; 1,ZME; 2,CBM; 3,FEEDER; 4,VideoMixer; */

    optm_intr_info_s intr_infor[5];

    HI_S32 s32DataFmt;      /* Package422: 0, UYVY; 1, YUYV; 2, YVYU */
    HI_U32 u32ReqInterval;  /* apply intervals */

    /* task parameters */
    HI_S32    s32InBtmFlag; /* 0, top; 1, bottom; 2, frame */
    HI_RECT_S stCropRect;

    HI_RECT_S stOutRect;
    HI_S32    s32OutBtmFlag;/* 0, top; 1, bottom; 2, frame */

    HI_U32    u32YAddr;
    HI_U32    u32YStride;
    HI_U32    u32CAddr;
    HI_U32    u32CStride;

    FIR_COEF_ADDR_S *pstZmeCoefAddr;
    HI_S32 iYuvType;        /*  0-422;1-420;2-411;3-400 */
    HI_UNF_ASPECT_CVRS_E      enOutAspectCvrs;  /** */
    HI_UNF_ASPECT_RATIO_E     enOutAspectRatio; /***/
    HI_UNF_ASPECT_RATIO_E     enInAspectRatio; /** */

    HI_BOOL bSrcProgressive;
}OPTM_M_WBC0_S;

HI_S32 OPTM_M_WBC0_Config(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0);
HI_S32 OPTM_M_WBC0_SendTask(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0);
HI_S32 OPTM_M_WBC0_SetEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);

HI_VOID OPTM_M_VO_SaveVXD(HAL_DISP_LAYER_E enLayer);
HI_VOID OPTM_M_VO_RestoreVXD(HAL_DISP_LAYER_E enLayer);

HI_VOID OPTM_M_VO_SaveWbc(HAL_DISP_LAYER_E enLayer);
HI_VOID OPTM_M_VO_RestoreWbc(HAL_DISP_LAYER_E enLayer);
HI_S32 OPTM_M_VO_AlgControl(HI_UNF_ALG_TYPE_E enAlgType, HI_BOOL bEnable, HI_UNF_VO_DEV_MODE_E *penDevMode, const HI_UNF_ALG_CONTROL_S *pAlgControl);
HI_S32 OPTM_M_WBC0_SendTask_standalone(HAL_DISP_LAYER_E enLayer, OPTM_M_WBC0_S *pstWbc0, HI_S32 nTimes);
HI_U32  OPTM_M_VO_GetHDEnable(HI_VOID);

HI_S32 OPTM_AA_RatioProcess(HI_RECT_S *pInWnd, HI_UNF_ASPECT_RATIO_E enInRatio,
        HI_RECT_S *pOutWnd, HI_UNF_ASPECT_RATIO_E enOutRatio,
        HI_UNF_ASPECT_CVRS_E enCvrsMode, HI_RECT_S *pScreen);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_M_VO_H__ */

