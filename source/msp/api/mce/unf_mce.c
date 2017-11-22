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
  File Name	: unf_mce.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/ioctl.h>
#include <fcntl.h>

#include "hi_type.h"
#include "hi_unf_mce.h"
#include "hi_drv_mce.h"
#include "hi_drv_pdm.h"
#include "hi_flash.h"
#include "hi_drv_tuner.h"
#include "hi_mpi_vo.h"

#define ACCESS_TYPE 'c'
/*for playDataSize limit*/
const HI_U32 MAX_DATA_SIZE = 0X1400000;
//const HI_U32 MIX_DATA_SIZE    = 0X100000;
const HI_U32 MIX_DATA_SIZE    = 0;
const HI_U32 MAX_PLAY_TIME = 600 ;//10 minute
#define FILE_ALIGN_SIZE 128

#if 1
#define PART_DEFT_PARA_SIZE		0x2000

unsigned int PART_BASE_PARA_OFFSET 	= 0;
unsigned int PART_BASE_PARA_SIZE		= PART_DEFT_PARA_SIZE;

unsigned int PART_LOGO_PARA_OFFSET 	= 0;
unsigned int PART_LOGO_PARA_SIZE		= PART_DEFT_PARA_SIZE;

unsigned int PART_LOGO_DATA_OFFSET	= 0;
unsigned int PART_LOGO_DATA_SIZE		= 0;

unsigned int PART_PLAY_PARA_OFFSET		= 0;
unsigned int PART_PLAY_PARA_SIZE		= PART_DEFT_PARA_SIZE;

unsigned int PART_PLAY_DATA_OFFSET		= 0;
unsigned int PART_PLAY_DATA_SIZE		= 0;
#endif

#define MAX_GPHFILE_SUPPORT_NUM 200

typedef struct mce_Mtd_Info_S
{
	HI_U32  BlockSize;
	HI_U64  TotalSize;
	HI_U32  baseParaSize;
	HI_U32  logoParaSize;
	HI_U32  logoDataSize;
	HI_U32  playParaSize;
	HI_U32  playDataSize;
	HI_CHAR DevName[FLASH_NAME_LEN]; 
	HI_CHAR PartName[FLASH_NAME_LEN];
}MCE_MTD_INFO_S;

static unsigned int  mtdReady = 0;
static MCE_MTD_INFO_S  mtdInfo ={0};
static HI_PDM_BASE_INFO_S baseInfo;
static HI_PDM_LOGO_INFO_S logoInfo;
static HI_MCE_PALY_INFO_S playInfo;
static HI_S32 g_sCanvasWidth  = 1280;
static HI_S32 g_sCanvasHeight = 720;

static HI_S32 init_base_part(HI_PDM_BASE_INFO_S *phdr)
{	
	if(phdr == NULL)
	{
		HI_ERR_MCE("para_img_hdr err\n");	
		return -1;
	}
	phdr->checkflag = DEF_CHECK_FLAG;
	phdr->hdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	phdr->sdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	phdr->hdFmt = HI_UNF_ENC_FMT_1080i_50;
	phdr->sdFmt = HI_UNF_ENC_FMT_PAL ;
	phdr->scart = 0;
	phdr->Bt1120 = 0;
	phdr->Bt656 = 0;
	phdr->dac[0] = HI_UNF_DISP_DAC_MODE_HD_PR;
	phdr->dac[1] = HI_UNF_DISP_DAC_MODE_HD_Y;
	phdr->dac[2] = HI_UNF_DISP_DAC_MODE_HD_PB;
	phdr->dac[3] = HI_UNF_DISP_DAC_MODE_SVIDEO_C;
	phdr->dac[4] = HI_UNF_DISP_DAC_MODE_SVIDEO_Y;
	phdr->dac[5] = HI_UNF_DISP_DAC_MODE_CVBS;
		
	phdr->layerformat = 9;
	phdr->inrectwidth = 1280;
	phdr->inrectheight = 720;
	phdr->outrectwidth = 1920;
	phdr->outrectheight = 1080;
	phdr->usewbc = 1;
	phdr->resv1 = 0;
	phdr->resv2 = 0;
	phdr->logoMtdSize = 0; 
	phdr->playMtdSize = 0; 
	return 0;
}

static int init_app_part_offset_size_info( HI_U32 uFlashSize,HI_UNF_PARTION_TYPE_E type)
{
	PART_LOGO_PARA_OFFSET 	= 0;
	PART_LOGO_PARA_SIZE		= PART_DEFT_PARA_SIZE;

	PART_LOGO_DATA_OFFSET	= PART_LOGO_PARA_OFFSET + PART_LOGO_PARA_SIZE;
	PART_LOGO_DATA_SIZE		= 0;

	PART_PLAY_PARA_OFFSET	= 0 ;
	PART_PLAY_PARA_SIZE		= PART_DEFT_PARA_SIZE;

	PART_PLAY_DATA_OFFSET	= PART_PLAY_PARA_OFFSET + PART_PLAY_PARA_SIZE;
	PART_PLAY_DATA_SIZE		= 0;
	if(type == HI_UNF_PARTION_TYPE_LOGO)
	{
		PART_LOGO_DATA_SIZE = uFlashSize - PART_LOGO_PARA_SIZE;
	}
	else if(type == HI_UNF_PARTION_TYPE_PLAY)
	{
		PART_PLAY_DATA_SIZE = uFlashSize - PART_PLAY_PARA_SIZE;
	}
	else
	{
	}
	HI_INFO_MCE("app PART_LOGO_PARA_OFFSET 		0x%x\n",PART_LOGO_PARA_OFFSET);
	HI_INFO_MCE("app PART_LOGO_PARA_SIZE 			0x%x\n",PART_LOGO_PARA_SIZE);
	HI_INFO_MCE("app PART_LOGO_DATA_OFFSET 		0x%x\n",PART_LOGO_DATA_OFFSET);
	HI_INFO_MCE("app PART_LOGO_DATA_SIZE 			0x%x\n",PART_LOGO_DATA_SIZE);
	
	HI_INFO_MCE("app PART_PLAY_PARA_OFFSET 		0x%x\n",PART_PLAY_PARA_OFFSET);
	HI_INFO_MCE("app PART_PLAY_PARA_SIZE 			0x%x\n",PART_PLAY_PARA_SIZE);
	HI_INFO_MCE("app PART_PLAY_DATA_OFFSET 		0x%x\n",PART_PLAY_DATA_OFFSET);
	HI_INFO_MCE("app PART_PLAY_DATA_SIZE 			0x%x\n",PART_PLAY_DATA_SIZE);
    return 0;
}
#if 0
static int  base_Param_checkDacMode(HI_UNF_MCE_BASE_PARAM_S *param)
{
	int i;
	int SDRGB;
	int SDYUV;
	int HDRGB;
	int HDYUV;
	int HdDacNum;
	HI_UNF_DISP_DAC_MODE_E *penDac = NULL;
	// hd
	if(param->hdIntf == HI_UNF_DISP_INTF_TYPE_TV)
	{
		if(param->hdFmt > HI_UNF_ENC_FMT_SECAM_COS)
		{
			HI_ERR_MCE("hdFmt confilct with hdIntf \n");
			return -1;
		}
	}
	else if(param->hdIntf == HI_UNF_DISP_INTF_TYPE_LCD)
	{
		if( (param->hdFmt < HI_UNF_ENC_FMT_861D_640X480_60)
			|| (param->hdFmt >= HI_UNF_ENC_FMT_BUTT) )
		{
			HI_ERR_MCE("hdFmt confilct with hdIntf \n");
			return -1;
		}
	}
	else
	{
		HI_ERR_MCE("hdIntf invalid \n");
		return -1;
	}
	// sd
	if(param->sdIntf == HI_UNF_DISP_INTF_TYPE_TV)
	{
		if( (param->sdFmt < HI_UNF_ENC_FMT_PAL)
			|| (param->sdFmt > HI_UNF_ENC_FMT_SECAM_COS) )
		{
			HI_ERR_MCE("sdFmt confilct with sdIntf \n");
			return -1;
		}
	}
	else
	{
		HI_ERR_MCE("sdIntf invalid \n");
		return -1;
	}
	if(param->sdFmt >= HI_UNF_ENC_FMT_BUTT)
	{
		HI_ERR_MCE("sdFmt invalid \n");
		return -1;
	}
	// dac
	SDRGB = 0;
	SDYUV = 0;
	HDRGB = 0;
	HDYUV = 0;
	penDac = param->DacMode.enDacMode;
	for(i=0; i<MAX_DAC_NUM; i++)
	{
		if (penDac[i] >= HI_UNF_DISP_DAC_MODE_BUTT)
		{
			HI_ERR_MCE("dac(%d) invalid \n", i);
			return -1;
		}
		else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_Y)
				&& (penDac[i] <= HI_UNF_DISP_DAC_MODE_PR))
		{
			SDYUV = 1;
		}
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_R)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_B))
        {
           SDRGB = 1;
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_Y)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_HD_PR))
        {
           HDYUV = 1;
        }
        else if ( (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_R)
                 && (penDac[i] <= HI_UNF_DISP_DAC_MODE_HD_B))
        {
           HDRGB = 1;
        }
    }

    //SDate and HDate do not support RGB and YPbPr output at the same time
    if( ((SDYUV & SDRGB) != 0) || ((HDYUV & HDRGB) != 0) )
    {
		HI_ERR_MCE("dac cfg invalid \n");
        return -1;
    }

    //Because DAC[3~5] are copy of DAC[0~2], 
    //when DAC[i] and DAC[i+3] are both in HD mode, they must be same.
    HdDacNum = MAX_DAC_NUM/2;
    for(i=0; i<HdDacNum; i++)
    {
       if (   (penDac[i] >= HI_UNF_DISP_DAC_MODE_HD_Y) 
           && (penDac[i+HdDacNum] >= HI_UNF_DISP_DAC_MODE_HD_Y)
           && (penDac[i] != penDac[i+HdDacNum] ) )
       {
		  HI_ERR_MCE("dac cfg invalid \n");
          return -1;
       }
    }

    return 0;
}
#endif

static HI_S32 base_VertexCheck(HI_U32 u32Format, HI_U32 u32Top, HI_U32 u32Left)
{
    HI_U32 ScreenWidth, ScreenHeight;
    
    switch(u32Format)
	{
	case HI_UNF_ENC_FMT_1080i_50:
	case HI_UNF_ENC_FMT_1080i_60:
	case HI_UNF_ENC_FMT_1080P_24:
	case HI_UNF_ENC_FMT_1080P_25:
	case HI_UNF_ENC_FMT_1080P_30:
	case HI_UNF_ENC_FMT_1080P_50:
	case HI_UNF_ENC_FMT_1080P_60:
		ScreenWidth = 1920;
		ScreenHeight = 1080;
		break;
	case HI_UNF_ENC_FMT_720P_50:
	case HI_UNF_ENC_FMT_720P_60:
		ScreenWidth = 1280;
		ScreenHeight = 720;
		break;
	case HI_UNF_ENC_FMT_480P_60:
	case HI_UNF_ENC_FMT_NTSC:
	case HI_UNF_ENC_FMT_NTSC_J:
	case HI_UNF_ENC_FMT_NTSC_PAL_M:
		ScreenWidth = 720;
		ScreenHeight = 480;
		break;
	case HI_UNF_ENC_FMT_576P_50:
	case HI_UNF_ENC_FMT_PAL:
	    ScreenWidth = 720;
		ScreenHeight = 576;
		break;
	default:
	    ScreenWidth = 0;
	    ScreenHeight = 0;
	    HI_ERR_MCE("please set correct format\n");
		break;
	}
	if( (u32Left >= (ScreenWidth / 2 - 10))||(u32Top >= (ScreenHeight / 2 - 10)))
	{
	    HI_ERR_MCE("Please set correct u32Left(%d),u32Top(%d)\n",u32Left,u32Top);
	    return HI_FAILURE;
	}
    return HI_SUCCESS;
}
static int base_ParamTransInfo(HI_UNF_MCE_BASE_PARAM_S *param, HI_PDM_BASE_INFO_S *info)
{
    int i;
	// 1
	info->checkflag = DEF_CHECK_FLAG;

	info->hdIntf = param->hdIntf;
	info->sdIntf = param->sdIntf;
	info->hdFmt  = param->hdFmt;
	info->sdFmt  = param->sdFmt;

	info->scart  = param->DacMode.bScartEnable;
	info->Bt1120 = param->DacMode.bBt1120Enable;
	info->Bt656  = param->DacMode.bBt656Enable;
	for(i = 0; i < MAX_DAC_NUM; i++)
	{
		info->dac[i] = param->DacMode.enDacMode[i];
	}
	info->inrectwidth = param->inrectwidth;
	info->inrectheight = param->inrectheight;
	info->layerformat = param->layerformat;
	if(param->layerformat !=5 && param->layerformat !=9)
	{
		HI_ERR_MCE("+++++++invalid pixel format, only support HIGO_PF_8888,HIGO_PF_1555\n");
		return HI_FAILURE;
	}
	if(param->inrectwidth > 1920 ||param->inrectwidth < 32)
	{
		HI_ERR_MCE("+++++++invalid invalid width .only support 32 ~ 1920\n");
		return HI_FAILURE;
	}
	if(param->inrectheight > 1080 ||param->inrectheight < 32)
	{
		HI_ERR_MCE("+++++++invalid invalid height .only support 32 ~ 1080\n");
		return HI_FAILURE;
    }
    if( HI_SUCCESS != base_VertexCheck(param->hdFmt, param->u32Top, param->u32Left))
    {
        HI_ERR_MCE("set u32Top:%d, u32Left:%d error\n",param->u32Top,param->u32Left);
        return HI_FAILURE;
    }
    if(param->u32HuePlus > 100)
    {
        HI_ERR_MCE("Set param->u32HuePlus:%d error!\n",param->u32HuePlus);
        return HI_FAILURE;
    }
    if(param->u32Saturation > 100)
    {
        HI_ERR_MCE("Set param->u32Saturation:%d error!\n",param->u32Saturation);
        return HI_FAILURE;
    }
    if(param->u32Contrast > 100)
    {
        HI_ERR_MCE("Set param->u32Contrast:%d error!\n",param->u32Contrast);
        return HI_FAILURE;
    }
    if(param->u32Brightness > 100)
    {
        HI_ERR_MCE("Set param->u32Brightness:%d error!\n",param->u32Brightness);
        return HI_FAILURE;
    }
    if(param->enAspectRatio > HI_UNF_ASPECT_RATIO_BUTT)
    {
        HI_ERR_MCE("Set param->enAspectRatio:%d error!\n",param->enAspectRatio);
        return HI_FAILURE;
    }
    if(param->enAspectCvrs > HI_UNF_ASPECT_CVRS_BUTT)
    {
        HI_ERR_MCE("Set param->enAspectCvrs:%d error!\n",param->enAspectCvrs);
        return HI_FAILURE;
    }
    if(param->enDispMacrsn > HI_UNF_DISP_MACROVISION_MODE_BUTT)
    {
        HI_ERR_MCE("Set param->enDispMacrsn:%d error!\n",param->enDispMacrsn);
        return HI_FAILURE;
    }

	info->resv1 = 0;
	info->resv2 = 0;
	info->outrectheight = 0;
	info->outrectwidth = 0;
	info->usewbc = 1;
	info->logoMtdSize = 0;
	info->playMtdSize = 0;

	strncpy(info->chVersion, __FASTPLAY_VERISON__, 8);
	info->u32Top = param->u32Top;
	info->u32Left = param->u32Left;
	info->u32HuePlus = param->u32HuePlus;
	info->u32Saturation = param->u32Saturation;
	info->u32Contrast = param->u32Contrast;
	info->u32Brightness = param->u32Brightness;
    info->enBgcolor.u8Blue = param->enBgcolor.u8Blue;
    info->enBgcolor.u8Green = param->enBgcolor.u8Green;
    info->enBgcolor.u8Red = param->enBgcolor.u8Red ;
    info->enAspectRatio = param->enAspectRatio;
    info->enAspectCvrs = param->enAspectCvrs;
    info->enDispMacrsn = param->enDispMacrsn;

    //info->sLcdPara = param->sLcdPara; //to be validated
    
 	return HI_SUCCESS;
}

static int base_InfoTransParam(HI_PDM_BASE_INFO_S *info, HI_UNF_MCE_BASE_PARAM_S *param)
{
	int i;
	if(info->checkflag != DEF_CHECK_FLAG)
	{
		HI_ERR_MCE("info->checkflag(0x%08x) err \n", info->checkflag);
		return -1;
	}
	//
	param->hdIntf = info->hdIntf;
	param->sdIntf = info->sdIntf;
	param->hdFmt = info->hdFmt;
	param->sdFmt = info->sdFmt;
	//
	if(info->scart)
	{
		param->DacMode.bScartEnable = HI_TRUE;
	}else
	{
		param->DacMode.bScartEnable = HI_FALSE;
	}
	
	if(info->Bt1120)
	{
		param->DacMode.bBt1120Enable = HI_TRUE;
	}
	else
	{
		param->DacMode.bBt1120Enable = HI_FALSE;
	}
	
	if(info->Bt656)
	{
		param->DacMode.bBt656Enable = HI_TRUE;
	}
	else
	{
		param->DacMode.bBt656Enable = HI_FALSE;
	}
	
	for(i = 0; i < MAX_DAC_NUM; i++)
	{
		param->DacMode.enDacMode[i] = info->dac[i];
	}
	param->inrectwidth = info->inrectwidth  ;
	param->inrectheight = info->inrectheight;
	param->layerformat = info->layerformat;
	param->u32Top = info->u32Top;
	param->u32Left = info->u32Left;
	param->u32HuePlus = info->u32HuePlus;
	param->u32Saturation = info->u32Saturation;
	param->u32Contrast = info->u32Contrast;
	param->u32Brightness = info->u32Brightness;
    param->enBgcolor.u8Blue = info->enBgcolor.u8Blue;
    param->enBgcolor.u8Green = info->enBgcolor.u8Green;
    param->enBgcolor.u8Red = info->enBgcolor.u8Red ;
    param->enAspectRatio = info->enAspectRatio;
    param->enAspectCvrs = info->enAspectCvrs;
    param->enDispMacrsn = info->enDispMacrsn;
	return 0;
}

static int logo_ParamTransInfo(HI_UNF_MCE_LOGO_PARAM_S *param, HI_PDM_LOGO_INFO_S *info)
{
	if( param->contentLen > mtdInfo.logoDataSize)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too large.pls reformat fastplay area \n", param->contentLen);
		return -1;
	}
	info->contentLen = param->contentLen;
	info->checkflag = DEF_CHECK_FLAG;
	info->logoflag = param->logoflag;
	strncpy(info->chVersion, __FASTPLAY_VERISON__,8);

	info->u32XPos = param->u32XPos;
	info->u32YPos = param->u32YPos;
	info->u32OutWidth = param->u32OutWidth;
	info->u32OutHeight = param->u32OutHeight;
	info->u32BgColor = param->u32BgColor;
	
	return 0;
}

static int logo_InfoTransParam(HI_PDM_LOGO_INFO_S *info, HI_UNF_MCE_LOGO_PARAM_S *param)
{
	if(info->checkflag != DEF_CHECK_FLAG)
	{
		HI_ERR_MCE("info->checkflag(0x%08x) err \n", info->checkflag);
		return -1;
	}
	if( info->contentLen > mtdInfo.logoDataSize)
	{
		HI_ERR_MCE("info->contentLen(0x%08x) too large \n", info->contentLen);
		return -1;
	}
	param->contentLen = info->contentLen;
	param->logoflag   = info->logoflag;
	
	param->u32XPos = info->u32XPos;
	param->u32YPos = info->u32YPos;
	param->u32OutWidth = info->u32OutWidth;
	param->u32OutHeight = info->u32OutHeight;
	param->u32BgColor = info->u32BgColor;
	
	return 0;
}


static int DVB_Param_Check(HI_UNF_MCE_DVB_PARAM_S *param)
{
	// 0  program
	if(param->PcrPid > 0x1fff || param->PcrPid < 1)
	{
		HI_ERR_MCE("param->PcrPid(0x%08x) invalid \n", param->PcrPid);
		return -1;
	}
	if(param->u32PlayTime> MAX_PLAY_TIME)
	{
		HI_ERR_MCE("param->u32PlayTime(0x%08x) invalid \n", param->u32PlayTime);
		return -1;
	}
	if(param->VideoType > HI_UNF_MCE_VDEC_TYPE_BUTT)
	{
		HI_ERR_MCE("param->VideoType(%d) invalid \n", param->VideoType);
		return -1;
	}
	if(param->VElementPid > 0x1fff ||param->VElementPid < 1 )
	{
		HI_ERR_MCE("param->VElementPid(0x%08x) invalid \n", param->VElementPid);
		return -1;
	}
	if(param->AudioType > HI_UNF_MCE_ADEC_TYPE_BUTT)
	{
		HI_ERR_MCE("param->AudioType(%d) invalid \n", param->AudioType);
		return -1;
	}
	if(param->AElementPid > 0x1fff ||param->AElementPid  < 1)
	{
		HI_ERR_MCE("param->AElementPid (0x%08x) invalid \n", param->AElementPid );
		return -1;
	}
	if(param->AElementPid  == param->VElementPid )
	{
		HI_ERR_MCE("AElementPid == VElementPid (0x%08x) invalid \n", param->AElementPid );
		return -1;
	}
	
	// tuner
	if(param->tunerId >= 0x3)
	{
		HI_ERR_MCE("tuner Id(%d) invalid \n", param->tunerId);
		return -1;
	}
	if(( param->tunerFreq < 45 ) || ( param->tunerFreq > 858))
    {
		HI_ERR_MCE("tuner Freq(%d K) invalid \n", param->tunerFreq);
		return -1;
	}
	if(( param->tunerSrate < 2600 ) || ( param->tunerSrate > 7200 ))
	{
		HI_ERR_MCE("tuner SymbptRate(%d K) invalid, \n", param->tunerSrate);
		return -1;
	}
	if(param->tunerQam > QAM_TYPE_256)
	{
		HI_ERR_MCE("tuner Qum(%d) invalid, \n", param->tunerQam);
		return -1;
	}
	// audio
	if(param->volume > 100)
	{
		HI_ERR_MCE("audio volume(%d) out of range \n", param->volume);
		return -1;
	}
	if(param->trackMode != HI_UNF_TRACK_MODE_STEREO)
	{
		HI_ERR_MCE("audio track Mode(%d) invalid \n", param->trackMode);
		return -1;
	}
	// vid
	if(param->devMode >= HI_UNF_VO_DEV_MODE_BUTT)
	{
		HI_ERR_MCE("vo device Mode(%d) invalid \n", param->devMode);
		return -1;
	}
	
	if(param->tunerDevType >= HI_UNF_TUNER_DEV_TYPE_BUTT)
	{
		HI_ERR_MCE("tunerDevType Mode(%d) invalid \n", param->tunerDevType);
		return -1;
	}
	if((param->demoDev != HI_UNF_DEMOD_DEV_TYPE_NONE) \
	   && (param->demoDev != HI_UNF_DEMOD_DEV_TYPE_3130I) \
	   && (param->demoDev != HI_UNF_DEMOD_DEV_TYPE_3130E))
	{
		HI_ERR_MCE("demoDev Mode(%d) invalid \n", param->demoDev);
		return -1;
	}
	if(param->I2cChannel >= HI_I2C_MAX_NUM )
	{
		HI_ERR_MCE("I2cChannel Mode(%d) invalid \n", param->I2cChannel);
		return -1;
	}
	return 0;
}

static int DVB_ParamTransInfo(HI_UNF_MCE_DVB_PARAM_S *param, MCE_DVB_INFO_S *info)
{
	int ret;
	// check
	ret = DVB_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	//  av
	info->PcrPid = param->PcrPid;
	info->u32PlayTime = param->u32PlayTime;
	switch(param->VideoType)
	{
		case HI_UNF_MCE_VDEC_TYPE_MPEG2:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_MPEG4:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG4;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_H264:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_H264;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_AVS:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_AVS;
			break;
		}
		default:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;
		}
	}
	info->VElementPid = param->VElementPid;
	switch(param->AudioType)
	{
		case HI_UNF_MCE_ADEC_TYPE_MP2:
		{
			info->AudioType = 0;
			break;
		}
		case HI_UNF_MCE_ADEC_TYPE_MP3:
		{
			info->AudioType = 1;
			break;
		}
		default:
		{
			info->AudioType = 1;
			break;
		}   
	}
	info->AElementPid = param->AElementPid;
	//tuner
	info->tunerId = param->tunerId;
	info->tunerFreq = param->tunerFreq;
	info->tunerSrate = param->tunerSrate;
	info->tunerQam = param->tunerQam;
	//audio
	info->volume = param->volume;
	info->trackMode = param->trackMode;
	// vid
	info->devMode = param->devMode;	
	info->tunerDevType = param->tunerDevType;
	info->demoDev = param->demoDev;
	info->I2cChannel = param->I2cChannel;
	strncpy(info->chVersion, __FASTPLAY_VERISON__,8);
	return 0;
}


static int DVB_InfoTransParam(MCE_DVB_INFO_S *info, HI_UNF_MCE_DVB_PARAM_S *param)
{
	int ret;
	//  av
	param->PcrPid = info->PcrPid;
	param->u32PlayTime = info->u32PlayTime;
	switch(info->VideoType)
	{
		case HI_UNF_VCODEC_TYPE_MPEG2:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_MPEG2;
			break;
		}
		case HI_UNF_VCODEC_TYPE_MPEG4:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_MPEG4;
			break;
		}
		case HI_UNF_VCODEC_TYPE_H264:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_H264;
			break;
		}
		case HI_UNF_VCODEC_TYPE_AVS:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_AVS;
			break;
		}
		default:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_BUTT;
			break;
		}
	}
	param->VElementPid = info->VElementPid;
	switch(info->AudioType)
	{		 
		case 0:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_MP2;
			break;
		}
		case 1:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_MP3;
			break;
		}
		default:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_BUTT;
			break;
		}
	}
	param->AElementPid = info->AElementPid;
	//tuner
	param->tunerId = info->tunerId;
	param->tunerFreq = info->tunerFreq;
	param->tunerSrate = info->tunerSrate;
	param->tunerQam = info->tunerQam;
	//audio
	param->volume = info->volume;
	param->trackMode = info->trackMode;
	// vid
	param->devMode = info->devMode;
	param->tunerDevType = info->tunerDevType;	
	param->demoDev = info->demoDev;
	param->I2cChannel = info->I2cChannel;
	// check
	ret = DVB_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	return 0;
}


static int TsFile_Param_Check(HI_UNF_MCE_TSFILE_PARAM_S *param)
{
	HI_INFO_MCE("mtdInfo.playDataSize =0x%08x\n",mtdInfo.playDataSize);
	if( param->contentLen > MAX_DATA_SIZE)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too large \n", param->contentLen);
		return -1;
	}
	if( param->contentLen <= MIX_DATA_SIZE)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too small \n", param->contentLen);
		return -1;
	}

	if(param->u32PlayTime> MAX_PLAY_TIME)
	{
		HI_ERR_MCE("param->u32PlayTime(0x%08x) invalid \n", param->u32PlayTime);
		return -1;
	}
	if((param->IsCycle != HI_TRUE) && (param->IsCycle != HI_FALSE))
	{
		HI_ERR_MCE("param->IsCycle(%d) invalid \n", param->IsCycle);
		return -1;
	}
	//  program
	if(param->PcrPid > 0x1fff ||param->PcrPid < 1)
	{
		HI_ERR_MCE("param->PcrPid(0x%08x) invalid \n", param->PcrPid);
		return -1;
	}
	if(param->VideoType > HI_UNF_MCE_VDEC_TYPE_BUTT)
	{
		HI_ERR_MCE("param->VideoType(%d) invalid \n", param->VideoType);
		return -1;
	}
	if(param->VElementPid > 0x1fff || param->VElementPid < 1)
	{
		HI_ERR_MCE("param->VElementPid(0x%08x) invalid \n", param->VElementPid);
		return -1;
	}
	if(param->AudioType > HI_UNF_MCE_ADEC_TYPE_BUTT)
	{
		HI_ERR_MCE("param->AudioType(%d) invalid \n", param->AudioType);
		return -1;
	}
	if(param->AElementPid > 0x1fff ||  param->AElementPid < 1)
	{
		HI_ERR_MCE("param->AElementPid(0x%08x) invalid \n", param->AElementPid);
		return -1;
	}
	if(param->AElementPid  == param->VElementPid )
	{
		HI_ERR_MCE("AElementPid == VElementPid (0x%08x) invalid \n", param->AElementPid );
		return -1;
	}
	// audio
	if(param->volume > 100)
	{
		HI_ERR_MCE("audio volume(%d) out of range \n", param->volume);
		return -1;
	}
	if(param->trackMode != HI_UNF_TRACK_MODE_STEREO)
	{
		HI_ERR_MCE("audio track Mode(%d) invalid \n", param->trackMode);
		return -1;
	}
	// vid
	if(param->devMode >= HI_UNF_VO_DEV_MODE_BUTT)
	{
		HI_ERR_MCE("vo device Mode(%d) invalid \n", param->devMode);
		return -1;
	}
	return 0;
}


static int TsFile_ParamTransInfo(HI_UNF_MCE_TSFILE_PARAM_S *param, MCE_TSFILE_INFO_S *info)
{
	int ret;
	// check
	ret = TsFile_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	// 
	info->contentLen = param->contentLen;
	if(param->IsCycle)
	{
		info->IsCycle = 1;
	}
	else
	{
		info->IsCycle = 0;
	}
	//time
	info->u32PlayTime = param->u32PlayTime;
	//  av
	info->PcrPid = param->PcrPid;
	switch(param->VideoType)
	{
		case HI_UNF_MCE_VDEC_TYPE_MPEG2:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_MPEG4:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG4;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_H264:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_H264;
			break;
		}
		case HI_UNF_MCE_VDEC_TYPE_AVS:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_AVS;
			break;
		}
		default:
		{
			info->VideoType = HI_UNF_VCODEC_TYPE_MPEG2;
			break;
		}
	}
	info->VElementPid = param->VElementPid;
	switch(param->AudioType)
	{
		case HI_UNF_MCE_ADEC_TYPE_MP2:
		{
			info->AudioType = 0x10000002;
			break;
		}
		case HI_UNF_MCE_ADEC_TYPE_MP3:
		{
			info->AudioType = 0x10000003;
			break;
		}
		default:
		{
			info->AudioType = 0x10000003;
			break;
		}
	}
	info->AElementPid = param->AElementPid;
	//audio
	info->volume = param->volume;
	info->trackMode = param->trackMode;
	// vid
	info->devMode = param->devMode;	
	strncpy(info->chVersion, __FASTPLAY_VERISON__,8);
	return 0;
}


static int TsFile_InfoTransParam(MCE_TSFILE_INFO_S *info, HI_UNF_MCE_TSFILE_PARAM_S *param)
{
	int ret;
	//
	param->contentLen = info->contentLen;
	param->IsCycle = info->IsCycle;
	//  av
	param->PcrPid = info->PcrPid;
	//time
	param->u32PlayTime = info->u32PlayTime;
	switch(info->VideoType)
	{
		case HI_UNF_VCODEC_TYPE_MPEG2:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_MPEG2;
			break;
		}
		case HI_UNF_VCODEC_TYPE_MPEG4:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_MPEG4;
			break;
		}
		case HI_UNF_VCODEC_TYPE_H264:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_H264;
			break;
		}
		case HI_UNF_VCODEC_TYPE_AVS:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_AVS;
			break;
		}
		default:
		{
			param->VideoType = HI_UNF_MCE_VDEC_TYPE_BUTT;
			break;
		}
	}
	param->VElementPid = info->VElementPid;

	switch(info->AudioType)
	{
		case 0x10000002:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_MP2;
			break;
		}
		case 0x10000003:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_MP3;
			break;
		}
		default:
		{
			param->AudioType = HI_UNF_MCE_ADEC_TYPE_BUTT;
			break;
		}
	}
	param->AElementPid = info->AElementPid;
	//audio
	param->volume = info->volume;
	param->trackMode = info->trackMode;
	// vid
	param->devMode = info->devMode;	
	// check
	ret = TsFile_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	return 0;
}

HI_S32 gphFile_param_CheckCommonInfo(HI_UNF_PIC_COMMINFO *pComInfo)
{	
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_PDM_BASE_INFO_S  tmpbase = {0};
	HI_BOOL bReadBaseParamFailed = HI_FALSE;
	if(pComInfo == NULL)
	{
		HI_ERR_MCE("common info is null \n" );	
		return HI_FAILURE;
	}	
#if 1
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, MTD_BASEPARAM_NAME, 0, 0);
	if (INVALID_FD == fd)
	{  
		HI_ERR_MCE("HI_Flash_Open baseparam partion err \n");
		bReadBaseParamFailed = HI_TRUE; 
	}
	else
	{
		ret = HI_Flash_Read(fd, PART_BASE_PARA_OFFSET, (HI_U8 *)(&tmpbase), sizeof(HI_PDM_BASE_INFO_S), HI_FLASH_RW_FLAG_RAW);
		if (sizeof(HI_PDM_BASE_INFO_S) != ret)
		{
			HI_ERR_MCE("MCE_Flash_PRead baseInfo err!\n");
			bReadBaseParamFailed = HI_TRUE; 
		}
		HI_Flash_Close(fd);
	}

	
	if(bReadBaseParamFailed == HI_TRUE)
	{
		HI_ERR_MCE("read logobaseparam failed.use default param \n");
		init_base_part(&tmpbase);
	}
	else
	{
		if(tmpbase.hdFmt > HI_UNF_ENC_FMT_BUTT)
	    {
    		HI_ERR_MCE("baseInfo hdFmt err!Please update baseinfo\n");
    		return HI_ERR_MCE_MTD_READ;		
		}
	}
	//get_rectSize(tmpbase.hdFmt,&g_sCanvasWidth,&g_sCanvasHeight);
	g_sCanvasWidth = tmpbase.inrectwidth;
	g_sCanvasHeight = tmpbase.inrectheight;
#else
	get_rectSize(baseInfo.hdFmt,&g_sCanvasWidth,&g_sCanvasHeight);
#endif
#if 0
	if(g_sCanvasHeight == 1080 && g_sCanvasWidth == 1920)
	{
		g_sCanvasWidth = 1280;
		g_sCanvasHeight = 720;
	}
#endif
	if(pComInfo->PlayMode >= HI_UNF_PIC_PLAYMODE_BUTT)
	{
		HI_ERR_MCE("common info playmode is invalid playmode %d  \n", 
		pComInfo->PlayMode);	
		return HI_FAILURE;		
	}
	
	if(pComInfo->uCount == 0)
	{
		HI_ERR_MCE("common info uConut is invalid uCount %d\n", 
		pComInfo->uCount );	
		return HI_FAILURE;		
	}
	
	if(pComInfo->u32Width <= 0 || pComInfo->u32Height <= 0 )
	{	
		HI_ERR_MCE("common info width %d height %d \n", 		
		pComInfo->u32Width,pComInfo->u32Height);			
		return HI_FAILURE;	
	}
		
	if(pComInfo->u32Xpos > g_sCanvasWidth || pComInfo->u32Ypos > g_sCanvasHeight)
	{
		HI_ERR_MCE("common info Xpos / Ypos is invalid (x,y) =(%d %d) canvas w %d h %d\n", 
		pComInfo->u32Xpos,pComInfo->u32Ypos,g_sCanvasWidth,g_sCanvasHeight);	
		return HI_FAILURE;	
	}
	
	if(pComInfo->u32Width > g_sCanvasWidth || pComInfo->u32Height > g_sCanvasHeight)
	{
		HI_ERR_MCE("common info w /h is invalid (w,h) =(%d %d) canvas w %d h %d \n", 
		pComInfo->u32Width,pComInfo->u32Height,g_sCanvasWidth,g_sCanvasHeight);	
		return HI_FAILURE;	
	}
	
	if((pComInfo->u32Xpos  + pComInfo->u32Width >g_sCanvasWidth) 
	||( pComInfo->u32Ypos + pComInfo->u32Height > g_sCanvasHeight))
	{
		HI_ERR_MCE("common info xpos + w  =%d , ypos + h = %d canvas w %d h %d \n", 
		pComInfo->u32Xpos  + pComInfo->u32Width,
		pComInfo->u32Ypos + pComInfo->u32Height ,g_sCanvasWidth,g_sCanvasHeight);	
		return HI_FAILURE;	
	}
	switch(pComInfo->PlayMode)
	{
	case HI_UNF_PIC_PLAYMODE_BYTIME:
		if(pComInfo->uPlaySecond <=0)
		{
			HI_ERR_MCE("common info uPlaySecond = %d \n", 
			pComInfo->uPlaySecond);		
			return HI_FAILURE;
		}
		break;
	case HI_UNF_PIC_PLAYMODE_LOOP:
		if(pComInfo->uLoopCount <= 0)
		{
			HI_ERR_MCE("common info uLoopCount = %d \n", 
			pComInfo->uLoopCount);		
			return HI_FAILURE;
		}
		break;
	default:
		break;
		
	}
	return HI_SUCCESS;
}

HI_S32 gphFile_param_CheckPicInfo(HI_UNF_PIC_PICTURE *pPicInfo, int num,HI_UNF_PIC_COMMINFO *pComInfo)
{
	HI_S32 i;	
	
	if(pPicInfo == NULL)
	{
		HI_ERR_MCE("picture data  info is null \n");	
		return HI_FAILURE;
	}
	
	if(num <= 0)
	{
		HI_ERR_MCE("picture data  info picnum = %d \n",num);	
		return HI_FAILURE;
	}
	for( i = 0; i < num; i++)
	{
		if(pPicInfo[i].u32FileAddr == 0xffffffff)
		{
			HI_ERR_MCE("picture fileaddr  is invalid.index = %d\n",i);	
			return HI_FAILURE;		
		}
		if(pPicInfo[i].u32FileLen <= 0)
		{
			HI_ERR_MCE("picture filelen is invalid.index = %d \n", i);	
			return HI_FAILURE;		
		}	
		
		if(pPicInfo[i].u32Width <= 0 || pPicInfo[i].u32Height <= 0 )		
		{			
			HI_ERR_MCE("pic info width[%d] %d height[%d] %d \n", 	
			i,pPicInfo[i].u32Width,i,pPicInfo[i].u32Height);				
			return HI_FAILURE;			
		}
		if(pPicInfo[i].u32Xpos > g_sCanvasWidth|| pPicInfo[i].u32Ypos >g_sCanvasHeight)
		{
			HI_ERR_MCE("picinfo Xpos / Ypos is invalid (x,y) =(%d %d) canvas w %d h %d\n", 
			pPicInfo[i].u32Xpos,pPicInfo[i].u32Ypos,g_sCanvasWidth,g_sCanvasHeight);	
			return HI_FAILURE;	
		}
		
		if(pPicInfo[i].u32Width > g_sCanvasWidth || pPicInfo[i].u32Height >g_sCanvasHeight)
		{
			HI_ERR_MCE("picinfo w /h is invalid (w,h) =(%d %d) canvas w %d h %d \n", 
			pPicInfo[i].u32Width,pPicInfo[i].u32Height,g_sCanvasWidth,g_sCanvasHeight);	
			return HI_FAILURE;	
		}
		
		if((pComInfo->u32Width < pPicInfo[i].u32Width) 
		||( pComInfo->u32Height <  pPicInfo[i].u32Height))
		{
			HI_ERR_MCE("cominfo w %d h %d  picinfo w %d h %d  \n", 
			pComInfo->u32Width,  pComInfo->u32Height ,
			pPicInfo[i].u32Width,pPicInfo[i].u32Height );	
			return HI_FAILURE;	
		}

		if((pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width > pComInfo->u32Width) 
		||( pPicInfo[i].u32Ypos + pPicInfo[i].u32Height > pComInfo->u32Height))
		{
			HI_ERR_MCE("picinfo xpos + w  =%d, cominfo w = %d, ypos + h = %d, cominfo h = %d \n",
			pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width, pComInfo->u32Width,
			pPicInfo[i].u32Ypos + pPicInfo[i].u32Height, pComInfo->u32Height);	
			return HI_FAILURE;	
		}
		
		if((pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width >g_sCanvasWidth) 
		||( pPicInfo[i].u32Ypos + pPicInfo[i].u32Height > g_sCanvasHeight))
		{
			HI_ERR_MCE("picinfo xpos + w  =%d , ypos + h = %d canvas w %d h %d \n", 
			pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width,
			pPicInfo[i].u32Ypos + pPicInfo[i].u32Height,g_sCanvasWidth, g_sCanvasHeight);	
			return HI_FAILURE;	
		}
		if(pComInfo->u32Xpos + pPicInfo[i].u32Xpos > g_sCanvasWidth)
		{
			HI_ERR_MCE("com inf Xpos %d picinfo Xpos %d  canvas width %d \n", 
			pComInfo->u32Xpos,pPicInfo[i].u32Xpos,g_sCanvasWidth);	
			return HI_FAILURE;	
		}
		if(pComInfo->u32Ypos + pPicInfo[i].u32Ypos > g_sCanvasHeight)
		{
			HI_ERR_MCE("com inf Ypos %d picinfo Ypos %d canvas height %d \n", 
			pComInfo->u32Ypos,pPicInfo[i].u32Ypos,g_sCanvasHeight);	
			return HI_FAILURE;	
		}
	}
	return HI_SUCCESS;
}
static int GphFile_Param_Check(HI_UNF_MCE_GPHFILE_PARAM_S *param)
{
	HI_S32 ret;
	HI_U32 uCount = 0;
	HI_U32 uSize = 0;
	
	if(param == NULL)
	{
		HI_ERR_MCE("gpfile param is null \n");
		return -1;		
	}
	ret = gphFile_param_CheckCommonInfo(&param->comInfo);
	if(ret != HI_SUCCESS)
	{
		HI_ERR_MCE("gpfile common param is invalid \n");
		return -1;		
	}
	ret = gphFile_param_CheckPicInfo(param->ppicInfo,param->comInfo.uCount,&param->comInfo);
	if(ret != HI_SUCCESS)
	{
		HI_ERR_MCE("gpfile pic param is invalid \n");
		return -1;		
	}
	uCount = param->comInfo.uCount;
	
	uSize = param->ppicInfo[uCount - 1].u32FileAddr - param->ppicInfo[0].u32FileAddr;
	uSize += param->ppicInfo[uCount - 1].u32FileLen;
	
	if( uSize > mtdInfo.playDataSize)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too large. 	mtdInfo.playDataSize 0x%x \n", uSize,mtdInfo.playDataSize);
		return -1;
	}
	return 0;
}

static int GphFile_ParamTransInfo(HI_UNF_MCE_GPHFILE_PARAM_S *param, MCE_GPHFILE_INFO_S *info)
{
	int ret;
	HI_U32 uCount = 0;
	// check
	ret = GphFile_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	// 
	uCount = param->comInfo.uCount;
	if(uCount <=0)
	{
		HI_ERR_MCE("pic count is zero \n");
		return -1;		
	}
	strncpy((char*)info->comInfo.chVersion, __FASTPLAY_VERISON__,8);
	memcpy(&info->comInfo,&param->comInfo,sizeof(HI_UNF_PIC_COMMINFO));
	memcpy(info->ppicInfo,param->ppicInfo,sizeof(HI_UNF_PIC_PICTURE) * uCount);
	return 0;
}

static int GphFile_InfoTransParam(MCE_GPHFILE_INFO_S *info, HI_UNF_MCE_GPHFILE_PARAM_S *param)
{
	int ret;
	HI_U32 uCount = 0;
	// 
	uCount = info->comInfo.uCount;
	if(uCount == 0)
	{
		HI_ERR_MCE("info invalid \n");
		return -1;
	}

	memcpy(&param->comInfo,&info->comInfo,sizeof(HI_UNF_PIC_COMMINFO));
	if(param->ppicInfo == (void *)NULL ||param->ppicInfo == (void *)0xFFFFFFFF)
	{
		HI_ERR_MCE("param ->ppicInfo invalid \n");
		return -1;		
	}
	else
	{
		memcpy(param->ppicInfo,info->ppicInfo,sizeof(HI_UNF_PIC_PICTURE) * uCount);
	}
	// check
	ret = GphFile_Param_Check(param);
	if(ret)
	{
		HI_ERR_MCE("param invalid \n");
		return -1;
	}
	return 0;
}


static int play_ParamTransInfo(HI_UNF_MCE_PLAY_PARAM_S *param, HI_MCE_PALY_INFO_S *info)
{
	int ret;
	if(param->playType == HI_UNF_MCE_TYPE_PLAY_DVB)
	{
		ret = DVB_ParamTransInfo(&(param->param.dvbParam), &(info->Info.dvbInfo));
		if(ret)
		{
			HI_ERR_MCE("DVB_ParamTransInfo err \n");
			return -1;
		}
		info->playType = MCE_PLAY_TYPE_DVB;
	}
	else if(param->playType == HI_UNF_MCE_TYPE_PLAY_TSFILE)
	{
		ret = TsFile_ParamTransInfo(&(param->param.tsFileParam), &(info->Info.tsFileInfo));
		if(ret)
		{
			HI_ERR_MCE("TsFile_ParamTransInfo err \n");
			return -1;
		}
		info->playType = MCE_PLAY_TYPE_TSFILE;
	}
	else if(param->playType == HI_UNF_MCE_TYPE_PLAY_GPHFILE)
	{
		ret = GphFile_ParamTransInfo(&(param->param.gphFileParam), &(info->Info.gphFileInfo));
		if(ret)
		{
			HI_ERR_MCE("GphFile_ParamTransInfo err \n");
			return -1;
		}
		info->playType = MCE_PLAY_TYPE_GPHFILE;
	}
	else
	{
		HI_ERR_MCE("param->playType(%d) invalid \n", param->playType);
		return -1;
	}
	info->checkflag = DEF_CHECK_FLAG;
	info->fastplayflag = param->fastplayflag;
	return 0;
}

static int play_InfoTransParam(HI_MCE_PALY_INFO_S *info, HI_UNF_MCE_PLAY_PARAM_S *param)
{
	int ret;
	if(info->checkflag != DEF_CHECK_FLAG)
	{
		HI_ERR_MCE("info->checkflag(0x%08x) err \n", info->checkflag);
		return -1;
	}
	param->fastplayflag = info->fastplayflag;
	if(info->playType == MCE_PLAY_TYPE_DVB)
	{
		ret = DVB_InfoTransParam(&(info->Info.dvbInfo), &(param->param.dvbParam));
		if(ret)
		{
			HI_ERR_MCE("DVB_InfoTransParam err \n");
		}
		param->playType = HI_UNF_MCE_TYPE_PLAY_DVB;
	}
	else if(info->playType == MCE_PLAY_TYPE_TSFILE)
	{
		ret = TsFile_InfoTransParam(&(info->Info.tsFileInfo), &(param->param.tsFileParam));
		if(ret)
		{
			HI_ERR_MCE("TsFile_InfoTransParam err \n");
		}
		param->playType = HI_UNF_MCE_TYPE_PLAY_TSFILE;
	}
	else if(info->playType == MCE_PLAY_TYPE_GPHFILE)
	{
		ret = GphFile_InfoTransParam(&(info->Info.gphFileInfo), &(param->param.gphFileParam));
		if(ret)
		{
			HI_ERR_MCE("GphFile_InfoTransParam err \n");
		}
		param->playType = HI_UNF_MCE_TYPE_PLAY_GPHFILE;
	}
	else
	{
		HI_ERR_MCE("info->playType(%d) invalid \n", info->playType);
	}
	return 0;
}

HI_S32 HI_UNF_MCE_ClearLogo(HI_VOID)
{
	int Ret;
	int MceFd = -1;
	MceFd = open("/dev/hi_mce", O_RDWR); 
	if (MceFd < 0) 
	{
		HI_ERR_MCE("open mce err \n");
		return HI_FAILURE;
	}
    
	Ret = ioctl(MceFd, HI_MCE_CLEAR_LOGO_CMD, NULL);
	if (Ret != HI_SUCCESS)	
	{
		close(MceFd);
		HI_ERR_MCE("ioctl HI_MCE_CLEAR_LOGO_CMD ret = %d \n", Ret);
		return HI_FAILURE;
	}

    close(MceFd);
    MceFd = -1;
    return HI_SUCCESS;
}


HI_S32 HI_UNF_MCE_Stop(HI_UNF_MCE_STOPPARM_S *pstStopParam)
{
	int Ret;
	int MceFd = -1;
	HI_BOOL  WinEnable = HI_FALSE;

    if (!pstStopParam)
    {
		HI_ERR_MCE("parameter pstStopParam is null \n");
		return HI_ERR_MCE_PTR_NULL;
    }
    
    if (pstStopParam->enStopMode >= HI_UNF_MCE_STOPMODE_BUTT)
    {
		HI_ERR_MCE("stop fastplay parameter enStopMode err \n");
		return HI_ERR_MCE_PARAM_INVALID;
    }

    if (0 != pstStopParam->u32PlayCount && 0 != pstStopParam->u32PlayTime)
    {
		HI_ERR_MCE("stop fastplay parameter u32PlayCount and  u32PlayTime just noly need one available \n");
		return HI_ERR_MCE_PARAM_INVALID; 
    }

    if (HI_UNF_MCE_STOPMODE_STILL == pstStopParam->enStopMode)
    {
        Ret = HI_MPI_VO_GetWindowEnable(pstStopParam->hNewWin, &WinEnable);
        if (Ret != HI_SUCCESS)  
        {
            HI_ERR_MCE("fastplay get WindowEnable failure \n");
            return Ret;
        }

        if (HI_TRUE != WinEnable)
        {
            HI_ERR_MCE("stop fastplay with still mode need set Window Enable \n");
            return HI_ERR_VO_WIN_NOT_ENABLE;
        }
    }
   
	MceFd = open("/dev/hi_mce", O_RDWR); 
	if (MceFd < 0) 
	{
		HI_ERR_MCE("open mce err \n");
		return HI_FAILURE;
	}
    
	Ret = ioctl(MceFd, HI_MCE_STOP_FASTPLAY_CMD, pstStopParam);
	if (Ret != HI_SUCCESS)	
	{
		close(MceFd);
		HI_ERR_MCE("ioctl HI_MCE_STOP_FASTPLAY_CMD ret = %d \n", Ret);
		return HI_FAILURE;
	}

    close(MceFd);
    MceFd = -1;
    return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_GetPlayCurStatus(HI_UNF_MCE_PLAYCURSTATUS_S *pPlayCurStatus)
{
	int Ret;
	int MceFd = -1;

	MceFd = open("/dev/hi_mce", O_RDWR); 
	if (MceFd < 0) 
	{
		HI_ERR_MCE("open mce err \n");
		return HI_FAILURE;
	}

	Ret = ioctl(MceFd, HI_MCE_GET_PLAY_CUR_STATUS_CMD, pPlayCurStatus);
	if (Ret != HI_SUCCESS)	
	{
		close(MceFd);
		HI_ERR_MCE("ioctl HI_MCE_STOP_FASTPLAY_CMD ret = %d \n", Ret);
		return HI_FAILURE;
	}

    close(MceFd);
    MceFd = -1;
    return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_E  PartType)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_Flash_InterInfo_S *pFlashInfo = NULL;
	HI_CHAR PartName[FLASH_NAME_LEN] = {0};
	// 0
	if(mtdReady)
	{
		HI_ERR_MCE("already open \n");
		return HI_ERR_MCE_OPEN_ALREADY;
	}

	// 1
	if(PartType == HI_UNF_PARTION_TYPE_PLAY)
	{
		memcpy(PartName, MTD_FASTPLAY_NAME, sizeof(MTD_FASTPLAY_NAME));
	}
	else if(PartType == HI_UNF_PARTION_TYPE_LOGO)
	{
		memcpy(PartName, MTD_LOGO_NAME, sizeof(MTD_LOGO_NAME));
	}
	else if(HI_UNF_PARTION_TYPE_BASE == PartType)
	{
		memcpy(PartName, MTD_BASEPARAM_NAME, sizeof(MTD_BASEPARAM_NAME));
	}
	else
	{
	    HI_ERR_MCE("invalid PARTION_TYPE \n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
	
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, PartName, 0, 0);
	if(fd == INVALID_FD)
	{
		HI_ERR_MCE("HI_Flash_Open  partion err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}

	pFlashInfo = (HI_Flash_InterInfo_S*)malloc(sizeof(HI_Flash_InterInfo_S));
	if(pFlashInfo == NULL)
	{
		HI_Flash_Close(fd);
		HI_ERR_MCE("malloc err fun:%s line:%d \n", __FUNCTION__, __LINE__);
		return HI_ERR_MCE_MEM_ALLC;
	}
	/*
	pFlashInfo->pPartInfo = (HI_Flash_PartInfo_S*)malloc(sizeof(HI_Flash_PartInfo_S));
	if(pFlashInfo->pPartInfo == NULL)
	{
		free(pFlashInfo);
		HI_Flash_Close(fd);
		HI_ERR_MCE("malloc err fun\n");
		return HI_ERR_MCE_MEM_ALLC;
	}
	*/
	ret = HI_Flash_GetInfo(fd, pFlashInfo);
	if(ret != HI_SUCCESS)
	{
	//	free(pFlashInfo->pPartInfo);
		free(pFlashInfo);
		HI_Flash_Close(fd);
		HI_ERR_MCE("HI_Flash_GetInfo err fun:%s line:%d \n", __FUNCTION__, __LINE__);
		return HI_ERR_MCE_MTD_INFO;
	}
//	HI_INFO_MCE("pPartInfo:%x \n", pFlashInfo->pPartInfo);
//	memcpy(pFlashInfo->pPartInfo->DevName, PartName, FLASH_NAME_LEN);
//	memcpy(pFlashInfo->pPartInfo->PartName, PartName, FLASH_NAME_LEN);
	mtdInfo.BlockSize = pFlashInfo->BlockSize;
	mtdInfo.TotalSize = pFlashInfo->TotalSize;
	memcpy(mtdInfo.DevName,  PartName,  FLASH_NAME_LEN);
	memcpy(mtdInfo.PartName, PartName, FLASH_NAME_LEN);

	free(pFlashInfo);
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	ret = init_app_part_offset_size_info((HI_U32)mtdInfo.TotalSize,PartType);
	if(ret)
	{
		HI_ERR_MCE("fastbootInfo  err!\n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
	switch(PartType)
	{
		case HI_UNF_PARTION_TYPE_BASE:
			if(mtdInfo.TotalSize < PART_BASE_PARA_SIZE)
			{
				HI_ERR_MCE("no enough for base param; pFlash->TotalSize(0x%x) \n", (unsigned int)mtdInfo.TotalSize);
				return HI_ERR_MCE_MTD_INFO;
			}
			mtdInfo.baseParaSize = PART_BASE_PARA_SIZE;
			mtdReady = 0x1;	
		break;
		case HI_UNF_PARTION_TYPE_LOGO:
			if(mtdInfo.TotalSize < PART_LOGO_PARA_SIZE+ PART_LOGO_DATA_SIZE )
			{
				HI_ERR_MCE("logoparamsize(0x%x) +  logodatasize (0x%x)> flash logo part size (0x%x)!\n",
				PART_LOGO_PARA_SIZE, PART_LOGO_DATA_SIZE, (unsigned int)mtdInfo.TotalSize);
				return HI_ERR_MCE_PARAM_INVALID;
			}
			mtdInfo.logoParaSize = PART_LOGO_PARA_SIZE;
			mtdInfo.logoDataSize = PART_LOGO_DATA_SIZE;
			mtdReady = 0x2;	
		break;
		case HI_UNF_PARTION_TYPE_PLAY:
			if(mtdInfo.TotalSize < PART_PLAY_PARA_SIZE+ PART_PLAY_DATA_SIZE )
			{
				HI_ERR_MCE("playparamsize(0x%x) +  playdatasize(0x%x) > flash play part size(0x%x)!\n",
				PART_PLAY_PARA_SIZE, PART_PLAY_DATA_SIZE,(unsigned int)mtdInfo.TotalSize);
				return HI_ERR_MCE_PARAM_INVALID;
			}
			mtdInfo.playParaSize = PART_PLAY_PARA_SIZE;
		    mtdInfo.playDataSize = PART_PLAY_DATA_SIZE;
			mtdReady = 0x4;	
		break;
		
		default:
		    HI_ERR_MCE("PartType INVALID!");
			return -1;
		
	}
	//set base logo fastplay 0
	memset(&logoInfo, 0, sizeof(HI_PDM_LOGO_INFO_S));
	memset(&playInfo, 0, sizeof(HI_MCE_PALY_INFO_S));
	memset(&baseInfo, 0, sizeof(HI_PDM_BASE_INFO_S));
	HI_INFO_MCE("HI_UNF_MCE_Init ok \n");
	return HI_SUCCESS;
}

HI_VOID HI_UNF_MCE_deInit(HI_VOID)
{
	if(mtdReady)
	{
		memset(&logoInfo, 0, sizeof(HI_PDM_LOGO_INFO_S));
		memset(&playInfo, 0, sizeof(HI_MCE_PALY_INFO_S));
		memset(&baseInfo, 0, sizeof(HI_PDM_BASE_INFO_S));
		memset(&mtdInfo, 0, sizeof(MCE_MTD_INFO_S));
		if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
		{
			if((playInfo.Info.gphFileInfo.ppicInfo != (void *)NULL) && (playInfo.Info.gphFileInfo.ppicInfo != (void *)0xFFFFFFFF))
			{
				free(playInfo.Info.gphFileInfo.ppicInfo);
				playInfo.Info.gphFileInfo.ppicInfo = NULL;
			}
		}
		mtdReady = 0;
	}
	return; 
}


HI_S32 HI_UNF_MCE_GetBaseParam(HI_UNF_MCE_BASE_PARAM_S *baseParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;

	if(baseParam == NULL)
	{
		HI_ERR_MCE("baseParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x1) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use BASE Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_BASE_PARA_OFFSET, (HI_U8*)(&baseInfo), sizeof(HI_PDM_BASE_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_PDM_BASE_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead baseInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = base_InfoTransParam(&baseInfo, baseParam);
	if(ret)
	{
		HI_ERR_MCE("base_InfoTransParam err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_BASE_INFO;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}


HI_S32 HI_UNF_MCE_UpdateBaseParam(HI_UNF_MCE_BASE_PARAM_S *baseParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_PDM_BASE_INFO_S InfoParam = {0};
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 erasesize = 0;
	// 0
	if(baseParam == NULL)
	{
		HI_ERR_MCE("baseParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x1) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Base Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	// 1
	ret = base_ParamTransInfo(baseParam, &InfoParam);
	if(ret)
	{
		HI_ERR_MCE("base_ParamTransInfo err!\n");
		return HI_ERR_MCE_BASE_INFO;
	}

	
	ret = memcmp(&baseInfo, &InfoParam, sizeof(HI_PDM_BASE_INFO_S));
	if(ret == 0)
	{
		HI_ERR_MCE("no changed !\n");
		return HI_SUCCESS;
	}
	// 2
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	/*erase first write second*/
	HI_Flash_GetInfo(fd, &FlashInfo);
	erasesize = FlashInfo.PartSize;
	ret = HI_Flash_Erase(fd, 0,  erasesize);
	if(ret < 0)
	{
		HI_ERR_MCE("MCE_Flash_Erase baseInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
	
	ret = HI_Flash_Write(fd, PART_BASE_PARA_OFFSET, (HI_U8*)(&InfoParam), sizeof(HI_PDM_BASE_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_PDM_BASE_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PWrite baseInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
	
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	memcpy(&baseInfo, &InfoParam, sizeof(HI_PDM_BASE_INFO_S));
	return HI_SUCCESS;
}


HI_S32 HI_UNF_MCE_GetLogoParam(HI_UNF_MCE_LOGO_PARAM_S *logoParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;

	if(logoParam == NULL)
	{
		HI_ERR_MCE("logoParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x02) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_LOGO_PARA_OFFSET, (HI_U8*)(&logoInfo), sizeof(HI_PDM_LOGO_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_PDM_LOGO_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead logoInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = logo_InfoTransParam(&logoInfo, logoParam);
	if(ret)
	{
		HI_ERR_MCE("logo_InfoTransParam err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_LOGO_INFO;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_GetLogoContent(HI_U8 *content, HI_U32 size)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;

	if(content == NULL)
	{
		HI_ERR_MCE("content null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x2) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	if(size == 0)
	{
		HI_ERR_MCE("size == 0\n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
	if(size > mtdInfo.logoDataSize)
	{
		HI_ERR_MCE("size(0x%08x) > mtdInfo.logoDataSize(0x%08x)\n", size, mtdInfo.logoDataSize);
		return HI_ERR_MCE_PARAM_INVALID;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_LOGO_DATA_OFFSET, content, size, HI_FLASH_RW_FLAG_RAW);
	if (size != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}


HI_S32 HI_UNF_MCE_UpdateLogoParam(HI_UNF_MCE_LOGO_PARAM_S *logoParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_PDM_LOGO_INFO_S InfoParam = {0};
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 erasesize = 0;
	HI_U8	*pBuf = HI_NULL;
	// 0
	if(logoParam == NULL)
	{
		HI_ERR_MCE("logoParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x2) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	// 1
	ret = logo_ParamTransInfo(logoParam, &InfoParam);
	if(ret)
	{
		HI_ERR_MCE("logo_ParamTransInfo err!\n");
		return HI_ERR_MCE_LOGO_INFO;
	}
	ret = memcmp(&logoInfo, &InfoParam, sizeof(HI_PDM_LOGO_INFO_S));
	if(ret == 0)
	{
		HI_ERR_MCE("no changed !\n");
		return HI_SUCCESS;
	}
	// 2
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	HI_Flash_GetInfo(fd, &FlashInfo);

	pBuf = malloc(FlashInfo.PartSize);
	if(HI_NULL  == pBuf)
	{
		HI_ERR_MCE("malloc failed!\n");
		HI_Flash_Close(fd);
		return HI_FAILURE;
	}
	memset(pBuf,0xFF,FlashInfo.PartSize);

	ret = HI_Flash_Read(fd, PART_LOGO_PARA_OFFSET, pBuf, FlashInfo.PartSize, HI_FLASH_RW_FLAG_RAW);
	if(ret < sizeof(HI_PDM_LOGO_INFO_S))
	{
		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	
	erasesize = FlashInfo.PartSize;
	ret = HI_Flash_Erase(fd, 0,  erasesize);//temp
	if(ret < 0)
	{
		HI_ERR_MCE("MCE_Flash_Erase logoinfo err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}

	memcpy(pBuf,(HI_U8*)(&InfoParam), sizeof(HI_PDM_LOGO_INFO_S));

	ret = HI_Flash_Write(fd, PART_LOGO_PARA_OFFSET, pBuf, FlashInfo.PartSize, HI_FLASH_RW_FLAG_RAW);
	if(ret < sizeof(HI_PDM_LOGO_INFO_S))
	{
		HI_ERR_MCE("HI_Flash_PWrite logoInfo err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		free(pBuf);
		return HI_ERR_MCE_MTD_CLOSE;
	}
	memcpy(&logoInfo, &InfoParam, sizeof(HI_PDM_LOGO_INFO_S));
	free(pBuf);
	return HI_SUCCESS;
}


HI_S32 HI_UNF_MCE_UpdateLogoContent(HI_U8 *content, HI_U32 size)
{
	HI_S32 ret;
	HI_U8 *pBuf = HI_NULL;
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 		erasesize = 0;
	HI_HANDLE 	fd = INVALID_FD;

	if(content == NULL)
	{
		HI_ERR_MCE("content null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x2) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	if(size == 0)
	{
		HI_ERR_MCE("size == 0\n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
	if(size > mtdInfo.logoDataSize)
	{
		HI_ERR_MCE("size(0x%08x) > mtdInfo.logoDataSize(0x%08x) \n", size, mtdInfo.logoDataSize);
		return HI_ERR_MCE_PARAM_INVALID;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}

	HI_Flash_GetInfo(fd, &FlashInfo);

	pBuf = malloc(FlashInfo.PartSize);
	if(HI_NULL  == pBuf)
	{
		HI_ERR_MCE("malloc failed!\n");
		HI_Flash_Close(fd);
		return HI_FAILURE;
	}

	memset(pBuf,0xFF,FlashInfo.PartSize);

	ret = HI_Flash_Read(fd, PART_LOGO_PARA_OFFSET, pBuf, FlashInfo.PartSize, HI_FLASH_RW_FLAG_RAW);
	if(ret < sizeof(HI_PDM_LOGO_INFO_S)+size)
	{
		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}

	erasesize = FlashInfo.PartSize;
	ret = HI_Flash_Erase(fd, 0,  erasesize);//temp
	if(ret < 0)
	{
		HI_ERR_MCE("MCE_Flash_Erase logo err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ; 
	}
	memcpy((HI_U8*)(pBuf + PART_LOGO_DATA_OFFSET),content, size);	

	ret = HI_Flash_Write(fd, PART_LOGO_PARA_OFFSET, pBuf, FlashInfo.PartSize, HI_FLASH_RW_FLAG_RAW);
	if(ret < sizeof(HI_PDM_LOGO_INFO_S)+size)
	{
		HI_ERR_MCE("HI_Flash_PWrite logoInfo err!\n");
		free(pBuf);
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
	
	free(pBuf);
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}



HI_S32 HI_UNF_MCE_GetPlayParam(HI_UNF_MCE_PLAY_PARAM_S *playParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_U32 uCount = 0;
    HI_U8* pbuf;
    
	if(playParam == NULL)
	{
		HI_ERR_MCE("playParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x4) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}

	if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	{
		free(playInfo.Info.gphFileInfo.ppicInfo);		
	}
	
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}

	ret = HI_Flash_Read(fd, PART_PLAY_PARA_OFFSET, (HI_U8*)(&playInfo), sizeof(HI_MCE_PALY_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_MCE_PALY_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead playInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	HI_INFO_MCE("playInfo.checkflag:0x%x\n",playInfo.checkflag);
	if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	{
        //Because "uCount" is received from flash and unvalidated, the para is limited to be MAX_GPHFILE_SUPPORT_NUM. 
        if (playInfo.Info.gphFileInfo.comInfo.uCount > MAX_GPHFILE_SUPPORT_NUM)
        {
            HI_ERR_MCE("Graphic-play number %d is beyond our expectation. Its limit is set to be %d.\n", 
                            playInfo.Info.gphFileInfo.comInfo.uCount, MAX_GPHFILE_SUPPORT_NUM);
            //playInfo.Info.gphFileInfo.comInfo.uCount = MAX_GPHFILE_SUPPORT_NUM;
            HI_Flash_Close(fd);
		    return HI_ERR_MCE_PARAM_INVALID;
        }
    
		uCount = playInfo.Info.gphFileInfo.comInfo.uCount;

		playInfo.Info.gphFileInfo.ppicInfo = malloc(uCount * sizeof(HI_UNF_PIC_PICTURE));
		if(playInfo.Info.gphFileInfo.ppicInfo== NULL)
		{
			HI_ERR_MCE("malloc tmp mempry for ppinfo failed \n");	
			HI_Flash_Close(fd);
			return HI_ERR_MCE_MEM_ALLC;			
		}
		HI_INFO_MCE("playInfo.checkflag:0x%x\n",playInfo.checkflag);
        pbuf = (HI_U8*)malloc(0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE));
        if(HI_NULL == pbuf)
        {
            HI_ERR_MCE("malloc failed \n");
			HI_Flash_Close(fd);
			return HI_ERR_MCE_MEM_ALLC;		
        }

        ret = HI_Flash_Read(fd, PART_PLAY_PARA_OFFSET,pbuf, 0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE), HI_FLASH_RW_FLAG_RAW);
		if (0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE) != ret)
		{
			HI_ERR_MCE("MCE_Flash_PWrite logoInfo err!\n");
            free(pbuf);
		    pbuf = HI_NULL;
			HI_Flash_Close(fd);
			return HI_ERR_MCE_MTD_WRITE;
		}
		memcpy(playInfo.Info.gphFileInfo.ppicInfo,pbuf + 0x800, uCount * sizeof(HI_UNF_PIC_PICTURE) );
#if 0
		for(uIndex = 0; uIndex < uCount; uIndex++)
	    {
	        HI_INFO_MCE("\n num:%d\n",uIndex);
	        HI_INFO_MCE(" 	u32FileAddr[%d]  : 0x%x\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileAddr);
    		HI_INFO_MCE(" 	u32FileLen[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileLen);
    		HI_INFO_MCE(" 	u32Xpos[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Xpos);
    		HI_INFO_MCE(" 	u32Ypos[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Ypos);
    		HI_INFO_MCE(" 	u32Width[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Width);
    		HI_INFO_MCE(" 	u32Height[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Height);
    		HI_INFO_MCE(" 	u32DelayTime[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32DelayTime);
    		HI_INFO_MCE("\n ");
   	    }
#endif
   	    //must free buf
   	    free(pbuf);

	}
	HI_INFO_MCE("playInfo.checkflag:0x%x\n",playInfo.checkflag);
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
	    HI_ERR_MCE("MCE_Flash_Close err!\n");
	    return HI_ERR_MCE_MTD_CLOSE;
	}

	ret = play_InfoTransParam(&playInfo, playParam);
	if(ret)
	{
		HI_ERR_MCE("play_InfoTransParam err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_LOGO_INFO;
	}
	return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_GetPlayContent(HI_U8 *content, HI_U32 size)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_U32 tempsize = 0;

	if(content == NULL)
	{
		HI_ERR_MCE("content null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x4) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	if(size == 0)
	{
		HI_ERR_MCE("size == 0\n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
    //get size
	if(size > mtdInfo.playDataSize)
	{
		tempsize = mtdInfo.playDataSize;
	}
	else
	{
		tempsize = size;
	}
    HI_INFO_MCE("tempsize:%d\n",tempsize);
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, MTD_FASTPLAY_NAME, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_PLAY_DATA_OFFSET, content, tempsize, HI_FLASH_RW_FLAG_RAW);
	if (tempsize != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_UpdatePlayParam(HI_UNF_MCE_PLAY_PARAM_S *playParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_MCE_PALY_INFO_S InfoParam;
	HI_U32 uCount = 0;
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 erasesize = 0;
	HI_U8* pbuf;	
	HI_U32 uIndex;
	// 0
	if(playParam == NULL)
	{
		HI_ERR_MCE("playParam null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x4) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	// 1
	if(playParam->playType == HI_UNF_MCE_TYPE_PLAY_GPHFILE)
	{
		uCount = playParam->param.gphFileParam.comInfo.uCount;
		if(uCount<=0)
		{
			HI_ERR_MCE("pic num is zero \n");			
			return HI_ERR_MCE_PTR_NULL;
		}
		InfoParam.Info.gphFileInfo.ppicInfo = malloc(uCount * sizeof(HI_UNF_PIC_PICTURE));
		if(InfoParam.Info.gphFileInfo.ppicInfo== NULL)
		{
			HI_ERR_MCE("malloc tmp mempry for ppinfo failed \n");			
			return HI_ERR_MCE_MEM_ALLC;			
		}
	}
	ret = play_ParamTransInfo(playParam, &InfoParam);
	if(ret)
	{
		HI_ERR_MCE("play_ParamTransInfo err!\n");
		return HI_ERR_MCE_LOGO_INFO;
	}
	
	 if(HI_UNF_MCE_TYPE_PLAY_DVB == playParam->playType)
	{
		InfoParam.Info.dvbInfo.tunerAddr = playInfo.Info.dvbInfo.tunerAddr;
		InfoParam.Info.dvbInfo.demoAddr = playInfo.Info.dvbInfo.demoAddr;
	}

	if(InfoParam.playType != MCE_PLAY_TYPE_GPHFILE)
	{
		ret = memcmp(&playInfo, &InfoParam, sizeof(HI_MCE_PALY_INFO_S));
		if(ret == 0)
		{
			HI_ERR_MCE("no changed !\n");
			return HI_SUCCESS;
		}
	}
	
	// 2
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	
	HI_Flash_GetInfo(fd, &FlashInfo);
    erasesize = FlashInfo.PartSize;
    //must erase first write second
    ret = HI_Flash_Erase(fd, 0,  erasesize);
	if(ret < 0)
	{
		HI_ERR_MCE("MCE_Flash_Erase playinfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
    HI_INFO_MCE("erasesize:0x%x\n",erasesize);
    HI_INFO_MCE("sizeof(HI_MCE_PALY_INFO_S)+ uCount * sizeof(HI_UNF_PIC_PICTURE):0x%x\n",sizeof(HI_MCE_PALY_INFO_S)+ uCount * sizeof(HI_UNF_PIC_PICTURE));
	if(playParam->playType == HI_UNF_MCE_TYPE_PLAY_GPHFILE)
	{
	    HI_INFO_MCE("uCount: %d\n",uCount);
	    pbuf = (HI_U8*)malloc(0x800 + uCount * sizeof(HI_UNF_PIC_PICTURE));
        if (NULL == pbuf)
        {
            HI_ERR_MCE("malloc mem err!\n");
			HI_Flash_Close(fd);
		    return  HI_ERR_MCE_MEM_ALLC;
        }

	    memcpy(pbuf, &InfoParam, sizeof(HI_MCE_PALY_INFO_S));
	    for(uIndex = 0; uIndex < uCount; uIndex++)
	    {
	        HI_INFO_MCE("\n num:%d\n",uIndex);
	        HI_INFO_MCE(" 	u32FileAddr[%d]  : 0x%x\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32FileAddr);
    		HI_INFO_MCE(" 	u32FileLen[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32FileLen);
    		HI_INFO_MCE(" 	u32Xpos[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32Xpos);
    		HI_INFO_MCE(" 	u32Ypos[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32Ypos);
    		HI_INFO_MCE(" 	u32Width[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32Width);
    		HI_INFO_MCE(" 	u32Height[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32Height);
    		HI_INFO_MCE(" 	u32DelayTime[%d]  : %d\n",uIndex,InfoParam.Info.gphFileInfo.ppicInfo[uIndex].u32DelayTime);
    		memcpy(pbuf+ 0x800 + sizeof(HI_UNF_PIC_PICTURE)*uIndex, &InfoParam.Info.gphFileInfo.ppicInfo[uIndex],sizeof(HI_UNF_PIC_PICTURE));
    		HI_INFO_MCE("\n ");
   	    }
 	    ret = HI_Flash_Write(fd, PART_PLAY_PARA_OFFSET, pbuf, 0x800 +uCount * sizeof(HI_UNF_PIC_PICTURE), HI_FLASH_RW_FLAG_RAW);
		if (0x800 +uCount * sizeof(HI_UNF_PIC_PICTURE) != ret)
		{
			HI_ERR_MCE("MCE_Flash_PWrite logoInfo err!\n");
			HI_Flash_Close(fd);
			free(pbuf);
			return HI_ERR_MCE_MTD_WRITE;
		}
		free(pbuf);
	}
	else
	{
    	ret = HI_Flash_Write(fd, PART_PLAY_PARA_OFFSET, (HI_U8*)(&InfoParam), sizeof(HI_MCE_PALY_INFO_S), HI_FLASH_RW_FLAG_RAW);
    	if (sizeof(HI_MCE_PALY_INFO_S) != ret)
    	{
    		HI_ERR_MCE("MCE_Flash_PWrite logoInfo err!\n");
    		HI_Flash_Close(fd);
    		return HI_ERR_MCE_MTD_WRITE;
    	}
    }
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
       HI_ERR_MCE("MCE_Flash_Close err!\n");
       return HI_ERR_MCE_MTD_CLOSE;
	}
	if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	{
		if((playInfo.Info.gphFileInfo.ppicInfo !=  (void *)NULL) && (playInfo.Info.gphFileInfo.ppicInfo != (void *)0xFFFFFFFF))
		{
			free(playInfo.Info.gphFileInfo.ppicInfo);
			playInfo.Info.gphFileInfo.ppicInfo = NULL;
		}
	}
	memcpy(&playInfo, &InfoParam, sizeof(HI_MCE_PALY_INFO_S));
	if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	{
		playInfo.Info.gphFileInfo.ppicInfo = InfoParam.Info.gphFileInfo.ppicInfo;
		HI_INFO_MCE("playInfo.checkflag:0x%x\n",playInfo.checkflag);
	}
	return HI_SUCCESS;
}

HI_S32 HI_UNF_MCE_UpdatePlayContent(HI_U8 *content, HI_U32 size)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;

	if(content == NULL)
	{
		HI_ERR_MCE("content null \n");
		return HI_ERR_MCE_PTR_NULL;
	}
	if( (mtdReady & 0x4) == 0)
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	if(size == 0)
	{
		HI_ERR_MCE("size == 0\n");
		return HI_ERR_MCE_PARAM_INVALID;
	}
	if(size > mtdInfo.playDataSize)
	{
		HI_ERR_MCE("size(0x%08x) > mtdInfo.playDataSize(0x%08x) \n", size, mtdInfo.playDataSize);
		return HI_ERR_MCE_PARAM_INVALID;
	}
	if( size > MAX_DATA_SIZE)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too large \n", size);
		return HI_ERR_MCE_PARAM_INVALID;
	}
	/*
	
	if( size < MIX_DATA_SIZE)
	{
		HI_ERR_MCE("param->contentLen(0x%08x) too small \n", size);
		return HI_ERR_MCE_PARAM_INVALID;
	}
	
	*/
	
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	HI_INFO_MCE("PART_PLAY_DATA_OFFSET:0x%x\n",PART_PLAY_DATA_OFFSET);

	ret = HI_Flash_Write(fd, PART_PLAY_DATA_OFFSET, content, size, HI_FLASH_RW_FLAG_RAW);
	if (size != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_WRITE;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
}

HI_S32  HI_UNF_MCE_SetLogoFlag(HI_BOOL bLogoOpen)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 erasesize = 0;
	HI_U8* pBuff = HI_NULL;
	if(mtdReady == 0)
	{
		HI_ERR_MCE("init first\n");		
		return HI_ERR_MCE_MTD_OPEN;
	}
	
	if( (mtdReady & 0x02) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	ret = HI_UNF_MCE_GetLogoParam(( HI_UNF_MCE_LOGO_PARAM_S *)(&logoInfo));
	if(ret != HI_SUCCESS)
	{
	    HI_ERR_MCE("Get logo Param error\n");
	    return HI_ERR_MCE_LOGO_INFO;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	
	ret = HI_Flash_Read(fd, PART_LOGO_PARA_OFFSET, (HI_U8*)(&logoInfo), sizeof(HI_PDM_LOGO_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_PDM_LOGO_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead logoInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}

	if(logoInfo.logoflag != bLogoOpen)
	{
        if (logoInfo.contentLen > mtdInfo.logoDataSize)
        {
            HI_ERR_MCE("logoInfo.contentLen(0x%08x) too large \n", logoInfo.contentLen);
		    HI_Flash_Close(fd);
            return HI_ERR_MCE_PARAM_INVALID;
        }
        
	    pBuff = (HI_U8*)malloc(logoInfo.contentLen);
	    ret = HI_Flash_Read(fd, PART_LOGO_DATA_OFFSET, pBuff, logoInfo.contentLen, HI_FLASH_RW_FLAG_RAW);
	    if (logoInfo.contentLen != ret)
    	{
    		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
    		free(pBuff);
    		HI_Flash_Close(fd);
    		return HI_ERR_MCE_MTD_READ;
    	}
		logoInfo.logoflag = bLogoOpen;
		HI_Flash_GetInfo(fd, &FlashInfo);
        erasesize = FlashInfo.PartSize; 
         //must erase first write second
        ret = HI_Flash_Erase(fd, 0,  erasesize);
		if(ret < 0)
		{
			HI_ERR_MCE("MCE_Flash_Erase logoinfo err!\n");
			free(pBuff);
			pBuff = HI_NULL;
 			HI_Flash_Close(fd);
			return HI_ERR_MCE_MTD_WRITE;
		}
		 
		ret = HI_Flash_Write(fd, PART_LOGO_PARA_OFFSET, (HI_U8*)(&logoInfo), sizeof(HI_PDM_LOGO_INFO_S), HI_FLASH_RW_FLAG_RAW);
		if (sizeof(HI_PDM_LOGO_INFO_S) != ret)
		{
			HI_ERR_MCE("HI_Flash_PWrite logoInfo err!\n");
			free(pBuff);
			pBuff = HI_NULL;
			HI_Flash_Close(fd);            
			return HI_ERR_MCE_MTD_WRITE;
		}
		ret = HI_Flash_Write(fd, PART_LOGO_DATA_OFFSET, pBuff, logoInfo.contentLen, HI_FLASH_RW_FLAG_RAW);
    	if (logoInfo.contentLen != ret)
    	{
    		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
            free(pBuff);
			pBuff = HI_NULL;
			HI_Flash_Close(fd);
    		return HI_ERR_MCE_MTD_WRITE;
    	}
    	//must free point
    	free(pBuff);
		pBuff = HI_NULL;
   	}
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}

	return HI_SUCCESS;
	
}
HI_S32  HI_UNF_MCE_SetFastplayFlag(HI_BOOL bPlayOpen)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	HI_Flash_InterInfo_S FlashInfo = {0};
	HI_U32 erasesize = 0;
	HI_U8* pBuf = HI_NULL;
    HI_U32 u32Size = 0;
    HI_U32 uIndex = 0;
    HI_U32 uCount = 0;
    HI_U8* pData = HI_NULL;
    
	if(mtdReady == 0)
	{
		HI_ERR_MCE("init first\n");		
		return HI_ERR_MCE_MTD_OPEN;
	}
	
	if( (mtdReady & 0x04) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	
	ret = HI_Flash_Read(fd, PART_PLAY_PARA_OFFSET, (HI_U8*)(&playInfo), sizeof(HI_MCE_PALY_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_MCE_PALY_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead logoInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}

	if(playInfo.fastplayflag != bPlayOpen)
	{
		playInfo.fastplayflag = bPlayOpen;
		//HI_INFO_MCE("++++++begin playInfo.fastplayflag %d  \n",playInfo.fastplayflag );
		if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	    {
            //Because "uCount" is received from flash and unvalidated, the para is limited to be MAX_GPHFILE_SUPPORT_NUM. 
            if (playInfo.Info.gphFileInfo.comInfo.uCount > MAX_GPHFILE_SUPPORT_NUM)
            {
                HI_ERR_MCE("Graphic-play number is beyond our expectation. It's set to be %d.\n", MAX_GPHFILE_SUPPORT_NUM);
                //playInfo.Info.gphFileInfo.comInfo.uCount = MAX_GPHFILE_SUPPORT_NUM;
                HI_Flash_Close(fd);
    		    return HI_ERR_MCE_PARAM_INVALID;
            }

    		uCount = playInfo.Info.gphFileInfo.comInfo.uCount;
    		HI_INFO_MCE("playInfo.checkflag:0x%x\n",playInfo.checkflag);
    		HI_INFO_MCE("uCount:%d\n",uCount);
    		pBuf = (HI_U8*)malloc(0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE));
            if(HI_NULL == pBuf)
            {
    			HI_ERR_MCE("MALLOC err!\n");
    			HI_Flash_Close(fd);
    			return HI_ERR_MCE_MEM_ALLC;                
            }
            
            ret = HI_Flash_Read(fd, PART_PLAY_PARA_OFFSET,pBuf, 0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE), HI_FLASH_RW_FLAG_RAW);
    		if (0x800+ uCount * sizeof(HI_UNF_PIC_PICTURE) != ret)
    		{
    			HI_ERR_MCE("MCE_Flash_pRead fastplay param err!\n");
                free(pBuf);
				pBuf = HI_NULL;
    			HI_Flash_Close(fd);
    			return HI_ERR_MCE_MTD_READ;
    		}
    		playInfo.Info.gphFileInfo.ppicInfo = (HI_PMD_PIC_PICTURE*)(pBuf + 0x800);
    		for(uIndex = 0; uIndex < uCount; uIndex++)
    	    {
    	        HI_INFO_MCE("\n num:%d\n",uIndex);
    	        HI_INFO_MCE(" 	u32FileAddr[%d]  : 0x%x\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileAddr);
        		HI_INFO_MCE(" 	u32FileLen[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileLen);
        		HI_INFO_MCE(" 	u32Xpos[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Xpos);
        		HI_INFO_MCE(" 	u32Ypos[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Ypos);
        		HI_INFO_MCE(" 	u32Width[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Width);
        		HI_INFO_MCE(" 	u32Height[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32Height);
        		HI_INFO_MCE(" 	u32DelayTime[%d]  : %d\n",uIndex,playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32DelayTime);
        		HI_INFO_MCE("\n ");

				if((0xFFFFFFFF - u32Size) < (playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileLen))
				{
					HI_ERR_MCE("param->contentLen(0x%08x) too large. mtdInfo.playDataSize 0x%x.\n", u32Size, mtdInfo.playDataSize);
	                HI_Flash_Close(fd);
	                free(pBuf);
					pBuf = HI_NULL;
	                return HI_ERR_MCE_PARAM_INVALID;
				}
                //alignment;
        		u32Size += (playInfo.Info.gphFileInfo.ppicInfo[uIndex].u32FileLen + FILE_ALIGN_SIZE -1) &(~(FILE_ALIGN_SIZE-1));
       	    }

            if(u32Size > mtdInfo.playDataSize)
            {
                HI_ERR_MCE("param->contentLen(0x%08x) too large. mtdInfo.playDataSize 0x%x.\n", u32Size, mtdInfo.playDataSize);
                HI_Flash_Close(fd);
                free(pBuf);
				pBuf = HI_NULL;
                return HI_ERR_MCE_PARAM_INVALID;
            }
            
    		memset(pBuf, 0, 0x800);
    		memcpy(pBuf,(HI_U8*)(&playInfo), sizeof(HI_MCE_PALY_INFO_S));
  		}
		else if(playInfo.playType == MCE_PLAY_TYPE_TSFILE)
		{
            if (playInfo.Info.tsFileInfo.contentLen > MAX_DATA_SIZE)
            {
                HI_ERR_MCE("playInfo.Info.tsFileInfo.contentLen(0x%08x) too large \n", playInfo.Info.tsFileInfo.contentLen);
                HI_Flash_Close(fd);
		        return HI_ERR_MCE_PARAM_INVALID;
            }
            else if (playInfo.Info.tsFileInfo.contentLen <= MIX_DATA_SIZE)
        	{
        		HI_ERR_MCE("playInfo.Info.tsFileInfo.contentLen(0x%08x) too small \n", playInfo.Info.tsFileInfo.contentLen);
                HI_Flash_Close(fd);
        		return HI_ERR_MCE_PARAM_INVALID;
        	}
            else
            {
                u32Size = playInfo.Info.tsFileInfo.contentLen;
            }
		}
		else
		{
		    u32Size = 0;
		}

		//get content
		if(playInfo.playType != MCE_PLAY_TYPE_DVB)
		{
    	    pData = (HI_U8*)malloc(u32Size);
            if(HI_NULL == pData)
            {
                HI_ERR_MCE("malloc error\n");
        		HI_Flash_Close(fd);

                if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
                {
                	free(pBuf);
					pBuf = HI_NULL;
                }
                
                return HI_ERR_MCE_MEM_ALLC;                
            }

    	    ret = HI_Flash_Read(fd, PART_PLAY_DATA_OFFSET, pData, u32Size, HI_FLASH_RW_FLAG_RAW);
        	if (u32Size != ret)
        	{
        		HI_ERR_MCE("MCE_Flash_PRead content err!\n");
                free(pData);
                
                if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
                {
                    free(pBuf);
					pBuf = HI_NULL;
                }
                                
                HI_Flash_Close(fd);
        		return HI_ERR_MCE_MTD_READ;
        	}
        }
	    
		HI_Flash_GetInfo(fd, &FlashInfo);
        erasesize = FlashInfo.PartSize;
         //must erase first write second
        ret = HI_Flash_Erase(fd, 0,  erasesize);
		if(ret < 0)
		{
			HI_ERR_MCE("MCE_Flash_Erase playinfo err!\n");
			free(pBuf);
    		free(pData);
 			HI_Flash_Close(fd);
			return HI_ERR_MCE_MTD_WRITE;
		}
  	
		if(playInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	    {
     	    ret = HI_Flash_Write(fd, PART_PLAY_PARA_OFFSET, pBuf, 0x800 +uCount * sizeof(HI_UNF_PIC_PICTURE), HI_FLASH_RW_FLAG_RAW);
    		if (0x800 +uCount * sizeof(HI_UNF_PIC_PICTURE) != ret)
    		{
    			HI_ERR_MCE("MCE_Flash_PWrite fastplay param err!\n");
    			HI_Flash_Close(fd);
    			free(pBuf);
    			free(pData);
    			return HI_ERR_MCE_MTD_WRITE;
    		}
    	}
	    else /* ts ,dvb */
	    {
	        ret = HI_Flash_Write(fd, PART_PLAY_PARA_OFFSET, (HI_U8*)(&playInfo), sizeof(HI_MCE_PALY_INFO_S), HI_FLASH_RW_FLAG_ERASE_FIRST);
		    if (sizeof(HI_MCE_PALY_INFO_S) != ret)
		    {
    			HI_ERR_MCE("HI_Flash_PWrite PlayInfo err!\n");
    			HI_Flash_Close(fd);
    			free(pBuf);
    			if(playInfo.playType != MCE_PLAY_TYPE_DVB)
    			{
    			    free(pData);
    			}
    			return HI_ERR_MCE_MTD_WRITE;
		    }
		   
	    }
	    //must free
		free(pBuf);
		pBuf = HI_NULL;
	   //write content
	   	if(playInfo.playType != MCE_PLAY_TYPE_DVB)
	   	{
    		ret = HI_Flash_Write(fd, PART_PLAY_DATA_OFFSET, pData, u32Size, HI_FLASH_RW_FLAG_RAW);
    	    if (u32Size != ret)
    	    {
    		    HI_ERR_MCE("MCE_Flash_PRead content err!\n");
    		    HI_Flash_Close(fd);
    		    free(pData);
    		    return HI_ERR_MCE_MTD_WRITE;
    	    }
    	    //must free
    	    free(pData);
    	}
	}
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	return HI_SUCCESS;
	
}

HI_S32  HI_UNF_MCE_GetLogoFlag(HI_BOOL *pbLogoOpen)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	if(mtdReady == 0)
	{
		HI_ERR_MCE("init first\n");		
		return HI_ERR_MCE_MTD_OPEN;
	}
	if( (mtdReady & 0x02) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use LOGO Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	
	if(pbLogoOpen == NULL)
	{
		return HI_ERR_MCE_PTR_NULL;
	}
		
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_LOGO_PARA_OFFSET, (HI_U8*)(&logoInfo), sizeof(HI_PDM_LOGO_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_PDM_LOGO_INFO_S) != ret)
	{
		HI_ERR_MCE("HI_Flash_Read logoInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	*pbLogoOpen = logoInfo.logoflag;
	HI_INFO_MCE("get logoInfo.logoflag:%d\n",logoInfo.logoflag);
	return HI_SUCCESS;
}


HI_S32  HI_UNF_MCE_GetFastplayFlag(HI_BOOL *pbPlayOpen)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
	
	if(mtdReady == 0)
	{
		HI_ERR_MCE("init first\n");		
		return HI_ERR_MCE_MTD_OPEN;
	}
	if( (mtdReady & 0x04) == 0 )
	{
		HI_ERR_MCE("HI_UNF_MCE_Init use Play Type first. \n");
		return HI_ERR_MCE_MTD_NOFIND;
	}
	
	if(pbPlayOpen == NULL)
	{
		return HI_ERR_MCE_PTR_NULL;
	}
		
	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, mtdInfo.DevName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_MCE("MCE_Flash_Open err \n");
		return HI_ERR_MCE_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, PART_PLAY_PARA_OFFSET, (HI_U8*)(&playInfo), sizeof(HI_MCE_PALY_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_MCE_PALY_INFO_S) != ret)
	{
		HI_ERR_MCE("MCE_Flash_PRead logoInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_MCE_MTD_READ;
	}
	ret = HI_Flash_Close(fd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_MCE("MCE_Flash_Close err!\n");
		return HI_ERR_MCE_MTD_CLOSE;
	}
	*pbPlayOpen = playInfo.fastplayflag;
	return HI_SUCCESS;
}

