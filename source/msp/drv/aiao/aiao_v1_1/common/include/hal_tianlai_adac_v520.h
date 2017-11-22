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
* FileName:
* Description: TianLai internal audio dac hal
*
* History:
* Version   Date         Author         DefectNum    Description
* main\1    2012-11-06   AudioGroup     NULL         Create this file.
***********************************************************************************/
#ifndef __AUD_TIANLAI_ADAC_HAL_H__
#define __AUD_TIANLAI_ADAC_HAL_H__


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

#include "hi_type.h"
#include "hi_unf_sound.h"

/***************************************************************************
Description:
    define const varible
***************************************************************************/
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dacr_vol              : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 1   ; /* [7]  */
        unsigned int    dacl_vol              : 7   ; /* [14..8]  */
        unsigned int    reserved_1            : 3   ; /* [17..15]  */
        unsigned int    deemphasis_fs         : 2   ; /* [19..18]  */
        unsigned int    dacr_deemph           : 1   ; /* [20]  */
        unsigned int    dacl_deemph           : 1   ; /* [21]  */
        unsigned int    dacr_path             : 1   ; /* [22]  */
        unsigned int    dacl_path             : 1   ; /* [23]  */
        unsigned int    reserved_2            : 4   ; /* [27..24]  */
        unsigned int    mute_dacr             : 1   ; /* [28]  */
        unsigned int    mute_dacl             : 1   ; /* [29]  */
        unsigned int    pd_dacr               : 1   ; /* [30]  */
        unsigned int    pd_dacl               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;


} SC_PERI_TIANLAI_ADAC0;

typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    clkdgesel             : 1   ; /* [8]  */
        unsigned int    clksel2               : 1   ; /* [9]  */
        unsigned int    adj_refbf             : 2   ; /* [11..10]  */
        unsigned int    rst                   : 1   ; /* [12]  */
        unsigned int    adj_ctcm              : 1   ; /* [13]  */
        unsigned int    adj_dac               : 2   ; /* [15..14]  */
        unsigned int    reserved_1            : 3   ; /* [18..16]  */
        unsigned int    sample_sel            : 3   ; /* [21..19]  */
        unsigned int    data_bits             : 2   ; /* [23..22]  */
        unsigned int    reserved_2            : 1   ; /* [24]  */
        unsigned int    mute_rate             : 2   ; /* [26..25]  */
        unsigned int    dacvu                 : 1   ; /* [27]  */
        unsigned int    sunmuter              : 1   ; /* [28]  */
        unsigned int    sunmutel              : 1   ; /* [29]  */
        unsigned int    smuter                : 1   ; /* [30]  */
        unsigned int    smutel                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;


} SC_PERI_TIANLAI_ADAC1;

typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pop_pu_pullb          : 1   ; /* [0]  */
        unsigned int    adj_cp                : 2   ; /* [2..1]  */
        unsigned int    pop_pullout_en        : 1   ; /* [3]  */
        unsigned int    gain                  : 3   ; /* [6..4]  */
        unsigned int    msel                  : 1   ; /* [7]  */
        unsigned int    cp_buffer_pd          : 1   ; /* [8]  */
        unsigned int    pop_spd_cfg           : 2   ; /* [10..9]  */
        unsigned int    pop_pdm_delay_cfg     : 2   ; /* [12..11]  */
        unsigned int    rst_pop               : 1   ; /* [13]  */
        unsigned int    pop_dis               : 1   ; /* [14]  */
        unsigned int    pd_lineout_org        : 1   ; /* [15]  */
        unsigned int    pop_clk_sel           : 2   ; /* [17..16]  */
        unsigned int    cp_dt_ctrl            : 2   ; /* [19..18]  */
        unsigned int    cp_clk_sel            : 2   ; /* [21..20]  */
        unsigned int    cp_en_soft            : 1   ; /* [22]  */
        unsigned int    cp_pd                 : 1   ; /* [23]  */
        unsigned int    fs                    : 1   ; /* [24]  */
        unsigned int    pd_vref               : 1   ; /* [25]  */
        unsigned int    pdb_ctcm_ibias        : 1   ; /* [26]  */
        unsigned int    pd_ctcm               : 1   ; /* [27]  */
        unsigned int    pd_ibias              : 1   ; /* [28]  */
        unsigned int    mute_lineout          : 1   ; /* [29]  */
        unsigned int    pd_dacr               : 1   ; /* [30]  */
        unsigned int    pd_dacl               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;
} SC_PERI_TIANLAI_ADAC2;


typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    adac_ctrl5            : 8   ; /* [7..0]  */
        unsigned int    adac_ctrl6            : 8   ; /* [15..8]  */
        unsigned int    adac_ctrl7            : 8   ; /* [23..16]  */
        unsigned int    adac_ctrl8            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} SC_PERI_TIANLAI_ADAC3;



// Define the union U_S40_TIANLAI_ADAC_CRG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int adac_cken             : 1; // [0]
        unsigned int Reserved_0            : 3; // [3..1]
        unsigned int adac_srst_req         : 1; // [4]
        unsigned int Reserved_1            : 27; // [31..5]
    } bits;

    // Define an unsigned member
    unsigned int u32;
} U_S40_TIANLAI_ADAC_CRG;

/***************************************************************************
Description:
    define emum varible
***************************************************************************/

/*****************************************************************************
 Description  : ADAC API
*****************************************************************************/
#ifdef HI_SND_MUTECTL_SUPPORT
HI_VOID ADAC_FastPowerEnable(HI_BOOL bEnable);
#endif
HI_VOID ADAC_TIANLAI_Init(HI_U32 uSampelRate, HI_BOOL bResume);
HI_VOID ADAC_TIANLAI_DeInit(HI_BOOL bSuspend);




#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __AUD_TIANLAI_ADAC_HAL_H__ */
