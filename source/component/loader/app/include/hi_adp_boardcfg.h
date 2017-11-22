/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#ifndef __COMMON_BOARDCFG_H__
#define __COMMON_BOARDCFG_H__

/* add include here */

#ifdef __cplusplus
extern "C" {
#endif

#define TUNER_PORT              (HI_TUNER0_ID)
#define DMX_PORT_TUNER      (HI_DEMUX_PORT)

#define __GET_TUNER0_CONFIG(stTunerAttr) \
{\
    stTunerAttr.enSigType      = (HI_UNF_TUNER_SIG_TYPE_E)HI_TUNER_SIGNAL_TYPE; \
    stTunerAttr.enTunerDevType = (HI_UNF_TUNER_DEV_TYPE_E)HI_TUNER_TYPE; \
    stTunerAttr.u32TunerAddr   = HI_TUNER_DEV_ADDR; \
    stTunerAttr.enDemodDevType = (HI_UNF_DEMOD_DEV_TYPE_E)HI_DEMOD_TYPE; \
    stTunerAttr.u32DemodAddr   = HI_DEMOD_DEV_ADDR; \
    stTunerAttr.enOutputMode   = (HI_UNF_TUNER_OUPUT_MODE_E)HI_DEMOD_TS_MODE; \
    stTunerAttr.enI2cChannel   = HI_DEMOD_I2C_CHANNEL; \
    stTunerAttr.u32ResetGpioNo = HI_DEMOD_RESET_GPIO; \
}

#define __GET_TUNER_CONFIG(u32TunerId,stTunerAttr) \
{ \
    stTunerAttr.enSigType      = (HI_UNF_TUNER_SIG_TYPE_E)HI_TUNER##u32TunerId##_SIGNAL_TYPE; \
    stTunerAttr.enTunerDevType = (HI_UNF_TUNER_DEV_TYPE_E)HI_TUNER##u32TunerId##_TYPE; \
    stTunerAttr.u32TunerAddr   = HI_TUNER##u32TunerId##_DEV_ADDR; \
    stTunerAttr.enDemodDevType = (HI_UNF_DEMOD_DEV_TYPE_E)HI_DEMOD##u32TunerId##_TYPE; \
    stTunerAttr.u32DemodAddr   = HI_DEMOD##u32TunerId##_DEV_ADDR; \
    stTunerAttr.enOutputMode   = (HI_UNF_TUNER_OUPUT_MODE_E)HI_DEMOD##u32TunerId##_TS_MODE; \
    stTunerAttr.enI2cChannel   = HI_DEMOD##u32TunerId##_I2C_CHANNEL; \
    stTunerAttr.u32ResetGpioNo = HI_DEMOD##u32TunerId##_RESET_GPIO; \
}

#if (0 == TUNER_PORT)
#define GET_TUNER_CONFIG(stTunerAttr)  __GET_TUNER0_CONFIG(stTunerAttr)
#elif (1 == TUNER_PORT)
#define GET_TUNER_CONFIG(stTunerAttr)  __GET_TUNER_CONFIG(1,stTunerAttr)
#elif (2 == TUNER_PORT)
#define GET_TUNER_CONFIG(stTunerAttr)  __GET_TUNER_CONFIG(2,stTunerAttr)
#elif (3 ==  TUNER_PORT)
#define GET_TUNER_CONFIG(stTunerAttr)  __GET_TUNER_CONFIG(3,stTunerAttr)
#else
#error "unexception cable tuner port config!"
#endif

#ifdef HI_LOADER_TUNER_SAT
#define __GET_SAT_TUNER0_CONFIG(stSatTunerAttr) \
{ \
    stSatTunerAttr.u32DemodClk       = HI_DEMOD_REF_CLOCK; \
    stSatTunerAttr.u16TunerMaxLPF    = HI_TUNER_MAX_LPF; \
    stSatTunerAttr.u16TunerI2CClk    = HI_TUNER_I2C_CLOCK; \
    stSatTunerAttr.enRFAGC           = HI_TUNER_RFAGC; \
    stSatTunerAttr.enIQSpectrum      = HI_TUNER_IQSPECTRUM; \
    stSatTunerAttr.enTSClkPolar      = HI_TUNER_TSCLK_POLAR; \
    stSatTunerAttr.enTSFormat        = HI_TUNER_TS_FORMAT; \
    stSatTunerAttr.enTSSerialPIN     = HI_TUNER_TS_SERIAL_PIN; \
    stSatTunerAttr.enDiSEqCWave      = HI_TUNER_DISEQCWAVE; \
    stSatTunerAttr.enLNBCtrlDev      = HI_LNBCTRL_DEV_TYPE; \
    stSatTunerAttr.u16LNBDevAddress  = HI_LNBCTRL_DEV_ADDR; \
}

#define __GET_SAT_TUNER_CONFIG(u32TunerId,stSatTunerAttr) \
{ \
    stSatTunerAttr.u32DemodClk       = HI_DEMOD##u32TunerId##_REF_CLOCK; \
    stSatTunerAttr.u16TunerMaxLPF    = HI_TUNER##u32TunerId##_MAX_LPF; \
    stSatTunerAttr.u16TunerI2CClk    = HI_TUNER##u32TunerId##_I2C_CLOCK; \
    stSatTunerAttr.enRFAGC           = HI_TUNER##u32TunerId##_RFAGC; \
    stSatTunerAttr.enIQSpectrum      = HI_TUNER##u32TunerId##_IQSPECTRUM; \
    stSatTunerAttr.enTSClkPolar      = HI_TUNER##u32TunerId##_TSCLK_POLAR; \
    stSatTunerAttr.enTSFormat        = HI_TUNER##u32TunerId##_TS_FORMAT; \
    stSatTunerAttr.enTSSerialPIN     = HI_TUNER##u32TunerId##_TS_SERIAL_PIN; \
    stSatTunerAttr.enDiSEqCWave      = HI_TUNER##u32TunerId##_DISEQCWAVE; \
    stSatTunerAttr.enLNBCtrlDev      = HI_LNBCTRL##u32TunerId##_DEV_TYPE; \
    stSatTunerAttr.u16LNBDevAddress  = HI_LNBCTRL##u32TunerId##_DEV_ADDR; \
}

#define __GET_TUNER0_TSOUT_CONFIG(stTSOut) \
{ \
    stTSOut.enTSOutput[0] = HI_TUNER_OUTPUT_PIN0; \
    stTSOut.enTSOutput[1] = HI_TUNER_OUTPUT_PIN1; \
    stTSOut.enTSOutput[2] = HI_TUNER_OUTPUT_PIN2; \
    stTSOut.enTSOutput[3] = HI_TUNER_OUTPUT_PIN3; \
    stTSOut.enTSOutput[4] = HI_TUNER_OUTPUT_PIN4; \
    stTSOut.enTSOutput[5] = HI_TUNER_OUTPUT_PIN5; \
    stTSOut.enTSOutput[6] = HI_TUNER_OUTPUT_PIN6; \
    stTSOut.enTSOutput[7] = HI_TUNER_OUTPUT_PIN7; \
    stTSOut.enTSOutput[8] = HI_TUNER_OUTPUT_PIN8; \
    stTSOut.enTSOutput[9] = HI_TUNER_OUTPUT_PIN9; \
    stTSOut.enTSOutput[10] = HI_TUNER_OUTPUT_PIN10; \
}

#define __GET_TUNER_TSOUT_CONFIG(u32TunerId,stTSOut) \
{ \
    stTSOut.enTSOutput[0] = HI_TUNER##u32TunerId##_OUTPUT_PIN0; \
    stTSOut.enTSOutput[1] = HI_TUNER##u32TunerId##_OUTPUT_PIN1; \
    stTSOut.enTSOutput[2] = HI_TUNER##u32TunerId##_OUTPUT_PIN2; \
    stTSOut.enTSOutput[3] = HI_TUNER##u32TunerId##_OUTPUT_PIN3; \
    stTSOut.enTSOutput[4] = HI_TUNER##u32TunerId##_OUTPUT_PIN4; \
    stTSOut.enTSOutput[5] = HI_TUNER##u32TunerId##_OUTPUT_PIN5; \
    stTSOut.enTSOutput[6] = HI_TUNER##u32TunerId##_OUTPUT_PIN6; \
    stTSOut.enTSOutput[7] = HI_TUNER##u32TunerId##_OUTPUT_PIN7; \
    stTSOut.enTSOutput[8] = HI_TUNER##u32TunerId##_OUTPUT_PIN8; \
    stTSOut.enTSOutput[9] = HI_TUNER##u32TunerId##_OUTPUT_PIN9; \
    stTSOut.enTSOutput[10] = HI_TUNER##u32TunerId##_OUTPUT_PIN10; \
}

#if (0 == TUNER_PORT)
#define GET_SAT_TUNER_CONFIG(stSatTunerAttr) __GET_SAT_TUNER0_CONFIG(stSatTunerAttr)
#define GET_TUNER_TSOUT_CONFIG(stTSOut)  __GET_TUNER0_TSOUT_CONFIG(stTSOut)
#elif (1 == TUNER_PORT)
#define GET_SAT_TUNER_CONFIG(stSatTunerAttr) __GET_SAT_TUNER_CONFIG(1,stSatTunerAttr)
#define GET_TUNER_TSOUT_CONFIG(stTSOut)  __GET_TUNER_TSOUT_CONFIG(1,stTSOut)
#elif (2 == TUNER_PORT)
#define GET_SAT_TUNER_CONFIG(stSatTunerAttr) __GET_SAT_TUNER_CONFIG(2,stSatTunerAttr)
#define GET_TUNER_TSOUT_CONFIG(stTSOut)  __GET_TUNER_TSOUT_CONFIG(2,stTSOut)
#elif (3 ==  TUNER_PORT)
#define GET_SAT_TUNER_CONFIG(stSatTunerAttr) __GET_SAT_TUNER_CONFIG(3,stSatTunerAttr)
#define GET_TUNER_TSOUT_CONFIG(stTSOut)  __GET_TUNER_TSOUT_CONFIG(3,stTSOut)
#else
#error "unexception sat tuner port config!"
#endif

#endif



/* DAC */
#define DAC_CVBS         HI_DAC_CVBS
#define DAC_YPBPR_Y      HI_DAC_YPBPR_Y
#define DAC_YPBPR_PB     HI_DAC_YPBPR_PB
#define DAC_YPBPR_PR     HI_DAC_YPBPR_PR
#define DAC_SVIDEO_Y     HI_DAC_SVIDEO_Y
#define DAC_SVIDEO_C     HI_DAC_SVIDEO_C


#ifdef __cplusplus
}
#endif
#endif /* __COMMON_BOARDCFG_H__ */
