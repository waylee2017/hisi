/******************************************************************************

  Copyright (C), 2012-2050, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : 
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2014/12/09
  Description   : 
  History       :
  1.Date        : 2014/12/09
    Author      : w00136565
    Modification: Created file
******************************************************************************/
#include <linux/delay.h>
#include <linux/semaphore.h>

#include "linux/kernel.h"

#include <hi_debug.h>
#include "hi_type.h"
#include "hi_drv_i2c.h"

#include "drv_tuner_ext.h"
#include "drv_demod.h"

#include "Si2151_L2_API.h"

#include "Si2151_L0_API.h"


//PLL lock check parameters
#define Si2151_PF_TO_CF_SHIFT_B 2250 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_G 2750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_DK 2750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_I  2750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_L  2750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_MN  1750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_L1 2750 /*KHZ*/
#define Si2151_PF_TO_CF_SHIFT_NTSC  1750 /*KHZ*/


#define FRONT_END_COUNT 1
 
#define SI2151_DEFAULT_PORT       0


//IF VIDEO FREQ
#define PAL_M_Si2151_IF_FREQUENCY  3650 
#define PAL_BG_Si2151_IF_FREQUENCY  4150 
#define PAL_I_Si2151_IF_FREQUENCY  4500 
#define PAL_DK_Si2151_IF_FREQUENCY  4100 //4100 - 2750 //5250 // 4100 + 2750
#define SECAM_L_PRIME_Si2151_IF_FREQUENCY  4000
#define SECAM_LL_Si2151_IF_FREQUENCY  4000 

#define QAM_6M_Si2151_IF_FREQUENCY  3650
#define QAM_8M_Si2151_IF_FREQUENCY  5000

#define DVBT_6M_Si2151_IF_FREQUENCY  4000
#define DVBT_7M_Si2151_IF_FREQUENCY  4500
#define DVBT_8M_Si2151_IF_FREQUENCY  5000
#define DTMB_8M_Si2151_IF_FREQUENCY  5000
#define ATSC_6M_Si2151_IF_FREQUENCY  4000
#define ISDBT_6M_Si2151_IF_FREQUENCY  4000

int  commandCount;

//int  fe;

L1_Si2151_Context          SI2151_FrontEnd_Table   [FRONT_END_COUNT];
L1_Si2151_Context         *SI2151_tuners[FRONT_END_COUNT];
L1_Si2151_Context         *SI2151_Context;
L1_Si2151_Context         *SI2151_front_end;

/* Also init a simple i2c context to allow i2c communication checking */
//L0_Context* i2c;
L0_Context  i2c_context;
CONNECTION_TYPE mode;

 HI_BOOL              bTunerSi2151Inited = HI_FALSE;


//static HI_U32               s_u32Tda18275Freq = 0;
//static HI_BOOL              bTunerSi2151SetRF = HI_FALSE;

HI_S32 si2151_init_tuner(HI_U32 u32TunerPort)
{
    int fe =0;

        /* config tuner port */
        si2151_I2C_SetPort(u32TunerPort);

	/* I2C pointer initialization (to allow i2c validation) */
	L0_Context* i2c;
	L0_Context  i2c_context;

	i2c = &i2c_context;
	//L0_Init(i2c);
	
    L0_Connect(i2c,CUSTOMER);
	//SI2151_front_end = &(SI2151_FrontEnd_Table[fe]);

	/* Software Init */
	for (fe=0; fe<FRONT_END_COUNT; fe++) 
	{
	  SI2151_front_end = &(SI2151_FrontEnd_Table[fe]);

	  Si2151_L1_API_Init(SI2151_front_end, g_stTunerOps[u32TunerPort].u32TunerAddress);
	  if (fe == 0)
	  {
		  SI2151_front_end->cmd->power_up.clock_mode =  Si2151_POWER_UP_CMD_CLOCK_MODE_XTAL;
		  SI2151_front_end->cmd->power_up.en_xout	  =  Si2151_POWER_UP_CMD_EN_XOUT_EN_XOUT;
		  SI2151_front_end->cmd->config_clocks.clock_mode = Si2151_CONFIG_CLOCKS_CMD_CLOCK_MODE_XTAL;
	  }
	  else
	  {
		  SI2151_front_end->cmd->power_up.clock_mode = Si2151_POWER_UP_CMD_CLOCK_MODE_EXTCLK;
		  SI2151_front_end->cmd->power_up.en_xout	  = Si2151_POWER_UP_CMD_EN_XOUT_DIS_XOUT;
		  SI2151_front_end->cmd->config_clocks.clock_mode = Si2151_CONFIG_CLOCKS_CMD_CLOCK_MODE_EXTCLK;
	  }

	  SI2151_front_end->i2c->trackRead = SI2151_front_end->i2c->trackWrite = 1;
	 // Si2151_configure_i2c_communication  (front_end);

	}
 	SI2151_front_end->i2c->connectionType = CUSTOMER;

	 if (Si2151_Init(SI2151_front_end) != NO_Si2151_ERROR )
	 {
	   HI_ERR_TUNER("ERROR initializing the Si2151's!\n");
	 }
     else
	 {
	    Si2151_Configure(SI2151_front_end);
	 }
	fe = 0;
	/* Front-end pointers initialization */
	SI2151_front_end = &(SI2151_FrontEnd_Table[fe]);
	bTunerSi2151Inited = HI_TRUE;

	return 0;
}

HI_S32 si2151_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E i2c_channel, HI_U32 puRF,HI_U32 puBW)
{
    HI_U32 u32Temp = 0;
    HI_S32 s32ret = 0;
    HI_U32 u32iffreq = 0;
    
    u32Temp = puRF * 1000;

	if (HI_UNF_DEMOD_DEV_TYPE_J83B == g_stTunerOps[u32TunerPort].enDemodDevType)
	{
		SI2151_front_end->prop->dtv_mode.modulation = Si2151_DTV_MODE_PROP_MODULATION_QAM_US;
		SI2151_front_end->prop->dtv_mode.bw = Si2151_DTV_MODE_PROP_BW_BW_6MHZ;
		u32iffreq = QAM_6M_Si2151_IF_FREQUENCY ;
	}
	else
	{
		SI2151_front_end->prop->dtv_mode.modulation = Si2151_DTV_MODE_PROP_MODULATION_DVBC;
		SI2151_front_end->prop->dtv_mode.bw = Si2151_DTV_MODE_PROP_BW_BW_8MHZ;
		u32iffreq = QAM_8M_Si2151_IF_FREQUENCY ;
	}

	if (Si2151_L1_SetProperty2(SI2151_front_end, Si2151_ATV_VIDEO_MODE_PROP) != 0)
	{
		HI_ERR_TUNER((" [Silabs]: ERROR_SETTING_PROPERTY Si2151_ATV_VIDEO_MODE_PROP\n"));
		
		return HI_FAILURE;
	}
	
	SI2151_front_end->prop->atv_lif_freq.offset = u32iffreq;
			
	if (Si2151_L1_SetProperty2(SI2151_front_end, Si2151_ATV_LIF_FREQ_PROP) != 0)
	{
		HI_ERR_TUNER((" [Silabs]: ERROR_SETTING_PROPERTY Si2151_ATV_LIF_FREQ_PROP\n"));
		return HI_FAILURE;
	}
		
        s32ret = Si2151_DTVTune (SI2151_front_end, u32Temp,SI2151_front_end->prop->dtv_mode.bw, SI2151_front_end->prop->dtv_mode.modulation, Si2151_DTV_MODE_PROP_INVERT_SPECTRUM_NORMAL);
        if(s32ret != NO_Si2151_ERROR)
	    {
	      HI_ERR_TUNER("ERROR Si2151_DTVTune!\n");
		  return s32ret;
	    }

    return HI_SUCCESS;
}

HI_S32 si2151_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{
   // HI_S32 s32ret = 0;
    int ret = 0;
	
	ret = Si2151_GetRF(SI2151_front_end);

	pu32SignalStrength[0]  = 0;
	pu32SignalStrength[2]  = 0;
	pu32SignalStrength[1]  = (HI_U32)SI2151_front_end->rsp->tuner_status.rssi;

	if(pu32SignalStrength[1] >= 150)
	{
	    pu32SignalStrength[1]  = pu32SignalStrength[1] - 149;
	}
	else
	{
	    pu32SignalStrength[1]  = pu32SignalStrength[1] + 106;
	}
    
    return HI_SUCCESS;
}

HI_S32 si2151_tuner_resume (HI_U32 u32TunerPort)
{   
    si2151_init_tuner(u32TunerPort);    
    return HI_SUCCESS;	
}

