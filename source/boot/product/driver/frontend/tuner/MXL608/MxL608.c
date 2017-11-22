//#include <linux/module.h>

#include "hi_type.h"
//#include "hi_unf_ecs.h"
#include "MxL608_TunerApi.h"
#include "MxL608_OEM_Drv.h"
#include "mxl608.h"
#include "hi_unf_frontend.h"
#include "hi_drv_tuner.h"
#include "drv_demod.h"
#ifndef HI_MINIBOOT_SUPPORT
#include <common.h>
#endif
#define EXAMPLE_DEV_MAX 2
#define MXL608_I2C_ADDR 0xC2

/* Example of OEM Data, customers should have
below data structure declared at their appropriate 
places as per their software design 

typedef struct
{
  UINT8   i2c_address;
  UINT8   i2c_bus;
  sem_type_t sem;
  UINT16  i2c_cnt;
} user_data_t;  

user_data_t device_context[EXAMPLE_DEV_MAX];

*/
HI_BOOL mxl608_initflag = HI_FALSE;
//user_data_t device_context[EXAMPLE_DEV_MAX];
//HI_U8 s_u8MXL608devId = 0;
HI_S32 mxl608_init_tuner(HI_U32 u32TunerPort)
{
	MXL_STATUS status; 
	UINT8 devId;
	MXL_BOOL singleSupply_3_3V;
	MXL608_XTAL_SET_CFG_T xtalCfg;
	MXL608_IF_OUT_CFG_T ifOutCfg;
	MXL608_AGC_CFG_T agcCfg;
	MXL608_TUNER_MODE_CFG_T tunerModeCfg;
	MXL_BOOL refLockPtr = MXL_UNLOCKED;
	MXL_BOOL rfLockPtr = MXL_UNLOCKED;

	 MxL608_I2C_SetPort(u32TunerPort);
	 /* config i2c channel */
	// g_stTunerOps[u32TunerPort].u32TunerAddress = 0xc0;
	
	 devId = g_stTunerOps[u32TunerPort].u32TunerAddress;
	 MxL608_I2C_SetChn(g_stTunerOps[u32TunerPort].enI2cChannel,g_stTunerOps[u32TunerPort].u32TunerAddress);

	  //Step 1 : Soft Reset MxL608
	  status = MxLWare608_API_CfgDevSoftReset(devId);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgDevSoftReset\n");	
	  }
		
	  //Step 2 : Overwrite Default
	  singleSupply_3_3V = MXL_DISABLE;
	  status = MxLWare608_API_CfgDevOverwriteDefaults(devId, singleSupply_3_3V);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgDevOverwriteDefaults\n");	
	  }
	
	  //Step 3 : XTAL Setting
	  xtalCfg.xtalFreqSel = MXL608_XTAL_16MHz;
	  xtalCfg.xtalCap = 12;
	  xtalCfg.clkOutEnable = MXL_DISABLE;MXL_ENABLE;
	  xtalCfg.clkOutDiv = MXL_DISABLE;
	  xtalCfg.clkOutExt = MXL_DISABLE;
	  xtalCfg.singleSupply_3_3V = MXL_ENABLE;//MXL_DISABLE;
	  xtalCfg.XtalSharingMode = MXL_DISABLE;
	  status = MxLWare608_API_CfgDevXtal(devId, xtalCfg);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgDevXtal\n");    
	  }
	  MXL608_PWR_MODE_E powerMode = MXL608_PWR_MODE_ACTIVE;
	  MXL_BOOL enableLoopthrough = MXL_DISABLE;
	  UINT8 standbyLt = 0;
	  status = MxLWare608_API_CfgDevPowerMode(devId,powerMode,enableLoopthrough,standbyLt);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgDevXtal\n");    
	  }
	  //Step 4 : IF Out setting
	  ifOutCfg.ifOutFreq = MXL608_IF_5MHz;
	  ifOutCfg.ifInversion = MXL_DISABLE;
	  ifOutCfg.gainLevel = 4;
	  ifOutCfg.manualFreqSet = MXL_DISABLE;
	  ifOutCfg.manualIFOutFreqInKHz = 0;
	  status = MxLWare608_API_CfgTunerIFOutParam(devId, ifOutCfg);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgTunerIFOutParam\n");    
	  }
	
	  //Step 5 : AGC Setting
	  agcCfg.agcType = MXL608_AGC_SELF;
	  agcCfg.setPoint = 66;
	  agcCfg.agcPolarityInverstion = MXL_DISABLE;
	  status = MxLWare608_API_CfgTunerAGC(devId, agcCfg);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgTunerAGC\n");	
	  }
	
	  //Step 6 : Application Mode setting
	  if (HI_UNF_DEMOD_DEV_TYPE_J83B == g_stTunerOps[u32TunerPort].enDemodDevType)
	  {
		 tunerModeCfg.signalMode = MXL608_DIG_J83B; 
	  }
	  else
	  {
		  tunerModeCfg.signalMode = MXL608_DIG_DVB_C; 
	  }
	  tunerModeCfg.ifOutFreqinKHz = 5000;
	  tunerModeCfg.xtalFreqSel = MXL608_XTAL_16MHz;
	  tunerModeCfg.ifOutGainLevel = 11;
	  status = MxLWare608_API_CfgTunerMode(devId, tunerModeCfg);
	  if (status != MXL_SUCCESS)
	  {
		HI_ERR_TUNER("Error! MxLWare608_API_CfgTunerMode\n");	 
	  }

}


HI_S32 mxl608_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E i2c_channel, HI_U32 puRF)
{
  MXL_STATUS status; 
  UINT8 devId;
  MXL608_CHAN_TUNE_CFG_T chanTuneCfg;	
  MXL608_IF_OUT_CFG_T ifOutCfg;

/* If OEM data is implemented, customer needs to use OEM data structure  
   related operation. Following code should be used as a reference. 
   For more information refer to sections 2.5 & 2.6 of 
   MxL608_mxLWare_API_UserGuide document.

  for (devId = 0; devId < EXAMPLE_DEV_MAX; devId++)
  {
    // assigning i2c address for  the device
    device_context[devId].i2c_address = GET_FROM_FILE_I2C_ADDRESS(devId);     

    // assigning i2c bus for  the device
    device_context[devId].i2c_bus = GET_FROM_FILE_I2C_BUS(devId);                      

    // create semaphore if necessary
    device_context[devId].sem = CREATE_SEM();                                                           

    // sample stat counter
    device_context[devId].i2c_cnt = 0;                                                                               

    status = MxLWare608_API_CfgDrvInit(devId, (void *) &device_context[devId]);  

    // if you donn't want to pass any oem data, just use NULL as a parameter:
    // status = MxLWare608_API_CfgDrvInit(devId, NULL);  
  }

*/

  /* If OEM data is not required, customer should treat devId as 
     I2C slave Address */
  //devId = MXL608_I2C_ADDR;
 
 
 // s_u8MXL608devId = u32TunerPort;
  /* config tuner port */
  MxL608_I2C_SetPort(u32TunerPort);
  /* config i2c channel */
 // g_stTunerOps[u32TunerPort].u32TunerAddress = 0xc0;

  devId = g_stTunerOps[u32TunerPort].u32TunerAddress;
  MxL608_I2C_SetChn(i2c_channel,g_stTunerOps[u32TunerPort].u32TunerAddress);
  
  //Step 7 : Channel frequency & bandwidth setting 

  if (HI_UNF_DEMOD_DEV_TYPE_J83B == g_stTunerOps[u32TunerPort].enDemodDevType)
  {
     chanTuneCfg.bandWidth = MXL608_CABLE_BW_6MHz; 
	 chanTuneCfg.signalMode = MXL608_DIG_J83B;
  }
  else
  {
     chanTuneCfg.bandWidth = MXL608_CABLE_BW_8MHz;
	 chanTuneCfg.signalMode = MXL608_DIG_DVB_C;	 
  }

  chanTuneCfg.freqInHz = puRF * 1000;
  chanTuneCfg.xtalFreqSel = MXL608_XTAL_16MHz;
  chanTuneCfg.startTune = MXL_START_TUNE;

 
  status = MxLWare608_API_CfgTunerChanTune(devId, chanTuneCfg);
  if (status != MXL_SUCCESS)
  {
    HI_ERR_TUNER("Error! MxLWare608_API_CfgTunerChanTune\n");    
  }
  #if 0
  // Wait 15 ms 
  MxLWare608_OEM_Sleep(15);
  
  // Read back Tuner lock status
  status = MxLWare608_API_ReqTunerLockStatus(devId, &rfLockPtr, &refLockPtr);
  if (status == MXL_TRUE)
  {
    if (MXL_LOCKED == rfLockPtr && MXL_LOCKED == refLockPtr)
    {
     // HI_ERR_TUNER("Tuner locked\n");
    }
    else
    {
      //HI_ERR_TUNER("Tuner unlocked\n");
    }
  }

  // To Change Channel, GOTO Step #7

  // To change Application mode settings, GOTO Step #6
  #endif
  return 0;
}

HI_S32 mxl608_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{
    SINT16 s16SignalStrength = 0;
    MXL_STATUS status;

	UINT8 devId;
    devId = g_stTunerOps[u32TunerPort].u32TunerAddress;
	
    status = MxLWare608_API_ReqTunerRxPower(devId, &s16SignalStrength);
    if(MXL_SUCCESS != status)
    {
        return status;
    }

    if(s16SignalStrength < 0)
    {
        pu32SignalStrength[2] = 1;
        //pu32SignalStrength[1] = (HI_U32)(((HI_U32)0 -s16SignalStrength)/ 100);
    }
    else
    {
        pu32SignalStrength[2] = 0;
        //pu32SignalStrength[1] = (HI_U32)(s16SignalStrength / 100);
    }

	pu32SignalStrength[1] = (HI_U32)(s16SignalStrength / 100);

	pu32SignalStrength[1] = 110 + pu32SignalStrength[1];
   
    return HI_SUCCESS;
}

HI_VOID mxl608_tuner_resume(HI_U32 u32TunerPort)
{
    mxl608_initflag = HI_FALSE;
 
    return;
}

