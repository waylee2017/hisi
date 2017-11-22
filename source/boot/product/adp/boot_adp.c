/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : boot_adp.c
Version             : Initial Draft
Author              :
Created             : 2016/01/12
Description         : display初始化
Function List       :
History             :
Date                       Author                   Modification
2016/01/12                                          modify by y00181162
******************************************************************************/

/*********************************add include here******************************/
#include <uboot.h>
#include "hi_boot_common.h"
#include "hi_unf_disp.h"
#include "hi_boot_logo.h"
#include "hi_boot_adp.h"
#include "hi_unf_hdmi.h"
#include "hi_go_common.h"

/***************************** Macro Definition ******************************/

/** UI only support HD input max **/
#define LAYER_MAX_WIDTH          1280
#define LAYER_MAX_HEIGHT         720


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

extern HI_S32 HI_GO_Init(HI_VOID);
extern HI_S32 HI_GO_CreateLayer(HI_GO_SURFACE_S *pstLayerInfo,HI_HANDLE *pSurface);
extern HI_S32 HI_GO_SetLayerPos(HI_HANDLE hSurface,HI_U32 u32StartX, HI_U32 u32StartY);
extern HI_S32 HI_GO_DestroyLayer(HI_HANDLE hSurface);


/******************************* API declaration *****************************/

/***************************************************************************************
* func          : HI_ADP_GrcCreate
* description   : 创建图形层并获取图形层surface
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ADP_GrcCreate(HI_GRC_PARAM_S stGrcParam,HI_HANDLE *phLayerSurface)
{

    HI_S32            s32Ret       = HI_SUCCESS;
    HI_GO_LAYER_ID_E  eLayerID     = HI_GO_LAYER_AD_0;
    HI_GO_SURFACE_S   stDispInfo;

    s32Ret = HI_GO_Init();
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_MCE("HI_GO_Init failure\n");
        return HI_FAILURE;
    }

    memset(&stDispInfo,0,sizeof(HI_GO_SURFACE_S));
    stDispInfo.u32Width[0]   = LAYER_MAX_WIDTH;
    stDispInfo.u32Height[0]  = LAYER_MAX_HEIGHT;
    stDispInfo.u32Width[1]   = stGrcParam.u32ScreenWidth;
    stDispInfo.u32Height[1]  = stGrcParam.u32ScreenHeight;
    stDispInfo.enPixelFormat = stGrcParam.enPixelFormat;
    stDispInfo.enLayerID     = eLayerID;
    s32Ret = HI_GO_CreateLayer(&stDispInfo,phLayerSurface);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_MCE("HI_GO_CreateLayer hd layer failure\n");
        goto ERR_EXIT;
    }

    s32Ret = HI_GO_SetLayerPos(*phLayerSurface, stGrcParam.u32ScreenXpos, stGrcParam.u32ScreenYpos);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_MCE("HI_GO_SetLayerPos failure\n");
        goto ERR_EXIT;
    }

    return HI_SUCCESS;

ERR_EXIT:
    if(HI_INVALID_HANDLE != *phLayerSurface)
    {
        HI_GO_DestroyLayer(*phLayerSurface);
    }

    *phLayerSurface = HI_INVALID_HANDLE;

    return HI_FAILURE;

}


/***************************************************************************************
* func          : HI_ADP_DispInit
* description   : initial the display
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ADP_DispInit(HI_PDM_BASE_INFO_S stDispParam)
{
    HI_S32                      Ret;
  //  HI_UNF_ENC_FMT_E            HdFmt, SdFmt;
    HI_UNF_DISP_BG_COLOR_S  stBgColor;

    Ret = HI_UNF_DISP_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("HI_UNF_DISP_Init err! Ret = %x\n", Ret);
        goto ERR0;
    }

    stBgColor.u8Blue  = 0;
    stBgColor.u8Red   = 0;
    stBgColor.u8Green = 0;

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    Ret = HI_UNF_DISP_Attach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("HI_UNF_DISP_Attach err! Ret = %x\n", Ret);
        goto ERR1;
    }
#endif
	/**
	 **set para, the hifb will use this value,optm_hifb.c
	 **/
    Ret |= HI_UNF_DISP_SetBgColor(HI_UNF_DISP_SD0, &stBgColor);
    Ret |= HI_UNF_DISP_SetBrightness(HI_UNF_DISP_SD0, stDispParam.u32Brightness);
    Ret |= HI_UNF_DISP_SetContrast(HI_UNF_DISP_SD0, stDispParam.u32Contrast);
    Ret |= HI_UNF_DISP_SetSaturation(HI_UNF_DISP_SD0, stDispParam.u32Saturation);
    Ret |= HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_SD0, stDispParam.u32HuePlus);

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    Ret |= HI_UNF_DISP_SetBgColor(HI_UNF_DISP_HD0, &stBgColor);
    Ret |= HI_UNF_DISP_SetBrightness(HI_UNF_DISP_HD0, stDispParam.u32Brightness);
    Ret |= HI_UNF_DISP_SetContrast(HI_UNF_DISP_HD0, stDispParam.u32Contrast);
    Ret |= HI_UNF_DISP_SetSaturation(HI_UNF_DISP_HD0, stDispParam.u32Saturation);
    Ret |= HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_HD0, stDispParam.u32HuePlus);

    Ret |= HI_UNF_DISP_Open(HI_UNF_DISP_HD0);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("HI_UNF_DISP_Open err! Ret = %x\n", Ret);
        goto ERR2;
    }
#endif

    Ret = HI_UNF_DISP_Open(HI_UNF_DISP_SD0);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("HI_UNF_DISP_Open err! Ret = %x\n", Ret);
        goto ERR3;
    }

	HI_UNF_DISP_INTERFACE_S     DacMode;

	DacMode.bBt1120Enable = stDispParam.Bt1120;
	DacMode.bBt656Enable = stDispParam.Bt656;
	DacMode.bScartEnable = stDispParam.scart;

	memcpy(DacMode.enDacMode,stDispParam.dac,sizeof(HI_UNF_DISP_DAC_MODE_E)*MAX_DAC_NUM);

    HI_UNF_DISP_SetDacMode(&DacMode);

	HI_INFO_MCE("dac[0]:%d\n",stDispParam.dac[0]);
	HI_INFO_MCE("dac[1]:%d\n",stDispParam.dac[1]);
	HI_INFO_MCE("dac[2]:%d\n",stDispParam.dac[2]);
	HI_INFO_MCE("dac[3]:%d\n",stDispParam.dac[3]);

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
	HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, stDispParam.hdFmt);
#endif

	Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, stDispParam.sdFmt);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("call HI_UNF_DISP_SetFormat failed.\n");
        goto ERR4; ;
    }
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    if (HI_SUCCESS != HI_DRV_HDMI(HI_UNF_HDMI_ID_0, stDispParam.hdFmt))
    {
        HI_ERR_MCE("call HI_DRV_HDMI failed.\n");
        //goto ERR4; ;
    }
#endif
    return Ret;

ERR4:
    HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
ERR3:
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
ERR2:
    HI_UNF_DISP_Detach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
ERR1:
#endif
    HI_UNF_DISP_DeInit();
ERR0:
    return Ret;
}
