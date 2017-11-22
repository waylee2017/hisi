/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hdmi_hal_phy.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2016/06/16
  Description   :
  History       :
  Date          : 2016/06/16
  Author        : l00232354
  Modification  :
*******************************************************************************/
#ifndef __HDMI_HAL_PHY_H__
#define __HDMI_HAL_PHY_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif
#ifdef HDMI_BUILD_IN_BOOT
#include "hi_unf_hdmi.h"
#else
#include "hi_type.h" 
#endif

/******************************************************************************/
/* Macro define                                                               */
/******************************************************************************/
/* HDMI TX SUB-module */
#define BASE_ADDR_phy_reg            0x10207000L//0x10207000L
#define HDMI_TX_PHY_CRG_ADDR 	     0x101f5000L//0x101f5000L


/******************************************************************************/
/* Structure Data                                                             */
/******************************************************************************/
typedef struct
{
    HI_BOOL bEnable;
    HI_U32  u32SscAmptd;  /* 1/1000000 */
    HI_U32  u32SscFreq;   /* 1 Hz */
    HI_U32  u32PixelClk;
    HI_U32  u32SscBypDiv;
    HI_U32  u32LoopDiv;
}HDMI_PHY_SSC_INFO_S;

typedef struct 
{
    HI_U32      u32TmdsClk;   /* TMDS colck,in KHz */
    HI_U32      u32DeepColor; /* Deep color(color depth)  */
    HDMI_PHY_SSC_INFO_S stSSCInfo;
}HDMI_PHY_TMDS_CFG_S;


/******************************************************************************/
/* Public interface                                                           */
/******************************************************************************/
HI_VOID SI_TX_PHY_INIT(void);
HI_S32 SI_TX_PHY_GetOutPutEnable(void);
HI_S32 SI_TX_PHY_DisableHdmiOutput(void);
HI_S32 SI_TX_PHY_EnableHdmiOutput(void);
HI_S32 SI_TX_PHY_PowerDown(HI_BOOL bPwdown);
HI_S32 SI_TX_PHY_TmdsSet(HI_U32 u32TmdsClk, HI_U32 u32DeepColorMode);
#ifdef CHIP_TYPE_hi3716mv330
HI_S32 SI_TX_PHY_SSCSet(HDMI_PHY_TMDS_CFG_S *pPhyTmdsCfg);
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif


#endif  /* __HDMI_HAL_PHY_H__ */   





