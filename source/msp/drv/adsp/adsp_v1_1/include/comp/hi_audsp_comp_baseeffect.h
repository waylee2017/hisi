/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#ifndef __AUDSP_COMP_SOUND_EFFECT_H__
#define __AUDSP_COMP_SOUND_EFFECT_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#include "hi_type.h"
#include "hi_aef_base.h"

#define COMP_BAE_MSGPOOL_SIZE 0x400  /* max for PEQ Filter */
#define COMP_BAE_FRAME_SAMPLES_MINNUM 256 // 256 samples 
#define COMP_BAE_FRAME_SAMPLES_MAXNUM 1024 // 1024 samples 

typedef struct
{
    HI_BOOL         bEnable;
    HI_S32          s32TODO;  
} COMP_BAE_SMARTVOL_CONFIG_S;

typedef struct
{
    HI_BOOL         bEnable;
    HI_S32          s32ClarityGain;  
} COMP_BAE_CLARITYDLG_CONFIG_S;

typedef struct
{
    HI_BOOL         bEnable;
    HI_U32          u32TODO;  
} COMP_BAE_SURROUND_CONFIG_S;

typedef struct
{
    HI_BOOL         bEnable;
    HI_S32          s32BassGain;  
} COMP_BAE_BASS_CONFIG_S;

typedef struct 
{
    HI_BOOL         bEnable;
    HI_S32          s32MasterVol;  
} COMP_BAE_MASTERVOL_CONFIG_S;


#define COMP_BAE_BALANCE_CONFIG_S HI_AEF_BASE_BALANCE_CONFIG_S

#define COMP_BAE_GEQ_CONFIG_S HI_AEF_BASE_GEQ_CONFIG_S

typedef struct
{
    HI_BOOL         bEnable;
    HI_S32          s32TrebleGain; 
    HI_S32          s32BassGain;
} COMP_BAE_TREBLEBASS_CONFIG_S;

#define COMP_BAE_PEQ_CONFIG_S HI_AEF_BASE_PEQ_CONFIG_S

typedef struct
{
    HI_BOOL         bEnable;
    HI_U32          u32TODO;  
} COMP_BAE_DRC_CONFIG_S;

typedef struct
{
    HI_BOOL         bEnable;
    HI_S32          s32Threshold;  
} COMP_BAE_NR_CONFIG_S;

typedef struct
{
    HI_AEF_BASE_OPEN_PARAM_S stOpenParam;
    
    COMP_BAE_MASTERVOL_CONFIG_S stMasterVol;
    COMP_BAE_BALANCE_CONFIG_S   stBalance;
} COMP_BAE_SETTING_S;


#ifdef __cplusplus
 #if __cplusplus
}
 #endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#endif  /* __AUDSP_COMP_SOUND_EFFECT_H__ */
