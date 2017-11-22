/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_disp.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
    Author      : w58735
    Modification: Created file

*******************************************************************************/


#ifndef __MPI_DISP_H__
#define __MPI_DISP_H__
#include "drv_disp_ioctl.h"

//#include "hi_drv_disp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"
{
#endif
#endif


HI_S32 HI_MPI_DISP_Init(HI_VOID);
HI_S32 HI_MPI_DISP_DeInit(HI_VOID);
HI_S32 HI_MPI_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
HI_S32 HI_MPI_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);

HI_S32 HI_MPI_DISP_Open(HI_UNF_DISP_E enDisp);
HI_S32 HI_MPI_DISP_Close(HI_UNF_DISP_E enDisp);
HI_S32 HI_MPI_DISP_AttachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer);
HI_S32 HI_MPI_DISP_DetachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer);
HI_S32 HI_MPI_DISP_SetEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
HI_S32 HI_MPI_DISP_GetEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable);
HI_S32 HI_MPI_DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enIntfType);
HI_S32 HI_MPI_DISP_GetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType);
HI_S32 HI_MPI_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat);
HI_S32 HI_MPI_DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncodingFormat);
HI_S32 HI_MPI_DISP_SetDacMode(const HI_UNF_DISP_INTERFACE_S *pstDacMode);
HI_S32 HI_MPI_DISP_GetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode);
HI_S32 HI_MPI_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
HI_S32 HI_MPI_DISP_GetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
HI_S32 HI_MPI_DISP_SetLcdDefaultPara(HI_UNF_DISP_E enDisp, HI_U32 enLcdFmt);
HI_S32 HI_MPI_DISP_GetLcdDefaultPara(HI_U32 enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstLcdPara);
HI_S32 HI_MPI_DISP_SetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_LAYER_ZORDER_E enZFlag);
HI_S32 HI_MPI_DISP_GetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_U32 *pu32Zorder);
HI_S32 HI_MPI_DISP_SetBgColor(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_BG_COLOR_S *pstBgColor);
HI_S32 HI_MPI_DISP_GetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor);
HI_S32 HI_MPI_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 u32Brightness);
HI_S32 HI_MPI_DISP_GetBrightness(HI_UNF_DISP_E enDisp, HI_U32 *pu32Brightness);
HI_S32 HI_MPI_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 u32Contrast);
HI_S32 HI_MPI_DISP_GetContrast(HI_UNF_DISP_E enDisp, HI_U32 *pu32Contrast);
HI_S32 HI_MPI_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 u32Saturation);
HI_S32 HI_MPI_DISP_GetSaturation(HI_UNF_DISP_E enDisp, HI_U32 *pu32Saturation);
HI_S32 HI_MPI_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 u32HuePlus);
HI_S32 HI_MPI_DISP_GetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 *pu32HuePlus);
HI_S32 HI_MPI_DISP_SetColorTemperature(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_COLORTEMPERATURE_S *colortemp);
HI_S32 HI_MPI_DISP_GetColorTemperature(HI_UNF_DISP_E enDisp, HI_UNF_DISP_COLORTEMPERATURE_S *colortemp);
HI_S32 HI_MPI_DISP_SetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
HI_S32 HI_MPI_DISP_SendTtxData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_TTX_DATA_S *pstTtxData);
HI_S32 HI_MPI_DISP_SendVbiData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_VBI_DATA_S *pstVbiData);
HI_S32 HI_MPI_DISP_SetWss(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_WSS_DATA_S *pstWssData);
HI_S32 HI_MPI_DISP_SetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMode);
HI_S32 HI_MPI_DISP_GetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E *penMode);
HI_S32 HI_MPI_DISP_SetHdmiIntf(HI_UNF_DISP_E enDisp, const DISP_HDMI_SETTING_S *pstCfg);
HI_S32 HI_MPI_DISP_GetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg);


/* set CGMS; 2011-06-02 by Huang Minghu */
HI_S32 HI_MPI_DISP_SetCgms(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_CGMS_CFG_S *pstCgmsCgf);
HI_S32 HI_MPI_DISP_SetCsc(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);

HI_S32 HI_MPI_DISP_CreateCast(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CAST_CFG_S *pstCfg, HI_HANDLE *phCast);
HI_S32 HI_MPI_DISP_DestroyCast(HI_HANDLE phCast);
HI_S32 HI_MPI_DISP_SetCastEnable(HI_HANDLE phCast, HI_BOOL bEnable);
HI_S32 HI_MPI_DISP_GetCastEnable(HI_HANDLE phCast, HI_BOOL *pbEnable);
HI_S32 HI_MPI_DISP_AcquireCastFrame(HI_HANDLE phCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame);
HI_S32 HI_MPI_DISP_ReleaseCastFrame(HI_HANDLE phCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame);

/* set Display output window  */
HI_S32 HI_MPI_DISP_SetOutputWin(HI_UNF_DISP_E enDisp, const HI_UNF_RECT_S *pstOutRect);

HI_S32 HI_MPI_DISP_SetDefaultParam(HI_VOID);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif
