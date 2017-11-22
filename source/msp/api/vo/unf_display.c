/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_unf_disp.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
    Author      : w58735
    Modification: Created file

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_mpi_disp.h"
#include "hi_mpi_hdmi.h"

HI_S32 HI_UNF_DISP_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_Init();

    return s32Ret;
}

HI_S32 HI_UNF_DISP_DeInit(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_DeInit();

    return s32Ret;
}

HI_S32 HI_UNF_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_Attach(enDstDisp, enSrcDisp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_Detach(enDstDisp, enSrcDisp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_Open(HI_UNF_DISP_E enDisp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_Open(enDisp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_Close(HI_UNF_DISP_E enDisp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_Close(enDisp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_AttachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_AttachOsd(enDisp, enLayer);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_DetachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enLayer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_DetachOsd(enDisp, enLayer);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enIntfType)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetIntfType(enDisp, enIntfType);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetIntfType(enDisp, penIntfType);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetOutputWin(HI_UNF_DISP_E enDisp, HI_UNF_RECT_S *pstOutRect)
{

    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetOutputWin(enDisp, pstOutRect);

    return s32Ret;
}
HI_S32 HI_UNF_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat)
{
    HI_S32 s32Ret;

#ifndef CHIP_TYPE_hi3110ev500    
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        (HI_VOID)HI_MPI_HDMI_Pre_SetFormat(enEncodingFormat);
        s32Ret = HI_MPI_DISP_SetFormat(enDisp, enEncodingFormat);
        (HI_VOID)HI_MPI_HDMI_SetFormat(enEncodingFormat);
    }
    else
#endif        
    {
        s32Ret = HI_MPI_DISP_SetFormat(enDisp, enEncodingFormat);
    }

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncodingFormat)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetFormat(enDisp, penEncodingFormat);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetDacMode(const HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetDacMode(pstDacMode);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetDacMode(pstDacMode);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetLcdPara(enDisp, pstLcdPara);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetLcdPara(enDisp, pstLcdPara);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_LAYER_ZORDER_E enZFlag)
{
	HI_S32 s32Ret;

	s32Ret = HI_MPI_DISP_SetLayerZorder(enDisp, enLayer, enZFlag);

	return s32Ret;
}

HI_S32 HI_UNF_DISP_GetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enLayer, HI_U32 *pu32Zorder)
{
	HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetLayerZorder(enDisp, enLayer, pu32Zorder);
	
	return s32Ret;
}

HI_S32 HI_UNF_DISP_SetBgColor(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetBgColor(enDisp, pstBgColor);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetBgColor(enDisp, pstBgColor);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 u32Brightness)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetBrightness(enDisp, u32Brightness);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetBrightness(HI_UNF_DISP_E enDisp, HI_U32 *pu32Brightness)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetBrightness(enDisp, pu32Brightness);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 u32Contrast)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetContrast(enDisp, u32Contrast);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetContrast(HI_UNF_DISP_E enDisp, HI_U32 *pu32Contrast)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetContrast(enDisp, pu32Contrast);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 u32Saturation)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetSaturation(enDisp, u32Saturation);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetSaturation(HI_UNF_DISP_E enDisp, HI_U32 *pu32Saturation)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetSaturation(enDisp, pu32Saturation);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 u32HuePlus)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetHuePlus(enDisp, u32HuePlus);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 *pu32HuePlus)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetHuePlus(enDisp, pu32HuePlus);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetColorTemperature(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_COLORTEMPERATURE_S *colortemp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetColorTemperature(enDisp, colortemp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetColorTemperature(HI_UNF_DISP_E enDisp, HI_UNF_DISP_COLORTEMPERATURE_S *colortemp)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetColorTemperature(enDisp, colortemp);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetAccEnable(enDisp, bEnable);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SendTtxData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_TTX_DATA_S *pstTtxData)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SendTtxData(enDisp, pstTtxData);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SendVbiData(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_VBI_DATA_S *pstVbiData)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SendVbiData(enDisp, pstVbiData);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetWss(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_WSS_DATA_S *pstWssData)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetWss(enDisp, pstWssData);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMode, const HI_VOID *pData)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetMacrovision(enDisp, enMode);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E *penMode, const HI_VOID *pData)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_GetMacrovision(enDisp, penMode);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetCgms(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_CGMS_CFG_S *pstCgmsCfg)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_DISP_SetCgms(enDisp, pstCgmsCfg);

    return s32Ret;
}


HI_S32 HI_UNF_DISP_SetCsc(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_DISP_SetCsc(enDisp, bEnable);
    
    return s32Ret;
}

HI_S32 HI_UNF_DISP_CreateCast(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CAST_CFG_S *pstCfg, HI_HANDLE *phCast)
{    
    HI_S32 s32Ret; 
    
    s32Ret = HI_MPI_DISP_CreateCast(enDisp, pstCfg, phCast);
    
    return s32Ret;
}

HI_S32 HI_UNF_DISP_DestroyCast(HI_HANDLE hCast)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_DISP_DestroyCast(hCast);
    
    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetCastEnable(HI_HANDLE hCast, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_DISP_SetCastEnable(hCast, bEnable);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_GetCastEnable(HI_HANDLE hCast, HI_BOOL *pbEnable)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_DISP_GetCastEnable(hCast, pbEnable);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_AcquireCastFrame(HI_HANDLE hCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame)
{
    HI_S32 s32Ret; 
    
    s32Ret = HI_MPI_DISP_AcquireCastFrame(hCast, pstFrame);

    return s32Ret;
}

HI_S32 HI_UNF_DISP_ReleaseCastFrame(HI_HANDLE hCast, HI_UNF_DISP_MIRROR_FRAME_S *pstFrame)
{
    HI_S32 s32Ret; 
    
    s32Ret = HI_MPI_DISP_ReleaseCastFrame(hCast, pstFrame);
    
    return s32Ret;
}

HI_S32 HI_UNF_DISP_SetDefaultParam(HI_VOID)
{
    HI_S32 s32Ret; 
    
    s32Ret = HI_MPI_DISP_SetDefaultParam();
    
    return s32Ret;
}
