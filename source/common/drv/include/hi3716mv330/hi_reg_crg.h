// ****************************************************************************** 
// Copyright     :  Copyright (C) 2016, Hisilicon Technologies Co. Ltd.
// File name     :  hi_reg_crg.h
// Project line  :  
// Department    :  
// Author        :  xxx
// Version       :  1.0
// Date          :  2012/9/1
// Description   :  项目描述信息
// Others        :  Generated automatically by nManager V4.0.2.5 
// History       :  xxx 2016/02/04 17:30:32 Create file
// ******************************************************************************

#ifndef __HI_REG_CRG_H__
#define __HI_REG_CRG_H__

/* Define the union U_PERI_CRG_PLL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    apll_ctrl0            : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL0;

/* Define the union U_PERI_CRG_PLL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    apll_ctrl1            : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL1;

/* Define the union U_PERI_CRG_PLL2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bpll_ctrl0            : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL2;

/* Define the union U_PERI_CRG_PLL3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bpll_ctrl1            : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL3;

/* Define the union U_PERI_CRG_PLL4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dpll_ctrl0            : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL4;

/* Define the union U_PERI_CRG_PLL5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dpll_ctrl1            : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL5;

/* Define the union U_PERI_CRG_PLL6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vpll_ctrl0            : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL6;

/* Define the union U_PERI_CRG_PLL7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vpll_ctrl1            : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL7;

/* Define the union U_PERI_CRG_PLL8 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    epll_ctrl0            : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL8;

/* Define the union U_PERI_CRG_PLL9 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    epll_ctrl1            : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG_PLL9;

/* Define the union U_PERI_CRG18 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_freq_sel_cfg_crg  : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 7   ; /* [8..2]  */
        unsigned int    cpu_begin_cfg_bypass  : 1   ; /* [9]  */
        unsigned int    cpu_sw_begin_cfg      : 1   ; /* [10]  */
        unsigned int    reserved_1            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG18;

/* Define the union U_PERI_CRG20 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_clkoff_sys        : 1   ; /* [0]  */
        unsigned int    reserved_0            : 8   ; /* [8..1]  */
        unsigned int    a9_pclkdbg_cken       : 1   ; /* [9]  */
        unsigned int    reserved_1            : 1   ; /* [10]  */
        unsigned int    a9_peri_cken          : 1   ; /* [11]  */
        unsigned int    reserved_2            : 4   ; /* [15..12]  */
        unsigned int    arm_srst_req          : 1   ; /* [16]  */
        unsigned int    reserved_3            : 3   ; /* [19..17]  */
        unsigned int    cs_srst_req           : 1   ; /* [20]  */
        unsigned int    cluster_peri_srst_req : 1   ; /* [21]  */
        unsigned int    cluster_scu_srst_req  : 1   ; /* [22]  */
        unsigned int    reserved_4            : 1   ; /* [23]  */
        unsigned int    cluster_dbg_srst_req  : 1   ; /* [24]  */
        unsigned int    sc_wd_srst_req        : 1   ; /* [25]  */
        unsigned int    reserved_5            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG20;

/* Define the union U_PERI_CRG22 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    core_bus_clk_sel      : 2   ; /* [1..0]  */
        unsigned int    mde0_clk_sel          : 2   ; /* [3..2]  */
        unsigned int    mde1_clk_sel          : 2   ; /* [5..4]  */
        unsigned int    reserved_0            : 26  ; /* [31..6]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG22;

/* Define the union U_PERI_CRG23 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fmc_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    fmc_srst_req          : 1   ; /* [4]  */
        unsigned int    fmc_clk_sel           : 3   ; /* [7..5]  */
        unsigned int    reserved_1            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG23;

/* Define the union U_PERI_CRG25 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_cken              : 1   ; /* [0]  */
        unsigned int    ddrc_cken             : 1   ; /* [1]  */
        unsigned int    reserved_0            : 6   ; /* [7..2]  */
        unsigned int    ddrc_srst_req         : 1   ; /* [8]  */
        unsigned int    ddrt_srst_req         : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    ddrt_cken             : 1   ; /* [12]  */
        unsigned int    reserved_2            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG25;

/* Define the union U_PERI_CRG27 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    i2c_qam_cken          : 1   ; /* [0]  */
        unsigned int    i2c_qam_srst_req      : 1   ; /* [1]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    i2c0_cken             : 1   ; /* [4]  */
        unsigned int    i2c0_srst_req         : 1   ; /* [5]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    i2c1_cken             : 1   ; /* [8]  */
        unsigned int    i2c1_srst_req         : 1   ; /* [9]  */
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    i2c_adc_cken          : 1   ; /* [12]  */
        unsigned int    i2c_adc_srst_req      : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG27;

/* Define the union U_PERI_CRG28 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dnr_cken              : 1   ; /* [0]  */
        unsigned int    dnr_srst_req          : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG28;

/* Define the union U_PERI_CRG29 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    sci0_cken             : 1   ; /* [0]  */
        unsigned int    sci0_srst_req         : 1   ; /* [1]  */
        unsigned int    sci1_cken             : 1   ; /* [2]  */
        unsigned int    sci1_srst_req         : 1   ; /* [3]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG29;

/* Define the union U_PERI_CRG30 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdh_cken              : 1   ; /* [0]  */
        unsigned int    vdhdsp_cken           : 1   ; /* [1]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    vdh_all_srst_req      : 1   ; /* [4]  */
        unsigned int    vdh_scd_srst_req      : 1   ; /* [5]  */
        unsigned int    vdh_mfd_srst_req      : 1   ; /* [6]  */
        unsigned int    vdh_bpd_srst_req      : 1   ; /* [7]  */
        unsigned int    vdh_clk_sel           : 2   ; /* [9..8]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    vdhclk_skipcfg        : 5   ; /* [16..12]  */
        unsigned int    vdhclk_loaden         : 1   ; /* [17]  */
        unsigned int    reserved_2            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG30;

/* Define the union U_PERI_CRG31 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    jpgd_cken             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    jpgd_srst_req         : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    jpgd_clk_sel          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG31;

/* Define the union U_PERI_CRG37 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tde_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    tde_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    tde_clk_sel           : 2   ; /* [9..8]  */
        unsigned int    reserved_2            : 22  ; /* [31..10]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG37;

/* Define the union U_PERI_CRG46 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    usb2_bus_cken         : 1   ; /* [0]  */
        unsigned int    usb2_ohci48m_cken     : 1   ; /* [1]  */
        unsigned int    usb2_ohci12m_cken     : 1   ; /* [2]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    usb2_hst_phy_cken     : 1   ; /* [4]  */
        unsigned int    usb2_utmi0_cken       : 1   ; /* [5]  */
        unsigned int    usb2_utmi1_cken       : 1   ; /* [6]  */
        unsigned int    usb2_otg_utmi_cken    : 1   ; /* [7]  */
        unsigned int    reserved_1            : 4   ; /* [11..8]  */
        unsigned int    usb2_bus_srst_req     : 1   ; /* [12]  */
        unsigned int    usb2_utmi0_srst_req   : 1   ; /* [13]  */
        unsigned int    usb2_utmi1_srst_req   : 1   ; /* [14]  */
        unsigned int    usb2_otg_phy_srst_req : 1   ; /* [15]  */
        unsigned int    usb2_hst_phy_srst_req : 1   ; /* [16]  */
        unsigned int    reserved_2            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG46;

/* Define the union U_PERI_CRG47 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    usb2_phy_ref_cken     : 1   ; /* [0]  */
        unsigned int    reserved_0            : 7   ; /* [7..1]  */
        unsigned int    usb2_phy_srst_req     : 1   ; /* [8]  */
        unsigned int    usb2_phy_srst_treq0   : 1   ; /* [9]  */
        unsigned int    usb2_phy_clk12_sel    : 1   ; /* [10]  */
        unsigned int    usb2_phy_srst_treq1   : 1   ; /* [11]  */
        unsigned int    reserved_1            : 4   ; /* [15..12]  */
        unsigned int    usb2_phy_refclk_sel   : 1   ; /* [16]  */
        unsigned int    reserved_2            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG47;

/* Define the union U_PERI_CRG48 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    sha_cken              : 1   ; /* [0]  */
        unsigned int    sha_srst_req          : 1   ; /* [1]  */
        unsigned int    ca_ci_srst_req        : 1   ; /* [2]  */
        unsigned int    otp_srst_req          : 1   ; /* [3]  */
        unsigned int    ca_ci_clk_sel         : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG48;

/* Define the union U_PERI_CRG50 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    hpm_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG50;

/* Define the union U_PERI_CRG51 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fephy_cken            : 1   ; /* [0]  */
        unsigned int    fephy_srst_req        : 1   ; /* [1]  */
        unsigned int    reserved_0            : 10  ; /* [11..2]  */
        unsigned int    eth_cken              : 1   ; /* [12]  */
        unsigned int    eth_bus_cken          : 1   ; /* [13]  */
        unsigned int    hrst_eth_s            : 1   ; /* [14]  */
        unsigned int    eth_clk_sel           : 1   ; /* [15]  */
        unsigned int    reserved_1            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG51;

/* Define the union U_PERI_CRG54 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vo_bus_cken           : 1   ; /* [0]  */
        unsigned int    reserved_0            : 1   ; /* [1]  */
        unsigned int    vo_sd_cken            : 1   ; /* [2]  */
        unsigned int    vo_sdate_cken         : 1   ; /* [3]  */
        unsigned int    vo_hd_cken            : 1   ; /* [4]  */
        unsigned int    vo_hdate_cken         : 1   ; /* [5]  */
        unsigned int    vdac_ch0_cken         : 1   ; /* [6]  */
        unsigned int    vdac_ch1_cken         : 1   ; /* [7]  */
        unsigned int    vdac_ch2_cken         : 1   ; /* [8]  */
        unsigned int    vdac_ch3_cken         : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    vo_sd_clk_sel         : 1   ; /* [12]  */
        unsigned int    vo_sddac_sel          : 1   ; /* [13]  */
        unsigned int    vo_sdac_cken          : 1   ; /* [14]  */
        unsigned int    vo_hdac_cken          : 1   ; /* [15]  */
        unsigned int    vo_hd_clk_sel         : 1   ; /* [16]  */
        unsigned int    vo_hddac_sel          : 1   ; /* [17]  */
        unsigned int    vo_hd_clk_div         : 2   ; /* [19..18]  */
        unsigned int    vdac_ch0_clk_sel      : 1   ; /* [20]  */
        unsigned int    vdac_ch1_clk_sel      : 1   ; /* [21]  */
        unsigned int    vdac_ch2_clk_sel      : 1   ; /* [22]  */
        unsigned int    vdac_ch3_clk_sel      : 1   ; /* [23]  */
        unsigned int    vdac_test_clk_sel     : 1   ; /* [24]  */
        unsigned int    reserved_2            : 1   ; /* [25]  */
        unsigned int    hdmi_clk_sel          : 1   ; /* [26]  */
        unsigned int    reserved_3            : 3   ; /* [29..27]  */
        unsigned int    vou_srst_req          : 1   ; /* [30]  */
        unsigned int    reserved_4            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG54;

/* Define the union U_PERI_CRG56 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    qtc_bus_cken          : 1   ; /* [0]  */
        unsigned int    qtc_cken              : 1   ; /* [1]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    qtc_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    qtc_clk_pctrl         : 1   ; /* [8]  */
        unsigned int    reserved_2            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG56;

/* Define the union U_PERI_CRG57 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    qam_2x_cken           : 1   ; /* [0]  */
        unsigned int    qam_1x_cken           : 1   ; /* [1]  */
        unsigned int    reserved_0            : 1   ; /* [2]  */
        unsigned int    qam_j83ac_cken        : 1   ; /* [3]  */
        unsigned int    qam_ads_cken          : 1   ; /* [4]  */
        unsigned int    qam_ts_cken           : 1   ; /* [5]  */
        unsigned int    qam_tsout_cken        : 1   ; /* [6]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    qam_2x_srst_req       : 1   ; /* [8]  */
        unsigned int    qam_1x_srst_req       : 1   ; /* [9]  */
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    qam_ads_srst_req      : 1   ; /* [12]  */
        unsigned int    qam_ts_srst_req       : 1   ; /* [13]  */
        unsigned int    reserved_3            : 2   ; /* [15..14]  */
        unsigned int    qam_tsout_pctrl       : 1   ; /* [16]  */
        unsigned int    qam_adsclk_pctrl      : 1   ; /* [17]  */
        unsigned int    qam_ts_clk_sel        : 1   ; /* [18]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    qam_ts_clk_div        : 4   ; /* [23..20]  */
        unsigned int    qam2x_clk_sel         : 1   ; /* [24]  */
        unsigned int    reserved_5            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG57;

/* Define the union U_PERI_CRG58 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    qamadc_clk_sel        : 2   ; /* [9..8]  */
        unsigned int    qamctrl_clk_sel       : 2   ; /* [11..10]  */
        unsigned int    qamctrl_clk_div       : 1   ; /* [12]  */
        unsigned int    reserved_1            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG58;

/* Define the union U_PERI_CRG63 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pvr_bus_cken          : 1   ; /* [0]  */
        unsigned int    pvr_dmx_cken          : 1   ; /* [1]  */
        unsigned int    pvr_27m_cken          : 1   ; /* [2]  */
        unsigned int    pvr_tsi1_cken         : 1   ; /* [3]  */
        unsigned int    pvr_tsi2_cken         : 1   ; /* [4]  */
        unsigned int    pvr_tsi3_cken         : 1   ; /* [5]  */
        unsigned int    pvr_tsi4_cken         : 1   ; /* [6]  */
        unsigned int    pvr_tsi5_cken         : 1   ; /* [7]  */
        unsigned int    reserved_0            : 2   ; /* [9..8]  */
        unsigned int    pvr_ts0_cken          : 1   ; /* [10]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    pvr_tsout0_cken       : 1   ; /* [12]  */
        unsigned int    pvr_tsi3_sel          : 1   ; /* [13]  */
        unsigned int    pvr_tsi4_sel          : 1   ; /* [14]  */
        unsigned int    pvr_tsi5_sel          : 1   ; /* [15]  */
        unsigned int    pvr_tsi2_pctrl        : 1   ; /* [16]  */
        unsigned int    pvr_tsi3_pctrl        : 1   ; /* [17]  */
        unsigned int    pvr_tsi4_pctrl        : 1   ; /* [18]  */
        unsigned int    pvr_tsi5_pctrl        : 1   ; /* [19]  */
        unsigned int    reserved_2            : 2   ; /* [21..20]  */
        unsigned int    pvr_srst_req          : 1   ; /* [22]  */
        unsigned int    reserved_3            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG63;

/* Define the union U_PERI_CRG64 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pvr_tsout0_pctrl      : 1   ; /* [0]  */
        unsigned int    reserved_0            : 1   ; /* [1]  */
        unsigned int    pvr_dmx_clk_sel       : 2   ; /* [3..2]  */
        unsigned int    sw_dmx_clk_div        : 5   ; /* [8..4]  */
        unsigned int    sw_dmxclk_loaden      : 1   ; /* [9]  */
        unsigned int    pvr_dmx_clkdiv_cfg    : 1   ; /* [10]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    pvr_ts0_clk_sel       : 2   ; /* [13..12]  */
        unsigned int    reserved_2            : 2   ; /* [15..14]  */
        unsigned int    pvr_ts0_clk_div       : 4   ; /* [19..16]  */
        unsigned int    reserved_3            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG64;

/* Define the union U_PERI_CRG67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hdmitx_ctrl_bus_cken  : 1   ; /* [0]  */
        unsigned int    hdmitx_ctrl_cec_cken  : 1   ; /* [1]  */
        unsigned int    hdmitx_ctrl_id_cken   : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_mhl_cken  : 1   ; /* [3]  */
        unsigned int    hdmitx_ctrl_os_cken   : 1   ; /* [4]  */
        unsigned int    hdmitx_ctrl_as_cken   : 1   ; /* [5]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    hdmitx_ctrl_bus_srst_req : 1   ; /* [8]  */
        unsigned int    hdmitx_ctrl_srst_req  : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    hdmitx_ctrl_cec_clk_sel : 1   ; /* [12]  */
        unsigned int    reserved_2            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG67;

/* Define the union U_PERI_CRG68 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    phy_tmds_cken         : 1   ; /* [0]  */
        unsigned int    ssc_in_cken           : 1   ; /* [1]  */
        unsigned int    ssc_bypass_cken       : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_osc_24m_cken : 1   ; /* [3]  */
        unsigned int    hdmitx_phy_srst_req   : 1   ; /* [4]  */
        unsigned int    vdp_hdmi_srst_req     : 1   ; /* [5]  */
        unsigned int    phy_tmds_srst_req     : 1   ; /* [6]  */
        unsigned int    ssc_clk_div           : 4   ; /* [10..7]  */
        unsigned int    reserved_0            : 1   ; /* [11]  */
        unsigned int    tmds_clk_div          : 3   ; /* [14..12]  */
        unsigned int    reserved_1            : 1   ; /* [15]  */
        unsigned int    vou_clk_div           : 5   ; /* [20..16]  */
        unsigned int    reserved_2            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG68;

/* Define the union U_PERI_CRG69 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    adac_cken             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    adac_srst_req         : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG69;

/* Define the union U_PERI_CRG70 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    aiao_cken             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    aiao_srst_req         : 1   ; /* [4]  */
        unsigned int    reserved_1            : 7   ; /* [11..5]  */
        unsigned int    aiaoclk_skipcfg       : 5   ; /* [16..12]  */
        unsigned int    aiaoclk_loaden        : 1   ; /* [17]  */
        unsigned int    reserved_2            : 2   ; /* [19..18]  */
        unsigned int    aiao_mclk_sel         : 1   ; /* [20]  */
        unsigned int    reserved_3            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG70;

/* Define the union U_PERI_CRG71 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdac_chop_cken        : 1   ; /* [0]  */
        unsigned int    reserved_0            : 15  ; /* [15..1]  */
        unsigned int    vdac_3_clk_pctrl      : 1   ; /* [16]  */
        unsigned int    vdac_0_clk_pctrl      : 1   ; /* [17]  */
        unsigned int    vdac_1_clk_pctrl      : 1   ; /* [18]  */
        unsigned int    vdac_2_clk_pctrl      : 1   ; /* [19]  */
        unsigned int    reserved_1            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG71;

/* Define the union U_PERI_CRG73 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 11  ; /* [10..0]  */
        unsigned int    hpm1_pc_valid         : 1   ; /* [11]  */
        unsigned int    hpm1_pc_org           : 10  ; /* [21..12]  */
        unsigned int    reserved_1            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG73;

/* Define the union U_PERI_CRG74 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_freq_sel_cfg_crg  : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 7   ; /* [8..2]  */
        unsigned int    ddr_begin_cfg_bypass  : 1   ; /* [9]  */
        unsigned int    ddr_sw_begin_cfg      : 1   ; /* [10]  */
        unsigned int    reserved_1            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG74;

/* Define the union U_PERI_CRG77 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dpll_ssmod_ctrl       : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG77;

/* Define the union U_PERI_CRG84 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pll_lock              : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG84;

/* Define the union U_PERI_CRG85 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_clk_sw_ok_crg     : 1   ; /* [0]  */
        unsigned int    cpu_clk_mux           : 2   ; /* [2..1]  */
        unsigned int    reserved_0            : 5   ; /* [7..3]  */
        unsigned int    ddr_clk_sw_ok_crg     : 1   ; /* [8]  */
        unsigned int    ddr_clk_mux           : 2   ; /* [10..9]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    core_bus_clk_seled    : 2   ; /* [13..12]  */
        unsigned int    reserved_2            : 6   ; /* [19..14]  */
        unsigned int    mde0_clk_seled        : 2   ; /* [21..20]  */
        unsigned int    mde1_clk_seled        : 2   ; /* [23..22]  */
        unsigned int    reserved_3            : 5   ; /* [28..24]  */
        unsigned int    vdh_clk_seled         : 2   ; /* [30..29]  */
        unsigned int    reserved_4            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG85;

/* Define the union U_PERI_CRG86 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_pll_cfg0_sw       : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG86;

/* Define the union U_PERI_CRG87 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_pll_cfg1_sw       : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG87;

/* Define the union U_PERI_CRG88 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_pll_cfg0_sw       : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG88;

/* Define the union U_PERI_CRG89 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_pll_cfg1_sw       : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG89;

/* Define the union U_PERI_CRG90 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    eco_reg               : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG90;

typedef union
{
    struct
    {
        unsigned int    vdh_all_rst_ok        : 1   ; /* [0]  */
        unsigned int    vdh_scd_rst_ok        : 1   ; /* [1]  */
        unsigned int    vdh_mfd_rst_ok        : 1   ; /* [2]  */
        unsigned int    vdh_bpd_rst_ok        : 1   ; /* [3]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;
    unsigned int    u32;
} U_PERI_CRG93;
/* Define the union U_PERI_CRG94 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wdg0_cken             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    wdg0_srst_req         : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG94;

/* Define the union U_PERI_CRG95 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pll_test_en           : 1   ; /* [0]  */
        unsigned int    test_clk_sel          : 1   ; /* [1]  */
        unsigned int    test_clk_en           : 1   ; /* [2]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG95;

/* Define the union U_PERI_CRG96 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    mem_adjust_cpu        : 20  ; /* [19..0]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG96;

/* Define the union U_PERI_CRG97 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm1_div              : 6   ; /* [5..0]  */
        unsigned int    hpm1_shift            : 2   ; /* [7..6]  */
        unsigned int    hpm1_offset           : 2   ; /* [9..8]  */
        unsigned int    reserved_0            : 8   ; /* [17..10]  */
        unsigned int    hpm1_en               : 1   ; /* [18]  */
        unsigned int    hpm1_bypass           : 1   ; /* [19]  */
        unsigned int    hpm1_monitor_en       : 1   ; /* [20]  */
        unsigned int    hpm1_rst_req          : 1   ; /* [21]  */
        unsigned int    hpm1_monitor_period_fine : 8   ; /* [29..22]  */
        unsigned int    reserved_1            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG97;

/* Define the union U_PERI_CRG100 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm1_pc_record0       : 10  ; /* [9..0]  */
        unsigned int    hpm1_pc_record1       : 10  ; /* [19..10]  */
        unsigned int    hpm1_pc_record2       : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG100;

/* Define the union U_PERI_CRG101 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm1_pc_record3       : 10  ; /* [9..0]  */
        unsigned int    hpm1_rcc              : 5   ; /* [14..10]  */
        unsigned int    hpm1_up_warning       : 1   ; /* [15]  */
        unsigned int    hpm1_low_warning      : 1   ; /* [16]  */
        unsigned int    reserved_0            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG101;

/* Define the union U_PERI_CRG102 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm1_uplimit          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    hpm1_lowlimit         : 10  ; /* [21..12]  */
        unsigned int    reserved_1            : 2   ; /* [23..22]  */
        unsigned int    hpm1_monitor_period   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG102;

//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile U_PERI_CRG_PLL0        PERI_CRG_PLL0;
    volatile U_PERI_CRG_PLL1        PERI_CRG_PLL1;
    volatile U_PERI_CRG_PLL2        PERI_CRG_PLL2;
    volatile U_PERI_CRG_PLL3        PERI_CRG_PLL3;
    volatile U_PERI_CRG_PLL4        PERI_CRG_PLL4;
    volatile U_PERI_CRG_PLL5        PERI_CRG_PLL5;
    volatile unsigned int           reserved_0[2]                     ; /* 0x18~0x1c */
    volatile U_PERI_CRG_PLL6        PERI_CRG_PLL6;
    volatile U_PERI_CRG_PLL7        PERI_CRG_PLL7;
    volatile unsigned int           reserved_1[2]                     ; /* 0x28~0x2c */
    volatile U_PERI_CRG_PLL8        PERI_CRG_PLL8;
    volatile U_PERI_CRG_PLL9        PERI_CRG_PLL9;
    volatile unsigned int           reserved_2[4]                     ; /* 0x38~0x44 */
    volatile U_PERI_CRG18           PERI_CRG18;
    volatile unsigned int           reserved_3                     ; /* 0x4c */
    volatile U_PERI_CRG20           PERI_CRG20;
    volatile unsigned int           reserved_4                     ; /* 0x54 */
    volatile U_PERI_CRG22           PERI_CRG22;
    volatile U_PERI_CRG23           PERI_CRG23;
    volatile unsigned int           reserved_5                     ; /* 0x60 */
    volatile U_PERI_CRG25           PERI_CRG25;
    volatile unsigned int           reserved_6                     ; /* 0x68 */
    volatile U_PERI_CRG27           PERI_CRG27;
    volatile U_PERI_CRG28           PERI_CRG28;
    volatile U_PERI_CRG29           PERI_CRG29;
    volatile U_PERI_CRG30           PERI_CRG30;
    volatile U_PERI_CRG31           PERI_CRG31;
    volatile unsigned int           reserved_7[5]                     ; /* 0x80~0x90 */
    volatile U_PERI_CRG37           PERI_CRG37;
    volatile unsigned int           reserved_8[8]                     ; /* 0x98~0xb4 */
    volatile U_PERI_CRG46           PERI_CRG46;
    volatile U_PERI_CRG47           PERI_CRG47;
    volatile U_PERI_CRG48           PERI_CRG48;
    volatile unsigned int           reserved_9                     ; /* 0xc4 */
    volatile U_PERI_CRG50           PERI_CRG50;
    volatile U_PERI_CRG51           PERI_CRG51;
    volatile unsigned int           reserved_10[2]                     ; /* 0xd0~0xd4 */
    volatile U_PERI_CRG54           PERI_CRG54;
    volatile unsigned int           reserved_11                     ; /* 0xdc */
    volatile U_PERI_CRG56           PERI_CRG56;
    volatile U_PERI_CRG57           PERI_CRG57;
    volatile U_PERI_CRG58           PERI_CRG58;
    volatile unsigned int           reserved_12[4]                     ; /* 0xec~0xf8 */
    volatile U_PERI_CRG63           PERI_CRG63;
    volatile U_PERI_CRG64           PERI_CRG64;
    volatile unsigned int           reserved_13[2]                     ; /* 0x104~0x108 */
    volatile U_PERI_CRG67           PERI_CRG67;
    volatile U_PERI_CRG68           PERI_CRG68;
    volatile U_PERI_CRG69           PERI_CRG69;
    volatile U_PERI_CRG70           PERI_CRG70;
    volatile U_PERI_CRG71           PERI_CRG71;
    volatile unsigned int           reserved_14                     ; /* 0x120 */
    volatile U_PERI_CRG73           PERI_CRG73;
    volatile U_PERI_CRG74           PERI_CRG74;
    volatile unsigned int           reserved_15[2]                     ; /* 0x12c~0x130 */
    volatile U_PERI_CRG77           PERI_CRG77;
    volatile unsigned int           reserved_16[6]                     ; /* 0x138~0x14c */
    volatile U_PERI_CRG84           PERI_CRG84;
    volatile U_PERI_CRG85           PERI_CRG85;
    volatile U_PERI_CRG86           PERI_CRG86;
    volatile U_PERI_CRG87           PERI_CRG87;
    volatile U_PERI_CRG88           PERI_CRG88;
    volatile U_PERI_CRG89           PERI_CRG89;
    volatile U_PERI_CRG90           PERI_CRG90;
    volatile unsigned int           reserved_17[2]                     ; /* 0x16c~0x170 */
    volatile U_PERI_CRG93           PERI_CRG93;
    volatile U_PERI_CRG94           PERI_CRG94;
    volatile U_PERI_CRG95           PERI_CRG95;
    volatile U_PERI_CRG96           PERI_CRG96;
    volatile U_PERI_CRG97           PERI_CRG97;
    volatile unsigned int           reserved_18[2]                     ; /* 0x188~0x18c */
    volatile U_PERI_CRG100          PERI_CRG100;
    volatile U_PERI_CRG101          PERI_CRG101;
    volatile U_PERI_CRG102          PERI_CRG102;

} S_CRG_REGS_TYPE;


#endif /* __HI_REG_CRG_H__ */
