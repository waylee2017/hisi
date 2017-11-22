#ifndef __MXL661_H__
#define __MXL661_H__

#include "hi_type.h"

extern HI_S32 mxl661_init_tuner(HI_U32 u32TunerPort);
extern HI_S32 mxl661_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E i2c_channel, HI_U32 puRF);
extern HI_S32 mxl661_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength);
extern HI_VOID mxl661_tuner_resume(HI_U32 u32TunerPort);
#endif

