// ******************************************************************************
// Copyright     :  Copyright (C) 2015, Hisilicon Technologies Co. Ltd.
// File name     :  c_union_define.h
// Project line  :
// Department    :
// Author        :  xxx
// Version       :  1.0
// Date          :  2008/9/15
// Description   :  项目描述信息
// Others        :  Generated automatically by nManager V4.0.2.5
// History       :  xxx 2015/12/03 10:59:50 Create file
// ******************************************************************************

#ifndef __C_UNION_DEFINE_H__
#define __C_UNION_DEFINE_H__

/* Define the union U_VOCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    arb_mode              : 4   ; /* [3..0]  */
        unsigned int    outstd_rid1           : 4   ; /* [7..4]  */
        unsigned int    outstd_rid0           : 4   ; /* [11..8]  */
        unsigned int    vo_id_sel             : 1   ; /* [12]  */
        unsigned int    reserved_0            : 3   ; /* [15..13]  */
        unsigned int    outstd_wid0           : 4   ; /* [19..16]  */
        unsigned int    bus_dbg_en            : 2   ; /* [21..20]  */
        unsigned int    outstd_wid1           : 4   ; /* [25..22]  */
        unsigned int    reserved_1            : 3   ; /* [28..26]  */
        unsigned int    chk_sum_en            : 1   ; /* [29]  */
        unsigned int    vo_wrid1_en           : 1   ; /* [30]  */
        unsigned int    vo_ck_gt_en           : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOCTRL;

/* Define the union U_VOINTSTA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dsdvtthd1_int         : 1   ; /* [0]  */
        unsigned int    dsdvtthd2_int         : 1   ; /* [1]  */
        unsigned int    dsdvtthd3_int         : 1   ; /* [2]  */
        unsigned int    dsduf_int             : 1   ; /* [3]  */
        unsigned int    dhdvtthd1_int         : 1   ; /* [4]  */
        unsigned int    dhdvtthd2_int         : 1   ; /* [5]  */
        unsigned int    dhdvtthd3_int         : 1   ; /* [6]  */
        unsigned int    dhduf_int             : 1   ; /* [7]  */
        unsigned int    vdac0_ic_int          : 1   ; /* [8]  */
        unsigned int    vdac1_ic_int          : 1   ; /* [9]  */
        unsigned int    vdac2_ic_int          : 1   ; /* [10]  */
        unsigned int    vdac3_ic_int          : 1   ; /* [11]  */
        unsigned int    wte_int               : 1   ; /* [12]  */
        unsigned int    wbc2_te_int           : 1   ; /* [13]  */
        unsigned int    wbc3_wte_int          : 1   ; /* [14]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    wbc3_stp_int          : 1   ; /* [16]  */
        unsigned int    vsd_dcmp_err_int      : 1   ; /* [17]  */
        unsigned int    reserved_1            : 1   ; /* [18]  */
        unsigned int    vhd_dcmp_err_int      : 1   ; /* [19]  */
        unsigned int    vsdrr_int             : 1   ; /* [20]  */
        unsigned int    reserved_2            : 1   ; /* [21]  */
        unsigned int    vhdrr_int             : 1   ; /* [22]  */
        unsigned int    g0rr_int              : 1   ; /* [23]  */
        unsigned int    g1rr_int              : 1   ; /* [24]  */
        unsigned int    reserved_3            : 3   ; /* [27..25]  */
        unsigned int    vhd_regup_err_int     : 1   ; /* [28]  */
        unsigned int    reserved_4            : 1   ; /* [29]  */
        unsigned int    ut_end_int            : 1   ; /* [30]  */
        unsigned int    be_int                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOINTSTA;

/* Define the union U_VOMSKINTSTA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dsdvtthd1_int         : 1   ; /* [0]  */
        unsigned int    dsdvtthd2_int         : 1   ; /* [1]  */
        unsigned int    dsdvtthd3_int         : 1   ; /* [2]  */
        unsigned int    dsduf_int             : 1   ; /* [3]  */
        unsigned int    dhdvtthd1_int         : 1   ; /* [4]  */
        unsigned int    dhdvtthd2_int         : 1   ; /* [5]  */
        unsigned int    dhdvtthd3_int         : 1   ; /* [6]  */
        unsigned int    dhduf_int             : 1   ; /* [7]  */
        unsigned int    vdac0_ic_int          : 1   ; /* [8]  */
        unsigned int    vdac1_ic_int          : 1   ; /* [9]  */
        unsigned int    vdac2_ic_int          : 1   ; /* [10]  */
        unsigned int    vdac3_ic_int          : 1   ; /* [11]  */
        unsigned int    wte_int               : 1   ; /* [12]  */
        unsigned int    wbc2_te_int           : 1   ; /* [13]  */
        unsigned int    wbc3_wte_int          : 1   ; /* [14]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    wbc3_stp_int          : 1   ; /* [16]  */
        unsigned int    vsd_dcmp_err_int      : 1   ; /* [17]  */
        unsigned int    reserved_1            : 1   ; /* [18]  */
        unsigned int    vhd_dcmp_err_int      : 1   ; /* [19]  */
        unsigned int    vsdrr_int             : 1   ; /* [20]  */
        unsigned int    reserved_2            : 1   ; /* [21]  */
        unsigned int    vhdrr_int             : 1   ; /* [22]  */
        unsigned int    g0rr_int              : 1   ; /* [23]  */
        unsigned int    g1rr_int              : 1   ; /* [24]  */
        unsigned int    reserved_3            : 3   ; /* [27..25]  */
        unsigned int    vhd_regup_err_int     : 1   ; /* [28]  */
        unsigned int    reserved_4            : 1   ; /* [29]  */
        unsigned int    ut_end_int            : 1   ; /* [30]  */
        unsigned int    be_int                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOMSKINTSTA;

/* Define the union U_VOINTMSK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dsdvtthd1_intmsk      : 1   ; /* [0]  */
        unsigned int    dsdvtthd2_intmsk      : 1   ; /* [1]  */
        unsigned int    dsdvtthd3_intmsk      : 1   ; /* [2]  */
        unsigned int    dsduf_intmsk          : 1   ; /* [3]  */
        unsigned int    dhdvtthd1_intmsk      : 1   ; /* [4]  */
        unsigned int    dhdvtthd2_intmsk      : 1   ; /* [5]  */
        unsigned int    dhdvtthd3_intmsk      : 1   ; /* [6]  */
        unsigned int    dhduf_intmsk          : 1   ; /* [7]  */
        unsigned int    vdac0_ic_intmsk       : 1   ; /* [8]  */
        unsigned int    vdac1_ic_intmsk       : 1   ; /* [9]  */
        unsigned int    vdac2_ic_intmsk       : 1   ; /* [10]  */
        unsigned int    vdac3_ic_intmsk       : 1   ; /* [11]  */
        unsigned int    wte_intmsk            : 1   ; /* [12]  */
        unsigned int    wbc2_te_intmsk        : 1   ; /* [13]  */
        unsigned int    wbc3_wte_intmsk       : 1   ; /* [14]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    wbc3_stp_intmsk       : 1   ; /* [16]  */
        unsigned int    vsd_dcmp_err_intmsk   : 1   ; /* [17]  */
        unsigned int    reserved_1            : 1   ; /* [18]  */
        unsigned int    vhd_dcmp_err_intmsk   : 1   ; /* [19]  */
        unsigned int    vsdrr_intmsk          : 1   ; /* [20]  */
        unsigned int    reserved_2            : 1   ; /* [21]  */
        unsigned int    vhdrr_intmsk          : 1   ; /* [22]  */
        unsigned int    g0rr_intmsk           : 1   ; /* [23]  */
        unsigned int    g1rr_intmsk           : 1   ; /* [24]  */
        unsigned int    reserved_3            : 3   ; /* [27..25]  */
        unsigned int    vhd_regup_err_intmsk  : 1   ; /* [28]  */
        unsigned int    reserved_4            : 1   ; /* [29]  */
        unsigned int    ut_end_intmsk         : 1   ; /* [30]  */
        unsigned int    be_intmsk             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOINTMSK;

// Define the union U_VOUVERSION1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int vouversion0             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VOUVERSION1;
// Define the union U_VOUVERSION2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int vouversion1             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VOUVERSION2;
/* Define the union U_VOMUXDATA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pin_test_data         : 24  ; /* [23..0]  */
        unsigned int    dv_value              : 1   ; /* [24]  */
        unsigned int    hsync_value           : 1   ; /* [25]  */
        unsigned int    vsync_value           : 1   ; /* [26]  */
        unsigned int    pin_test_mode         : 4   ; /* [30..27]  */
        unsigned int    pin_test_en           : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOMUXDATA;

/* Define the union U_VOMUX */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac0_sel              : 2   ; /* [1..0]  */
        unsigned int    dac1_sel              : 2   ; /* [3..2]  */
        unsigned int    dac2_sel              : 2   ; /* [5..4]  */
        unsigned int    dac3_sel              : 2   ; /* [7..6]  */
        unsigned int    dac4_sel              : 2   ; /* [9..8]  */
        unsigned int    dac5_sel              : 2   ; /* [11..10]  */
        unsigned int    dsd_to_hd             : 1   ; /* [12]  */
        unsigned int    dhd_to_sd             : 1   ; /* [13]  */
        unsigned int    vga_order             : 2   ; /* [15..14]  */
        unsigned int    hdmi_vid              : 3   ; /* [18..16]  */
        unsigned int    reserved_0            : 1   ; /* [19]  */
        unsigned int    dv_neg                : 1   ; /* [20]  */
        unsigned int    hsync_neg             : 1   ; /* [21]  */
        unsigned int    vsync_neg             : 1   ; /* [22]  */
        unsigned int    hdmi_rod_en           : 1   ; /* [23]  */
        unsigned int    data_sel0             : 2   ; /* [25..24]  */
        unsigned int    data_sel1             : 2   ; /* [27..26]  */
        unsigned int    data_sel2             : 2   ; /* [29..28]  */
        unsigned int    sync_sel              : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOMUX;

/* Define the union U_VODEBUG */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    rm_en_chn             : 4   ; /* [3..0]  */
        unsigned int    dhd_ff_info           : 2   ; /* [5..4]  */
        unsigned int    dsd_ff_info           : 2   ; /* [7..6]  */
        unsigned int    wbc0_ff_info          : 2   ; /* [9..8]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    wbc2_ff_info          : 2   ; /* [13..12]  */
        unsigned int    wbc_mode              : 4   ; /* [17..14]  */
        unsigned int    wrap_num              : 6   ; /* [23..18]  */
        unsigned int    wbc_cmp_mode          : 2   ; /* [25..24]  */
        unsigned int    wbc_wrap_src          : 1   ; /* [26]  */
        unsigned int    die_st_mode           : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VODEBUG;

/* Define the union U_VOPARAUP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vhd_hcoef_upd         : 1   ; /* [0]  */
        unsigned int    vhd_vcoef_upd         : 1   ; /* [1]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    video_acc_upd         : 1   ; /* [4]  */
        unsigned int    dhd_gamma_upd         : 1   ; /* [5]  */
        unsigned int    vsd_hcoef_upd         : 1   ; /* [6]  */
        unsigned int    vsd_vcoef_upd         : 1   ; /* [7]  */
        unsigned int    g0_lut_upd            : 1   ; /* [8]  */
        unsigned int    g1_lut_upd            : 1   ; /* [9]  */
        unsigned int    g0_hcoef_upd          : 1   ; /* [10]  */
        unsigned int    g0_vcoef_upd          : 1   ; /* [11]  */
        unsigned int    g1_hcoef_upd          : 1   ; /* [12]  */
        unsigned int    g1_vcoef_upd          : 1   ; /* [13]  */
        unsigned int    reserved_1            : 2   ; /* [15..14]  */
        unsigned int    g2_lut_upd            : 1   ; /* [16]  */
        unsigned int    reserved_2            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VOPARAUP;

// Define the union U_VHDHCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDHCOEFAD;
// Define the union U_VHDVCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDVCOEFAD;
// Define the union U_ACCAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_ACCAD;
// Define the union U_VSDHCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VSDHCOEFAD;
// Define the union U_VSDVCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VSDVCOEFAD;
// Define the union U_G0CLUTAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G0CLUTAD;
// Define the union U_G1CLUTAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G1CLUTAD;
// Define the union U_G0HCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G0HCOEFAD;
// Define the union U_G0VCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G0VCOEFAD;
// Define the union U_G1HCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G1HCOEFAD;
// Define the union U_G1VCOEFAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G1VCOEFAD;
// Define the union U_DHDGAMMAAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_DHDGAMMAAD;
// Define the union U_G2CLUTAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef_addr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G2CLUTAD;
/* Define the union U_DACCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac_reg_rev           : 16  ; /* [15..0]  */
        unsigned int    enctr                 : 4   ; /* [19..16]  */
        unsigned int    pdchopper             : 1   ; /* [20]  */
        unsigned int    enextref              : 1   ; /* [21]  */
        unsigned int    envbg                 : 1   ; /* [22]  */
        unsigned int    reserved_0            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DACCTRL;

/* Define the union U_DACCTRL0_1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac0gc                : 6   ; /* [5..0]  */
        unsigned int    cablectr0             : 2   ; /* [7..6]  */
        unsigned int    endac0                : 1   ; /* [8]  */
        unsigned int    reserved_0            : 7   ; /* [15..9]  */
        unsigned int    dac1gc                : 6   ; /* [21..16]  */
        unsigned int    cablectr1             : 2   ; /* [23..22]  */
        unsigned int    endac1                : 1   ; /* [24]  */
        unsigned int    reserved_1            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DACCTRL0_1;

/* Define the union U_DACCTRL2_3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac2gc                : 6   ; /* [5..0]  */
        unsigned int    cablectr2             : 2   ; /* [7..6]  */
        unsigned int    endac2                : 1   ; /* [8]  */
        unsigned int    reserved_0            : 7   ; /* [15..9]  */
        unsigned int    dac3gc                : 6   ; /* [21..16]  */
        unsigned int    cablectr3             : 2   ; /* [23..22]  */
        unsigned int    endac3                : 1   ; /* [24]  */
        unsigned int    reserved_1            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DACCTRL2_3;

/* Define the union U_VHDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ifmt                  : 5   ; /* [4..0]  */
        unsigned int    time_out              : 4   ; /* [8..5]  */
        unsigned int    trid_mode             : 2   ; /* [10..9]  */
        unsigned int    trid_en               : 1   ; /* [11]  */
        unsigned int    chm_rmode             : 2   ; /* [13..12]  */
        unsigned int    lm_rmode              : 2   ; /* [15..14]  */
        unsigned int    bfield_first          : 1   ; /* [16]  */
        unsigned int    vup_mode              : 1   ; /* [17]  */
        unsigned int    ifir_mode             : 2   ; /* [19..18]  */
        unsigned int    src_mode              : 3   ; /* [22..20]  */
        unsigned int    reserved_0            : 5   ; /* [27..23]  */
        unsigned int    mute_en               : 1   ; /* [28]  */
        unsigned int    flip_en               : 1   ; /* [29]  */
        unsigned int    resource_sel          : 1   ; /* [30]  */
        unsigned int    surface_en            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCTRL;

/* Define the union U_VHDUPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDUPD;

// Define the union U_VHDLADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_laddr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDLADDR;
// Define the union U_VHDLCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_lcaddr          : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDLCADDR;
// Define the union U_VHDLCRADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_lcraddr         : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDLCRADDR;
// Define the union U_VHDCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_caddr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDCADDR;
// Define the union U_VHDCCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_ccaddr          : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDCCADDR;
// Define the union U_VHDCCRADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_ccraddr         : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDCCRADDR;
// Define the union U_VHDNADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_naddr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDNADDR;
// Define the union U_VHDNCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_ncaddr          : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDNCADDR;
// Define the union U_VHDNCRADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_ncraddr         : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDNCRADDR;
/* Define the union U_VHDSTRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    surface_cstride       : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDSTRIDE;

/* Define the union U_VHDCRSTRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_crstride      : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCRSTRIDE;

/* Define the union U_VHDIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDIRESO;

/* Define the union U_VHDCBMPARA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    galpha                : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCBMPARA;

// Define the union U_VHDDIEADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int dieaddr                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIEADDR;
/* Define the union U_VHDCMPOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lum_cmp_hoff          : 16  ; /* [15..0]  */
        unsigned int    chm_cmp_hoff          : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCMPOFFSET;

// Define the union U_VHDDIESTADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int diestaddr               : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTADDR;
/* Define the union U_VHDCFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    crop_xfpos            : 12  ; /* [11..0]  */
        unsigned int    crop_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCFPOS;

/* Define the union U_VHDCLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    crop_xlpos            : 12  ; /* [11..0]  */
        unsigned int    crop_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCLPOS;

/* Define the union U_VHDSRCRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDSRCRESO;

/* Define the union U_VHDDRAWMODE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    draw_mode             : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDRAWMODE;

/* Define the union U_VHDDFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDFPOS;

/* Define the union U_VHDDLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDLPOS;

/* Define the union U_VHDVFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_xfpos           : 12  ; /* [11..0]  */
        unsigned int    video_yfpos           : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVFPOS;

/* Define the union U_VHDVLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_xlpos           : 12  ; /* [11..0]  */
        unsigned int    video_ylpos           : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVLPOS;

/* Define the union U_VHDBK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vbk_cr                : 8   ; /* [7..0]  */
        unsigned int    vbk_cb                : 8   ; /* [15..8]  */
        unsigned int    vbk_y                 : 8   ; /* [23..16]  */
        unsigned int    vbk_alpha             : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDBK;

/* Define the union U_VHDCSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 9   ; /* [8..0]  */
        unsigned int    cscidc1               : 9   ; /* [17..9]  */
        unsigned int    cscidc2               : 9   ; /* [26..18]  */
        unsigned int    csc_en                : 1   ; /* [27]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCIDC;

/* Define the union U_VHDCSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 9   ; /* [8..0]  */
        unsigned int    cscodc1               : 9   ; /* [17..9]  */
        unsigned int    cscodc2               : 9   ; /* [26..18]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCODC;

/* Define the union U_VHDCSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCP0;

/* Define the union U_VHDCSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCP1;

/* Define the union U_VHDCSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCP2;

/* Define the union U_VHDCSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCP3;

/* Define the union U_VHDCSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCSCP4;

/* Define the union U_VHDACM0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    acm0_en               : 1   ; /* [28]  */
        unsigned int    acm1_en               : 1   ; /* [29]  */
        unsigned int    acm2_en               : 1   ; /* [30]  */
        unsigned int    acm3_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM0;

/* Define the union U_VHDACM1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    acm_test_en           : 1   ; /* [20]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM1;

/* Define the union U_VHDACM2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM2;

/* Define the union U_VHDACM3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM3;

/* Define the union U_VHDACM4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM4;

/* Define the union U_VHDACM5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM5;

/* Define the union U_VHDACM6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM6;

/* Define the union U_VHDACM7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACM7;

/* Define the union U_VHDHSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hratio                : 24  ; /* [23..0]  */
        unsigned int    hfir_order            : 1   ; /* [24]  */
        unsigned int    hchfir_en             : 1   ; /* [25]  */
        unsigned int    hlfir_en              : 1   ; /* [26]  */
        unsigned int    non_lnr_en            : 1   ; /* [27]  */
        unsigned int    hchmid_en             : 1   ; /* [28]  */
        unsigned int    hlmid_en              : 1   ; /* [29]  */
        unsigned int    hchmsc_en             : 1   ; /* [30]  */
        unsigned int    hlmsc_en              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHSP;

/* Define the union U_VHDHLOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_loffset           : 28  ; /* [27..0]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHLOFFSET;

/* Define the union U_VHDHCOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_coffset           : 28  ; /* [27..0]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHCOFFSET;

/* Define the union U_VHDSHOOTCTRL_HL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hl_coring             : 8   ; /* [7..0]  */
        unsigned int    hl_gain               : 6   ; /* [13..8]  */
        unsigned int    hl_coringadj_en       : 1   ; /* [14]  */
        unsigned int    hl_flatdect_mode      : 1   ; /* [15]  */
        unsigned int    hl_shootctrl_mode     : 1   ; /* [16]  */
        unsigned int    hl_shootctrl_en       : 1   ; /* [17]  */
        unsigned int    reserved_0            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDSHOOTCTRL_HL;

/* Define the union U_VHDSHOOTCTRL_VL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vl_coring             : 8   ; /* [7..0]  */
        unsigned int    vl_gain               : 6   ; /* [13..8]  */
        unsigned int    vl_coringadj_en       : 1   ; /* [14]  */
        unsigned int    vl_flatdect_mode      : 1   ; /* [15]  */
        unsigned int    vl_shootctrl_mode     : 1   ; /* [16]  */
        unsigned int    vl_shootctrl_en       : 1   ; /* [17]  */
        unsigned int    reserved_0            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDSHOOTCTRL_VL;

/* Define the union U_VHDVSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 19  ; /* [18..0]  */
        unsigned int    zme_in_fmt            : 2   ; /* [20..19]  */
        unsigned int    zme_out_fmt           : 2   ; /* [22..21]  */
        unsigned int    vchfir_en             : 1   ; /* [23]  */
        unsigned int    vlfir_en              : 1   ; /* [24]  */
        unsigned int    reserved_1            : 1   ; /* [25]  */
        unsigned int    vsc_chroma_tap        : 1   ; /* [26]  */
        unsigned int    reserved_2            : 1   ; /* [27]  */
        unsigned int    vchmid_en             : 1   ; /* [28]  */
        unsigned int    vlmid_en              : 1   ; /* [29]  */
        unsigned int    vchmsc_en             : 1   ; /* [30]  */
        unsigned int    vlmsc_en              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVSP;

/* Define the union U_VHDVSR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVSR;

/* Define the union U_VHDVOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vchroma_offset        : 16  ; /* [15..0]  */
        unsigned int    vluma_offset          : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVOFFSET;

/* Define the union U_VHDZMEORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDZMEORESO;

/* Define the union U_VHDZMEIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDZMEIRESO;

/* Define the union U_VHDZMEDBG */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    need_rand_range       : 8   ; /* [7..0]  */
        unsigned int    rdy_rand_range        : 8   ; /* [15..8]  */
        unsigned int    need_mode             : 1   ; /* [16]  */
        unsigned int    rdy_mode              : 1   ; /* [17]  */
        unsigned int    reserved_0            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDZMEDBG;

/* Define the union U_VHDVC1CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vc1_profile           : 2   ; /* [1..0]  */
        unsigned int    vc1_rangedfrm         : 1   ; /* [2]  */
        unsigned int    vc1_mapyflg           : 1   ; /* [3]  */
        unsigned int    vc1_mapcflg           : 1   ; /* [4]  */
        unsigned int    vc1_bmapyflg          : 1   ; /* [5]  */
        unsigned int    vc1_bmapcflg          : 1   ; /* [6]  */
        unsigned int    reserved_0            : 1   ; /* [7]  */
        unsigned int    vc1_mapy              : 3   ; /* [10..8]  */
        unsigned int    reserved_1            : 1   ; /* [11]  */
        unsigned int    vc1_mapc              : 3   ; /* [14..12]  */
        unsigned int    reserved_2            : 1   ; /* [15]  */
        unsigned int    vc1_bmapy             : 3   ; /* [18..16]  */
        unsigned int    reserved_3            : 1   ; /* [19]  */
        unsigned int    vc1_bmapc             : 3   ; /* [22..20]  */
        unsigned int    reserved_4            : 7   ; /* [29..23]  */
        unsigned int    vc1_bfield            : 1   ; /* [30]  */
        unsigned int    vc1_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVC1CTRL;

/* Define the union U_VHDVC1CFG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vc1_fns1_rangedfrm    : 1   ; /* [0]  */
        unsigned int    vc1_fns1_mapyflg      : 1   ; /* [1]  */
        unsigned int    vc1_fns1_mapcflg      : 1   ; /* [2]  */
        unsigned int    vc1_fns1_bmapyflg     : 1   ; /* [3]  */
        unsigned int    vc1_fns1_bmapcflg     : 1   ; /* [4]  */
        unsigned int    reserved_0            : 3   ; /* [7..5]  */
        unsigned int    vc1_fnn1_rangedfrm    : 1   ; /* [8]  */
        unsigned int    vc1_fnn1_mapyflg      : 1   ; /* [9]  */
        unsigned int    vc1_fnn1_mapcflg      : 1   ; /* [10]  */
        unsigned int    vc1_fnn1_bmapyflg     : 1   ; /* [11]  */
        unsigned int    vc1_fnn1_bmapcflg     : 1   ; /* [12]  */
        unsigned int    reserved_1            : 3   ; /* [15..13]  */
        unsigned int    vc1_fnn2_rangedfrm    : 1   ; /* [16]  */
        unsigned int    vc1_fnn2_mapyflg      : 1   ; /* [17]  */
        unsigned int    vc1_fnn2_mapcflg      : 1   ; /* [18]  */
        unsigned int    vc1_fnn2_bmapyflg     : 1   ; /* [19]  */
        unsigned int    vc1_fnn2_bmapcflg     : 1   ; /* [20]  */
        unsigned int    reserved_2            : 3   ; /* [23..21]  */
        unsigned int    vc1_fnn3_rangedfrm    : 1   ; /* [24]  */
        unsigned int    vc1_fnn3_mapyflg      : 1   ; /* [25]  */
        unsigned int    vc1_fnn3_mapcflg      : 1   ; /* [26]  */
        unsigned int    vc1_fnn3_bmapyflg     : 1   ; /* [27]  */
        unsigned int    vc1_fnn3_bmapcflg     : 1   ; /* [28]  */
        unsigned int    reserved_3            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVC1CFG1;

/* Define the union U_VHDVC1CFG2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vc1_fns1_mapy         : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    vc1_fns1_mapc         : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    vc1_fns1_bmapy        : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    vc1_fns1_bmapc        : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    vc1_fnn1_mapy         : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    vc1_fnn1_mapc         : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    vc1_fnn1_bmapy        : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 1   ; /* [27]  */
        unsigned int    vc1_fnn1_bmapc        : 3   ; /* [30..28]  */
        unsigned int    reserved_7            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVC1CFG2;

/* Define the union U_VHDVC1CFG3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vc1_fnn2_mapy         : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    vc1_fnn2_mapc         : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    vc1_fnn2_bmapy        : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    vc1_fnn2_bmapc        : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    vc1_fnn3_mapy         : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    vc1_fnn3_mapc         : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    vc1_fnn3_bmapy        : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 1   ; /* [27]  */
        unsigned int    vc1_fnn3_bmapc        : 3   ; /* [30..28]  */
        unsigned int    reserved_7            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVC1CFG3;

/* Define the union U_VHDACCTHD1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    thd_low               : 10  ; /* [9..0]  */
        unsigned int    thd_high              : 10  ; /* [19..10]  */
        unsigned int    thd_med_low           : 10  ; /* [29..20]  */
        unsigned int    acc_mode              : 1   ; /* [30]  */
        unsigned int    acc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCTHD1;

/* Define the union U_VHDACCTHD2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    thd_med_high          : 10  ; /* [9..0]  */
        unsigned int    acc_multiple          : 8   ; /* [17..10]  */
        unsigned int    acc_rst               : 1   ; /* [18]  */
        unsigned int    reserved_0            : 13  ; /* [31..19]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCTHD2;

/* Define the union U_VHDACCLOWN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCLOWN;

/* Define the union U_VHDACCMEDN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCMEDN;

/* Define the union U_VHDACCHIGHN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCHIGHN;

/* Define the union U_VHDACCMLN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCMLN;

/* Define the union U_VHDACCMHN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCMHN;

/* Define the union U_VHDACC3LOW */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_low              : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACC3LOW;

/* Define the union U_VHDACC3MED */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_med              : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACC3MED;

/* Define the union U_VHDACC3HIGH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_high             : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACC3HIGH;

/* Define the union U_VHDACC8MLOW */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt8_med_low          : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACC8MLOW;

/* Define the union U_VHDACC8MHIGH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt8_med_high         : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACC8MHIGH;

/* Define the union U_VHDACCTOTAL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acc_pix_total         : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDACCTOTAL;

/* Define the union U_VHDIFIRCOEF01 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef0                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef1                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDIFIRCOEF01;

/* Define the union U_VHDIFIRCOEF23 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef2                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef3                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDIFIRCOEF23;

/* Define the union U_VHDIFIRCOEF45 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef4                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef5                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDIFIRCOEF45;

/* Define the union U_VHDIFIRCOEF67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef6                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef7                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDIFIRCOEF67;

/* Define the union U_VHDLTICTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; /* [7..0]  */
        unsigned int    lmixing_ratio         : 8   ; /* [15..8]  */
        unsigned int    lgain_ratio           : 12  ; /* [27..16]  */
        unsigned int    reserved_0            : 3   ; /* [30..28]  */
        unsigned int    lti_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDLTICTRL;

/* Define the union U_VHDLHPASSCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; /* [7..0]  */
        unsigned int    lhpass_coef1          : 8   ; /* [15..8]  */
        unsigned int    lhpass_coef2          : 8   ; /* [23..16]  */
        unsigned int    lhpass_coef3          : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDLHPASSCOEF;

/* Define the union U_VHDLTITHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lover_swing           : 10  ; /* [9..0]  */
        unsigned int    lunder_swing          : 10  ; /* [19..10]  */
        unsigned int    lcoring_thd           : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDLTITHD;

/* Define the union U_VHDLHFREQTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; /* [15..0]  */
        unsigned int    lhfreq_thd1           : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDLHFREQTHD;

/* Define the union U_VHDLGAINCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lgain_coef0           : 8   ; /* [7..0]  */
        unsigned int    lgain_coef1           : 8   ; /* [15..8]  */
        unsigned int    lgain_coef2           : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDLGAINCOEF;

/* Define the union U_VHDCTICTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    cmixing_ratio         : 8   ; /* [15..8]  */
        unsigned int    cgain_ratio           : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 3   ; /* [30..28]  */
        unsigned int    cti_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCTICTRL;

/* Define the union U_VHDCHPASSCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    chpass_coef0          : 8   ; /* [7..0]  */
        unsigned int    chpass_coef1          : 8   ; /* [15..8]  */
        unsigned int    chpass_coef2          : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCHPASSCOEF;

/* Define the union U_VHDCTITHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cover_swing           : 10  ; /* [9..0]  */
        unsigned int    cunder_swing          : 10  ; /* [19..10]  */
        unsigned int    ccoring_thd           : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCTITHD;

/* Define the union U_VHDDNRCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dr_en                 : 1   ; /* [0]  */
        unsigned int    db_en                 : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDNRCTRL;

/* Define the union U_VHDDRCFG0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 16  ; /* [15..0]  */
        unsigned int    drthrmaxsimilarpixdiff : 5   ; /* [20..16]  */
        unsigned int    reserved_1            : 3   ; /* [23..21]  */
        unsigned int    drthrflat3x3zone      : 5   ; /* [28..24]  */
        unsigned int    reserved_2            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDRCFG0;

/* Define the union U_VHDDRCFG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dralphascale          : 5   ; /* [4..0]  */
        unsigned int    reserved_0            : 11  ; /* [15..5]  */
        unsigned int    drbetascale           : 5   ; /* [20..16]  */
        unsigned int    reserved_1            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDRCFG1;

/* Define the union U_VHDDBCFG0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dbenhor               : 1   ; /* [0]  */
        unsigned int    dbenvert              : 1   ; /* [1]  */
        unsigned int    dbuseweakflt          : 1   ; /* [2]  */
        unsigned int    dbvertasprog          : 1   ; /* [3]  */
        unsigned int    reserved_0            : 4   ; /* [7..4]  */
        unsigned int    picestqp              : 8   ; /* [15..8]  */
        unsigned int    thrdbedgethr          : 8   ; /* [23..16]  */
        unsigned int    reserved_1            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDBCFG0;

/* Define the union U_VHDDBCFG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dbthrleastblkdiffhor  : 8   ; /* [7..0]  */
        unsigned int    dbthrmaxdiffhor       : 8   ; /* [15..8]  */
        unsigned int    dbthrleastblkdiffvert : 8   ; /* [23..16]  */
        unsigned int    dbthrmaxdiffvert      : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDBCFG1;

/* Define the union U_VHDDBCFG2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    detailimgqpthr        : 8   ; /* [7..0]  */
        unsigned int    thrdblargesmooth      : 8   ; /* [15..8]  */
        unsigned int    dbalphascale          : 8   ; /* [23..16]  */
        unsigned int    dbbetascale           : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDBCFG2;

/* Define the union U_VHDDNRINFSTRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dnr_yinf_stride       : 16  ; /* [15..0]  */
        unsigned int    dnr_cinf_stride       : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDNRINFSTRIDE;

/* Define the union U_VHDDIECTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 14  ; /* [13..0]  */
        unsigned int    die_st_wbc_mode       : 1   ; /* [14]  */
        unsigned int    die_st_upd_mode       : 1   ; /* [15]  */
        unsigned int    stinfo_stop           : 1   ; /* [16]  */
        unsigned int    die_rst               : 1   ; /* [17]  */
        unsigned int    reserved_1            : 6   ; /* [23..18]  */
        unsigned int    die_chmmode           : 2   ; /* [25..24]  */
        unsigned int    die_lmmode            : 2   ; /* [27..26]  */
        unsigned int    die_out_sel_c         : 1   ; /* [28]  */
        unsigned int    die_out_sel_l         : 1   ; /* [29]  */
        unsigned int    die_chroma_en         : 1   ; /* [30]  */
        unsigned int    die_luma_en           : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIECTRL;

/* Define the union U_VHDDIELMA0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    luma_qtbl1            : 8   ; /* [7..0]  */
        unsigned int    luma_qtbl2            : 8   ; /* [15..8]  */
        unsigned int    luma_qtbl3            : 8   ; /* [23..16]  */
        unsigned int    scale_ratio_ppd       : 6   ; /* [29..24]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIELMA0;

/* Define the union U_VHDDIELMA1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    luma_reqtbl0          : 8   ; /* [7..0]  */
        unsigned int    luma_reqtbl1          : 8   ; /* [15..8]  */
        unsigned int    luma_reqtbl2          : 8   ; /* [23..16]  */
        unsigned int    luma_reqtbl3          : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIELMA1;

/* Define the union U_VHDDIELMA2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    luma_win_size         : 2   ; /* [1..0]  */
        unsigned int    luma_scesdf_max       : 1   ; /* [2]  */
        unsigned int    die_st_qrst_en        : 1   ; /* [3]  */
        unsigned int    die_st_n_en           : 1   ; /* [4]  */
        unsigned int    die_st_m_en           : 1   ; /* [5]  */
        unsigned int    die_st_l_en           : 1   ; /* [6]  */
        unsigned int    die_st_k_en           : 1   ; /* [7]  */
        unsigned int    luma_qrst_max         : 1   ; /* [8]  */
        unsigned int    luma_mf_max           : 1   ; /* [9]  */
        unsigned int    chroma_mf_max         : 1   ; /* [10]  */
        unsigned int    die_sad_thd           : 6   ; /* [16..11]  */
        unsigned int    reserved_0            : 3   ; /* [19..17]  */
        unsigned int    die_mid_thd           : 8   ; /* [27..20]  */
        unsigned int    reserved_1            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIELMA2;

/* Define the union U_VHDDIEINTEN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dir_inten             : 4   ; /* [3..0]  */
        unsigned int    reserved_0            : 3   ; /* [6..4]  */
        unsigned int    dir_ck_enh            : 1   ; /* [7]  */
        unsigned int    dir_inten_ver         : 4   ; /* [11..8]  */
        unsigned int    reserved_1            : 4   ; /* [15..12]  */
        unsigned int    ver_min_inten         : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIEINTEN;

/* Define the union U_VHDDIESCALE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    range_scale           : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIESCALE;

/* Define the union U_VHDDIECHECK1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ck_max_range          : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    ck_range_gain         : 4   ; /* [11..8]  */
        unsigned int    reserved_1            : 4   ; /* [15..12]  */
        unsigned int    ck_gain               : 4   ; /* [19..16]  */
        unsigned int    reserved_2            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIECHECK1;

/* Define the union U_VHDDIECHECK2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ck_max_range          : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    ck_range_gain         : 4   ; /* [11..8]  */
        unsigned int    reserved_1            : 4   ; /* [15..12]  */
        unsigned int    ck_gain               : 4   ; /* [19..16]  */
        unsigned int    reserved_2            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIECHECK2;

/* Define the union U_VHDDIEDIR0_3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dir0_mult             : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    dir1_mult             : 6   ; /* [13..8]  */
        unsigned int    reserved_1            : 2   ; /* [15..14]  */
        unsigned int    dir2_mult             : 6   ; /* [21..16]  */
        unsigned int    reserved_2            : 2   ; /* [23..22]  */
        unsigned int    dir3_mult             : 6   ; /* [29..24]  */
        unsigned int    reserved_3            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIEDIR0_3;

/* Define the union U_VHDDIEDIR4_7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dir4_mult             : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    dir5_mult             : 6   ; /* [13..8]  */
        unsigned int    reserved_1            : 2   ; /* [15..14]  */
        unsigned int    dir6_mult             : 6   ; /* [21..16]  */
        unsigned int    reserved_2            : 2   ; /* [23..22]  */
        unsigned int    dir7_mult             : 6   ; /* [29..24]  */
        unsigned int    reserved_3            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIEDIR4_7;

/* Define the union U_VHDDIEDIR8_11 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dir8_mult             : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    dir9_mult             : 6   ; /* [13..8]  */
        unsigned int    reserved_1            : 2   ; /* [15..14]  */
        unsigned int    dir10_mult            : 6   ; /* [21..16]  */
        unsigned int    reserved_2            : 2   ; /* [23..22]  */
        unsigned int    dir11_mult            : 6   ; /* [29..24]  */
        unsigned int    reserved_3            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIEDIR8_11;

/* Define the union U_VHDDIEDIR12_14 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dir12_mult            : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    dir13_mult            : 6   ; /* [13..8]  */
        unsigned int    reserved_1            : 2   ; /* [15..14]  */
        unsigned int    dir14_mult            : 6   ; /* [21..16]  */
        unsigned int    reserved_2            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIEDIR12_14;

/* Define the union U_VHDDIESTA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    die_ref_field         : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDDIESTA;

// Define the union U_VHDDIESTKADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int die_k_addr              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTKADDR;
// Define the union U_VHDDIESTLADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int die_l_addr              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTLADDR;
// Define the union U_VHDDIESTMADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int die_m_addr              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTMADDR;
// Define the union U_VHDDIESTNADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int die_n_addr              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTNADDR;
// Define the union U_VHDDIESTSQTRADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int die_sqtr_addr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDDIESTSQTRADDR;
/* Define the union U_VHDCCRSCLR0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    no_ccr_detect_thd     : 8   ; /* [7..0]  */
        unsigned int    no_ccr_detect_max     : 8   ; /* [15..8]  */
        unsigned int    chroma_ma_offset      : 8   ; /* [23..16]  */
        unsigned int    chroma_ccr_en         : 1   ; /* [24]  */
        unsigned int    reserved_0            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCCRSCLR0;

/* Define the union U_VHDCCRSCLR1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    max_xchroma           : 8   ; /* [7..0]  */
        unsigned int    no_ccr_detect_blend   : 4   ; /* [11..8]  */
        unsigned int    reserved_0            : 4   ; /* [15..12]  */
        unsigned int    similar_thd           : 8   ; /* [23..16]  */
        unsigned int    similar_max           : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDCCRSCLR1;

/* Define the union U_VHDPDPCCMOVCORING */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    mcoring_tkr           : 8   ; /* [7..0]  */
        unsigned int    mcoring_norm          : 8   ; /* [15..8]  */
        unsigned int    mcoring_blk           : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDPCCMOVCORING;

/* Define the union U_VHDPDICHDTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bist_mov2r            : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDICHDTHD;

// Define the union U_VHDPDICHDCNT
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int ichd_cnt                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDICHDCNT;
/* Define the union U_VHDPDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 20  ; /* [19..0]  */
        unsigned int    edge_smooth_ratio     : 8   ; /* [27..20]  */
        unsigned int    reserved_1            : 1   ; /* [28]  */
        unsigned int    dir_mch_c             : 1   ; /* [29]  */
        unsigned int    edge_smooth_en        : 1   ; /* [30]  */
        unsigned int    dir_mch_l             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDCTRL;

/* Define the union U_VHDPDBLKPOS0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_x                 : 12  ; /* [11..0]  */
        unsigned int    blk_y                 : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDBLKPOS0;

/* Define the union U_VHDPDBLKPOS1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_x                 : 12  ; /* [11..0]  */
        unsigned int    blk_y                 : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDBLKPOS1;

/* Define the union U_VHDPDBLKTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    stillblk_thd          : 8   ; /* [7..0]  */
        unsigned int    diff_movblk_thd       : 8   ; /* [15..8]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDBLKTHD;

/* Define the union U_VHDPDHISTTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hist_thd0             : 8   ; /* [7..0]  */
        unsigned int    hist_thd1             : 8   ; /* [15..8]  */
        unsigned int    hist_thd2             : 8   ; /* [23..16]  */
        unsigned int    hist_thd3             : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDHISTTHD;

/* Define the union U_VHDPDUMTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    um_thd0               : 8   ; /* [7..0]  */
        unsigned int    um_thd1               : 8   ; /* [15..8]  */
        unsigned int    um_thd2               : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDUMTHD;

/* Define the union U_VHDPDPCCCORING */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coring_tkr            : 8   ; /* [7..0]  */
        unsigned int    coring_norm           : 8   ; /* [15..8]  */
        unsigned int    coring_blk            : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDPCCCORING;

/* Define the union U_VHDPDPCCHTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pcc_hthd              : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDPCCHTHD;

/* Define the union U_VHDPDPCCVTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pcc_vthd0             : 8   ; /* [7..0]  */
        unsigned int    pcc_vthd1             : 8   ; /* [15..8]  */
        unsigned int    pcc_vthd2             : 8   ; /* [23..16]  */
        unsigned int    pcc_vthd3             : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDPCCVTHD;

/* Define the union U_VHDPDITDIFFVTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    itdiff_vthd0          : 8   ; /* [7..0]  */
        unsigned int    itdiff_vthd1          : 8   ; /* [15..8]  */
        unsigned int    itdiff_vthd2          : 8   ; /* [23..16]  */
        unsigned int    itdiff_vthd3          : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDITDIFFVTHD;

/* Define the union U_VHDPDLASITHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lasi_thd              : 8   ; /* [7..0]  */
        unsigned int    edge_thd              : 8   ; /* [15..8]  */
        unsigned int    mov_thd               : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDPDLASITHD;

// Define the union U_VHDPDFRMITDIFF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int frm_it_diff             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDFRMITDIFF;
// Define the union U_VHDPDSTLBLKSAD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int stlblk_sad              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDSTLBLKSAD;
// Define the union U_VHDPDHISTBIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int hsit_bin                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDHISTBIN;
// Define the union U_VHDPDUMMATCH0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int match_um                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDUMMATCH0;
// Define the union U_VHDPDUMNOMATCH0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int nomatch_um              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDUMNOMATCH0;
// Define the union U_VHDPDUMMATCH1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int match_um                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDUMMATCH1;
// Define the union U_VHDPDUMNOMATCH1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int nomatch_um              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDUMNOMATCH1;
// Define the union U_VHDPDPCCFFWD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_ffwd                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCFFWD;
// Define the union U_VHDPDPCCFWD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_fwd                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCFWD;
// Define the union U_VHDPDPCCBWD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_bwd                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCBWD;
// Define the union U_VHDPDPCCCRSS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_crss                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCCRSS;
// Define the union U_VHDPDPCCPW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_pw                  : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCPW;
// Define the union U_VHDPDPCCFWDTKR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_fwd_tkr             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCFWDTKR;
// Define the union U_VHDPDPCCBWDTKR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_bwd_tkr             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCBWDTKR;
// Define the union U_VHDPDPCCBLKFWD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_blk_fwd             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCBLKFWD;
// Define the union U_VHDPDPCCBLKBWD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int pcc_blk_bwd             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDPCCBLKBWD;
// Define the union U_VHDPDLASICNT14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int lasi_cnt                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDLASICNT14;
// Define the union U_VHDPDLASICNT32
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int lasi_cnt                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDLASICNT32;
// Define the union U_VHDPDLASICNT34
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int lasi_cnt                : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VHDPDLASICNT34;
/* Define the union U_VSDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ifmt                  : 5   ; /* [4..0]  */
        unsigned int    time_out              : 4   ; /* [8..5]  */
        unsigned int    reserved_0            : 3   ; /* [11..9]  */
        unsigned int    chm_rmode             : 2   ; /* [13..12]  */
        unsigned int    lm_rmode              : 2   ; /* [15..14]  */
        unsigned int    bfield_first          : 1   ; /* [16]  */
        unsigned int    vup_mode              : 1   ; /* [17]  */
        unsigned int    ifir_mode             : 2   ; /* [19..18]  */
        unsigned int    src_mode              : 3   ; /* [22..20]  */
        unsigned int    reserved_1            : 4   ; /* [26..23]  */
        unsigned int    wrap_en               : 1   ; /* [27]  */
        unsigned int    mute_en               : 1   ; /* [28]  */
        unsigned int    flip_en               : 1   ; /* [29]  */
        unsigned int    resource_sel          : 1   ; /* [30]  */
        unsigned int    surface_en            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCTRL;

/* Define the union U_VSDUPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDUPD;

// Define the union U_VSDCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_caddr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VSDCADDR;
// Define the union U_VSDCCADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_ccaddr          : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VSDCCADDR;
/* Define the union U_VSDSTRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    surface_cstride       : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDSTRIDE;

/* Define the union U_VSDIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDIRESO;

/* Define the union U_VSDWRAPTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDWRAPTHD;

/* Define the union U_VSDCBMPARA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    galpha                : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCBMPARA;

/* Define the union U_VSDCMPOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lum_cmp_hoff          : 16  ; /* [15..0]  */
        unsigned int    chm_cmp_hoff          : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCMPOFFSET;

/* Define the union U_VSDCFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    crop_xfpos            : 12  ; /* [11..0]  */
        unsigned int    crop_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCFPOS;

/* Define the union U_VSDCLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    crop_xlpos            : 12  ; /* [11..0]  */
        unsigned int    crop_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCLPOS;

/* Define the union U_VSDSRCRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDSRCRESO;

/* Define the union U_VSDDRAWMODE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    draw_mode             : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDDRAWMODE;

/* Define the union U_VSDDFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDDFPOS;

/* Define the union U_VSDDLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDDLPOS;

/* Define the union U_VSDVFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_xfpos           : 12  ; /* [11..0]  */
        unsigned int    video_yfpos           : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVFPOS;

/* Define the union U_VSDVLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_xlpos           : 12  ; /* [11..0]  */
        unsigned int    video_ylpos           : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVLPOS;

/* Define the union U_VSDBK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vbk_cr                : 8   ; /* [7..0]  */
        unsigned int    vbk_cb                : 8   ; /* [15..8]  */
        unsigned int    vbk_y                 : 8   ; /* [23..16]  */
        unsigned int    vbk_alpha             : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDBK;

/* Define the union U_VSDCSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 9   ; /* [8..0]  */
        unsigned int    cscidc1               : 9   ; /* [17..9]  */
        unsigned int    cscidc2               : 9   ; /* [26..18]  */
        unsigned int    csc_en                : 1   ; /* [27]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCIDC;

/* Define the union U_VSDCSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 9   ; /* [8..0]  */
        unsigned int    cscodc1               : 9   ; /* [17..9]  */
        unsigned int    cscodc2               : 9   ; /* [26..18]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCODC;

/* Define the union U_VSDCSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCP0;

/* Define the union U_VSDCSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCP1;

/* Define the union U_VSDCSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCP2;

/* Define the union U_VSDCSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCP3;

/* Define the union U_VSDCSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDCSCP4;

/* Define the union U_VSDACM0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    acm0_en               : 1   ; /* [28]  */
        unsigned int    acm1_en               : 1   ; /* [29]  */
        unsigned int    acm2_en               : 1   ; /* [30]  */
        unsigned int    acm3_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM0;

/* Define the union U_VSDACM1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    acm_test_en           : 1   ; /* [20]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM1;

/* Define the union U_VSDACM2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM2;

/* Define the union U_VSDACM3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM3;

/* Define the union U_VSDACM4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM4;

/* Define the union U_VSDACM5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM5;

/* Define the union U_VSDACM6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_u_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_u_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_u_off           : 5   ; /* [19..15]  */
        unsigned int    acm_fir_blk           : 4   ; /* [23..20]  */
        unsigned int    acm_sec_blk           : 4   ; /* [27..24]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM6;

/* Define the union U_VSDACM7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; /* [4..0]  */
        unsigned int    acm_b_v_off           : 5   ; /* [9..5]  */
        unsigned int    acm_c_v_off           : 5   ; /* [14..10]  */
        unsigned int    acm_d_v_off           : 5   ; /* [19..15]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACM7;

/* Define the union U_VSDHSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hratio                : 24  ; /* [23..0]  */
        unsigned int    hfir_order            : 1   ; /* [24]  */
        unsigned int    hchfir_en             : 1   ; /* [25]  */
        unsigned int    hlfir_en              : 1   ; /* [26]  */
        unsigned int    non_lnr_en            : 1   ; /* [27]  */
        unsigned int    hchmid_en             : 1   ; /* [28]  */
        unsigned int    hlmid_en              : 1   ; /* [29]  */
        unsigned int    hchmsc_en             : 1   ; /* [30]  */
        unsigned int    hlmsc_en              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDHSP;

/* Define the union U_VSDHLOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_loffset           : 28  ; /* [27..0]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDHLOFFSET;

/* Define the union U_VSDHCOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_coffset           : 28  ; /* [27..0]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDHCOFFSET;

/* Define the union U_VSDVSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 19  ; /* [18..0]  */
        unsigned int    zme_in_fmt            : 2   ; /* [20..19]  */
        unsigned int    zme_out_fmt           : 2   ; /* [22..21]  */
        unsigned int    vchfir_en             : 1   ; /* [23]  */
        unsigned int    vlfir_en              : 1   ; /* [24]  */
        unsigned int    reserved_1            : 1   ; /* [25]  */
        unsigned int    vsc_chroma_tap        : 1   ; /* [26]  */
        unsigned int    reserved_2            : 1   ; /* [27]  */
        unsigned int    vchmid_en             : 1   ; /* [28]  */
        unsigned int    vlmid_en              : 1   ; /* [29]  */
        unsigned int    vchmsc_en             : 1   ; /* [30]  */
        unsigned int    vlmsc_en              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVSP;

/* Define the union U_VSDVSR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVSR;

/* Define the union U_VSDVOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vchroma_offset        : 16  ; /* [15..0]  */
        unsigned int    vluma_offset          : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVOFFSET;

/* Define the union U_VSDZMEORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDZMEORESO;

/* Define the union U_VSDZMEIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDZMEIRESO;

/* Define the union U_VSDZMEDBG */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    need_rand_range       : 8   ; /* [7..0]  */
        unsigned int    rdy_rand_range        : 8   ; /* [15..8]  */
        unsigned int    need_mode             : 1   ; /* [16]  */
        unsigned int    rdy_mode              : 1   ; /* [17]  */
        unsigned int    reserved_0            : 14  ; /* [31..18]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDZMEDBG;

/* Define the union U_VSDACCTHD1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    thd_low               : 10  ; /* [9..0]  */
        unsigned int    thd_high              : 10  ; /* [19..10]  */
        unsigned int    thd_med_low           : 10  ; /* [29..20]  */
        unsigned int    acc_mode              : 1   ; /* [30]  */
        unsigned int    acc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCTHD1;

/* Define the union U_VSDACCTHD2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    thd_med_high          : 10  ; /* [9..0]  */
        unsigned int    acc_multiple          : 8   ; /* [17..10]  */
        unsigned int    acc_rst               : 1   ; /* [18]  */
        unsigned int    reserved_0            : 13  ; /* [31..19]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCTHD2;

/* Define the union U_VSDACCLOWN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCLOWN;

/* Define the union U_VSDACCMEDN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCMEDN;

/* Define the union U_VSDACCHIGHN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCHIGHN;

/* Define the union U_VSDACCMLN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCMLN;

/* Define the union U_VSDACCMHN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    table_data1n          : 10  ; /* [9..0]  */
        unsigned int    table_data2n          : 10  ; /* [19..10]  */
        unsigned int    table_data3n          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCMHN;

/* Define the union U_VSDACC3LOW */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_low              : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACC3LOW;

/* Define the union U_VSDACC3MED */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_med              : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACC3MED;

/* Define the union U_VSDACC3HIGH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt3_high             : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACC3HIGH;

/* Define the union U_VSDACC8MLOW */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt8_med_low          : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACC8MLOW;

/* Define the union U_VSDACC8MHIGH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cnt8_med_high         : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACC8MHIGH;

/* Define the union U_VSDACCTOTAL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    acc_pix_total         : 21  ; /* [20..0]  */
        unsigned int    reserved_0            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDACCTOTAL;

/* Define the union U_VSDIFIRCOEF01 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef0                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef1                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDIFIRCOEF01;

/* Define the union U_VSDIFIRCOEF23 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef2                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef3                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDIFIRCOEF23;

/* Define the union U_VSDIFIRCOEF45 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef4                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef5                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDIFIRCOEF45;

/* Define the union U_VSDIFIRCOEF67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef6                 : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef7                 : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDIFIRCOEF67;

/* Define the union U_G0CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ifmt                  : 8   ; /* [7..0]  */
        unsigned int    bitext                : 2   ; /* [9..8]  */
        unsigned int    trid_en               : 1   ; /* [10]  */
        unsigned int    trid_mode             : 1   ; /* [11]  */
        unsigned int    reserved_0            : 13  ; /* [24..12]  */
        unsigned int    decmp_en              : 1   ; /* [25]  */
        unsigned int    read_mode             : 1   ; /* [26]  */
        unsigned int    upd_mode              : 1   ; /* [27]  */
        unsigned int    mute_en               : 1   ; /* [28]  */
        unsigned int    gmm_en                : 1   ; /* [29]  */
        unsigned int    reserved_1            : 1   ; /* [30]  */
        unsigned int    surface_en            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CTRL;

/* Define the union U_G0UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0UPD;

// Define the union U_G0ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G0ADDR;
/* Define the union U_G0STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0STRIDE;

/* Define the union U_G0CBMPARA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    galpha                : 8   ; /* [7..0]  */
        unsigned int    palpha_range          : 1   ; /* [8]  */
        unsigned int    reserved_0            : 1   ; /* [9]  */
        unsigned int    vedge_p               : 1   ; /* [10]  */
        unsigned int    hedge_p               : 1   ; /* [11]  */
        unsigned int    palpha_en             : 1   ; /* [12]  */
        unsigned int    premult_en            : 1   ; /* [13]  */
        unsigned int    key_en                : 1   ; /* [14]  */
        unsigned int    key_mode              : 1   ; /* [15]  */
        unsigned int    gp_galpha             : 8   ; // [23..16]
        unsigned int    gp_premult_en         : 1   ; // [24]
        unsigned int    gp_mode               : 1   ; // [25]
        unsigned int    reserved_1            : 6   ; // [31..26]
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CBMPARA;

/* Define the union U_G0CKEYMAX */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_max              : 8   ; /* [7..0]  */
        unsigned int    keyg_max              : 8   ; /* [15..8]  */
        unsigned int    keyr_max              : 8   ; /* [23..16]  */
        unsigned int    va0                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CKEYMAX;

/* Define the union U_G0CKEYMIN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_min              : 8   ; /* [7..0]  */
        unsigned int    keyg_min              : 8   ; /* [15..8]  */
        unsigned int    keyr_min              : 8   ; /* [23..16]  */
        unsigned int    va1                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CKEYMIN;

/* Define the union U_G0CMASK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    kmsk_b                : 8   ; /* [7..0]  */
        unsigned int    kmsk_g                : 8   ; /* [15..8]  */
        unsigned int    kmsk_r                : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CMASK;

/* Define the union U_G0IRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0IRESO;

/* Define the union U_G0ORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0ORESO;

/* Define the union U_G0SFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    src_xfpos             : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0SFPOS;

/* Define the union U_G0DFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0DFPOS;

/* Define the union U_G0DLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0DLPOS;

// Define the union U_G0CMPADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G0CMPADDR;
/* Define the union U_G0HSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 3   ; /* [18..16]  */
        unsigned int    hfir_order            : 1   ; /* [19]  */
        unsigned int    reserved_1            : 3   ; /* [22..20]  */
        unsigned int    hafir_en              : 1   ; /* [23]  */
        unsigned int    hfir_en               : 1   ; /* [24]  */
        unsigned int    reserved_2            : 3   ; /* [27..25]  */
        unsigned int    hchmid_en             : 1   ; /* [28]  */
        unsigned int    hlmid_en              : 1   ; /* [29]  */
        unsigned int    hamid_en              : 1   ; /* [30]  */
        unsigned int    hsc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HSP;

/* Define the union U_G0HOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_coffset           : 16  ; /* [15..0]  */
        unsigned int    hor_loffset           : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HOFFSET;

/* Define the union U_G0VSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 23  ; /* [22..0]  */
        unsigned int    vafir_en              : 1   ; /* [23]  */
        unsigned int    vfir_en               : 1   ; /* [24]  */
        unsigned int    reserved_1            : 2   ; /* [26..25]  */
        unsigned int    vsc_luma_tap          : 1   ; /* [27]  */
        unsigned int    vchmid_en             : 1   ; /* [28]  */
        unsigned int    vlmid_en              : 1   ; /* [29]  */
        unsigned int    vamid_en              : 1   ; /* [30]  */
        unsigned int    vsc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VSP;

/* Define the union U_G0VSR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VSR;

/* Define the union U_G0VOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vbtm_offset           : 16  ; /* [15..0]  */
        unsigned int    vtp_offset            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VOFFSET;

/* Define the union U_G0ZMEORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0ZMEORESO;

/* Define the union U_G0ZMEIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0ZMEIRESO;

/* Define the union U_G0LTICTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; /* [7..0]  */
        unsigned int    lmixing_ratio         : 8   ; /* [15..8]  */
        unsigned int    lgain_ratio           : 12  ; /* [27..16]  */
        unsigned int    reserved_0            : 3   ; /* [30..28]  */
        unsigned int    lti_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0LTICTRL;

/* Define the union U_G0LHPASSCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; /* [7..0]  */
        unsigned int    lhpass_coef1          : 8   ; /* [15..8]  */
        unsigned int    lhpass_coef2          : 8   ; /* [23..16]  */
        unsigned int    lhpass_coef3          : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0LHPASSCOEF;

/* Define the union U_G0LTITHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lover_swing           : 10  ; /* [9..0]  */
        unsigned int    lunder_swing          : 10  ; /* [19..10]  */
        unsigned int    lcoring_thd           : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0LTITHD;

/* Define the union U_G0LHFREQTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; /* [15..0]  */
        unsigned int    lhfreq_thd1           : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0LHFREQTHD;

/* Define the union U_G0LGAINCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    lgain_coef0           : 8   ; /* [7..0]  */
        unsigned int    lgain_coef1           : 8   ; /* [15..8]  */
        unsigned int    lgain_coef2           : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0LGAINCOEF;

/* Define the union U_G0CTICTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    cmixing_ratio         : 8   ; /* [15..8]  */
        unsigned int    cgain_ratio           : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 3   ; /* [30..28]  */
        unsigned int    cti_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CTICTRL;

/* Define the union U_G0CHPASSCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    chpass_coef0          : 8   ; /* [7..0]  */
        unsigned int    chpass_coef1          : 8   ; /* [15..8]  */
        unsigned int    chpass_coef2          : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CHPASSCOEF;

/* Define the union U_G0CTITHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cover_swing           : 10  ; /* [9..0]  */
        unsigned int    cunder_swing          : 10  ; /* [19..10]  */
        unsigned int    ccoring_thd           : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CTITHD;

/* Define the union U_G0CSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCP0;

/* Define the union U_G0CSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCP1;

/* Define the union U_G0CSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCP2;

/* Define the union U_G0CSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCP3;

/* Define the union U_G0CSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCP4;

/* Define the union U_G0CSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 11  ; /* [10..0]  */
        unsigned int    cscidc1               : 11  ; /* [21..11]  */
        unsigned int    csc_en                : 1   ; /* [22]  */
        unsigned int    reserved_0            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCIDC;

/* Define the union U_G0CSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 11  ; /* [10..0]  */
        unsigned int    cscodc1               : 11  ; /* [21..11]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCODC;

/* Define the union U_G0CSCDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc2               : 11  ; /* [10..0]  */
        unsigned int    cscodc2               : 11  ; /* [21..11]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0CSCDC;

/* Define the union U_G1CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ifmt                  : 8   ; /* [7..0]  */
        unsigned int    bitext                : 2   ; /* [9..8]  */
        unsigned int    trid_en               : 1   ; /* [10]  */
        unsigned int    trid_mode             : 1   ; /* [11]  */
        unsigned int    trid_src              : 1   ; /* [12]  */
        unsigned int    wrap_en               : 1   ; /* [13]  */
        unsigned int    reserved_0            : 11  ; /* [24..14]  */
        unsigned int    decmp_en              : 1   ; /* [25]  */
        unsigned int    read_mode             : 1   ; /* [26]  */
        unsigned int    upd_mode              : 1   ; /* [27]  */
        unsigned int    mute_en               : 1   ; /* [28]  */
        unsigned int    gmm_en                : 1   ; /* [29]  */
        unsigned int    g1_sel_zme            : 1   ; /* [30]  */
        unsigned int    surface_en            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CTRL;

/* Define the union U_G1UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1UPD;

// Define the union U_G1ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G1ADDR;
/* Define the union U_G1STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1STRIDE;

/* Define the union U_G1CBMPARA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    galpha                : 8   ; /* [7..0]  */
        unsigned int    palpha_range          : 1   ; /* [8]  */
        unsigned int    reserved_0            : 1   ; /* [9]  */
        unsigned int    vedge_p               : 1   ; /* [10]  */
        unsigned int    hedge_p               : 1   ; /* [11]  */
        unsigned int    palpha_en             : 1   ; /* [12]  */
        unsigned int    premult_en            : 1   ; /* [13]  */
        unsigned int    key_en                : 1   ; /* [14]  */
        unsigned int    key_mode              : 1   ; /* [15]  */
        unsigned int    reserved_1            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CBMPARA;

/* Define the union U_G1CKEYMAX */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_max              : 8   ; /* [7..0]  */
        unsigned int    keyg_max              : 8   ; /* [15..8]  */
        unsigned int    keyr_max              : 8   ; /* [23..16]  */
        unsigned int    va0                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CKEYMAX;

/* Define the union U_G1CKEYMIN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_min              : 8   ; /* [7..0]  */
        unsigned int    keyg_min              : 8   ; /* [15..8]  */
        unsigned int    keyr_min              : 8   ; /* [23..16]  */
        unsigned int    va1                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CKEYMIN;

/* Define the union U_G1CMASK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    kmsk_b                : 8   ; /* [7..0]  */
        unsigned int    kmsk_g                : 8   ; /* [15..8]  */
        unsigned int    kmsk_r                : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CMASK;

/* Define the union U_G1IRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1IRESO;

/* Define the union U_G1ORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1ORESO;

/* Define the union U_G1SFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    src_xfpos             : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1SFPOS;

/* Define the union U_G1DFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1DFPOS;

/* Define the union U_G1DLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1DLPOS;

// Define the union U_G1CMPADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_G1CMPADDR;
/* Define the union U_G1WRAPTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1WRAPTHD;

/* Define the union U_G1HSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 3   ; /* [18..16]  */
        unsigned int    hfir_order            : 1   ; /* [19]  */
        unsigned int    reserved_1            : 3   ; /* [22..20]  */
        unsigned int    hafir_en              : 1   ; /* [23]  */
        unsigned int    hfir_en               : 1   ; /* [24]  */
        unsigned int    reserved_2            : 3   ; /* [27..25]  */
        unsigned int    hchmid_en             : 1   ; /* [28]  */
        unsigned int    hlmid_en              : 1   ; /* [29]  */
        unsigned int    hamid_en              : 1   ; /* [30]  */
        unsigned int    hsc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1HSP;

/* Define the union U_G1HOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hor_coffset           : 16  ; /* [15..0]  */
        unsigned int    hor_loffset           : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1HOFFSET;

/* Define the union U_G1VSP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 23  ; /* [22..0]  */
        unsigned int    vafir_en              : 1   ; /* [23]  */
        unsigned int    vfir_en               : 1   ; /* [24]  */
        unsigned int    reserved_1            : 2   ; /* [26..25]  */
        unsigned int    vsc_luma_tap          : 1   ; /* [27]  */
        unsigned int    vchmid_en             : 1   ; /* [28]  */
        unsigned int    vlmid_en              : 1   ; /* [29]  */
        unsigned int    vamid_en              : 1   ; /* [30]  */
        unsigned int    vsc_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1VSP;

/* Define the union U_G1VSR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vratio                : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1VSR;

/* Define the union U_G1VOFFSET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vbtm_offset           : 16  ; /* [15..0]  */
        unsigned int    vtp_offset            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1VOFFSET;

/* Define the union U_G1ZMEORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1ZMEORESO;

/* Define the union U_G1ZMEIRESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1ZMEIRESO;

/* Define the union U_G1CSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 9   ; /* [8..0]  */
        unsigned int    cscidc1               : 9   ; /* [17..9]  */
        unsigned int    cscidc2               : 9   ; /* [26..18]  */
        unsigned int    csc_en                : 1   ; /* [27]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCIDC;

/* Define the union U_G1CSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 9   ; /* [8..0]  */
        unsigned int    cscodc1               : 9   ; /* [17..9]  */
        unsigned int    cscodc2               : 9   ; /* [26..18]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCODC;

/* Define the union U_G1CSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCP0;

/* Define the union U_G1CSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCP1;

/* Define the union U_G1CSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCP2;

/* Define the union U_G1CSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCP3;

/* Define the union U_G1CSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1CSCP4;

/* Define the union U_G2CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ifmt                  : 8   ; /* [7..0]  */
        unsigned int    bitext                : 2   ; /* [9..8]  */
        unsigned int    trid_en               : 1   ; /* [10]  */
        unsigned int    trid_mode             : 1   ; /* [11]  */
        unsigned int    reserved_0            : 1   ; /* [12]  */
        unsigned int    zone2_en              : 1   ; /* [13]  */
        unsigned int    zone1_en              : 1   ; /* [14]  */
        unsigned int    reserved_1            : 11  ; /* [25..15]  */
        unsigned int    read_mode             : 1   ; /* [26]  */
        unsigned int    upd_mode              : 1   ; /* [27]  */
        unsigned int    reserved_2            : 1   ; /* [28]  */
        unsigned int    gmm_en                : 1   ; /* [29]  */
        unsigned int    reserved_3            : 1   ; /* [30]  */
        unsigned int    surface_en            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2CTRL;

/* Define the union U_G2UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2UPD;

// Define the union U_ZONE1ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_ZONE1ADDR;
/* Define the union U_ZONE1STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE1STRIDE;

/* Define the union U_G2CBMPARA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    galpha                : 8   ; /* [7..0]  */
        unsigned int    palpha_range          : 1   ; /* [8]  */
        unsigned int    reserved_0            : 1   ; /* [9]  */
        unsigned int    vedge_p               : 1   ; /* [10]  */
        unsigned int    hedge_p               : 1   ; /* [11]  */
        unsigned int    palpha_en             : 1   ; /* [12]  */
        unsigned int    premult_en            : 1   ; /* [13]  */
        unsigned int    key_en                : 1   ; /* [14]  */
        unsigned int    key_mode              : 1   ; /* [15]  */
        unsigned int    mix_prio              : 1   ; /* [16]  */
        unsigned int    reserved_1            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2CBMPARA;

/* Define the union U_G2CKEYMAX */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_max              : 8   ; /* [7..0]  */
        unsigned int    keyg_max              : 8   ; /* [15..8]  */
        unsigned int    keyr_max              : 8   ; /* [23..16]  */
        unsigned int    va0                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2CKEYMAX;

/* Define the union U_G2CKEYMIN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    keyb_min              : 8   ; /* [7..0]  */
        unsigned int    keyg_min              : 8   ; /* [15..8]  */
        unsigned int    keyr_min              : 8   ; /* [23..16]  */
        unsigned int    va1                   : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2CKEYMIN;

/* Define the union U_G2CMASK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    kmsk_b                : 8   ; /* [7..0]  */
        unsigned int    kmsk_g                : 8   ; /* [15..8]  */
        unsigned int    kmsk_r                : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2CMASK;

/* Define the union U_G2DLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G2DLPOS;

// Define the union U_ZONE2ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int surface_addr            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_ZONE2ADDR;
/* Define the union U_ZONE2STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    surface_stride        : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE2STRIDE;

/* Define the union U_ZONE1FPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    zone_xfpos            : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE1FPOS;

/* Define the union U_ZONE2FPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    zone_xfpos            : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE2FPOS;

/* Define the union U_ZONE1RESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE1RESO;

/* Define the union U_ZONE2RESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    iw                    : 12  ; /* [11..0]  */
        unsigned int    ih                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE2RESO;

/* Define the union U_ZONE1DFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE1DFPOS;

/* Define the union U_ZONE1DLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE1DLPOS;

/* Define the union U_ZONE2DFPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xfpos            : 12  ; /* [11..0]  */
        unsigned int    disp_yfpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE2DFPOS;

/* Define the union U_ZONE2DLPOS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    disp_xlpos            : 12  ; /* [11..0]  */
        unsigned int    disp_ylpos            : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ZONE2DLPOS;

/* Define the union U_WBC0CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    req_interval          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    wbc0_dft              : 2   ; /* [13..12]  */
        unsigned int    reserved_1            : 10  ; /* [23..14]  */
        unsigned int    dfp_sel               : 3   ; /* [26..24]  */
        unsigned int    wbc0_btm              : 1   ; /* [27]  */
        unsigned int    wrap_en               : 1   ; /* [28]  */
        unsigned int    reserved_2            : 1   ; /* [29]  */
        unsigned int    wbc0_inter            : 1   ; /* [30]  */
        unsigned int    wbc0_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0CTRL;

/* Define the union U_WBC0UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0UPD;

// Define the union U_WBC0ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbcaddr                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC0ADDR;
/* Define the union U_WBC0STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wbc0stride            : 16  ; /* [15..0]  */
        unsigned int    wbc0cstride           : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0STRIDE;

/* Define the union U_WBC0ORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0ORESO;

/* Define the union U_WBC0FCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wfcrop                : 12  ; /* [11..0]  */
        unsigned int    hfcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0FCROP;

/* Define the union U_WBC0LCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wlcrop                : 12  ; /* [11..0]  */
        unsigned int    hlcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0LCROP;

/* Define the union U_WBC0WRAPTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC0WRAPTHD;

// Define the union U_WBC0_CHECKSUM_Y
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int Reserved_384            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC0_CHECKSUM_Y;
// Define the union U_WBC0_CHECKSUM_C
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int Reserved_386            : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC0_CHECKSUM_C;
/* Define the union U_WBC2CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    req_interval          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 2   ; /* [11..10]  */
        unsigned int    wbc2_dft              : 2   ; /* [13..12]  */
        unsigned int    reserved_1            : 9   ; /* [22..14]  */
        unsigned int    wbc2_mode_3d          : 1   ; /* [23]  */
        unsigned int    reserved_2            : 3   ; /* [26..24]  */
        unsigned int    wbc2_btm              : 1   ; /* [27]  */
        unsigned int    wrap_en               : 1   ; /* [28]  */
        unsigned int    wbc2_cmp_mode         : 1   ; /* [29]  */
        unsigned int    wbc2_inter            : 1   ; /* [30]  */
        unsigned int    wbc2_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2CTRL;

/* Define the union U_WBC2UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2UPD;

// Define the union U_WBC2ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbcaddr                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2ADDR;
/* Define the union U_WBC2STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wbc2stride            : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2STRIDE;

/* Define the union U_WBC2ORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2ORESO;

/* Define the union U_WBC2FCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wfcrop                : 12  ; /* [11..0]  */
        unsigned int    hfcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2FCROP;

/* Define the union U_WBC2LCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wlcrop                : 12  ; /* [11..0]  */
        unsigned int    hlcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2LCROP;

// Define the union U_WBC2CMPADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc2_cmp_addr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2CMPADDR;
/* Define the union U_WBC2WRAPTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC2WRAPTHD;

// Define the union U_WBC2_CHECKSUM_A
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc0_a_sum              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2_CHECKSUM_A;
// Define the union U_WBC2_CHECKSUM_R
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc0_r_sum              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2_CHECKSUM_R;
// Define the union U_WBC2_CHECKSUM_G
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc0_g_sum              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2_CHECKSUM_G;
// Define the union U_WBC2_CHECKSUM_B
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc0_b_sum              : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC2_CHECKSUM_B;
/* Define the union U_WBC3CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    req_interval          : 10  ; /* [9..0]  */
        unsigned int    wbc3_wr_stop          : 1   ; /* [10]  */
        unsigned int    reserved_0            : 1   ; /* [11]  */
        unsigned int    wbc3_dft              : 2   ; /* [13..12]  */
        unsigned int    reserved_1            : 13  ; /* [26..14]  */
        unsigned int    wbc3_btm              : 1   ; /* [27]  */
        unsigned int    reserved_2            : 1   ; /* [28]  */
        unsigned int    wbc3_cmp_mode         : 1   ; /* [29]  */
        unsigned int    wbc3_inter            : 1   ; /* [30]  */
        unsigned int    wbc3_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3CTRL;

/* Define the union U_WBC3UPD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    regup                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3UPD;

// Define the union U_WBC3ADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbcaddr                 : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC3ADDR;
/* Define the union U_WBC3STRIDE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wbc3stride            : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3STRIDE;

/* Define the union U_WBC3ORESO */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ow                    : 12  ; /* [11..0]  */
        unsigned int    oh                    : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3ORESO;

/* Define the union U_WBC3FCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wfcrop                : 12  ; /* [11..0]  */
        unsigned int    hfcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3FCROP;

/* Define the union U_WBC3LCROP */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wlcrop                : 12  ; /* [11..0]  */
        unsigned int    hlcrop                : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3LCROP;

// Define the union U_WBC3CMPADDR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc3_cmp_addr           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_WBC3CMPADDR;
/* Define the union U_WBC3STPLN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ar_stp_ln             : 12  ; /* [11..0]  */
        unsigned int    gb_stp_ln             : 12  ; /* [23..12]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_WBC3STPLN;

/* Define the union U_CBMBKG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cbm_bkgcr1            : 8   ; /* [7..0]  */
        unsigned int    cbm_bkgcb1            : 8   ; /* [15..8]  */
        unsigned int    cbm_bkgy1             : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMBKG1;

/* Define the union U_CBMBKG2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cbm_bkgcr2            : 8   ; /* [7..0]  */
        unsigned int    cbm_bkgcb2            : 8   ; /* [15..8]  */
        unsigned int    cbm_bkgy2             : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMBKG2;

/* Define the union U_CBMBKGV */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cbm_bkgcr_v           : 8   ; /* [7..0]  */
        unsigned int    cbm_bkgcb_v           : 8   ; /* [15..8]  */
        unsigned int    cbm_bkgy_v            : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMBKGV;

/* Define the union U_CBMATTR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    sur_attr0             : 1   ; /* [0]  */
        unsigned int    sur_attr1             : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMATTR;

/* Define the union U_CBMMIX1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    mixer_prio0           : 3   ; /* [2..0]  */
        unsigned int    mixer_prio1           : 3   ; /* [5..3]  */
        unsigned int    mixer_prio2           : 3   ; /* [8..6]  */
        unsigned int    mixer_prio3           : 3   ; /* [11..9]  */
        unsigned int    mixer_prio4           : 3   ; /* [14..12]  */
        unsigned int    reserved_0            : 3   ; /* [17..15]  */
        unsigned int    bk_v_alpha_sel        : 1   ; /* [18]  */
        unsigned int    mixer_v_en            : 1   ; /* [19]  */
        unsigned int    reserved_1            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMMIX1;

/* Define the union U_CBMMIX2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    mixer_prio0           : 3   ; /* [2..0]  */
        unsigned int    mixer_prio1           : 3   ; /* [5..3]  */
        unsigned int    mixer_prio2           : 3   ; /* [8..6]  */
        unsigned int    reserved_0            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CBMMIX2;

/* Define the union U_DHDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    intfdm                : 4   ; /* [3..0]  */
        unsigned int    intfb                 : 2   ; /* [5..4]  */
        unsigned int    synm                  : 1   ; /* [6]  */
        unsigned int    iop                   : 1   ; /* [7]  */
        unsigned int    ivs                   : 1   ; /* [8]  */
        unsigned int    ihs                   : 1   ; /* [9]  */
        unsigned int    idv                   : 1   ; /* [10]  */
        unsigned int    reserved_0            : 2   ; /* [12..11]  */
        unsigned int    gmmmode               : 1   ; /* [13]  */
        unsigned int    gmmen                 : 1   ; /* [14]  */
        unsigned int    reserved_1            : 1   ; /* [15]  */
        unsigned int    clipen                : 1   ; /* [16]  */
        unsigned int    reserved_2            : 3   ; /* [19..17]  */
        unsigned int    fpga_lmt_width        : 7   ; /* [26..20]  */
        unsigned int    fpga_lmt_en           : 1   ; /* [27]  */
        unsigned int    reserved_3            : 3   ; /* [30..28]  */
        unsigned int    intf_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCTRL;

/* Define the union U_DHDVSYNC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vact                  : 12  ; /* [11..0]  */
        unsigned int    vbb                   : 8   ; /* [19..12]  */
        unsigned int    vfb                   : 8   ; /* [27..20]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDVSYNC;

/* Define the union U_DHDHSYNC1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hact                  : 16  ; /* [15..0]  */
        unsigned int    hbb                   : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDHSYNC1;

/* Define the union U_DHDHSYNC2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hfb                   : 16  ; /* [15..0]  */
        unsigned int    hmid                  : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDHSYNC2;

/* Define the union U_DHDVPLUS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bvact                 : 12  ; /* [11..0]  */
        unsigned int    bvbb                  : 8   ; /* [19..12]  */
        unsigned int    bvfb                  : 8   ; /* [27..20]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDVPLUS;

/* Define the union U_DHDPWR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpw                   : 16  ; /* [15..0]  */
        unsigned int    vpw                   : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDPWR;

/* Define the union U_DHDVTTHD3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vtmgthd3              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 2   ; /* [14..13]  */
        unsigned int    thd3_mode             : 1   ; /* [15]  */
        unsigned int    vtmgthd4              : 13  ; /* [28..16]  */
        unsigned int    reserved_1            : 2   ; /* [30..29]  */
        unsigned int    thd4_mode             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDVTTHD3;

/* Define the union U_DHDVTTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vtmgthd1              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 2   ; /* [14..13]  */
        unsigned int    thd1_mode             : 1   ; /* [15]  */
        unsigned int    vtmgthd2              : 13  ; /* [28..16]  */
        unsigned int    reserved_1            : 2   ; /* [30..29]  */
        unsigned int    thd2_mode             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDVTTHD;

/* Define the union U_DHDCSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 9   ; /* [8..0]  */
        unsigned int    cscidc1               : 9   ; /* [17..9]  */
        unsigned int    cscidc2               : 9   ; /* [26..18]  */
        unsigned int    csc_en                : 1   ; /* [27]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCIDC;

/* Define the union U_DHDCSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 9   ; /* [8..0]  */
        unsigned int    cscodc1               : 9   ; /* [17..9]  */
        unsigned int    cscodc2               : 9   ; /* [26..18]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCODC;

/* Define the union U_DHDCSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCP0;

/* Define the union U_DHDCSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCP1;

/* Define the union U_DHDCSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCP2;

/* Define the union U_DHDCSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCP3;

/* Define the union U_DHDCSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCSCP4;

/* Define the union U_DHDCLIPL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    clipcl0               : 10  ; /* [9..0]  */
        unsigned int    clipcl1               : 10  ; /* [19..10]  */
        unsigned int    clipcl2               : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCLIPL;

/* Define the union U_DHDCLIPH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    clipch0               : 10  ; /* [9..0]  */
        unsigned int    clipch1               : 10  ; /* [19..10]  */
        unsigned int    clipch2               : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDCLIPH;

/* Define the union U_DHDUFWTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dhd_ufw_thd           : 8   ; /* [7..0]  */
        unsigned int    reserved_0            : 24  ; /* [31..8]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDUFWTHD;

/* Define the union U_DHDSTATHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dhd_start_thd         : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 26  ; /* [31..6]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDSTATHD;

/* Define the union U_DHDDATEINV */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    date_dv_inv           : 1   ; /* [0]  */
        unsigned int    date_hsync_inv        : 1   ; /* [1]  */
        unsigned int    date_vsync_inv        : 1   ; /* [2]  */
        unsigned int    date_field_inv        : 1   ; /* [3]  */
        unsigned int    date_vsync_hmid       : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDDATEINV;

/* Define the union U_HDMI_CSC_IDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 11  ; /* [10..0]  */
        unsigned int    cscidc1               : 11  ; /* [21..11]  */
        unsigned int    csc_en                : 1   ; /* [22]  */
        unsigned int    reserved_0            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_IDC;

/* Define the union U_HDMI_CSC_ODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 11  ; /* [10..0]  */
        unsigned int    cscodc1               : 11  ; /* [21..11]  */
        unsigned int    csc_sign_mode         : 1   ; /* [22]  */
        unsigned int    reserved_0            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_ODC;

/* Define the union U_HDMI_CSC_IODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc2               : 11  ; /* [10..0]  */
        unsigned int    cscodc2               : 11  ; /* [21..11]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_IODC;

/* Define the union U_HDMI_CSC_P0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_P0;

/* Define the union U_HDMI_CSC_P1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_P1;

/* Define the union U_HDMI_CSC_P2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_P2;

/* Define the union U_HDMI_CSC_P3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_P3;

/* Define the union U_HDMI_CSC_P4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDMI_CSC_P4;

/* Define the union U_DHDSTATE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vback_blank           : 1   ; /* [0]  */
        unsigned int    vblank                : 1   ; /* [1]  */
        unsigned int    bottom_field          : 1   ; /* [2]  */
        unsigned int    current_pos           : 13  ; /* [15..3]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDSTATE;

/* Define the union U_DSDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    intfdm                : 4   ; /* [3..0]  */
        unsigned int    intfb                 : 2   ; /* [5..4]  */
        unsigned int    synm                  : 1   ; /* [6]  */
        unsigned int    iop                   : 1   ; /* [7]  */
        unsigned int    ivs                   : 1   ; /* [8]  */
        unsigned int    ihs                   : 1   ; /* [9]  */
        unsigned int    idv                   : 1   ; /* [10]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    clipen                : 1   ; /* [16]  */
        unsigned int    reserved_1            : 2   ; /* [18..17]  */
        unsigned int    trigger_en            : 1   ; /* [19]  */
        unsigned int    reserved_2            : 10  ; /* [29..20]  */
        unsigned int    dhd_syc_en            : 1   ; /* [30]  */
        unsigned int    intf_en               : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCTRL;

/* Define the union U_DSDVSYNC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vact                  : 12  ; /* [11..0]  */
        unsigned int    vbb                   : 8   ; /* [19..12]  */
        unsigned int    vfb                   : 8   ; /* [27..20]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDVSYNC;

/* Define the union U_DSDHSYNC1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hact                  : 16  ; /* [15..0]  */
        unsigned int    hbb                   : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDHSYNC1;

/* Define the union U_DSDHSYNC2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hfb                   : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDHSYNC2;

/* Define the union U_DSDVPLUS */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    bvact                 : 12  ; /* [11..0]  */
        unsigned int    bvbb                  : 8   ; /* [19..12]  */
        unsigned int    bvfb                  : 8   ; /* [27..20]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDVPLUS;

/* Define the union U_DSDPWR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hpw                   : 16  ; /* [15..0]  */
        unsigned int    vpw                   : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDPWR;

/* Define the union U_DSDVTTHD3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vtmgthd3              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 2   ; /* [14..13]  */
        unsigned int    thd3_mode             : 1   ; /* [15]  */
        unsigned int    reserved_1            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDVTTHD3;

/* Define the union U_DSDVTTHD */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vtmgthd1              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 2   ; /* [14..13]  */
        unsigned int    thd1_mode             : 1   ; /* [15]  */
        unsigned int    vtmgthd2              : 13  ; /* [28..16]  */
        unsigned int    reserved_1            : 2   ; /* [30..29]  */
        unsigned int    thd2_mode             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDVTTHD;

/* Define the union U_DSDCSCIDC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscidc0               : 9   ; /* [8..0]  */
        unsigned int    cscidc1               : 9   ; /* [17..9]  */
        unsigned int    cscidc2               : 9   ; /* [26..18]  */
        unsigned int    csc_en                : 1   ; /* [27]  */
        unsigned int    reserved_0            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCIDC;

/* Define the union U_DSDCSCODC */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscodc0               : 9   ; /* [8..0]  */
        unsigned int    cscodc1               : 9   ; /* [17..9]  */
        unsigned int    cscodc2               : 9   ; /* [26..18]  */
        unsigned int    reserved_0            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCODC;

/* Define the union U_DSDCSCP0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp00                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp01                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCP0;

/* Define the union U_DSDCSCP1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp02                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp10                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCP1;

/* Define the union U_DSDCSCP2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp11                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp12                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCP2;

/* Define the union U_DSDCSCP3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp20                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 1   ; /* [15]  */
        unsigned int    cscp21                : 15  ; /* [30..16]  */
        unsigned int    reserved_1            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCP3;

/* Define the union U_DSDCSCP4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cscp22                : 15  ; /* [14..0]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCSCP4;

/* Define the union U_DSDCLIPL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    clipcl0               : 10  ; /* [9..0]  */
        unsigned int    clipcl1               : 10  ; /* [19..10]  */
        unsigned int    clipcl2               : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCLIPL;

/* Define the union U_DSDCLIPH */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    clipch0               : 10  ; /* [9..0]  */
        unsigned int    clipch1               : 10  ; /* [19..10]  */
        unsigned int    clipch2               : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDCLIPH;

/* Define the union U_DSDDATEINV */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    date_dv_inv           : 1   ; /* [0]  */
        unsigned int    date_hsync_inv        : 1   ; /* [1]  */
        unsigned int    date_vsync_inv        : 1   ; /* [2]  */
        unsigned int    date_field_inv        : 1   ; /* [3]  */
        unsigned int    date_vsync_hmid       : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDDATEINV;

/* Define the union U_DSDSTATE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vback_blank           : 1   ; /* [0]  */
        unsigned int    vblank                : 1   ; /* [1]  */
        unsigned int    bottom_field          : 1   ; /* [2]  */
        unsigned int    current_pos           : 13  ; /* [15..3]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DSDSTATE;

// Define the union U_HDATE_VERSION
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int hdate_version           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_HDATE_VERSION;
/* Define the union U_HDATE_EN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hd_en                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_EN;

/* Define the union U_HDATE_POLA_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hsync_in_pola         : 1   ; /* [0]  */
        unsigned int    vsync_in_pola         : 1   ; /* [1]  */
        unsigned int    fid_in_pola           : 1   ; /* [2]  */
        unsigned int    hsync_out_pola        : 1   ; /* [3]  */
        unsigned int    vsync_out_pola        : 1   ; /* [4]  */
        unsigned int    fid_out_pola          : 1   ; /* [5]  */
        unsigned int    reserved_0            : 26  ; /* [31..6]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_POLA_CTRL;

/* Define the union U_HDATE_VIDEO_FORMAT */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_ft              : 4   ; /* [3..0]  */
        unsigned int    sync_add_ctrl         : 3   ; /* [6..4]  */
        unsigned int    video_out_ctrl        : 2   ; /* [8..7]  */
        unsigned int    csc_ctrl              : 3   ; /* [11..9]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_VIDEO_FORMAT;

/* Define the union U_HDATE_STATE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    line_len              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 3   ; /* [15..13]  */
        unsigned int    frame_len             : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 1   ; /* [27]  */
        unsigned int    mv_en_pin             : 1   ; /* [28]  */
        unsigned int    reserved_2            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_STATE;

/* Define the union U_HDATE_OUT_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vsync_sel             : 2   ; /* [1..0]  */
        unsigned int    hsync_sel             : 2   ; /* [3..2]  */
        unsigned int    video3_sel            : 2   ; /* [5..4]  */
        unsigned int    video2_sel            : 2   ; /* [7..6]  */
        unsigned int    video1_sel            : 2   ; /* [9..8]  */
        unsigned int    src_ctrl              : 2   ; /* [11..10]  */
        unsigned int    sync_lpf_en           : 1   ; /* [12]  */
        unsigned int    sd_sel                : 1   ; /* [13]  */
        unsigned int    reserved_0            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_OUT_CTRL;

/* Define the union U_HDATE_SRC_13_COEF1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap1_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap1_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF1;

/* Define the union U_HDATE_SRC_13_COEF2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap2_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap2_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF2;

/* Define the union U_HDATE_SRC_13_COEF3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap3_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap3_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF3;

/* Define the union U_HDATE_SRC_13_COEF4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap4_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap4_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF4;

/* Define the union U_HDATE_SRC_13_COEF5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap5_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap5_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF5;

/* Define the union U_HDATE_SRC_13_COEF6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap6_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap6_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF6;

/* Define the union U_HDATE_SRC_13_COEF7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap7_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap7_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF7;

/* Define the union U_HDATE_SRC_13_COEF8 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap8_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap8_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF8;

/* Define the union U_HDATE_SRC_13_COEF9 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap9_1           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap9_3           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF9;

/* Define the union U_HDATE_SRC_13_COEF10 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap10_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap10_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF10;

/* Define the union U_HDATE_SRC_13_COEF11 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap11_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap11_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF11;

/* Define the union U_HDATE_SRC_13_COEF12 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap12_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap12_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF12;

/* Define the union U_HDATE_SRC_13_COEF13 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap13_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap13_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF13;

/* Define the union U_HDATE_SRC_24_COEF1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap1_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap1_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF1;

/* Define the union U_HDATE_SRC_24_COEF2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap2_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap2_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF2;

/* Define the union U_HDATE_SRC_24_COEF3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap3_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap3_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF3;

/* Define the union U_HDATE_SRC_24_COEF4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap4_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap4_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF4;

/* Define the union U_HDATE_SRC_24_COEF5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap5_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap5_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF5;

/* Define the union U_HDATE_SRC_24_COEF6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap6_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap6_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF6;

/* Define the union U_HDATE_SRC_24_COEF7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap7_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap7_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF7;

/* Define the union U_HDATE_SRC_24_COEF8 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap8_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap8_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF8;

/* Define the union U_HDATE_SRC_24_COEF9 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap9_2           : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap9_4           : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF9;

/* Define the union U_HDATE_SRC_24_COEF10 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap10_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap10_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF10;

/* Define the union U_HDATE_SRC_24_COEF11 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap11_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap11_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF11;

/* Define the union U_HDATE_SRC_24_COEF12 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap12_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap12_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF12;

/* Define the union U_HDATE_SRC_24_COEF13 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap13_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap13_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF13;

/* Define the union U_HDATE_CSC_COEF1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_coef_r_y          : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 4   ; /* [15..12]  */
        unsigned int    csc_coef_r_cb         : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_COEF1;

/* Define the union U_HDATE_CSC_COEF2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_coef_r_cr         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 4   ; /* [15..12]  */
        unsigned int    csc_coef_g_y          : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_COEF2;

/* Define the union U_HDATE_CSC_COEF3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_coef_g_cb         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 4   ; /* [15..12]  */
        unsigned int    csc_coef_g_cr         : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_COEF3;

/* Define the union U_HDATE_CSC_COEF4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_coef_b_y          : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 4   ; /* [15..12]  */
        unsigned int    csc_coef_b_cb         : 12  ; /* [27..16]  */
        unsigned int    reserved_1            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_COEF4;

/* Define the union U_HDATE_CSC_COEF5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_coef_b_cr         : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_COEF5;

/* Define the union U_HDATE_SRC_EN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    src_round_en          : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_EN;

/* Define the union U_HDATE_CSC_EN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    csc_round_en          : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CSC_EN;

/* Define the union U_HDATE_TEST */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    test_data             : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 22  ; /* [31..10]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_TEST;

/* Define the union U_HDATE_VBI_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cgmsb_add_en          : 1   ; /* [0]  */
        unsigned int    cgmsa_add_en          : 1   ; /* [1]  */
        unsigned int    mv_en                 : 1   ; /* [2]  */
        unsigned int    vbi_lpf_en            : 1   ; /* [3]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_VBI_CTRL;

/* Define the union U_HDATE_CGMSA_DATA */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cgmsa_data            : 20  ; /* [19..0]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CGMSA_DATA;

/* Define the union U_HDATE_CGMSB_H */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hdate_cgmsb_h         : 6   ; /* [5..0]  */
        unsigned int    reserved_0            : 26  ; /* [31..6]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_CGMSB_H;

/* Define the union U_HDATE_DACDET1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdac_det_high         : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    det_line              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_DACDET1;

/* Define the union U_HDATE_DACDET2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    det_pixel_wid         : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 4   ; /* [30..27]  */
        unsigned int    vdac_det_en           : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_DACDET2;

/* Define the union U_HDATE_SRC_13_COEF14 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap14_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap14_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF14;

/* Define the union U_HDATE_SRC_13_COEF15 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap15_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap15_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF15;

/* Define the union U_HDATE_SRC_13_COEF16 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap16_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap16_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF16;

/* Define the union U_HDATE_SRC_13_COEF17 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap17_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap17_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF17;

/* Define the union U_HDATE_SRC_13_COEF18 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap18_1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap18_3          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_13_COEF18;

/* Define the union U_HDATE_SRC_24_COEF14 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap14_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap14_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF14;

/* Define the union U_HDATE_SRC_24_COEF15 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap15_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap15_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF15;

/* Define the union U_HDATE_SRC_24_COEF16 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap16_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap16_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF16;

/* Define the union U_HDATE_SRC_24_COEF17 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap17_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap17_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF17;

/* Define the union U_HDATE_SRC_24_COEF18 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_tap18_2          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    coef_tap18_4          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_HDATE_SRC_24_COEF18;

/* Define the union U_DATE_COEFF0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt_seq                : 1   ; /* [0]  */
        unsigned int    chgain_en             : 1   ; /* [1]  */
        unsigned int    sylp_en               : 1   ; /* [2]  */
        unsigned int    chlp_en               : 1   ; /* [3]  */
        unsigned int    oversam2_en           : 1   ; /* [4]  */
        unsigned int    lunt_en               : 1   ; /* [5]  */
        unsigned int    oversam_en            : 2   ; /* [7..6]  */
        unsigned int    reserved_0            : 1   ; /* [8]  */
        unsigned int    luma_dl               : 4   ; /* [12..9]  */
        unsigned int    agc_amp_sel           : 1   ; /* [13]  */
        unsigned int    length_sel            : 1   ; /* [14]  */
        unsigned int    sync_mode_scart       : 1   ; /* [15]  */
        unsigned int    sync_mode_sel         : 2   ; /* [17..16]  */
        unsigned int    style_sel             : 4   ; /* [21..18]  */
        unsigned int    fm_sel                : 1   ; /* [22]  */
        unsigned int    vbi_lpf_en            : 1   ; /* [23]  */
        unsigned int    rgb_en                : 1   ; /* [24]  */
        unsigned int    scanline              : 1   ; /* [25]  */
        unsigned int    pbpr_lpf_en           : 1   ; /* [26]  */
        unsigned int    pal_half_en           : 1   ; /* [27]  */
        unsigned int    reserved_1            : 1   ; /* [28]  */
        unsigned int    dis_ire               : 1   ; /* [29]  */
        unsigned int    clpf_sel              : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF0;

/* Define the union U_DATE_COEFF1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac_test              : 10  ; /* [9..0]  */
        unsigned int    date_test_mode        : 2   ; /* [11..10]  */
        unsigned int    date_test_en          : 1   ; /* [12]  */
        unsigned int    amp_outside           : 10  ; /* [22..13]  */
        unsigned int    c_limit_en            : 1   ; /* [23]  */
        unsigned int    cc_seq                : 1   ; /* [24]  */
        unsigned int    cgms_seq              : 1   ; /* [25]  */
        unsigned int    vps_seq               : 1   ; /* [26]  */
        unsigned int    wss_seq               : 1   ; /* [27]  */
        unsigned int    cvbs_limit_en         : 1   ; /* [28]  */
        unsigned int    c_gain                : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF1;

// Define the union U_DATE_COEFF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int coef02                  : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_DATE_COEFF2;
/* Define the union U_DATE_COEFF3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef03                : 26  ; /* [25..0]  */
        unsigned int    reserved_0            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF3;

/* Define the union U_DATE_COEFF4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef04                : 30  ; /* [29..0]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF4;

/* Define the union U_DATE_COEFF5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef05                : 29  ; /* [28..0]  */
        unsigned int    reserved_0            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF5;

/* Define the union U_DATE_COEFF6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef06_1              : 23  ; /* [22..0]  */
        unsigned int    reserved_0            : 8   ; /* [30..23]  */
        unsigned int    coef06_0              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF6;

/* Define the union U_DATE_COEFF7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt07_enf2             : 1   ; /* [0]  */
        unsigned int    tt08_enf2             : 1   ; /* [1]  */
        unsigned int    tt09_enf2             : 1   ; /* [2]  */
        unsigned int    tt10_enf2             : 1   ; /* [3]  */
        unsigned int    tt11_enf2             : 1   ; /* [4]  */
        unsigned int    tt12_enf2             : 1   ; /* [5]  */
        unsigned int    tt13_enf2             : 1   ; /* [6]  */
        unsigned int    tt14_enf2             : 1   ; /* [7]  */
        unsigned int    tt15_enf2             : 1   ; /* [8]  */
        unsigned int    tt16_enf2             : 1   ; /* [9]  */
        unsigned int    tt17_enf2             : 1   ; /* [10]  */
        unsigned int    tt18_enf2             : 1   ; /* [11]  */
        unsigned int    tt19_enf2             : 1   ; /* [12]  */
        unsigned int    tt20_enf2             : 1   ; /* [13]  */
        unsigned int    tt21_enf2             : 1   ; /* [14]  */
        unsigned int    tt22_enf2             : 1   ; /* [15]  */
        unsigned int    tt07_enf1             : 1   ; /* [16]  */
        unsigned int    tt08_enf1             : 1   ; /* [17]  */
        unsigned int    tt09_enf1             : 1   ; /* [18]  */
        unsigned int    tt10_enf1             : 1   ; /* [19]  */
        unsigned int    tt11_enf1             : 1   ; /* [20]  */
        unsigned int    tt12_enf1             : 1   ; /* [21]  */
        unsigned int    tt13_enf1             : 1   ; /* [22]  */
        unsigned int    tt14_enf1             : 1   ; /* [23]  */
        unsigned int    tt15_enf1             : 1   ; /* [24]  */
        unsigned int    tt16_enf1             : 1   ; /* [25]  */
        unsigned int    tt17_enf1             : 1   ; /* [26]  */
        unsigned int    tt18_enf1             : 1   ; /* [27]  */
        unsigned int    tt19_enf1             : 1   ; /* [28]  */
        unsigned int    tt20_enf1             : 1   ; /* [29]  */
        unsigned int    tt21_enf1             : 1   ; /* [30]  */
        unsigned int    tt22_enf1             : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF7;

/* Define the union U_DATE_COEFF10 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt_pktoff             : 8   ; /* [7..0]  */
        unsigned int    tt_mode               : 2   ; /* [9..8]  */
        unsigned int    tt_highest            : 1   ; /* [10]  */
        unsigned int    full_page             : 1   ; /* [11]  */
        unsigned int    nabts_100ire          : 1   ; /* [12]  */
        unsigned int    reserved_0            : 18  ; /* [30..13]  */
        unsigned int    tt_ready              : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF10;

/* Define the union U_DATE_COEFF11 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    date_clf2             : 10  ; /* [9..0]  */
        unsigned int    date_clf1             : 10  ; /* [19..10]  */
        unsigned int    cc_enf2               : 1   ; /* [20]  */
        unsigned int    cc_enf1               : 1   ; /* [21]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF11;

/* Define the union U_DATE_COEFF12 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cc_f2data             : 16  ; /* [15..0]  */
        unsigned int    cc_f1data             : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF12;

/* Define the union U_DATE_COEFF13 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cg_f1data             : 20  ; /* [19..0]  */
        unsigned int    cg_enf2               : 1   ; /* [20]  */
        unsigned int    cg_enf1               : 1   ; /* [21]  */
        unsigned int    reserved_0            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF13;

/* Define the union U_DATE_COEFF14 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cg_f2data             : 20  ; /* [19..0]  */
        unsigned int    reserved_0            : 12  ; /* [31..20]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF14;

/* Define the union U_DATE_COEFF15 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wss_data              : 14  ; /* [13..0]  */
        unsigned int    wss_en                : 1   ; /* [14]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF15;

/* Define the union U_DATE_COEFF16 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vps_data              : 24  ; /* [23..0]  */
        unsigned int    vps_en                : 1   ; /* [24]  */
        unsigned int    reserved_0            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF16;

/* Define the union U_DATE_COEFF19 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vps_data              : 16  ; /* [15..0]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF19;

/* Define the union U_DATE_COEFF20 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt05_enf2             : 1   ; /* [0]  */
        unsigned int    tt06_enf2             : 1   ; /* [1]  */
        unsigned int    tt06_enf1             : 1   ; /* [2]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF20;

/* Define the union U_DATE_COEFF21 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac0_in_sel           : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    dac1_in_sel           : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    dac2_in_sel           : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    dac3_in_sel           : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    dac4_in_sel           : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    dac5_in_sel           : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF21;

/* Define the union U_DATE_COEFF22 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    video_phase_delta     : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF22;

/* Define the union U_DATE_COEFF23 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dac0_out_dly          : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    dac1_out_dly          : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    dac2_out_dly          : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    dac3_out_dly          : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    dac4_out_dly          : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    dac5_out_dly          : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF23;

// Define the union U_DATE_COEFF24
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int burst_start             : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_DATE_COEFF24;
/* Define the union U_DATE_COEFF25 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    x_n_coef              : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 3   ; /* [15..13]  */
        unsigned int    x_n_1_coef            : 13  ; /* [28..16]  */
        unsigned int    reserved_1            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF25;

/* Define the union U_DATE_COEFF26 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    x_n_1_coef            : 13  ; /* [12..0]  */
        unsigned int    reserved_0            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF26;

/* Define the union U_DATE_COEFF27 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    y_n_coef              : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    y_n_1_coef            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF27;

/* Define the union U_DATE_COEFF28 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pixel_begin1          : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    pixel_begin2          : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF28;

/* Define the union U_DATE_COEFF29 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pixel_end             : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF29;

/* Define the union U_DATE_COEFF30 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    g_secam               : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF30;

/* Define the union U_DATE_ISRMASK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt_mask               : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_ISRMASK;

/* Define the union U_DATE_ISRSTATE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt_status             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_ISRSTATE;

/* Define the union U_DATE_ISR */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    tt_int                : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_ISR;

/* Define the union U_DATE_COEFF37 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_y1_coeff0         : 8   ; /* [7..0]  */
        unsigned int    fir_y1_coeff1         : 8   ; /* [15..8]  */
        unsigned int    fir_y1_coeff2         : 8   ; /* [23..16]  */
        unsigned int    fir_y1_coeff3         : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF37;

/* Define the union U_DATE_COEFF38 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_y2_coeff0         : 16  ; /* [15..0]  */
        unsigned int    fir_y2_coeff1         : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF38;

/* Define the union U_DATE_COEFF39 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_y2_coeff2         : 16  ; /* [15..0]  */
        unsigned int    fir_y2_coeff3         : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF39;

/* Define the union U_DATE_COEFF40 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_c1_coeff0         : 8   ; /* [7..0]  */
        unsigned int    fir_c1_coeff1         : 8   ; /* [15..8]  */
        unsigned int    fir_c1_coeff2         : 8   ; /* [23..16]  */
        unsigned int    fir_c1_coeff3         : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF40;

/* Define the union U_DATE_COEFF41 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_c2_coeff0         : 16  ; /* [15..0]  */
        unsigned int    fir_c2_coeff1         : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF41;

/* Define the union U_DATE_COEFF42 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fir_c2_coeff2         : 16  ; /* [15..0]  */
        unsigned int    fir_c2_coeff3         : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF42;

/* Define the union U_DATE_DACDET1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdac_det_high         : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    det_line              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_DACDET1;

/* Define the union U_DATE_DACDET2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    det_pixel_wid         : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 4   ; /* [30..27]  */
        unsigned int    vdac_det_en           : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_DACDET2;

/* Define the union U_DATE_COEFF50 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF50;

/* Define the union U_DATE_COEFF51 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF51;

/* Define the union U_DATE_COEFF52 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF52;

/* Define the union U_DATE_COEFF53 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF53;

/* Define the union U_DATE_COEFF54 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF54;

/* Define the union U_DATE_COEFF55 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; /* [10..0]  */
        unsigned int    reserved_0            : 5   ; /* [15..11]  */
        unsigned int    ovs_coeff1            : 11  ; /* [26..16]  */
        unsigned int    reserved_1            : 5   ; /* [31..27]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF55;

/* Define the union U_DATE_COEFF56 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    oversam2_round_en     : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF56;

/* Define the union U_DATE_COEFF57 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    v_gain                : 8   ; /* [7..0]  */
        unsigned int    u_gain                : 8   ; /* [15..8]  */
        unsigned int    ycvbs_gain            : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 7   ; /* [30..24]  */
        unsigned int    cvbs_gain_en          : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF57;

/* Define the union U_DATE_COEFF58 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pr_gain               : 8   ; /* [7..0]  */
        unsigned int    pb_gain               : 8   ; /* [15..8]  */
        unsigned int    ycomp_gain            : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 7   ; /* [30..24]  */
        unsigned int    comp_gain_en          : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF58;

/* Define the union U_DATE_COEFF59 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ynotch_clip_fullrange : 1   ; /* [0]  */
        unsigned int    clpf_clip_fullrange   : 1   ; /* [1]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    y_os_clip_fullrange   : 1   ; /* [4]  */
        unsigned int    reserved_1            : 3   ; /* [7..5]  */
        unsigned int    u_os_clip_fullrange   : 1   ; /* [8]  */
        unsigned int    v_os_clip_fullrange   : 1   ; /* [9]  */
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    cb_os_clip_fullrange  : 1   ; /* [12]  */
        unsigned int    cr_os_clip_fullrange  : 1   ; /* [13]  */
        unsigned int    reserved_3            : 2   ; /* [15..14]  */
        unsigned int    cb_gain_polar         : 1   ; /* [16]  */
        unsigned int    reserved_4            : 15  ; /* [31..17]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF59;

/* Define the union U_DATE_COEFF60 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    line_960h_en          : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF60;

/* Define the union U_DATE_COEFF61 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    burst_start_ovrd      : 1   ; /* [0]  */
        unsigned int    burst_dura_ovrd       : 1   ; /* [1]  */
        unsigned int    cb_bound_ovrd         : 1   ; /* [2]  */
        unsigned int    pal_half_ovrd         : 1   ; /* [3]  */
        unsigned int    rgb_acrive_ovrd       : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF61;

/* Define the union U_DATE_COEFF66 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    htotal_ovrd           : 1   ; /* [0]  */
        unsigned int    wid_sync_ovrd         : 1   ; /* [1]  */
        unsigned int    wid_hfb_ovrd          : 1   ; /* [2]  */
        unsigned int    wid_act_ovrd          : 1   ; /* [3]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF66;

/* Define the union U_DATE_COEFF67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    htotal_sw             : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF67;

/* Define the union U_DATE_COEFF68 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wid_sync_sw           : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF68;

/* Define the union U_DATE_COEFF69 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wid_hfb_sw            : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF69;

/* Define the union U_DATE_COEFF70 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wid_act_sw            : 12  ; /* [11..0]  */
        unsigned int    reserved_0            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF70;

/* Define the union U_DATE_COEFF71 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    phase_shift_ovrd      : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF71;

/* Define the union U_DATE_COEFF73 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_ovrd       : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF73;

/* Define the union U_DATE_COEFF74 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_1          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_2          : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF74;

/* Define the union U_DATE_COEFF75 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_3          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_4          : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF75;

/* Define the union U_DATE_COEFF76 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_5          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_6          : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF76;

/* Define the union U_DATE_COEFF77 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_7          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_8          : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF77;

/* Define the union U_DATE_COEFF78 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_9          : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_10         : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF78;

/* Define the union U_DATE_COEFF79 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_notch_11         : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    coef_notch_12         : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF79;

/* Define the union U_DATE_COEFF80 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_chra_lpf_ovrd    : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF80;

/* Define the union U_DATE_COEFF81 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_chra_lpf_1       : 9   ; /* [8..0]  */
        unsigned int    reserved_0            : 7   ; /* [15..9]  */
        unsigned int    coef_chra_lpf_2       : 9   ; /* [24..16]  */
        unsigned int    reserved_1            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF81;

/* Define the union U_DATE_COEFF82 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_chra_lpf_3       : 9   ; /* [8..0]  */
        unsigned int    reserved_0            : 7   ; /* [15..9]  */
        unsigned int    coef_chra_lpf_4       : 9   ; /* [24..16]  */
        unsigned int    reserved_1            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF82;

/* Define the union U_DATE_COEFF83 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_chra_lpf_5       : 9   ; /* [8..0]  */
        unsigned int    reserved_0            : 7   ; /* [15..9]  */
        unsigned int    coef_chra_lpf_6       : 9   ; /* [24..16]  */
        unsigned int    reserved_1            : 7   ; /* [31..25]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF83;

/* Define the union U_DATE_COEFF84 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    coef_chra_lpf_7       : 9   ; /* [8..0]  */
        unsigned int    reserved_0            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DATE_COEFF84;

/* Define the union U_VHDHLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHLCOEF;

/* Define the union U_VHDHCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHCCOEF;

/* Define the union U_VHDVLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVLCOEF;

/* Define the union U_VHDVCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVCCOEF;

/* Define the union U_VSDHLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDHLCOEF;

/* Define the union U_VSDHCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDHCCOEF;

/* Define the union U_VSDVLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVLCOEF;

/* Define the union U_VSDVCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VSDVCCOEF;

/* Define the union U_G0HLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HLCOEF;

/* Define the union U_G0HCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HCCOEF;

/* Define the union U_G0VLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VLCOEF;

/* Define the union U_G0VCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VCCOEF;

/* Define the union U_G1HLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1HLCOEF;

/* Define the union U_G1HCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1HCCOEF;

/* Define the union U_G1VLCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1VLCOEF;

/* Define the union U_G1VCCOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G1VCCOEF;

/* Define the union U_DHDGAMMAN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    gamma_databn          : 10  ; /* [9..0]  */
        unsigned int    gamma_datagn          : 10  ; /* [19..10]  */
        unsigned int    gamma_datarn          : 10  ; /* [29..20]  */
        unsigned int    reserved_0            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_DHDGAMMAN;

/* Define the union U_VHDHLTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHLTICOEF;

/* Define the union U_VHDHCTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDHCTICOEF;

/* Define the union U_VHDVLTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVLTICOEF;

/* Define the union U_VHDVCTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VHDVCTICOEF;

/* Define the union U_G0HLTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HLTICOEF;

/* Define the union U_G0HCTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    hccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0HCTICOEF;

/* Define the union U_G0VLTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vlcoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vlcoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VLTICOEF;

/* Define the union U_G0VCTICOEF */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vccoefn1              : 10  ; /* [9..0]  */
        unsigned int    reserved_0            : 6   ; /* [15..10]  */
        unsigned int    vccoefn2              : 10  ; /* [25..16]  */
        unsigned int    reserved_1            : 6   ; /* [31..26]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_G0VCTICOEF;

/* Define the union U_VIDCTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 30  ; /* [29..0]  */
        unsigned int    vid_mode              : 1   ; /* [30]  */
        unsigned int    vid_en                : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDCTRL;

/* Define the union U_VIDBLKPOS0_1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk0_xlpos            : 8   ; /* [7..0]  */
        unsigned int    blk0_ylpos            : 8   ; /* [15..8]  */
        unsigned int    blk1_xlpos            : 8   ; /* [23..16]  */
        unsigned int    blk1_ylpos            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLKPOS0_1;

/* Define the union U_VIDBLKPOS2_3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk2_xlpos            : 8   ; /* [7..0]  */
        unsigned int    blk2_ylpos            : 8   ; /* [15..8]  */
        unsigned int    blk3_xlpos            : 8   ; /* [23..16]  */
        unsigned int    blk3_ylpos            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLKPOS2_3;

/* Define the union U_VIDBLKPOS4_5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk4_xlpos            : 8   ; /* [7..0]  */
        unsigned int    blk4_ylpos            : 8   ; /* [15..8]  */
        unsigned int    blk5_xlpos            : 8   ; /* [23..16]  */
        unsigned int    blk5_ylpos            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLKPOS4_5;

/* Define the union U_VIDBLK0TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK0TOL0;

/* Define the union U_VIDBLK0TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK0TOL1;

/* Define the union U_VIDBLK1TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK1TOL0;

/* Define the union U_VIDBLK1TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK1TOL1;

/* Define the union U_VIDBLK2TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK2TOL0;

/* Define the union U_VIDBLK2TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK2TOL1;

/* Define the union U_VIDBLK3TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK3TOL0;

/* Define the union U_VIDBLK3TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK3TOL1;

/* Define the union U_VIDBLK4TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK4TOL0;

/* Define the union U_VIDBLK4TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK4TOL1;

/* Define the union U_VIDBLK5TOL0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix0              : 8   ; /* [7..0]  */
        unsigned int    blk_pix1              : 8   ; /* [15..8]  */
        unsigned int    blk_pix2              : 8   ; /* [23..16]  */
        unsigned int    blk_pix3              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK5TOL0;

/* Define the union U_VIDBLK5TOL1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    blk_pix4              : 8   ; /* [7..0]  */
        unsigned int    blk_pix5              : 8   ; /* [15..8]  */
        unsigned int    blk_pix6              : 8   ; /* [23..16]  */
        unsigned int    blk_pix7              : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_VIDBLK5TOL1;

// Define the union U_VOUENVDEBUG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc_cmp_lsize           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VOUENVDEBUG0;
// Define the union U_VOUENVDEBUG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int wbc_cmp_csize           : 32  ; // [31..0]
    } bits;

    // Define an unsigned member
        unsigned int    u32;

} U_VOUENVDEBUG1;
//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile U_VOCTRL               VOCTRL                   ; /* 0x0 */
    volatile U_VOINTSTA             VOINTSTA                 ; /* 0x4 */
    volatile U_VOMSKINTSTA          VOMSKINTSTA              ; /* 0x8 */
    volatile U_VOINTMSK             VOINTMSK                 ; /* 0xc */
    volatile U_VOUVERSION1          VOUVERSION1              ; /* 0x10 */
    volatile U_VOUVERSION2          VOUVERSION2              ; /* 0x14 */
    volatile U_VOMUXDATA            VOMUXDATA                ; /* 0x18 */
    volatile U_VOMUX                VOMUX                    ; /* 0x1c */
    volatile U_VODEBUG              VODEBUG                  ; /* 0x20 */
    volatile unsigned int           reserved_0[7]                     ; /* 0x24~0x3c */
    volatile U_VOPARAUP             VOPARAUP                 ; /* 0x40 */
    volatile U_VHDHCOEFAD           VHDHCOEFAD               ; /* 0x44 */
    volatile U_VHDVCOEFAD           VHDVCOEFAD               ; /* 0x48 */
    volatile unsigned int           reserved_1[2]                     ; /* 0x4c~0x50 */
    volatile U_ACCAD                ACCAD                    ; /* 0x54 */
    volatile U_VSDHCOEFAD           VSDHCOEFAD               ; /* 0x58 */
    volatile U_VSDVCOEFAD           VSDVCOEFAD               ; /* 0x5c */
    volatile U_G0CLUTAD             G0CLUTAD                 ; /* 0x60 */
    volatile U_G1CLUTAD             G1CLUTAD                 ; /* 0x64 */
    volatile U_G0HCOEFAD            G0HCOEFAD                ; /* 0x68 */
    volatile U_G0VCOEFAD            G0VCOEFAD                ; /* 0x6c */
    volatile U_G1HCOEFAD            G1HCOEFAD                ; /* 0x70 */
    volatile U_G1VCOEFAD            G1VCOEFAD                ; /* 0x74 */
    volatile U_DHDGAMMAAD           DHDGAMMAAD               ; /* 0x78 */
    volatile unsigned int           reserved_2[2]                     ; /* 0x7c~0x80 */
    volatile U_G2CLUTAD             G2CLUTAD                 ; /* 0x84 */
    volatile unsigned int           reserved_3[22]                     ; /* 0x88~0xdc */
    volatile U_DACCTRL              DACCTRL                  ; /* 0xe0 */
    volatile U_DACCTRL0_1           DACCTRL0_1               ; /* 0xe4 */
    volatile U_DACCTRL2_3           DACCTRL2_3               ; /* 0xe8 */
    volatile unsigned int           reserved_4[5]                     ; /* 0xec~0xfc */
    volatile U_VHDCTRL              VHDCTRL                  ; /* 0x100 */
    volatile U_VHDUPD               VHDUPD                   ; /* 0x104 */
    volatile U_VHDLADDR             VHDLADDR                 ; /* 0x108 */
    volatile U_VHDLCADDR            VHDLCADDR                ; /* 0x10c */
    volatile U_VHDLCRADDR           VHDLCRADDR               ; /* 0x110 */
    volatile U_VHDCADDR             VHDCADDR                 ; /* 0x114 */
    volatile U_VHDCCADDR            VHDCCADDR                ; /* 0x118 */
    volatile U_VHDCCRADDR           VHDCCRADDR               ; /* 0x11c */
    volatile U_VHDNADDR             VHDNADDR                 ; /* 0x120 */
    volatile U_VHDNCADDR            VHDNCADDR                ; /* 0x124 */
    volatile U_VHDNCRADDR           VHDNCRADDR               ; /* 0x128 */
    volatile U_VHDSTRIDE            VHDSTRIDE                ; /* 0x12c */
    volatile U_VHDCRSTRIDE          VHDCRSTRIDE              ; /* 0x130 */
    volatile U_VHDIRESO             VHDIRESO                 ; /* 0x134 */
    volatile unsigned int           reserved_5                     ; /* 0x138 */
    volatile U_VHDCBMPARA           VHDCBMPARA               ; /* 0x13c */
    volatile U_VHDDIEADDR           VHDDIEADDR               ; /* 0x140 */
    volatile U_VHDCMPOFFSET         VHDCMPOFFSET             ; /* 0x144 */
    volatile unsigned int           reserved_6                     ; /* 0x148 */
    volatile U_VHDDIESTADDR         VHDDIESTADDR             ; /* 0x14c */
    volatile U_VHDCFPOS             VHDCFPOS                 ; /* 0x150 */
    volatile U_VHDCLPOS             VHDCLPOS                 ; /* 0x154 */
    volatile U_VHDSRCRESO           VHDSRCRESO               ; /* 0x158 */
    volatile U_VHDDRAWMODE          VHDDRAWMODE              ; /* 0x15c */
    volatile U_VHDDFPOS             VHDDFPOS                 ; /* 0x160 */
    volatile U_VHDDLPOS             VHDDLPOS                 ; /* 0x164 */
    volatile U_VHDVFPOS             VHDVFPOS                 ; /* 0x168 */
    volatile U_VHDVLPOS             VHDVLPOS                 ; /* 0x16c */
    volatile U_VHDBK                VHDBK                    ; /* 0x170 */
    volatile unsigned int           reserved_7[3]                     ; /* 0x174~0x17c */
    volatile U_VHDCSCIDC            VHDCSCIDC                ; /* 0x180 */
    volatile U_VHDCSCODC            VHDCSCODC                ; /* 0x184 */
    volatile U_VHDCSCP0             VHDCSCP0                 ; /* 0x188 */
    volatile U_VHDCSCP1             VHDCSCP1                 ; /* 0x18c */
    volatile U_VHDCSCP2             VHDCSCP2                 ; /* 0x190 */
    volatile U_VHDCSCP3             VHDCSCP3                 ; /* 0x194 */
    volatile U_VHDCSCP4             VHDCSCP4                 ; /* 0x198 */
    volatile unsigned int           reserved_8                     ; /* 0x19c */
    volatile U_VHDACM0              VHDACM0                  ; /* 0x1a0 */
    volatile U_VHDACM1              VHDACM1                  ; /* 0x1a4 */
    volatile U_VHDACM2              VHDACM2                  ; /* 0x1a8 */
    volatile U_VHDACM3              VHDACM3                  ; /* 0x1ac */
    volatile U_VHDACM4              VHDACM4                  ; /* 0x1b0 */
    volatile U_VHDACM5              VHDACM5                  ; /* 0x1b4 */
    volatile U_VHDACM6              VHDACM6                  ; /* 0x1b8 */
    volatile U_VHDACM7              VHDACM7                  ; /* 0x1bc */
    volatile U_VHDHSP               VHDHSP                   ; /* 0x1c0 */
    volatile U_VHDHLOFFSET          VHDHLOFFSET              ; /* 0x1c4 */
    volatile U_VHDHCOFFSET          VHDHCOFFSET              ; /* 0x1c8 */
    volatile U_VHDSHOOTCTRL_HL      VHDSHOOTCTRL_HL          ; /* 0x1cc */
    volatile U_VHDSHOOTCTRL_VL      VHDSHOOTCTRL_VL          ; /* 0x1d0 */
    volatile unsigned int           reserved_9                     ; /* 0x1d4 */
    volatile U_VHDVSP               VHDVSP                   ; /* 0x1d8 */
    volatile U_VHDVSR               VHDVSR                   ; /* 0x1dc */
    volatile U_VHDVOFFSET           VHDVOFFSET               ; /* 0x1e0 */
    volatile U_VHDZMEORESO          VHDZMEORESO              ; /* 0x1e4 */
    volatile U_VHDZMEIRESO          VHDZMEIRESO              ; /* 0x1e8 */
    volatile U_VHDZMEDBG            VHDZMEDBG                ; /* 0x1ec */
    volatile U_VHDVC1CTRL           VHDVC1CTRL               ; /* 0x1f0 */
    volatile U_VHDVC1CFG1           VHDVC1CFG1               ; /* 0x1f4 */
    volatile U_VHDVC1CFG2           VHDVC1CFG2               ; /* 0x1f8 */
    volatile U_VHDVC1CFG3           VHDVC1CFG3               ; /* 0x1fc */
    volatile U_VHDACCTHD1           VHDACCTHD1               ; /* 0x200 */
    volatile U_VHDACCTHD2           VHDACCTHD2               ; /* 0x204 */
    volatile unsigned int           reserved_10[2]                     ; /* 0x208~0x20c */
    volatile U_VHDACCLOWN           VHDACCLOWN[3]            ; /* 0x210~0x218 */
    volatile unsigned int           reserved_11                     ; /* 0x21c */
    volatile U_VHDACCMEDN           VHDACCMEDN[3]            ; /* 0x220~0x228 */
    volatile unsigned int           reserved_12                     ; /* 0x22c */
    volatile U_VHDACCHIGHN          VHDACCHIGHN[3]           ; /* 0x230~0x238 */
    volatile unsigned int           reserved_13                     ; /* 0x23c */
    volatile U_VHDACCMLN            VHDACCMLN[3]             ; /* 0x240~0x248 */
    volatile unsigned int           reserved_14                     ; /* 0x24c */
    volatile U_VHDACCMHN            VHDACCMHN[3]             ; /* 0x250~0x258 */
    volatile unsigned int           reserved_15                     ; /* 0x25c */
    volatile U_VHDACC3LOW           VHDACC3LOW               ; /* 0x260 */
    volatile U_VHDACC3MED           VHDACC3MED               ; /* 0x264 */
    volatile U_VHDACC3HIGH          VHDACC3HIGH              ; /* 0x268 */
    volatile U_VHDACC8MLOW          VHDACC8MLOW              ; /* 0x26c */
    volatile U_VHDACC8MHIGH         VHDACC8MHIGH             ; /* 0x270 */
    volatile U_VHDACCTOTAL          VHDACCTOTAL              ; /* 0x274 */
    volatile unsigned int           reserved_16[2]                     ; /* 0x278~0x27c */
    volatile U_VHDIFIRCOEF01        VHDIFIRCOEF01            ; /* 0x280 */
    volatile U_VHDIFIRCOEF23        VHDIFIRCOEF23            ; /* 0x284 */
    volatile U_VHDIFIRCOEF45        VHDIFIRCOEF45            ; /* 0x288 */
    volatile U_VHDIFIRCOEF67        VHDIFIRCOEF67            ; /* 0x28c */
    volatile U_VHDLTICTRL           VHDLTICTRL               ; /* 0x290 */
    volatile U_VHDLHPASSCOEF        VHDLHPASSCOEF            ; /* 0x294 */
    volatile U_VHDLTITHD            VHDLTITHD                ; /* 0x298 */
    volatile unsigned int           reserved_17                     ; /* 0x29c */
    volatile U_VHDLHFREQTHD         VHDLHFREQTHD             ; /* 0x2a0 */
    volatile U_VHDLGAINCOEF         VHDLGAINCOEF             ; /* 0x2a4 */
    volatile unsigned int           reserved_18[2]                     ; /* 0x2a8~0x2ac */
    volatile U_VHDCTICTRL           VHDCTICTRL               ; /* 0x2b0 */
    volatile U_VHDCHPASSCOEF        VHDCHPASSCOEF            ; /* 0x2b4 */
    volatile U_VHDCTITHD            VHDCTITHD                ; /* 0x2b8 */
    volatile unsigned int           reserved_19                     ; /* 0x2bc */
    volatile U_VHDDNRCTRL           VHDDNRCTRL               ; /* 0x2c0 */
    volatile U_VHDDRCFG0            VHDDRCFG0                ; /* 0x2c4 */
    volatile U_VHDDRCFG1            VHDDRCFG1                ; /* 0x2c8 */
    volatile U_VHDDBCFG0            VHDDBCFG0                ; /* 0x2cc */
    volatile U_VHDDBCFG1            VHDDBCFG1                ; /* 0x2d0 */
    volatile U_VHDDBCFG2            VHDDBCFG2                ; /* 0x2d4 */
    volatile unsigned int           VHDDNRYINFSTADDR         ; /* 0x2d8 */
    volatile unsigned int           VHDDNRCINFSTADDR         ; /* 0x2dc */
    volatile U_VHDDNRINFSTRIDE      VHDDNRINFSTRIDE          ; /* 0x2e0 */
    volatile unsigned int           reserved_20[7]                     ; /* 0x2e4~0x2fc */
    volatile U_VHDDIECTRL           VHDDIECTRL               ; /* 0x300 */
    volatile unsigned int           reserved_21                     ; /* 0x304 */
    volatile U_VHDDIELMA0           VHDDIELMA0               ; /* 0x308 */
    volatile U_VHDDIELMA1           VHDDIELMA1               ; /* 0x30c */
    volatile U_VHDDIELMA2           VHDDIELMA2               ; /* 0x310 */
    volatile U_VHDDIEINTEN          VHDDIEINTEN              ; /* 0x314 */
    volatile U_VHDDIESCALE          VHDDIESCALE              ; /* 0x318 */
    volatile U_VHDDIECHECK1         VHDDIECHECK1             ; /* 0x31c */
    volatile U_VHDDIECHECK2         VHDDIECHECK2             ; /* 0x320 */
    volatile U_VHDDIEDIR0_3         VHDDIEDIR0_3             ; /* 0x324 */
    volatile U_VHDDIEDIR4_7         VHDDIEDIR4_7             ; /* 0x328 */
    volatile U_VHDDIEDIR8_11        VHDDIEDIR8_11            ; /* 0x32c */
    volatile U_VHDDIEDIR12_14       VHDDIEDIR12_14           ; /* 0x330 */
    volatile unsigned int           reserved_22                     ; /* 0x334 */
    volatile U_VHDDIESTA            VHDDIESTA                ; /* 0x338 */
    volatile unsigned int           reserved_23[26]                     ; /* 0x33c~0x3a0 */
    volatile U_VHDDIESTKADDR        VHDDIESTKADDR            ; /* 0x3a4 */
    volatile U_VHDDIESTLADDR        VHDDIESTLADDR            ; /* 0x3a8 */
    volatile U_VHDDIESTMADDR        VHDDIESTMADDR            ; /* 0x3ac */
    volatile U_VHDDIESTNADDR        VHDDIESTNADDR            ; /* 0x3b0 */
    volatile U_VHDDIESTSQTRADDR     VHDDIESTSQTRADDR         ; /* 0x3b4 */
    volatile U_VHDCCRSCLR0          VHDCCRSCLR0              ; /* 0x3b8 */
    volatile U_VHDCCRSCLR1          VHDCCRSCLR1              ; /* 0x3bc */
    volatile U_VHDPDPCCMOVCORING    VHDPDPCCMOVCORING        ; /* 0x3c0 */
    volatile U_VHDPDICHDTHD         VHDPDICHDTHD             ; /* 0x3c4 */
    volatile unsigned int           reserved_24[2]                     ; /* 0x3c8~0x3cc */
    volatile U_VHDPDICHDCNT         VHDPDICHDCNT             ; /* 0x3d0 */
    volatile unsigned int           reserved_25[11]                     ; /* 0x3d4~0x3fc */
    volatile U_VHDPDCTRL            VHDPDCTRL                ; /* 0x400 */
    volatile U_VHDPDBLKPOS0         VHDPDBLKPOS0             ; /* 0x404 */
    volatile U_VHDPDBLKPOS1         VHDPDBLKPOS1             ; /* 0x408 */
    volatile U_VHDPDBLKTHD          VHDPDBLKTHD              ; /* 0x40c */
    volatile U_VHDPDHISTTHD         VHDPDHISTTHD             ; /* 0x410 */
    volatile U_VHDPDUMTHD           VHDPDUMTHD               ; /* 0x414 */
    volatile U_VHDPDPCCCORING       VHDPDPCCCORING           ; /* 0x418 */
    volatile U_VHDPDPCCHTHD         VHDPDPCCHTHD             ; /* 0x41c */
    volatile U_VHDPDPCCVTHD         VHDPDPCCVTHD             ; /* 0x420 */
    volatile U_VHDPDITDIFFVTHD      VHDPDITDIFFVTHD          ; /* 0x424 */
    volatile U_VHDPDLASITHD         VHDPDLASITHD             ; /* 0x428 */
    volatile U_VHDPDFRMITDIFF       VHDPDFRMITDIFF           ; /* 0x42c */
    volatile U_VHDPDSTLBLKSAD       VHDPDSTLBLKSAD[16]       ; /* 0x430~0x46c */
    volatile U_VHDPDHISTBIN         VHDPDHISTBIN[4]          ; /* 0x470~0x47c */
    volatile U_VHDPDUMMATCH0        VHDPDUMMATCH0            ; /* 0x480 */
    volatile U_VHDPDUMNOMATCH0      VHDPDUMNOMATCH0          ; /* 0x484 */
    volatile U_VHDPDUMMATCH1        VHDPDUMMATCH1            ; /* 0x488 */
    volatile U_VHDPDUMNOMATCH1      VHDPDUMNOMATCH1          ; /* 0x48c */
    volatile U_VHDPDPCCFFWD         VHDPDPCCFFWD             ; /* 0x490 */
    volatile U_VHDPDPCCFWD          VHDPDPCCFWD              ; /* 0x494 */
    volatile U_VHDPDPCCBWD          VHDPDPCCBWD              ; /* 0x498 */
    volatile U_VHDPDPCCCRSS         VHDPDPCCCRSS             ; /* 0x49c */
    volatile U_VHDPDPCCPW           VHDPDPCCPW               ; /* 0x4a0 */
    volatile U_VHDPDPCCFWDTKR       VHDPDPCCFWDTKR           ; /* 0x4a4 */
    volatile U_VHDPDPCCBWDTKR       VHDPDPCCBWDTKR           ; /* 0x4a8 */
    volatile U_VHDPDPCCBLKFWD       VHDPDPCCBLKFWD[9]        ; /* 0x4ac~0x4cc */
    volatile U_VHDPDPCCBLKBWD       VHDPDPCCBLKBWD[9]        ; /* 0x4d0~0x4f0 */
    volatile U_VHDPDLASICNT14       VHDPDLASICNT14           ; /* 0x4f4 */
    volatile U_VHDPDLASICNT32       VHDPDLASICNT32           ; /* 0x4f8 */
    volatile U_VHDPDLASICNT34       VHDPDLASICNT34           ; /* 0x4fc */
    volatile unsigned int           reserved_26[128]                     ; /* 0x500~0x6fc */
    volatile U_VSDCTRL              VSDCTRL                  ; /* 0x700 */
    volatile U_VSDUPD               VSDUPD                   ; /* 0x704 */
    volatile unsigned int           reserved_27[3]                     ; /* 0x708~0x710 */
    volatile U_VSDCADDR             VSDCADDR                 ; /* 0x714 */
    volatile U_VSDCCADDR            VSDCCADDR                ; /* 0x718 */
    volatile unsigned int           reserved_28[4]                     ; /* 0x71c~0x728 */
    volatile U_VSDSTRIDE            VSDSTRIDE                ; /* 0x72c */
    volatile unsigned int           reserved_29                     ; /* 0x730 */
    volatile U_VSDIRESO             VSDIRESO                 ; /* 0x734 */
    volatile U_VSDWRAPTHD           VSDWRAPTHD               ; /* 0x738 */
    volatile U_VSDCBMPARA           VSDCBMPARA               ; /* 0x73c */
    volatile unsigned int           reserved_30                     ; /* 0x740 */
    volatile U_VSDCMPOFFSET         VSDCMPOFFSET             ; /* 0x744 */
    volatile unsigned int           reserved_31[2]                     ; /* 0x748~0x74c */
    volatile U_VSDCFPOS             VSDCFPOS                 ; /* 0x750 */
    volatile U_VSDCLPOS             VSDCLPOS                 ; /* 0x754 */
    volatile U_VSDSRCRESO           VSDSRCRESO               ; /* 0x758 */
    volatile U_VSDDRAWMODE          VSDDRAWMODE              ; /* 0x75c */
    volatile U_VSDDFPOS             VSDDFPOS                 ; /* 0x760 */
    volatile U_VSDDLPOS             VSDDLPOS                 ; /* 0x764 */
    volatile U_VSDVFPOS             VSDVFPOS                 ; /* 0x768 */
    volatile U_VSDVLPOS             VSDVLPOS                 ; /* 0x76c */
    volatile U_VSDBK                VSDBK                    ; /* 0x770 */
    volatile unsigned int           reserved_32[3]                     ; /* 0x774~0x77c */
    volatile U_VSDCSCIDC            VSDCSCIDC                ; /* 0x780 */
    volatile U_VSDCSCODC            VSDCSCODC                ; /* 0x784 */
    volatile U_VSDCSCP0             VSDCSCP0                 ; /* 0x788 */
    volatile U_VSDCSCP1             VSDCSCP1                 ; /* 0x78c */
    volatile U_VSDCSCP2             VSDCSCP2                 ; /* 0x790 */
    volatile U_VSDCSCP3             VSDCSCP3                 ; /* 0x794 */
    volatile U_VSDCSCP4             VSDCSCP4                 ; /* 0x798 */
    volatile unsigned int           reserved_33                     ; /* 0x79c */
    volatile U_VSDACM0              VSDACM0                  ; /* 0x7a0 */
    volatile U_VSDACM1              VSDACM1                  ; /* 0x7a4 */
    volatile U_VSDACM2              VSDACM2                  ; /* 0x7a8 */
    volatile U_VSDACM3              VSDACM3                  ; /* 0x7ac */
    volatile U_VSDACM4              VSDACM4                  ; /* 0x7b0 */
    volatile U_VSDACM5              VSDACM5                  ; /* 0x7b4 */
    volatile U_VSDACM6              VSDACM6                  ; /* 0x7b8 */
    volatile U_VSDACM7              VSDACM7                  ; /* 0x7bc */
    volatile U_VSDHSP               VSDHSP                   ; /* 0x7c0 */
    volatile U_VSDHLOFFSET          VSDHLOFFSET              ; /* 0x7c4 */
    volatile U_VSDHCOFFSET          VSDHCOFFSET              ; /* 0x7c8 */
    volatile unsigned int           reserved_34[3]                     ; /* 0x7cc~0x7d4 */
    volatile U_VSDVSP               VSDVSP                   ; /* 0x7d8 */
    volatile U_VSDVSR               VSDVSR                   ; /* 0x7dc */
    volatile U_VSDVOFFSET           VSDVOFFSET               ; /* 0x7e0 */
    volatile U_VSDZMEORESO          VSDZMEORESO              ; /* 0x7e4 */
    volatile U_VSDZMEIRESO          VSDZMEIRESO              ; /* 0x7e8 */
    volatile U_VSDZMEDBG            VSDZMEDBG                ; /* 0x7ec */
    volatile unsigned int           reserved_35[4]                     ; /* 0x7f0~0x7fc */
    volatile U_VSDACCTHD1           VSDACCTHD1               ; /* 0x800 */
    volatile U_VSDACCTHD2           VSDACCTHD2               ; /* 0x804 */
    volatile unsigned int           reserved_36[2]                     ; /* 0x808~0x80c */
    volatile U_VSDACCLOWN           VSDACCLOWN[3]            ; /* 0x810~0x818 */
    volatile unsigned int           reserved_37                     ; /* 0x81c */
    volatile U_VSDACCMEDN           VSDACCMEDN[3]            ; /* 0x820~0x828 */
    volatile unsigned int           reserved_38                     ; /* 0x82c */
    volatile U_VSDACCHIGHN          VSDACCHIGHN[3]           ; /* 0x830~0x838 */
    volatile unsigned int           reserved_39                     ; /* 0x83c */
    volatile U_VSDACCMLN            VSDACCMLN[3]             ; /* 0x840~0x848 */
    volatile unsigned int           reserved_40                     ; /* 0x84c */
    volatile U_VSDACCMHN            VSDACCMHN[3]             ; /* 0x850~0x858 */
    volatile unsigned int           reserved_41                     ; /* 0x85c */
    volatile U_VSDACC3LOW           VSDACC3LOW               ; /* 0x860 */
    volatile U_VSDACC3MED           VSDACC3MED               ; /* 0x864 */
    volatile U_VSDACC3HIGH          VSDACC3HIGH              ; /* 0x868 */
    volatile U_VSDACC8MLOW          VSDACC8MLOW              ; /* 0x86c */
    volatile U_VSDACC8MHIGH         VSDACC8MHIGH             ; /* 0x870 */
    volatile U_VSDACCTOTAL          VSDACCTOTAL              ; /* 0x874 */
    volatile unsigned int           reserved_42[2]                     ; /* 0x878~0x87c */
    volatile U_VSDIFIRCOEF01        VSDIFIRCOEF01            ; /* 0x880 */
    volatile U_VSDIFIRCOEF23        VSDIFIRCOEF23            ; /* 0x884 */
    volatile U_VSDIFIRCOEF45        VSDIFIRCOEF45            ; /* 0x888 */
    volatile U_VSDIFIRCOEF67        VSDIFIRCOEF67            ; /* 0x88c */
    volatile unsigned int           reserved_43[28]                     ; /* 0x890~0x8fc */
    volatile U_G0CTRL               G0CTRL                   ; /* 0x900 */
    volatile U_G0UPD                G0UPD                    ; /* 0x904 */
    volatile U_G0ADDR               G0ADDR                   ; /* 0x908 */
    volatile U_G0STRIDE             G0STRIDE                 ; /* 0x90c */
    volatile U_G0CBMPARA            G0CBMPARA                ; /* 0x910 */
    volatile U_G0CKEYMAX            G0CKEYMAX                ; /* 0x914 */
    volatile U_G0CKEYMIN            G0CKEYMIN                ; /* 0x918 */
    volatile U_G0CMASK              G0CMASK                  ; /* 0x91c */
    volatile U_G0IRESO              G0IRESO                  ; /* 0x920 */
    volatile U_G0ORESO              G0ORESO                  ; /* 0x924 */
    volatile U_G0SFPOS              G0SFPOS                  ; /* 0x928 */
    volatile U_G0DFPOS              G0DFPOS                  ; /* 0x92c */
    volatile U_G0DLPOS              G0DLPOS                  ; /* 0x930 */
    volatile U_G0CMPADDR            G0CMPADDR                ; /* 0x934 */
    volatile unsigned int           reserved_44[2]                     ; /* 0x938~0x93c */
    volatile U_G0HSP                G0HSP                    ; /* 0x940 */
    volatile U_G0HOFFSET            G0HOFFSET                ; /* 0x944 */
    volatile U_G0VSP                G0VSP                    ; /* 0x948 */
    volatile U_G0VSR                G0VSR                    ; /* 0x94c */
    volatile U_G0VOFFSET            G0VOFFSET                ; /* 0x950 */
    volatile U_G0ZMEORESO           G0ZMEORESO               ; /* 0x954 */
    volatile U_G0ZMEIRESO           G0ZMEIRESO               ; /* 0x958 */
    volatile unsigned int           reserved_45                     ; /* 0x95c */
    volatile U_G0LTICTRL            G0LTICTRL                ; /* 0x960 */
    volatile U_G0LHPASSCOEF         G0LHPASSCOEF             ; /* 0x964 */
    volatile U_G0LTITHD             G0LTITHD                 ; /* 0x968 */
    volatile unsigned int           reserved_46                     ; /* 0x96c */
    volatile U_G0LHFREQTHD          G0LHFREQTHD              ; /* 0x970 */
    volatile U_G0LGAINCOEF          G0LGAINCOEF              ; /* 0x974 */
    volatile unsigned int           reserved_47[2]                     ; /* 0x978~0x97c */
    volatile U_G0CTICTRL            G0CTICTRL                ; /* 0x980 */
    volatile U_G0CHPASSCOEF         G0CHPASSCOEF             ; /* 0x984 */
    volatile U_G0CTITHD             G0CTITHD                 ; /* 0x988 */
    volatile unsigned int           reserved_48[7]                     ; /* 0x98c~0x9a4 */
    volatile U_G0CSCP0              G0CSCP0                  ; /* 0x9a8 */
    volatile U_G0CSCP1              G0CSCP1                  ; /* 0x9ac */
    volatile U_G0CSCP2              G0CSCP2                  ; /* 0x9b0 */
    volatile U_G0CSCP3              G0CSCP3                  ; /* 0x9b4 */
    volatile U_G0CSCP4              G0CSCP4                  ; /* 0x9b8 */
    volatile unsigned int           reserved_49                     ; /* 0x9bc */
    volatile U_G0CSCIDC             G0CSCIDC                 ; /* 0x9c0 */
    volatile U_G0CSCODC             G0CSCODC                 ; /* 0x9c4 */
    volatile U_G0CSCDC              G0CSCDC                  ; /* 0x9c8 */
    volatile unsigned int           reserved_50[13]                     ; /* 0x9cc~0x9fc */
    volatile U_G1CTRL               G1CTRL                   ; /* 0xa00 */
    volatile U_G1UPD                G1UPD                    ; /* 0xa04 */
    volatile U_G1ADDR               G1ADDR                   ; /* 0xa08 */
    volatile U_G1STRIDE             G1STRIDE                 ; /* 0xa0c */
    volatile U_G1CBMPARA            G1CBMPARA                ; /* 0xa10 */
    volatile U_G1CKEYMAX            G1CKEYMAX                ; /* 0xa14 */
    volatile U_G1CKEYMIN            G1CKEYMIN                ; /* 0xa18 */
    volatile U_G1CMASK              G1CMASK                  ; /* 0xa1c */
    volatile U_G1IRESO              G1IRESO                  ; /* 0xa20 */
    volatile U_G1ORESO              G1ORESO                  ; /* 0xa24 */
    volatile U_G1SFPOS              G1SFPOS                  ; /* 0xa28 */
    volatile U_G1DFPOS              G1DFPOS                  ; /* 0xa2c */
    volatile U_G1DLPOS              G1DLPOS                  ; /* 0xa30 */
    volatile U_G1CMPADDR            G1CMPADDR                ; /* 0xa34 */
    volatile U_G1WRAPTHD            G1WRAPTHD                ; /* 0xa38 */
    volatile unsigned int           reserved_51                     ; /* 0xa3c */
    volatile U_G1HSP                G1HSP                    ; /* 0xa40 */
    volatile U_G1HOFFSET            G1HOFFSET                ; /* 0xa44 */
    volatile U_G1VSP                G1VSP                    ; /* 0xa48 */
    volatile U_G1VSR                G1VSR                    ; /* 0xa4c */
    volatile U_G1VOFFSET            G1VOFFSET                ; /* 0xa50 */
    volatile U_G1ZMEORESO           G1ZMEORESO               ; /* 0xa54 */
    volatile U_G1ZMEIRESO           G1ZMEIRESO               ; /* 0xa58 */
    volatile unsigned int           reserved_52[17]                     ; /* 0xa5c~0xa9c */
    volatile U_G1CSCIDC             G1CSCIDC                 ; /* 0xaa0 */
    volatile U_G1CSCODC             G1CSCODC                 ; /* 0xaa4 */
    volatile U_G1CSCP0              G1CSCP0                  ; /* 0xaa8 */
    volatile U_G1CSCP1              G1CSCP1                  ; /* 0xaac */
    volatile U_G1CSCP2              G1CSCP2                  ; /* 0xab0 */
    volatile U_G1CSCP3              G1CSCP3                  ; /* 0xab4 */
    volatile U_G1CSCP4              G1CSCP4                  ; /* 0xab8 */
    volatile unsigned int           reserved_53[17]                     ; /* 0xabc~0xafc */
    volatile U_G2CTRL               G2CTRL                   ; /* 0xb00 */
    volatile U_G2UPD                G2UPD                    ; /* 0xb04 */
    volatile U_ZONE1ADDR            ZONE1ADDR                ; /* 0xb08 */
    volatile U_ZONE1STRIDE          ZONE1STRIDE              ; /* 0xb0c */
    volatile U_G2CBMPARA            G2CBMPARA                ; /* 0xb10 */
    volatile U_G2CKEYMAX            G2CKEYMAX                ; /* 0xb14 */
    volatile U_G2CKEYMIN            G2CKEYMIN                ; /* 0xb18 */
    volatile U_G2CMASK              G2CMASK                  ; /* 0xb1c */
    volatile unsigned int           reserved_54[4]                     ; /* 0xb20~0xb2c */
    volatile U_G2DLPOS              G2DLPOS                  ; /* 0xb30 */
    volatile U_ZONE2ADDR            ZONE2ADDR                ; /* 0xb34 */
    volatile U_ZONE2STRIDE          ZONE2STRIDE              ; /* 0xb38 */
    volatile U_ZONE1FPOS            ZONE1FPOS                ; /* 0xb3c */
    volatile U_ZONE2FPOS            ZONE2FPOS                ; /* 0xb40 */
    volatile U_ZONE1RESO            ZONE1RESO                ; /* 0xb44 */
    volatile U_ZONE2RESO            ZONE2RESO                ; /* 0xb48 */
    volatile U_ZONE1DFPOS           ZONE1DFPOS               ; /* 0xb4c */
    volatile U_ZONE1DLPOS           ZONE1DLPOS               ; /* 0xb50 */
    volatile U_ZONE2DFPOS           ZONE2DFPOS               ; /* 0xb54 */
    volatile U_ZONE2DLPOS           ZONE2DLPOS               ; /* 0xb58 */
    volatile unsigned int           reserved_55[41]                     ; /* 0xb5c~0xbfc */
    volatile U_WBC0CTRL             WBC0CTRL                 ; /* 0xc00 */
    volatile U_WBC0UPD              WBC0UPD                  ; /* 0xc04 */
    volatile U_WBC0ADDR             WBC0ADDR                 ; /* 0xc08 */
    volatile U_WBC0STRIDE           WBC0STRIDE               ; /* 0xc0c */
    volatile U_WBC0ORESO            WBC0ORESO                ; /* 0xc10 */
    volatile U_WBC0FCROP            WBC0FCROP                ; /* 0xc14 */
    volatile U_WBC0LCROP            WBC0LCROP                ; /* 0xc18 */
    volatile unsigned int           reserved_56                     ; /* 0xc1c */
    volatile U_WBC0WRAPTHD          WBC0WRAPTHD              ; /* 0xc20 */
    volatile unsigned int           WBC0CADDR                ; /* 0xc24 */
    volatile unsigned int           reserved_57[50]                     ; /* 0xc28~0xcec */
    volatile U_WBC0_CHECKSUM_Y      WBC0_CHECKSUM_Y          ; /* 0xcf0 */
    volatile U_WBC0_CHECKSUM_C      WBC0_CHECKSUM_C          ; /* 0xcf4 */
    volatile unsigned int           reserved_58[2]                     ; /* 0xcf8~0xcfc */
    volatile U_WBC2CTRL             WBC2CTRL                 ; /* 0xd00 */
    volatile U_WBC2UPD              WBC2UPD                  ; /* 0xd04 */
    volatile U_WBC2ADDR             WBC2ADDR                 ; /* 0xd08 */
    volatile U_WBC2STRIDE           WBC2STRIDE               ; /* 0xd0c */
    volatile U_WBC2ORESO            WBC2ORESO                ; /* 0xd10 */
    volatile U_WBC2FCROP            WBC2FCROP                ; /* 0xd14 */
    volatile U_WBC2LCROP            WBC2LCROP                ; /* 0xd18 */
    volatile U_WBC2CMPADDR          WBC2CMPADDR              ; /* 0xd1c */
    volatile U_WBC2WRAPTHD          WBC2WRAPTHD              ; /* 0xd20 */
    volatile unsigned int           reserved_59[51]                     ; /* 0xd24~0xdec */
    volatile U_WBC2_CHECKSUM_A      WBC2_CHECKSUM_A          ; /* 0xdf0 */
    volatile U_WBC2_CHECKSUM_R      WBC2_CHECKSUM_R          ; /* 0xdf4 */
    volatile U_WBC2_CHECKSUM_G      WBC2_CHECKSUM_G          ; /* 0xdf8 */
    volatile U_WBC2_CHECKSUM_B      WBC2_CHECKSUM_B          ; /* 0xdfc */
    volatile U_WBC3CTRL             WBC3CTRL                 ; /* 0xe00 */
    volatile U_WBC3UPD              WBC3UPD                  ; /* 0xe04 */
    volatile U_WBC3ADDR             WBC3ADDR                 ; /* 0xe08 */
    volatile U_WBC3STRIDE           WBC3STRIDE               ; /* 0xe0c */
    volatile U_WBC3ORESO            WBC3ORESO                ; /* 0xe10 */
    volatile U_WBC3FCROP            WBC3FCROP                ; /* 0xe14 */
    volatile U_WBC3LCROP            WBC3LCROP                ; /* 0xe18 */
    volatile U_WBC3CMPADDR          WBC3CMPADDR              ; /* 0xe1c */
    volatile unsigned int           reserved_60                     ; /* 0xe20 */
    volatile U_WBC3STPLN            WBC3STPLN                ; /* 0xe24 */
    volatile unsigned int           reserved_61[118]                     ; /* 0xe28~0xffc */
    volatile U_CBMBKG1              CBMBKG1                  ; /* 0x1000 */
    volatile U_CBMBKG2              CBMBKG2                  ; /* 0x1004 */
    volatile U_CBMBKGV              CBMBKGV                  ; /* 0x1008 */
    volatile U_CBMATTR              CBMATTR                  ; /* 0x100c */
    volatile U_CBMMIX1              CBMMIX1                  ; /* 0x1010 */
    volatile U_CBMMIX2              CBMMIX2                  ; /* 0x1014 */
    volatile unsigned int           reserved_62[58]                     ; /* 0x1018~0x10fc */
    volatile U_DHDCTRL              DHDCTRL                  ; /* 0x1100 */
    volatile U_DHDVSYNC             DHDVSYNC                 ; /* 0x1104 */
    volatile U_DHDHSYNC1            DHDHSYNC1                ; /* 0x1108 */
    volatile U_DHDHSYNC2            DHDHSYNC2                ; /* 0x110c */
    volatile U_DHDVPLUS             DHDVPLUS                 ; /* 0x1110 */
    volatile U_DHDPWR               DHDPWR                   ; /* 0x1114 */
    volatile U_DHDVTTHD3            DHDVTTHD3                ; /* 0x1118 */
    volatile U_DHDVTTHD             DHDVTTHD                 ; /* 0x111c */
    volatile U_DHDCSCIDC            DHDCSCIDC                ; /* 0x1120 */
    volatile U_DHDCSCODC            DHDCSCODC                ; /* 0x1124 */
    volatile U_DHDCSCP0             DHDCSCP0                 ; /* 0x1128 */
    volatile U_DHDCSCP1             DHDCSCP1                 ; /* 0x112c */
    volatile U_DHDCSCP2             DHDCSCP2                 ; /* 0x1130 */
    volatile U_DHDCSCP3             DHDCSCP3                 ; /* 0x1134 */
    volatile U_DHDCSCP4             DHDCSCP4                 ; /* 0x1138 */
    volatile unsigned int           reserved_63                     ; /* 0x113c */
    volatile U_DHDCLIPL             DHDCLIPL                 ; /* 0x1140 */
    volatile U_DHDCLIPH             DHDCLIPH                 ; /* 0x1144 */
    volatile unsigned int           reserved_64[6]                     ; /* 0x1148~0x115c */
    volatile U_DHDUFWTHD            DHDUFWTHD                ; /* 0x1160 */
    volatile U_DHDSTATHD            DHDSTATHD                ; /* 0x1164 */
    volatile U_DHDDATEINV           DHDDATEINV               ; /* 0x1168 */
    volatile unsigned int           reserved_65[5]                     ; /* 0x116c~0x117c */
    volatile U_HDMI_CSC_IDC         HDMI_CSC_IDC             ; /* 0x1180 */
    volatile U_HDMI_CSC_ODC         HDMI_CSC_ODC             ; /* 0x1184 */
    volatile U_HDMI_CSC_IODC        HDMI_CSC_IODC            ; /* 0x1188 */
    volatile U_HDMI_CSC_P0          HDMI_CSC_P0              ; /* 0x118c */
    volatile U_HDMI_CSC_P1          HDMI_CSC_P1              ; /* 0x1190 */
    volatile U_HDMI_CSC_P2          HDMI_CSC_P2              ; /* 0x1194 */
    volatile U_HDMI_CSC_P3          HDMI_CSC_P3              ; /* 0x1198 */
    volatile U_HDMI_CSC_P4          HDMI_CSC_P4              ; /* 0x119c */
    volatile unsigned int           reserved_66[12]                     ; /* 0x11a0~0x11cc */
    volatile unsigned int           HDMI_CHECKSUM_Y          ; /* 0x11d0 */
    volatile unsigned int           HDMI_CHECKSUM_CB         ; /* 0x11d4 */
    volatile unsigned int           HDMI_CHECKSUM_CR         ; /* 0x11d8 */
    volatile unsigned int           reserved_67                     ; /* 0x11dc */
    volatile unsigned int           DHD_CHECKSUM_Y           ; /* 0x11e0 */
    volatile unsigned int           DHD_CHECKSUM_CB          ; /* 0x11e4 */
    volatile unsigned int           DHD_CHECKSUM_CR          ; /* 0x11e8 */
    volatile unsigned int           reserved_68                     ; /* 0x11ec */
    volatile U_DHDSTATE             DHDSTATE                 ; /* 0x11f0 */
    volatile unsigned int           reserved_69[67]                     ; /* 0x11f4~0x12fc */
    volatile U_DSDCTRL              DSDCTRL                  ; /* 0x1300 */
    volatile U_DSDVSYNC             DSDVSYNC                 ; /* 0x1304 */
    volatile U_DSDHSYNC1            DSDHSYNC1                ; /* 0x1308 */
    volatile U_DSDHSYNC2            DSDHSYNC2                ; /* 0x130c */
    volatile U_DSDVPLUS             DSDVPLUS                 ; /* 0x1310 */
    volatile U_DSDPWR               DSDPWR                   ; /* 0x1314 */
    volatile U_DSDVTTHD3            DSDVTTHD3                ; /* 0x1318 */
    volatile U_DSDVTTHD             DSDVTTHD                 ; /* 0x131c */
    volatile U_DSDCSCIDC            DSDCSCIDC                ; /* 0x1320 */
    volatile U_DSDCSCODC            DSDCSCODC                ; /* 0x1324 */
    volatile U_DSDCSCP0             DSDCSCP0                 ; /* 0x1328 */
    volatile U_DSDCSCP1             DSDCSCP1                 ; /* 0x132c */
    volatile U_DSDCSCP2             DSDCSCP2                 ; /* 0x1330 */
    volatile U_DSDCSCP3             DSDCSCP3                 ; /* 0x1334 */
    volatile U_DSDCSCP4             DSDCSCP4                 ; /* 0x1338 */
    volatile unsigned int           reserved_70                     ; /* 0x133c */
    volatile U_DSDCLIPL             DSDCLIPL                 ; /* 0x1340 */
    volatile U_DSDCLIPH             DSDCLIPH                 ; /* 0x1344 */
    volatile unsigned int           reserved_71[2]                     ; /* 0x1348~0x134c */
    volatile unsigned int           DSDFRMTHD                ; /* 0x1350 */
    volatile unsigned int           reserved_72[5]                     ; /* 0x1354~0x1364 */
    volatile U_DSDDATEINV           DSDDATEINV               ; /* 0x1368 */
    volatile unsigned int           reserved_73[29]                     ; /* 0x136c~0x13dc */
    volatile unsigned int           DSD_CHECKSUM_Y           ; /* 0x13e0 */
    volatile unsigned int           DSD_CHECKSUM_CB          ; /* 0x13e4 */
    volatile unsigned int           DSD_CHECKSUM_CR          ; /* 0x13e8 */
    volatile unsigned int           reserved_74                     ; /* 0x13ec */
    volatile U_DSDSTATE             DSDSTATE                 ; /* 0x13f0 */
    volatile unsigned int           reserved_75[3]                     ; /* 0x13f4~0x13fc */
    volatile U_HDATE_VERSION        HDATE_VERSION            ; /* 0x1400 */
    volatile U_HDATE_EN             HDATE_EN                 ; /* 0x1404 */
    volatile U_HDATE_POLA_CTRL      HDATE_POLA_CTRL          ; /* 0x1408 */
    volatile U_HDATE_VIDEO_FORMAT   HDATE_VIDEO_FORMAT       ; /* 0x140c */
    volatile U_HDATE_STATE          HDATE_STATE              ; /* 0x1410 */
    volatile U_HDATE_OUT_CTRL       HDATE_OUT_CTRL           ; /* 0x1414 */
    volatile U_HDATE_SRC_13_COEF1   HDATE_SRC_13_COEF1       ; /* 0x1418 */
    volatile U_HDATE_SRC_13_COEF2   HDATE_SRC_13_COEF2       ; /* 0x141c */
    volatile U_HDATE_SRC_13_COEF3   HDATE_SRC_13_COEF3       ; /* 0x1420 */
    volatile U_HDATE_SRC_13_COEF4   HDATE_SRC_13_COEF4       ; /* 0x1424 */
    volatile U_HDATE_SRC_13_COEF5   HDATE_SRC_13_COEF5       ; /* 0x1428 */
    volatile U_HDATE_SRC_13_COEF6   HDATE_SRC_13_COEF6       ; /* 0x142c */
    volatile U_HDATE_SRC_13_COEF7   HDATE_SRC_13_COEF7       ; /* 0x1430 */
    volatile U_HDATE_SRC_13_COEF8   HDATE_SRC_13_COEF8       ; /* 0x1434 */
    volatile U_HDATE_SRC_13_COEF9   HDATE_SRC_13_COEF9       ; /* 0x1438 */
    volatile U_HDATE_SRC_13_COEF10   HDATE_SRC_13_COEF10     ; /* 0x143c */
    volatile U_HDATE_SRC_13_COEF11   HDATE_SRC_13_COEF11     ; /* 0x1440 */
    volatile U_HDATE_SRC_13_COEF12   HDATE_SRC_13_COEF12     ; /* 0x1444 */
    volatile U_HDATE_SRC_13_COEF13   HDATE_SRC_13_COEF13     ; /* 0x1448 */
    volatile U_HDATE_SRC_24_COEF1   HDATE_SRC_24_COEF1       ; /* 0x144c */
    volatile U_HDATE_SRC_24_COEF2   HDATE_SRC_24_COEF2       ; /* 0x1450 */
    volatile U_HDATE_SRC_24_COEF3   HDATE_SRC_24_COEF3       ; /* 0x1454 */
    volatile U_HDATE_SRC_24_COEF4   HDATE_SRC_24_COEF4       ; /* 0x1458 */
    volatile U_HDATE_SRC_24_COEF5   HDATE_SRC_24_COEF5       ; /* 0x145c */
    volatile U_HDATE_SRC_24_COEF6   HDATE_SRC_24_COEF6       ; /* 0x1460 */
    volatile U_HDATE_SRC_24_COEF7   HDATE_SRC_24_COEF7       ; /* 0x1464 */
    volatile U_HDATE_SRC_24_COEF8   HDATE_SRC_24_COEF8       ; /* 0x1468 */
    volatile U_HDATE_SRC_24_COEF9   HDATE_SRC_24_COEF9       ; /* 0x146c */
    volatile U_HDATE_SRC_24_COEF10   HDATE_SRC_24_COEF10     ; /* 0x1470 */
    volatile U_HDATE_SRC_24_COEF11   HDATE_SRC_24_COEF11     ; /* 0x1474 */
    volatile U_HDATE_SRC_24_COEF12   HDATE_SRC_24_COEF12     ; /* 0x1478 */
    volatile U_HDATE_SRC_24_COEF13   HDATE_SRC_24_COEF13     ; /* 0x147c */
    volatile U_HDATE_CSC_COEF1      HDATE_CSC_COEF1          ; /* 0x1480 */
    volatile U_HDATE_CSC_COEF2      HDATE_CSC_COEF2          ; /* 0x1484 */
    volatile U_HDATE_CSC_COEF3      HDATE_CSC_COEF3          ; /* 0x1488 */
    volatile U_HDATE_CSC_COEF4      HDATE_CSC_COEF4          ; /* 0x148c */
    volatile U_HDATE_CSC_COEF5      HDATE_CSC_COEF5          ; /* 0x1490 */
    volatile U_HDATE_SRC_EN         HDATE_SRC_EN             ; /* 0x1494 */
    volatile U_HDATE_CSC_EN         HDATE_CSC_EN             ; /* 0x1498 */
    volatile unsigned int           reserved_76                     ; /* 0x149c */
    volatile U_HDATE_TEST           HDATE_TEST               ; /* 0x14a0 */
    volatile U_HDATE_VBI_CTRL       HDATE_VBI_CTRL           ; /* 0x14a4 */
    volatile U_HDATE_CGMSA_DATA     HDATE_CGMSA_DATA         ; /* 0x14a8 */
    volatile U_HDATE_CGMSB_H        HDATE_CGMSB_H            ; /* 0x14ac */
    volatile unsigned int           HDATE_CGMSB_DATA1        ; /* 0x14b0 */
    volatile unsigned int           HDATE_CGMSB_DATA2        ; /* 0x14b4 */
    volatile unsigned int           HDATE_CGMSB_DATA3        ; /* 0x14b8 */
    volatile unsigned int           HDATE_CGMSB_DATA4        ; /* 0x14bc */
    volatile U_HDATE_DACDET1        HDATE_DACDET1            ; /* 0x14c0 */
    volatile U_HDATE_DACDET2        HDATE_DACDET2            ; /* 0x14c4 */
    volatile U_HDATE_SRC_13_COEF14   HDATE_SRC_13_COEF14     ; /* 0x14c8 */
    volatile U_HDATE_SRC_13_COEF15   HDATE_SRC_13_COEF15     ; /* 0x14cc */
    volatile U_HDATE_SRC_13_COEF16   HDATE_SRC_13_COEF16     ; /* 0x14d0 */
    volatile U_HDATE_SRC_13_COEF17   HDATE_SRC_13_COEF17     ; /* 0x14d4 */
    volatile U_HDATE_SRC_13_COEF18   HDATE_SRC_13_COEF18     ; /* 0x14d8 */
    volatile U_HDATE_SRC_24_COEF14   HDATE_SRC_24_COEF14     ; /* 0x14dc */
    volatile U_HDATE_SRC_24_COEF15   HDATE_SRC_24_COEF15     ; /* 0x14e0 */
    volatile U_HDATE_SRC_24_COEF16   HDATE_SRC_24_COEF16     ; /* 0x14e4 */
    volatile U_HDATE_SRC_24_COEF17   HDATE_SRC_24_COEF17     ; /* 0x14e8 */
    volatile U_HDATE_SRC_24_COEF18   HDATE_SRC_24_COEF18     ; /* 0x14ec */
    volatile unsigned int           HDATE_CLIP               ; /* 0x14f0 */
    volatile unsigned int           HDATE_POW_SAV            ; /* 0x14f4 */
    volatile unsigned int           reserved_77[66]                     ; /* 0x14f8~0x15fc */
    volatile U_DATE_COEFF0          DATE_COEFF0              ; /* 0x1600 */
    volatile U_DATE_COEFF1          DATE_COEFF1              ; /* 0x1604 */
    volatile U_DATE_COEFF2          DATE_COEFF2              ; /* 0x1608 */
    volatile U_DATE_COEFF3          DATE_COEFF3              ; /* 0x160c */
    volatile U_DATE_COEFF4          DATE_COEFF4              ; /* 0x1610 */
    volatile U_DATE_COEFF5          DATE_COEFF5              ; /* 0x1614 */
    volatile U_DATE_COEFF6          DATE_COEFF6              ; /* 0x1618 */
    volatile U_DATE_COEFF7          DATE_COEFF7              ; /* 0x161c */
    volatile unsigned int           DATE_COEFF8              ; /* 0x1620 */
    volatile unsigned int           DATE_COEFF9              ; /* 0x1624 */
    volatile U_DATE_COEFF10         DATE_COEFF10             ; /* 0x1628 */
    volatile U_DATE_COEFF11         DATE_COEFF11             ; /* 0x162c */
    volatile U_DATE_COEFF12         DATE_COEFF12             ; /* 0x1630 */
    volatile U_DATE_COEFF13         DATE_COEFF13             ; /* 0x1634 */
    volatile U_DATE_COEFF14         DATE_COEFF14             ; /* 0x1638 */
    volatile U_DATE_COEFF15         DATE_COEFF15             ; /* 0x163c */
    volatile U_DATE_COEFF16         DATE_COEFF16             ; /* 0x1640 */
    volatile unsigned int           DATE_COEFF17             ; /* 0x1644 */
    volatile unsigned int           DATE_COEFF18             ; /* 0x1648 */
    volatile U_DATE_COEFF19         DATE_COEFF19             ; /* 0x164c */
    volatile U_DATE_COEFF20         DATE_COEFF20             ; /* 0x1650 */
    volatile U_DATE_COEFF21         DATE_COEFF21             ; /* 0x1654 */
    volatile U_DATE_COEFF22         DATE_COEFF22             ; /* 0x1658 */
    volatile U_DATE_COEFF23         DATE_COEFF23             ; /* 0x165c */
    volatile U_DATE_COEFF24         DATE_COEFF24             ; /* 0x1660 */
    volatile U_DATE_COEFF25         DATE_COEFF25             ; /* 0x1664 */
    volatile U_DATE_COEFF26         DATE_COEFF26             ; /* 0x1668 */
    volatile U_DATE_COEFF27         DATE_COEFF27             ; /* 0x166c */
    volatile U_DATE_COEFF28         DATE_COEFF28             ; /* 0x1670 */
    volatile U_DATE_COEFF29         DATE_COEFF29             ; /* 0x1674 */
    volatile U_DATE_COEFF30         DATE_COEFF30             ; /* 0x1678 */
    volatile unsigned int           reserved_78                     ; /* 0x167c */
    volatile U_DATE_ISRMASK         DATE_ISRMASK             ; /* 0x1680 */
    volatile U_DATE_ISRSTATE        DATE_ISRSTATE            ; /* 0x1684 */
    volatile U_DATE_ISR             DATE_ISR                 ; /* 0x1688 */
    volatile unsigned int           reserved_79                     ; /* 0x168c */
    volatile unsigned int           DATE_VERSION             ; /* 0x1690 */
    volatile U_DATE_COEFF37         DATE_COEFF37             ; /* 0x1694 */
    volatile U_DATE_COEFF38         DATE_COEFF38             ; /* 0x1698 */
    volatile U_DATE_COEFF39         DATE_COEFF39             ; /* 0x169c */
    volatile U_DATE_COEFF40         DATE_COEFF40             ; /* 0x16a0 */
    volatile U_DATE_COEFF41         DATE_COEFF41             ; /* 0x16a4 */
    volatile U_DATE_COEFF42         DATE_COEFF42             ; /* 0x16a8 */
    volatile unsigned int           reserved_80[5]                     ; /* 0x16ac~0x16bc */
    volatile U_DATE_DACDET1         DATE_DACDET1             ; /* 0x16c0 */
    volatile U_DATE_DACDET2         DATE_DACDET2             ; /* 0x16c4 */
    volatile U_DATE_COEFF50         DATE_COEFF50             ; /* 0x16c8 */
    volatile U_DATE_COEFF51         DATE_COEFF51             ; /* 0x16cc */
    volatile U_DATE_COEFF52         DATE_COEFF52             ; /* 0x16d0 */
    volatile U_DATE_COEFF53         DATE_COEFF53             ; /* 0x16d4 */
    volatile U_DATE_COEFF54         DATE_COEFF54             ; /* 0x16d8 */
    volatile U_DATE_COEFF55         DATE_COEFF55             ; /* 0x16dc */
    volatile U_DATE_COEFF56         DATE_COEFF56             ; /* 0x16e0 */
    volatile U_DATE_COEFF57         DATE_COEFF57             ; /* 0x16e4 */
    volatile U_DATE_COEFF58         DATE_COEFF58             ; /* 0x16e8 */
    volatile U_DATE_COEFF59         DATE_COEFF59             ; /* 0x16ec */
    volatile U_DATE_COEFF60         DATE_COEFF60             ; /* 0x16f0 */
    volatile U_DATE_COEFF61         DATE_COEFF61             ; /* 0x16f4 */
    volatile unsigned int           DATE_COEFF62             ; /* 0x16f8 */
    volatile unsigned int           DATE_COEFF63             ; /* 0x16fc */
    volatile unsigned int           DATE_COEFF64             ; /* 0x1700 */
    volatile unsigned int           DATE_COEFF65             ; /* 0x1704 */
    volatile U_DATE_COEFF66         DATE_COEFF66             ; /* 0x1708 */
    volatile U_DATE_COEFF67         DATE_COEFF67             ; /* 0x170c */
    volatile U_DATE_COEFF68         DATE_COEFF68             ; /* 0x1710 */
    volatile U_DATE_COEFF69         DATE_COEFF69             ; /* 0x1714 */
    volatile U_DATE_COEFF70         DATE_COEFF70             ; /* 0x1718 */
    volatile U_DATE_COEFF71         DATE_COEFF71             ; /* 0x171c */
    volatile unsigned int           DATE_COEFF72             ; /* 0x1720 */
    volatile U_DATE_COEFF73         DATE_COEFF73             ; /* 0x1724 */
    volatile U_DATE_COEFF74         DATE_COEFF74             ; /* 0x1728 */
    volatile U_DATE_COEFF75         DATE_COEFF75             ; /* 0x172c */
    volatile U_DATE_COEFF76         DATE_COEFF76             ; /* 0x1730 */
    volatile U_DATE_COEFF77         DATE_COEFF77             ; /* 0x1734 */
    volatile U_DATE_COEFF78         DATE_COEFF78             ; /* 0x1738 */
    volatile U_DATE_COEFF79         DATE_COEFF79             ; /* 0x173c */
    volatile U_DATE_COEFF80         DATE_COEFF80             ; /* 0x1740 */
    volatile U_DATE_COEFF81         DATE_COEFF81             ; /* 0x1744 */
    volatile U_DATE_COEFF82         DATE_COEFF82             ; /* 0x1748 */
    volatile U_DATE_COEFF83         DATE_COEFF83             ; /* 0x174c */
    volatile U_DATE_COEFF84         DATE_COEFF84             ; /* 0x1750 */
    volatile unsigned int           reserved_81[555]                     ; /* 0x1754~0x1ffc */
    volatile U_VHDHLCOEF            VHDHLCOEF[68]            ; /* 0x2000~0x210c */
    volatile unsigned int           reserved_82[60]                     ; /* 0x2110~0x21fc */
    volatile U_VHDHCCOEF            VHDHCCOEF[34]            ; /* 0x2200~0x2284 */
    volatile unsigned int           reserved_83[94]                     ; /* 0x2288~0x23fc */
    volatile U_VHDVLCOEF            VHDVLCOEF[68]            ; /* 0x2400~0x250c */
    volatile unsigned int           reserved_84[60]                     ; /* 0x2510~0x25fc */
    volatile U_VHDVCCOEF            VHDVCCOEF[34]            ; /* 0x2600~0x2684 */
    volatile unsigned int           reserved_85[606]                     ; /* 0x2688~0x2ffc */
    volatile U_VSDHLCOEF            VSDHLCOEF[68]            ; /* 0x3000~0x310c */
    volatile unsigned int           reserved_86[60]                     ; /* 0x3110~0x31fc */
    volatile U_VSDHCCOEF            VSDHCCOEF[34]            ; /* 0x3200~0x3284 */
    volatile unsigned int           reserved_87[94]                     ; /* 0x3288~0x33fc */
    volatile U_VSDVLCOEF            VSDVLCOEF[34]            ; /* 0x3400~0x3484 */
    volatile unsigned int           reserved_88[94]                     ; /* 0x3488~0x35fc */
    volatile U_VSDVCCOEF            VSDVCCOEF[34]            ; /* 0x3600~0x3684 */
    volatile unsigned int           reserved_89[606]                     ; /* 0x3688~0x3ffc */
    volatile U_G0HLCOEF             G0HLCOEF[32]             ; /* 0x4000~0x407c */
    volatile unsigned int           reserved_90[32]                     ; /* 0x4080~0x40fc */
    volatile U_G0HCCOEF             G0HCCOEF[32]             ; /* 0x4100~0x417c */
    volatile unsigned int           reserved_91[32]                     ; /* 0x4180~0x41fc */
    volatile U_G0VLCOEF             G0VLCOEF[32]             ; /* 0x4200~0x427c */
    volatile unsigned int           reserved_92[32]                     ; /* 0x4280~0x42fc */
    volatile U_G0VCCOEF             G0VCCOEF[32]             ; /* 0x4300~0x437c */
    volatile unsigned int           reserved_93[32]                     ; /* 0x4380~0x43fc */
    volatile U_G1HLCOEF             G1HLCOEF[32]             ; /* 0x4400~0x447c */
    volatile unsigned int           reserved_94[32]                     ; /* 0x4480~0x44fc */
    volatile U_G1HCCOEF             G1HCCOEF[32]             ; /* 0x4500~0x457c */
    volatile unsigned int           reserved_95[32]                     ; /* 0x4580~0x45fc */
    volatile U_G1VLCOEF             G1VLCOEF[32]             ; /* 0x4600~0x467c */
    volatile unsigned int           reserved_96[32]                     ; /* 0x4680~0x46fc */
    volatile U_G1VCCOEF             G1VCCOEF[32]             ; /* 0x4700~0x477c */
    volatile unsigned int           reserved_97[544]                     ; /* 0x4780~0x4ffc */
    volatile U_DHDGAMMAN            DHDGAMMAN[33]            ; /* 0x5000~0x5080 */
    volatile unsigned int           reserved_98[991]                     ; /* 0x5084~0x5ffc */
    volatile U_VHDHLTICOEF          VHDHLTICOEF[69]          ; /* 0x6000~0x6110 */
    volatile unsigned int           reserved_99[3]                     ; /* 0x6114~0x611c */
    volatile U_VHDHCTICOEF          VHDHCTICOEF[35]          ; /* 0x6120~0x61a8 */
    volatile unsigned int           reserved_100[21]                     ; /* 0x61ac~0x61fc */
    volatile U_VHDVLTICOEF          VHDVLTICOEF[17]          ; /* 0x6200~0x6240 */
    volatile unsigned int           reserved_101[47]                     ; /* 0x6244~0x62fc */
    volatile U_VHDVCTICOEF          VHDVCTICOEF[17]          ; /* 0x6300~0x6340 */
    volatile unsigned int           reserved_102[47]                     ; /* 0x6344~0x63fc */
    volatile U_G0HLTICOEF           G0HLTICOEF[12]           ; /* 0x6400~0x642c */
    volatile unsigned int           reserved_103[52]                     ; /* 0x6430~0x64fc */
    volatile U_G0HCTICOEF           G0HCTICOEF[12]           ; /* 0x6500~0x652c */
    volatile unsigned int           reserved_104[52]                     ; /* 0x6530~0x65fc */
    volatile U_G0VLTICOEF           G0VLTICOEF[16]           ; /* 0x6600~0x663c */
    volatile unsigned int           reserved_105[48]                     ; /* 0x6640~0x66fc */
    volatile U_G0VCTICOEF           G0VCTICOEF[16]           ; /* 0x6700~0x673c */
    volatile unsigned int           reserved_106[1712]                     ; /* 0x6740~0x81fc */
    volatile U_VIDCTRL              VIDCTRL                  ; /* 0x8200 */
    volatile U_VIDBLKPOS0_1         VIDBLKPOS0_1             ; /* 0x8204 */
    volatile U_VIDBLKPOS2_3         VIDBLKPOS2_3             ; /* 0x8208 */
    volatile U_VIDBLKPOS4_5         VIDBLKPOS4_5             ; /* 0x820c */
    volatile U_VIDBLK0TOL0          VIDBLK0TOL0              ; /* 0x8210 */
    volatile U_VIDBLK0TOL1          VIDBLK0TOL1              ; /* 0x8214 */
    volatile U_VIDBLK1TOL0          VIDBLK1TOL0              ; /* 0x8218 */
    volatile U_VIDBLK1TOL1          VIDBLK1TOL1              ; /* 0x821c */
    volatile U_VIDBLK2TOL0          VIDBLK2TOL0              ; /* 0x8220 */
    volatile U_VIDBLK2TOL1          VIDBLK2TOL1              ; /* 0x8224 */
    volatile U_VIDBLK3TOL0          VIDBLK3TOL0              ; /* 0x8228 */
    volatile U_VIDBLK3TOL1          VIDBLK3TOL1              ; /* 0x822c */
    volatile U_VIDBLK4TOL0          VIDBLK4TOL0              ; /* 0x8230 */
    volatile U_VIDBLK4TOL1          VIDBLK4TOL1              ; /* 0x8234 */
    volatile U_VIDBLK5TOL0          VIDBLK5TOL0              ; /* 0x8238 */
    volatile U_VIDBLK5TOL1          VIDBLK5TOL1              ; /* 0x823c */
    volatile unsigned int           reserved_107[880]                     ; /* 0x8240~0x8ffc */
    volatile U_VOUENVDEBUG0         VOUENVDEBUG0             ; /* 0x9000 */
    volatile U_VOUENVDEBUG1         VOUENVDEBUG1             ; /* 0x9004 */

} S_VOU_V400_REGS_TYPE;

/* Declare the struct pointor of the module VOU */
extern S_VOU_V400_REGS_TYPE *gopVOUAllReg;



#endif /* __C_UNION_DEFINE_H__ */
