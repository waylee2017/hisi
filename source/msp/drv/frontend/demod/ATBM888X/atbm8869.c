#include <linux/delay.h>
#include <linux/kernel.h>
#include <asm/uaccess.h>
#include <linux/time.h>
#include <linux/module.h>
#include <asm/io.h>
#include <linux/kthread.h>
#include <asm/signal.h>
#include "hi_type.h"
#include "hi_drv_i2c.h"
#include "hi_drv_gpio.h"
#include "hi_debug.h"
#include "hi_error_mpi.h"
#include "hi_drv_proc.h"
#include "drv_demod.h"

#include "atbm888x.h"
#include "mxl608.h"


#define TUNER_BYPASS_ENABLE 1  /* 1: use demod bypass i2c to control tuner; 0: don't use demod bypass i2c */


uint8 ui8ATBMSlaveAddr = 0x80;   /*either 0x80 or 0x88 */
HI_U8 gcurTunerPort;
HI_U8 gu8I2CNum[TUNER_NUM];
custom_config_t stCustomConfig;  /*global config parameter*/





/* 初始化 */
HI_S32 atbm888x_init(HI_U32 u32TunerPort, HI_U8 enI2cChannel, HI_UNF_TUNER_DEV_TYPE_E enTunerType)
{
    HI_S32 s32Ret;
	//uint8  ui8I2CByPassState;
	
	HI_INFO_TUNER(" %s.\n",__func__);
    gcurTunerPort = u32TunerPort;
    gu8I2CNum[u32TunerPort] = enI2cChannel;
    ui8ATBMSlaveAddr = g_stTunerOps[u32TunerPort].u32DemodAddress;
    ATBMMutexIni();
    
    ATBMPowerOnInit();
	ATBMSetDTMBMode(); 
	ATBMHoldDSP();
    
#if  TUNER_BYPASS_ENABLE
	ATBMI2CByPassOn();
    //ATBMRead(0x01, 0x03,&ui8I2CByPassState);    
    //HI_INFO_TUNER("-->bypass state:0x%x\n", ui8I2CByPassState);
#endif	
	
    Delayms(5);
	if( HI_UNF_TUNER_DEV_TYPE_MXL608 == enTunerType)
	{
        /* 包括tuner初始化 */
        ATBM_GPO_TestIO20_Output(1); /* 与硬件有关，扣板连接该引脚控制tuner复位，该处不复位，init_tuner中软复位 */
    	s32Ret = mxl608_init_tuner(u32TunerPort);
    	if(HI_FAILURE == s32Ret)
        {
            HI_ERR_TUNER("mxl608 init tuner error.\n");
            return HI_FAILURE;
        }
	}
	else
	{
		HI_INFO_TUNER("tuner type unsupport.\n");
	}
    
#if  TUNER_BYPASS_ENABLE
    ATBMI2CByPassOff();
    //ATBMRead(0x01, 0x03,&ui8I2CByPassState);    
    //HI_INFO_TUNER("-->bypass state:0x%x\n", ui8I2CByPassState);
#endif

	HI_INFO_TUNER("atbm888x_init OK\n");
    return HI_SUCCESS;
}


/* 锁频 */
HI_S32 atbm888x_connect(HI_U32 u32TunerPort, TUNER_ACC_QAM_PARAMS_S *pstChannel)
{
    HI_S32 s32Ret;
	HI_U8 enchnLockState = 0;

	HI_INFO_TUNER(" %s, freq:%d kHz bw:%d KHz\n",__func__,pstChannel->u32Frequency,pstChannel->unSRBW.u32BandWidth);
    gcurTunerPort = u32TunerPort;
#if  TUNER_BYPASS_ENABLE
    ATBMI2CByPassOn();
    Delayms(5);  
#endif

	//Set_Tuner_TDAC2_DTMB(666*1000);// or Set_Tuner_TDAC2_DVBC(666*1000);    //666000Khz
	s32Ret = mxl608_set_tuner(u32TunerPort,gu8I2CNum[u32TunerPort],pstChannel->u32Frequency);
	if(HI_FAILURE == s32Ret)
    {
        HI_ERR_TUNER("mxl603 set tuner error.\n");
        return HI_FAILURE;
    }
	Delayms(5);
#if  TUNER_BYPASS_ENABLE
	ATBMI2CByPassOff();
#endif
	ATBMStartDSP();
	enchnLockState = ATBMChannelLockCheck();
	if(1 == enchnLockState)
	{
       HI_INFO_TUNER(" tuner locked.\n");
	}
	else
	{
		HI_INFO_TUNER(" -->tuner lock failed,enchnLockState:0x%x.\n",enchnLockState);
		//return HI_FAILURE;
	}
	//stCustomConfig.stTunerConfig.ui32IFFrequency = 5000;
	stCustomConfig.stTunerConfig.ui8DTMBBandwithMHz = pstChannel->unSRBW.u32BandWidth/1000;

	ATBMConfig(stCustomConfig);
	HI_INFO_TUNER("atbm888x conneck ok.\n");
    return HI_SUCCESS;
}

/* 设置属性 */
HI_S32 atbm888x_set_ter_attr(HI_U32 u32TunerPort, HI_UNF_TUNER_TER_ATTR_S *pstTerTunerAttr)
{
    HI_INFO_TUNER(" %s.\n",__func__);
#if 0
    gcurTunerPort = u32TunerPort;

    if(HI_UNF_TUNER_IQSPECTRUM_NORMAL == pstTerTunerAttr->enIQSpectrum)
    {
        stCustomConfig.stTunerConfig.ui8IQmode          = NO_SWAP_IQ;//NO_SWAP_IQ:1 SWAP_IQ:0; 
    }
    else if(HI_UNF_TUNER_IQSPECTRUM_INVERT == pstTerTunerAttr->enIQSpectrum)
    {
        stCustomConfig.stTunerConfig.ui8IQmode          = SWAP_IQ;//NO_SWAP_IQ:1 SWAP_IQ:0; 
    }
    else
    {
        stCustomConfig.stTunerConfig.ui8IQmode          = SWAP_IQ;//NO_SWAP_IQ:1 SWAP_IQ:0;                              
    }
    stCustomConfig.stTunerConfig.ui8IQmode          = SWAP_IQ;//NO_SWAP_IQ:1 SWAP_IQ:0;  
    stCustomConfig.stTunerConfig.ui8DTMBBandwithMHz     = 8; //unit: MHz
    stCustomConfig.stTunerConfig.ui32IFFrequency        = 5000; //unit: KHz, according to tuner settings

    /* TS Clock Polar  */
    if(HI_UNF_TUNER_TSCLK_POLAR_FALLING == pstTerTunerAttr->enTSClkPolar)
    {
        stCustomConfig.stTsMode.ui8OutputEdge           = TS_OUTPUT_FALLING_EDGE; 
    }
    else if(HI_UNF_TUNER_TSCLK_POLAR_RISING == pstTerTunerAttr->enTSClkPolar)
    {
        stCustomConfig.stTsMode.ui8OutputEdge           = TS_OUTPUT_RISING_EDGE; 
    }
    else
    {
        stCustomConfig.stTsMode.ui8OutputEdge           = TS_OUTPUT_RISING_EDGE; 
    }
    
    stCustomConfig.stTsMode.ui8TSTransferType           = TS_SERIAL_MODE;//TS_PARALLEL_MODE;
    
    if(HI_UNF_TUNER_TS_SERIAL_PIN_0 == pstTerTunerAttr->enTSSerialPIN)
    {
        stCustomConfig.stTsMode.ui8TSSSIOutputSelection = TS_SSI_OUTPUT_ON_DATA_BIT0;
    }
    else if(HI_UNF_TUNER_TS_SERIAL_PIN_7 == pstTerTunerAttr->enTSSerialPIN)
    {
        stCustomConfig.stTsMode.ui8TSSSIOutputSelection = TS_SSI_OUTPUT_ON_DATA_BIT7;
    }
    else
    {
        stCustomConfig.stTsMode.ui8TSSSIOutputSelection = TS_SSI_OUTPUT_ON_DATA_BIT0;
    }
    
	stCustomConfig.stTsMode.ui8SPIClockConstantOutput   = TS_CLOCK_CONST_OUTPUT;
	stCustomConfig.stTsMode.ui8TSSPIMSBSelection        = TS_SPI_MSB_ON_DATA_BIT7;

	stCustomConfig.ui8CrystalOrOscillator               = CRYSTAL;  // when dbSampleClkFrequency == 30.4 then use CRYSTAL macro   and dbSampleClkFrequency == 24.0 then use OSCILLATOR
	stCustomConfig.ui32SampleClkFrequency               = pstTerTunerAttr->u32DemodClk; //24000; //unit: KHz

    ATBMSetDTMBMode();
#endif
    return HI_SUCCESS;
}



/* 获取锁频状态 */
HI_S32 atbm888x_get_status(HI_U32 u32TunerPort, HI_UNF_TUNER_LOCK_STATUS_E *penTunerStatus)
{
    HI_U8 lockflag = 0;
	HI_INFO_TUNER(" %s.\n",__func__);

    gcurTunerPort = u32TunerPort;
    lockflag = ATBMChannelLockCheckForManual();
	if(1 == lockflag)//LOCKED
	{
	    HI_INFO_TUNER(" signal locked.\n");
		*penTunerStatus = HI_UNF_TUNER_SIGNAL_LOCKED;
	}
	else
	{
	    HI_INFO_TUNER(" signal dropped[%d].\n",lockflag);
		*penTunerStatus = HI_UNF_TUNER_SIGNAL_DROPPED;
	}
		
    return HI_SUCCESS;
}

/* 获取信噪比 */
HI_S32 atbm888x_get_snr(HI_U32 u32TunerPort, HI_U32 * pu32SNR)
{
    HI_U32 u32snr;
    gcurTunerPort = u32TunerPort;
    u32snr = ATBMSignalNoiseRatio();  //dB
    *pu32SNR = u32snr;
    HI_INFO_TUNER("%s: SNR is %d\n",__func__,*pu32SNR);
    return HI_SUCCESS;
}

/* 获取误码率 */
HI_S32 atbm888x_get_ber(HI_U32 u32TunerPort, HI_U32 *pu32ber)
{
    HI_U32 u32berCoff;
    HI_U32 u32berExp;
    gcurTunerPort = u32TunerPort;

    u32berCoff = ATBMBER_Calc(&u32berExp);
    pu32ber[0] = u32berCoff;
    pu32ber[1] = 0;
    pu32ber[2] = u32berExp;
    
	HI_INFO_TUNER("%s: BER is %d E- %d\n",__func__,pu32ber[0],pu32ber[2]);
    return HI_SUCCESS;
}

/* 获取信号强度 */
HI_S32 atbm888x_get_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength)
{
    gcurTunerPort = u32TunerPort;
    pu32SignalStrength[1] =(ATBMSignalStrength()*100/1024); //0~1023
    if(pu32SignalStrength[1] >96)
    {
        pu32SignalStrength[1] = 96;
    }
	HI_INFO_TUNER("%s: strength is %d\n",__func__,pu32SignalStrength[1]);
    return HI_SUCCESS;
}

/* 获取信号质量 */
HI_S32 atbm888x_get_signal_quality(HI_U32 u32TunerPort, HI_U32* pu32SignalQuality)
{
    gcurTunerPort = u32TunerPort;
    *pu32SignalQuality = ATBMSignalQuality(); //min 20, max 99
	HI_INFO_TUNER("%s: quality is %d\n",__func__,*pu32SignalQuality);
    return HI_SUCCESS;
}

/* 设置TS类型 */
HI_S32 atbm888x_set_ts_type(HI_U32 u32TunerPort, HI_UNF_TUNER_OUPUT_MODE_E enTsType)
{
	HI_INFO_TUNER(" %s: enTsType is %d.\n",__func__,enTsType);
    gcurTunerPort = u32TunerPort;

	switch(enTsType)
	{
	 	case HI_UNF_TUNER_OUTPUT_MODE_PARALLEL_MODE_A:
		case HI_UNF_TUNER_OUTPUT_MODE_PARALLEL_MODE_B:
			stCustomConfig.stTsMode.ui8TSTransferType = TS_PARALLEL_MODE;
			break;
	    case HI_UNF_TUNER_OUTPUT_MODE_SERIAL:
			stCustomConfig.stTsMode.ui8TSTransferType = TS_SERIAL_MODE;
			break;
		default:
			stCustomConfig.stTsMode.ui8TSTransferType = TS_SERIAL_MODE;
			HI_INFO_TUNER(" default ts type.\n");
			break;
	}
    
	ATBMSetTSMode( stCustomConfig.stTsMode);
    return HI_SUCCESS;
}
HI_S32 atbm888x_set_ts_out(HI_U32 u32TunerPort, HI_UNF_TUNER_TSOUT_SET_S *pstTSOut)
{
    return HI_SUCCESS;
}


HI_VOID atbm888x_get_connect_timeout(HI_U32 u32ConnectTimeout)
{
    HI_INFO_TUNER(" %s.\n",__func__);
    return;
}
HI_S32 atbm888x_get_signal_info(HI_U32 u32TunerPort, HI_UNF_TUNER_SIGNALINFO_S *pstInfo)
{
    HI_U8 lockflag;
    DTMB_SIGNAL_PARAMS singal_params;
    
    
    if(HI_NULL == pstInfo)
    {
        return HI_FAILURE;
    }
    
    gcurTunerPort = u32TunerPort;
    pstInfo->enSigType = HI_UNF_TUNER_SIG_TYPE_DTMB;
    
    lockflag = ATBMChannelLockCheckForManual();
    if(1 != lockflag)
    {
        HI_INFO_TUNER("tuner unlock.\n");
        return HI_FAILURE;
    }   

    ATBMGetSignalParameters(&singal_params);
    
    switch (singal_params.dtmb_carrier_mode)
    {
	    case DTMB_SINGLE_CARRIER:
            pstInfo->unSignalInfo.stDtmb.enCarrierMode = HI_UNF_TUNER_DTMB_CARRIER_SINGLE;
            break;
	    case DTMB_MULTI_CARRIER:
            pstInfo->unSignalInfo.stDtmb.enCarrierMode = HI_UNF_TUNER_DTMB_CARRIER_MULTI;
            break;
        case DTMB_CARRIER_UNKNOWN:
        default:
            pstInfo->unSignalInfo.stDtmb.enCarrierMode = HI_UNF_TUNER_DTMB_CARRIER_UNKNOWN;
            break;
    }

    switch(singal_params.dtmb_qam_index)
    {
        case DTMB_QAM_4QAM_NR:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_QAM_4_NR;
            break;
        case DTMB_QAM_4QAM:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_QAM_4;
            break;
        case DTMB_QAM_16QAM:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_QAM_16;
            break;
        case DTMB_QAM_32QAM:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_QAM_32;
            break;
        case DTMB_QAM_64QAM:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_QAM_64;
            break;        
        case DTMB_QAM_UNKNOWN:
        default:
            pstInfo->unSignalInfo.stDtmb.enQamIndex = HI_UNF_MOD_TYPE_AUTO;
            break;
    }

    switch (singal_params.dtmb_code_rate)
    {
        case DTMB_CODE_RATE_0_DOT_4:
            pstInfo->unSignalInfo.stDtmb.enCodeRate = HI_UNF_TUNER_DTMB_CODE_RATE_0_DOT_4;
            break;
	    case DTMB_CODE_RATE_0_DOT_6:
            pstInfo->unSignalInfo.stDtmb.enCodeRate = HI_UNF_TUNER_DTMB_CODE_RATE_0_DOT_6;
            break;
	    case DTMB_CODE_RATE_0_DOT_8:
            pstInfo->unSignalInfo.stDtmb.enCodeRate = HI_UNF_TUNER_DTMB_CODE_RATE_0_DOT_8;
            break;
        case DTMB_CODE_RATE_UNKNOWN:
        default:
            pstInfo->unSignalInfo.stDtmb.enCodeRate = HI_UNF_TUNER_DTMB_CODE_RATE_UNKNOWN;
            break;
    }
    
    switch (singal_params.dtmb_time_interleave)
    {
	    case DTMB_TIME_INTERLEAVER_240:
            pstInfo->unSignalInfo.stDtmb.enTimeInterleave = HI_UNF_TUNER_DTMB_TIME_INTERLEAVER_240;
            break;
	    case DTMB_TIME_INTERLEAVER_720:
            pstInfo->unSignalInfo.stDtmb.enTimeInterleave = HI_UNF_TUNER_DTMB_TIME_INTERLEAVER_720;
            break;
        case DTMB_TIME_INTERLEAVER_UNKNOWN:
        default:
            pstInfo->unSignalInfo.stDtmb.enTimeInterleave = HI_UNF_TUNER_DTMB_TIME_INTERLEAVER_UNKNOWN;
            break;
    }

    switch (singal_params.dtmb_guard_interval)
    {
	    case GI_420:
            pstInfo->unSignalInfo.stDtmb.enGuardInterval = HI_UNF_TUNER_DTMB_GI_420;
            break;
	    case GI_595:
            pstInfo->unSignalInfo.stDtmb.enGuardInterval = HI_UNF_TUNER_DTMB_GI_595;
            break;
	    case GI_945:
            pstInfo->unSignalInfo.stDtmb.enGuardInterval = HI_UNF_TUNER_DTMB_GI_945;
            break;
        case GI_UNKNOWN:
        default:
            pstInfo->unSignalInfo.stDtmb.enGuardInterval = HI_UNF_TUNER_DTMB_GI_UNKNOWN;
            break;
    }
    
    return HI_SUCCESS;
}


HI_S32 atbm888x_get_freq_symb_offset(HI_U32 u32TunerPort, HI_U32 * pu32Freq, HI_U32 * pu32Symb )
{
    HI_S32 s32Temp = 0;

    
    s32Temp = ATBMCarrierOffset();
    //printk("%s: %d\n", __FUNCTION__, s32Temp);
    *pu32Freq = (HI_U32)s32Temp;
        
    *pu32Symb = stCustomConfig.stTunerConfig.ui8DTMBBandwithMHz;

    return HI_SUCCESS;
}


