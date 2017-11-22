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



HI_S32 mce_SetLogoFlag(HI_BOOL bLogoOPen)
{
	HI_S32 ret = 0;	
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_LOGO);
	if(ret != HI_SUCCESS)
	{
		sample_printf("init failed ret 0x%x\n",ret);
		return ret;
	}	
	ret = HI_UNF_MCE_SetLogoFlag(bLogoOPen);
	if(ret != HI_SUCCESS)
	{
		sample_printf("SetLogoFlag failed. ret 0x%x\n",ret);
		return ret;
	}
	HI_UNF_MCE_deInit();
	return HI_SUCCESS;
}
HI_S32 mce_SetFastplayFlag(HI_BOOL bPlayOPen)
{
	HI_S32 ret = 0;	
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_PLAY);
	if(ret != HI_SUCCESS)
	{
		sample_printf("init failed ret 0x%x\n",ret);
		return ret;
	}	
	ret = HI_UNF_MCE_SetFastplayFlag(bPlayOPen);
	if(ret != HI_SUCCESS)
	{
		sample_printf("SetFastplayFlag failed. ret 0x%x\n",ret);
		return ret;
	}
	HI_UNF_MCE_deInit();
	return HI_SUCCESS;
}
HI_S32 mce_GetLogoFlag(HI_BOOL *pbLogoOPen)
{
	HI_S32 ret = 0;	
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_LOGO);
	if(ret != HI_SUCCESS)
	{
		sample_printf("init failed ret 0x%x\n",ret);
		return ret;
	}	
			
	ret = HI_UNF_MCE_GetLogoFlag(pbLogoOPen);
	if(ret != HI_SUCCESS)
	{
		sample_printf("GetLogoFlag . ret 0x%x\n",ret);
		return ret;
	}	
	HI_UNF_MCE_deInit();
	return HI_SUCCESS;
}

HI_S32 mce_GetFastplayFlag(HI_BOOL *pbPlayOPen)
{
	HI_S32 ret = 0;	
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_PLAY);
	if(ret != HI_SUCCESS)
	{
		sample_printf("init failed ret 0x%x\n",ret);
		return ret;
	}	
			
	ret = HI_UNF_MCE_GetFastplayFlag(pbPlayOPen);
	if(ret != HI_SUCCESS)
	{
		sample_printf("ret 0x%x\n",ret);
		return ret;
	}	
	HI_UNF_MCE_deInit();
	return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_CHAR ch = 0;
	HI_U32 LogoFlag = 0;
	HI_U32 PlayFlag = 0;
	
	while(ch !='q'&&ch !='Q')
	{	
		printf(" 'a' -- set logo : open /close \n");
		printf(" 'b' -- get logo : open /close \n");
		printf(" 'c' -- set fastplay : open /close \n");
		printf(" 'd' -- get fastplay : open /close \n");
		printf(" 'q' -- exit \n");
		ch = getchar();
		switch(ch)
		{
		case 'a':
		case 'A':
			printf("Input logo state : 0 -- close, 1 -- open\n");
			getchar();
			scanf("%d",&LogoFlag);
			getchar();
			mce_SetLogoFlag(LogoFlag);
			mce_GetLogoFlag(&LogoFlag);
			printf("after set logo state is %d\n",LogoFlag);
			break;
		case 'b':
		case 'B':
			getchar();
			mce_GetLogoFlag(&LogoFlag);
			printf("LogoFlag is %d\n",LogoFlag);
			break;
		case 'c':
		case 'C':
			printf("Input fastplay state : 0 -- close, 1 -- open\n");
			getchar();
			scanf("%d",&PlayFlag);
			getchar();
			mce_SetFastplayFlag(PlayFlag);
			mce_GetFastplayFlag(&PlayFlag);
			printf("after set fastplay state is %d\n",PlayFlag);
			break;
		case 'd':
		case 'D':
			getchar();
			mce_GetFastplayFlag(&PlayFlag);
			printf("FastplayFlag is %d\n",PlayFlag);
			break;
		default:
			break;
		}
	}
	return 0;
}




