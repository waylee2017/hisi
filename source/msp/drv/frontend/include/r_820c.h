
#ifndef __R820C_H__
#define __R820C_H__

extern HI_S32 r820c_init_tuner(HI_U32 u32TunerPort);
extern HI_S32 r820c_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E i2c_channel, HI_U32 puRF);
extern HI_VOID r820c_tuner_resume (HI_U32 u32TunerPort);
extern HI_VOID r820c_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength);
extern HI_VOID r820c_tuner_standby(HI_U32 u32TunerPort, HI_U32 u32Status);
#endif

