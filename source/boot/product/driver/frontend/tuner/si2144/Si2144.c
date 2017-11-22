/***************************************************************************************
                  Silicon Laboratories Broadcast Si2147 Layer 3 API
   L3 sample application
   FILE: Si2147_L3_Test.c
   Supported IC : Si2147
   Compiled for ROM 33 firmware 2_1_build_9
   Revision: 0.1
   Tag:  ROM33_2_1_build_9_V0.1
   Date: March 21 2013
  (C) Copyright 2013, Silicon Laboratories, Inc. All rights reserved.
****************************************************************************************/
//#include <linux/file.h>
#include <linux/list.h>
//#include <linux/wait.h>
//#include <linux/param.h>
//#include <linux/kthread.h>
//#include <linux/sched.h>

//#include <linux/delay.h>
//#include <linux/semaphore.h>

//#include "linux/kernel.h"

//#include <hi_debug.h>
#include "hi_type.h"
//#include "drv_i2c_ext.h"
#include "hi_unf_frontend.h"
#include "hi_drv_tuner.h"
#include "drv_demod.h"

#include <common.h>

#include "Si2144_L2_API.h"
#include "Si2144_L1_API.h"



static HI_U32 s_u32Si2144TunerPort = 0 ;
static HI_U32 s_u32Si2144I2cChannel = 3;
static HI_U32 s_u32Si2144Init = 0;



/* define TUNER_ONLY if using a Si2144 tuner without demod                                                    */
/* (It should be defined at project/makefile level to use 100% identical code for tuner-only and tuner+demod)   */
 //#define TUNER_ONLY 



#define FRONT_END_COUNT 1

int  commandCount  = 0;
int  fe;

L1_Si2144_Context         FrontEnd_Table[FRONT_END_COUNT];
L1_Si2144_Context         *Si2144;
L1_Si2144_Context         *front_end;

/* Also init a simple i2c context to allow i2c communication checking */
//L0_Context* i2c;
L0_Context  i2c_context;
CONNECTION_TYPE mode;



/* define SILABS_DEMOD_EVB if used on a tuner_only application on a demod EVB (opens i2c_passthru in main)      */
/* (It should be defined at project/makefile level to use 100% identical code for tuner-only EVB and demod EVB) */
/* #define SILABS_DEMOD_EVB*/

/* define Si2147_COMMAND_LINE_APPLICATION if using this code in console mode                                                     */
/* (Si2147_COMMAND_LINE_APPLICATION should be defined at project/makefile level to use 100% identical code for console and TV )  */
/* #define Si2147_COMMAND_LINE_APPLICATION */

/* define FRONT_END_COUNT 1 for a single tuner application                                                                         */
/* (FRONT_END_COUNT should be defined at project/makefile level to use 100% identical code for single-frontend and multi-frontend) */


HI_S32 si2144_init_tuner (HI_U32 u32TunerPort)
{   
     
    /* I2C pointer initialization (to allow i2c validation) */
    //unsigned long RFMaster = u32PuRF * 1000;
	//int  commandCount  = 0;
	L1_Si2144_Context          FrontEnd_Table[FRONT_END_COUNT] = {0};
	//L1_Si2144_Context         *Si2144;
	L1_Si2144_Context         *front_end;
    //HI_S32 s32Ret = 0;
	HI_S32 fe = 0;;
	L0_Context* i2c;
	L0_Context  i2c_context;
	//CONNECTION_TYPE mode;
    i2c = &i2c_context;
	
     L0_Connect(i2c,CUSTOMER);
   
     s_u32Si2144I2cChannel = g_stTunerOps[u32TunerPort].enI2cChannel;
	 
    /* Software Init */ 
      front_end = &(FrontEnd_Table[fe]);       

      Si2144_L1_API_Init(front_end, g_stTunerOps[u32TunerPort].u32TunerAddress);
      front_end->i2c->connectionType = CUSTOMER;
	  
	  front_end->cmd->power_up.clock_mode =  Si2144_POWER_UP_CMD_CLOCK_MODE_XTAL;
	  front_end->cmd->power_up.en_xout	  =  Si2144_POWER_UP_CMD_EN_XOUT_EN_XOUT;
	  front_end->cmd->config_clocks.clock_mode = Si2144_CONFIG_CLOCKS_CMD_CLOCK_MODE_XTAL;
	  	  
      if (Si2144_Init(front_end) != 0 ) 
     {
        SiTRACE("ERROR initializing the Si2144 at 0x%x!\n",g_stTunerOps[u32TunerPort].u32TunerAddress );
		
        return -1;
      }
		
	 return HI_SUCCESS;
     
     // Si2144_DTVTune(front_end, RFMaster, Si2144_DTV_MODE_PROP_BW_BW_8MHZ, Si2144_DTV_MODE_PROP_MODULATION_DVBC, Si2144_DTV_MODE_PROP_INVERT_SPECTRUM_NORMAL);
	

}

HI_S32 si2144_set_tuner (HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E enI2cChannel, HI_U32 u32PuRF)
{   
     
       /* I2C pointer initialization (to allow i2c validation) */
    unsigned long RFMaster = u32PuRF * 1000;
	HI_S32 s32Ret = 0;

	//int  commandCount  = 0;
	L1_Si2144_Context          FrontEnd_Table[FRONT_END_COUNT] = {0};
	//L1_Si2144_Context         *Si2144;
	L1_Si2144_Context         *front_end;
      
	HI_S32 fe = 0;
	L0_Context* i2c;
	L0_Context  i2c_context;
	//CONNECTION_TYPE mode;
    i2c = &i2c_context;
	
	L0_Connect(i2c,CUSTOMER);

	/* Software Init */ 
	front_end = &(FrontEnd_Table[fe]);
	  Si2144_L1_API_Init(front_end, g_stTunerOps[u32TunerPort].u32TunerAddress);
	front_end->i2c->connectionType = CUSTOMER;
		 
	s32Ret = Si2144_L1_CONFIG_PINS (front_end,
				 Si2144_CONFIG_PINS_CMD_GPIO1_MODE_NO_CHANGE,
				 Si2144_CONFIG_PINS_CMD_GPIO1_READ_DO_NOT_READ,
				 Si2144_CONFIG_PINS_CMD_GPIO2_MODE_NO_CHANGE,
				 Si2144_CONFIG_PINS_CMD_GPIO2_READ_DO_NOT_READ,
				 Si2144_CONFIG_PINS_CMD_AGC1_MODE_DTV_AGC,
				 Si2144_CONFIG_PINS_CMD_AGC1_READ_DO_NOT_READ,
				 Si2144_CONFIG_PINS_CMD_AGC2_MODE_NO_CHANGE,
				 Si2144_CONFIG_PINS_CMD_AGC2_READ_DO_NOT_READ,
				 Si2144_CONFIG_PINS_CMD_XOUT_MODE_NO_CHANGE);
	if(s32Ret!= 0)
	{
	   SiTRACE("!!!Si2144_L1_CONFIG_PINS failed\n"); 
	}

	s32Ret = Si2144_DTVTune(front_end, RFMaster, Si2144_DTV_MODE_PROP_BW_BW_8MHZ, Si2144_DTV_MODE_PROP_MODULATION_DVBC, Si2144_DTV_MODE_PROP_INVERT_SPECTRUM_NORMAL);
	if(s32Ret!= 0)
	{
		SiTRACE("!!!Si2144_DTVTune failed\n"); 
	}
	
    return HI_SUCCESS;
}

HI_S32 si2144_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{

  int ret = 0;
   #if 1
    
	L1_Si2144_Context          FrontEnd_Table[FRONT_END_COUNT] = {0};
    L1_Si2144_Context         *front_end;
	HI_S32 fe = 0;
         	
	front_end = &(FrontEnd_Table[fe]);
	
	Si2144_L1_API_Init(front_end, g_stTunerOps[u32TunerPort].u32TunerAddress);
	front_end->i2c->connectionType = CUSTOMER;
	#endif
	
	ret = Si2144_GetRF(front_end);

  
	pu32SignalStrength[0] = 0;
	pu32SignalStrength[2] = 0;
	pu32SignalStrength[1] = (HI_U32)front_end->rsp->tuner_status.rssi;
	
	pu32SignalStrength[1] = pu32SignalStrength[1] - 147;

	return HI_SUCCESS;
}


HI_S32 si2144_tuner_resume (HI_U32 u32TunerPort)
{   
    s_u32Si2144TunerPort = u32TunerPort;
    si2144_init_tuner(s_u32Si2144TunerPort);    
    return;	
}



	

