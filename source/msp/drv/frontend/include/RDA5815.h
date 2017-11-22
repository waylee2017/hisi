/****************************************************************************/
/*                   MONTAGE PROPRIETARY AND CONFIDENTIAL                   */
/*                   Montage Technology (Shanghai) Inc.                     */
/*                          All Rights Reserved                             */
/****************************************************************************/
/*
 * Filename:      RDA5815.h
 *
 * Description:   Montage M88TS2022  Digital Satellite Tuner IC driver.
 *
 * Author:        Kenn Wang
 *
 * Version:       1.12.01
 * Date:          2011-09-15
****************************************************************************/

/* DEFINES: */
#ifndef __RDA5815_H__
#define __RDA5815_H__

#include "hi_type.h"

extern HI_S32 RDA5815_init_tuner(HI_U32 u32TunerPort);
extern HI_S32 RDA5815_set_tuner(HI_U32 u32TunerPort, HI_UNF_TUNER_I2cChannel_E enI2cChannel, HI_U32 u32PuRF/*kHz*/);  //freq :unit MHZ, symbol:unit  Khz

#endif
