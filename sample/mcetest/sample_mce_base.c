/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mplayer.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : w58735
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <semaphore.h>
#include <time.h>

#include "hi_type.h"

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_unf_mce.h"
#include "hi_adp_boardcfg.h"
#include "hi_go.h"
#include "hi_adp.h"

#define __TV_DISP__                                 //if #define: open tv device or not,open VGA device

HI_UNF_MCE_BASE_PARAM_S baseWtParam;
HI_UNF_MCE_BASE_PARAM_S baseRdParam;
static HI_U32 g_width=0,g_height = 0;
static HI_U32 g_uFmt = 0;
static HI_U32 g_uPixelFormat  = HIGO_PF_8888;

HI_VOID  print_Format_Info()
{
	HI_CHAR ch;
	printf("please choose format\n");
//#undef __TV_DISP__
#ifdef __TV_DISP__
	printf("0: HI_UNF_ENC_FMT_1080P_60\n");
	printf("1: HI_UNF_ENC_FMT_1080P_50\n");
	printf("2: HI_UNF_ENC_FMT_1080i_60\n");
	printf("3: HI_UNF_ENC_FMT_1080i_50\n");
	printf("4: HI_UNF_ENC_FMT_720P_60\n");
	printf("5: HI_UNF_ENC_FMT_720P_50\n");
	printf("6: HI_UNF_ENC_FMT_576P_50\n");
	printf("7: HI_UNF_ENC_FMT_480P_60\n");
	printf("8: HI_UNF_ENC_FMT_PAL\n");
	printf("9: HI_UNF_ENC_FMT_NTSC\n");
#else
	printf("a: HI_UNF_ENC_FMT_861D_640X480_60\n");
	printf("b: HI_UNF_ENC_FMT_VESA_800X600_60\n");
	printf("c: HI_UNF_ENC_FMT_VESA_1024X768_60\n");
	printf("d: HI_UNF_ENC_FMT_VESA_1280X1024_60\n");
	printf("e: HI_UNF_ENC_FMT_VESA_1366X768_60\n");
	printf("f: HI_UNF_ENC_FMT_VESA_1440X900_60\n");
	printf("g: HI_UNF_ENC_FMT_VESA_1440X900_60_RB\n");
	printf("h: HI_UNF_ENC_FMT_VESA_1600X1200_60\n");
	printf("i: HI_UNF_ENC_FMT_VESA_1920X1200_60\n");
	printf("j: HI_UNF_ENC_FMT_VESA_2048X1152_60\n");
#endif
	while(1)
	{
	    ch = getchar();
    	switch(ch)
        {
#ifdef __TV_DISP__
            case '0':
                g_uFmt = HI_UNF_ENC_FMT_1080P_60;
                goto over;
            case '1':
                g_uFmt = HI_UNF_ENC_FMT_1080P_50;
                goto over;
            case '2':
                g_uFmt = HI_UNF_ENC_FMT_1080i_60;
                goto over;
            case '3':
                g_uFmt = HI_UNF_ENC_FMT_1080i_50;
                goto over;
            case '4':
                g_uFmt = HI_UNF_ENC_FMT_720P_60;
                goto over;
            case '5':
                g_uFmt = HI_UNF_ENC_FMT_720P_50;
                goto over;
            case '6':
                g_uFmt = HI_UNF_ENC_FMT_576P_50;
                goto over;
            case '7':
                g_uFmt = HI_UNF_ENC_FMT_480P_60;
                goto over;
            case '8':
                g_uFmt = HI_UNF_ENC_FMT_PAL;
                goto over;
            case '9':
                g_uFmt = HI_UNF_ENC_FMT_NTSC;
                goto over;
#else
            case 'a':
	            g_uFmt = HI_UNF_ENC_FMT_861D_640X480_60;
	            goto over;
	        case 'b':
	            g_uFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
                goto over;
            case 'c':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
                goto over;
            case 'd':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
                goto over;
            case 'e':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
                goto over;
            case 'f':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
                goto over;
            case 'g':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
                goto over;
            case 'h':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
                goto over;
            case 'i':
                g_uFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
                goto over;
            case 'j':
                g_uFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
                goto over;
#endif
            default:
            break;
        }
    }
over:
    printf("Set Fromat ok!\n");
    return ;
	
}
HI_VOID print_PixelFormat_Info()
{
	int i = 1;
	while(1)
	{
		i = 1;
		printf("choose pixelformat\n");
		printf("	%d --> HIGO_PF_8888\n",i++);
		printf("	%d --> HIGO_PF_1555\n",i++);   
		scanf("%d",&g_uPixelFormat);
		if(g_uPixelFormat >2)
		{
			printf("	pixel format err\n");
		}
		else
		{
			break;
		}
	}
}
HI_VOID print_Inrect_Info()
{
	printf("input inrect width\n");
	scanf("%d",&g_width);
	printf("input inrect uHeight\n");
	scanf("%d",&g_height);
}
HI_VOID print_Read_Info(HI_UNF_MCE_BASE_PARAM_S *param)
{
	printf("	Video Format  HD %d\n",param->hdFmt);
	printf("	Video Format  SD %d\n",param->sdFmt);
	printf("	Pixel Format     %d\n",param->layerformat);
	printf("	Inrect Width     %d\n",param->inrectwidth);
	printf("	Inrect Height    %d\n",param->inrectheight);	
	printf("	u32Top           %d\n",param->u32Top);
	printf("	u32Offset        %d\n",param->u32Left);
	printf("	u32HuePlus       %d\n",param->u32HuePlus);
	printf("	u32Saturation    %d\n",param->u32Saturation);
	printf("	u32Contrast      %d\n",param->u32Contrast);
	printf("	u32Brightness    %d\n",param->u32Brightness);
	printf("	enBgcolor.u8Blue %d\n",param->enBgcolor.u8Blue);
	printf("	enBgcolor.u8Green%d\n",param->enBgcolor.u8Green);
	printf("	enBgcolor.u8Red  %d\n",param->enBgcolor.u8Red);
	printf("	enAspectRatio    %d\n",param->enAspectRatio);
	printf("	enAspectCvrs     %d\n",param->enAspectCvrs);
	printf("	enDispMacrsn     %d\n",param->enDispMacrsn);	
}
HI_VOID set_sdfmt_by_hdfmt(HI_UNF_MCE_BASE_PARAM_S *param)
{
	switch(param->hdFmt)
	{
	case HI_UNF_ENC_FMT_1080P_60:
	case HI_UNF_ENC_FMT_1080i_60:
	case HI_UNF_ENC_FMT_720P_60:
	case HI_UNF_ENC_FMT_480P_60:
	case HI_UNF_ENC_FMT_NTSC:
	case HI_UNF_ENC_FMT_861D_640X480_60:
    case HI_UNF_ENC_FMT_VESA_800X600_60:
    case HI_UNF_ENC_FMT_VESA_1024X768_60:
    case HI_UNF_ENC_FMT_VESA_1280X1024_60:
    case HI_UNF_ENC_FMT_VESA_1366X768_60:
    case HI_UNF_ENC_FMT_VESA_1440X900_60:
    case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
    case HI_UNF_ENC_FMT_VESA_1600X1200_60:
    case HI_UNF_ENC_FMT_VESA_1920X1200_60:
    case HI_UNF_ENC_FMT_VESA_2048X1152_60:
		param->sdFmt = HI_UNF_ENC_FMT_NTSC;
		break;
	case HI_UNF_ENC_FMT_1080P_50:
	case HI_UNF_ENC_FMT_1080i_50:
	case HI_UNF_ENC_FMT_720P_50:
	case HI_UNF_ENC_FMT_576P_50:
	case HI_UNF_ENC_FMT_1080P_30:
	case HI_UNF_ENC_FMT_1080P_25:
	case HI_UNF_ENC_FMT_1080P_24:
	case HI_UNF_ENC_FMT_PAL:
		param->sdFmt = HI_UNF_ENC_FMT_PAL;
		break;
	default:
#ifndef CHIP_TYPE_hi3110ev500		
		param->hdFmt = HI_UNF_ENC_FMT_1080i_50;
#else
		param->hdFmt = HI_UNF_ENC_FMT_PAL;
#endif
		param->sdFmt = HI_UNF_ENC_FMT_PAL;
		return ;
	}
}
HI_S32 set_base_param()
{
   // values of the following 5 lines could be changed

    print_Format_Info();
    baseWtParam.hdFmt = g_uFmt;
    set_sdfmt_by_hdfmt(&baseWtParam);    
    baseWtParam.layerformat = HIGO_PF_8888;
    baseWtParam.inrectwidth = 1280;
    baseWtParam.inrectheight = 720;
    baseWtParam.u32Top = 0;
    baseWtParam.u32Left = 0;
    baseWtParam.u32HuePlus = 50;
    baseWtParam.u32Saturation = 50;
    baseWtParam.u32Contrast = 50;
    baseWtParam.u32Brightness = 50;
    baseWtParam.enBgcolor.u8Blue = 0;
    baseWtParam.enBgcolor.u8Green = 0;
    baseWtParam.enBgcolor.u8Red = 0;
    baseWtParam.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    baseWtParam.enAspectCvrs = HI_UNF_ASPECT_CVRS_IGNORE;
    baseWtParam.enDispMacrsn = HI_UNF_DISP_MACROVISION_MODE_TYPE0;
     //Don't change the following values
 #ifdef __TV_DISP__
    baseWtParam.hdIntf = HI_UNF_DISP_INTF_TYPE_TV;
    baseWtParam.sdIntf = HI_UNF_DISP_INTF_TYPE_TV;
 #else 
    baseWtParam.hdIntf = HI_UNF_DISP_INTF_TYPE_LCD;
 #endif

    baseWtParam.DacMode.bScartEnable = HI_FALSE;
    baseWtParam.DacMode.bBt1120Enable = HI_FALSE;
    baseWtParam.DacMode.bBt656Enable = HI_FALSE;

	baseWtParam.DacMode.enDacMode[0] = HI_UNF_DISP_DAC_MODE_CVBS;
    baseWtParam.DacMode.enDacMode[1] = HI_UNF_DISP_DAC_MODE_HD_PR;
    baseWtParam.DacMode.enDacMode[2] = HI_UNF_DISP_DAC_MODE_HD_Y;
    baseWtParam.DacMode.enDacMode[3] = HI_UNF_DISP_DAC_MODE_HD_PB;
    return 0;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_S32 ret;
	HI_CHAR ch = 0;
 	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_BASE);
	if(ret)
	{
		sample_printf("HI_UNF_MCE_Init err! \n");
		return -1;
	}
	
	printf("please set baseparam!\n");
	printf(" 'w' -- write\n");
	printf(" 'r' --  read\n");
	printf(" 'c' -- compare\n");
	printf(" 'q' -- exit \n");
	while(1)
	{
		ch = getchar();
		switch(ch)
		{
		case 'w':
		case 'W':
		//	print_PixelFormat_Info();
		//  print_Inrect_Info();
		//	baseWtParam.layerformat  = (g_uPixelFormat == 1)? HIGO_PF_8888:HIGO_PF_1555;		
		//	baseWtParam.hdFmt = g_uFmt;
		    set_base_param();
			set_sdfmt_by_hdfmt(&baseWtParam);    
		//  baseWtParam.inrectwidth = g_width;
		//	baseWtParam.inrectheight = g_height;
	    
			ret = HI_UNF_MCE_UpdateBaseParam(&baseWtParam);
			if(ret != HI_SUCCESS)
			{
				sample_printf("UpdateBaseParam failed\n");
			}
			else
			{
				printf("UpdateBaseParam ok!\n");
			}
			break;
		case 'r':
		case 'R':
			ret = HI_UNF_MCE_GetBaseParam(&baseRdParam);
			if(ret)
			{
				sample_printf("HI_UNF_MCE_GetBaseParam err \n");
			}
			else
			{
				print_Read_Info(&baseRdParam);
			}
			break;
		case 'c':
		case 'C':
				ret = memcmp(&baseRdParam,&baseWtParam,sizeof(baseWtParam));
				if(ret == 0)
				{
					printf("compare ok\n");					
				}
				else
				{
					sample_printf("compare failed\n");
				}
			break;
		case 'q':
		    goto over;
		default:			
			break;
		}
		//getchar();
	}
over:	
	HI_UNF_MCE_deInit();
	return 0;
}




