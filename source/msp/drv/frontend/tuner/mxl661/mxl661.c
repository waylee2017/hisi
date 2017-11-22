/******************************************************************************

  Copyright (C), 2012-2050, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : 
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/12/16
  Description   : 
  History       :
  1.Date        : 2013/12/16
    Author      : w00184692
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

#include "MxL661_TunerApi.h"
//#include "MxL661_TunerApi.c"
#include "MxL661_OEM_Drv.h"

HI_U32				 s_u32Mxl661I2cAddr;
static HI_BOOL              bTunerMxl661Inited = HI_FALSE;

static HI_U32               s_u32Mxl661IFFreqKHz = 0;
static  HI_BOOL              bTunerMxl661SetRF = HI_FALSE;
static  MXL661_BW_E e_u8Mxl661BandWidth = MXL661_ANA_TV_DIG_CABLE_BW_8MHz;
static  MXL661_SIGNAL_MODE_E e_u8Mxl661AppMode = MXL661_DIG_DVB_C;

//#define MXL661_I2C_ADDR     0x60

#define MXL661_DEFAULT_SINGLE_POWER_SUPPLY  MXL_ENABLE// Single power supply
#define MXL661_DEFAULT_XTAL_FREQ_SEL        MXL661_XTAL_16MHz    // 16MHz
#define MXL661_DEFAULT_XTAL_CAP             25//25 //19            // 0 PF
#define MXL661_DEFAULT_XTAL_CLOCK_OUT       MXL_DISABLE    // V clock out
#define MXL661_DEFAULT_XTAL_CLOCK_DIV       MXL_DISABLE   // Disable clock div
#define MXL661_ATV_DVB_C_IF_PATH            MXL661_IF_PATH1      // IF path 1
#define MXL661_DTMB_IF_PATH                 MXL661_IF_PATH2      // IF path 1
#define MXL661_DEFAULT_IF_FREQ_SEL          MXL661_IF_5MHz       // 5MHz
#define MXL661_DEFAULT_IF_INVERSION         MXL_ENABLE // IF spectrum inversion
#define MXL661_DEFAULT_IF_GAIN              11 //10  // For digital range is 5 to 11
#define MXL661_DEFAULT_AGC_TYPE             MXL661_AGC_EXTERNAL// External AGC

//#define MXL661_DEFAULT_AGC_TYPE             MXL661_AGC_SELF// External AGC

#define MXL661_DEFAULT_ATV_DVB_C_AGC_SEL              MXL661_AGC1          // Select AGC1
#define MXL661_DEFAULT_DTMB_DVB_T_AGC_SEL             MXL661_AGC2          // Select AGC2

#define MXL661_DEFAULT_AGC_SET_POINT        66  // Default value for Self AGC

// Define MxL661 device power supply, Xtal, IF out and AGC setting
typedef struct
{

  MXL_BOOL Single_3_3_v_Supply; // Define Tuner is single 3.3v power supply or not.
  MXL661_XTAL_FREQ_E XtalFreqSel;  // XTAL frequency selection, either 16MHz or 24MHz
  UINT8 XtalCap;                // XTAL capacity
  MXL_BOOL XtalClkOut;          // XTAL clock out enable or disable
  MXL_BOOL XtalClkDiv;          // Define if clock out freq is divided by 4 or not
  UINT8 SignalMode;             // Tuner work mode, refers MXL_SIGNAL_MODE_E definition
  UINT8 BandWidth;              // signal band width in MHz unit
  UINT8 ATV_DVB_C_IFPath;                 // define which IF path is selected
  UINT8 DTMB_IFPath;                 // define which IF path is selected
  MXL661_IF_FREQ_E IFFreqSel;      // IF out signel frequency selection. Refers MXL661_IF_FREQ_E define.
  MXL_BOOL IFInversion;         // IF spectrum is inverted or not
  UINT8 IFGain;                 // IF out gain level
  MXL661_AGC_TYPE_E AgcType;       // AGC mode selection, self or closed loop
  MXL661_AGC_ID_E ATV_DVB_C_AgcSel;          // AGC selection, AGC1 or AGC2
  MXL661_AGC_ID_E DTMB_DVB_T_AgcSel;          // AGC selection, AGC1 or AGC2
  UINT8 AgcSetPoint;            // AGC attack point set value
} MXL661_CHARACTER_SET_T;

static MXL661_CHARACTER_SET_T MxL661_Default_Set =
{
  MXL661_DEFAULT_SINGLE_POWER_SUPPLY, // power supply type
  MXL661_DEFAULT_XTAL_FREQ_SEL,  // Xtal freq selection
  MXL661_DEFAULT_XTAL_CAP,       // Xtal cap
  MXL661_DEFAULT_XTAL_CLOCK_OUT, // clock out
  MXL661_DEFAULT_XTAL_CLOCK_DIV, // clock div
  MXL661_DIG_DVB_C,  // DVB_C
  8,  // 8MHz
  MXL661_ATV_DVB_C_IF_PATH,     // IF path 1
  MXL661_DTMB_IF_PATH,           // IF path 2
  MXL661_DEFAULT_IF_FREQ_SEL, // IF freq selection
  MXL661_DEFAULT_IF_INVERSION, // IF spectrum inversion
  MXL661_DEFAULT_IF_GAIN,  // IF gain
  MXL661_DEFAULT_AGC_TYPE, // AGC type, self or external
  MXL661_DEFAULT_ATV_DVB_C_AGC_SEL,   // Select AGC1
  MXL661_DEFAULT_DTMB_DVB_T_AGC_SEL,  // Select AGC2
  MXL661_DEFAULT_AGC_SET_POINT // AGC set point, effective for self AGC
};

UINT32 IFAbsFreqInKHz[] = {3650, 4000, 4100, 4150, 4500, 4570, 5000, 5380, 6000, 6280, 7200, 8250, 35250, 36000, 36150, 36650, 44000};

void MxL661_API_SetAppMode(UINT8 AppMode,MXL661_IF_FREQ_E IFFreqSel,MXL_BOOL iSIFInversion)
{
  MXL_STATUS status;
  MXL661_COMMAND_T apiCmd;

  // IF Out setting
 
  apiCmd.commandId = MXL661_DEV_IF_OUT_CFG;
  apiCmd.MxLIf.cmdIfOutCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
  apiCmd.MxLIf.cmdIfOutCfg.IFOutFreq = IFFreqSel;

  apiCmd.MxLIf.cmdIfOutCfg.IFInversion = iSIFInversion;
  apiCmd.MxLIf.cmdIfOutCfg.GainLevel = MxL661_Default_Set.IFGain;
  if( MXL661_DIG_DVB_T_DTMB == (MXL661_SIGNAL_MODE_E)AppMode )
  {
	  apiCmd.MxLIf.cmdIfOutCfg.PathSel = MxL661_Default_Set.DTMB_IFPath;
  }
  else
  {	
	  apiCmd.MxLIf.cmdIfOutCfg.PathSel = MxL661_Default_Set.ATV_DVB_C_IFPath;
  }
  apiCmd.MxLIf.cmdIfOutCfg.ManualFreqSet = MXL_ENABLE;
  apiCmd.MxLIf.cmdIfOutCfg.ManualIFOutFreqInKHz = s_u32Mxl661IFFreqKHz;
  status = MxLWare661_API_ConfigDevice(&apiCmd);
  if(status != MXL_TRUE)
  {
    HI_ERR_TUNER("MxLWare661_API_ConfigDevice ERR commandId=%d status = %d\n",apiCmd.commandId,status);
    return;
  }
  
  // AGC Setting
  apiCmd.commandId = MXL661_TUNER_AGC_CFG;
  apiCmd.MxLIf.cmdAgcSetCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
  
  if(MXL661_DIG_DVB_T_DTMB == (MXL661_SIGNAL_MODE_E)AppMode)
  {
  	apiCmd.MxLIf.cmdAgcSetCfg.AgcSel = MxL661_Default_Set.DTMB_DVB_T_AgcSel;
  }
  else
  {
	apiCmd.MxLIf.cmdAgcSetCfg.AgcSel = MxL661_Default_Set.ATV_DVB_C_AgcSel;
  }

  if((MXL661_SIGNAL_MODE_E)AppMode >= MXL661_ANA_NTSC_MODE && (MXL661_SIGNAL_MODE_E)AppMode <= MXL661_ANA_SECAM_L)
  {
      apiCmd.MxLIf.cmdAgcSetCfg.AgcType = MXL661_AGC_SELF;
  }
  else
  {
      apiCmd.MxLIf.cmdAgcSetCfg.AgcType = MXL661_AGC_EXTERNAL;
  }
  
  apiCmd.MxLIf.cmdAgcSetCfg.SetPoint = MxL661_Default_Set.AgcSetPoint;
  apiCmd.MxLIf.cmdAgcSetCfg.AgcPolarityInverstion = MXL_DISABLE;	  

  
  status = MxLWare661_API_ConfigTuner(&apiCmd);
  if(status != MXL_TRUE)
  {
    HI_ERR_TUNER("MxLWare661_API_ConfigDevice ERR commandId=%d status = %d\n",apiCmd.commandId,status);
    return;
  }
  
  // Application Mode setting
  apiCmd.commandId = MXL661_TUNER_MODE_CFG;
  apiCmd.MxLIf.cmdModeCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
  apiCmd.MxLIf.cmdModeCfg.SignalMode = (MXL661_SIGNAL_MODE_E)AppMode;
  //apiCmd.MxLIf.cmdModeCfg.IFOutFreqinKHz = IFAbsFreqInKHz[IFFreqSel];
  apiCmd.MxLIf.cmdModeCfg.IFOutFreqinKHz = s_u32Mxl661IFFreqKHz;
  apiCmd.MxLIf.cmdModeCfg.XtalFreqSel = MxL661_Default_Set.XtalFreqSel;
  apiCmd.MxLIf.cmdModeCfg.IFOutGainLevel = MxL661_Default_Set.IFGain;
  status = MxLWare661_API_ConfigTuner(&apiCmd);
  if(status != MXL_TRUE)
  {
	 HI_ERR_TUNER("MxLWare661_API_ConfigDevice ERR commandId=%d status = %d\n",apiCmd.commandId,status);
	 return;
  }

  MxL661_Default_Set.SignalMode = AppMode;

  return;
}

void MxL661_API_GetLockStatus(UINT8* RfLock, UINT8* RefLock)
{
  MXL661_COMMAND_T apiCmd;

  // Read back Tuner lock status
  apiCmd.commandId = MXL661_TUNER_LOCK_STATUS_REQ;
  apiCmd.MxLIf.cmdTunerLockReq.I2cSlaveAddr = s_u32Mxl661I2cAddr;

  if (MXL_TRUE == MxLWare661_API_GetTunerStatus(&apiCmd))
  {
	   *RfLock = apiCmd.MxLIf.cmdTunerLockReq.RfSynLock;
	   *RefLock = apiCmd.MxLIf.cmdTunerLockReq.RefSynLock;
  }
  return;
}


HI_S32 mxl661_init_tuner(HI_U32 u32TunerPort)
{
  MXL_STATUS status = MXL_FALSE;
  MXL661_COMMAND_T apiCmd= {0}; ;
  
  	    UINT8 AppMode = 0; 
	MXL661_IF_FREQ_E IFFreqSel = 0;
	HI_U32 u32FreqIFKHz = 5000;

      s_u32Mxl661I2cAddr = g_stTunerOps[u32TunerPort].u32TunerAddress;

    /* config tuner port */
  MxL661_I2C_SetPort(u32TunerPort);
  /* config i2c channel */
  MxL661_I2C_SetChn(g_stTunerOps[u32TunerPort].enI2cChannel,g_stTunerOps[u32TunerPort].u32TunerAddress);

   if (HI_FALSE == bTunerMxl661Inited)
  {
  	// Soft Reset MxL661
	  apiCmd.commandId = MXL661_DEV_SOFT_RESET_CFG;
	  apiCmd.MxLIf.cmdResetCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	  status = MxLWare661_API_ConfigDevice(&apiCmd);
	  if(MXL_TRUE != status)
	  {
	      HI_ERR_TUNER("Call MxLWare661_API_ConfigDevice failure!\n");
	      goto TUNER_CLOSE;
	  }
	  // Overwrite Default
	  apiCmd.commandId = MXL661_DEV_OVERWRITE_DEFAULT_CFG;
	  apiCmd.MxLIf.cmdOverwriteDefault.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	  apiCmd.MxLIf.cmdOverwriteDefault.SingleSupply_3_3V = MxL661_Default_Set.Single_3_3_v_Supply;
	  status = MxLWare661_API_ConfigDevice(&apiCmd);
	  if(MXL_TRUE != status)
	  {
	      HI_ERR_TUNER("Call MxLWare661_API_ConfigDevice failure!\n");
	      goto TUNER_CLOSE;
	  }

	  // Xtal Setting
	  apiCmd.commandId = MXL661_DEV_XTAL_SET_CFG;
	  apiCmd.MxLIf.cmdXtalCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	  apiCmd.MxLIf.cmdXtalCfg.XtalFreqSel = MxL661_Default_Set.XtalFreqSel;
	  apiCmd.MxLIf.cmdXtalCfg.XtalCap = MxL661_Default_Set.XtalCap;
	  apiCmd.MxLIf.cmdXtalCfg.ClkOutEnable = MxL661_Default_Set.XtalClkOut;
	  apiCmd.MxLIf.cmdXtalCfg.ClkOutDiv = MxL661_Default_Set.XtalClkDiv;
	  apiCmd.MxLIf.cmdXtalCfg.SingleSupply_3_3V = MxL661_Default_Set.Single_3_3_v_Supply;
	  status = MxLWare661_API_ConfigDevice(&apiCmd);
	  if(MXL_TRUE != status)
	  {
	      HI_ERR_TUNER("Call MxLWare661_API_ConfigDevice failure!\n");
	      goto TUNER_CLOSE;
	  }

	  // Power up setting
	  apiCmd.commandId = MXL661_TUNER_POWER_UP_CFG;
	  apiCmd.MxLIf.cmdXtalCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	  apiCmd.MxLIf.cmdTunerPoweUpCfg.Enable = MXL_ENABLE;
	  status = MxLWare661_API_ConfigTuner(&apiCmd);
	  if(MXL_TRUE != status)
	  {
	      HI_ERR_TUNER("Call MxLWare661_API_ConfigTuner failure!\n");
	      goto TUNER_CLOSE;
	  } 
  }

	if (HI_UNF_DEMOD_DEV_TYPE_J83B == g_stTunerOps[u32TunerPort].enDemodDevType)
	{
		AppMode = MXL661_DIG_J83B;
		IFFreqSel = MXL661_IF_3_65MHz;
		u32FreqIFKHz = 3650; 
		e_u8Mxl661BandWidth = MXL661_DIG_TERR_BW_6MHz;
	}
	else
	{
		AppMode = MXL661_DIG_DVB_C;
		IFFreqSel = MXL661_IF_5MHz;
		u32FreqIFKHz = 5000;
		e_u8Mxl661BandWidth = MXL661_ANA_TV_DIG_CABLE_BW_8MHz;	
	}

	// Set appllication mode and related IF out, AGC setting parameters
	s_u32Mxl661IFFreqKHz = u32FreqIFKHz;
	e_u8Mxl661AppMode = (MXL661_SIGNAL_MODE_E)AppMode;

	MxL661_API_SetAppMode(AppMode,IFFreqSel,MXL_ENABLE);
	
	bTunerMxl661Inited = HI_TRUE;    
	return HI_SUCCESS;

TUNER_CLOSE:

   
    return HI_FAILURE;    
}

HI_S32 mxl661_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E i2c_channel, HI_U32 puRF)
{

    MXL_STATUS status;
    MXL661_COMMAND_T apiCmd;
    HI_S32 u32Temp = puRF*1000;

	/* config tuner port */
	MxL661_I2C_SetPort(u32TunerPort);
	/* config i2c channel */
	MxL661_I2C_SetChn(g_stTunerOps[u32TunerPort].enI2cChannel,g_stTunerOps[u32TunerPort].u32TunerAddress);

	// Channel frequency & bandwidth setting  
	apiCmd.commandId = MXL661_TUNER_CHAN_TUNE_CFG;
	apiCmd.MxLIf.cmdChanTuneCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	apiCmd.MxLIf.cmdChanTuneCfg.TuneType = MXL661_VIEW_MODE;;
	apiCmd.MxLIf.cmdChanTuneCfg.BandWidth = e_u8Mxl661BandWidth;
	apiCmd.MxLIf.cmdChanTuneCfg.FreqInHz =  u32Temp;
	apiCmd.MxLIf.cmdChanTuneCfg.SignalMode = e_u8Mxl661AppMode;
	apiCmd.MxLIf.cmdChanTuneCfg.XtalFreqSel = MxL661_Default_Set.XtalFreqSel;
	apiCmd.MxLIf.cmdChanTuneCfg.IFOutFreqinKHz = s_u32Mxl661IFFreqKHz;
	
	status = MxLWare661_API_ConfigTuner(&apiCmd);
	if(MXL_TRUE != status)
    {
        HI_ERR_TUNER("MxLWare661_API_ConfigTuner Fail\n");
        return HI_FAILURE;
    }
		// Sequencer setting, disable tune
	apiCmd.commandId = MXL661_TUNER_START_TUNE_CFG;
	apiCmd.MxLIf.cmdAfcCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	apiCmd.MxLIf.cmdStartTuneCfg.StartTune = MXL_DISABLE;
	status = MxLWare661_API_ConfigTuner(&apiCmd);
	if(MXL_TRUE != status)
    {
        HI_ERR_TUNER("MxLWare661_API_ConfigTuner Fail\n");
        return HI_FAILURE;
    }
  
	// Sequencer setting, enable tune
	apiCmd.commandId = MXL661_TUNER_START_TUNE_CFG;
	apiCmd.MxLIf.cmdAfcCfg.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	apiCmd.MxLIf.cmdStartTuneCfg.StartTune = MXL_ENABLE;
	status = MxLWare661_API_ConfigTuner(&apiCmd);
	if(MXL_TRUE != status)
    {
        HI_ERR_TUNER("MxLWare661_API_ConfigTuner Fail\n");
        return HI_FAILURE;
    }
	//MxL661_Default_Set.BandWidth = BandWidthInMHz;
	MxL661_Default_Set.BandWidth = e_u8Mxl661BandWidth;
	
    return HI_SUCCESS;
}

HI_S32 mxl661_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{
	MXL_STATUS status;
	MXL661_COMMAND_T apiCmd;

	apiCmd.commandId = MXL661_TUNER_RX_PWR_REQ;
	apiCmd.MxLIf.cmdTunerPwrReq.I2cSlaveAddr = s_u32Mxl661I2cAddr;
	status = MxLWare661_API_GetTunerStatus(&apiCmd);
	if(MXL_TRUE != status)
	{
	  HI_ERR_TUNER("MxLWare661_API_ConfigTuner Fail\n");
	  return HI_FAILURE;
	}
	else
	{
	 pu32SignalStrength[1] = (HI_U32)((apiCmd.MxLIf.cmdTunerPwrReq.RxPwr)/100 + 111);  
	}
	return HI_SUCCESS;
}

HI_VOID mxl661_tuner_resume(HI_U32 u32TunerPort)
{
    bTunerMxl661Inited = HI_FALSE;
    if(HI_SUCCESS == mxl661_init_tuner(u32TunerPort))
    {
        HI_INFO_TUNER("mxl661_init_tuner success\n");
    }
    else
    {
        HI_FATAL_TUNER("mxl661_init_tuner fail\n");
    }
}


