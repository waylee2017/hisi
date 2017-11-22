//****************************************************************************** 
// Copyright     :  Copyright (C) 2014, Hisilicon Technologies Co., Ltd.
// File name     :  hi_reg_crg.h
// Author        :  xxx
// Version       :  1.0 
// Date          :  2014-10-21
// Description   :  Define all registers/tables for xxx
// Others        :  Generated automatically by nManager V4.0 
// History       :  xxx 2014-10-21 Create file
//******************************************************************************

#ifndef __HI_REG_CRG_H__
#define __HI_REG_CRG_H__

/* Define the union U_PERI_CRG0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_pll_cfg0_apb      : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG0;

/* Define the union U_PERI_CRG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_pll_cfg1_apb      : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG1;

/* Define the union U_PERI_CRG2 */
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

} U_PERI_CRG2;

/* Define the union U_PERI_CRG3 */
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

} U_PERI_CRG3;

/* Define the union U_PERI_CRG4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_pll_cfg0_apb      : 31  ; /* [30..0]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG4;

/* Define the union U_PERI_CRG5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_pll_cfg1_apb      : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG5;

/* Define the union U_PERI_CRG8 */
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

} U_PERI_CRG8;

/* Define the union U_PERI_CRG9 */
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

} U_PERI_CRG9;

/* Define the union U_PERI_CRG12 */
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

} U_PERI_CRG12;

/* Define the union U_PERI_CRG13 */
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

} U_PERI_CRG13;

/* Define the union U_PERI_CRG18 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_freq_sel_cfg_crg  : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    cpu_freq_div_cfg_crg  : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    cpu_div_cfg_bypass    : 1   ; /* [8]  */
        unsigned int    cpu_begin_cfg_bypass  : 1   ; /* [9]  */
        unsigned int    cpu_sw_begin_cfg      : 1   ; /* [10]  */
        unsigned int    reserved_2            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG18;

/* Define the union U_PERI_CRG19 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    timeout_plllock       : 12  ; /* [11..0]  */
        unsigned int    lock_bypass           : 1   ; /* [12]  */
        unsigned int    pll_cfg_bypass        : 1   ; /* [13]  */
        unsigned int    reserved_0            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG19;

/* Define the union U_PERI_CRG20 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_clkoff_sys        : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    l2_clkoff_sys         : 1   ; /* [4]  */
        unsigned int    reserved_1            : 4   ; /* [8..5]  */
        unsigned int    a9_pclkdbg_cken       : 1   ; /* [9]  */
        unsigned int    reserved_2            : 1   ; /* [10]  */
        unsigned int    a9_peri_cken          : 1   ; /* [11]  */
        unsigned int    reserved_3            : 4   ; /* [15..12]  */
        unsigned int    arm_srst_req          : 1   ; /* [16]  */
        unsigned int    reserved_4            : 3   ; /* [19..17]  */
        unsigned int    cs_srst_req           : 1   ; /* [20]  */
        unsigned int    cluster_peri_srst_req : 1   ; /* [21]  */
        unsigned int    cluster_scu_srst_req  : 1   ; /* [22]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    cluster_dbg_srst_req  : 2   ; /* [25..24]  */
        unsigned int    sc_wd_srst_req        : 2   ; /* [27..26]  */
        unsigned int    reserved_6            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG20;

/* Define the union U_PERI_CRG21 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    l2_clk_div            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 6   ; /* [7..2]  */
        unsigned int    peri_clk_div          : 3   ; /* [10..8]  */
        unsigned int    reserved_1            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG21;

/* Define the union U_PERI_CRG22 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    core_bus_clk_sel      : 2   ; /* [1..0]  */
        unsigned int    mde0_clk_sel          : 2   ; /* [3..2]  */
        unsigned int    mde1_clk_sel          : 2   ; /* [5..4]  */
        unsigned int    bus_200m_sel          : 2   ; /* [7..6]  */
        unsigned int    clk_28p8m_sel         : 1   ; /* [8]  */
        unsigned int    clk_27m_sel           : 1   ; /* [9]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    core_bus_clk_div      : 2   ; /* [13..12]  */
        unsigned int    reserved_1            : 18  ; /* [31..14]  */
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
        unsigned int    sfc_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 2   ; /* [2..1]  */
        unsigned int    sfc_clk2x_srst_req    : 1   ; /* [3]  */
        unsigned int    sfc_srst_req          : 1   ; /* [4]  */
        unsigned int    sfc_clk2x_cken        : 1   ; /* [5]  */
        unsigned int    sfc_nand_cken         : 1   ; /* [6]  */
        unsigned int    sfc_nand_srst_req     : 1   ; /* [7]  */
        unsigned int    sfc_clk_sel           : 3   ; /* [10..8]  */
        unsigned int    reserved_1            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG23;

/* Define the union U_PERI_CRG24 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    nf_cken               : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    nf_srst_req           : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    nf_clk_sel            : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG24;

/* Define the union U_PERI_CRG25 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddr_cken              : 1   ; /* [0]  */
        unsigned int    ddrphy_cken           : 1   ; /* [1]  */
        unsigned int    hipack_cken           : 1   ; /* [2]  */
        unsigned int    ddrc_cken             : 1   ; /* [3]  */
        unsigned int    reserved_0            : 4   ; /* [7..4]  */
        unsigned int    hipack_srst_req       : 1   ; /* [8]  */
        unsigned int    ddrc_srst_req         : 1   ; /* [9]  */
        unsigned int    ddrt_srst_req         : 1   ; /* [10]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    ddrt_cken             : 1   ; /* [12]  */
        unsigned int    reserved_2            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG25;

/* Define the union U_PERI_CRG26 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    uart_cken             : 1   ; /* [0]  */
        unsigned int    uart_srst_req         : 1   ; /* [1]  */
        unsigned int    reserved_0            : 3   ; /* [4..2]  */
        unsigned int    core_uart_clk_sel     : 1   ; /* [5]  */
        unsigned int    reserved_1            : 26  ; /* [31..6]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG26;

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
        unsigned int    sci_cken              : 1   ; /* [0]  */
        unsigned int    sci_srst_req          : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
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
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    vdh_clk_sel           : 2   ; /* [9..8]  */
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    vdhclk_skipcfg        : 5   ; /* [16..12]  */
        unsigned int    vdhclk_loaden         : 1   ; /* [17]  */
        unsigned int    reserved_3            : 14  ; /* [31..18]  */
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

/* Define the union U_PERI_CRG33 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pgd_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    pgd_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG33;

/* Define the union U_PERI_CRG34 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bpd_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    bpd_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG34;

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
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    tdeclk_skipcfg        : 5   ; /* [16..12]  */
        unsigned int    tdeclk_loaden         : 1   ; /* [17]  */
        unsigned int    reserved_3            : 14  ; /* [31..18]  */
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
        unsigned int    reserved_1            : 5   ; /* [11..7]  */
        unsigned int    usb2_bus_srst_req     : 1   ; /* [12]  */
        unsigned int    usb2_utmi0_srst_req   : 1   ; /* [13]  */
        unsigned int    usb2_utmi1_srst_req   : 1   ; /* [14]  */
        unsigned int    reserved_2            : 1   ; /* [15]  */
        unsigned int    usb2_hst_phy_srst_req : 1   ; /* [16]  */
        unsigned int    reserved_3            : 1   ; /* [17]  */
        unsigned int    reserved_4            : 2   ; /* [19..18]  */
        unsigned int    usb2_clk48_sel        : 1   ; /* [20]  */
        unsigned int    reserved_5            : 11  ; /* [31..21]  */
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
        unsigned int    reserved_1            : 1   ; /* [10]  */
        unsigned int    usb2_phy_srst_treq1   : 1   ; /* [11]  */
        unsigned int    reserved_2            : 4   ; /* [15..12]  */
        unsigned int    usb2_phy_refclk_sel   : 1   ; /* [16]  */
        unsigned int    reserved_3            : 15  ; /* [31..17]  */
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
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    ca_kl_srst_req        : 1   ; /* [8]  */
        unsigned int    ca_ci_srst_req        : 1   ; /* [9]  */
        unsigned int    otp_srst_req          : 1   ; /* [10]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    ca_ci_clk_sel         : 1   ; /* [12]  */
        unsigned int    reserved_2            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG48;

/* Define the union U_PERI_CRG49 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    sha_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    sha_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG49;

/* Define the union U_PERI_CRG50 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pmc_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    pmc_srst_req          : 1   ; /* [4]  */
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
        unsigned int    sf_bus_cken           : 1   ; /* [0]  */
        unsigned int    sf_cken               : 1   ; /* [1]  */
        unsigned int    sf_clk_sel            : 1   ; /* [2]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    sf_bus_srst_req       : 1   ; /* [4]  */
        unsigned int    sf_srst_req           : 1   ; /* [5]  */
        unsigned int    reserved_1            : 6   ; /* [11..6]  */
        unsigned int    rmii0_in_cken         : 1   ; /* [12]  */
        unsigned int    rmii1_in_cken         : 1   ; /* [13]  */
        unsigned int    rmii0_out_cken        : 1   ; /* [14]  */
        unsigned int    rmii1_out_cken        : 1   ; /* [15]  */
        unsigned int    sf_rmii0_clk_oen      : 1   ; /* [16]  */
        unsigned int    sf_rmii1_clk_oen      : 1   ; /* [17]  */
        unsigned int    reserved_2            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG51;

/* Define the union U_PERI_CRG53 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vosd_clk_sel          : 1   ; /* [0]  */
        unsigned int    reserved_0            : 1   ; /* [1]  */
        unsigned int    vohd_clk_sel          : 2   ; /* [3..2]  */
        unsigned int    reserved_1            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG53;

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
        unsigned int    reserved_2            : 2   ; /* [25..24]  */
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
        unsigned int    qam_j83b_cken         : 1   ; /* [2]  */
        unsigned int    qam_j83ac_cken        : 1   ; /* [3]  */
        unsigned int    qam_ads_cken          : 1   ; /* [4]  */
        unsigned int    qam_ts_cken           : 1   ; /* [5]  */
        unsigned int    qam_tsout_cken        : 1   ; /* [6]  */
        unsigned int    reserved_0            : 1   ; /* [7]  */
        unsigned int    qam_2x_srst_req       : 1   ; /* [8]  */
        unsigned int    qam_1x_srst_req       : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    qam_ads_srst_req      : 1   ; /* [12]  */
        unsigned int    qam_ts_srst_req       : 1   ; /* [13]  */
        unsigned int    reserved_2            : 2   ; /* [15..14]  */
        unsigned int    qam_tsout_pctrl       : 1   ; /* [16]  */
        unsigned int    qam_adsclk_pctrl      : 1   ; /* [17]  */
        unsigned int    qam_ts_clk_sel        : 2   ; /* [19..18]  */
        unsigned int    qam_ts_clk_div        : 4   ; /* [23..20]  */
        unsigned int    qam2x_clk_sel         : 1   ; /* [24]  */
        unsigned int    reserved_3            : 7   ; /* [31..25]  */
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
        unsigned int    reserved_2            : 1   ; /* [13]  */
        unsigned int    hdmitx_ctrl_asclk_sel : 1   ; /* [14]  */
        unsigned int    reserved_3            : 17  ; /* [31..15]  */
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
        unsigned int    hdmitx_phy_bus_cken   : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    hdmitx_phy_srst_req   : 1   ; /* [4]  */
        unsigned int    reserved_1            : 27  ; /* [31..5]  */
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
        unsigned int    aiao_mclk_sel         : 2   ; /* [21..20]  */
        unsigned int    reserved_3            : 10  ; /* [31..22]  */
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
        unsigned int    vdac_c_clk_pctrl      : 1   ; /* [16]  */
        unsigned int    vdac_r_clk_pctrl      : 1   ; /* [17]  */
        unsigned int    vdac_g_clk_pctrl      : 1   ; /* [18]  */
        unsigned int    vdac_b_clk_pctrl      : 1   ; /* [19]  */
        unsigned int    reserved_1            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG71;

/* Define the union U_PERI_CRG72 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fephy_cken            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    fephy_srst_req        : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    fephy_clk_sel         : 1   ; /* [8]  */
        unsigned int    reserved_2            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG72;

/* Define the union U_PERI_CRG73 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm0_pc_valid         : 1   ; /* [0]  */
        unsigned int    hpm0_pc_org           : 10  ; /* [10..1]  */
        unsigned int    hpm1_pc_valid         : 1   ; /* [11]  */
        unsigned int    hpm1_pc_org           : 10  ; /* [21..12]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
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
        unsigned int    ddr_freq_sel_cfg_crg  : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ddr_freq_div_cfg_crg  : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ddr_div_cfg_bypass    : 1   ; /* [8]  */
        unsigned int    ddr_begin_cfg_bypass  : 1   ; /* [9]  */
        unsigned int    ddr_sw_begin_cfg      : 1   ; /* [10]  */
        unsigned int    reserved_2            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG74;

/* Define the union U_PERI_CRG75 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    apll_ssmod_ctrl       : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG75;

/* Define the union U_PERI_CRG76 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bpll_ssmod_ctrl       : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG76;

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

/* Define the union U_PERI_CRG79 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vpll_ssmod_ctrl       : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG79;

/* Define the union U_PERI_CRG81 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    epll_ssmod_ctrl       : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG81;

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
        unsigned int    cpu_clk_mux           : 3   ; /* [3..1]  */
        unsigned int    reserved_0            : 4   ; /* [7..4]  */
        unsigned int    ddr_clk_sw_ok_crg     : 1   ; /* [8]  */
        unsigned int    ddr_clk_mux           : 3   ; /* [11..9]  */
        unsigned int    core_bus_clk_seled    : 3   ; /* [14..12]  */
        unsigned int    sfc_clk_seled         : 1   ; /* [15]  */
        unsigned int    bus_200m_seled        : 2   ; /* [17..16]  */
        unsigned int    reserved_1            : 2   ; /* [19..18]  */
        unsigned int    mde0_clk_seled        : 2   ; /* [21..20]  */
        unsigned int    mde1_clk_seled        : 2   ; /* [23..22]  */
        unsigned int    reserved_2            : 5   ; /* [28..24]  */
        unsigned int    vdh_clk_seled         : 2   ; /* [30..29]  */
        unsigned int    reserved_3            : 1   ; /* [31]  */
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
        unsigned int    reserved_0            : 1   ; /* [0]  */
        unsigned int    fe_rstn_out           : 1   ; /* [1]  */
        unsigned int    reserved_1            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG90;

/* Define the union U_PERI_CRG91 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm0_div              : 6   ; /* [5..0]  */
        unsigned int    hpm0_shift            : 2   ; /* [7..6]  */
        unsigned int    hpm0_offset           : 10  ; /* [17..8]  */
        unsigned int    hpm0_en               : 1   ; /* [18]  */
        unsigned int    hpm0_bypass           : 1   ; /* [19]  */
        unsigned int    hpm0_monitor_en       : 1   ; /* [20]  */
        unsigned int    hpm0_rst_req          : 1   ; /* [21]  */
        unsigned int    hpm0_monitor_period_fine : 9   ; /* [30..22]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG91;

/* Define the union U_PERI_CRG92 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm0_uplimit          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    hpm0_lowlimit         : 10  ; /* [21..12]  */
        unsigned int    reserved_1            : 2   ; /* [23..22]  */
        unsigned int    hpm0_monitor_period   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG92;

/* Define the union U_PERI_CRG93 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdh_all_rst_ok        : 1   ; /* [0]  */
        unsigned int    vdh_scd_rst_ok        : 1   ; /* [1]  */
        unsigned int    vdh_mfd_rst_ok        : 1   ; /* [2]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG93;

/* Define the union U_PERI_CRG94 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wdg_cken              : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    wdg_srst_req          : 1   ; /* [4]  */
        unsigned int    reserved_1            : 1   ; /* [5]  */
        unsigned int    reserved_2            : 26  ; /* [31..6]  */
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
        unsigned int    mem_adjust_cpu        : 27  ; /* [26..0]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
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
        unsigned int    hpm1_offset           : 10  ; /* [17..8]  */
        unsigned int    hpm1_en               : 1   ; /* [18]  */
        unsigned int    hpm1_bypass           : 1   ; /* [19]  */
        unsigned int    hpm1_monitor_en       : 1   ; /* [20]  */
        unsigned int    hpm1_rst_req          : 1   ; /* [21]  */
        unsigned int    hpm1_monitor_period_fine : 9   ; /* [30..22]  */
        unsigned int    reserved_0            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG97;

/* Define the union U_PERI_CRG98 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm0_pc_record0       : 10  ; /* [9..0]  */
        unsigned int    hpm0_pc_record1       : 10  ; /* [19..10]  */
        unsigned int    hpm0_pc_record2       : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG98;

/* Define the union U_PERI_CRG99 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpm0_pc_record3       : 10  ; /* [9..0]  */
        unsigned int    hpm0_rcc              : 5   ; /* [14..10]  */
        unsigned int    hpm0_up_warning       : 1   ; /* [15]  */
        unsigned int    hpm0_low_warning      : 1   ; /* [16]  */
        unsigned int    reserved_0            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CRG99;

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
    volatile U_PERI_CRG0            PERI_CRG0                ; /* 0x0 */
    volatile U_PERI_CRG1            PERI_CRG1                ; /* 0x4 */
    volatile U_PERI_CRG2            PERI_CRG2                ; /* 0x8 */
    volatile U_PERI_CRG3            PERI_CRG3                ; /* 0xc */
    volatile U_PERI_CRG4            PERI_CRG4                ; /* 0x10 */
    volatile U_PERI_CRG5            PERI_CRG5                ; /* 0x14 */
    volatile unsigned int           reserved_0[2]                     ; /* 0x18~0x1c */
    volatile U_PERI_CRG8            PERI_CRG8                ; /* 0x20 */
    volatile U_PERI_CRG9            PERI_CRG9                ; /* 0x24 */
    volatile unsigned int           reserved_1[2]                     ; /* 0x28~0x2c */
    volatile U_PERI_CRG12           PERI_CRG12               ; /* 0x30 */
    volatile U_PERI_CRG13           PERI_CRG13               ; /* 0x34 */
    volatile unsigned int           reserved_2[4]                     ; /* 0x38~0x44 */
    volatile U_PERI_CRG18           PERI_CRG18               ; /* 0x48 */
    volatile U_PERI_CRG19           PERI_CRG19               ; /* 0x4c */
    volatile U_PERI_CRG20           PERI_CRG20               ; /* 0x50 */
    volatile U_PERI_CRG21           PERI_CRG21               ; /* 0x54 */
    volatile U_PERI_CRG22           PERI_CRG22               ; /* 0x58 */
    volatile U_PERI_CRG23           PERI_CRG23               ; /* 0x5c */
    volatile U_PERI_CRG24           PERI_CRG24               ; /* 0x60 */
    volatile U_PERI_CRG25           PERI_CRG25               ; /* 0x64 */
    volatile U_PERI_CRG26           PERI_CRG26               ; /* 0x68 */
    volatile U_PERI_CRG27           PERI_CRG27               ; /* 0x6c */
    volatile U_PERI_CRG28           PERI_CRG28               ; /* 0x70 */
    volatile U_PERI_CRG29           PERI_CRG29               ; /* 0x74 */
    volatile U_PERI_CRG30           PERI_CRG30               ; /* 0x78 */
    volatile U_PERI_CRG31           PERI_CRG31               ; /* 0x7c */
    volatile unsigned int           reserved_3                     ; /* 0x80 */
    volatile U_PERI_CRG33           PERI_CRG33               ; /* 0x84 */
    volatile U_PERI_CRG34           PERI_CRG34               ; /* 0x88 */
    volatile unsigned int           reserved_4[2]                     ; /* 0x8c~0x90 */
    volatile U_PERI_CRG37           PERI_CRG37               ; /* 0x94 */
    volatile unsigned int           reserved_5[8]                     ; /* 0x98~0xb4 */
    volatile U_PERI_CRG46           PERI_CRG46               ; /* 0xb8 */
    volatile U_PERI_CRG47           PERI_CRG47               ; /* 0xbc */
    volatile U_PERI_CRG48           PERI_CRG48               ; /* 0xc0 */
    volatile U_PERI_CRG49           PERI_CRG49               ; /* 0xc4 */
    volatile U_PERI_CRG50           PERI_CRG50               ; /* 0xc8 */
    volatile U_PERI_CRG51           PERI_CRG51               ; /* 0xcc */
    volatile unsigned int           reserved_6                     ; /* 0xd0 */
    volatile U_PERI_CRG53           PERI_CRG53               ; /* 0xd4 */
    volatile U_PERI_CRG54           PERI_CRG54               ; /* 0xd8 */
    volatile unsigned int           reserved_7                     ; /* 0xdc */
    volatile U_PERI_CRG56           PERI_CRG56               ; /* 0xe0 */
    volatile U_PERI_CRG57           PERI_CRG57               ; /* 0xe4 */
    volatile U_PERI_CRG58           PERI_CRG58               ; /* 0xe8 */
    volatile unsigned int           reserved_8[4]                     ; /* 0xec~0xf8 */
    volatile U_PERI_CRG63           PERI_CRG63               ; /* 0xfc */
    volatile U_PERI_CRG64           PERI_CRG64               ; /* 0x100 */
    volatile unsigned int           reserved_9[2]                     ; /* 0x104~0x108 */
    volatile U_PERI_CRG67           PERI_CRG67               ; /* 0x10c */
    volatile U_PERI_CRG68           PERI_CRG68               ; /* 0x110 */
    volatile U_PERI_CRG69           PERI_CRG69               ; /* 0x114 */
    volatile U_PERI_CRG70           PERI_CRG70               ; /* 0x118 */
    volatile U_PERI_CRG71           PERI_CRG71               ; /* 0x11c */
    volatile U_PERI_CRG72           PERI_CRG72               ; /* 0x120 */
    volatile U_PERI_CRG73           PERI_CRG73               ; /* 0x124 */
    volatile U_PERI_CRG74           PERI_CRG74               ; /* 0x128 */
    volatile U_PERI_CRG75           PERI_CRG75               ; /* 0x12c */
    volatile U_PERI_CRG76           PERI_CRG76               ; /* 0x130 */
    volatile U_PERI_CRG77           PERI_CRG77               ; /* 0x134 */
    volatile unsigned int           reserved_10                     ; /* 0x138 */
    volatile U_PERI_CRG79           PERI_CRG79               ; /* 0x13c */
    volatile unsigned int           reserved_11                     ; /* 0x140 */
    volatile U_PERI_CRG81           PERI_CRG81               ; /* 0x144 */
    volatile unsigned int           reserved_12[2]                     ; /* 0x148~0x14c */
    volatile U_PERI_CRG84           PERI_CRG84               ; /* 0x150 */
    volatile U_PERI_CRG85           PERI_CRG85               ; /* 0x154 */
    volatile U_PERI_CRG86           PERI_CRG86               ; /* 0x158 */
    volatile U_PERI_CRG87           PERI_CRG87               ; /* 0x15c */
    volatile U_PERI_CRG88           PERI_CRG88               ; /* 0x160 */
    volatile U_PERI_CRG89           PERI_CRG89               ; /* 0x164 */
    volatile U_PERI_CRG90           PERI_CRG90               ; /* 0x168 */
    volatile U_PERI_CRG91           PERI_CRG91               ; /* 0x16c */
    volatile U_PERI_CRG92           PERI_CRG92               ; /* 0x170 */
    volatile U_PERI_CRG93           PERI_CRG93               ; /* 0x174 */
    volatile U_PERI_CRG94           PERI_CRG94               ; /* 0x178 */
    volatile U_PERI_CRG95           PERI_CRG95               ; /* 0x17c */
    volatile U_PERI_CRG96           PERI_CRG96               ; /* 0x180 */
    volatile U_PERI_CRG97           PERI_CRG97               ; /* 0x184 */
    volatile U_PERI_CRG98           PERI_CRG98               ; /* 0x188 */
    volatile U_PERI_CRG99           PERI_CRG99               ; /* 0x18c */
    volatile U_PERI_CRG100          PERI_CRG100              ; /* 0x190 */
    volatile U_PERI_CRG101          PERI_CRG101              ; /* 0x194 */
    volatile U_PERI_CRG102          PERI_CRG102              ; /* 0x198 */

} S_CRG_REGS_TYPE;

#endif /* __HI_REG_CRG_H__ */
