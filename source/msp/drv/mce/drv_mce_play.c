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
  File Name	: drv_mce_play.c
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
#include <linux/kernel.h>
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
#include <asm/io.h>
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/memory.h>
#include <linux/delay.h>
#include <linux/kthread.h>
#include <linux/fs.h>
#include <linux/time.h>
#include <linux/sched.h>

#include "hi_kernel_adapt.h"

#include "drv_mce_avplay.h"
#include "drv_base_ext_k.h"
#include "hi_drv_mmz.h"
#include "hi_drv_i2c.h"
#include "hi_drv_gpio.h"
#include "hi_drv_gpioi2c.h"
#include "hi_drv_tuner.h"
#include "drv_demux_ext.h"
#include "drv_base_ext_k.h"
#include "hi_drv_vdec.h"
#include "drv_vo_ext.h"
#include "hi_drv_disp.h"
#include "drv_sync_ext.h"
#include "drv_vfmw_ext.h"
#include "drv_jpeg_ext.h"
#include "drv_tde_ext.h"
#include "drv_jpeg_ext.h"
#include "drv_file_ext.h"
#include "drv_adec_ext.h"
#include "drv_adsp_ext.h"
#include "drv_pdm_ext.h"
#include "hi_drv_module.h"
#include "drv_dev_ext.h"
#include "drv_ao_ext.h"
#include "drv_disp_ext.h"
#include "hi_drv_hdmi.h"
#include "hi_drv_mce.h"
#include "drv_mce_boardcfg.h"
#include "hi_drv_pdm.h"
#include "hi_ani_pic.h"
#include "optm_vo.h"
#include "optm_hifb.h"

/***************************** Macro Definition ******************************/
#define MCE_DMX_ID              0
#define MCE_DMX_TS_PORT         0
#define MCE_DMX_DVB_PORT        0
#define MCE_GET_TS_LEN          (188*50)


#define MCE_LOCK(pMutex)    \
    do{ \
        if(down_interruptible(pMutex))  \
        {       \
            HI_ERR_MCE("ERR: mce lock err!\n"); \
        }       \
    }while(0)

#define MCE_UNLOCK(pMutex)    \
    do{ \
        up(pMutex); \
    }while(0)



/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/
unsigned int PART_LOGO_DATA_MAXSIZE 	= 0x800000;
unsigned int PART_PLAY_DATA_MAXSIZE 	= 0x2000000;
unsigned int PART_BASE_PARA_OFFSET 	= 0;
unsigned int PART_BASE_PARA_SIZE		= PART_DEFT_PARA_SIZE;
unsigned int PART_LOGO_PARA_OFFSET 	= 0;
unsigned int PART_LOGO_PARA_SIZE		= PART_DEFT_PARA_SIZE;
unsigned int PART_LOGO_DATA_OFFSET	= 0;
unsigned int PART_LOGO_DATA_SIZE		= 0;
unsigned int PART_PLAY_PARA_OFFSET	= 0;
unsigned int PART_PLAY_PARA_SIZE		= PART_DEFT_PARA_SIZE;
unsigned int PART_PLAY_DATA_OFFSET	= 0;
unsigned int PART_PLAY_DATA_SIZE		= 0;

extern MCE_S   g_Mce;

static MMZ_BUFFER_S g_Play_Buf;
static HI_BOOL    g_bIsDispOpen;


/******************************* API declaration *****************************/

HI_S32 MCE_Init(HI_VOID);
HI_S32 MCE_DeInit(HI_VOID);
HI_S32 MCE_DvbPlayStop(MCE_S *pMce);

HI_U32 MCE_GetCurTime(HI_VOID)
{
    HI_U64   SysTime;

    SysTime = sched_clock();

    do_div(SysTime, 1000000);

    return (HI_U32)SysTime;
    
}

HI_S32 MCE_SetBeginTime(HI_VOID)
{
	MCE_S     *pMce = &g_Mce;
    pMce->BeginTime = MCE_GetCurTime();
    return 0;
}

HI_S32 MCE_Base_Parse(HI_PDM_BASE_INFO_S *pBaseInfo)
{
	HI_S32 Ret;
	if(HI_NULL == pBaseInfo)
	{
		HI_ERR_MCE("ERR:invalid param\n");
		return HI_FAILURE;
	}
	Ret = HI_DRV_PDM_GetBaseInfo(pBaseInfo);
	if(Ret)
	{
		HI_ERR_MCE("ERR:HI_DRV_PDM_GetBaseInfo failed!\n");
		return HI_FAILURE;
	}
	
	return HI_SUCCESS;
}

HI_S32 MCE_GetAniAddr(HI_U32 *pDataAddr)
{
	HI_S32 Ret;
	if(HI_NULL_PTR == pDataAddr)
	{
		HI_ERR_MCE("ERR:invalid param\n");
		return HI_FAILURE;
	}
	Ret = HI_DRV_PDM_GetAniAddr(pDataAddr);
	return Ret;
}

HI_VOID MCE_GetDispStatus(HI_BOOL *bIsOpen)
{
	*bIsOpen = g_bIsDispOpen;
}

HI_S32 MCE_GetPlayParamInfo(HI_MCE_PALY_INFO_S *pPlayInfo)
{

	MCE_S     *pMce = &g_Mce;

	if(HI_NULL == pPlayInfo)
	{
		HI_ERR_MCE("ERR:invalid param\n");
		return HI_FAILURE;
	}

	memcpy(pPlayInfo,&pMce->stMceParam,sizeof(HI_MCE_PALY_INFO_S));

	return HI_SUCCESS;
}


HI_VOID MCE_TransFomat(HI_UNF_ENC_FMT_E enSrcFmt, HI_UNF_ENC_FMT_E *penHdFmt, HI_UNF_ENC_FMT_E *penSdFmt)
{
    switch(enSrcFmt)
    {
         /* bellow are tv display formats */
        case HI_UNF_ENC_FMT_1080P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        } 
        case HI_UNF_ENC_FMT_576P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_576P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;        
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_480P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;         
        }
         case HI_UNF_ENC_FMT_PAL:
        {
            *penHdFmt = HI_UNF_ENC_FMT_PAL;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        {
            *penHdFmt = HI_UNF_ENC_FMT_NTSC;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        } 
        
        /* bellow are vga display formats */
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_861D_640X480_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X720_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X800_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1360X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1400X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;    
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1680X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        } 
        
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1080_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        default:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
    }

    return;
}

HI_S32 MCE_ADP_DispOpen(HI_DISP_PARAM_S stDispParam)
{
    HI_S32                      Ret = HI_SUCCESS;
	HI_UNF_ENC_FMT_E HdFmt;
	HI_UNF_ENC_FMT_E SdFmt;
	HI_UNF_DISP_INTERFACE_S     DacMode;
    HI_UNF_DISP_BG_COLOR_S      stBgColor;
	
    Ret = HI_DRV_DISP_Init();
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    Ret |= HI_DRV_DISP_Attach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);

    Ret |= HI_DRV_DISP_Open(HI_UNF_DISP_HD0);
    Ret |= HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_0);
#endif

	Ret |= HI_DRV_DISP_Open(HI_UNF_DISP_SD0);
	

	DacMode.bBt1120Enable = stDispParam.stDacMode.bBt1120Enable;
	DacMode.bBt656Enable = stDispParam.stDacMode.bBt656Enable;
	DacMode.bScartEnable = stDispParam.stDacMode.bScartEnable;

	memcpy(DacMode.enDacMode,stDispParam.stDacMode.enDacMode,sizeof(HI_UNF_DISP_DAC_MODE_E)*MAX_DAC_NUM);

    Ret |= HI_DRV_DISP_SetDacMode(&DacMode);

	HI_INFO_MCE("dac[0]:%d\n",stDispParam.stDacMode.enDacMode[0]);
	HI_INFO_MCE("dac[1]:%d\n",stDispParam.stDacMode.enDacMode[1]);
	HI_INFO_MCE("dac[2]:%d\n",stDispParam.stDacMode.enDacMode[2]);
	HI_INFO_MCE("dac[3]:%d\n",stDispParam.stDacMode.enDacMode[3]);

	/* set sd and hd format */
    MCE_TransFomat(stDispParam.enFormat, &HdFmt, &SdFmt);
	
    stBgColor.u8Blue  = stDispParam.stBgColor.u8Blue;
    stBgColor.u8Green   = stDispParam.stBgColor.u8Green;
    stBgColor.u8Red = stDispParam.stBgColor.u8Red;    
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
    Ret |= HI_DRV_DISP_SetFormat(HI_UNF_DISP_HD0, HdFmt);
	
    Ret |= HI_DRV_DISP_SetBgColor(HI_UNF_DISP_HD0, &stBgColor);
    Ret |= HI_DRV_DISP_SetBrightness(HI_UNF_DISP_HD0, stDispParam.u32Brightness);
    Ret |= HI_DRV_DISP_SetContrast(HI_UNF_DISP_HD0, stDispParam.u32Contrast);
    Ret |= HI_DRV_DISP_SetSaturation(HI_UNF_DISP_HD0, stDispParam.u32Saturation);
    Ret |= HI_DRV_DISP_SetHuePlus(HI_UNF_DISP_HD0, stDispParam.u32HuePlus);
#endif

    Ret |= HI_DRV_DISP_SetFormat(HI_UNF_DISP_SD0, SdFmt);
    
    Ret |= HI_DRV_DISP_SetBgColor(HI_UNF_DISP_SD0, &stBgColor);
    Ret |= HI_DRV_DISP_SetBrightness(HI_UNF_DISP_SD0, stDispParam.u32Brightness);
    Ret |= HI_DRV_DISP_SetContrast(HI_UNF_DISP_SD0, stDispParam.u32Contrast);
    Ret |= HI_DRV_DISP_SetSaturation(HI_UNF_DISP_SD0, stDispParam.u32Saturation);
    Ret |= HI_DRV_DISP_SetHuePlus(HI_UNF_DISP_SD0, stDispParam.u32HuePlus);

	HI_INFO_MCE("HDFmt:%d\n",HdFmt);
	HI_INFO_MCE("SDFmt:%d\n",SdFmt);
 	g_bIsDispOpen = HI_TRUE;
    return Ret;
}


/*Close display, but don't close hdmi,
because display can multi-open and multi-close, but hdmi can't*/
HI_S32 MCE_ADP_DispClose(HI_VOID)
{
    HI_S32      Ret;

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    Ret = HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_0);

	Ret |= HI_DRV_DISP_Detach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);

    Ret |= HI_DRV_DISP_Close(HI_UNF_DISP_HD0);
#endif

	Ret = HI_DRV_DISP_Close(HI_UNF_DISP_SD0);
    
    HI_DRV_DISP_DeInit();
	g_bIsDispOpen = HI_FALSE;
    return Ret;
}

HI_S32 MCE_ADP_VoOpen(HI_VOID)
{
    HI_S32      Ret;

    Ret = HI_DRV_VO_Init();

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)  
    Ret |= HI_DRV_VO_Open(HI_UNF_VO_HD0);
#else
	Ret |= HI_DRV_VO_Open(HI_UNF_VO_SD0);
#endif

    Ret |= HI_DRV_VO_SetDevMode(HI_UNF_VO_DEV_MODE_NORMAL);

    return Ret;
}

HI_S32 MCE_ADP_VoClose(HI_VOID)
{
    HI_S32      Ret;
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)  
    Ret = HI_DRV_VO_Close(HI_UNF_VO_HD0);
#else
	Ret = HI_DRV_VO_Close(HI_UNF_VO_SD0);
#endif
    HI_DRV_VO_DeInit();

    return HI_SUCCESS;
}

HI_S32 MCE_ADP_VoCreateWin(HI_HANDLE *phWin)
{
    HI_S32                  Ret;
    HI_UNF_WINDOW_ATTR_S    WinAttr;

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    WinAttr.enVo = HI_UNF_VO_HD0;
    WinAttr.bVirtual = HI_FALSE;
    WinAttr.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    WinAttr.enAspectCvrs = HI_UNF_ASPECT_CVRS_IGNORE;
    WinAttr.stInputRect.s32X = 0;
    WinAttr.stInputRect.s32Y = 0;
    WinAttr.stInputRect.s32Width = 1920;
    WinAttr.stInputRect.s32Height = 1080;
#else
	WinAttr.enVo = HI_UNF_VO_SD0;
    WinAttr.bVirtual = HI_FALSE;
    WinAttr.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    WinAttr.enAspectCvrs = HI_UNF_ASPECT_CVRS_IGNORE;
    WinAttr.stInputRect.s32X = 0;
    WinAttr.stInputRect.s32Y = 0;
    WinAttr.stInputRect.s32Width = 720;
    WinAttr.stInputRect.s32Height = 576;
#endif

    memset(&WinAttr.stOutputRect, 0x0, sizeof(HI_RECT_S));
    memcpy(&WinAttr.stOutputRect,&WinAttr.stInputRect,sizeof(HI_RECT_S));
    
    Ret = HI_DRV_VO_CreateWindow(&WinAttr, phWin);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_CreateWindow\n");
    }

    return Ret;
}


HI_S32 MCE_ADP_TunerConnect(MCE_DVB_INFO_S stParam)
{
    HI_S32                              Ret = HI_SUCCESS;
    HI_UNF_TUNER_ATTR_S                 stAttr = {0};
    HI_U32 			u32TunerID = 0;
    HI_UNF_TUNER_CONNECT_PARA_S  stConnectPara = {0};

    u32TunerID = stParam.tunerId;
  
    Ret = HI_DRV_TUNER_GetDeftAttr(u32TunerID, &stAttr);
    if(Ret)
    {
	 HI_ERR_MCE("ERR: HI_DRV_TUNER_GetDeftAttr\n");
	  return Ret;
    }

    stAttr.enDemodDevType 		= stParam.demoDev;
    stAttr.enI2cChannel        	= stParam.I2cChannel;
    stAttr.enOutputMode     	= HI_UNF_TUNER_OUTPUT_MODE_PARALLEL_MODE_A;
    stAttr.enTunerDevType  		=stParam.tunerDevType;
    stAttr.u32DemodAddr     	= HI_DEMOD_DEV_ADDR;//stParam.demoAddr;
    stAttr.u32TunerAddr       	= HI_TUNER_DEV_ADDR;//stParam.tunerAddr;
    stAttr.enSigType          	=HI_UNF_TUNER_SIG_TYPE_CAB;	
    Ret = HI_DRV_TUNER_SetAttr(u32TunerID, &stAttr);
   if(Ret)
    {
	 HI_ERR_MCE("ERR: HI_DRV_TUNER_SetAttr\n");
	 return Ret;
    }
 
   #if 0
    if (HI_UNF_TUNER_SIG_TYPE_SAT == stAttr.enSigType)
    {
        GET_SAT_TUNER_CONFIG(stSatTunerAttr);
        Ret |= HI_DRV_TUNER_SetSatAttr(TUNER_USE, &stSatTunerAttr);

        Ret |= HI_DRV_TUNER_SetLNBConfig(TUNER_USE, &stParam.stLnbCfg);

        Ret |= HI_DRV_TUNER_SetLNBPower(TUNER_USE, stParam.enLNBPower);

        Ret |= HI_DRV_TUNER_DISEQC_Switch16Port(TUNER_USE, &stParam.st16Port);

        Ret |= HI_DRV_TUNER_DISEQC_Switch4Port(TUNER_USE, &stParam.st4Port);

        Ret |= HI_DRV_TUNER_Switch22K(TUNER_USE, stParam.enSwitch22K);
    }
   #endif
	
    stConnectPara.enSigType = stAttr.enSigType; 
	

   if (HI_UNF_TUNER_SIG_TYPE_CAB== stAttr.enSigType)
   {
	stConnectPara.unConnectPara.stCab.enModType          =HI_UNF_MOD_TYPE_QAM_16+ stParam.tunerQam;
	stConnectPara.unConnectPara.stCab.u32SymbolRate = stParam.tunerSrate*1000;
	stConnectPara.unConnectPara.stCab.u32Freq                 =stParam.tunerFreq*1000;
	stConnectPara.unConnectPara.stCab.bReverse               =HI_FALSE;
   }
    Ret =HI_DRV_TUNER_Connect(u32TunerID , &stConnectPara,2000);
    if(Ret)
    {
	 HI_ERR_MCE("ERR: HI_DRV_TUNER_Connect\n");
    }
    return Ret;
}

static HI_S32 MCE_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr, HI_U32 u32Volume)
{
    HI_U8 ii = 0;
    HI_UNF_SND_GAIN_ATTR_S stGainAttr;

    stGainAttr.bLinearMode = HI_TRUE;
    stGainAttr.s32Gain = (HI_S32)u32Volume;

    for (ii = 0; ii < pstAttr->u32PortNum && ii < HI_UNF_SND_OUTPUTPORT_MAX; ii++)
    {
        HI_DRV_AO_SND_SetVolume(enSound, pstAttr->stOutport[ii].enOutPort, stGainAttr);
    }

    return HI_SUCCESS;
}


HI_S32 MCE_CheckDvbPlayStatus(HI_VOID *args)
{
	HI_S32 		Ret 		= HI_SUCCESS;
	HI_U32 		u32Curtime 	= 0;
	MCE_S       *pMce;

    pMce = (MCE_S *)args;
    while (!pMce->bPlayStop)
    {
        if(MCE_PLAY_TYPE_DVB == pMce->stMceParam.playType)
        {
			u32Curtime = MCE_GetCurTime();
			if((u32Curtime - pMce->BeginTime) >= pMce->EndTime)
			{
				pMce->stStopParam.enStopMode = HI_UNF_MCE_STOPMODE_STILL;
				Ret = MCE_DvbPlayStop(pMce);
				if(Ret)
				{
					HI_ERR_MCE("ERR: MCE_DvbPlayStop,Ret 0x%x\n",Ret);
				}
       		}
	    }
		msleep(100);
    }

    return HI_SUCCESS;
}
HI_S32 MCE_TsThread(HI_VOID *args)
{
    HI_S32                          Ret;
    DMX_DATA_BUF_S                  StreamBuf; 
    HI_U32                          TotalLen = 0;
    HI_U32                          ReadLen = 0;
    HI_U32                          CycleCount = 0;
    HI_BOOL                         bSendEnd = HI_FALSE;
    MCE_S                           *pMce;

    pMce = (MCE_S *)args;

    while(!pMce->bPlayStop)
    {    
        if (bSendEnd)
        {            
            if (HI_TRUE == HI_DRV_AVPLAY_IsBufEmpty(pMce->hAvplay))
            {
                pMce->TsplayEnd = HI_TRUE;
            }

            msleep(50);
            continue;
        }
        
        Ret = HI_DRV_DMX_GetTSBuffer(MCE_DMX_TS_PORT, MCE_GET_TS_LEN, &StreamBuf, 1000);
        if(HI_SUCCESS != Ret)
        {
            msleep(10);
            continue;
        }

        if(TotalLen + MCE_GET_TS_LEN < pMce->stMceParam.Info.tsFileInfo.contentLen)
        {
            ReadLen = MCE_GET_TS_LEN;
            memcpy((HI_U8 *)StreamBuf.BufKerAddr, (HI_U8 *)(pMce->u32PlayDataAddr + TotalLen), ReadLen);
            TotalLen += ReadLen;
        }
        else
        {
            ReadLen = pMce->stMceParam.Info.tsFileInfo.contentLen - TotalLen;
            memcpy((HI_U8 *)StreamBuf.BufKerAddr, (HI_U8 *)(pMce->u32PlayDataAddr + TotalLen), ReadLen);
            TotalLen = 0;
            CycleCount++;
        }

        Ret = HI_DRV_DMX_PutTSBuffer(MCE_DMX_TS_PORT, ReadLen, 0);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_MCE("ERR: HI_DRV_DMX_PutTSBuffer\n");
        }

        if (pMce->stStopParam.u32PlayCount)
        {
            if (CycleCount >= pMce->stStopParam.u32PlayCount)
            {
                bSendEnd = HI_TRUE;
            }
        }
    }
    
    Ret = HI_DRV_DMX_ResetTSBuffer(MCE_DMX_TS_PORT);

    return Ret;
}

HI_UNF_VCODEC_TYPE_E MCE_VedioTypeConvert(HI_UNF_MCE_VDEC_TYPE_E enMceType)
{
	HI_UNF_VCODEC_TYPE_E enVdecType;
	
	switch (enMceType)
	{
		case HI_UNF_MCE_VDEC_TYPE_MPEG2:
			enVdecType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;

		case HI_UNF_MCE_VDEC_TYPE_MPEG4:
			enVdecType = HI_UNF_VCODEC_TYPE_MPEG4;
			break;

		case HI_UNF_MCE_VDEC_TYPE_H264:
			enVdecType = HI_UNF_VCODEC_TYPE_H264;
			break;

		case HI_UNF_MCE_VDEC_TYPE_AVS:
			enVdecType = HI_UNF_VCODEC_TYPE_AVS;
			break;

		default:
			enVdecType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;
	}

	return enVdecType;
}


HI_S32 MCE_TsPlayStart(MCE_S *pMce)
{
    HI_S32                          Ret;
    HI_UNF_AVPLAY_ATTR_S            AvplayAttr;
    HI_UNF_VCODEC_ATTR_S            VdecAttr;
    HI_UNF_AVPLAY_OPEN_OPT_S        OpenOpt;
    HI_UNF_SYNC_ATTR_S              SyncAttr;
	HI_HANDLE                       hVdec;
	HI_HANDLE                       hSync;
  //  HI_UNF_MCE_TSFILE_PARAM_S       stParam;
	HI_UNF_SND_ATTR_S               stAttr;
	HI_UNF_AUDIOTRACK_ATTR_S 		stTrackAttr;
	MCE_TSFILE_INFO_S				stParam;

    stParam = pMce->stMceParam.Info.tsFileInfo;

	pMce->stStopParam.u32PlayCount =  stParam.u32PlayTime;
	if(0 == pMce->stStopParam.u32PlayCount)
	{
		pMce->stStopParam.u32PlayCount = 0xffffffff;
	}
     
    Ret = HI_DRV_AO_SND_Init(HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_Init!\n");
        goto ERR0;
    }

	Ret = HI_DRV_AO_SND_GetDefaultOpenAttr(HI_UNF_SND_0, &stAttr);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_GetDefaultOpenAttr!\n");
        goto ERR00;
    }

	Ret = HI_DRV_AO_SND_Open(HI_UNF_SND_0, &stAttr,HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_Open!\n");
        goto ERR00;
    }

    if (stParam.volume> 100)
    {
		stParam.volume = 50;        
    }
	
    Ret = MCE_SetVolume(HI_UNF_SND_0, &stAttr, stParam.volume);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_SetVolume!\n");
        goto ERR00;
    }

    Ret = MCE_ADP_DispOpen(pMce->stDispParam);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_DispOpen!\n");
        goto ERR1;
    }

    Ret = MCE_ADP_VoOpen();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_VoOpen!\n");
        goto ERR2;
    }

    Ret = MCE_ADP_VoCreateWin(&pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_VoCreateWin!\n");
        goto ERR3;
    }

    Ret = HI_DRV_DMX_AttachRamPort(MCE_DMX_ID, MCE_DMX_TS_PORT);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DMX_AttachRamPort!\n");
        goto ERR4;
    }
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
    Ret = HI_DRV_DMX_CreateTSBuffer(MCE_DMX_TS_PORT, 0x200000, &pMce->TsBuf, HI_NULL);
#else
	Ret = HI_DRV_DMX_CreateTSBuffer(MCE_DMX_TS_PORT, 0x180000, &pMce->TsBuf, HI_NULL);
#endif
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DMX_CreateTSBuffer!\n");
        goto ERR5;
    }

    Ret = HI_DRV_DMX_ResetTSBuffer(MCE_DMX_TS_PORT);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DMX_ResetTSBuffer!\n");
        goto ERR6;
    }
    
    Ret = HI_DRV_AVPLAY_Init();
    AvplayAttr.u32DemuxId = MCE_DMX_ID;
    AvplayAttr.stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_TS;
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
    AvplayAttr.stStreamAttr.u32VidBufSize = (5*1024*1024);
    AvplayAttr.stStreamAttr.u32AudBufSize = (384*1024);
#else
	AvplayAttr.stStreamAttr.u32VidBufSize = (2*1024*1024);
    AvplayAttr.stStreamAttr.u32AudBufSize = (256*1024);
#endif	
    Ret |= HI_DRV_AVPLAY_Create(&AvplayAttr, &pMce->hAvplay);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Create!\n");
        goto ERR6;
    }

    Ret = HI_DRV_AVPLAY_ChnOpen(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    OpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
#else
	OpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
#endif
    OpenOpt.enDecType = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
    OpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;   
    Ret |= HI_DRV_AVPLAY_ChnOpen(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &OpenOpt);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_ChnOpen!\n");
        goto ERR7;
    }

	Ret = HI_DRV_AO_Track_GetDefaultOpenAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
    Ret |= HI_DRV_AO_Track_Create(HI_UNF_SND_0, &stTrackAttr,HI_FALSE, HI_NULL,&pMce->hSnd);
    Ret |= HI_DRV_AVPLAY_AttachSnd(pMce->hAvplay, pMce->hSnd);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_MPI_AVPLAY_AttachSnd!\n");
        goto ERR8;
    }

	Ret = HI_DRV_AVPLAY_GetSyncVdecHandle( pMce->hAvplay, &hVdec, &hSync); 
	if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_GetSyncVdecHandle!\n");
        goto ERR9;
    }
	else
	{
		HI_INFO_MCE("##%s->%d,hvdec:%#x,hsync:%#x,pMce->hWindow:%#x\n",__func__,__LINE__,hVdec,hSync,pMce->hWindow);
	}
    Ret = HI_DRV_VO_AttachWindow(pMce->hWindow, hVdec, hSync, HI_ID_AVPLAY);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_AttachWindow!\n");
        goto ERR9;
    }
	

	Ret = HI_DRV_VO_SetWindowEnable(pMce->hWindow, HI_TRUE);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_SetWindowEnable!\n");
        goto ERR10;
    }

    Ret = HI_DRV_AVPLAY_AttachWindow(pMce->hAvplay, pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_AttachWindow!\n");
        goto ERR9;
    }
    
    Ret = HI_DRV_AVPLAY_SetAttr(pMce->hAvplay,HI_UNF_AVPLAY_ATTR_ID_VID_PID, &stParam.VElementPid);
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay,HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &stParam.AElementPid);

    Ret |= HI_DRV_AVPLAY_GetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);

    Ret |= HI_DRV_AVPLAY_GetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    VdecAttr.enType = stParam.VideoType;
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_SetAttr!\n");
        goto ERR10;
    }

    Ret = HI_DRV_AVPLAY_Start(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Start!\n");
        goto ERR10;
    } 

	Ret = HI_DRV_AVPLAY_Start(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD );
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Start audio!\n");
    } 

    pMce->BeginTime = MCE_GetCurTime();

    pMce->pTsTask = kthread_create(MCE_TsThread, pMce, "HI_MCE_TsPlay");
    if(IS_ERR(pMce->pTsTask))
    {
        HI_ERR_MCE("ERR: crate thread err!\n");
        goto ERR11;
    }
   
    wake_up_process(pMce->pTsTask);

    return Ret;

ERR11:
    HI_DRV_AVPLAY_Stop(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);    
ERR10:
    HI_DRV_AVPLAY_DetachWindow(pMce->hAvplay, pMce->hWindow);
ERR9:
	HI_DRV_AVPLAY_DetachSnd(pMce->hAvplay, pMce->hSnd);
	HI_DRV_AO_Track_Destroy(pMce->hSnd);
ERR8:
    HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
ERR7:
    HI_DRV_AVPLAY_Destroy(pMce->hAvplay);
    HI_DRV_AVPLAY_DeInit();
ERR6:
    (HI_VOID)HI_DRV_DMX_DestroyTSBuffer(MCE_DMX_TS_PORT);
ERR5:
    (HI_VOID)HI_DRV_DMX_DetachPort(MCE_DMX_ID);
ERR4:
    HI_DRV_VO_DestroyWindow(pMce->hWindow);
ERR3:
    MCE_ADP_VoClose();
ERR2:
    MCE_ADP_DispClose();
ERR1:
	HI_DRV_AO_SND_Close(HI_UNF_SND_0,HI_NULL);
ERR00:
    HI_DRV_AO_SND_DeInit(HI_NULL);
ERR0:
    return Ret;
}


HI_S32 MCE_TsPlayStop(MCE_S *pMce)
{
    HI_UNF_AVPLAY_STOP_OPT_S    stStop;

	HI_INFO_MCE("%s->%d,pMce->havplay:%#x\n",__func__,__LINE__,pMce->hAvplay);

    stStop.enMode = pMce->stStopParam.enStopMode;
    stStop.u32TimeoutMs = 0;
    (HI_VOID)HI_DRV_AVPLAY_Stop(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stStop);

    if(HI_NULL != pMce->pTsTask)
    {
        pMce->bPlayStop = HI_TRUE;
        kthread_stop(pMce->pTsTask);
        pMce->pTsTask = HI_NULL;
    }
   
    return HI_SUCCESS;
}

/*release tsplay resource*/
HI_S32  MCE_TsPlayExit(MCE_S *pMce)
{
    HI_HANDLE                   hSync, hVdec;

	HI_INFO_MCE("%s->%d,pMce->havplay:%#x,pMce->hWindow:%#x\n",__func__,__LINE__,pMce->hAvplay,pMce->hWindow);
	
	(HI_VOID)HI_DRV_AVPLAY_GetSyncVdecHandle( pMce->hAvplay, &hVdec, &hSync); 

    (HI_VOID)HI_DRV_VO_SetWindowEnable(pMce->hWindow, HI_FALSE);
	
	(HI_VOID)HI_DRV_AVPLAY_DetachWindow(pMce->hAvplay, pMce->hWindow);

	(HI_VOID)HI_DRV_AVPLAY_DetachSnd(pMce->hAvplay, pMce->hSnd);
	(HI_VOID)HI_DRV_AO_Track_Destroy(pMce->hSnd);
    
    (HI_VOID)HI_DRV_VO_DetachWindow(pMce->hWindow, hVdec);

    (HI_VOID)HI_DRV_AVPLAY_DetachSnd(pMce->hAvplay, pMce->hSnd);

    (HI_VOID)HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    (HI_VOID)HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);

    (HI_VOID)HI_DRV_AVPLAY_Destroy(pMce->hAvplay);
    
    (HI_VOID)HI_DRV_AVPLAY_DeInit();

	HI_INFO_MCE("%s->%d,pMce->hWindow:%#x\n",__func__,__LINE__,pMce->hWindow);

    (HI_VOID)HI_DRV_VO_DestroyWindow(pMce->hWindow);

	HI_INFO_MCE("%s->%d,pMce->hWindow:%#x\n",__func__,__LINE__,pMce->hWindow);

    (HI_VOID)HI_DRV_DMX_DestroyTSBuffer(MCE_DMX_TS_PORT);

  //  (HI_VOID)MCE_ADP_DispClose();
    
    (HI_VOID)HI_DRV_DMX_DetachPort(MCE_DMX_ID);
        
    (HI_VOID)MCE_ADP_VoClose();	
//	(HI_VOID)HI_DRV_VO_DeInit();	
//	(HI_VOID)HI_DRV_DMX_DeInit();
    (HI_VOID)MCE_ADP_DispClose();
	HI_DRV_AO_SND_Close(HI_UNF_SND_0,HI_NULL);

	HI_DRV_AO_SND_DeInit(HI_NULL);
   
    return HI_SUCCESS;
}

HI_S32 MCE_DvbPlayStart(MCE_S *pMce)
{
    HI_S32                          Ret;
    HI_UNF_AVPLAY_ATTR_S            AvplayAttr;
    HI_UNF_VCODEC_ATTR_S            VdecAttr;
    HI_UNF_AVPLAY_OPEN_OPT_S        OpenOpt;
    HI_UNF_SYNC_ATTR_S              SyncAttr;
    HI_HANDLE                       hVdec;
    HI_HANDLE                       hSync;
    HI_UNF_SND_ATTR_S               stAttr;
    MCE_DVB_INFO_S					stParam;
    HI_UNF_AUDIOTRACK_ATTR_S 		stTrackAttr;

    stParam = pMce->stMceParam.Info.dvbInfo;

	pMce->EndTime = stParam.u32PlayTime*1000;
	if(0 == pMce->EndTime)
	{
		pMce->EndTime = 0xffffffff;
	}
	
	Ret = HI_DRV_AO_SND_Init(HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_Init!\n");
        goto ERR0;
    }

	Ret = HI_DRV_AO_SND_GetDefaultOpenAttr(HI_UNF_SND_0, &stAttr);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_GetDefaultOpenAttr!\n");
        goto ERR00;
    }

	Ret = HI_DRV_AO_SND_Open(HI_UNF_SND_0, &stAttr,HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_Open!\n");
        goto ERR00;
    }

    if (stParam.volume > 100)
    {
		stParam.volume = 50;        
    }
	
    Ret = MCE_SetVolume(HI_UNF_SND_0, &stAttr, stParam.volume);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_SetVolume!\n");
        goto ERR00;
    }
    
    Ret = MCE_ADP_DispOpen(pMce->stDispParam);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_DispOpen!\n");
        goto ERR1;
    }
    
    Ret = MCE_ADP_VoOpen();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_Open!\n");
        goto ERR2;
    }
    
    Ret = MCE_ADP_VoCreateWin(&pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_SetWindowEnable!\n");
        goto ERR3;
    }
    
    Ret = HI_DRV_DMX_AttachTunerPort(MCE_DMX_ID, MCE_DMX_DVB_PORT);   
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DMX_AttachTunerPort!\n");
        goto ERR4;
    }

    Ret = HI_DRV_TUNER_Open(TUNER_USE);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_TUNER_Open!\n");
        goto ERR5;
    }
    
    Ret = MCE_ADP_TunerConnect(stParam);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_TunerConnect!\n");
        goto ERR6;
    }  
	
    Ret = HI_DRV_AVPLAY_Init();
    AvplayAttr.u32DemuxId = MCE_DMX_ID;
    AvplayAttr.stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_TS;
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
    AvplayAttr.stStreamAttr.u32VidBufSize = (5*1024*1024);
    AvplayAttr.stStreamAttr.u32AudBufSize = (384*1024);
#else
	AvplayAttr.stStreamAttr.u32VidBufSize = (2*1024*1024);
    AvplayAttr.stStreamAttr.u32AudBufSize = (256*1024);
#endif
    Ret |= HI_DRV_AVPLAY_Create(&AvplayAttr, &pMce->hAvplay);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Create!\n");
        goto ERR6;
    }

    Ret = HI_DRV_AVPLAY_ChnOpen(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    OpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
#else
	OpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
#endif
    OpenOpt.enDecType = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
    OpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;   
    Ret |= HI_DRV_AVPLAY_ChnOpen(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &OpenOpt);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_ChnOpen!\n");
        goto ERR7;
    }

    Ret = HI_DRV_AO_Track_GetDefaultOpenAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
    Ret |= HI_DRV_AO_Track_Create(HI_UNF_SND_0, &stTrackAttr,HI_FALSE, HI_NULL,&pMce->hSnd);
    Ret |= HI_DRV_AVPLAY_AttachSnd(pMce->hAvplay, pMce->hSnd);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_MPI_AVPLAY_AttachSnd!\n");
        goto ERR8;
    }
    
    Ret = HI_DRV_AVPLAY_GetSyncVdecHandle( pMce->hAvplay, &hVdec, &hSync);    
    Ret |= HI_DRV_VO_AttachWindow(pMce->hWindow, hVdec, hSync, HI_ID_AVPLAY);
    Ret |= HI_DRV_VO_SetWindowEnable(pMce->hWindow, HI_TRUE);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_SetWindowEnable!\n");
        goto ERR9;
    }

    Ret = HI_DRV_AVPLAY_AttachWindow(pMce->hAvplay, pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_AttachWindow!\n");
        goto ERR10;
    } 
    
    Ret = HI_DRV_AVPLAY_SetAttr(pMce->hAvplay,HI_UNF_AVPLAY_ATTR_ID_VID_PID, &stParam.VElementPid);
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay,HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &stParam.AElementPid);

    Ret |= HI_DRV_AVPLAY_GetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);

    Ret |= HI_DRV_AVPLAY_GetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    VdecAttr.enType = stParam.VideoType;
    Ret |= HI_DRV_AVPLAY_SetAttr(pMce->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_SetAttr!\n");
        goto ERR11;
    }    

    Ret = HI_DRV_AVPLAY_Start(pMce->hAvplay,  HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Start!\n");
        goto ERR11;
    } 

	Ret = HI_DRV_AVPLAY_Start(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Start audio!\n");
    } 

    pMce->BeginTime = MCE_GetCurTime();
	pMce->pTsTask = kthread_create(MCE_CheckDvbPlayStatus, pMce, "HI_MCE_DVBPlay");
    if(IS_ERR(pMce->pTsTask))
    {
        HI_ERR_MCE("ERR: crate thread err!\n");
        goto ERR11;
    }
  
    wake_up_process(pMce->pTsTask);

    return Ret;

ERR11:
    HI_DRV_AVPLAY_DetachWindow(pMce->hAvplay, pMce->hWindow);
ERR10:
    HI_DRV_VO_SetWindowEnable(pMce->hWindow, HI_FALSE);
    HI_DRV_VO_DetachWindow(pMce->hWindow, hVdec);
ERR9:
    HI_DRV_AVPLAY_DetachSnd(pMce->hAvplay, pMce->hSnd);
    HI_DRV_AO_Track_Destroy(pMce->hSnd);
ERR8:
    HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
ERR7:
    HI_DRV_AVPLAY_Destroy(pMce->hAvplay);
    (HI_VOID)HI_DRV_AVPLAY_DeInit();
ERR6:
    HI_DRV_TUNER_Close(TUNER_USE);
ERR5:
    HI_DRV_DMX_DetachPort(MCE_DMX_ID);
ERR4:
    HI_DRV_VO_DestroyWindow(pMce->hWindow);
ERR3:
    MCE_ADP_VoClose();
ERR2:
    MCE_ADP_DispClose();
ERR1:
	HI_DRV_AO_SND_Close(HI_UNF_SND_0,HI_NULL);
ERR00:
    HI_DRV_AO_SND_DeInit(HI_NULL);
ERR0:
    return Ret;
}

HI_S32 MCE_DvbPlayStop(MCE_S *pMce)
{
    HI_S32                      Ret;
    HI_UNF_AVPLAY_STOP_OPT_S    stStop;

	if(HI_TRUE ==pMce->bPlayStop)
	{
		return HI_SUCCESS;
	}
    stStop.enMode = pMce->stStopParam.enStopMode;
    stStop.u32TimeoutMs = 0;
    Ret = HI_DRV_AVPLAY_Stop(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stStop);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Stop!\n");
        return Ret;
    }
	pMce->bPlayStop = HI_TRUE;
	kthread_stop(pMce->pTsTask);
    pMce->pTsTask = HI_NULL;
    return HI_SUCCESS;
}

/*release dvbplay resource*/
HI_S32  MCE_DvbPlayExit(MCE_S *pMce)
{
    HI_S32                      Ret;
    HI_HANDLE                   hSync,hVdec;
	
	(HI_VOID)HI_DRV_AVPLAY_GetSyncVdecHandle( pMce->hAvplay, &hVdec, &hSync);
   
    Ret = HI_DRV_AVPLAY_DetachWindow(pMce->hAvplay, pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_DetachWindow!\n");
        return Ret;
    }    
    
    Ret = HI_DRV_VO_SetWindowEnable(pMce->hWindow, HI_FALSE);
    Ret |= HI_DRV_VO_DetachWindow(pMce->hWindow, hVdec);  
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_DetachWindow!\n");
        return Ret;
    }  

    Ret = HI_DRV_AVPLAY_DetachSnd(pMce->hAvplay, pMce->hSnd);
    Ret |=HI_DRV_AO_Track_Destroy(pMce->hSnd);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_DetachSnd!\n");
        return Ret;
    }
    
    Ret = HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_ChnClose!\n");
        return Ret;
    }
    
    Ret = HI_DRV_AVPLAY_ChnClose(pMce->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_ChnClose!\n");
        return Ret;
    }
    
    Ret = HI_DRV_AVPLAY_Destroy(pMce->hAvplay);
    Ret|= HI_DRV_AVPLAY_DeInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Destroy!\n");
        return Ret;
    }

    HI_DRV_TUNER_Close(TUNER_USE);        //不关闭的原因是保留原TUNER的CRG/ADC配置。
    Ret = HI_DRV_DMX_DetachPort(MCE_DMX_ID);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AVPLAY_Destroy!\n");
        return Ret;
    }

    Ret = HI_DRV_VO_DestroyWindow(pMce->hWindow);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_DestroyWindow!\n");
        return Ret;
    }

    /**/
     MCE_ADP_VoClose();                            

   MCE_ADP_DispClose();
     
     HI_DRV_AO_SND_Close(HI_UNF_SND_0,HI_NULL);
     
     HI_DRV_AO_SND_DeInit(HI_NULL);

    return HI_SUCCESS;    
}

static HI_UNF_VO_FRAMEINFO_S g_stVoFrameInfo;
HI_S32 MCE_CapturePicToNewWin(HI_HANDLE  NewWin)
{
    HI_S32                      Ret=HI_SUCCESS;
    HI_HANDLE                   OldWin = g_Mce.hWindow;
    HI_UNF_CAPTURE_PICTURE_S    stCapturePicture;
    HI_UNF_VO_FRAMEINFO_S       FrameInfo;
    HI_UNF_CAPTURE_MEM_MODE_S   MemMode;


    /*step 1: Stop avplay (Still mode)*/
//    msleep(100);

    HI_INFO_MCE("VO_CapturePicture\n");

    /*step 2: VOCapture(old vowin),capture the last frame!*/   
    memset(&MemMode, 0x0, sizeof(HI_UNF_CAPTURE_MEM_MODE_S));
    MemMode.enAllocMemType = HI_UNF_CAPTURE_NO_ALLOC;
//    Ret |= VO_CapturePictureWithMem(OldWin, &stCapturePicture, &MemMode);
    Ret |= HI_DRV_VO_CapturePicture(OldWin, &stCapturePicture);
    Ret |= HI_DRV_VO_CapturePictureRelease(OldWin, &stCapturePicture);
    
    /*MCE DVB/tsFile last frame data format transform*/
    memset(&g_stVoFrameInfo, 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    g_stVoFrameInfo.u32FrameIndex = 0;
    g_stVoFrameInfo.enVideoFormat = stCapturePicture.enVideoFormat;
    g_stVoFrameInfo.enDisplayNorm = g_Mce.stDispParam.enFormat;
    g_stVoFrameInfo.enFrameType  = HI_UNF_FRAME_TYPE_I;
    g_stVoFrameInfo.enSampleType = stCapturePicture.enSampleType;
    g_stVoFrameInfo.enFieldMode = stCapturePicture.enFieldMode;
    g_stVoFrameInfo.bTopFieldFirst = HI_TRUE;
    g_stVoFrameInfo.enAspectRatio  = HI_UNF_ASPECT_RATIO_16TO9;
    g_stVoFrameInfo.enVideoCombine = HI_UNF_VIDEO_FRAME_COMBINE_T0B0;

    g_stVoFrameInfo.u32Width  = stCapturePicture.u32Width;
    g_stVoFrameInfo.u32Height = stCapturePicture.u32Height;
    g_stVoFrameInfo.u32DisplayWidth   = g_stVoFrameInfo.u32Width;
    g_stVoFrameInfo.u32DisplayHeight  = g_stVoFrameInfo.u32Height;
    g_stVoFrameInfo.u32DisplayCenterX = g_stVoFrameInfo.u32Width / 2;
    g_stVoFrameInfo.u32DisplayCenterY = g_stVoFrameInfo.u32Height / 2;
    g_stVoFrameInfo.u32ErrorLevel = 0;
    g_stVoFrameInfo.u32SeqCnt = 0;
    g_stVoFrameInfo.u32SeqFrameCnt = 0;
    g_stVoFrameInfo.u32SrcPts = 0xffffffff;
    g_stVoFrameInfo.u32Pts = 0xffffffff;

    g_stVoFrameInfo.u32YAddr = stCapturePicture.u32TopYStartAddr;
    g_stVoFrameInfo.u32CAddr = stCapturePicture.u32TopCStartAddr;
    g_stVoFrameInfo.u32LstYAddr = stCapturePicture.u32TopYStartAddr;
    g_stVoFrameInfo.u32LstYCddr = stCapturePicture.u32TopCStartAddr;

    g_stVoFrameInfo.u32YStride = stCapturePicture.u32Stride;
    g_stVoFrameInfo.u32CStride = stCapturePicture.u32Stride;
    g_stVoFrameInfo.u32Repeat = 1;
    g_stVoFrameInfo.u32MgcNum = 0;
    
    g_stVoFrameInfo.u32CompressFlag = stCapturePicture.u32CompressFlag;
    g_stVoFrameInfo.s32CompFrameHeight = stCapturePicture.s32CompFrameHeight;
    g_stVoFrameInfo.s32CompFrameWidth = stCapturePicture.s32CompFrameWidth;

	HI_INFO_MCE("newWin:0x%x, OldWin:0x%x\n", NewWin, OldWin);
    HI_INFO_MCE("send last frame to new win\n");

    /*step 3:send last frame to new window! */
    memcpy(&FrameInfo, &g_stVoFrameInfo, sizeof(HI_UNF_VO_FRAMEINFO_S));
    Ret |= HI_DRV_VO_SendFrame(NewWin, &FrameInfo);
    msleep(100);
    
    /*step 4:  set  user window zorder  to top*/
    HI_INFO_MCE("set new window z order to top\n");
    Ret |= HI_DRV_VO_SetWindowZorder(NewWin, HI_LAYER_ZORDER_MOVETOP);

    return Ret;
    
}

#define ADDR_SHIFT_TEST

int play_get_content2(MCE_S *pMce, MMZ_BUFFER_S *mmzInfo)
{
	HI_MCE_PALY_INFO_S *playInfo = NULL;
    HI_S32               Ret;
	HI_U32 u32PlayParamAddr=0;

	
	MCE_GetAniAddr(&u32PlayParamAddr);
	if (u32PlayParamAddr == 0)
	{
		HI_ERR_MCE("init play data first\n");
		return -1;
	}
	
	playInfo = &pMce->stMceParam;
	
    if(playInfo->playType == MCE_PLAY_TYPE_GPHFILE)
	{
		HI_S32 ucount = 0;
		HI_UNF_PIC_PICTURE * pPicdatainfo = NULL;

		mmzInfo->u32Size = 0;
		ucount = playInfo->Info.gphFileInfo.comInfo.uCount -1;

		pPicdatainfo = (HI_UNF_PIC_PICTURE *)(u32PlayParamAddr + 0x800);
		mmzInfo->u32Size = (pPicdatainfo[ucount].u32FileAddr) +   pPicdatainfo[ucount].u32FileLen;
		HI_INFO_MCE("++++++++++play_get_content2 size 0x%x\n",mmzInfo->u32Size);

		HI_INFO_MCE("++++++++++play_get_content2 size 0x%x\n",mmzInfo->u32Size);
#ifdef ADDR_SHIFT_TEST
     //    Ret = CMPI_MEM_AllocAndMapMem("FASTPLAY_ANI", HI_NULL, mmzInfo->u32Size, 0x4, mmzInfo);
		 Ret = HI_DRV_MMZ_AllocAndMap("FASTPLAY_ANI", HI_NULL, mmzInfo->u32Size, 0x4, mmzInfo);
         if (0 != Ret)
         {
            HI_ERR_MCE("CMPI_MEM_AllocAndMapMem failed\n");
            return -1;
         }

         memcpy((HI_VOID*)mmzInfo->u32StartVirAddr, (HI_VOID*)pMce->u32PlayDataAddr, mmzInfo->u32Size);
#endif
    }
	else
	{
		HI_ERR_MCE("unspported type\n");
		return -1;		
	}

#ifndef ADDR_SHIFT_TEST
	//mmzInfo->u32Size = playData.u32Size -  PART_PLAY_PARA_SIZE;
	mmzInfo->u32StartVirAddr = pMce->u32PlayDataAddr;
#endif

	return 0;
}


HI_S32 MCE_AniPreWork(MCE_S *pMce)
{
	HI_S32      Ret = HI_SUCCESS;
	MMZ_BUFFER_S g_Play_Buf;

	Ret = play_get_content2(pMce, &g_Play_Buf);
    if (Ret)
    {
        HI_ERR_MCE("play_get_content err!\n");
        return -1;
    }

    HI_INFO_MCE("play_get_content ok!\n");

	return HI_SUCCESS;
}

HI_S32 MCE_GetPicInfo(HI_U32 u32PicCnt,HI_ANI_PIC_PICTURE  *pszPicInfo)
{
	HI_U32 u32PlayParamAddr;
	HI_U32 i;
	MCE_S               *pMce = &g_Mce;
	
	HI_ANI_PIC_PICTURE  stPicdatainfo = {0};
	
	MCE_GetAniAddr(&u32PlayParamAddr);

	memcpy(&stPicdatainfo ,(HI_UNF_PIC_PICTURE *)(u32PlayParamAddr + 0x800),sizeof(HI_ANI_PIC_PICTURE)*u32PicCnt);

	for(i=0;i<u32PicCnt;i++)
	{
		pszPicInfo[i].u32FileAddr = pMce->u32PlayDataAddr + pszPicInfo[i].u32FileAddr;
	}
	return HI_SUCCESS;
}


/***************************************************************************************
* func          : MCE_AniPlayStart
* description   : 启动图形开机动画
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 MCE_AniPlayStart(MCE_S *pMce)
{
	HI_S32      Ret = HI_SUCCESS;
	HI_U32 i,u32PlayParamAddr;
	HI_MCE_PALY_INFO_S		stPlayParam ;
	HI_ANI_PIC_COMMINFO szComInfo = {0};
    HI_ANI_PIC_PICTURE *szPicInfo = NULL;
	MMZ_BUFFER_S   stTmpBuf;
	
	HI_U32 uLayerID = CONFIG_MCE_LAYER_ID;
	
	memcpy(&stPlayParam,&pMce->stMceParam,sizeof(HI_MCE_PALY_INFO_S));

	Ret = MCE_ADP_DispOpen(pMce->stDispParam);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ADP_DispOpen!\n");
        return Ret;
    }

	Ret = MCE_AniPreWork(pMce);
	if (Ret)
    {
        HI_ERR_MCE("MCE_AniPreWork err!\n");
        return Ret;
    }

	/**==============================================================**/
	/**
	 **init include grc init
	 **/
	Ret = HI_ANI_PIC_Init(&g_Play_Buf,&stPlayParam,uLayerID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("HI_ANI_PIC_Init failed.Ret=%#x \n",Ret);
        goto err;
    }
	/**==============================================================**/

	memcpy(&szComInfo,&stPlayParam.Info.gphFileInfo.comInfo,sizeof(HI_ANI_PIC_COMMINFO));

	Ret = HI_DRV_MMZ_AllocAndMap("anipic", HI_NULL, sizeof(HI_ANI_PIC_PICTURE) * szComInfo.uCount, 0x4, &stTmpBuf);
	szPicInfo = (HI_ANI_PIC_PICTURE*)(stTmpBuf.u32StartVirAddr);
    if (szPicInfo == NULL)
    {
        HI_ERR_MCE("kmalloc failed.Ret = %#x\n ",Ret);
        goto err2;
    }
	
	MCE_GetAniAddr(&u32PlayParamAddr);
	HI_INFO_MCE("####%s->%d,szComInfo.uCount:%d,pMce->u32PlayDataAddr:%#x\n",__func__,__LINE__,szComInfo.uCount,pMce->u32PlayDataAddr);
	memcpy(szPicInfo ,(HI_UNF_PIC_PICTURE *)(u32PlayParamAddr + 0x800),sizeof(HI_ANI_PIC_PICTURE)*szComInfo.uCount);
	for(i=0;i<szComInfo.uCount;i++)
	{
		szPicInfo[i].u32FileAddr = pMce->u32PlayDataAddr + szPicInfo[i].u32FileAddr;
	}

	HI_INFO_MCE("####%s->%d,szComInfo.uCount:%d\n",__func__,__LINE__,szComInfo.uCount);
	HI_INFO_MCE("####%s->%d,szPicInfo[0].FileAddr:%#x\n",__func__,__LINE__,szPicInfo[0].u32FileAddr);
	HI_INFO_MCE("####%s->%d,szPicInfo[1].FileAddr:%#x\n",__func__,__LINE__,szPicInfo[1].u32FileAddr);
	HI_INFO_MCE("####%s->%d,OFFSET:%#x\n",__func__,__LINE__,szPicInfo[1].u32FileAddr-szPicInfo[0].u32FileAddr);

	/**==============================================================**/
	/**
	 **start mce include grc
	 **/
	Ret = HI_ANI_PIC_Start(uLayerID, &szComInfo, szPicInfo);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("HI_ANI_PIC_Start failed.Ret=%#x \n",Ret);
        goto err1;
    }
	/**==============================================================**/
	
	HI_DRV_MMZ_UnmapAndRelease(&stTmpBuf);
	return HI_SUCCESS;
	err1:
    	HI_ANI_PIC_Deinit();
	err2:
		HI_DRV_MMZ_UnmapAndRelease(&stTmpBuf);
	err:
		MCE_ADP_DispClose();
		
	return HI_FAILURE;
	
}

HI_S32 MCE_AniPlayStop(MCE_S *pMce)
{
	HI_ANI_PIC_Deinit();

	#ifdef ADDR_SHIFT_TEST
   	//	CMPI_MEM_UnmapAndReleaseMem(mmz_buf);
		HI_DRV_MMZ_UnmapAndRelease(&g_Play_Buf);
	#endif

	return HI_SUCCESS;
}

/***************************************************************************************
* func          : MCE_PlayStart
* description   : 启动开机动画
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 MCE_PlayStart(MCE_S *pMce)
{
    HI_S32      Ret = HI_SUCCESS;

	if(pMce->stMceParam.fastplayflag == 0)
	{
		/**
		 ** disable gfx after vid play start 
		 **/
	    Ret |= HI_DRV_DISP_SetGfxEnable(HI_UNF_DISP_SD0, HI_FALSE);
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
	    Ret |= HI_DRV_DISP_SetGfxEnable(HI_UNF_DISP_HD0, HI_FALSE);
#endif
		/**
		 ** release the reserve mem for logo
		 **/
	    HI_DRV_PDM_ReleaseReserveMem("LAYER_SURFACE");
	    HI_DRV_PDM_ReleaseReserveMem("hifb_wbc2");
		return Ret;
	}
	
    if(MCE_PLAY_TYPE_DVB == pMce->stMceParam.playType)
    {
        Ret = MCE_DvbPlayStart(pMce);
    }
    else if(MCE_PLAY_TYPE_TSFILE == pMce->stMceParam.playType)
    {
        Ret = MCE_TsPlayStart(pMce);
    }
   else if(MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
   {/**
     ** graphic play 
     **/
   	Ret = MCE_AniPlayStart(pMce);
   }
    /**
     ** release the reserve mem for logo
     **/
    HI_DRV_PDM_ReleaseReserveMem("LAYER_SURFACE");
    HI_DRV_PDM_ReleaseReserveMem("hifb_wbc2");
    
    return Ret;
	
}


HI_S32 MCE_PlayStop(MCE_S *pMce)
{
    HI_S32      Ret;

    if(MCE_PLAY_TYPE_DVB ==  pMce->stMceParam.playType)
    {
        Ret = MCE_DvbPlayStop(pMce);
    }
    else if(MCE_PLAY_TYPE_TSFILE == pMce->stMceParam.playType)
    {
        Ret = MCE_TsPlayStop(pMce);

        /*release reserve mem for ts data*/
        HI_DRV_PDM_ReleaseReserveMem("playdata");
    }
	else if(MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
	{
		MCE_AniPlayStop(pMce);
		/*release reserve mem for pic data*/
        HI_DRV_PDM_ReleaseReserveMem("playdata");
	}
    
    return HI_SUCCESS;
}

extern HI_S32 VFMW_DRV_Init(HI_VOID);

/* svdec used vfmw function */
extern HI_S32  VFMW_SVDE_DRV_Init (HI_VOID);

HI_S32 MCE_ModuleInit(HI_VOID)
{
#if 1
    HI_S32      Ret;
    
    Ret = HI_DRV_CommonInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_CommonInit!\n");
        return Ret;
    }

    Ret = HI_DRV_I2C_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_I2C_Init!\n");
        return Ret;
    }

    Ret = HI_DRV_GPIO_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_GPIO_Init!\n");
        return Ret;
    }
    
    Ret = HI_DRV_GPIOI2C_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_GPIOI2C_Init!\n");
        return Ret;
    }

    Ret = HI_DRV_TUNER_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_TUNER_Init!\n");
        return Ret;
    }
    
    Ret = HI_DRV_DMX_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DMX_Init!\n");
        return Ret;
    }

	Ret = VFMW_DRV_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: VFMW_DRV_Init!\n");
        return Ret;
    }

    /* svdec */	
    Ret = VFMW_SVDE_DRV_Init();
    if (HI_SUCCESS != Ret)
    {
    	HI_ERR_MCE("ERR: VFMW_SVDE_DRV_Init!\n");
        return -1;
    }

    Ret = HI_DRV_VDEC_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VDEC_Init!\n");
        return Ret;
    }

    Ret = HI_DRV_SYNC_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_SYNC_Init!\n");
        return Ret;
    } 

    Ret = HI_DRV_PDM_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_PDM_Init!\n");
        return Ret;
    } 

    Ret = HI_DRV_DISP_ModInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_DISP_ModInit!\n");
        return Ret;
    } 

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
    Ret = HI_DRV_HDMI_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_HDMI_Init!\n");
        return Ret;    
    }
#endif

	Ret = JPEG_DRV_K_ModInit();
	if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: JPEG_DRV_ModInit!\n");
        return Ret;
    } 
	
    Ret = tde_init_module_k();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_TDE_Init!\n");
        return Ret;
    } 

    Ret = HI_DRV_VO_ModInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_VO_ModInit!\n");
        return Ret;
    }
 
    Ret = HI_DRV_ADEC_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_ADEC_Init!\n");
        return Ret;
    } 

    Ret = HI_DRV_AO_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_AO_SND_Init!\n");
        return Ret;
    }     

	Ret = HI_DRV_ADSP_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_ADSP_Init!\n");
        return Ret;
	}     

    return Ret;
#endif  
    return HI_SUCCESS;
}

HI_S32 HI_DRV_MCE_Exit(HI_VOID)
{
    HI_S32              Ret = HI_SUCCESS;
    MCE_S               *pMce = &g_Mce;

    if (pMce->bMceExit)
    {
        return HI_SUCCESS;
    }
    
    if(MCE_PLAY_TYPE_DVB == pMce->stMceParam.playType)
    {
        Ret = MCE_DvbPlayExit(pMce);
    }
    else if(MCE_PLAY_TYPE_TSFILE == pMce->stMceParam.playType)
    {
        Ret = MCE_TsPlayExit(pMce);
    }  
    else if(MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
    {
		MCE_ADP_DispClose();
	}
	
    pMce->bMceExit = HI_TRUE;
    
    return Ret;
}

HI_VOID HI_DRV_MCE_ClearLogo(HI_VOID)
{
	PDM_EXPORT_FUNC_S   *pstPdmFuncs = HI_NULL;
	DISP_EXPORT_FUNC_S  *pstDispFuncs = HI_NULL;
	MCE_S       *pMce = &g_Mce;

    if (pMce->bLogoClear == HI_TRUE)
    {
        return;
    }
    pMce->bLogoClear = HI_TRUE;
	
	(HI_VOID)HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID **)&pstDispFuncs);
	(HI_VOID) HI_DRV_MODULE_GetFunction(HI_ID_PDM, (HI_VOID **)&pstPdmFuncs);

	(HI_VOID)OPTM_GfxSetLogoLayerEnable(CONFIG_MCE_LAYER_ID,HI_FALSE);
	(HI_VOID)OPTM_GfxSetLogoLayerEnable(OPTM_GFX_LAYER_SD0,HI_FALSE);
	if (HI_NULL != pstPdmFuncs)
	{
		/*release the reserve mem for logo*/
		pstPdmFuncs->pfnPDM_ReleaseReserveMem("LAYER_SURFACE");
		pstPdmFuncs->pfnPDM_ReleaseReserveMem("hifb_wbc2"); 
	}
	return;
}

HI_S32 HI_DRV_MCE_Stop(HI_UNF_MCE_STOPPARM_S *pstStopParam)
{
    HI_S32  Ret       = HI_SUCCESS;
    HI_U32 CurTime    = 0;
    MCE_S       *pMce = &g_Mce;
	HI_U32 uLayerID   = CONFIG_MCE_LAYER_ID;
	
  
	if (pMce->bMceExit)
    {
    	HI_INFO_MCE("already stoped!\n");
		return HI_SUCCESS;
    }
	
    memcpy(&pMce->stStopParam, pstStopParam, sizeof(HI_UNF_MCE_STOPPARM_S));

    while(1)
    {
        CurTime = MCE_GetCurTime();

		if ((( 0 != pstStopParam->u32PlayTime)&&(0 != pstStopParam->u32PlayCount))||
			(( 0 == pstStopParam->u32PlayTime)&&(0 == pstStopParam->u32PlayCount)))
    	{
    		HI_ERR_MCE("ERR: PlayTime(%d) and PlayCount(%d) param error! !\n",pstStopParam->u32PlayTime,pstStopParam->u32PlayCount);
			return HI_FAILURE;
		}
		
        if (pstStopParam->u32PlayTime)
        {     	
            if (CurTime - pMce->BeginTime > pstStopParam->u32PlayTime)
            {
                break;
            }
        }
		
		if (pstStopParam->u32PlayCount)
        {
	        if (MCE_PLAY_TYPE_TSFILE == pMce->stMceParam.playType)
	        {
	           if (pMce->TsplayEnd)
	            {
	                break;
	            }

	        }
	        else if( MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType )
	        {
	           if (HI_ANI_PIC_GetPlayCount() >= pstStopParam->u32PlayCount)
	           {
	               break;
	           }
	        }
	        else
	        {
	            break;
	        }			    
        }
        else
        {
            break;
        }
        
        msleep(100);
    }

	Ret = MCE_PlayStop(pMce);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_PlayStop\n");
        return Ret;
    } 
	pMce->bPlayStop = HI_TRUE;

	if (MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
    {
        Ret = HI_ANI_PIC_Stop(uLayerID);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_MCE("stop graphics failure\n");
            return HI_FAILURE;
        }
    }
    else            /* dvb and  ts mode*/
    {
        if (HI_UNF_MCE_STOPMODE_STILL == pstStopParam->enStopMode)
        {
            Ret =  MCE_CapturePicToNewWin(pstStopParam->hNewWin); 
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_MCE("mce caputer OldWin picture to NewWin failure\n");
                //return HI_FAILURE;
            }
        }
    }

  //  pMce->EndTime = MCE_GetCurTime();

	if (MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
	{
        HI_INFO_MCE("MCE_Disp_Close \n");
    //	MCE_Disp_Close();
    }

	Ret = HI_DRV_MCE_Exit();
	if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: HI_DRV_MCE_Exit\n");
        return Ret;
    } 
	
    return Ret;
}

static HI_UNF_VO_FRAMEINFO_S g_stVoFrameInfo;
int play_end_preav(HI_SYS_PREAV_PARAM_S *pstPreParm,MCE_S *pMce)
{
    VO_WIN_ZORDER_S             WinZorder;
    VO_WIN_FRAME_S              VoWinFrame;
    VO_WIN_ENABLE_S             VoWinEnable;
   
    HI_HANDLE                   oldWin;
    HI_UNF_CAPTURE_PICTURE_S    stCapturePicture;
	
    VO_WIN_CREATE_S             VoWinAttr;
    HI_HANDLE                   newWin;
	HI_UNF_CAPTURE_MEM_MODE_S   MemMode;
	HI_MCE_PALY_INFO_S			*PlayInfo;

	oldWin = pMce->hWindow;
	PlayInfo = &pMce->stMceParam;
	if (MCE_PLAY_TYPE_GPHFILE == PlayInfo->playType)
	{
	    if ((pstPreParm->enOption == HI_UNF_PREAV_STEP1)
	        || (pstPreParm->enOption == HI_UNF_PREAV_STEP2)
	        || (pstPreParm->enOption == HI_UNF_PREAV_STEP3))
	    {
	        HI_INFO_MCE("playType is MCE_PLAY_TYPE_GPHFILE,so do nothing in step1~step3\n ");
	        return 0;
	    }
	    else if (pstPreParm->enOption == HI_UNF_PREAV_STEP4)
	    {
	        HI_INFO_MCE("playType is MCE_PLAY_TYPE_GPHFILE, in step4 , close the OSD\n ");
	      //  Set_Graphic_Disable();
	        return 0;
	    }
	}

    HI_INFO_MCE("Option:0x%x\n", pstPreParm->enOption);
    if (pstPreParm->enOption == HI_UNF_PREAV_STEP1)
    {
        //step 1:Stop AVPlay, and capture the last frame!
        HI_INFO_MCE("stop av in still mode\n");

        //MCE DVB/tsFile AV Stop (Still mode)
       // mce_avplay_stillexitProg();
        if (MCE_PLAY_TYPE_DVB == PlayInfo->playType)
       	{
			MCE_DvbPlayStop(pMce);
		}
		else if(MCE_PLAY_TYPE_TSFILE == PlayInfo->playType)
		{
			MCE_TsPlayStop(pMce);
			/*release reserve mem for ts data*/
        	HI_DRV_PDM_ReleaseReserveMem("playdata");
		}
		
        msleep(100);

        HI_INFO_MCE("VOCapture\n");
		memset(&MemMode, 0x0, sizeof(HI_UNF_CAPTURE_MEM_MODE_S));
		MemMode.enAllocMemType = HI_UNF_CAPTURE_NO_ALLOC;
		//VO_CapturePictureWithMem(oldWin, &stCapturePicture, &MemMode);
		HI_DRV_VO_CapturePicture(oldWin, &stCapturePicture);
		HI_DRV_VO_CapturePictureRelease(oldWin, &stCapturePicture);


        HI_INFO_MCE("stCapturePicture ---> g_stVoFrameInfo\n");
        memset(&g_stVoFrameInfo, 0, sizeof(HI_UNF_VO_FRAMEINFO_S));
        g_stVoFrameInfo.u32FrameIndex = 0;
        g_stVoFrameInfo.enVideoFormat = stCapturePicture.enVideoFormat;
        g_stVoFrameInfo.enDisplayNorm = pMce->stDispParam.enFormat;
        g_stVoFrameInfo.enFrameType  = HI_UNF_FRAME_TYPE_I;
        g_stVoFrameInfo.enSampleType = stCapturePicture.enSampleType;
        g_stVoFrameInfo.enFieldMode = stCapturePicture.enFieldMode;
        g_stVoFrameInfo.bTopFieldFirst = HI_TRUE;
        g_stVoFrameInfo.enAspectRatio  = HI_UNF_ASPECT_RATIO_16TO9;
        g_stVoFrameInfo.enVideoCombine = HI_UNF_VIDEO_FRAME_COMBINE_T0B0;

        g_stVoFrameInfo.u32Width  = stCapturePicture.u32Width;
        g_stVoFrameInfo.u32Height = stCapturePicture.u32Height;
        g_stVoFrameInfo.u32DisplayWidth   = g_stVoFrameInfo.u32Width;
        g_stVoFrameInfo.u32DisplayHeight  = g_stVoFrameInfo.u32Height;
        g_stVoFrameInfo.u32DisplayCenterX = g_stVoFrameInfo.u32Width / 2;
        g_stVoFrameInfo.u32DisplayCenterY = g_stVoFrameInfo.u32Height / 2;
        g_stVoFrameInfo.u32ErrorLevel = 0;
        g_stVoFrameInfo.u32SeqCnt = 0;
        g_stVoFrameInfo.u32SeqFrameCnt = 0;
        g_stVoFrameInfo.u32SrcPts = 0xffffffff;
        g_stVoFrameInfo.u32Pts = 0xffffffff;

        //g_stVoFrameInfo.stTimeCode        = ;
        g_stVoFrameInfo.u32YAddr = stCapturePicture.u32TopYStartAddr;
        g_stVoFrameInfo.u32CAddr = stCapturePicture.u32TopCStartAddr;
        g_stVoFrameInfo.u32LstYAddr = stCapturePicture.u32TopYStartAddr;
        g_stVoFrameInfo.u32LstYCddr = stCapturePicture.u32TopCStartAddr;

        g_stVoFrameInfo.u32YStride = stCapturePicture.u32Stride;
        g_stVoFrameInfo.u32CStride = stCapturePicture.u32Stride;
        g_stVoFrameInfo.u32Repeat = 1;
        g_stVoFrameInfo.u32MgcNum = 0;

        g_stVoFrameInfo.u32CompressFlag = stCapturePicture.u32CompressFlag;
        g_stVoFrameInfo.s32CompFrameHeight = stCapturePicture.s32CompFrameHeight;
        g_stVoFrameInfo.s32CompFrameWidth = stCapturePicture.s32CompFrameWidth;
    }
    else if (pstPreParm->enOption == HI_UNF_PREAV_STEP2)
    {
        //step 2:send last frame to new window!
        newWin = pstPreParm->StepParam1;

        //DVB/tsFile zorder user vowin
        HI_INFO_MCE("DVB/TSFile disp z order newWin:0x%x, oldWin:0x%x\n", newWin, oldWin);
        WinZorder.hWindow = newWin;
        WinZorder.ZFlag = HI_LAYER_ZORDER_MOVETOP;
		HI_DRV_VO_SetWindowZorder(newWin, WinZorder.ZFlag);

        //MCE DVB/tsFile enable user vowin
        HI_INFO_MCE("enable new win\n");
        VoWinEnable.hWindow = newWin;
        VoWinEnable.bEnable = HI_TRUE;
		HI_DRV_VO_SetWindowEnable(newWin, VoWinEnable.bEnable);
		
        msleep(100);
        HI_INFO_MCE(" send last frame to new win\n");
        //MCE DVB/tsFile send last frame data to user wowin
        VoWinFrame.hWindow = newWin;
		memcpy(&(VoWinFrame.Frameinfo), &g_stVoFrameInfo, sizeof(HI_UNF_VO_FRAMEINFO_S));
		msleep(500);
		HI_DRV_VO_SendFrame(newWin, &VoWinFrame.Frameinfo);
		msleep(100); //let data inject completely!!
    }
    else if (pstPreParm->enOption == HI_UNF_PREAV_STEP3)
    {
        newWin = pstPreParm->StepParam1;
        VoWinAttr.hWindow = oldWin;
		HI_DRV_VO_GetVoAttr(oldWin, &VoWinAttr.WinAttr);
        HI_INFO_MCE(" reshape old window size\n");
        VoWinAttr.hWindow = oldWin;
        VoWinAttr.WinAttr.stOutputRect.s32X = 0;
        VoWinAttr.WinAttr.stOutputRect.s32Y = 0;
        VoWinAttr.WinAttr.stOutputRect.s32Width  = VoWinAttr.WinAttr.stOutputRect.s32Width / 2;
        VoWinAttr.WinAttr.stOutputRect.s32Height = VoWinAttr.WinAttr.stOutputRect.s32Height / 2;
        HI_INFO_MCE(" reshape new window size\n");
		HI_DRV_VO_SetVoAttr(oldWin, &VoWinAttr.WinAttr);
        VoWinAttr.hWindow = newWin;
        VoWinAttr.WinAttr.stOutputRect.s32X = 0;
        VoWinAttr.WinAttr.stOutputRect.s32Y = 0;
        VoWinAttr.WinAttr.stOutputRect.s32Width  = VoWinAttr.WinAttr.stOutputRect.s32Width * 2;
        VoWinAttr.WinAttr.stOutputRect.s32Height = VoWinAttr.WinAttr.stOutputRect.s32Height * 2;
 		HI_DRV_VO_SetVoAttr(newWin, &VoWinAttr.WinAttr);

    }
    else if (pstPreParm->enOption == HI_UNF_PREAV_STEP4)
    {}

    return 0;
}

 HI_U32 play_time(HI_U32 u32BeginTime)
{
	HI_U32 time_end = 0;
	HI_U32 time_val = 0;
	
	time_end = MCE_GetCurTime();
	time_val = time_end - u32BeginTime;
	HI_INFO_MCE("play time = %d\n",time_val);
	return time_val;
}

/*
** Capture latest-frame to new window
*/
HI_VOID fastplay_preAV(HI_SYS_PREAV_PARAM_S *pstPreParm)
{
	HI_S32 Ret;
	MCE_S               		*pMce = &g_Mce;

	if(pMce->bMceExit)
	{
		HI_ERR_MCE("\n mce is not in work mode!\n");
		return ;
	}
	
	play_end_preav(pstPreParm,pMce);
	//MCE DVB/tsFile stop MCE as before
	if(pstPreParm->enOption == HI_UNF_PREAV_STEP4)
	{
		if (MCE_PLAY_TYPE_GPHFILE == pMce->stMceParam.playType)
		{
	        HI_INFO_MCE("MCE_Disp_Close \n");
			HI_DRV_PDM_ReleaseReserveMem("playdata");
		}
		Ret = HI_DRV_MCE_Exit();
		if(HI_SUCCESS != Ret)
		{
			HI_ERR_MCE("ERR: HI_DRV_MCE_Exit\n");
			//  return Ret;
		} 
	}    
	return ;
}



HI_S32 MCE_Init(HI_VOID)
{
    HI_S32              Ret;
    MCE_S               *pMce = &g_Mce;

	HI_INFO_MCE("MCE INIT START!!!!!!!!!!!\n");

    Ret = MCE_ModuleInit();
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_ModuleInit\n");
        Ret = HI_FAILURE;  
        goto ERR0;
    } 

    Ret = HI_DRV_PDM_GetDispParam(HI_UNF_DISP_HD0, &pMce->stDispParam);
  //  Ret |= HI_DRV_PDM_GetGrcParam(&pMce->stGrcParam);
 //   Ret |= HI_DRV_PDM_GetMceParam(&pMce->stMceParam);
  	Ret |= HI_DRV_PDM_GetMceParam(&pMce->stMceParam);
    if(pMce->stMceParam.playType == MCE_PLAY_TYPE_TSFILE)
    {
	  	HI_INFO_MCE("%s->%d,contenlen:%d,Ret:%#x\n",__func__,__LINE__,pMce->stMceParam.Info.tsFileInfo.contentLen,Ret);
	    if (0 != pMce->stMceParam.Info.tsFileInfo.contentLen)
	    {
	        Ret |= HI_DRV_PDM_GetMceData(&pMce->u32PlayDataAddr);
	    }
    }

	if(pMce->stMceParam.playType == MCE_PLAY_TYPE_GPHFILE)
    {
	    if (0 != pMce->stMceParam.Info.gphFileInfo.comInfo.uCount)
	    {
	        Ret |= HI_DRV_PDM_GetMceData(&pMce->u32PlayDataAddr);
	    }
    }

    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: get PDM Param\n");
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)	
        HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_0);  //解决logo->grephic app的平滑过渡问题。
#endif		
        Ret = HI_FAILURE;  
        goto ERR0;
    }    
         
    if (1 != pMce->stMceParam.fastplayflag)
    {
        HI_ERR_MCE("mce checkflag is not open\n");
        Ret = HI_FAILURE;
        goto ERR0; 
    }
	HI_PRINT("Fastplay start!!!\n");
        
    pMce->bPlayStop = HI_FALSE;
    pMce->bMceExit = HI_FALSE;

    Ret = MCE_PlayStart(pMce);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("ERR: MCE_PlayStart\n");
        Ret = HI_FAILURE;
        goto ERR0;  
    } 

    return Ret;
    
ERR0:
    pMce->bMceExit = HI_TRUE;
    return Ret;
}

HI_S32 MCE_DeInit(HI_VOID)
{
    return HI_SUCCESS;
}

#ifndef MODULE
//early_initcall(MCE_Init);
//core_initcall(MCE_Init);
subsys_initcall(MCE_Init);
#else
#endif

