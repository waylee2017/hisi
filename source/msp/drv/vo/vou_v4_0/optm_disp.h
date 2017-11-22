
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : optm_disp.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/6/9
  Last Modified :
  Description   : header file for video output control
  Function List :
  History       :
  1.Date        :
  Author        : g45208
  Modification  : Created file
******************************************************************************/

#ifndef __OPTM_DISP_H__
#define __OPTM_DISP_H__

//#include "mpi_priv_disp.h"
#include "drv_disp_ioctl.h"

#include "hi_error_mpi.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

typedef enum tagOPTM_DISP_LCD_FMT_E
{
    OPTM_DISP_LCD_FMT_861D_640X480_60HZ = 0,
    OPTM_DISP_LCD_FMT_VESA_800X600_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1024X768_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X720_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X800_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1280X1024_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1360X768_60HZ,        //Rowe
    OPTM_DISP_LCD_FMT_VESA_1366X768_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1400X1050_60HZ,       //Rowe
    OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ_RB,
    OPTM_DISP_LCD_FMT_VESA_1600X900_60HZ_RB,
    OPTM_DISP_LCD_FMT_VESA_1600X1200_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1680X1050_60HZ,        //Rowe
    OPTM_DISP_LCD_FMT_VESA_1920X1080_60HZ,
    OPTM_DISP_LCD_FMT_VESA_1920X1200_60HZ,
    OPTM_DISP_LCD_FMT_VESA_2048X1152_60HZ,
    OPTM_DISP_LCD_FMT_CUSTOMER_DEFINE,   // for lvds  
    OPTM_DISP_LCD_FMT_BUTT,
}OPTM_DISP_LCD_FMT_E;

typedef struct  hiDISP_PROC_ATTR_S
{
	HI_UNF_DISP_INTF_TYPE_E        enIntfType;
	HI_UNF_ENC_FMT_E               enFmt;
	OPTM_DISP_LCD_FMT_E            enLcdFmt;
	HI_UNF_DISP_LCD_PARA_S         stLcd;
	HI_UNF_DISP_MACROVISION_MODE_E enMcvn;
	HI_UNF_DISP_LAYER_E            DispLayerOrder[HI_UNF_DISP_LAYER_BUTT];
	HI_U32                         u32LayerNum;

	HI_UNF_DISP_BG_COLOR_S         stBgc;
	HI_U32                         u32Bright;
	HI_U32                         u32Contrast;
	HI_U32                         u32Saturation;
	HI_U32                         u32Hue;
    HI_U32                         u32Kr;
    HI_U32                         u32Kg;
    HI_U32                         u32Kb;

	HI_BOOL                        bAccEnable;

	HI_UNF_DISP_E                  enSrcDisp;
	HI_UNF_DISP_E                  enDestDisp;

    /* CGMS configuration information to be stored in Channel properties */
    HI_UNF_DISP_CGMS_CFG_S         stCgmsCfgA;
    HI_UNF_DISP_CGMS_CFG_S         stCgmsCfgB;
    HI_UNF_ENC_FMT_E               enLastFmt;

    
}HI_OPTM_DISP_ATTR_S;


HI_BOOL	DISP_GetOptmDispAttr(HI_UNF_DISP_E enDisp, HI_OPTM_DISP_ATTR_S *pstDispAttr);

/********************************************************************************
	enDisp : only for HI_UNF_DISP_HD0	
********************************************************************************/
HI_S32 DISP_SetColorSpace(HI_UNF_DISP_E enDisp, HI_U32 cs);
HI_S32 DISP_GetColorSpace(HI_UNF_DISP_E enDisp, HI_U32 *pcs);
HI_S32 DISP_SetDispDefault(HI_VOID);
HI_S32 DISP_GetDispDefault(HI_VOID);

HI_S32  DISP_BaseRegInit(HI_VOID);

HI_S32	DISP_Init(HI_VOID);
HI_S32	DISP_DeInit(HI_VOID);

HI_S32	DISP_Open(HI_UNF_DISP_E enDisp);
HI_S32	DISP_Close(HI_UNF_DISP_E enDisp);

HI_S32	DISP_SetEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
HI_S32	DISP_GetEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable);

HI_S32 DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
HI_S32 DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);

HI_S32	DISP_AttachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enDispFreeLayer);
HI_S32	DISP_DetachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enDispFreeLayer);

HI_S32 DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enIntfType);
HI_S32 DISP_GetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType);

HI_S32	DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncFmt);
HI_S32	DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncFmt);
HI_S32	DISP_GetLcdFormat(HI_UNF_DISP_E enDisp, OPTM_DISP_LCD_FMT_E *penEncFmt);

HI_S32 DISP_GetLcdDefaultPara(OPTM_DISP_LCD_FMT_E enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
HI_S32 DISP_SetLcdDefaultPara(HI_UNF_DISP_E enDisp, OPTM_DISP_LCD_FMT_E enLcdFmt);

HI_S32 DISP_SetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
HI_S32 DISP_GetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara);

HI_S32 DISP_SetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer, HI_LAYER_ZORDER_E enZFlag);
HI_S32 DISP_GetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer, HI_U32 *pu32Order);
HI_S32 DISP_SetSubLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer, HI_S32 s32SubLayerNumber, HI_S32 *ps32Order);

HI_S32	DISP_SetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor);
HI_S32	DISP_GetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor);

HI_S32	DISP_SetBright(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32	DISP_GetBright(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);

HI_S32	DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32	DISP_GetContrast(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);

HI_S32	DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32	DISP_GetSaturation(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);

HI_S32	DISP_SetHue(HI_UNF_DISP_E enDisp, HI_U32 CscValue);
HI_S32	DISP_GetHue(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);
HI_S32  DISP_SetColorTemperature(HI_UNF_DISP_E enDisp, disp_colort_s *colortempvalue);
HI_S32  DISP_GetColorTemperature(HI_UNF_DISP_E enDisp, disp_colort_s *colortempvalue);


HI_S32	DISP_SetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
HI_S32	DISP_GetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable);


HI_S32 DISP_SetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode);
HI_S32 DISP_GetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode);



#if 0

/** HDMI output settings */
typedef struct  hiUNF_DISP_HDMI_SETTING_S
{
    HI_BOOL bHsyncNegative; /* negativity enable pin of horizontal synchronization signal */
    HI_BOOL bVsyncNegative; /* negativity enable pin of vertical synchronization signal  */
    HI_BOOL bDvNegative;    /* dv negativity enable pin */

    HI_S32 s32SyncType;    /* 0, synchronization-embeded mode; 1, synchronization-separate mode */
    HI_S32 s32CompNumber;  /* 0, 10 bits; 1, 20 bits; 2, 30 bits */
    HI_S32 s32DataFmt;     /* 0, YCbCr; 1, RGB */
}DISP_HDMI_SETTING_S;

#endif

HI_S32 DISP_SetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg);
HI_S32 DISP_GetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg);

HI_S32 DISP_SendTtxData(HI_UNF_DISP_E enDisp, HI_UNF_DISP_TTX_DATA_S *pstTtxData);
HI_S32 DISP_SendVbiData(HI_UNF_DISP_E enDisp, HI_UNF_DISP_VBI_DATA_S *pstVbiData);
HI_S32 DISP_SetWss(HI_UNF_DISP_E enDisp, HI_UNF_DISP_WSS_DATA_S *pstWssData);

HI_S32 DISP_SetMcrvsn(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMcrvsn);
HI_S32 DISP_GetMcrvsn(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E *penMcrvsn);

HI_S32 DISP_SetMcrvsnCustomTable(HI_UNF_DISP_E enDisp, HI_U32 *pu32McvnTable);
HI_S32 DISP_GetMcrvsnState(HI_UNF_DISP_E enDisp, HI_BOOL *pbMcvnState);
HI_S32 DISP_SetGfxEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);


HI_VOID DISP_SaveDXD(HI_UNF_DISP_E enDisp);
HI_VOID DISP_RestoreDXD(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);

HI_VOID DISP_SaveCommon(HI_VOID);
HI_VOID DISP_RestoreCommon(HI_VOID);


/* CGMS group */

HI_S32  DISP_SetCGMS(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg);

HI_S32 DISP_SetDispWin(HI_UNF_DISP_E enDisp, HI_UNF_RECT_S* stOutRectCfg);

/* CGMS end */
#if 0

HI_S32 DISP_OpenMirror(DISP_MIRROR_CFG_S  *mirror_cfg);
HI_S32 DISP_CloseMirror(HI_HANDLE  cast_handle);

HI_S32 DISP_SetMirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable);
HI_S32 DISP_GetMirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable_status);
HI_S32 DISP_GetMirror_Frame(DISP_MIRROR_FRAME_S  *mirror_frame);
HI_S32 DISP_PutMirror_Frame(DISP_MIRROR_FRAME_S  *mirror_frame);
#endif
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __OPTM_DISP_H__ */
