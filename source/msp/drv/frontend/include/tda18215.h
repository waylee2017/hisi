
#ifndef __TDA18215_H__
#define __TDA18215_H__

extern HI_S32 tda18215_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E enI2cChannel, HI_U32 u32PuRF);
extern HI_VOID tda18215_tuner_resume (HI_U32 u32TunerPort);
extern HI_S32 tda18215_init_tuner(HI_U32 u32TunerPort);
extern HI_S32 tda18215_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength);
extern HI_VOID tda18215_tuner_standby(HI_U32 u32TunerPort, HI_U32 u32Status);
#endif

