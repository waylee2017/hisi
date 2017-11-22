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
#ifndef __LOADER_ADP_OSD_H__
#define __LOADER_ADP_OSD_H__
#include "hi_type.h"
#include "hi_unf_common.h"
#include "hi_flash.h"
#include "hi_unf_disp.h"
#include "hi_unf_hdmi.h"
#include "hi_go_gdev.h"
#include "hi_go_decoder.h"
#include "hi_go_bliter.h"

typedef struct hiSTANDARD_BASE_INFO_S
{
	unsigned int checkflag;
	unsigned int hdIntf;
	unsigned int sdIntf;
	unsigned int hdFmt;
	unsigned int sdFmt;
	unsigned int scart;
	unsigned int Bt1120;
	unsigned int Bt656;
	unsigned int dac[6];
	unsigned int layerformat;
	unsigned int inrectwidth;
	unsigned int inrectheight;
	unsigned int outrectwidth;
	unsigned int outrectheight;
	unsigned int usewbc;
	unsigned int resv1;
	unsigned int resv2;
	unsigned int logoMtdSize; 
	unsigned int playMtdSize; 
	char chVersion[8];
	unsigned int u32Top;
	unsigned int u32Left;
	unsigned int u32HuePlus;
	unsigned int u32Saturation;
	unsigned int u32Contrast;
	unsigned int u32Brightness;
	HI_UNF_DISP_BG_COLOR_S enBgcolor;
	HI_UNF_ASPECT_RATIO_E enAspectRatio;
	HI_UNF_ASPECT_CVRS_E enAspectCvrs;
	HI_UNF_DISP_MACROVISION_MODE_E enDispMacrsn;
  // this struct record lvds interface paramters.
    HI_UNF_DISP_LCD_PARA_S sLcdPara;  
}HI_STANDARD_BASE_INFO_S;

/**Base config information*//** CNcomment:基本配置信息*/
typedef struct hiLOADER_BASE_PARAM_S
{
	HI_UNF_ENC_FMT_E hdFmt;				/**<High-definition (HD) video format*//**<CNcomment:高清视频制式 */
	HI_UNF_ENC_FMT_E sdFmt;				/**<Standard-definition (SD) video format*//**<CNcomment:标清视频制式  */
	HI_UNF_DISP_INTF_TYPE_E hdIntf;		/**<HD channel type*//**<CNcomment:高清通道类型*/
  	HI_UNF_DISP_INTF_TYPE_E sdIntf;		/**<SD channel type*//**<CNcomment:标清通道类型*/
	HI_UNF_DISP_INTERFACE_S DacMode;	/**<Digital-to-analog converter (DAC) mode*//**<CNcomment:DAC 模式 */
	HI_U32 layerformat;					/**<Layer pixel format*//**<CNcomment:图层像素格式*/
	HI_U32 inrectwidth;					/**<Input width*//**<CNcomment:输入宽度 */
	HI_U32 inrectheight;				/**<Input height*//**<CNcomment:输入高度*/
	
	HI_U32 u32Top;
	HI_U32 u32Left;
	
	unsigned int u32HuePlus;
	unsigned int u32Saturation;
	unsigned int u32Contrast;
	unsigned int u32Brightness;
	HI_UNF_DISP_BG_COLOR_S enBgcolor;
	HI_UNF_ASPECT_RATIO_E enAspectRatio;
	HI_UNF_ASPECT_CVRS_E enAspectCvrs;
	HI_UNF_DISP_MACROVISION_MODE_E enDispMacrsn;
	
}HI_LOADER_BASE_PARAM_S;

HI_S32 Disp_Graphic_Init(HI_HANDLE *phLayer, HI_HANDLE *phSurface);

#endif /* __LOADER_ADP_OSD_H__ */

