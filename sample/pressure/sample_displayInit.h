/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_displayInit.h
Version		    : Initial Draft
Author		    : 
Created		    : 2014/02/08
Description	    : The user will use this api to realize some function
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2014/02/08		    y00181162  		    Created file      	
******************************************************************************/

#ifndef __SAMPLE_DISPLAYINIT_H__
#define __SAMPLE_DISPLAYINIT_H__

/*********************************add include here******************************/

#include "hi_unf_disp.h"
#include "hi_adp_mpi.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C" 
{
#endif
#endif /* __cplusplus */


     /***************************** Macro Definition ******************************/
	#ifndef CONFIG_SUPPORT_CA_RELEASE
		#define SAMPLE_TRACE  printf
	#else
		#define SAMPLE_TRACE(x...)  
	#endif
        #define HI_HD_FB_VRAM_SIZE 7368
    /*************************** Enum Definition ****************************/

    /*************************** Structure Definition ****************************/

    /********************** Global Variable declaration **************************/
 
    /******************************* API declaration *****************************/

	HI_S32 Display_Init()
	{
	    HI_SYS_Init();
        #ifdef CHIP_TYPE_hi3110ev500
		    HIADP_Disp_Init(HI_UNF_ENC_FMT_PAL);
        #else
	        HIADP_Disp_Init(HI_UNF_ENC_FMT_1080P_50);
        #endif
		
	    return 0;
	}

	HI_S32 Display_DeInit()
	{

	    HIADP_Disp_DeInit();
		
	    HI_SYS_DeInit();

	    return  0;
	}

    /****************************************************************************/



#ifdef __cplusplus
    
#if __cplusplus
   
}
#endif
#endif /* __cplusplus */

#endif /* __SAMPLE_DISPLAYINIT_H__*/
