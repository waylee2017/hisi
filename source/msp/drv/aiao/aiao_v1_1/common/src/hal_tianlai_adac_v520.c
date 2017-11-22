/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name       		: 	aud_adac.c
  Version        		: 	Initial Draft
  Author         		: 	Hisilicon multimedia software group
  Created       		: 	2010/02/28
  Last Modified		    :
  Description  		    :  Hifi audio dac interface
  Function List 		:
  History       		:
  1.Date        		: 	2010/02/28
    Author      		: 	z40717
    Modification   	    :	Created file

******************************************************************************/
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>

#include <asm/uaccess.h>
#include <asm/io.h>
#include <linux/seq_file.h>

#include "hi_drv_mmz.h"
#include "hi_drv_stat.h"
#include "hi_drv_sys.h"
#include "hi_drv_proc.h"

#include "hal_tianlai_adac_v520.h"
#include "hi_drv_ao.h"

#include "hi_reg_common.h"
#include "drv_ao_private.h"

#define  DBG_ADAC_DISABLE_TIMER

/*----------------------------audio codec-----------------------------------*/

/*
0~0x7f
0:  +6dB
6:   0dB
7f: -121dB
 */
static HI_VOID Digfi_DacSetVolume(HI_U32 left, HI_U32 right)
{
    SC_PERI_TIANLAI_ADAC0 Adac0;


    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;

    Adac0.bits.dacr_vol = right;
    Adac0.bits.dacl_vol = left;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;
}

HI_VOID Digfi_DacSetMute(HI_VOID)
{
    SC_PERI_TIANLAI_ADAC1 Adac1;

    // soft mute digi
    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;

    Adac1.bits.smuter = 1;
    Adac1.bits.smutel = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;
}

HI_VOID Digfi_DacSetUnmute(HI_VOID)
{
    SC_PERI_TIANLAI_ADAC1 Adac1;

    // soft mute digi
    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;

    Adac1.bits.smuter = 0;
    Adac1.bits.smutel = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;
}

HI_VOID Digfi_DacSetSampleRate(HI_UNF_SAMPLE_RATE_E SR)
{
    SC_PERI_TIANLAI_ADAC1 Adac1;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    switch (SR)
    {
        case HI_UNF_SAMPLE_RATE_176K:
        case HI_UNF_SAMPLE_RATE_192K:
            Adac1.bits.sample_sel = 4;
            break;

        case HI_UNF_SAMPLE_RATE_88K:
        case HI_UNF_SAMPLE_RATE_96K:
            Adac1.bits.sample_sel = 3;
            break;

        case HI_UNF_SAMPLE_RATE_32K:
        case HI_UNF_SAMPLE_RATE_44K:
        case HI_UNF_SAMPLE_RATE_48K:
            Adac1.bits.sample_sel = 2;
            break;

        case HI_UNF_SAMPLE_RATE_16K:
        case HI_UNF_SAMPLE_RATE_22K:
        case HI_UNF_SAMPLE_RATE_24K:
            Adac1.bits.sample_sel = 1;
            break;

        case HI_UNF_SAMPLE_RATE_8K:
        case HI_UNF_SAMPLE_RATE_11K:
        case HI_UNF_SAMPLE_RATE_12K:
            Adac1.bits.sample_sel = 0;
            break;

        default:
            Adac1.bits.sample_sel = 2;
            break;
    }
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;
}

#ifdef HI_SND_SUPPORT_INTERNAL_OP
static HI_VOID Digfi_Dac_Poweup(HI_BOOL bResume)
{
    SC_PERI_TIANLAI_ADAC0 Adac0;
    SC_PERI_TIANLAI_ADAC1 Adac1;
    SC_PERI_TIANLAI_ADAC2 Adac2;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pu_pullb = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_dt_ctrl = 0x3;
    Adac2.bits.cp_clk_sel = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.pd_dacr = 0;
    Adac0.bits.pd_dacl = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.adj_dac = 1;
    Adac1.bits.adj_ctcm = 0;
    Adac1.bits.adj_refbf = 1;
    Adac1.bits.clkdgesel = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    /* step 1: msel 0 */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.msel = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_dis = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 2: pop pull en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 3: pd ibias */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ibias = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 4: pd ctcm */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ctcm = 0;
    Adac2.bits.pdb_ctcm_ibias = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 5: rst pop */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.rst_pop = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_buffer_pd = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 6: rst pop */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_en_soft = 1;
    Adac2.bits.cp_pd = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
    msleep(200);

    /* step 7: rst pop */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_en_soft = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    msleep(200);

    /*step 8: open DAC */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_dacr = 0;
    Adac2.bits.pd_dacl = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;


    /* step 10: pd verf */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_vref = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    msleep(500);

    /* step 11: pop pullout en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_lineout_org = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    msleep(200);

    /* step 12: pop pullout en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pdb_ctcm_ibias = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.mute_lineout = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.mute_dacl = 0;
    Adac0.bits.mute_dacr = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.smuter = 0;
    Adac1.bits.smutel = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_dis = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
#ifdef HI_SND_SUPPORT_INTERNAL_OP_MAXGAIN
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.gain = 0x4;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
#endif
}

#else
static HI_VOID Digfi_Dac_Poweup(HI_BOOL bResume)
{
    SC_PERI_TIANLAI_ADAC0 Adac0;
    SC_PERI_TIANLAI_ADAC1 Adac1;
    SC_PERI_TIANLAI_ADAC2 Adac2;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.fs = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pu_pullb = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_dis = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_dt_ctrl = 3;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_clk_sel = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.pd_dacr = 0;
    Adac0.bits.pd_dacl = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.mute_dacl = 0;
    Adac0.bits.mute_dacr = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    /* step 1: msel 0 */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.msel = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 2: pop pull en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 3: pd ibias */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ibias = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 4: pd ctcm */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ctcm = 0;
    Adac2.bits.pdb_ctcm_ibias = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 5: rst pop */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.rst_pop = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_buffer_pd = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_en_soft = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 6: pd */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_dacr = 0;
    Adac2.bits.pd_dacl = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 7: mute lineout */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.mute_lineout = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 8: pd verf */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_vref = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 9: pop pullout en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_lineout_org = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    /* step 10: pop pullout en */
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pdb_ctcm_ibias = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_dis = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.adj_dac = 1;
    Adac1.bits.adj_ctcm = 0;
    Adac1.bits.adj_refbf = 1;
    Adac1.bits.clkdgesel = 1;
    Adac1.bits.smuter = 0;
    Adac1.bits.smutel = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;
}
#endif


#ifdef HI_SND_MUTECTL_SUPPORT
HI_VOID ADAC_FastPowerEnable(HI_BOOL bEnable)
{
    SC_PERI_TIANLAI_ADAC2 Adac2;
    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.fs = (HI_U32)bEnable; //reset after power up,enable before power down
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
}
#endif

#ifdef HI_SND_SUPPORT_INTERNAL_OP
static HI_VOID Digfi_DacPowedown(HI_BOOL bSuspend)
{
    SC_PERI_TIANLAI_ADAC0 Adac0;
    SC_PERI_TIANLAI_ADAC1 Adac1;
    SC_PERI_TIANLAI_ADAC2 Adac2;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.gain = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.smutel = 1;
    Adac1.bits.smuter = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.mute_dacl = 1;
    Adac0.bits.mute_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_dis = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_lineout_org = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    msleep(250);

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_vref = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;


    msleep(500);

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_dacl = 1;
    Adac2.bits.pd_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.cp_pd = 1;
    Adac2.bits.cp_buffer_pd = 1;
    Adac2.bits.cp_en_soft = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ctcm = 1;
    Adac2.bits.pd_ibias = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.pd_dacl = 1;
    Adac0.bits.pd_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.mute_lineout = 1;
    Adac2.bits.pop_dis = 1;
    Adac2.bits.rst_pop = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pu_pullb = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
}
#else
static HI_VOID Digfi_DacPowedown(HI_BOOL bSuspend)
{
    SC_PERI_TIANLAI_ADAC0 Adac0;
    SC_PERI_TIANLAI_ADAC1 Adac1;
    SC_PERI_TIANLAI_ADAC2 Adac2;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.smutel = 1;
    Adac1.bits.smuter = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.mute_dacl = 1;
    Adac0.bits.mute_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pop_pullout_en = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_lineout_org = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_vref = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_dacl = 1;
    Adac2.bits.pd_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ibias = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac0.u32 = g_pstRegPeri->PERI_TIANLA_ADAC0.u32;
    Adac0.bits.pd_dacl = 1;
    Adac0.bits.pd_dacr = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC0.u32 = Adac0.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.pd_ctcm = 1;
    Adac2.bits.pd_ibias = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;

    Adac2.u32 = g_pstRegPeri->PERI_TIANLA_ADAC2.u32;
    Adac2.bits.mute_lineout = 1;
    Adac2.bits.pop_pu_pullb = 0;
    Adac2.bits.pop_dis = 0;
    Adac2.bits.rst_pop = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC2.u32 = Adac2.u32;
}
#endif

static HI_VOID Digfi_DacInit(HI_UNF_SAMPLE_RATE_E SR, HI_BOOL bResume)
{
    Digfi_Dac_Poweup(bResume);
    Digfi_DacSetSampleRate(SR);
    Digfi_DacSetVolume(0x06, 0x06);   /* 0dB */
}
static HI_VOID Digfi_ADACEnable(HI_VOID)
{
    U_S40_TIANLAI_ADAC_CRG AdacCfg;
    SC_PERI_TIANLAI_ADAC1 Adac1;

    AdacCfg.u32 = g_pstRegCrg->PERI_CRG69.u32;
    AdacCfg.bits.adac_cken = 1;
    g_pstRegCrg->PERI_CRG69.u32 = AdacCfg.u32;
    udelay(10);

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.rst = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.rst = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.clksel2 = 0;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    AdacCfg.u32 = g_pstRegCrg->PERI_CRG69.u32;
    AdacCfg.bits.adac_srst_req = 1;
    g_pstRegCrg->PERI_CRG69.u32 = AdacCfg.u32;

    AdacCfg.u32 = g_pstRegCrg->PERI_CRG69.u32;
    AdacCfg.bits.adac_srst_req = 0;
    g_pstRegCrg->PERI_CRG69.u32 = AdacCfg.u32;
}

static HI_VOID Digfi_ADACDisable(HI_VOID)
{
    U_S40_TIANLAI_ADAC_CRG AdacCfg;
    SC_PERI_TIANLAI_ADAC1 Adac1;

    Adac1.u32 = g_pstRegPeri->PERI_TIANLA_ADAC1.u32;
    Adac1.bits.rst = 1;
    g_pstRegPeri->PERI_TIANLA_ADAC1.u32 = Adac1.u32;

    AdacCfg.u32 = g_pstRegCrg->PERI_CRG69.u32;
    AdacCfg.bits.adac_srst_req = 1;
    g_pstRegCrg->PERI_CRG69.u32 = AdacCfg.u32;

    AdacCfg.u32 = g_pstRegCrg->PERI_CRG69.u32;
    AdacCfg.bits.adac_cken = 0;
    g_pstRegCrg->PERI_CRG69.u32 = AdacCfg.u32;
}

/*
The start-up sequence consists on several steps in a pre-determined order as follows:
1. select the master clock mode (256 or 384 x Fs)
2. start the master clock
3. set pdz to high
4. select the sampling rate
5. reset the signal path (rstdpz to low and back to high after 100ns)
6. start the individual codec blocks
 */

HI_VOID ADAC_TIANLAI_Init(HI_UNF_SAMPLE_RATE_E enSR, HI_BOOL bResume)
{
    Digfi_ADACEnable();
    msleep(1);   //discharge
    Digfi_DacInit(enSR, bResume);
}

HI_VOID ADAC_TIANLAI_DeInit(HI_BOOL bSuspend)
{
    Digfi_DacPowedown(bSuspend);
    Digfi_ADACDisable();
}

