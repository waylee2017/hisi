/*******************************************************************************
 *              Copyright 2004 - 2014, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv_aiao_alsa_func.c
 * Description: aiao alsa interface func
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    
 ********************************************************************************/
#include "drv_ao_func.h"
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"
#include <linux/kernel.h>
#include <asm/io.h>
#include "drv_ao_private.h"
#include "hi_reg_common.h"
#include "drv_hdmi_ext.h"

/************************ interface with aiao *******************************/
//DRV Interface
extern HI_S32 AO_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain);

void I2SDma_Enable(HI_BOOL bEnable)
{
    //TODO
}

void I2SDma_Set(HI_U32 u32PeroidNs)
{
    //TODO
}

void I2SDma_Clear(void)
{
    //TODO
}

int aoe_set_volume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain)
{
	return AO_SND_SetVolume(enSound, enOutPort, stGain);
}

