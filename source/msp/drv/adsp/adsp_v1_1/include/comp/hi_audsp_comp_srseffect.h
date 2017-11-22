/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
File Name     :	audsp_cpmp_srs.h
Version	     :	Initial	Draft
Author	     :	l00191026
Created	     :	2013/12/09 
Last Modified :
Description   :	Public type of SRS between DSP and ARM
Function List :
History	     :
* Version     Date	   Author     DefectNum	      Description
           2013/12/09   l00191026      NULL            Create this file.
*********************************************************************/
#ifndef __AUDSP_COMP_SRS_H__
#define __AUDSP_COMP_SRS_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#include "hi_type.h"
#include "hi_aef_srs.h"

#define SRS_DEF_COMP_SAMPLE         (256)
#define SRS_DEF_COMP_CHANEL         (2)
#define SRS_DEF_COMP_PRECISION      (16)
#define SRS_DEF_COMP_FRAME          (SRS_DEF_COMP_SAMPLE*SRS_DEF_COMP_CHANEL*SRS_DEF_COMP_PRECISION/8)

#ifdef __XTENSA__

#include "srs_ss3d_def.h"

#define SRSConfig SRSSS3DControls

#else

typedef enum
{
    SRS_GEQ_5BAND_100HZ,
    SRS_GEQ_5BAND_300HZ,
    SRS_GEQ_5BAND_1000HZ,
    SRS_GEQ_5BAND_3000HZ,
    SRS_GEQ_5BAND_10000HZ,
    SRS_GEQ_5BAND_UNUSED = 0x7FFFFFFF
} SRSGeq5BandCenterFreq;

#if 0
typedef struct hiSRS_SpaceHPFConfig_S
{
    HI_BOOL                 bEnable;
    HI_FLOAT                f32InputGain;  
    HI_FLOAT                f32OutputGain;
    HI_FLOAT                f32BypassGain;
    HI_AEF_SRS_SPACEHPF_FREQ_E      enCutoffFreq;
} HI_SRS_SpaceHPFConfig_S; 
#endif


typedef struct
{
    HI_BOOL Enable;
    HI_S32  InputGain;
    HI_S32  OutputGain;
    HI_S32  BypassGain;

    HI_AEF_SRS_SPACEHPF_FREQ_E      CutoffFreq;
} SRSSpaceHPFControls; //All public control parameters of TruBass HD

typedef struct
{
    HI_BOOL Enable;
    HI_S16  LKFS;
    HI_S32  LevelIntensity;
} SRSSS3DTVolHDControls; //TVolHD controls in SS3D.

typedef struct
{
    HI_BOOL                 TBHDEnable;
    HI_S16                  TBHDLevel;
    HI_AEF_SRS_TBHD_SPKSIZE_S       TBHDSpeakerSize;
    HI_BOOL                 TBHDSplitAnalysisEnable;
    HI_BOOL                 TBHDLevelIndependentEnable;
    HI_AEF_SRS_TBHD_MODE_E          TBHDMode;
    HI_S16                  TBHDCompressorLevel;
    HI_S16                  TBHDBassClarityLevel;
    HI_BOOL                 DefEnable;
    HI_S16                  DefLevel;
} SRSSS3DCommonControls; //Common controls for WOWHDX, TSHD & CC3D and CSHP in SS3D.

typedef struct
{
    HI_BOOL Enable;
    HI_S16  ClarityGain;
    HI_S32  ProcessGain;
} SRSSS3DTruDiagControls; //TruDialog controls in SS3D.

typedef struct
{
    //TSHD & CC3D
    HI_BOOL DlgClarityEnable;
    HI_S16  DlgClarityLevel;
    HI_S16  TruSurLevel;

    //WOWHD
    HI_S16 Srs3DSpaceLevel;
    HI_S16 Srs3DCenterLevel;
    HI_S16 FocusLevel;

    //SpaceHPF
    HI_BOOL                 SpaceHPFEnable;
    HI_AEF_SRS_SPACEHPF_FREQ_E      SpaceHPFCutoffFreq;

    HI_BOOL CC3DSurroundBoostEnable;
} SRSSS3DCC3DControls; //TSHD & CC3D & WOWHD controls in SS3D.

typedef struct
{
    HI_AEF_SRS_CSHP_MODE_E          CSDEnable;
    HI_AEF_SRS_CSD_MODE_E           CSDMode;

    HI_BOOL                 DlgClarityEnable;
    HI_S16                  DlgClarityLevel;
} SRSSS3DCSHPControls; //CSHP controls in SS3D.

typedef struct
{
    HI_BOOL         Enable;
    HI_S16          bgain[HI_AEF_SRS_MAX_GEQ_5BAND_NUM];
} SRSSS3DGEQControls;   //GEQ controls in SS3D

typedef struct
{
    HI_BOOL Enable;
    HI_S16  BypassGain;
} SRSSS3DAEQControls;   //AEQ controls in SS3D

typedef struct
{
    HI_BOOL      Enable;
    HI_U32       VolStep;
    HI_S32       LRBalance;
    HI_BOOL      Mute;
} SRSSS3DMvolControls;  //Mvol controls in SS3D

typedef struct
{
    HI_BOOL Enable;
    HI_S16  OutputGain;
    HI_S32  DelayLen;
    HI_BOOL ACEnable;
    HI_S16  ACLevel;
} SRSSS3DHdLmtControls; //HardLimiter controls in SS3D

typedef struct
{
    HI_BOOL Enable;
    HI_S32  BassGain;
    HI_S32  TrebleGain;
} SRSSS3DToneControls;  //Bass&Treble controls in SS3D

typedef struct
{
    HI_S16 MainTechInputGain[HI_AEF_SRS_MAINTECH_NUMS];
    HI_S16 GeqInputGain;
    HI_S16 ToneInputGain;
    HI_S16 AeqInputGain;
    HI_S16 TBHDRefOffset;
    HI_S32 HdLmtBoostOffset;
} SRSSS3DAdvGainControls;

typedef struct
{
    HI_BOOL             Enable;
    HI_S16              HeadroomGain;
    HI_S16              BypassGain;
    HI_AEF_SRS_MAINTECH_E      MainTech;

    SRSSS3DTVolHDControls  TVolHDControls;

    SRSSS3DTruDiagControls TruDiagControls;

    SRSSS3DCC3DControls CC3DControls;

    SRSSS3DCSHPControls CSHPControls;

    SRSSS3DCommonControls CommonControls;

    SRSSS3DGEQControls GEQControls;

    HI_BOOL HPFEnable;

    SRSSS3DAEQControls AEQControls;

    SRSSS3DMvolControls MvolControls;

    SRSSS3DHdLmtControls HdLmtControls;

    SRSSS3DToneControls ToneControls;

    SRSSS3DAdvGainControls AdvGainControls;
} SRSConfig;  //SS3D's controls structure

#endif

typedef struct
{
    HI_S32*                     ps32PcmInBuf;      
    HI_U32                      u32PcmInBufSize;       
    HI_S32*                     ps32PcmOutBuf;      
    HI_U32                      u32PcmOutBufSize;    
} HI_SRS_COMP_PRIVATE_INFO_S;


#ifdef __cplusplus
 #if __cplusplus
}
 #endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#endif  /* __AUDSP_COMP_SRS_H__ */

