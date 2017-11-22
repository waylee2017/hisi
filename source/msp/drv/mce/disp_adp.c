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
  File Name	: disp_adp.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/

/*********************************add include here******************************/
#include <linux/errno.h>
#include <linux/stddef.h>
#include <linux/slab.h>
#include <linux/module.h>
#include <linux/string.h>
#include <linux/relay.h>
#include <linux/vmalloc.h>
#include <linux/mm.h>
#include <linux/cpu.h>
#include <linux/splice.h>
#include "hi_type.h"
#include "hi_drv_mmz.h"
#include "optm_hifb.h"
#include "hi_drv_disp.h"
#include "drv_tde_ext.h"
#include "hi_drv_mce.h"
#include "hi_unf_mce.h"
#include "tde_osictl.h"
#include "hifb_drv.h"

/***************************** Macro Definition ******************************/

//#define MCE_DISP_ADP_DEBUG

#define MCE_DISP_ADP_TRACE(fmt, args... )\
    do { \
             HI_PRINT(fmt, ##args );\
    } while (0)

/*************************** Structure Definition ****************************/


typedef struct
{
    HI_U32  u32LayerID;
    HI_BOOL bModifying;
} mce_layer_info;

static mce_layer_info g_layerinfo[CONFIG_MCE_LAYER_MAXNUM];


typedef struct Hidisp_adpt_fb_S
{
	unsigned int width;
	unsigned int height;
	unsigned int stride;
	unsigned int dispindex;
	MMZ_BUFFER_S mmzBuf[2];
}DISP_ADPT_FB_S;

static DISP_ADPT_FB_S dispFB[CONFIG_MCE_LAYER_MAXNUM];


/********************** Global Variable declaration **************************/

static HI_PDM_BASE_INFO_S base_Param;
static HI_MCE_PALY_INFO_S playInfo_Para;
static HI_BOOL gs_bMceLayerEnable = HI_FALSE;

/******************************* API declaration *****************************/

extern HI_S32 MCE_Base_Parse(HI_PDM_BASE_INFO_S *pBaseInfo);
extern HI_S32 MCE_GetPlayParamInfo(HI_MCE_PALY_INFO_S *pPlayInfo);

extern HI_S32 hdmi_Ext_Open(void);
extern HI_S32 hdmi_Ext_Close(void);
extern HI_VOID MCE_GetDispStatus(HI_BOOL *bIsOpen);
extern const char * get_sdkversion(void);



/***************************************************************************************
* func          : grc_open
* description   : 打开图层，图层初始化
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static int grc_open(void)
{
	int ret;
	ret = OPTM_GfxInit();
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxInit err!\n");
		return -1;
	}
	HI_INFO_MCE("OPTM_GfxInit ok!\n");
	HI_INFO_MCE("OPTM_GfxSetWorkMode ok!\n");
	
	return 0;
	
}

/***************************************************************************************
* func          : grc_close
* description   : 关闭图层，图层去初始化
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static int grc_close(void)
{
	int ret;
	ret =OPTM_GfxDeInit();
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxDeInit err!\n");
		return -1;
	}
	HI_INFO_MCE("OPTM_GfxDeInit ok!\n");
	return 0;
}


/***************************************************************************************
* func          : get_rectSize
* description   : 根据制式获取大小
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static void get_rectSize(int layid,unsigned int *width, unsigned int*heigh)
{
	if(CONFIG_MCE_LAYER_HD0 == layid || CONFIG_MCE_LAYER_AD0 == layid)
	{
		switch(base_Param.hdFmt)
		{
			case HI_UNF_ENC_FMT_1080P_60:
			case HI_UNF_ENC_FMT_1080P_50:
			case HI_UNF_ENC_FMT_1080P_30:
			case HI_UNF_ENC_FMT_1080P_25:
			case HI_UNF_ENC_FMT_1080P_24:
			case HI_UNF_ENC_FMT_1080i_60:
			case HI_UNF_ENC_FMT_1080i_50:
			{
				*width = 1920;
				*heigh = 1080;
				break;
			}
			case HI_UNF_ENC_FMT_720P_60:
			case HI_UNF_ENC_FMT_720P_50:
			{
				*width = 1280;
				*heigh = 720;
				break;
			}
			case HI_UNF_ENC_FMT_576P_50:
			{
				*width = 720;
				*heigh = 576;
				break;
			}
			case HI_UNF_ENC_FMT_480P_60:
			{
				*width = 720;
				*heigh = 480;
				break;
			}
			case HI_UNF_ENC_FMT_PAL:
			case HI_UNF_ENC_FMT_PAL_N:
			case HI_UNF_ENC_FMT_PAL_Nc:          
			{
				*width = 720;
				*heigh = 576;
				break;
			}
			case HI_UNF_ENC_FMT_NTSC:
			case HI_UNF_ENC_FMT_NTSC_J:
			case HI_UNF_ENC_FMT_NTSC_PAL_M:
			{
				*width = 720;
				*heigh = 480;
				break;
			}
			case HI_UNF_ENC_FMT_SECAM_SIN:
			case HI_UNF_ENC_FMT_SECAM_COS:        
			{
				*width = 720;
				*heigh = 576;
				break;
			}
      		case HI_UNF_ENC_FMT_861D_640X480_60:
 			{
				*width = 640;
				*heigh = 480;
				break;
			} 
       		case HI_UNF_ENC_FMT_VESA_800X600_60:
 			{
				*width = 800;
				*heigh = 600;
				break;
			}      
      		case HI_UNF_ENC_FMT_VESA_1024X768_60:
 			{
				*width = 1024;
				*heigh = 768;
				break;
			}
      		case HI_UNF_ENC_FMT_VESA_1280X720_60:
 			{
				*width = 1280;
				*heigh = 720;
				break;
			}
       		case HI_UNF_ENC_FMT_VESA_1280X800_60:
 			{
				*width = 1280;
				*heigh = 800;
				break;
			}
       		case HI_UNF_ENC_FMT_VESA_1280X1024_60:
 			{
				*width = 1280;
				*heigh = 1024;
				break;
			}
      		case HI_UNF_ENC_FMT_VESA_1366X768_60:
 			{
				*width = 1366;
				*heigh = 768;
				break;
			}
			case HI_UNF_ENC_FMT_VESA_1400X1050_60:
			{
				*width = 1400;
				*heigh = 1050;
				break;
			}
      			case HI_UNF_ENC_FMT_VESA_1440X900_60:
 			{
				*width = 1440;
				*heigh = 900;
				break;
			}
      		case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
 			{
				*width = 1440;
				*heigh = 900;
				break;
			}
       		case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
 			{
				*width = 1600;
				*heigh = 900;
				break;
			} 
       		case HI_UNF_ENC_FMT_VESA_1600X1200_60:
 			{
				*width = 1600;
				*heigh = 1200;
				break;
			} 
			case HI_UNF_ENC_FMT_VESA_1680X1050_60:
 			{
				*width = 1680;
				*heigh = 1050;
				break;
			} 
       		case HI_UNF_ENC_FMT_VESA_1920X1080_60:
 			{
				*width = 1920;
				*heigh = 1080;
				break;
			}  
       		case HI_UNF_ENC_FMT_VESA_1920X1200_60:
 			{
				*width = 1920;
				*heigh = 1200;
				break;
			}  
       		case HI_UNF_ENC_FMT_VESA_2048X1152_60:
 			{
				*width = 2048;
				*heigh = 1152;
				break;
			}   
       		case HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE:
 			{
				*width = base_Param.sLcdPara.InRectWidth;
				*heigh = base_Param.sLcdPara.InRectHeight;
				break;
			}         
			default:
			{
				*width = 1920;
				*heigh = 1080;
				break;
			}
		}
	}
	else
	{
		switch(base_Param.sdFmt)
		{
			case HI_UNF_ENC_FMT_1080P_60:
			case HI_UNF_ENC_FMT_1080P_50:
			case HI_UNF_ENC_FMT_1080P_30:
			case HI_UNF_ENC_FMT_1080P_25:
			case HI_UNF_ENC_FMT_1080P_24:
			case HI_UNF_ENC_FMT_1080i_60:
			case HI_UNF_ENC_FMT_1080i_50:
			case HI_UNF_ENC_FMT_720P_60:
			case HI_UNF_ENC_FMT_720P_50:
			case HI_UNF_ENC_FMT_576P_50:
			case HI_UNF_ENC_FMT_PAL:
			case HI_UNF_ENC_FMT_PAL_N:
			case HI_UNF_ENC_FMT_PAL_Nc:    
			case HI_UNF_ENC_FMT_SECAM_SIN:
			case HI_UNF_ENC_FMT_SECAM_COS:   
			{
				*width = 720;
				*heigh = 576;
				break;
			}
			case HI_UNF_ENC_FMT_480P_60:
			case HI_UNF_ENC_FMT_NTSC:
			case HI_UNF_ENC_FMT_NTSC_J:
			case HI_UNF_ENC_FMT_NTSC_PAL_M:
			{
				*width = 720;
				*heigh = 480;
				break;
			}      
			default:
			{
				*width = 720;
				*heigh = 576;
				break;
			}
		}
	}
	return;
}

/***************************************************************************************
* func          : mce_vo_callback
* description   : 
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 mce_vo_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{
	HI_U32 *pu32CallBakdId = (HI_U32 *)pParaml;
	OPTM_GFX_LAYER_EN enLayerId = 0;
	HI_U32 ulay = 0;
	HI_U32 uIndexForDisping = 0;
	HI_S32 ret;

	if(*pu32CallBakdId == ADAPT_LAYER_HD_0)
	{
		ulay      = CONFIG_MCE_LAYER_HD0;
		enLayerId = OPTM_GFX_LAYER_HD0;
	}
	else if(*pu32CallBakdId == ADAPT_LAYER_AD_0)
	{
		ulay      = CONFIG_MCE_LAYER_AD0;
		enLayerId = OPTM_GFX_LAYER_AD0;
	}
	else
	{
		ulay      = CONFIG_MCE_LAYER_SD0;
		enLayerId = OPTM_GFX_LAYER_SD0;
	}
	if(ulay == -1)
	{
		return HI_SUCCESS;
	}

	if(g_layerinfo[ulay].bModifying == HI_TRUE)
	{
		uIndexForDisping = dispFB[ulay].dispindex;
		uIndexForDisping = 1- uIndexForDisping;
#if 0
		MCE_DISP_ADP_TRACE("\n=======================================================\n");
		MCE_DISP_ADP_TRACE("set layer ddr = 0x%x\n",dispFB[ulay].mmzBuf[uIndexForDisping].u32StartPhyAddr);
		MCE_DISP_ADP_TRACE("=======================================================\n");
#endif
		ret = OPTM_GfxSetLayerAddr(enLayerId, dispFB[ulay].mmzBuf[uIndexForDisping].u32StartPhyAddr);
		if(ret)
		{
			HI_ERR_MCE("OPTM_GfxSetLayerAddr err!\n");
		}
		
		dispFB[ulay].dispindex = uIndexForDisping;

#ifdef MCE_DISP_ADP_DEBUG
		MCE_DISP_ADP_TRACE("\n==================================================\n");
		MCE_DISP_ADP_TRACE("===%s %s %d\n",__FILE__,__FUNCTION__,__LINE__);
		MCE_DISP_ADP_TRACE("no up layer register\n");
		MCE_DISP_ADP_TRACE("==================================================\n");
#endif

		ret = OPTM_GfxUpLayerReg(enLayerId);
		if(ret)
		{
			HI_ERR_MCE("OPTM_GfxUpLayerReg err !\n");
			return -1;
		}

	}
	
	g_layerinfo[ulay].bModifying = HI_FALSE;
	
	return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : Grc_Init
* description   : 
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 HI_MCE_Transition(HI_U32 u32LayerID)
{

	HI_S32 s32Ret = HI_SUCCESS;
	OPTM_OSD_DATA_S stOSDData;
	 
	/** close ad0 **/
	s32Ret = OPTM_GfxGetOSDData(u32LayerID, &stOSDData);
	if(s32Ret)
	{
		HI_ERR_MCE("OPTM_GfxGetOSDData err!\n");
		return HI_FAILURE;
	}
	if(OPTM_LAYER_STATE_ENABLE == stOSDData.eState)
	{
#if 0
		MCE_DISP_ADP_TRACE("\n=======================================================\n");
		MCE_DISP_ADP_TRACE("===%s %s %d\n",__FILE__,__FUNCTION__,__LINE__);
		MCE_DISP_ADP_TRACE("stOSDData.u32RegPhyAddr 	= 0x%x\n",stOSDData.u32RegPhyAddr);
		MCE_DISP_ADP_TRACE("stOSDData.eState			= %d\n",stOSDData.eState);
		MCE_DISP_ADP_TRACE("stOSDData.eFmt				= %d\n",stOSDData.eFmt);
		MCE_DISP_ADP_TRACE("stOSDData.stAlpha   		= %d\n",stOSDData.stAlpha);
		MCE_DISP_ADP_TRACE("stOSDData.u32Stride 		= %d\n",stOSDData.u32Stride);
		MCE_DISP_ADP_TRACE("=======================================================\n");
#endif

	}

	return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : Grc_Init
* description   : 
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static int grc_layer_open(int lay)
{
	int ret;
	int bufsize;
	HI_RECT_S rectParam, rectParamIn;
	OPTM_GFX_LAYER_EN layId;
	OPTM_GFX_ALPHA_S stAlpha;
	HI_U32 bpp = 4;
    HI_U8 scl_k;
	HI_U32 stride;
    const HI_CHAR *pVersion = HI_NULL;

	layId = CONFIG_MCE_LAYER_ID;
	
	ret = HI_MCE_Transition(CONFIG_MCE_LAYER_ID);
	if(ret)
	{
		HI_ERR_MCE("HI_MCE_Transition err!\n");
		return -1;
	}
	
	ret = OPTM_GfxOpenLayer(layId);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxOpenLayer err!\n");
		return -1;
	}
	HI_INFO_MCE("OPTM_GfxOpenLayer ok!\n");

	ret = OPTM_SetLogoMceEnable(HI_TRUE);
	if(ret)
	{
		HI_ERR_MCE("OPTM_SetLogoMceEnable err!\n");
		return -1;
	}

	
	ret = OPTM_GfxSetLayerBitExtMode(layId, OPTM_GFX_BITEXTEND_3RD);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetLayerBitExtMode err!\n");
		goto err0;
	}
	HI_INFO_MCE("OPTM_GfxSetLayerBitExtMode ok!\n");


	if(base_Param.layerformat == 5)
	{
		ret = OPTM_GfxSetLayerDataFmt(layId, OPTM_GFX_FMT_ARGB_1555);
		bpp = 2;
	}
	else if(base_Param.layerformat == 9)
	{
		ret = OPTM_GfxSetLayerDataFmt(layId, OPTM_GFX_FMT_ARGB_8888);
		bpp = 4;
	}
	else
	{
		HI_ERR_MCE("unsupport layerformat %d. so use default layerformat %d!\n",base_Param.layerformat,9);
		ret = OPTM_GfxSetLayerDataFmt(layId, OPTM_GFX_FMT_ARGB_8888);		
	}
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetLayerDataFmt err!\n");
		goto err0;
	}
	HI_INFO_MCE("OPTM_GfxSetLayerDataFmt ok!\n");

	stAlpha.bAlphaChannel = HI_FALSE;
	stAlpha.bAlphaEnable  = HI_TRUE;
	stAlpha.u8GlobalAlpha = 0xff;
    stAlpha.u8Alpha0      = 0;
    stAlpha.u8Alpha1      = 0xff;
    
	ret = OPTM_GfxSetLayerAlpha(layId, &stAlpha);
	if (ret != 0)
	{
		HI_ERR_MCE("OPTM_GfxSetLayerAlpha err! \n");
		goto err0;
	}
	HI_INFO_MCE("OPTM_GfxSetLayerAlpha ok!\n");

    pVersion = get_sdkversion();
	HI_INFO_MCE("###%s->%d,Version:%s\n",__func__,__LINE__,pVersion);
    if(0 == strncmp(pVersion, "0.0.0.0", 7))
    {
        rectParam.s32X = 0;
        rectParam.s32Y= 0;  
        get_rectSize(lay,&rectParam.s32Width, &rectParam.s32Height);       
    }
    else
    {
        (HI_VOID)MCE_GetPlayParamInfo(&playInfo_Para);
        rectParam.s32X = playInfo_Para.Info.gphFileInfo.comInfo.u32ScreenXpos;
        rectParam.s32Y= playInfo_Para.Info.gphFileInfo.comInfo.u32ScreenYpos;   
    	rectParam.s32Width = playInfo_Para.Info.gphFileInfo.comInfo.u32ScreenWidth;  
    	rectParam.s32Height = playInfo_Para.Info.gphFileInfo.comInfo.u32ScreenHeight;         
    }

	if(lay)
	{
		dispFB[lay].width  = playInfo_Para.Info.gphFileInfo.comInfo.u32Width; //CANVAS width
		dispFB[lay].height = playInfo_Para.Info.gphFileInfo.comInfo.u32Height; //CANVAS height
		dispFB[lay].stride = (dispFB[lay].width*bpp+ 0xf)&0xfffffff0;	
	}
	else
	{

		dispFB[lay].width  = base_Param.inrectwidth;
		dispFB[lay].height = base_Param.inrectheight;	
		dispFB[lay].stride = (dispFB[lay].width *bpp + 0xf)&0xfffffff0;

	}

	bufsize = dispFB[lay].height*dispFB[lay].stride;
	dispFB[lay].mmzBuf[0].u32StartPhyAddr = 0;
	dispFB[lay].mmzBuf[0].u32StartVirAddr = 0;
	dispFB[lay].mmzBuf[0].u32Size         = 0;
	dispFB[lay].mmzBuf[1].u32StartPhyAddr = 0;
	dispFB[lay].mmzBuf[1].u32StartVirAddr = 0;
	dispFB[lay].mmzBuf[1].u32Size         = 0;


	ret = HI_DRV_MMZ_Alloc("dispadpfb_gfx_mce_0", HI_NULL, bufsize, 128, &(dispFB[lay].mmzBuf[0]));
	if (ret != 0)
	{
		HI_ERR_MCE("HI_DRV_MMZ_AllocAndMap err! \n");
		goto err0;
	}
	ret = HI_DRV_MMZ_Alloc("dispadpfb_gfx_mce_1", HI_NULL, bufsize, 128, &(dispFB[lay].mmzBuf[1]));

	if (ret != 0)
	{
		HI_ERR_MCE("HI_DRV_MMZ_AllocAndMap err! \n");
		goto err0;
	}
	
	HI_INFO_MCE("HI_DRV_MMZ_AllocAndMap ok!\n");
	dispFB[lay].dispindex = 0;

#if 0	
	ret = OPTM_GfxSetLayerAddr(layId, dispFB[lay].mmzBuf[0].u32StartPhyAddr);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetLayerAddr err!\n");
		goto err1;
	}
	HI_INFO_MCE("OPTM_GfxSetLayerAddr ok!\n");
#endif

	rectParamIn.s32X      = 0;
	rectParamIn.s32Y      = 0;	
	rectParamIn.s32Width  = dispFB[lay].width;  
	rectParamIn.s32Height = dispFB[lay].height; 
    if((rectParam.s32Width/2 - 10 <= rectParam.s32X) || (rectParam.s32Height/2 - 10 <=  rectParam.s32Y))
    {
        rectParam.s32X = 0;
        rectParam.s32Y = 0;
    }
    
    stride = dispFB[lay].stride;
    scl_k  = (rectParamIn.s32Height*2) / rectParam.s32Height;
    if( scl_k >= 3)
    {    
           if(scl_k&0x01)
           { 
               scl_k =  (scl_k +1)/2;
               stride *= scl_k;
           }
           else
           {
               scl_k /=2;
               stride *= scl_k;
            }
           rectParamIn.s32Height /= scl_k;
    }

  #if 0
	MCE_DISP_ADP_TRACE("\n=======================================================\n");
	MCE_DISP_ADP_TRACE("stride                 = %d\n",stride);
	MCE_DISP_ADP_TRACE("rectParamIn.s32Height  = %d\n",rectParamIn.s32Height);
	MCE_DISP_ADP_TRACE("rectParamIn.s32Width   = %d\n",rectParamIn.s32Width);
	MCE_DISP_ADP_TRACE("rectParamIn.s32X       = %d\n",rectParamIn.s32X);
	MCE_DISP_ADP_TRACE("rectParamIn.s32X       = %d\n",rectParamIn.s32X);
	
	MCE_DISP_ADP_TRACE("rectParam.s32Height    = %d\n",rectParam.s32Height);
	MCE_DISP_ADP_TRACE("rectParam.s32Width     = %d\n",rectParam.s32Width);
	MCE_DISP_ADP_TRACE("rectParam.s32X         = %d\n",rectParam.s32X);
	MCE_DISP_ADP_TRACE("rectParam.s32X         = %d\n",rectParam.s32X);
	MCE_DISP_ADP_TRACE("=======================================================\n");
#endif

    ret = OPTM_GfxSetLayerStride(layId, stride);
    if(ret)
    {
  	   HI_ERR_MCE("OPTM_GfxSetLayerStride err!\n");
  	   goto err1;
    }
#if 1
	/**
	 **if you use AD0,this is important
	 **/
	ret = OPTM_GfxSetHDRect(layId, &rectParamIn, &rectParam);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetHDRect err!\n");
		goto err1;
	}
#endif
	ret = OPTM_GfxSetLayerRect(layId, &rectParamIn, &rectParam);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetLayerRect err!\n");
		goto err1;
	}
	HI_INFO_MCE("OPTM_GfxSetLayerRect ok!\n");

	ret = OPTM_GfxSetEnable(layId, HI_TRUE);
	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetEnable err!\n");
		goto err1;
	}
	HI_INFO_MCE("OPTM_GfxSetEnable ok!\n");
	
	memset(&g_layerinfo[lay],0,sizeof(mce_layer_info));

	OPTM_GfxSetIntCallback(OPTM_INTTYPE_VTHD,mce_vo_callback,layId);

	return HI_SUCCESS;
		
err1:
	
	HI_DRV_MMZ_Release(&(dispFB[lay].mmzBuf[0]));
	dispFB[lay].mmzBuf[0].u32StartPhyAddr = 0;
	
err0:
	OPTM_GfxCloseLayer(layId);
	
	return HI_FAILURE;
	
}

/***************************************************************************************
* func          : grc_lay_blit
* description   : CNcomment: grc layer blit to display ddr CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static int grc_lay_blit(int lay,                        \
                            unsigned int picAddr,           \
                            unsigned int width,             \
                            unsigned int height,            \
                            unsigned int pitch,             \
				 		    TDE2_COLOR_FMT_E fmt)
{

	HI_S32 ret    =  HI_SUCCESS;
	HI_U32 uIndexForDisping = 0;
	TDE_HANDLE hTde;
	TDE2_RECT_S srcRect   = {0};
	TDE2_RECT_S dstRect   = {0};
	TDE2_SURFACE_S srcSur = {0};
	TDE2_SURFACE_S dstSur = {0};
	TDE2_OPT_S stOpt = {0};

	srcSur.u32PhyAddr   = picAddr;
	srcSur.u32Width     = width;
	srcSur.u32Height    = height;
	srcSur.u32Stride    = pitch;
	srcSur.bAlphaMax255 = HI_TRUE;
	srcSur.bYCbCrClut   = HI_FALSE;
	srcSur.enColorFmt   = fmt;
	srcSur.u8Alpha0     = 0;
	srcSur.u8Alpha1     = 255;

	srcRect.s32Xpos   = 0;
	srcRect.s32Ypos   = 0;
	srcRect.u32Width  = width;
	srcRect.u32Height = height;
	
#if 0
	MCE_DISP_ADP_TRACE("\n=======================================================\n");
	MCE_DISP_ADP_TRACE("srcSur.u32PhyAddr	= 0x%x\n",srcSur.u32PhyAddr);
	MCE_DISP_ADP_TRACE("srcSur.u32Width     = %d\n",  srcSur.u32Width);
	MCE_DISP_ADP_TRACE("srcSur.u32Height	= %d\n",  srcSur.u32Height);
	MCE_DISP_ADP_TRACE("srcSur.u32Stride	= %d\n",  srcSur.u32Stride);
	MCE_DISP_ADP_TRACE("srcSur.enColorFmt	= %d\n",  srcSur.enColorFmt);

	MCE_DISP_ADP_TRACE("srcRect.s32Xpos     = %d\n",  srcRect.s32Xpos);
	MCE_DISP_ADP_TRACE("srcRect.s32Ypos   	= %d\n",  srcRect.s32Ypos);
	MCE_DISP_ADP_TRACE("srcRect.u32Width	= %d\n",  srcRect.u32Width);
	MCE_DISP_ADP_TRACE("srcRect.u32Height	= %d\n",  srcRect.u32Height);
	MCE_DISP_ADP_TRACE("=======================================================\n");
#endif


	uIndexForDisping    = dispFB[lay].dispindex;
	uIndexForDisping    = 1- uIndexForDisping;
	dstSur.u32PhyAddr   = dispFB[lay].mmzBuf[uIndexForDisping].u32StartPhyAddr;
	
	dstSur.u32Width     = dispFB[lay].width;
	dstSur.u32Height    = dispFB[lay].height;
	dstSur.u32Stride    = dispFB[lay].stride;
	dstSur.bAlphaMax255 = HI_TRUE;
	dstSur.bYCbCrClut   = HI_FALSE;
	if(9 == base_Param.layerformat)
	{
		dstSur.enColorFmt = TDE2_COLOR_FMT_ARGB8888;
	}
	else
	{
		dstSur.enColorFmt = TDE2_COLOR_FMT_ARGB1555;		
	}
	dstSur.u8Alpha0 = 0;
	dstSur.u8Alpha1 = 255;

	dstRect.s32Xpos   = 0;
	dstRect.s32Ypos   = 0;
	dstRect.u32Width  = dispFB[lay].width;
	dstRect.u32Height = dispFB[lay].height;

#if 0
	MCE_DISP_ADP_TRACE("\n=======================================================\n");
	MCE_DISP_ADP_TRACE("dstSur.u32PhyAddr	= 0x%x\n",dstSur.u32PhyAddr);
	MCE_DISP_ADP_TRACE("dstSur.u32Width     = %d\n",  dstSur.u32Width);
	MCE_DISP_ADP_TRACE("dstSur.u32Height	= %d\n",  dstSur.u32Height);
	MCE_DISP_ADP_TRACE("dstSur.u32Stride	= %d\n",  dstSur.u32Stride);
	MCE_DISP_ADP_TRACE("dstSur.enColorFmt	= %d\n",  dstSur.enColorFmt);

	MCE_DISP_ADP_TRACE("dstRect.s32Xpos     = %d\n",  dstRect.s32Xpos);
	MCE_DISP_ADP_TRACE("dstRect.s32Ypos   	= %d\n",  dstRect.s32Ypos);
	MCE_DISP_ADP_TRACE("dstRect.u32Width	= %d\n",  dstRect.u32Width);
	MCE_DISP_ADP_TRACE("dstRect.u32Height	= %d\n",  dstRect.u32Height);
	MCE_DISP_ADP_TRACE("=======================================================\n");
#endif

	if( (srcSur.u32Width == dstSur.u32Width) &&
		(srcSur.u32Height == dstSur.u32Height) )
	{
		stOpt.bResize = 0;
 		stOpt.enDeflickerMode = TDE2_DEFLICKER_MODE_NONE;
	}
	else
	{
		stOpt.bResize = 1;
 		stOpt.enDeflickerMode = TDE2_DEFLICKER_MODE_BOTH;
	}

#if 0
	MCE_DISP_ADP_TRACE("\n=======================================================\n");
	MCE_DISP_ADP_TRACE("stOpt.bResize	= 0x%x\n",stOpt.bResize);
	MCE_DISP_ADP_TRACE("=======================================================\n");
#endif

	ret = TdeOsiBeginJob(&hTde);
	if(ret != HI_SUCCESS)
	{
		HI_ERR_MCE("TdeOsiBeginJob err!\n");
		return HI_FAILURE;
	}
                      
	ret = TdeOsiBlit(hTde, &dstSur, &dstRect, &srcSur, &srcRect, &dstSur, &dstRect, &stOpt);
	if(ret != HI_SUCCESS)
	{
		HI_ERR_MCE("TdeOsiBlit ret = 0x%x handle %d \n", ret,hTde);    
		TdeOsiCancelJob(hTde);
		return HI_FAILURE;
    }

	ret = TdeOsiEndJob(hTde, HI_TRUE, 100, HI_FALSE, HI_NULL, HI_NULL);
	if(ret != HI_SUCCESS)
	{
		HI_ERR_MCE("TdeOsiEndJob err !\n"); 
		TdeOsiCancelJob(hTde);
		return HI_FAILURE;
	}	

#if 0
	MCE_DISP_ADP_TRACE("\n=======================================================\n");
	MCE_DISP_ADP_TRACE("dstSur.u32PhyAddr	= 0x%x\n",dstSur.u32PhyAddr);
	MCE_DISP_ADP_TRACE("=======================================================\n");
#endif
	if(HI_FALSE == gs_bMceLayerEnable)
	{
		//ret = OPTM_GfxSetEnable(CONFIG_MCE_LAYER_ID, HI_TRUE);
		//ret = OPTM_GfxUpLayerReg(CONFIG_MCE_LAYER_ID);
		gs_bMceLayerEnable = HI_TRUE;
	}
	g_layerinfo[lay].bModifying = HI_TRUE;

	if(ret)
	{
		HI_ERR_MCE("OPTM_GfxSetEnable err !\n");
		return HI_FAILURE;
	}

	return HI_SUCCESS;
	
}


void grc_layer_close2(int lay)
{	

	if (dispFB[lay].mmzBuf[0].u32StartPhyAddr != 0)
	{
		HI_DRV_MMZ_Release(&(dispFB[lay].mmzBuf[0]));
		dispFB[lay].mmzBuf[0].u32StartPhyAddr = 0;
	}
	if (dispFB[lay].mmzBuf[1].u32StartPhyAddr != 0)
	{
		HI_DRV_MMZ_Release(&(dispFB[lay].mmzBuf[1]));
		dispFB[lay].mmzBuf[1].u32StartPhyAddr = 0;
	}
	HI_INFO_MCE("HI_DRV_MMZ_UnmapAndRelease ok!\n");

	OPTM_GfxSetIntCallback(OPTM_INTTYPE_VTHD,NULL,CONFIG_MCE_LAYER_ID);
	
	return;

}



/***************************************************************************************
* func          : MCE_Dsp_Show
* description   : CNcomment: display show CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
int MCE_Dsp_Show(HI_U32 picAddr,       \
                            HI_U32 width,          \
                            HI_U32 height,         \
                            HI_U32 pitch,          \
                            TDE2_COLOR_FMT_E  tdeFmt)
{

	HI_S32 ret = 0;
	HI_BOOL bIsDispOpen;
	HI_S32 lay = 0;

	if(OPTM_GFX_LAYER_HD0 == CONFIG_MCE_LAYER_ID)
	{
		lay = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == CONFIG_MCE_LAYER_ID)
	{
		lay = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		lay = CONFIG_MCE_LAYER_SD0;
	}
	
	MCE_GetDispStatus(&bIsDispOpen);
	if(bIsDispOpen != HI_TRUE)
	{
		HI_ERR_MCE("hd & sd not open !\n");
		return HI_FAILURE;
	}
	ret = grc_lay_blit(lay, picAddr, width, height, pitch, tdeFmt);
	if(ret)
	{
		HI_ERR_MCE("grc_lay_blit err !\n");
		return HI_FAILURE;
	}
	
	return HI_SUCCESS;

}


/***************************************************************************************
* func          : Grc_Init
* description   : 
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
int Grc_Init(HI_U32 u32LayerID)
{

	int ret = 0;
	int lay = 0;
	MCE_Base_Parse(&base_Param);
	
	ret = grc_open();
	if(ret)
	{
		return -1;
	}
	
	if(OPTM_GFX_LAYER_HD0 == u32LayerID)
	{
		lay = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == u32LayerID)
	{
		lay = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		lay = CONFIG_MCE_LAYER_SD0;
	}
	ret = grc_layer_open(lay);
	if(ret)
	{
		goto err;
	}
	return 0;
	
	err:
		grc_close();
		return -1;
		
}

void Grc_Deinit(int lay)
{
	gs_bMceLayerEnable = HI_FALSE;
	grc_layer_close2(lay);
}
