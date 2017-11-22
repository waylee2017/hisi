#ifndef __ATBM8869_H__
#define __ATBM8869_H__


HI_S32 atbm888x_init(HI_U32 u32TunerPort, HI_U8 enI2cChannel, HI_UNF_TUNER_DEV_TYPE_E enTunerType);
HI_S32 atbm888x_connect(HI_U32 u32TunerPort, TUNER_ACC_QAM_PARAMS_S *pstChannel);
HI_S32 atbm888x_set_ter_attr(HI_U32 u32TunerPort, HI_UNF_TUNER_TER_ATTR_S *pstTerTunerAttr);
HI_S32 atbm888x_get_status(HI_U32 u32TunerPort, HI_UNF_TUNER_LOCK_STATUS_E *penTunerStatus);
HI_S32 atbm888x_get_snr(HI_U32 u32TunerPort, HI_U32 * pu32SNR);
HI_S32 atbm888x_get_ber(HI_U32 u32TunerPort, HI_U32 *pu32ber);
HI_S32 atbm888x_get_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength);
HI_S32 atbm888x_get_signal_quality(HI_U32 u32TunerPort, HI_U32* pu32SignalQuality);
HI_S32 atbm888x_set_ts_type(HI_U32 u32TunerPort, HI_UNF_TUNER_OUPUT_MODE_E enTsType);
HI_S32 atbm888x_set_ts_out(HI_U32 u32TunerPort, HI_UNF_TUNER_TSOUT_SET_S *pstTSOut);
HI_VOID atbm888x_get_connect_timeout(HI_U32 u32ConnectTimeout);
HI_S32 atbm888x_get_signal_info(HI_U32 u32TunerPort, HI_UNF_TUNER_SIGNALINFO_S *pstInfo);
HI_S32 atbm888x_get_freq_symb_offset(HI_U32 u32TunerPort, HI_U32 * pu32Freq, HI_U32 * pu32Symb );


#endif

