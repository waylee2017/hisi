/***********************************************************************************
*              Copyright 2004 - 2011, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: hi_gpio.h
* Description:use gpio opreate
*
* History:
* Version   Date                Author       DefectNum    Description
* 0.01    2011-3-17      chenqiang      NULL           Create this file.
***********************************************************************************/
#ifndef __DRV_HDMI_EXT_H__
#define __DRV_HDMI_EXT_H__

#include "hi_type.h"
#include "hi_unf_hdmi.h"

HI_S32 HI_DRV_HDMI_Init(void);
HI_S32 HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFormat);
HI_S32 HI_DRV_HDMI_Start(HI_UNF_HDMI_ID_E enHdmi);
HI_S32 HI_DRV_HDMI_DeInit(void);
HI_S32 HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi);

HI_U32 HI_DRV_HDMI_UpdateStatus(void);
HI_S32 HI_DRV_HDMI(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFormat);
HI_S32 HI_UNF_HDMI_Init(void);

#endif
