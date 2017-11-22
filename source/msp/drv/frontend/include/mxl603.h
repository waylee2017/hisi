
/***********************************************************************************
 *
 *	Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
 *
 *	This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
 *	(Hisilicon), and may not be copied, reproduced, modified, disclosed to
 *	others, published or used, in whole or in part, without the express prior
 *	written permission of Hisilicon.
 *
 * FileName: alps.h
 * Description: 
 *
 * History:
 * Version   Date             Author     DefectNum        Description
 * main\1    2007-10-16   w54542    NULL                Create this file.
 ***********************************************************************************/
#ifndef __MXL603_H__
#define __MXL603_H__

#include "hi_type.h"

extern HI_S32	mxl603_init(HI_U32 u32TunerPort);
extern HI_S32 mxl603_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E enI2cChannel, HI_U32 puRF);
extern HI_S32 mxl603_get_signal_strength(HI_U32 u32TunerPort, HI_U32 *pu32SignalStrength);
extern HI_VOID mxl603_tuner_resume(HI_U32 u32TunerPort);
extern HI_S32 mxl603_tuner_standby(HI_U32 u32TunerPort, HI_U32 u32Status);
#endif

