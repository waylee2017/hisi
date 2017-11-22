
//******************************************************************************
//  Copyright (C), 2007-2014, Hisilicon Technologies Co., Ltd.
//
//******************************************************************************
// File name     : c_union_define.h
// Version       : 2.0
// Author        : xxx
// Created       : 2014-06-07
// Last Modified : 
// Description   :  The C union definition file for the module VOU
// Function List : 
// History       : 
// 1 Date        : 
// Author        : xxx
// Modification  : Create file
//******************************************************************************

#ifndef __C_UNION_DEFINE_H__
#define __C_UNION_DEFINE_H__

#define M310_DEBUG   1

// Define the union U_VOCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    arb_mode              : 4   ; // [3..0] 
        unsigned int    outstd_rid1           : 4   ; // [7..4] 
        unsigned int    outstd_rid0           : 4   ; // [11..8] 
        unsigned int    vo_id_sel             : 1   ; // [12] 
        unsigned int    Reserved_1            : 3   ; // [15..13] 
        unsigned int    outstd_wid0           : 4   ; // [19..16] 
        unsigned int    bus_dbg_en            : 2   ; // [21..20] 
        unsigned int    outstd_wid1           : 4   ; // [25..22] 
        unsigned int    Reserved_0            : 3   ; // [28..26] 
        unsigned int    chk_sum_en            : 1   ; // [29] 
        unsigned int    vo_wrid1_en           : 1   ; // [30] 
        unsigned int    vo_ck_gt_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOCTRL;

// Define the union U_VOINTSTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dsdvtthd1_int         : 1   ; // [0] 
        unsigned int    dsdvtthd2_int         : 1   ; // [1] 
        unsigned int    dsdvtthd3_int         : 1   ; // [2] 
        unsigned int    dsduf_int             : 1   ; // [3] 
        unsigned int    dhdvtthd1_int         : 1   ; // [4] 
        unsigned int    dhdvtthd2_int         : 1   ; // [5] 
        unsigned int    dhdvtthd3_int         : 1   ; // [6] 
        unsigned int    dhduf_int             : 1   ; // [7] 
        unsigned int    vdac0_ic_int          : 1   ; // [8] 
        unsigned int    vdac1_ic_int          : 1   ; // [9] 
        unsigned int    vdac2_ic_int          : 1   ; // [10] 
        unsigned int    vdac3_ic_int          : 1   ; // [11] 
        unsigned int    wte_int               : 1   ; // [12] 
        unsigned int    wbc2_te_int           : 1   ; // [13] 
        unsigned int    wbc3_wte_int          : 1   ; // [14] 
        unsigned int    Reserved_6            : 1   ; // [15] 
        unsigned int    wbc3_stp_int          : 1   ; // [16] 
        unsigned int    vsd_dcmp_err_int      : 1   ; // [17] 
        unsigned int    Reserved_5            : 1   ; // [18] 
        unsigned int    vhd_dcmp_err_int      : 1   ; // [19] 
        unsigned int    vsdrr_int             : 1   ; // [20] 
        unsigned int    Reserved_4            : 1   ; // [21] 
        unsigned int    vhdrr_int             : 1   ; // [22] 
        unsigned int    g0rr_int              : 1   ; // [23] 
        unsigned int    g1rr_int              : 1   ; // [24] 
        unsigned int    Reserved_3            : 3   ; // [27..25] 
        unsigned int    vhd_regup_err_int     : 1   ; // [28] 
        unsigned int    Reserved_2            : 1   ; // [29] 
        unsigned int    ut_end_int            : 1   ; // [30] 
        unsigned int    be_int                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOINTSTA;

// Define the union U_VOMSKINTSTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dsdvtthd1_int         : 1   ; // [0] 
        unsigned int    dsdvtthd2_int         : 1   ; // [1] 
        unsigned int    dsdvtthd3_int         : 1   ; // [2] 
        unsigned int    dsduf_int             : 1   ; // [3] 
        unsigned int    dhdvtthd1_int         : 1   ; // [4] 
        unsigned int    dhdvtthd2_int         : 1   ; // [5] 
        unsigned int    dhdvtthd3_int         : 1   ; // [6] 
        unsigned int    dhduf_int             : 1   ; // [7] 
        unsigned int    vdac0_ic_int          : 1   ; // [8] 
        unsigned int    vdac1_ic_int          : 1   ; // [9] 
        unsigned int    vdac2_ic_int          : 1   ; // [10] 
        unsigned int    vdac3_ic_int          : 1   ; // [11] 
        unsigned int    wte_int               : 1   ; // [12] 
        unsigned int    wbc2_te_int           : 1   ; // [13] 
        unsigned int    wbc3_wte_int          : 1   ; // [14] 
        unsigned int    Reserved_11           : 1   ; // [15] 
        unsigned int    wbc3_stp_int          : 1   ; // [16] 
        unsigned int    vsd_dcmp_err_int      : 1   ; // [17] 
        unsigned int    Reserved_10           : 1   ; // [18] 
        unsigned int    vhd_dcmp_err_int      : 1   ; // [19] 
        unsigned int    vsdrr_int             : 1   ; // [20] 
        unsigned int    Reserved_9            : 1   ; // [21] 
        unsigned int    vhdrr_int             : 1   ; // [22] 
        unsigned int    g0rr_int              : 1   ; // [23] 
        unsigned int    g1rr_int              : 1   ; // [24] 
        unsigned int    Reserved_8            : 3   ; // [27..25] 
        unsigned int    vhd_regup_err_int     : 1   ; // [28] 
        unsigned int    Reserved_7            : 1   ; // [29] 
        unsigned int    ut_end_int            : 1   ; // [30] 
        unsigned int    be_int                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOMSKINTSTA;

// Define the union U_VOINTMSK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dsdvtthd1_intmsk      : 1   ; // [0] 
        unsigned int    dsdvtthd2_intmsk      : 1   ; // [1] 
        unsigned int    dsdvtthd3_intmsk      : 1   ; // [2] 
        unsigned int    dsduf_intmsk          : 1   ; // [3] 
        unsigned int    dhdvtthd1_intmsk      : 1   ; // [4] 
        unsigned int    dhdvtthd2_intmsk      : 1   ; // [5] 
        unsigned int    dhdvtthd3_intmsk      : 1   ; // [6] 
        unsigned int    dhduf_intmsk          : 1   ; // [7] 
        unsigned int    vdac0_ic_intmsk       : 1   ; // [8] 
        unsigned int    vdac1_ic_intmsk       : 1   ; // [9] 
        unsigned int    vdac2_ic_intmsk       : 1   ; // [10] 
        unsigned int    vdac3_ic_intmsk       : 1   ; // [11] 
        unsigned int    wte_intmsk            : 1   ; // [12] 
        unsigned int    wbc2_te_intmsk        : 1   ; // [13] 
        unsigned int    wbc3_wte_intmsk       : 1   ; // [14] 
        unsigned int    Reserved_16           : 1   ; // [15] 
        unsigned int    wbc3_stp_intmsk       : 1   ; // [16] 
        unsigned int    vsd_dcmp_err_intmsk   : 1   ; // [17] 
        unsigned int    Reserved_15           : 1   ; // [18] 
        unsigned int    vhd_dcmp_err_intmsk   : 1   ; // [19] 
        unsigned int    vsdrr_intmsk          : 1   ; // [20] 
        unsigned int    Reserved_14           : 1   ; // [21] 
        unsigned int    vhdrr_intmsk          : 1   ; // [22] 
        unsigned int    g0rr_intmsk           : 1   ; // [23] 
        unsigned int    g1rr_intmsk           : 1   ; // [24] 
        unsigned int    Reserved_13           : 3   ; // [27..25] 
        unsigned int    vhd_regup_err_intmsk  : 1   ; // [28] 
        unsigned int    Reserved_12           : 1   ; // [29] 
        unsigned int    ut_end_intmsk         : 1   ; // [30] 
        unsigned int    be_intmsk             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VOMUXDATA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pin_test_data         : 24  ; // [23..0] 
        unsigned int    dv_value              : 1   ; // [24] 
        unsigned int    hsync_value           : 1   ; // [25] 
        unsigned int    vsync_value           : 1   ; // [26] 
        unsigned int    pin_test_mode         : 4   ; // [30..27] 
        unsigned int    pin_test_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOMUXDATA;

// Define the union U_VOMUX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_sel              : 2   ; // [1..0] 
        unsigned int    dac1_sel              : 2   ; // [3..2] 
        unsigned int    dac2_sel              : 2   ; // [5..4] 
        unsigned int    dac3_sel              : 2   ; // [7..6] 
        unsigned int    dac4_sel              : 2   ; // [9..8] 
        unsigned int    dac5_sel              : 2   ; // [11..10] 
        unsigned int    dsd_to_hd             : 1   ; // [12] 
        unsigned int    dhd_to_sd             : 1   ; // [13] 
        unsigned int    vga_order             : 2   ; // [15..14] 
        unsigned int    hdmi_vid              : 3   ; // [18..16] 
        unsigned int    Reserved_17           : 1   ; // [19] 
        unsigned int    dv_neg                : 1   ; // [20] 
        unsigned int    hsync_neg             : 1   ; // [21] 
        unsigned int    vsync_neg             : 1   ; // [22] 
        unsigned int    hdmi_rod_en           : 1   ; // [23] 
        unsigned int    data_sel0             : 2   ; // [25..24] 
        unsigned int    data_sel1             : 2   ; // [27..26] 
        unsigned int    data_sel2             : 2   ; // [29..28] 
        unsigned int    sync_sel              : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VOMUX;

// Define the union U_VODEBUG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    rm_en_chn             : 4   ; // [3..0] 
        unsigned int    dhd_ff_info           : 2   ; // [5..4] 
        unsigned int    dsd_ff_info           : 2   ; // [7..6] 
        unsigned int    wbc0_ff_info          : 2   ; // [9..8] 
        unsigned int    Reserved_18           : 2   ; // [11..10] 
        unsigned int    wbc2_ff_info          : 2   ; // [13..12] 
        unsigned int    wbc_mode              : 4   ; // [17..14] 
        unsigned int    wrap_num              : 6   ; // [23..18] 
        unsigned int    wbc_cmp_mode          : 2   ; // [25..24] 
        unsigned int    wbc_wrap_src          : 1   ; // [26] 
        unsigned int    die_st_mode           : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VODEBUG;

// Define the union U_VOPARAUP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vhd_hcoef_upd         : 1   ; // [0] 
        unsigned int    vhd_vcoef_upd         : 1   ; // [1] 
        unsigned int    Reserved_21           : 2   ; // [3..2] 
        unsigned int    video_acc_upd         : 1   ; // [4] 
        unsigned int    dhd_gamma_upd         : 1   ; // [5] 
        unsigned int    vsd_hcoef_upd         : 1   ; // [6] 
        unsigned int    vsd_vcoef_upd         : 1   ; // [7] 
        unsigned int    g0_lut_upd            : 1   ; // [8] 
        unsigned int    g1_lut_upd            : 1   ; // [9] 
        unsigned int    g0_hcoef_upd          : 1   ; // [10] 
        unsigned int    g0_vcoef_upd          : 1   ; // [11] 
        unsigned int    g1_hcoef_upd          : 1   ; // [12] 
        unsigned int    g1_vcoef_upd          : 1   ; // [13] 
        unsigned int    Reserved_20           : 2   ; // [15..14] 
        unsigned int    g2_lut_upd            : 1   ; // [16] 
        unsigned int    Reserved_19           : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
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
// Define the union U_DACCTRL
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

// Define the union U_VHDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 5   ; // [4..0] 
        unsigned int    time_out              : 4   ; // [8..5] 
        unsigned int    trid_mode             : 2   ; // [10..9] 
        unsigned int    trid_en               : 1   ; // [11] 
        unsigned int    chm_rmode             : 2   ; // [13..12] 
        unsigned int    lm_rmode              : 2   ; // [15..14] 
        unsigned int    bfield_first          : 1   ; // [16] 
        unsigned int    vup_mode              : 1   ; // [17] 
        unsigned int    ifir_mode             : 2   ; // [19..18] 
        unsigned int    src_mode              : 3   ; // [22..20] 
        unsigned int    Reserved_29           : 5   ; // [27..23] 
        unsigned int    mute_en               : 1   ; // [28] 

        unsigned int    flip_en               : 1   ; // [29] 
        unsigned int    resource_sel          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCTRL;

// Define the union U_VHDUPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_31           : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VHDSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    surface_cstride       : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDSTRIDE;

// Define the union U_VHDCRSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_crstride      : 16  ; // [15..0] 
        unsigned int    Reserved_32           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCRSTRIDE;

// Define the union U_VHDIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_33           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDIRESO;

// Define the union U_VHDCBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    Reserved_34           : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VHDCMPOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lum_cmp_hoff          : 16  ; // [15..0] 
        unsigned int    chm_cmp_hoff          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VHDCFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    crop_xfpos            : 12  ; // [11..0] 
        unsigned int    crop_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_37           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCFPOS;

// Define the union U_VHDCLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    crop_xlpos            : 12  ; // [11..0] 
        unsigned int    crop_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_38           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCLPOS;

// Define the union U_VHDSRCRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_39           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDSRCRESO;

// Define the union U_VHDDRAWMODE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    draw_mode             : 3   ; // [2..0] 
        unsigned int    Reserved_40           : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDRAWMODE;

// Define the union U_VHDDFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_41           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDFPOS;

// Define the union U_VHDDLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_42           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDLPOS;

// Define the union U_VHDVFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_43           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVFPOS;

// Define the union U_VHDVLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_44           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVLPOS;

// Define the union U_VHDBK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 8   ; // [7..0] 
        unsigned int    vbk_cb                : 8   ; // [15..8] 
        unsigned int    vbk_y                 : 8   ; // [23..16] 
        unsigned int    vbk_alpha             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDBK;

// Define the union U_VHDCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_45           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCIDC;

// Define the union U_VHDCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_47           : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCODC;

// Define the union U_VHDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_49           : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_48           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP0;

// Define the union U_VHDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_51           : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_50           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP1;

// Define the union U_VHDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_53           : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_52           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP2;

// Define the union U_VHDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_55           : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_54           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP3;

// Define the union U_VHDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_56           : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP4;

// Define the union U_VHDACM0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    acm0_en               : 1   ; // [28] 
        unsigned int    acm1_en               : 1   ; // [29] 
        unsigned int    acm2_en               : 1   ; // [30] 
        unsigned int    acm3_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM0;

// Define the union U_VHDACM1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    acm_test_en           : 1   ; // [20] 
        unsigned int    Reserved_58           : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM1;

// Define the union U_VHDACM2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_59           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM2;

// Define the union U_VHDACM3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_60           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM3;

// Define the union U_VHDACM4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_61           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM4;

// Define the union U_VHDACM5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_62           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM5;

// Define the union U_VHDACM6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_63           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM6;

// Define the union U_VHDACM7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_64           : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACM7;

// Define the union U_VHDHSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    non_lnr_en            : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHSP;

// Define the union U_VHDHLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_65           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHLOFFSET;

// Define the union U_VHDHCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_66           : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHCOFFSET;

// Define the union U_VHDVSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_69           : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
#if 0 	
        unsigned int    chroma_type           : 1   ; // [25]
#else
        unsigned int    Reserved_68           : 1   ; // [25] 
#endif
        unsigned int    vsc_chroma_tap        : 1   ; // [26] 
#if 0 
        unsigned int    vsc_luma_tap          : 1   ; // [27]
#else	
        unsigned int    Reserved_67           : 1   ; // [27]
#endif		 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVSP;

// Define the union U_VHDVSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_71           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVSR;

// Define the union U_VHDVOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vchroma_offset        : 16  ; // [15..0] 
        unsigned int    vluma_offset          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVOFFSET;

// Define the union U_VHDZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_72           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDZMEORESO;

// Define the union U_VHDZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_73           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDZMEIRESO;

// Define the union U_VHDZMEDBG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    need_rand_range       : 8   ; // [7..0] 
        unsigned int    rdy_rand_range        : 8   ; // [15..8] 
        unsigned int    need_mode             : 1   ; // [16] 
        unsigned int    rdy_mode              : 1   ; // [17] 
        unsigned int    Reserved_74           : 14  ; // [31..18] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDZMEDBG;

// Define the union U_VHDVC1CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vc1_profile           : 2   ; // [1..0] 
        unsigned int    vc1_rangedfrm         : 1   ; // [2] 
        unsigned int    vc1_mapyflg           : 1   ; // [3] 
        unsigned int    vc1_mapcflg           : 1   ; // [4] 
        unsigned int    vc1_bmapyflg          : 1   ; // [5] 
        unsigned int    vc1_bmapcflg          : 1   ; // [6] 
        unsigned int    Reserved_79           : 1   ; // [7] 
        unsigned int    vc1_mapy              : 3   ; // [10..8] 
        unsigned int    Reserved_78           : 1   ; // [11] 
        unsigned int    vc1_mapc              : 3   ; // [14..12] 
        unsigned int    Reserved_77           : 1   ; // [15] 
        unsigned int    vc1_bmapy             : 3   ; // [18..16] 
        unsigned int    Reserved_76           : 1   ; // [19] 
        unsigned int    vc1_bmapc             : 3   ; // [22..20] 
        unsigned int    Reserved_75           : 7   ; // [29..23] 
        unsigned int    vc1_bfield            : 1   ; // [30] 
        unsigned int    vc1_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVC1CTRL;

// Define the union U_VHDVC1CFG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vc1_fns1_rangedfrm    : 1   ; // [0] 
        unsigned int    vc1_fns1_mapyflg      : 1   ; // [1] 
        unsigned int    vc1_fns1_mapcflg      : 1   ; // [2] 
        unsigned int    vc1_fns1_bmapyflg     : 1   ; // [3] 
        unsigned int    vc1_fns1_bmapcflg     : 1   ; // [4] 
        unsigned int    Reserved_83           : 3   ; // [7..5] 
        unsigned int    vc1_fnn1_rangedfrm    : 1   ; // [8] 
        unsigned int    vc1_fnn1_mapyflg      : 1   ; // [9] 
        unsigned int    vc1_fnn1_mapcflg      : 1   ; // [10] 
        unsigned int    vc1_fnn1_bmapyflg     : 1   ; // [11] 
        unsigned int    vc1_fnn1_bmapcflg     : 1   ; // [12] 
        unsigned int    Reserved_82           : 3   ; // [15..13] 
        unsigned int    vc1_fnn2_rangedfrm    : 1   ; // [16] 
        unsigned int    vc1_fnn2_mapyflg      : 1   ; // [17] 
        unsigned int    vc1_fnn2_mapcflg      : 1   ; // [18] 
        unsigned int    vc1_fnn2_bmapyflg     : 1   ; // [19] 
        unsigned int    vc1_fnn2_bmapcflg     : 1   ; // [20] 
        unsigned int    Reserved_81           : 3   ; // [23..21] 
        unsigned int    vc1_fnn3_rangedfrm    : 1   ; // [24] 
        unsigned int    vc1_fnn3_mapyflg      : 1   ; // [25] 
        unsigned int    vc1_fnn3_mapcflg      : 1   ; // [26] 
        unsigned int    vc1_fnn3_bmapyflg     : 1   ; // [27] 
        unsigned int    vc1_fnn3_bmapcflg     : 1   ; // [28] 
        unsigned int    Reserved_80           : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVC1CFG1;

// Define the union U_VHDVC1CFG2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vc1_fns1_mapy         : 3   ; // [2..0] 
        unsigned int    Reserved_91           : 1   ; // [3] 
        unsigned int    vc1_fns1_mapc         : 3   ; // [6..4] 
        unsigned int    Reserved_90           : 1   ; // [7] 
        unsigned int    vc1_fns1_bmapy        : 3   ; // [10..8] 
        unsigned int    Reserved_89           : 1   ; // [11] 
        unsigned int    vc1_fns1_bmapc        : 3   ; // [14..12] 
        unsigned int    Reserved_88           : 1   ; // [15] 
        unsigned int    vc1_fnn1_mapy         : 3   ; // [18..16] 
        unsigned int    Reserved_87           : 1   ; // [19] 
        unsigned int    vc1_fnn1_mapc         : 3   ; // [22..20] 
        unsigned int    Reserved_86           : 1   ; // [23] 
        unsigned int    vc1_fnn1_bmapy        : 3   ; // [26..24] 
        unsigned int    Reserved_85           : 1   ; // [27] 
        unsigned int    vc1_fnn1_bmapc        : 3   ; // [30..28] 
        unsigned int    Reserved_84           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVC1CFG2;

// Define the union U_VHDVC1CFG3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vc1_fnn2_mapy         : 3   ; // [2..0] 
        unsigned int    Reserved_99           : 1   ; // [3] 
        unsigned int    vc1_fnn2_mapc         : 3   ; // [6..4] 
        unsigned int    Reserved_98           : 1   ; // [7] 
        unsigned int    vc1_fnn2_bmapy        : 3   ; // [10..8] 
        unsigned int    Reserved_97           : 1   ; // [11] 
        unsigned int    vc1_fnn2_bmapc        : 3   ; // [14..12] 
        unsigned int    Reserved_96           : 1   ; // [15] 
        unsigned int    vc1_fnn3_mapy         : 3   ; // [18..16] 
        unsigned int    Reserved_95           : 1   ; // [19] 
        unsigned int    vc1_fnn3_mapc         : 3   ; // [22..20] 
        unsigned int    Reserved_94           : 1   ; // [23] 
        unsigned int    vc1_fnn3_bmapy        : 3   ; // [26..24] 
        unsigned int    Reserved_93           : 1   ; // [27] 
        unsigned int    vc1_fnn3_bmapc        : 3   ; // [30..28] 
        unsigned int    Reserved_92           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVC1CFG3;

// Define the union U_VHDACCTHD1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_low               : 10  ; // [9..0] 
        unsigned int    thd_high              : 10  ; // [19..10] 
        unsigned int    thd_med_low           : 10  ; // [29..20] 
        unsigned int    acc_mode              : 1   ; // [30] 
        unsigned int    acc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCTHD1;

// Define the union U_VHDACCTHD2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_med_high          : 10  ; // [9..0] 
        unsigned int    acc_multiple          : 8   ; // [17..10] 
        unsigned int    acc_rst               : 1   ; // [18] 
        unsigned int    Reserved_100          : 13  ; // [31..19] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCTHD2;

// Define the union U_VHDACCLOWN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_101          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCLOWN;

// Define the union U_VHDACCMEDN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_103          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCMEDN;

// Define the union U_VHDACCHIGHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_105          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCHIGHN;

// Define the union U_VHDACCMLN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_107          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCMLN;

// Define the union U_VHDACCMHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_109          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCMHN;

// Define the union U_VHDACC3LOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_low              : 21  ; // [20..0] 
        unsigned int    Reserved_111          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACC3LOW;

// Define the union U_VHDACC3MED
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_med              : 21  ; // [20..0] 
        unsigned int    Reserved_113          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACC3MED;

// Define the union U_VHDACC3HIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_high             : 21  ; // [20..0] 
        unsigned int    Reserved_114          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACC3HIGH;

// Define the union U_VHDACC8MLOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_low          : 21  ; // [20..0] 
        unsigned int    Reserved_115          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACC8MLOW;

// Define the union U_VHDACC8MHIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_high         : 21  ; // [20..0] 
        unsigned int    Reserved_116          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACC8MHIGH;

// Define the union U_VHDACCTOTAL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acc_pix_total         : 21  ; // [20..0] 
        unsigned int    Reserved_117          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDACCTOTAL;

// Define the union U_VHDIFIRCOEF01
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef0                 : 10  ; // [9..0] 
        unsigned int    Reserved_119          : 6   ; // [15..10] 
        unsigned int    coef1                 : 10  ; // [25..16] 
        unsigned int    Reserved_118          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDIFIRCOEF01;

// Define the union U_VHDIFIRCOEF23
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef2                 : 10  ; // [9..0] 
        unsigned int    Reserved_122          : 6   ; // [15..10] 
        unsigned int    coef3                 : 10  ; // [25..16] 
        unsigned int    Reserved_121          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDIFIRCOEF23;

// Define the union U_VHDIFIRCOEF45
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef4                 : 10  ; // [9..0] 
        unsigned int    Reserved_124          : 6   ; // [15..10] 
        unsigned int    coef5                 : 10  ; // [25..16] 
        unsigned int    Reserved_123          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDIFIRCOEF45;

// Define the union U_VHDIFIRCOEF67
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef6                 : 10  ; // [9..0] 
        unsigned int    Reserved_126          : 6   ; // [15..10] 
        unsigned int    coef7                 : 10  ; // [25..16] 
        unsigned int    Reserved_125          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDIFIRCOEF67;

// Define the union U_VHDLTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_127          : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLTICTRL;

// Define the union U_VHDLHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; // [7..0] 
        unsigned int    lhpass_coef1          : 8   ; // [15..8] 
        unsigned int    lhpass_coef2          : 8   ; // [23..16] 
        unsigned int    lhpass_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLHPASSCOEF;

// Define the union U_VHDLTITHD
typedef union
{
    // Define the struct bits
    struct
    {

        unsigned int    lover_swing           : 10  ; // [9..0] 
        unsigned int    lunder_swing          : 10  ; // [19..10] 
        unsigned int    lcoring_thd           : 12  ; // [31..20] 

    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLTITHD;

// Define the union U_VHDLHFREQTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; // [15..0] 
        unsigned int    lhfreq_thd1           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLHFREQTHD;

// Define the union U_VHDLGAINCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_129          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLGAINCOEF;

// Define the union U_VHDCTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_131          : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_130          : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCTICTRL;

// Define the union U_VHDCHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_133          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCHPASSCOEF;

// Define the union U_VHDCTITHD
typedef union
{
    // Define the struct bits
    struct
    {

        unsigned int    cover_swing           : 10  ; // [9..0] 
        unsigned int    cunder_swing          : 10  ; // [19..10] 
        unsigned int    ccoring_thd           : 12  ; // [31..20] 

    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCTITHD;

// Define the union U_VHDDNRCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dr_en                 : 1   ; // [0] 
        unsigned int    db_en                 : 1   ; // [1] 
        unsigned int    dbenchr               : 1   ; // [2] 
        unsigned int    drenchr               : 1   ; // [3] 
        unsigned int    mem_sel               : 1   ; // [4]
        unsigned int    Reserved_134          : 27  ; // [31..5] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDNRCTRL;

// Define the union U_VHDDRCFG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_138          : 16  ; // [15..0] 
        unsigned int    drthrmaxsimilarpixdiff  : 5   ; // [20..16] 
        unsigned int    Reserved_137          : 3   ; // [23..21] 
        unsigned int    drthrflat3x3zone      : 5   ; // [28..24] 
        unsigned int    Reserved_136          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDRCFG0;

// Define the union U_VHDDRCFG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dralphascale          : 5   ; // [4..0] 
        unsigned int    Reserved_140          : 11  ; // [15..5] 
        unsigned int    drbetascale           : 5   ; // [20..16] 
        unsigned int    Reserved_139          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDRCFG1;

// Define the union U_VHDDBCFG0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dbenhor               : 1   ; // [0] 
        unsigned int    dbenvert              : 1   ; // [1] 
        unsigned int    dbuseweakflt          : 1   ; // [2] 
        unsigned int    dbvertasprog          : 1   ; // [3] 
        unsigned int    Reserved_142          : 4   ; // [7..4] 
        unsigned int    picestqp              : 8   ; // [15..8] 
        unsigned int    thrdbedgethr          : 8   ; // [23..16] 
        unsigned int    Reserved_141          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDBCFG0;

// Define the union U_VHDDBCFG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dbthrleastblkdiffhor  : 8   ; // [7..0] 
        unsigned int    dbthrmaxdiffhor       : 8   ; // [15..8] 
        unsigned int    dbthrleastblkdiffvert  : 8   ; // [23..16] 
        unsigned int    dbthrmaxdiffvert      : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDBCFG1;

// Define the union U_VHDDBCFG2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    detailimgqpthr        : 8   ; // [7..0] 
        unsigned int    thrdblargesmooth      : 8   ; // [15..8] 
        unsigned int    dbalphascale          : 8   ; // [23..16] 
        unsigned int    dbbetascale           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDBCFG2;

// Define the union U_VHDDNRYINFSTADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int dnr_yinf_addr           : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VHDDNRYINFSTADDR;
// Define the union U_VHDDNRCINFSTADDR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int dnr_cinf_addr           : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_VHDDNRCINFSTADDR;
// Define the union U_VHDDNRINFSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dnr_yinf_stride       : 16  ; // [15..0] 
        unsigned int    dnr_cinf_stride       : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDNRINFSTRIDE;

// Define the union U_VHDDIECTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_144          : 14  ; // [13..0] 
        unsigned int    die_st_wbc_mode       : 1   ; // [14] 
        unsigned int    die_st_upd_mode       : 1   ; // [15] 
        unsigned int    stinfo_stop           : 1   ; // [16] 
        unsigned int    die_rst               : 1   ; // [17] 
        unsigned int    Reserved_143          : 6   ; // [23..18] 
        unsigned int    die_chmmode           : 2   ; // [25..24] 
        unsigned int    die_lmmode            : 2   ; // [27..26] 
        unsigned int    die_out_sel_c         : 1   ; // [28] 
        unsigned int    die_out_sel_l         : 1   ; // [29] 
        unsigned int    die_chroma_en         : 1   ; // [30] 
        unsigned int    die_luma_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIECTRL;

// Define the union U_VHDDIELMA0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_qtbl1            : 8   ; // [7..0] 
        unsigned int    luma_qtbl2            : 8   ; // [15..8] 
        unsigned int    luma_qtbl3            : 8   ; // [23..16] 
        unsigned int    scale_ratio_ppd       : 6   ; // [29..24] 
        unsigned int    Reserved_146          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIELMA0;

// Define the union U_VHDDIELMA1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_reqtbl0          : 8   ; // [7..0] 
        unsigned int    luma_reqtbl1          : 8   ; // [15..8] 
        unsigned int    luma_reqtbl2          : 8   ; // [23..16] 
        unsigned int    luma_reqtbl3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIELMA1;

// Define the union U_VHDDIELMA2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_win_size         : 2   ; // [1..0] 
        unsigned int    luma_scesdf_max       : 1   ; // [2] 
        unsigned int    die_st_qrst_en        : 1   ; // [3] 
        unsigned int    die_st_n_en           : 1   ; // [4] 
        unsigned int    die_st_m_en           : 1   ; // [5] 
        unsigned int    die_st_l_en           : 1   ; // [6] 
        unsigned int    die_st_k_en           : 1   ; // [7] 
        unsigned int    luma_qrst_max         : 1   ; // [8] 
        unsigned int    luma_mf_max           : 1   ; // [9] 
        unsigned int    chroma_mf_max         : 1   ; // [10] 
		

        unsigned int    die_sad_thd           : 6   ; // [16..11] 
        unsigned int    Reserved_149          : 3   ; // [19..17] 
        unsigned int    die_mid_thd           : 8   ; // [27..20] 
        unsigned int    Reserved_148          : 4   ; // [31..28] 

    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIELMA2;

// Define the union U_VHDDIEINTEN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir_inten             : 4   ; // [3..0] 
        unsigned int    Reserved_151          : 3   ; // [6..4] 
        unsigned int    dir_ck_enh            : 1   ; // [7] 
        unsigned int    dir_inten_ver         : 4   ; // [11..8] 
        unsigned int    Reserved_150          : 4   ; // [15..12] 
        unsigned int    ver_min_inten         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIEINTEN;

// Define the union U_VHDDIESCALE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    range_scale           : 8   ; // [7..0] 
        unsigned int    Reserved_152          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIESCALE;

// Define the union U_VHDDIECHECK1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ck_max_range          : 6   ; // [5..0] 
        unsigned int    Reserved_155          : 2   ; // [7..6] 
        unsigned int    ck_range_gain         : 4   ; // [11..8] 
        unsigned int    Reserved_154          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_153          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIECHECK1;

// Define the union U_VHDDIECHECK2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ck_max_range          : 6   ; // [5..0] 
        unsigned int    Reserved_158          : 2   ; // [7..6] 
        unsigned int    ck_range_gain         : 4   ; // [11..8] 
        unsigned int    Reserved_157          : 4   ; // [15..12] 
        unsigned int    ck_gain               : 4   ; // [19..16] 
        unsigned int    Reserved_156          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIECHECK2;

// Define the union U_VHDDIEDIR0_3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir0_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_162          : 2   ; // [7..6] 
        unsigned int    dir1_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_161          : 2   ; // [15..14] 
        unsigned int    dir2_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_160          : 2   ; // [23..22] 
        unsigned int    dir3_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_159          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIEDIR0_3;

// Define the union U_VHDDIEDIR4_7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir4_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_166          : 2   ; // [7..6] 
        unsigned int    dir5_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_165          : 2   ; // [15..14] 
        unsigned int    dir6_mult             : 6   ; // [21..16] 
        unsigned int    Reserved_164          : 2   ; // [23..22] 
        unsigned int    dir7_mult             : 6   ; // [29..24] 
        unsigned int    Reserved_163          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIEDIR4_7;

// Define the union U_VHDDIEDIR8_11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir8_mult             : 6   ; // [5..0] 
        unsigned int    Reserved_170          : 2   ; // [7..6] 
        unsigned int    dir9_mult             : 6   ; // [13..8] 
        unsigned int    Reserved_169          : 2   ; // [15..14] 
        unsigned int    dir10_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_168          : 2   ; // [23..22] 
        unsigned int    dir11_mult            : 6   ; // [29..24] 
        unsigned int    Reserved_167          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIEDIR8_11;

// Define the union U_VHDDIEDIR12_14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dir12_mult            : 6   ; // [5..0] 
        unsigned int    Reserved_173          : 2   ; // [7..6] 
        unsigned int    dir13_mult            : 6   ; // [13..8] 
        unsigned int    Reserved_172          : 2   ; // [15..14] 
        unsigned int    dir14_mult            : 6   ; // [21..16] 
        unsigned int    Reserved_171          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIEDIR12_14;

// Define the union U_VHDDIESTA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    die_ref_field         : 1   ; // [0] 
        unsigned int    Reserved_174          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VHDCCRSCLR0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    no_ccr_detect_thd     : 8   ; // [7..0] 
        unsigned int    no_ccr_detect_max     : 8   ; // [15..8] 
        unsigned int    chroma_ma_offset      : 8   ; // [23..16] 
        unsigned int    chroma_ccr_en         : 1   ; // [24] 
        unsigned int    Reserved_177          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCCRSCLR0;

// Define the union U_VHDCCRSCLR1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    max_xchroma           : 8   ; // [7..0] 
        unsigned int    no_ccr_detect_blend   : 4   ; // [11..8] 
        unsigned int    Reserved_178          : 4   ; // [15..12] 
        unsigned int    similar_thd           : 8   ; // [23..16] 
        unsigned int    similar_max           : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCCRSCLR1;

// Define the union U_VHDPDPCCMOVCORING
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mcoring_tkr           : 8   ; // [7..0] 
        unsigned int    mcoring_norm          : 8   ; // [15..8] 
        unsigned int    mcoring_blk           : 8   ; // [23..16] 
        unsigned int    Reserved_179          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDPCCMOVCORING;

// Define the union U_VHDPDICHDTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bist_mov2r            : 8   ; // [7..0] 
        unsigned int    Reserved_180          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VHDPDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_183          : 20  ; // [19..0] 
        unsigned int    edge_smooth_ratio     : 8   ; // [27..20] 
        unsigned int    Reserved_182          : 1   ; // [28] 
        unsigned int    dir_mch_c             : 1   ; // [29] 
        unsigned int    edge_smooth_en        : 1   ; // [30] 
        unsigned int    dir_mch_l             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDCTRL;

// Define the union U_VHDPDBLKPOS0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_x                 : 12  ; // [11..0] 
        unsigned int    blk_y                 : 12  ; // [23..12] 
        unsigned int    Reserved_185          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDBLKPOS0;

// Define the union U_VHDPDBLKPOS1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_x                 : 12  ; // [11..0] 
        unsigned int    blk_y                 : 12  ; // [23..12] 
        unsigned int    Reserved_186          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDBLKPOS1;

// Define the union U_VHDPDBLKTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    stillblk_thd          : 8   ; // [7..0] 
        unsigned int    diff_movblk_thd       : 8   ; // [15..8] 
        unsigned int    Reserved_187          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDBLKTHD;

// Define the union U_VHDPDHISTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hist_thd0             : 8   ; // [7..0] 
        unsigned int    hist_thd1             : 8   ; // [15..8] 
        unsigned int    hist_thd2             : 8   ; // [23..16] 
        unsigned int    hist_thd3             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDHISTTHD;

// Define the union U_VHDPDUMTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    um_thd0               : 8   ; // [7..0] 
        unsigned int    um_thd1               : 8   ; // [15..8] 
        unsigned int    um_thd2               : 8   ; // [23..16] 
        unsigned int    Reserved_188          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDUMTHD;

// Define the union U_VHDPDPCCCORING
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coring_tkr            : 8   ; // [7..0] 
        unsigned int    coring_norm           : 8   ; // [15..8] 
        unsigned int    coring_blk            : 8   ; // [23..16] 
        unsigned int    Reserved_189          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDPCCCORING;

// Define the union U_VHDPDPCCHTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pcc_hthd              : 8   ; // [7..0] 
        unsigned int    Reserved_190          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDPCCHTHD;

// Define the union U_VHDPDPCCVTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pcc_vthd0             : 8   ; // [7..0] 
        unsigned int    pcc_vthd1             : 8   ; // [15..8] 
        unsigned int    pcc_vthd2             : 8   ; // [23..16] 
        unsigned int    pcc_vthd3             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDPCCVTHD;

// Define the union U_VHDPDITDIFFVTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    itdiff_vthd0          : 8   ; // [7..0] 
        unsigned int    itdiff_vthd1          : 8   ; // [15..8] 
        unsigned int    itdiff_vthd2          : 8   ; // [23..16] 
        unsigned int    itdiff_vthd3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDPDITDIFFVTHD;

// Define the union U_VHDPDLASITHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lasi_thd              : 8   ; // [7..0] 
        unsigned int    edge_thd              : 8   ; // [15..8] 
        unsigned int    mov_thd               : 8   ; // [23..16] 
        unsigned int    Reserved_191          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VSDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 5   ; // [4..0] 
        unsigned int    time_out              : 4   ; // [8..5] 
        unsigned int    Reserved_197          : 3   ; // [11..9] 
        unsigned int    chm_rmode             : 2   ; // [13..12] 
        unsigned int    lm_rmode              : 2   ; // [15..14] 
        unsigned int    bfield_first          : 1   ; // [16] 
        unsigned int    vup_mode              : 1   ; // [17] 
        unsigned int    ifir_mode             : 2   ; // [19..18] 
        unsigned int    src_mode              : 3   ; // [22..20] 
        unsigned int    Reserved_196          : 4   ; // [26..23] 
        unsigned int    wrap_en               : 1   ; // [27] 
        unsigned int    mute_en               : 1   ; // [28] 

        unsigned int    flip_en               : 1   ; // [29] 

        unsigned int    resource_sel          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCTRL;

// Define the union U_VSDUPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_199          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_VSDSTRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    surface_cstride       : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDSTRIDE;

// Define the union U_VSDIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_202          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDIRESO;

// Define the union U_VSDWRAPTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; // [11..0] 
        unsigned int    Reserved_204          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDWRAPTHD;

// Define the union U_VSDCBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    Reserved_205          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCBMPARA;

// Define the union U_VSDCMPOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lum_cmp_hoff          : 16  ; // [15..0] 
        unsigned int    chm_cmp_hoff          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCMPOFFSET;

// Define the union U_VSDCFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    crop_xfpos            : 12  ; // [11..0] 
        unsigned int    crop_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_207          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCFPOS;

// Define the union U_VSDCLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    crop_xlpos            : 12  ; // [11..0] 
        unsigned int    crop_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_209          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCLPOS;

// Define the union U_VSDSRCRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_210          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDSRCRESO;

// Define the union U_VSDDRAWMODE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    draw_mode             : 3   ; // [2..0] 
        unsigned int    Reserved_211          : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDDRAWMODE;

// Define the union U_VSDDFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_212          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDDFPOS;

// Define the union U_VSDDLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_213          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDDLPOS;

// Define the union U_VSDVFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xfpos           : 12  ; // [11..0] 
        unsigned int    video_yfpos           : 12  ; // [23..12] 
        unsigned int    Reserved_214          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVFPOS;

// Define the union U_VSDVLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_xlpos           : 12  ; // [11..0] 
        unsigned int    video_ylpos           : 12  ; // [23..12] 
        unsigned int    Reserved_215          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVLPOS;

// Define the union U_VSDBK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbk_cr                : 8   ; // [7..0] 
        unsigned int    vbk_cb                : 8   ; // [15..8] 
        unsigned int    vbk_y                 : 8   ; // [23..16] 
        unsigned int    vbk_alpha             : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDBK;

// Define the union U_VSDCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_216          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCIDC;

// Define the union U_VSDCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_218          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCODC;

// Define the union U_VSDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_220          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_219          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP0;

// Define the union U_VSDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_222          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_221          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP1;

// Define the union U_VSDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_224          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_223          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP2;

// Define the union U_VSDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_226          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_225          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP3;

// Define the union U_VSDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_227          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP4;

// Define the union U_VSDACM0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    acm0_en               : 1   ; // [28] 
        unsigned int    acm1_en               : 1   ; // [29] 
        unsigned int    acm2_en               : 1   ; // [30] 
        unsigned int    acm3_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM0;

// Define the union U_VSDACM1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    acm_test_en           : 1   ; // [20] 
        unsigned int    Reserved_229          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM1;

// Define the union U_VSDACM2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_230          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM2;

// Define the union U_VSDACM3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_231          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM3;

// Define the union U_VSDACM4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_232          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM4;

// Define the union U_VSDACM5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_233          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM5;

// Define the union U_VSDACM6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_u_off           : 5   ; // [4..0] 
        unsigned int    acm_b_u_off           : 5   ; // [9..5] 
        unsigned int    acm_c_u_off           : 5   ; // [14..10] 
        unsigned int    acm_d_u_off           : 5   ; // [19..15] 
        unsigned int    acm_fir_blk           : 4   ; // [23..20] 
        unsigned int    acm_sec_blk           : 4   ; // [27..24] 
        unsigned int    Reserved_234          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM6;

// Define the union U_VSDACM7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acm_a_v_off           : 5   ; // [4..0] 
        unsigned int    acm_b_v_off           : 5   ; // [9..5] 
        unsigned int    acm_c_v_off           : 5   ; // [14..10] 
        unsigned int    acm_d_v_off           : 5   ; // [19..15] 
        unsigned int    Reserved_235          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACM7;

// Define the union U_VSDHSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 24  ; // [23..0] 
        unsigned int    hfir_order            : 1   ; // [24] 
        unsigned int    hchfir_en             : 1   ; // [25] 
        unsigned int    hlfir_en              : 1   ; // [26] 
        unsigned int    non_lnr_en            : 1   ; // [27] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hchmsc_en             : 1   ; // [30] 
        unsigned int    hlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDHSP;

// Define the union U_VSDHLOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_loffset           : 28  ; // [27..0] 
        unsigned int    Reserved_236          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDHLOFFSET;

// Define the union U_VSDHCOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 28  ; // [27..0] 
        unsigned int    Reserved_237          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDHCOFFSET;

// Define the union U_VSDVSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_240          : 19  ; // [18..0] 
        unsigned int    zme_in_fmt            : 2   ; // [20..19] 
        unsigned int    zme_out_fmt           : 2   ; // [22..21] 
        unsigned int    vchfir_en             : 1   ; // [23] 
        unsigned int    vlfir_en              : 1   ; // [24] 
#if 0
        unsigned int    chroma_type           : 1   ; // [25]
#else		
        unsigned int    Reserved_239          : 1   ; // [25] 
#endif
        unsigned int    vsc_chroma_tap        : 1   ; // [26]
#if 0
        unsigned int    vsc_luma_tap          : 1   ; // [27]
#else 
        unsigned int    Reserved_238          : 1   ; // [27] 
#endif		
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vchmsc_en             : 1   ; // [30] 
        unsigned int    vlmsc_en              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVSP;

// Define the union U_VSDVSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_242          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVSR;

// Define the union U_VSDVOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vchroma_offset        : 16  ; // [15..0] 
        unsigned int    vluma_offset          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVOFFSET;

// Define the union U_VSDZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_243          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDZMEORESO;

// Define the union U_VSDZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_244          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDZMEIRESO;

// Define the union U_VSDZMEDBG
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    need_rand_range       : 8   ; // [7..0] 
        unsigned int    rdy_rand_range        : 8   ; // [15..8] 
        unsigned int    need_mode             : 1   ; // [16] 
        unsigned int    rdy_mode              : 1   ; // [17] 
        unsigned int    Reserved_245          : 14  ; // [31..18] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDZMEDBG;

// Define the union U_VSDACCTHD1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_low               : 10  ; // [9..0] 
        unsigned int    thd_high              : 10  ; // [19..10] 
        unsigned int    thd_med_low           : 10  ; // [29..20] 
        unsigned int    acc_mode              : 1   ; // [30] 
        unsigned int    acc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCTHD1;

// Define the union U_VSDACCTHD2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    thd_med_high          : 10  ; // [9..0] 
        unsigned int    acc_multiple          : 8   ; // [17..10] 
        unsigned int    acc_rst               : 1   ; // [18] 
        unsigned int    Reserved_247          : 13  ; // [31..19] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCTHD2;

// Define the union U_VSDACCLOWN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_248          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCLOWN;

// Define the union U_VSDACCMEDN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_250          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCMEDN;

// Define the union U_VSDACCHIGHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_252          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCHIGHN;

// Define the union U_VSDACCMLN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_254          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCMLN;

// Define the union U_VSDACCMHN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    table_data1n          : 10  ; // [9..0] 
        unsigned int    table_data2n          : 10  ; // [19..10] 
        unsigned int    table_data3n          : 10  ; // [29..20] 
        unsigned int    Reserved_256          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCMHN;

// Define the union U_VSDACC3LOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_low              : 21  ; // [20..0] 
        unsigned int    Reserved_258          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACC3LOW;

// Define the union U_VSDACC3MED
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_med              : 21  ; // [20..0] 
        unsigned int    Reserved_260          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACC3MED;

// Define the union U_VSDACC3HIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt3_high             : 21  ; // [20..0] 
        unsigned int    Reserved_261          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACC3HIGH;

// Define the union U_VSDACC8MLOW
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_low          : 21  ; // [20..0] 
        unsigned int    Reserved_262          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACC8MLOW;

// Define the union U_VSDACC8MHIGH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cnt8_med_high         : 21  ; // [20..0] 
        unsigned int    Reserved_263          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACC8MHIGH;

// Define the union U_VSDACCTOTAL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    acc_pix_total         : 21  ; // [20..0] 
        unsigned int    Reserved_264          : 11  ; // [31..21] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDACCTOTAL;

// Define the union U_VSDIFIRCOEF01
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef0                 : 10  ; // [9..0] 
        unsigned int    Reserved_266          : 6   ; // [15..10] 
        unsigned int    coef1                 : 10  ; // [25..16] 
        unsigned int    Reserved_265          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDIFIRCOEF01;

// Define the union U_VSDIFIRCOEF23
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef2                 : 10  ; // [9..0] 
        unsigned int    Reserved_269          : 6   ; // [15..10] 
        unsigned int    coef3                 : 10  ; // [25..16] 
        unsigned int    Reserved_268          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDIFIRCOEF23;

// Define the union U_VSDIFIRCOEF45
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef4                 : 10  ; // [9..0] 
        unsigned int    Reserved_271          : 6   ; // [15..10] 
        unsigned int    coef5                 : 10  ; // [25..16] 
        unsigned int    Reserved_270          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDIFIRCOEF45;

// Define the union U_VSDIFIRCOEF67
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef6                 : 10  ; // [9..0] 
        unsigned int    Reserved_273          : 6   ; // [15..10] 
        unsigned int    coef7                 : 10  ; // [25..16] 
        unsigned int    Reserved_272          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDIFIRCOEF67;

// Define the union U_G0CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 8   ; // [7..0] 
        unsigned int    bitext                : 2   ; // [9..8] 
        unsigned int    trid_en               : 1   ; // [10] 
        unsigned int    trid_mode             : 1   ; // [11] 
        unsigned int    Reserved_275          : 13  ; // [24..12] 
        unsigned int    decmp_en              : 1   ; // [25] 
        unsigned int    read_mode             : 1   ; // [26] 
        unsigned int    upd_mode              : 1   ; // [27] 
        unsigned int    mute_en               : 1   ; // [28] 
        unsigned int    gmm_en                : 1   ; // [29] 
        unsigned int    Reserved_274          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CTRL;

// Define the union U_G0UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_277          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_G0STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_278          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0STRIDE;

// Define the union U_G0CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    palpha_range          : 1   ; // [8] 
        unsigned int    Reserved_280          : 1   ; // [9] 
        unsigned int    vedge_p               : 1   ; // [10] 
        unsigned int    hedge_p               : 1   ; // [11] 
        unsigned int    palpha_en             : 1   ; // [12] 
        unsigned int    premult_en            : 1   ; // [13] 
        unsigned int    key_en                : 1   ; // [14] 
        unsigned int    key_mode              : 1   ; // [15] 
        unsigned int    Reserved_279          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CBMPARA;

// Define the union U_G0CKEYMAX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_max              : 8   ; // [7..0] 
        unsigned int    keyg_max              : 8   ; // [15..8] 
        unsigned int    keyr_max              : 8   ; // [23..16] 
        unsigned int    va0                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CKEYMAX;

// Define the union U_G0CKEYMIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_min              : 8   ; // [7..0] 
        unsigned int    keyg_min              : 8   ; // [15..8] 
        unsigned int    keyr_min              : 8   ; // [23..16] 
        unsigned int    va1                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CKEYMIN;

// Define the union U_G0CMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    kmsk_b                : 8   ; // [7..0] 
        unsigned int    kmsk_g                : 8   ; // [15..8] 
        unsigned int    kmsk_r                : 8   ; // [23..16] 
        unsigned int    Reserved_281          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CMASK;

// Define the union U_G0IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_282          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0IRESO;

// Define the union U_G0ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_283          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0ORESO;

// Define the union U_G0SFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    src_xfpos             : 7   ; // [6..0] 
        unsigned int    Reserved_284          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0SFPOS;

// Define the union U_G0DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_285          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0DFPOS;

// Define the union U_G0DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_286          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_G0HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 16  ; // [15..0] 
        unsigned int    Reserved_289          : 3   ; // [18..16] 
        unsigned int    hfir_order            : 1   ; // [19] 
        unsigned int    Reserved_288          : 3   ; // [22..20] 
        unsigned int    hafir_en              : 1   ; // [23] 
        unsigned int    hfir_en               : 1   ; // [24] 
        unsigned int    Reserved_287          : 3   ; // [27..25] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hamid_en              : 1   ; // [30] 
        unsigned int    hsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HSP;

// Define the union U_G0HOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 16  ; // [15..0] 
        unsigned int    hor_loffset           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HOFFSET;

// Define the union U_G0VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_292          : 23  ; // [22..0] 
        unsigned int    vafir_en              : 1   ; // [23] 
        unsigned int    vfir_en               : 1   ; // [24] 
        unsigned int    Reserved_291          : 2   ; // [26..25] 
        unsigned int    vsc_luma_tap          : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vamid_en              : 1   ; // [30] 
        unsigned int    vsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VSP;

// Define the union U_G0VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_293          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VSR;

// Define the union U_G0VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbtm_offset           : 16  ; // [15..0] 
        unsigned int    vtp_offset            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VOFFSET;

// Define the union U_G0ZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_294          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0ZMEORESO;

// Define the union U_G0ZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_295          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0ZMEIRESO;

// Define the union U_G0LTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef4          : 8   ; // [7..0] 
        unsigned int    lmixing_ratio         : 8   ; // [15..8] 
        unsigned int    lgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_296          : 3   ; // [30..28] 
        unsigned int    lti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0LTICTRL;

// Define the union U_G0LHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhpass_coef0          : 8   ; // [7..0] 
        unsigned int    lhpass_coef1          : 8   ; // [15..8] 
        unsigned int    lhpass_coef2          : 8   ; // [23..16] 
        unsigned int    lhpass_coef3          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0LHPASSCOEF;

// Define the union U_G0LTITHD
typedef union
{
    // Define the struct bits
    struct
    {

        unsigned int    lover_swing           : 10  ; // [9..0] 
        unsigned int    lunder_swing          : 10  ; // [19..10] 
        unsigned int    lcoring_thd           : 12  ; // [31..20] 

    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0LTITHD;

// Define the union U_G0LHFREQTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lhfreq_thd0           : 16  ; // [15..0] 
        unsigned int    lhfreq_thd1           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0LHFREQTHD;

// Define the union U_G0LGAINCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    lgain_coef0           : 8   ; // [7..0] 
        unsigned int    lgain_coef1           : 8   ; // [15..8] 
        unsigned int    lgain_coef2           : 8   ; // [23..16] 
        unsigned int    Reserved_299          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0LGAINCOEF;

// Define the union U_G0CTICTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_301          : 8   ; // [7..0] 
        unsigned int    cmixing_ratio         : 8   ; // [15..8] 
        unsigned int    cgain_ratio           : 12  ; // [27..16] 
        unsigned int    Reserved_300          : 3   ; // [30..28] 
        unsigned int    cti_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CTICTRL;

// Define the union U_G0CHPASSCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    chpass_coef0          : 8   ; // [7..0] 
        unsigned int    chpass_coef1          : 8   ; // [15..8] 
        unsigned int    chpass_coef2          : 8   ; // [23..16] 
        unsigned int    Reserved_303          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CHPASSCOEF;

// Define the union U_G0CTITHD
typedef union
{
    // Define the struct bits
    struct
    {

        unsigned int    cover_swing           : 10  ; // [9..0] 
        unsigned int    cunder_swing          : 10  ; // [19..10] 
        unsigned int    ccoring_thd           : 12  ; // [31..20] 

    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CTITHD;

// Define the union U_G0CSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_305          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_304          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP0;

// Define the union U_G0CSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_308          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_307          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP1;

// Define the union U_G0CSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_310          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_309          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP2;

// Define the union U_G0CSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_312          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_311          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP3;

// Define the union U_G0CSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_313          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP4;

// Define the union U_G0CSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_314          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCIDC;

// Define the union U_G0CSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    Reserved_316          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCODC;

// Define the union U_G0CSCDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_317          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCDC;

// Define the union U_G1CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 8   ; // [7..0] 
        unsigned int    bitext                : 2   ; // [9..8] 
        unsigned int    trid_en               : 1   ; // [10] 
        unsigned int    trid_mode             : 1   ; // [11] 
        unsigned int    trid_src              : 1   ; // [12] 
        unsigned int    wrap_en               : 1   ; // [13] 
        unsigned int    Reserved_318          : 11  ; // [24..14] 
        unsigned int    decmp_en              : 1   ; // [25] 
        unsigned int    read_mode             : 1   ; // [26] 
        unsigned int    upd_mode              : 1   ; // [27] 
        unsigned int    mute_en               : 1   ; // [28] 
        unsigned int    gmm_en                : 1   ; // [29] 
        unsigned int    g1_sel_zme            : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CTRL;

// Define the union U_G1UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_320          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_G1STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_321          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1STRIDE;

// Define the union U_G1CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    palpha_range          : 1   ; // [8] 
        unsigned int    Reserved_323          : 1   ; // [9] 
        unsigned int    vedge_p               : 1   ; // [10] 
        unsigned int    hedge_p               : 1   ; // [11] 
        unsigned int    palpha_en             : 1   ; // [12] 
        unsigned int    premult_en            : 1   ; // [13] 
        unsigned int    key_en                : 1   ; // [14] 
        unsigned int    key_mode              : 1   ; // [15] 
        unsigned int    Reserved_322          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CBMPARA;

// Define the union U_G1CKEYMAX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_max              : 8   ; // [7..0] 
        unsigned int    keyg_max              : 8   ; // [15..8] 
        unsigned int    keyr_max              : 8   ; // [23..16] 
        unsigned int    va0                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CKEYMAX;

// Define the union U_G1CKEYMIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_min              : 8   ; // [7..0] 
        unsigned int    keyg_min              : 8   ; // [15..8] 
        unsigned int    keyr_min              : 8   ; // [23..16] 
        unsigned int    va1                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CKEYMIN;

// Define the union U_G1CMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    kmsk_b                : 8   ; // [7..0] 
        unsigned int    kmsk_g                : 8   ; // [15..8] 
        unsigned int    kmsk_r                : 8   ; // [23..16] 
        unsigned int    Reserved_324          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CMASK;

// Define the union U_G1IRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_325          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1IRESO;

// Define the union U_G1ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_326          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1ORESO;

// Define the union U_G1SFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    src_xfpos             : 7   ; // [6..0] 
        unsigned int    Reserved_327          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1SFPOS;

// Define the union U_G1DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_328          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1DFPOS;

// Define the union U_G1DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_329          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_G1WRAPTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; // [11..0] 
        unsigned int    Reserved_330          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1WRAPTHD;

// Define the union U_G1HSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hratio                : 16  ; // [15..0] 
        unsigned int    Reserved_333          : 3   ; // [18..16] 
        unsigned int    hfir_order            : 1   ; // [19] 
        unsigned int    Reserved_332          : 3   ; // [22..20] 
        unsigned int    hafir_en              : 1   ; // [23] 
        unsigned int    hfir_en               : 1   ; // [24] 
        unsigned int    Reserved_331          : 3   ; // [27..25] 
        unsigned int    hchmid_en             : 1   ; // [28] 
        unsigned int    hlmid_en              : 1   ; // [29] 
        unsigned int    hamid_en              : 1   ; // [30] 
        unsigned int    hsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1HSP;

// Define the union U_G1HOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hor_coffset           : 16  ; // [15..0] 
        unsigned int    hor_loffset           : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1HOFFSET;

// Define the union U_G1VSP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_336          : 23  ; // [22..0] 
        unsigned int    vafir_en              : 1   ; // [23] 
        unsigned int    vfir_en               : 1   ; // [24] 
        unsigned int    Reserved_335          : 2   ; // [26..25] 
        unsigned int    vsc_luma_tap          : 1   ; // [27] 
        unsigned int    vchmid_en             : 1   ; // [28] 
        unsigned int    vlmid_en              : 1   ; // [29] 
        unsigned int    vamid_en              : 1   ; // [30] 
        unsigned int    vsc_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1VSP;

// Define the union U_G1VSR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vratio                : 16  ; // [15..0] 
        unsigned int    Reserved_337          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1VSR;

// Define the union U_G1VOFFSET
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vbtm_offset           : 16  ; // [15..0] 
        unsigned int    vtp_offset            : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1VOFFSET;

// Define the union U_G1ZMEORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_338          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1ZMEORESO;

// Define the union U_G1ZMEIRESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_339          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1ZMEIRESO;

// Define the union U_G1CSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_340          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCIDC;

// Define the union U_G1CSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_342          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCODC;

// Define the union U_G1CSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_344          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_343          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP0;

// Define the union U_G1CSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_346          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_345          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP1;

// Define the union U_G1CSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_348          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_347          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP2;

// Define the union U_G1CSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_350          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_349          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP3;

// Define the union U_G1CSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_351          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP4;


// Define the union U_G2CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ifmt                  : 8   ; // [7..0] 
        unsigned int    bitext                : 2   ; // [9..8] 
        unsigned int    trid_en               : 1   ; // [10] 
        unsigned int    trid_mode             : 1   ; // [11] 
        unsigned int    Reserved_355          : 1   ; // [12] 
        unsigned int    zone2_en              : 1   ; // [13] 
        unsigned int    zone1_en              : 1   ; // [14] 
        unsigned int    Reserved_354          : 11  ; // [25..15] 
        unsigned int    read_mode             : 1   ; // [26] 
        unsigned int    upd_mode              : 1   ; // [27] 
        unsigned int    Reserved_353          : 1   ; // [28] 
        unsigned int    gmm_en                : 1   ; // [29] 
        unsigned int    Reserved_352          : 1   ; // [30] 
        unsigned int    surface_en            : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G2CTRL;

// Define the union U_G2UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_357          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_ZONE1STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_358          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE1STRIDE;

// Define the union U_G2CBMPARA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    galpha                : 8   ; // [7..0] 
        unsigned int    palpha_range          : 1   ; // [8] 
        unsigned int    Reserved_360          : 1   ; // [9] 
        unsigned int    vedge_p               : 1   ; // [10] 
        unsigned int    hedge_p               : 1   ; // [11] 
        unsigned int    palpha_en             : 1   ; // [12] 
        unsigned int    premult_en            : 1   ; // [13] 
        unsigned int    key_en                : 1   ; // [14] 
        unsigned int    key_mode              : 1   ; // [15] 
        unsigned int    mix_prio              : 1   ; // [16] 
        unsigned int    Reserved_359          : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G2CBMPARA;

// Define the union U_G2CKEYMAX
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_max              : 8   ; // [7..0] 
        unsigned int    keyg_max              : 8   ; // [15..8] 
        unsigned int    keyr_max              : 8   ; // [23..16] 
        unsigned int    va0                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G2CKEYMAX;

// Define the union U_G2CKEYMIN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    keyb_min              : 8   ; // [7..0] 
        unsigned int    keyg_min              : 8   ; // [15..8] 
        unsigned int    keyr_min              : 8   ; // [23..16] 
        unsigned int    va1                   : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G2CKEYMIN;

// Define the union U_G2CMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    kmsk_b                : 8   ; // [7..0] 
        unsigned int    kmsk_g                : 8   ; // [15..8] 
        unsigned int    kmsk_r                : 8   ; // [23..16] 
        unsigned int    Reserved_361          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G2CMASK;

// Define the union U_G2DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_362          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_ZONE2STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    surface_stride        : 16  ; // [15..0] 
        unsigned int    Reserved_364          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE2STRIDE;

// Define the union U_ZONE1FPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    zone_xfpos            : 7   ; // [6..0] 
        unsigned int    Reserved_365          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE1FPOS;

// Define the union U_ZONE2FPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    zone_xfpos            : 7   ; // [6..0] 
        unsigned int    Reserved_366          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE2FPOS;

// Define the union U_ZONE1RESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_367          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE1RESO;

// Define the union U_ZONE2RESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    iw                    : 12  ; // [11..0] 
        unsigned int    ih                    : 12  ; // [23..12] 
        unsigned int    Reserved_368          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE2RESO;

// Define the union U_ZONE1DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_369          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE1DFPOS;

// Define the union U_ZONE1DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_370          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE1DLPOS;

// Define the union U_ZONE2DFPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xfpos            : 12  ; // [11..0] 
        unsigned int    disp_yfpos            : 12  ; // [23..12] 
        unsigned int    Reserved_371          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE2DFPOS;

// Define the union U_ZONE2DLPOS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    disp_xlpos            : 12  ; // [11..0] 
        unsigned int    disp_ylpos            : 12  ; // [23..12] 
        unsigned int    Reserved_372          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_ZONE2DLPOS;

// Define the union U_WBC0CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    req_interval          : 10  ; // [9..0] 
        unsigned int    Reserved_375          : 2   ; // [11..10] 
        unsigned int    wbc0_dft              : 2   ; // [13..12] 
        unsigned int    Reserved_374          : 10  ; // [23..14] 
        unsigned int    dfp_sel               : 3   ; // [26..24] 
        unsigned int    wbc0_btm              : 1   ; // [27] 
        unsigned int    wrap_en               : 1   ; // [28] 
        unsigned int    Reserved_373          : 1   ; // [29] 
        unsigned int    wbc0_inter            : 1   ; // [30] 
        unsigned int    wbc0_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0CTRL;

// Define the union U_WBC0UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_377          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC0STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc0stride            : 16  ; // [15..0] 
        unsigned int    Reserved_378          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0STRIDE;

// Define the union U_WBC0ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_379          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0ORESO;

// Define the union U_WBC0FCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wfcrop                : 12  ; // [11..0] 
        unsigned int    hfcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_380          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0FCROP;

// Define the union U_WBC0LCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wlcrop                : 12  ; // [11..0] 
        unsigned int    hlcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_381          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC0LCROP;

// Define the union U_WBC0WRAPTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; // [11..0] 
        unsigned int    Reserved_382          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC2CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    req_interval          : 10  ; // [9..0] 
        unsigned int    Reserved_389          : 2   ; // [11..10] 
        unsigned int    wbc2_dft              : 2   ; // [13..12] 
        unsigned int    Reserved_388          : 9   ; // [22..14] 
        unsigned int    wbc2_mode_3d          : 1   ; // [23] 
        unsigned int    Reserved_387          : 3   ; // [26..24] 
        unsigned int    wbc2_btm              : 1   ; // [27] 
        unsigned int    wrap_en               : 1   ; // [28] 
        unsigned int    wbc2_cmp_mode         : 1   ; // [29] 
        unsigned int    wbc2_inter            : 1   ; // [30] 
        unsigned int    wbc2_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC2CTRL;

// Define the union U_WBC2UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_391          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC2STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc2stride            : 16  ; // [15..0] 
        unsigned int    Reserved_392          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC2STRIDE;

// Define the union U_WBC2ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_393          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC2ORESO;

// Define the union U_WBC2FCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wfcrop                : 12  ; // [11..0] 
        unsigned int    hfcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_394          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC2FCROP;

// Define the union U_WBC2LCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wlcrop                : 12  ; // [11..0] 
        unsigned int    hlcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_395          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC2WRAPTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wrap_line_thd         : 12  ; // [11..0] 
        unsigned int    Reserved_396          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC3CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    req_interval          : 10  ; // [9..0] 
        unsigned int    wbc3_wr_stop          : 1   ; // [10] 
        unsigned int    Reserved_400          : 1   ; // [11] 
        unsigned int    wbc3_dft              : 2   ; // [13..12] 
        unsigned int    Reserved_399          : 13  ; // [26..14] 
        unsigned int    wbc3_btm              : 1   ; // [27] 
        unsigned int    Reserved_398          : 1   ; // [28] 
        unsigned int    wbc3_cmp_mode         : 1   ; // [29] 
        unsigned int    wbc3_inter            : 1   ; // [30] 
        unsigned int    wbc3_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC3CTRL;

// Define the union U_WBC3UPD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    regup                 : 1   ; // [0] 
        unsigned int    Reserved_401          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC3STRIDE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wbc3stride            : 16  ; // [15..0] 
        unsigned int    Reserved_402          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC3STRIDE;

// Define the union U_WBC3ORESO
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ow                    : 12  ; // [11..0] 
        unsigned int    oh                    : 12  ; // [23..12] 
        unsigned int    Reserved_403          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC3ORESO;

// Define the union U_WBC3FCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wfcrop                : 12  ; // [11..0] 
        unsigned int    hfcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_404          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC3FCROP;

// Define the union U_WBC3LCROP
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wlcrop                : 12  ; // [11..0] 
        unsigned int    hlcrop                : 12  ; // [23..12] 
        unsigned int    Reserved_405          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the union U_WBC3STPLN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ar_stp_ln             : 12  ; // [11..0] 
        unsigned int    gb_stp_ln             : 12  ; // [23..12] 
        unsigned int    Reserved_406          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_WBC3STPLN;

// Define the union U_CBMBKG1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cbm_bkgcr1            : 8   ; // [7..0] 
        unsigned int    cbm_bkgcb1            : 8   ; // [15..8] 
        unsigned int    cbm_bkgy1             : 8   ; // [23..16] 
        unsigned int    Reserved_408          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMBKG1;

// Define the union U_CBMBKG2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cbm_bkgcr2            : 8   ; // [7..0] 
        unsigned int    cbm_bkgcb2            : 8   ; // [15..8] 
        unsigned int    cbm_bkgy2             : 8   ; // [23..16] 
        unsigned int    Reserved_410          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMBKG2;

// Define the union U_CBMBKGV
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cbm_bkgcr_v           : 8   ; // [7..0] 
        unsigned int    cbm_bkgcb_v           : 8   ; // [15..8] 
        unsigned int    cbm_bkgy_v            : 8   ; // [23..16] 
        unsigned int    Reserved_411          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMBKGV;

// Define the union U_CBMATTR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    sur_attr0             : 1   ; // [0] 
        unsigned int    sur_attr1             : 1   ; // [1] 
        unsigned int    Reserved_412          : 30  ; // [31..2] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMATTR;

// Define the union U_CBMMIX1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 3   ; // [2..0] 
        unsigned int    mixer_prio1           : 3   ; // [5..3] 
        unsigned int    mixer_prio2           : 3   ; // [8..6] 
        unsigned int    mixer_prio3           : 3   ; // [11..9] 
        unsigned int    mixer_prio4           : 3   ; // [14..12] 
        unsigned int    Reserved_414          : 3   ; // [17..15] 
        unsigned int    bk_v_alpha_sel        : 1   ; // [18] 
        unsigned int    mixer_v_en            : 1   ; // [19] 

        unsigned int    Reserved_413          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMMIX1;

// Define the union U_CBMMIX2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    mixer_prio0           : 3   ; // [2..0] 
        unsigned int    mixer_prio1           : 3   ; // [5..3] 
        unsigned int    mixer_prio2           : 3   ; // [8..6] 
        unsigned int    Reserved_415          : 23  ; // [31..9] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMMIX2;

// Define the union U_DHDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    intfdm                : 4   ; // [3..0] 
        unsigned int    intfb                 : 2   ; // [5..4] 
        unsigned int    synm                  : 1   ; // [6] 
        unsigned int    iop                   : 1   ; // [7] 
        unsigned int    ivs                   : 1   ; // [8] 
        unsigned int    ihs                   : 1   ; // [9] 
        unsigned int    idv                   : 1   ; // [10] 
        unsigned int    Reserved_419          : 2   ; // [12..11] 
        unsigned int    gmmmode               : 1   ; // [13] 
        unsigned int    gmmen                 : 1   ; // [14] 
        unsigned int    Reserved_418          : 1   ; // [15] 
        unsigned int    clipen                : 1   ; // [16] 
        unsigned int    Reserved_417          : 3   ; // [19..17] 
        unsigned int    fpga_lmt_width        : 7   ; // [26..20] 
        unsigned int    fpga_lmt_en           : 1   ; // [27] 
        unsigned int    Reserved_416          : 3   ; // [30..28] 
        unsigned int    intf_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCTRL;

// Define the union U_DHDVSYNC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vact                  : 12  ; // [11..0] 
        unsigned int    vbb                   : 8   ; // [19..12] 
        unsigned int    vfb                   : 8   ; // [27..20] 
        unsigned int    Reserved_421          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDVSYNC;

// Define the union U_DHDHSYNC1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hact                  : 16  ; // [15..0] 
        unsigned int    hbb                   : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDHSYNC1;

// Define the union U_DHDHSYNC2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hfb                   : 16  ; // [15..0] 
        unsigned int    hmid                  : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDHSYNC2;

// Define the union U_DHDVPLUS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bvact                 : 12  ; // [11..0] 
        unsigned int    bvbb                  : 8   ; // [19..12] 
        unsigned int    bvfb                  : 8   ; // [27..20] 
        unsigned int    Reserved_422          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDVPLUS;

// Define the union U_DHDPWR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hpw                   : 16  ; // [15..0] 
        unsigned int    vpw                   : 8   ; // [23..16] 
        unsigned int    Reserved_423          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDPWR;

// Define the union U_DHDVTTHD3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd3              : 13  ; // [12..0] 
        unsigned int    Reserved_425          : 2   ; // [14..13] 
        unsigned int    thd3_mode             : 1   ; // [15] 
        unsigned int    vtmgthd4              : 13  ; // [28..16] 
        unsigned int    Reserved_424          : 2   ; // [30..29] 
        unsigned int    thd4_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDVTTHD3;

// Define the union U_DHDVTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd1              : 13  ; // [12..0] 
        unsigned int    Reserved_427          : 2   ; // [14..13] 
        unsigned int    thd1_mode             : 1   ; // [15] 
        unsigned int    vtmgthd2              : 13  ; // [28..16] 
        unsigned int    Reserved_426          : 2   ; // [30..29] 
        unsigned int    thd2_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDVTTHD;

// Define the union U_DHDCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_428          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCIDC;

// Define the union U_DHDCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_429          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCODC;

// Define the union U_DHDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_431          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_430          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP0;

// Define the union U_DHDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_433          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_432          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP1;

// Define the union U_DHDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_435          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_434          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP2;

// Define the union U_DHDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_437          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_436          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP3;

// Define the union U_DHDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_438          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP4;

// Define the union U_DHDCLIPL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clipcl0               : 10  ; // [9..0] 
        unsigned int    clipcl1               : 10  ; // [19..10] 
        unsigned int    clipcl2               : 10  ; // [29..20] 
        unsigned int    Reserved_439          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCLIPL;

// Define the union U_DHDCLIPH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clipch0               : 10  ; // [9..0] 
        unsigned int    clipch1               : 10  ; // [19..10] 
        unsigned int    clipch2               : 10  ; // [29..20] 
        unsigned int    Reserved_441          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCLIPH;

// Define the union U_DHDUFWTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd_ufw_thd           : 8   ; // [7..0] 
        unsigned int    Reserved_442          : 24  ; // [31..8] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDUFWTHD;

// Define the union U_DHDSTATHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dhd_start_thd         : 6   ; // [5..0] 
        unsigned int    Reserved_444          : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDSTATHD;

// Define the union U_HDMI_CSC_IDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 11  ; // [10..0] 
        unsigned int    cscidc1               : 11  ; // [21..11] 
        unsigned int    csc_en                : 1   ; // [22] 
        unsigned int    Reserved_445          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_IDC;

// Define the union U_HDMI_CSC_ODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 11  ; // [10..0] 
        unsigned int    cscodc1               : 11  ; // [21..11] 
        unsigned int    csc_sign_mode         : 1   ; // [22] 
        unsigned int    Reserved_447          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_ODC;

// Define the union U_HDMI_CSC_IODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc2               : 11  ; // [10..0] 
        unsigned int    cscodc2               : 11  ; // [21..11] 
        unsigned int    Reserved_448          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_IODC;

// Define the union U_HDMI_CSC_P0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_450          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_449          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_P0;

// Define the union U_HDMI_CSC_P1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_452          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_451          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_P1;

// Define the union U_HDMI_CSC_P2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_454          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_453          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_P2;

// Define the union U_HDMI_CSC_P3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_456          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_455          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_P3;

// Define the union U_HDMI_CSC_P4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_457          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDMI_CSC_P4;

// Define the union U_HDMI_CHECKSUM_Y
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_y_sum              : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDMI_CHECKSUM_Y;
// Define the union U_HDMI_CHECKSUM_CB
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_cb_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDMI_CHECKSUM_CB;
// Define the union U_HDMI_CHECKSUM_CR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int hdmi_cr_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDMI_CHECKSUM_CR;
// Define the union U_DHD_CHECKSUM_Y
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_y_sum              : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD_CHECKSUM_Y;
// Define the union U_DHD_CHECKSUM_CB
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_cb_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD_CHECKSUM_CB;
// Define the union U_DHD_CHECKSUM_CR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_cr_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DHD_CHECKSUM_CR;
// Define the union U_DHDSTATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vback_blank           : 1   ; // [0] 
        unsigned int    vblank                : 1   ; // [1] 
        unsigned int    bottom_field          : 1   ; // [2] 
        unsigned int    current_pos           : 13  ; // [15..3] 
        unsigned int    Reserved_460          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDSTATE;

// Define the union U_DSDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    intfdm                : 4   ; // [3..0] 
        unsigned int    intfb                 : 2   ; // [5..4] 
        unsigned int    synm                  : 1   ; // [6] 
        unsigned int    iop                   : 1   ; // [7] 
        unsigned int    ivs                   : 1   ; // [8] 
        unsigned int    ihs                   : 1   ; // [9] 
        unsigned int    idv                   : 1   ; // [10] 
        unsigned int    Reserved_464          : 5   ; // [15..11] 
        unsigned int    clipen                : 1   ; // [16] 
        unsigned int    Reserved_463          : 2   ; // [18..17] 
        unsigned int    trigger_en            : 1   ; // [19] 
        unsigned int    Reserved_462          : 10  ; // [29..20] 
        unsigned int    dhd_syc_en            : 1   ; // [30] 
        unsigned int    intf_en               : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCTRL;

// Define the union U_DSDVSYNC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vact                  : 12  ; // [11..0] 
        unsigned int    vbb                   : 8   ; // [19..12] 
        unsigned int    vfb                   : 8   ; // [27..20] 
        unsigned int    Reserved_466          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDVSYNC;

// Define the union U_DSDHSYNC1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hact                  : 16  ; // [15..0] 
        unsigned int    hbb                   : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDHSYNC1;

// Define the union U_DSDHSYNC2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hfb                   : 16  ; // [15..0] 
        unsigned int    Reserved_467          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDHSYNC2;

// Define the union U_DSDVPLUS
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    bvact                 : 12  ; // [11..0] 
        unsigned int    bvbb                  : 8   ; // [19..12] 
        unsigned int    bvfb                  : 8   ; // [27..20] 
        unsigned int    Reserved_468          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDVPLUS;

// Define the union U_DSDPWR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hpw                   : 16  ; // [15..0] 
        unsigned int    vpw                   : 8   ; // [23..16] 
        unsigned int    Reserved_469          : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDPWR;

// Define the union U_DSDVTTHD3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd3              : 13  ; // [12..0] 
        unsigned int    Reserved_471          : 2   ; // [14..13] 
        unsigned int    thd3_mode             : 1   ; // [15] 
        unsigned int    Reserved_470          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDVTTHD3;

// Define the union U_DSDVTTHD
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vtmgthd1              : 13  ; // [12..0] 
        unsigned int    Reserved_473          : 2   ; // [14..13] 
        unsigned int    thd1_mode             : 1   ; // [15] 
        unsigned int    vtmgthd2              : 13  ; // [28..16] 
        unsigned int    Reserved_472          : 2   ; // [30..29] 
        unsigned int    thd2_mode             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDVTTHD;

// Define the union U_DSDCSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0] 
        unsigned int    cscidc1               : 9   ; // [17..9] 
        unsigned int    cscidc2               : 9   ; // [26..18] 
        unsigned int    csc_en                : 1   ; // [27] 
        unsigned int    Reserved_474          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCIDC;

// Define the union U_DSDCSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0] 
        unsigned int    cscodc1               : 9   ; // [17..9] 
        unsigned int    cscodc2               : 9   ; // [26..18] 
        unsigned int    Reserved_475          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCODC;

// Define the union U_DSDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 15  ; // [14..0] 
        unsigned int    Reserved_477          : 1   ; // [15] 
        unsigned int    cscp01                : 15  ; // [30..16] 
        unsigned int    Reserved_476          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP0;

// Define the union U_DSDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 15  ; // [14..0] 
        unsigned int    Reserved_479          : 1   ; // [15] 
        unsigned int    cscp10                : 15  ; // [30..16] 
        unsigned int    Reserved_478          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP1;

// Define the union U_DSDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 15  ; // [14..0] 
        unsigned int    Reserved_481          : 1   ; // [15] 
        unsigned int    cscp12                : 15  ; // [30..16] 
        unsigned int    Reserved_480          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP2;

// Define the union U_DSDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 15  ; // [14..0] 
        unsigned int    Reserved_483          : 1   ; // [15] 
        unsigned int    cscp21                : 15  ; // [30..16] 
        unsigned int    Reserved_482          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP3;

// Define the union U_DSDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 15  ; // [14..0] 
        unsigned int    Reserved_484          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP4;

// Define the union U_DSDCLIPL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clipcl0               : 10  ; // [9..0] 
        unsigned int    clipcl1               : 10  ; // [19..10] 
        unsigned int    clipcl2               : 10  ; // [29..20] 
        unsigned int    Reserved_485          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCLIPL;

// Define the union U_DSDCLIPH
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    clipch0               : 10  ; // [9..0] 
        unsigned int    clipch1               : 10  ; // [19..10] 
        unsigned int    clipch2               : 10  ; // [29..20] 
        unsigned int    Reserved_487          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCLIPH;

// Define the union U_DSDFRMTHD
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int frm_sync_thd            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DSDFRMTHD;
// Define the union U_DSD_CHECKSUM_Y
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_y_sum              : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DSD_CHECKSUM_Y;
// Define the union U_DSD_CHECKSUM_CB
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_cb_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DSD_CHECKSUM_CB;
// Define the union U_DSD_CHECKSUM_CR
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int date_cr_sum             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DSD_CHECKSUM_CR;
// Define the union U_DSDSTATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vback_blank           : 1   ; // [0] 
        unsigned int    vblank                : 1   ; // [1] 
        unsigned int    bottom_field          : 1   ; // [2] 
        unsigned int    current_pos           : 13  ; // [15..3]
        unsigned int    Reserved_490          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
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
// Define the union U_HDATE_EN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hd_en                 : 1   ; // [0] 
        unsigned int    Reserved_493          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_EN;

// Define the union U_HDATE_POLA_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hsync_in_pola         : 1   ; // [0] 
        unsigned int    vsync_in_pola         : 1   ; // [1] 
        unsigned int    fid_in_pola           : 1   ; // [2] 
        unsigned int    hsync_out_pola        : 1   ; // [3] 
        unsigned int    vsync_out_pola        : 1   ; // [4] 
        unsigned int    fid_out_pola          : 1   ; // [5] 
        unsigned int    Reserved_494          : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_POLA_CTRL;

// Define the union U_HDATE_VIDEO_FORMAT
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_ft              : 4   ; // [3..0] 
        unsigned int    sync_add_ctrl         : 3   ; // [6..4] 
        unsigned int    video_out_ctrl        : 2   ; // [8..7] 
        unsigned int    csc_ctrl              : 3   ; // [11..9] 
        unsigned int    Reserved_495          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_VIDEO_FORMAT;

// Define the union U_HDATE_STATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    line_len              : 13  ; // [12..0] 
        unsigned int    Reserved_498          : 3   ; // [15..13] 
        unsigned int    frame_len             : 11  ; // [26..16] 
        unsigned int    Reserved_497          : 1   ; // [27] 
        unsigned int    mv_en_pin             : 1   ; // [28] 
        unsigned int    Reserved_496          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_STATE;

// Define the union U_HDATE_OUT_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vsync_sel             : 2   ; // [1..0] 
        unsigned int    hsync_sel             : 2   ; // [3..2] 
        unsigned int    video3_sel            : 2   ; // [5..4] 
        unsigned int    video2_sel            : 2   ; // [7..6] 
        unsigned int    video1_sel            : 2   ; // [9..8] 
        unsigned int    src_ctrl              : 2   ; // [11..10] 
        unsigned int    sync_lpf_en           : 1   ; // [12] 
        unsigned int    sd_sel                : 1   ; // [13] 
        unsigned int    Reserved_499          : 18  ; // [31..14] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_OUT_CTRL;

// Define the union U_HDATE_SRC_13_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap1_1           : 11  ; // [10..0] 
        unsigned int    Reserved_501          : 5   ; // [15..11] 
        unsigned int    coef_tap1_3           : 11  ; // [26..16] 
        unsigned int    Reserved_500          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF1;

// Define the union U_HDATE_SRC_13_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap2_1           : 11  ; // [10..0] 
        unsigned int    Reserved_503          : 5   ; // [15..11] 
        unsigned int    coef_tap2_3           : 11  ; // [26..16] 
        unsigned int    Reserved_502          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF2;

// Define the union U_HDATE_SRC_13_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap3_1           : 11  ; // [10..0] 
        unsigned int    Reserved_505          : 5   ; // [15..11] 
        unsigned int    coef_tap3_3           : 11  ; // [26..16] 
        unsigned int    Reserved_504          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF3;

// Define the union U_HDATE_SRC_13_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap4_1           : 11  ; // [10..0] 
        unsigned int    Reserved_507          : 5   ; // [15..11] 
        unsigned int    coef_tap4_3           : 11  ; // [26..16] 
        unsigned int    Reserved_506          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF4;

// Define the union U_HDATE_SRC_13_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap5_1           : 11  ; // [10..0] 
        unsigned int    Reserved_509          : 5   ; // [15..11] 
        unsigned int    coef_tap5_3           : 11  ; // [26..16] 
        unsigned int    Reserved_508          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF5;

// Define the union U_HDATE_SRC_13_COEF6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap6_1           : 11  ; // [10..0] 
        unsigned int    Reserved_511          : 5   ; // [15..11] 
        unsigned int    coef_tap6_3           : 11  ; // [26..16] 
        unsigned int    Reserved_510          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF6;

// Define the union U_HDATE_SRC_13_COEF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap7_1           : 11  ; // [10..0] 
        unsigned int    Reserved_513          : 5   ; // [15..11] 
        unsigned int    coef_tap7_3           : 11  ; // [26..16] 
        unsigned int    Reserved_512          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF7;

// Define the union U_HDATE_SRC_13_COEF8
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap8_1           : 11  ; // [10..0] 
        unsigned int    Reserved_515          : 5   ; // [15..11] 
        unsigned int    coef_tap8_3           : 11  ; // [26..16] 
        unsigned int    Reserved_514          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF8;

// Define the union U_HDATE_SRC_13_COEF9
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap9_1           : 11  ; // [10..0] 
        unsigned int    Reserved_517          : 5   ; // [15..11] 
        unsigned int    coef_tap9_3           : 11  ; // [26..16] 
        unsigned int    Reserved_516          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF9;

// Define the union U_HDATE_SRC_13_COEF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap10_1          : 11  ; // [10..0] 
        unsigned int    Reserved_519          : 5   ; // [15..11] 
        unsigned int    coef_tap10_3          : 11  ; // [26..16] 
        unsigned int    Reserved_518          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF10;

// Define the union U_HDATE_SRC_13_COEF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap11_1          : 11  ; // [10..0] 
        unsigned int    Reserved_521          : 5   ; // [15..11] 
        unsigned int    coef_tap11_3          : 11  ; // [26..16] 
        unsigned int    Reserved_520          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF11;

// Define the union U_HDATE_SRC_13_COEF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap12_1          : 11  ; // [10..0] 
        unsigned int    Reserved_523          : 5   ; // [15..11] 
        unsigned int    coef_tap12_3          : 11  ; // [26..16] 
        unsigned int    Reserved_522          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF12;

// Define the union U_HDATE_SRC_13_COEF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap13_1          : 11  ; // [10..0] 
        unsigned int    Reserved_525          : 5   ; // [15..11] 
        unsigned int    coef_tap13_3          : 11  ; // [26..16] 
        unsigned int    Reserved_524          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF13;

// Define the union U_HDATE_SRC_24_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap1_2           : 11  ; // [10..0] 
        unsigned int    Reserved_527          : 5   ; // [15..11] 
        unsigned int    coef_tap1_4           : 11  ; // [26..16] 
        unsigned int    Reserved_526          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF1;

// Define the union U_HDATE_SRC_24_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap2_2           : 11  ; // [10..0] 
        unsigned int    Reserved_529          : 5   ; // [15..11] 
        unsigned int    coef_tap2_4           : 11  ; // [26..16] 
        unsigned int    Reserved_528          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF2;

// Define the union U_HDATE_SRC_24_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap3_2           : 11  ; // [10..0] 
        unsigned int    Reserved_531          : 5   ; // [15..11] 
        unsigned int    coef_tap3_4           : 11  ; // [26..16] 
        unsigned int    Reserved_530          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF3;

// Define the union U_HDATE_SRC_24_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap4_2           : 11  ; // [10..0] 
        unsigned int    Reserved_533          : 5   ; // [15..11] 
        unsigned int    coef_tap4_4           : 11  ; // [26..16] 
        unsigned int    Reserved_532          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF4;

// Define the union U_HDATE_SRC_24_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap5_2           : 11  ; // [10..0] 
        unsigned int    Reserved_535          : 5   ; // [15..11] 
        unsigned int    coef_tap5_4           : 11  ; // [26..16] 
        unsigned int    Reserved_534          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF5;

// Define the union U_HDATE_SRC_24_COEF6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap6_2           : 11  ; // [10..0] 
        unsigned int    Reserved_537          : 5   ; // [15..11] 
        unsigned int    coef_tap6_4           : 11  ; // [26..16] 
        unsigned int    Reserved_536          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF6;

// Define the union U_HDATE_SRC_24_COEF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap7_2           : 11  ; // [10..0] 
        unsigned int    Reserved_539          : 5   ; // [15..11] 
        unsigned int    coef_tap7_4           : 11  ; // [26..16] 
        unsigned int    Reserved_538          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF7;

// Define the union U_HDATE_SRC_24_COEF8
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap8_2           : 11  ; // [10..0] 
        unsigned int    Reserved_541          : 5   ; // [15..11] 
        unsigned int    coef_tap8_4           : 11  ; // [26..16] 
        unsigned int    Reserved_540          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF8;

// Define the union U_HDATE_SRC_24_COEF9
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap9_2           : 11  ; // [10..0] 
        unsigned int    Reserved_543          : 5   ; // [15..11] 
        unsigned int    coef_tap9_4           : 11  ; // [26..16] 
        unsigned int    Reserved_542          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF9;

// Define the union U_HDATE_SRC_24_COEF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap10_2          : 11  ; // [10..0] 
        unsigned int    Reserved_545          : 5   ; // [15..11] 
        unsigned int    coef_tap10_4          : 11  ; // [26..16] 
        unsigned int    Reserved_544          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF10;

// Define the union U_HDATE_SRC_24_COEF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap11_2          : 11  ; // [10..0] 
        unsigned int    Reserved_547          : 5   ; // [15..11] 
        unsigned int    coef_tap11_4          : 11  ; // [26..16] 
        unsigned int    Reserved_546          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF11;

// Define the union U_HDATE_SRC_24_COEF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap12_2          : 11  ; // [10..0] 
        unsigned int    Reserved_549          : 5   ; // [15..11] 
        unsigned int    coef_tap12_4          : 11  ; // [26..16] 
        unsigned int    Reserved_548          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF12;

// Define the union U_HDATE_SRC_24_COEF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap13_2          : 11  ; // [10..0] 
        unsigned int    Reserved_551          : 5   ; // [15..11] 
        unsigned int    coef_tap13_4          : 11  ; // [26..16] 
        unsigned int    Reserved_550          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF13;

// Define the union U_HDATE_CSC_COEF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_r_y          : 12  ; // [11..0] 
        unsigned int    Reserved_553          : 4   ; // [15..12] 
        unsigned int    csc_coef_r_cb         : 12  ; // [27..16] 
        unsigned int    Reserved_552          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF1;

// Define the union U_HDATE_CSC_COEF2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_r_cr         : 12  ; // [11..0] 
        unsigned int    Reserved_555          : 4   ; // [15..12] 
        unsigned int    csc_coef_g_y          : 12  ; // [27..16] 
        unsigned int    Reserved_554          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF2;

// Define the union U_HDATE_CSC_COEF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_g_cb         : 12  ; // [11..0] 
        unsigned int    Reserved_557          : 4   ; // [15..12] 
        unsigned int    csc_coef_g_cr         : 12  ; // [27..16] 
        unsigned int    Reserved_556          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF3;

// Define the union U_HDATE_CSC_COEF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_b_y          : 12  ; // [11..0] 
        unsigned int    Reserved_559          : 4   ; // [15..12] 
        unsigned int    csc_coef_b_cb         : 12  ; // [27..16] 
        unsigned int    Reserved_558          : 4   ; // [31..28] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF4;

// Define the union U_HDATE_CSC_COEF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_coef_b_cr         : 12  ; // [11..0] 
        unsigned int    Reserved_560          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_COEF5;

// Define the union U_HDATE_SRC_EN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    src_round_en          : 1   ; // [0] 
        unsigned int    Reserved_561          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_EN;

// Define the union U_HDATE_CSC_EN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    csc_round_en          : 1   ; // [0] 
        unsigned int    Reserved_562          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CSC_EN;

// Define the union U_HDATE_TEST
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    test_data             : 10  ; // [9..0] 
        unsigned int    Reserved_563          : 22  ; // [31..10] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_TEST;

// Define the union U_HDATE_VBI_CTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cgmsb_add_en          : 1   ; // [0] 
        unsigned int    cgmsa_add_en          : 1   ; // [1] 
        unsigned int    mv_en                 : 1   ; // [2] 
        unsigned int    vbi_lpf_en            : 1   ; // [3] 
        unsigned int    Reserved_565          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_VBI_CTRL;

// Define the union U_HDATE_CGMSA_DATA
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cgmsa_data            : 20  ; // [19..0] 
        unsigned int    Reserved_566          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CGMSA_DATA;

// Define the union U_HDATE_CGMSB_H
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hdate_cgmsb_h         : 6   ; // [5..0] 
        unsigned int    Reserved_567          : 26  ; // [31..6] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_CGMSB_H;

// Define the union U_HDATE_CGMSB_DATA1
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data1             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA1;
// Define the union U_HDATE_CGMSB_DATA2
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data2             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA2;
// Define the union U_HDATE_CGMSB_DATA3
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data3             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA3;
// Define the union U_HDATE_CGMSB_DATA4
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cgmsb_data4             : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_HDATE_CGMSB_DATA4;
// Define the union U_HDATE_DACDET1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vdac_det_high         : 10  ; // [9..0] 
        unsigned int    Reserved_569          : 6   ; // [15..10] 
        unsigned int    det_line              : 10  ; // [25..16] 
        unsigned int    Reserved_568          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_DACDET1;

// Define the union U_HDATE_DACDET2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; // [10..0] 
        unsigned int    Reserved_571          : 5   ; // [15..11] 
        unsigned int    det_pixel_wid         : 11  ; // [26..16] 
        unsigned int    Reserved_570          : 4   ; // [30..27] 
        unsigned int    vdac_det_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_DACDET2;

// Define the union U_HDATE_SRC_13_COEF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap14_1          : 11  ; // [10..0] 
        unsigned int    Reserved_573          : 5   ; // [15..11] 
        unsigned int    coef_tap14_3          : 11  ; // [26..16] 
        unsigned int    Reserved_572          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF14;

// Define the union U_HDATE_SRC_13_COEF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap15_1          : 11  ; // [10..0] 
        unsigned int    Reserved_575          : 5   ; // [15..11] 
        unsigned int    coef_tap15_3          : 11  ; // [26..16] 
        unsigned int    Reserved_574          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF15;

// Define the union U_HDATE_SRC_13_COEF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap16_1          : 11  ; // [10..0] 
        unsigned int    Reserved_577          : 5   ; // [15..11] 
        unsigned int    coef_tap16_3          : 11  ; // [26..16] 
        unsigned int    Reserved_576          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF16;

// Define the union U_HDATE_SRC_13_COEF17
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap17_1          : 11  ; // [10..0] 
        unsigned int    Reserved_579          : 5   ; // [15..11] 
        unsigned int    coef_tap17_3          : 11  ; // [26..16] 
        unsigned int    Reserved_578          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF17;

// Define the union U_HDATE_SRC_13_COEF18
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap18_1          : 11  ; // [10..0] 
        unsigned int    Reserved_581          : 5   ; // [15..11] 
        unsigned int    coef_tap18_3          : 11  ; // [26..16] 
        unsigned int    Reserved_580          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_13_COEF18;

// Define the union U_HDATE_SRC_24_COEF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap14_2          : 11  ; // [10..0] 
        unsigned int    Reserved_583          : 5   ; // [15..11] 
        unsigned int    coef_tap14_4          : 11  ; // [26..16] 
        unsigned int    Reserved_582          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF14;

// Define the union U_HDATE_SRC_24_COEF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap15_2          : 11  ; // [10..0] 
        unsigned int    Reserved_585          : 5   ; // [15..11] 
        unsigned int    coef_tap15_4          : 11  ; // [26..16] 
        unsigned int    Reserved_584          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF15;

// Define the union U_HDATE_SRC_24_COEF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap16_2          : 11  ; // [10..0] 
        unsigned int    Reserved_587          : 5   ; // [15..11] 
        unsigned int    coef_tap16_4          : 11  ; // [26..16] 
        unsigned int    Reserved_586          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF16;

// Define the union U_HDATE_SRC_24_COEF17
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap17_2          : 11  ; // [10..0] 
        unsigned int    Reserved_589          : 5   ; // [15..11] 
        unsigned int    coef_tap17_4          : 11  ; // [26..16] 
        unsigned int    Reserved_588          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF17;

// Define the union U_HDATE_SRC_24_COEF18
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_tap18_2          : 11  ; // [10..0] 
        unsigned int    Reserved_591          : 5   ; // [15..11] 
        unsigned int    coef_tap18_4          : 11  ; // [26..16] 
        unsigned int    Reserved_590          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_HDATE_SRC_24_COEF18;

// Define the union U_DATE_COEFF0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_seq                : 1   ; // [0] 
        unsigned int    chgain_en             : 1   ; // [1] 
        unsigned int    sylp_en               : 1   ; // [2] 
        unsigned int    chlp_en               : 1   ; // [3] 
        unsigned int    oversam2_en           : 1   ; // [4] 
        unsigned int    lunt_en               : 1   ; // [5] 
        unsigned int    oversam_en            : 2   ; // [7..6] 
        unsigned int    Reserved_593          : 1   ; // [8] 
        unsigned int    luma_dl               : 4   ; // [12..9] 
        unsigned int    agc_amp_sel           : 1   ; // [13] 
        unsigned int    length_sel            : 1   ; // [14] 
        unsigned int    sync_mode_scart       : 1   ; // [15] 
        unsigned int    sync_mode_sel         : 2   ; // [17..16] 
        unsigned int    style_sel             : 4   ; // [21..18] 
        unsigned int    fm_sel                : 1   ; // [22] 
        unsigned int    vbi_lpf_en            : 1   ; // [23] 
        unsigned int    rgb_en                : 1   ; // [24] 
        unsigned int    scanline              : 1   ; // [25] 
        unsigned int    pbpr_lpf_en           : 1   ; // [26] 
        unsigned int    pal_half_en           : 1   ; // [27] 
        unsigned int    Reserved_592          : 1   ; // [28] 
        unsigned int    dis_ire               : 1   ; // [29] 
        unsigned int    clpf_sel              : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF0;

// Define the union U_DATE_COEFF1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac_test              : 10  ; // [9..0] 
        unsigned int    date_test_mode        : 2   ; // [11..10] 
        unsigned int    date_test_en          : 1   ; // [12] 
        unsigned int    amp_outside           : 10  ; // [22..13] 
        unsigned int    c_limit_en            : 1   ; // [23] 
        unsigned int    cc_seq                : 1   ; // [24] 
        unsigned int    cgms_seq              : 1   ; // [25] 
        unsigned int    vps_seq               : 1   ; // [26] 
        unsigned int    wss_seq               : 1   ; // [27] 
        unsigned int    cvbs_limit_en         : 1   ; // [28] 
        unsigned int    c_gain                : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
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
// Define the union U_DATE_COEFF3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef03                : 26  ; // [25..0] 
        unsigned int    Reserved_595          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF3;

// Define the union U_DATE_COEFF4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef04                : 30  ; // [29..0] 
        unsigned int    Reserved_596          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF4;

// Define the union U_DATE_COEFF5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef05                : 29  ; // [28..0] 
        unsigned int    Reserved_597          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF5;

// Define the union U_DATE_COEFF6
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef06_1              : 23  ; // [22..0] 
        unsigned int    Reserved_598          : 8   ; // [30..23] 
        unsigned int    coef06_0              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF6;

// Define the union U_DATE_COEFF7
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt07_enf2             : 1   ; // [0] 
        unsigned int    tt08_enf2             : 1   ; // [1] 
        unsigned int    tt09_enf2             : 1   ; // [2] 
        unsigned int    tt10_enf2             : 1   ; // [3] 
        unsigned int    tt11_enf2             : 1   ; // [4] 
        unsigned int    tt12_enf2             : 1   ; // [5] 
        unsigned int    tt13_enf2             : 1   ; // [6] 
        unsigned int    tt14_enf2             : 1   ; // [7] 
        unsigned int    tt15_enf2             : 1   ; // [8] 
        unsigned int    tt16_enf2             : 1   ; // [9] 
        unsigned int    tt17_enf2             : 1   ; // [10] 
        unsigned int    tt18_enf2             : 1   ; // [11] 
        unsigned int    tt19_enf2             : 1   ; // [12] 
        unsigned int    tt20_enf2             : 1   ; // [13] 
        unsigned int    tt21_enf2             : 1   ; // [14] 
        unsigned int    tt22_enf2             : 1   ; // [15] 
        unsigned int    tt07_enf1             : 1   ; // [16] 
        unsigned int    tt08_enf1             : 1   ; // [17] 
        unsigned int    tt09_enf1             : 1   ; // [18] 
        unsigned int    tt10_enf1             : 1   ; // [19] 
        unsigned int    tt11_enf1             : 1   ; // [20] 
        unsigned int    tt12_enf1             : 1   ; // [21] 
        unsigned int    tt13_enf1             : 1   ; // [22] 
        unsigned int    tt14_enf1             : 1   ; // [23] 
        unsigned int    tt15_enf1             : 1   ; // [24] 
        unsigned int    tt16_enf1             : 1   ; // [25] 
        unsigned int    tt17_enf1             : 1   ; // [26] 
        unsigned int    tt18_enf1             : 1   ; // [27] 
        unsigned int    tt19_enf1             : 1   ; // [28] 
        unsigned int    tt20_enf1             : 1   ; // [29] 
        unsigned int    tt21_enf1             : 1   ; // [30] 
        unsigned int    tt22_enf1             : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF7;

// Define the union U_DATE_COEFF8
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int tt_staddr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF8;
// Define the union U_DATE_COEFF9
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int tt_edaddr               : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF9;
// Define the union U_DATE_COEFF10
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_pktoff             : 8   ; // [7..0] 
        unsigned int    tt_mode               : 2   ; // [9..8] 
        unsigned int    tt_highest            : 1   ; // [10] 
        unsigned int    full_page             : 1   ; // [11] 
        unsigned int    nabts_100ire          : 1   ; // [12] 
        unsigned int    Reserved_599          : 18  ; // [30..13] 
        unsigned int    tt_ready              : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF10;

// Define the union U_DATE_COEFF11
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    date_clf2             : 10  ; // [9..0] 
        unsigned int    date_clf1             : 10  ; // [19..10] 
        unsigned int    cc_enf2               : 1   ; // [20] 
        unsigned int    cc_enf1               : 1   ; // [21] 
        unsigned int    Reserved_600          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF11;

// Define the union U_DATE_COEFF12
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cc_f2data             : 16  ; // [15..0] 
        unsigned int    cc_f1data             : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF12;

// Define the union U_DATE_COEFF13
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cg_f1data             : 20  ; // [19..0] 
        unsigned int    cg_enf2               : 1   ; // [20] 
        unsigned int    cg_enf1               : 1   ; // [21] 
        unsigned int    Reserved_601          : 10  ; // [31..22] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF13;

// Define the union U_DATE_COEFF14
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cg_f2data             : 20  ; // [19..0] 
        unsigned int    Reserved_602          : 12  ; // [31..20] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF14;

// Define the union U_DATE_COEFF15
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wss_data              : 14  ; // [13..0] 
        unsigned int    wss_en                : 1   ; // [14] 
        unsigned int    Reserved_603          : 17  ; // [31..15] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF15;

// Define the union U_DATE_COEFF16
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vps_data              : 24  ; // [23..0] 
        unsigned int    vps_en                : 1   ; // [24] 
        unsigned int    Reserved_604          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF16;

// Define the union U_DATE_COEFF17
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vps_data                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF17;
// Define the union U_DATE_COEFF18
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int vps_data                : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF18;
// Define the union U_DATE_COEFF19
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vps_data              : 16  ; // [15..0] 
        unsigned int    Reserved_605          : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF19;

// Define the union U_DATE_COEFF20
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt05_enf2             : 1   ; // [0] 
        unsigned int    tt06_enf2             : 1   ; // [1] 
        unsigned int    tt06_enf1             : 1   ; // [2] 
        unsigned int    Reserved_606          : 29  ; // [31..3] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF20;

// Define the union U_DATE_COEFF21
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_in_sel           : 3   ; // [2..0] 
        unsigned int    Reserved_612          : 1   ; // [3] 
        unsigned int    dac1_in_sel           : 3   ; // [6..4] 
        unsigned int    Reserved_611          : 1   ; // [7] 
        unsigned int    dac2_in_sel           : 3   ; // [10..8] 
        unsigned int    Reserved_610          : 1   ; // [11] 
        unsigned int    dac3_in_sel           : 3   ; // [14..12] 
        unsigned int    Reserved_609          : 1   ; // [15] 
        unsigned int    dac4_in_sel           : 3   ; // [18..16] 
        unsigned int    Reserved_608          : 1   ; // [19] 
        unsigned int    dac5_in_sel           : 3   ; // [22..20] 
        unsigned int    Reserved_607          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF21;

// Define the union U_DATE_COEFF22
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    video_phase_delta     : 11  ; // [10..0] 
        unsigned int    Reserved_613          : 21  ; // [31..11] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF22;

// Define the union U_DATE_COEFF23
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    dac0_out_dly          : 3   ; // [2..0] 
        unsigned int    Reserved_619          : 1   ; // [3] 
        unsigned int    dac1_out_dly          : 3   ; // [6..4] 
        unsigned int    Reserved_618          : 1   ; // [7] 
        unsigned int    dac2_out_dly          : 3   ; // [10..8] 
        unsigned int    Reserved_617          : 1   ; // [11] 
        unsigned int    dac3_out_dly          : 3   ; // [14..12] 
        unsigned int    Reserved_616          : 1   ; // [15] 
        unsigned int    dac4_out_dly          : 3   ; // [18..16] 
        unsigned int    Reserved_615          : 1   ; // [19] 
        unsigned int    dac5_out_dly          : 3   ; // [22..20] 
        unsigned int    Reserved_614          : 9   ; // [31..23] 
    } bits;

    // Define an unsigned member
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
// Define the union U_DATE_COEFF25
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    x_n_coef              : 13  ; // [12..0] 
        unsigned int    Reserved_621          : 3   ; // [15..13] 
        unsigned int    x_n_1_coef            : 13  ; // [28..16] 
        unsigned int    Reserved_620          : 3   ; // [31..29] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF25;

// Define the union U_DATE_COEFF26
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    x_n_1_coef            : 13  ; // [12..0] 
        unsigned int    Reserved_622          : 19  ; // [31..13] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF26;

// Define the union U_DATE_COEFF27
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    y_n_coef              : 11  ; // [10..0] 
        unsigned int    Reserved_624          : 5   ; // [15..11] 
        unsigned int    y_n_1_coef            : 11  ; // [26..16] 
        unsigned int    Reserved_623          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF27;

// Define the union U_DATE_COEFF28
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_begin1          : 11  ; // [10..0] 
        unsigned int    Reserved_626          : 5   ; // [15..11] 
        unsigned int    pixel_begin2          : 11  ; // [26..16] 
        unsigned int    Reserved_625          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF28;

// Define the union U_DATE_COEFF29
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pixel_end             : 11  ; // [10..0] 
        unsigned int    Reserved_627          : 21  ; // [31..11] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF29;

// Define the union U_DATE_COEFF30
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    g_secam               : 7   ; // [6..0] 
        unsigned int    Reserved_628          : 25  ; // [31..7] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF30;

// Define the union U_DATE_ISRMASK
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_mask               : 1   ; // [0] 
        unsigned int    Reserved_629          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISRMASK;

// Define the union U_DATE_ISRSTATE
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_status             : 1   ; // [0] 
        unsigned int    Reserved_631          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISRSTATE;

// Define the union U_DATE_ISR
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    tt_int                : 1   ; // [0] 
        unsigned int    Reserved_632          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_ISR;

// Define the union U_DATE_VERSION
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int Reserved_633            : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_VERSION;
// Define the union U_DATE_COEFF37
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y1_coeff0         : 8   ; // [7..0] 
        unsigned int    fir_y1_coeff1         : 8   ; // [15..8] 
        unsigned int    fir_y1_coeff2         : 8   ; // [23..16] 
        unsigned int    fir_y1_coeff3         : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF37;

// Define the union U_DATE_COEFF38
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y2_coeff0         : 16  ; // [15..0] 
        unsigned int    fir_y2_coeff1         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF38;

// Define the union U_DATE_COEFF39
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_y2_coeff2         : 16  ; // [15..0] 
        unsigned int    fir_y2_coeff3         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF39;

// Define the union U_DATE_COEFF40
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c1_coeff0         : 8   ; // [7..0] 
        unsigned int    fir_c1_coeff1         : 8   ; // [15..8] 
        unsigned int    fir_c1_coeff2         : 8   ; // [23..16] 
        unsigned int    fir_c1_coeff3         : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF40;

// Define the union U_DATE_COEFF41
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c2_coeff0         : 16  ; // [15..0] 
        unsigned int    fir_c2_coeff1         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF41;

// Define the union U_DATE_COEFF42
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    fir_c2_coeff2         : 16  ; // [15..0] 
        unsigned int    fir_c2_coeff3         : 16  ; // [31..16] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF42;

// Define the union U_DATE_DACDET1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vdac_det_high         : 10  ; // [9..0] 
        unsigned int    Reserved_636          : 6   ; // [15..10] 
        unsigned int    det_line              : 10  ; // [25..16] 
        unsigned int    Reserved_635          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_DACDET1;

// Define the union U_DATE_DACDET2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    det_pixel_sta         : 11  ; // [10..0] 
        unsigned int    Reserved_639          : 5   ; // [15..11] 
        unsigned int    det_pixel_wid         : 11  ; // [26..16] 
        unsigned int    Reserved_638          : 4   ; // [30..27] 
        unsigned int    vdac_det_en           : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_DACDET2;

// Define the union U_DATE_COEFF50
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_641          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_640          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF50;

// Define the union U_DATE_COEFF51
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_643          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_642          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF51;

// Define the union U_DATE_COEFF52
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_645          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_644          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF52;

// Define the union U_DATE_COEFF53
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_647          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_646          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF53;

// Define the union U_DATE_COEFF54
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_649          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_648          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF54;

// Define the union U_DATE_COEFF55
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ovs_coeff0            : 11  ; // [10..0] 
        unsigned int    Reserved_651          : 5   ; // [15..11] 
        unsigned int    ovs_coeff1            : 11  ; // [26..16] 
        unsigned int    Reserved_650          : 5   ; // [31..27] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF55;

// Define the union U_DATE_COEFF56
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    oversam2_round_en     : 1   ; // [0] 
        unsigned int    Reserved_652          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF56;

// Define the union U_DATE_COEFF57
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    v_gain                : 8   ; // [7..0] 
        unsigned int    u_gain                : 8   ; // [15..8] 
        unsigned int    ycvbs_gain            : 8   ; // [23..16] 
        unsigned int    Reserved_653          : 7   ; // [30..24] 
        unsigned int    cvbs_gain_en          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF57;

// Define the union U_DATE_COEFF58
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    pr_gain               : 8   ; // [7..0] 
        unsigned int    pb_gain               : 8   ; // [15..8] 
        unsigned int    ycomp_gain            : 8   ; // [23..16] 
        unsigned int    Reserved_654          : 7   ; // [30..24] 
        unsigned int    comp_gain_en          : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF58;

// Define the union U_DATE_COEFF59
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    ynotch_clip_fullrange  : 1   ; // [0] 
        unsigned int    clpf_clip_fullrange   : 1   ; // [1] 
        unsigned int    Reserved_659          : 2   ; // [3..2] 
        unsigned int    y_os_clip_fullrange   : 1   ; // [4] 
        unsigned int    Reserved_658          : 3   ; // [7..5] 
        unsigned int    u_os_clip_fullrange   : 1   ; // [8] 
        unsigned int    v_os_clip_fullrange   : 1   ; // [9] 
        unsigned int    Reserved_657          : 2   ; // [11..10] 
        unsigned int    cb_os_clip_fullrange  : 1   ; // [12] 
        unsigned int    cr_os_clip_fullrange  : 1   ; // [13] 
        unsigned int    Reserved_656          : 2   ; // [15..14] 
        unsigned int    cb_gain_polar         : 1   ; // [16] 
        unsigned int    Reserved_655          : 15  ; // [31..17] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF59;

// Define the union U_DATE_COEFF60
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    line_960h_en          : 1   ; // [0] 
        unsigned int    Reserved_660          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF60;

// Define the union U_DATE_COEFF61
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    burst_start_ovrd      : 1   ; // [0] 
        unsigned int    burst_dura_ovrd       : 1   ; // [1] 
        unsigned int    cb_bound_ovrd         : 1   ; // [2] 
        unsigned int    pal_half_ovrd         : 1   ; // [3] 
        unsigned int    rgb_acrive_ovrd       : 1   ; // [4] 
        unsigned int    Reserved_661          : 27  ; // [31..5] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF61;

// Define the union U_DATE_COEFF62
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int burst_dura_coeff        : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF62;
// Define the union U_DATE_COEFF63
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int cb_bound_coeff          : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF63;
// Define the union U_DATE_COEFF64
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int pal_half_coeff          : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF64;
// Define the union U_DATE_COEFF65
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int rgb_active_coeff        : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF65;
// Define the union U_DATE_COEFF66
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    htotal_ovrd           : 1   ; // [0] 
        unsigned int    wid_sync_ovrd         : 1   ; // [1] 
        unsigned int    wid_hfb_ovrd          : 1   ; // [2] 
        unsigned int    wid_act_ovrd          : 1   ; // [3] 
        unsigned int    Reserved_662          : 28  ; // [31..4] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF66;

// Define the union U_DATE_COEFF67
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    htotal_sw             : 12  ; // [11..0] 
        unsigned int    Reserved_663          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF67;

// Define the union U_DATE_COEFF68
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wid_sync_sw           : 12  ; // [11..0] 
        unsigned int    Reserved_664          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF68;

// Define the union U_DATE_COEFF69
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wid_hfb_sw            : 12  ; // [11..0] 
        unsigned int    Reserved_665          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF69;

// Define the union U_DATE_COEFF70
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    wid_act_sw            : 12  ; // [11..0] 
        unsigned int    Reserved_666          : 20  ; // [31..12] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF70;

// Define the union U_DATE_COEFF71
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    phase_shift_ovrd      : 1   ; // [0] 
        unsigned int    Reserved_667          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF71;

// Define the union U_DATE_COEFF72
typedef union
{
    // Define the struct bits 
    struct
    {
        unsigned int phase_shift_coeff       : 32  ; // [31..0] 
    } bits;
 
    // Define an unsigned member
        unsigned int    u32;
 
} U_DATE_COEFF72;
// Define the union U_DATE_COEFF73
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_ovrd       : 1   ; // [0] 
        unsigned int    Reserved_668          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF73;

// Define the union U_DATE_COEFF74
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_1          : 10  ; // [9..0] 
        unsigned int    Reserved_670          : 6   ; // [15..10] 
        unsigned int    coef_notch_2          : 10  ; // [25..16] 
        unsigned int    Reserved_669          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF74;

// Define the union U_DATE_COEFF75
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_3          : 10  ; // [9..0] 
        unsigned int    Reserved_672          : 6   ; // [15..10] 
        unsigned int    coef_notch_4          : 10  ; // [25..16] 
        unsigned int    Reserved_671          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF75;

// Define the union U_DATE_COEFF76
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_5          : 10  ; // [9..0] 
        unsigned int    Reserved_674          : 6   ; // [15..10] 
        unsigned int    coef_notch_6          : 10  ; // [25..16] 
        unsigned int    Reserved_673          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF76;

// Define the union U_DATE_COEFF77
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_7          : 10  ; // [9..0] 
        unsigned int    Reserved_676          : 6   ; // [15..10] 
        unsigned int    coef_notch_8          : 10  ; // [25..16] 
        unsigned int    Reserved_675          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF77;

// Define the union U_DATE_COEFF78
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_9          : 10  ; // [9..0] 
        unsigned int    Reserved_678          : 6   ; // [15..10] 
        unsigned int    coef_notch_10         : 10  ; // [25..16] 
        unsigned int    Reserved_677          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF78;

// Define the union U_DATE_COEFF79
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_notch_11         : 10  ; // [9..0] 
        unsigned int    Reserved_680          : 6   ; // [15..10] 
        unsigned int    coef_notch_12         : 10  ; // [25..16] 
        unsigned int    Reserved_679          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF79;

// Define the union U_DATE_COEFF80
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_chra_lpf_ovrd    : 1   ; // [0] 
        unsigned int    Reserved_681          : 31  ; // [31..1] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF80;

// Define the union U_DATE_COEFF81
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_chra_lpf_1       : 9   ; // [8..0] 
        unsigned int    Reserved_683          : 7   ; // [15..9] 
        unsigned int    coef_chra_lpf_2       : 9   ; // [24..16] 
        unsigned int    Reserved_682          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF81;

// Define the union U_DATE_COEFF82
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_chra_lpf_3       : 9   ; // [8..0] 
        unsigned int    Reserved_685          : 7   ; // [15..9] 
        unsigned int    coef_chra_lpf_4       : 9   ; // [24..16] 
        unsigned int    Reserved_684          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF82;

// Define the union U_DATE_COEFF83
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_chra_lpf_5       : 9   ; // [8..0] 
        unsigned int    Reserved_687          : 7   ; // [15..9] 
        unsigned int    coef_chra_lpf_6       : 9   ; // [24..16] 
        unsigned int    Reserved_686          : 7   ; // [31..25] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF83;

// Define the union U_DATE_COEFF84
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    coef_chra_lpf_7       : 9   ; // [8..0] 
        unsigned int    Reserved_688          : 23  ; // [31..9] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DATE_COEFF84;

// Define the union U_VHDHLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_690          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_689          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHLCOEF;

// Define the union U_VHDHCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_693          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_692          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHCCOEF;

// Define the union U_VHDVLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_696          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_695          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVLCOEF;

// Define the union U_VHDVCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_699          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_698          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVCCOEF;

// Define the union U_VSDHLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_702          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_701          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDHLCOEF;

// Define the union U_VSDHCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_705          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_704          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDHCCOEF;

// Define the union U_VSDVLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_708          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_707          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVLCOEF;

// Define the union U_VSDVCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_711          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_710          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDVCCOEF;

// Define the union U_G0HLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_714          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_713          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HLCOEF;

// Define the union U_G0HCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_717          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_716          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HCCOEF;

// Define the union U_G0VLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_720          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_719          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VLCOEF;

// Define the union U_G0VCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_723          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_722          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VCCOEF;

// Define the union U_G1HLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_726          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_725          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1HLCOEF;

// Define the union U_G1HCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_729          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_728          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1HCCOEF;

// Define the union U_G1VLCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_732          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_731          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1VLCOEF;

// Define the union U_G1VCCOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_735          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_734          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1VCCOEF;

// Define the union U_DHDGAMMAN
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    gamma_databn          : 10  ; // [9..0] 
        unsigned int    gamma_datagn          : 10  ; // [19..10] 
        unsigned int    gamma_datarn          : 10  ; // [29..20] 
        unsigned int    Reserved_737          : 2   ; // [31..30] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDGAMMAN;

// Define the union U_VHDHLTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_740          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_739          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHLTICOEF;

// Define the union U_VHDHCTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_743          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_742          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDHCTICOEF;

// Define the union U_VHDVLTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_746          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_745          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVLTICOEF;

// Define the union U_VHDVCTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_749          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_748          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDVCTICOEF;

// Define the union U_G0HLTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_752          : 6   ; // [15..10] 
        unsigned int    hlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_751          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HLTICOEF;

// Define the union U_G0HCTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    hccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_755          : 6   ; // [15..10] 
        unsigned int    hccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_754          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0HCTICOEF;

// Define the union U_G0VLTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vlcoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_758          : 6   ; // [15..10] 
        unsigned int    vlcoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_757          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VLTICOEF;

// Define the union U_G0VCTICOEF
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    vccoefn1              : 10  ; // [9..0] 
        unsigned int    Reserved_761          : 6   ; // [15..10] 
        unsigned int    vccoefn2              : 10  ; // [25..16] 
        unsigned int    Reserved_760          : 6   ; // [31..26] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0VCTICOEF;

// Define the union U_VIDCTRL
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    Reserved_763          : 30  ; // [29..0] 
        unsigned int    vid_mode              : 1   ; // [30] 
        unsigned int    vid_en                : 1   ; // [31] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDCTRL;

// Define the union U_VIDBLKPOS0_1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk0_xlpos            : 8   ; // [7..0] 
        unsigned int    blk0_ylpos            : 8   ; // [15..8] 
        unsigned int    blk1_xlpos            : 8   ; // [23..16] 
        unsigned int    blk1_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLKPOS0_1;

// Define the union U_VIDBLKPOS2_3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk2_xlpos            : 8   ; // [7..0] 
        unsigned int    blk2_ylpos            : 8   ; // [15..8] 
        unsigned int    blk3_xlpos            : 8   ; // [23..16] 
        unsigned int    blk3_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLKPOS2_3;

// Define the union U_VIDBLKPOS4_5
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk4_xlpos            : 8   ; // [7..0] 
        unsigned int    blk4_ylpos            : 8   ; // [15..8] 
        unsigned int    blk5_xlpos            : 8   ; // [23..16] 
        unsigned int    blk5_ylpos            : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLKPOS4_5;

// Define the union U_VIDBLK0TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK0TOL0;

// Define the union U_VIDBLK0TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK0TOL1;

// Define the union U_VIDBLK1TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK1TOL0;

// Define the union U_VIDBLK1TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK1TOL1;

// Define the union U_VIDBLK2TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK2TOL0;

// Define the union U_VIDBLK2TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK2TOL1;

// Define the union U_VIDBLK3TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK3TOL0;

// Define the union U_VIDBLK3TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK3TOL1;

// Define the union U_VIDBLK4TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK4TOL0;

// Define the union U_VIDBLK4TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK4TOL1;

// Define the union U_VIDBLK5TOL0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix0              : 8   ; // [7..0] 
        unsigned int    blk_pix1              : 8   ; // [15..8] 
        unsigned int    blk_pix2              : 8   ; // [23..16] 
        unsigned int    blk_pix3              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VIDBLK5TOL0;

// Define the union U_VIDBLK5TOL1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    blk_pix4              : 8   ; // [7..0] 
        unsigned int    blk_pix5              : 8   ; // [15..8] 
        unsigned int    blk_pix6              : 8   ; // [23..16] 
        unsigned int    blk_pix7              : 8   ; // [31..24] 
    } bits;

    // Define an unsigned member
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
// Define the global struct
typedef struct
{
    U_VOCTRL             VOCTRL;
    U_VOINTSTA           VOINTSTA;
    U_VOMSKINTSTA        VOMSKINTSTA;
    U_VOINTMSK           VOINTMSK;
    U_VOUVERSION1        VOUVERSION1;
    U_VOUVERSION2        VOUVERSION2;
    U_VOMUXDATA          VOMUXDATA;
    U_VOMUX              VOMUX;
    U_VODEBUG            VODEBUG;
    unsigned int         Reserved_0[7];
    U_VOPARAUP           VOPARAUP;
    U_VHDHCOEFAD         VHDHCOEFAD;
    U_VHDVCOEFAD         VHDVCOEFAD;
    unsigned int         Reserved_1[2];
    U_ACCAD              ACCAD;
    U_VSDHCOEFAD         VSDHCOEFAD;
    U_VSDVCOEFAD         VSDVCOEFAD;
    U_G0CLUTAD           G0CLUTAD;
    U_G1CLUTAD           G1CLUTAD;
    U_G0HCOEFAD          G0HCOEFAD;
    U_G0VCOEFAD          G0VCOEFAD;
    U_G1HCOEFAD          G1HCOEFAD;
    U_G1VCOEFAD          G1VCOEFAD;
    U_DHDGAMMAAD         DHDGAMMAAD;
    unsigned int         Reserved_2[2];
    U_G2CLUTAD           G2CLUTAD;
    unsigned int           reserved_3[22]                     ; /* 0x88~0xdc */
    U_DACCTRL              DACCTRL                           ; /* 0xe0 */
    U_DACCTRL0_1           DACCTRL0_1                        ; /* 0xe4 */
    U_DACCTRL2_3           DACCTRL2_3                        ; /* 0xe8 */
    unsigned int           reserved_4[5]                     ; /* 0xec~0xfc */
    U_VHDCTRL            VHDCTRL;
    U_VHDUPD             VHDUPD;
    U_VHDLADDR           VHDLADDR;
    U_VHDLCADDR          VHDLCADDR;
    U_VHDLCRADDR         VHDLCRADDR;
    U_VHDCADDR           VHDCADDR;
    U_VHDCCADDR          VHDCCADDR;
    U_VHDCCRADDR         VHDCCRADDR;
    U_VHDNADDR           VHDNADDR;
    U_VHDNCADDR          VHDNCADDR;
    U_VHDNCRADDR         VHDNCRADDR;
    U_VHDSTRIDE          VHDSTRIDE;
    U_VHDCRSTRIDE        VHDCRSTRIDE;
    U_VHDIRESO           VHDIRESO;
    unsigned int         Reserved_5;
    U_VHDCBMPARA         VHDCBMPARA;
    U_VHDDIEADDR         VHDDIEADDR;
    U_VHDCMPOFFSET       VHDCMPOFFSET;
    unsigned int         Reserved_6;
    U_VHDDIESTADDR       VHDDIESTADDR;
    U_VHDCFPOS           VHDCFPOS;
    U_VHDCLPOS           VHDCLPOS;
    U_VHDSRCRESO         VHDSRCRESO;
    U_VHDDRAWMODE        VHDDRAWMODE;
    U_VHDDFPOS           VHDDFPOS;
    U_VHDDLPOS           VHDDLPOS;
    U_VHDVFPOS           VHDVFPOS;
    U_VHDVLPOS           VHDVLPOS;
    U_VHDBK              VHDBK;
    unsigned int         Reserved_7[3];
    U_VHDCSCIDC          VHDCSCIDC;
    U_VHDCSCODC          VHDCSCODC;
    U_VHDCSCP0           VHDCSCP0;
    U_VHDCSCP1           VHDCSCP1;
    U_VHDCSCP2           VHDCSCP2;
    U_VHDCSCP3           VHDCSCP3;
    U_VHDCSCP4           VHDCSCP4;
    unsigned int         Reserved_8;
    U_VHDACM0            VHDACM0;
    U_VHDACM1            VHDACM1;
    U_VHDACM2            VHDACM2;
    U_VHDACM3            VHDACM3;
    U_VHDACM4            VHDACM4;
    U_VHDACM5            VHDACM5;
    U_VHDACM6            VHDACM6;
    U_VHDACM7            VHDACM7;
    U_VHDHSP             VHDHSP;
    U_VHDHLOFFSET        VHDHLOFFSET;
    U_VHDHCOFFSET        VHDHCOFFSET;
    unsigned int         Reserved_9[3];
    U_VHDVSP             VHDVSP;
    U_VHDVSR             VHDVSR;
    U_VHDVOFFSET         VHDVOFFSET;
    U_VHDZMEORESO        VHDZMEORESO;
    U_VHDZMEIRESO        VHDZMEIRESO;
    U_VHDZMEDBG          VHDZMEDBG;
    U_VHDVC1CTRL         VHDVC1CTRL;
    U_VHDVC1CFG1         VHDVC1CFG1;
    U_VHDVC1CFG2         VHDVC1CFG2;
    U_VHDVC1CFG3         VHDVC1CFG3;
    U_VHDACCTHD1         VHDACCTHD1;
    U_VHDACCTHD2         VHDACCTHD2;
    unsigned int         Reserved_10[2];
    U_VHDACCLOWN         VHDACCLOWN[3];
    unsigned int         Reserved_11;
    U_VHDACCMEDN         VHDACCMEDN[3];
    unsigned int         Reserved_12;
    U_VHDACCHIGHN        VHDACCHIGHN[3];
    unsigned int         Reserved_13;
    U_VHDACCMLN          VHDACCMLN[3];
    unsigned int         Reserved_14;
    U_VHDACCMHN          VHDACCMHN[3];
    unsigned int         Reserved_15;
    U_VHDACC3LOW         VHDACC3LOW;
    U_VHDACC3MED         VHDACC3MED;
    U_VHDACC3HIGH        VHDACC3HIGH;
    U_VHDACC8MLOW        VHDACC8MLOW;
    U_VHDACC8MHIGH       VHDACC8MHIGH;
    U_VHDACCTOTAL        VHDACCTOTAL;
    unsigned int         Reserved_16[2];
    U_VHDIFIRCOEF01      VHDIFIRCOEF01;
    U_VHDIFIRCOEF23      VHDIFIRCOEF23;
    U_VHDIFIRCOEF45      VHDIFIRCOEF45;
    U_VHDIFIRCOEF67      VHDIFIRCOEF67;
    U_VHDLTICTRL         VHDLTICTRL;
    U_VHDLHPASSCOEF      VHDLHPASSCOEF;
    U_VHDLTITHD          VHDLTITHD;
    unsigned int         Reserved_17;
    U_VHDLHFREQTHD       VHDLHFREQTHD;
    U_VHDLGAINCOEF       VHDLGAINCOEF;
    unsigned int         Reserved_18[2];
    U_VHDCTICTRL         VHDCTICTRL;
    U_VHDCHPASSCOEF      VHDCHPASSCOEF;
    U_VHDCTITHD          VHDCTITHD;
    unsigned int         Reserved_19;
    U_VHDDNRCTRL         VHDDNRCTRL;
    U_VHDDRCFG0          VHDDRCFG0;
    U_VHDDRCFG1          VHDDRCFG1;
    U_VHDDBCFG0          VHDDBCFG0;
    U_VHDDBCFG1          VHDDBCFG1;
    U_VHDDBCFG2          VHDDBCFG2;
    U_VHDDNRYINFSTADDR   VHDDNRYINFSTADDR;
    U_VHDDNRCINFSTADDR   VHDDNRCINFSTADDR;
    U_VHDDNRINFSTRIDE    VHDDNRINFSTRIDE;
    unsigned int         Reserved_20[7];
    U_VHDDIECTRL         VHDDIECTRL;
    unsigned int         Reserved_21;
    U_VHDDIELMA0         VHDDIELMA0;
    U_VHDDIELMA1         VHDDIELMA1;
    U_VHDDIELMA2         VHDDIELMA2;
    U_VHDDIEINTEN        VHDDIEINTEN;
    U_VHDDIESCALE        VHDDIESCALE;
    U_VHDDIECHECK1       VHDDIECHECK1;
    U_VHDDIECHECK2       VHDDIECHECK2;
    U_VHDDIEDIR0_3       VHDDIEDIR0_3;
    U_VHDDIEDIR4_7       VHDDIEDIR4_7;
    U_VHDDIEDIR8_11      VHDDIEDIR8_11;
    U_VHDDIEDIR12_14     VHDDIEDIR12_14;
    unsigned int         Reserved_22;
    U_VHDDIESTA          VHDDIESTA;
    unsigned int         Reserved_23[26];
    U_VHDDIESTKADDR      VHDDIESTKADDR;
    U_VHDDIESTLADDR      VHDDIESTLADDR;
    U_VHDDIESTMADDR      VHDDIESTMADDR;
    U_VHDDIESTNADDR      VHDDIESTNADDR;
    U_VHDDIESTSQTRADDR   VHDDIESTSQTRADDR;
    U_VHDCCRSCLR0        VHDCCRSCLR0;
    U_VHDCCRSCLR1        VHDCCRSCLR1;
    U_VHDPDPCCMOVCORING  VHDPDPCCMOVCORING;
    U_VHDPDICHDTHD       VHDPDICHDTHD;
    unsigned int         Reserved_24[2];
    U_VHDPDICHDCNT       VHDPDICHDCNT;
    unsigned int         Reserved_25[11];
    U_VHDPDCTRL          VHDPDCTRL;
    U_VHDPDBLKPOS0       VHDPDBLKPOS0;
    U_VHDPDBLKPOS1       VHDPDBLKPOS1;
    U_VHDPDBLKTHD        VHDPDBLKTHD;
    U_VHDPDHISTTHD       VHDPDHISTTHD;
    U_VHDPDUMTHD         VHDPDUMTHD;
    U_VHDPDPCCCORING     VHDPDPCCCORING;
    U_VHDPDPCCHTHD       VHDPDPCCHTHD;
    U_VHDPDPCCVTHD       VHDPDPCCVTHD;
    U_VHDPDITDIFFVTHD    VHDPDITDIFFVTHD;
    U_VHDPDLASITHD       VHDPDLASITHD;
    U_VHDPDFRMITDIFF     VHDPDFRMITDIFF;
    U_VHDPDSTLBLKSAD     VHDPDSTLBLKSAD[16];
    U_VHDPDHISTBIN       VHDPDHISTBIN[4];
    U_VHDPDUMMATCH0      VHDPDUMMATCH0;
    U_VHDPDUMNOMATCH0    VHDPDUMNOMATCH0;
    U_VHDPDUMMATCH1      VHDPDUMMATCH1;
    U_VHDPDUMNOMATCH1    VHDPDUMNOMATCH1;
    U_VHDPDPCCFFWD       VHDPDPCCFFWD;
    U_VHDPDPCCFWD        VHDPDPCCFWD;
    U_VHDPDPCCBWD        VHDPDPCCBWD;
    U_VHDPDPCCCRSS       VHDPDPCCCRSS;
    U_VHDPDPCCPW         VHDPDPCCPW;
    U_VHDPDPCCFWDTKR     VHDPDPCCFWDTKR;
    U_VHDPDPCCBWDTKR     VHDPDPCCBWDTKR;
    U_VHDPDPCCBLKFWD     VHDPDPCCBLKFWD[9];
    U_VHDPDPCCBLKBWD     VHDPDPCCBLKBWD[9];
    U_VHDPDLASICNT14     VHDPDLASICNT14;
    U_VHDPDLASICNT32     VHDPDLASICNT32;
    U_VHDPDLASICNT34     VHDPDLASICNT34;
    unsigned int         Reserved_26[128];
    U_VSDCTRL            VSDCTRL;
    U_VSDUPD             VSDUPD;
    unsigned int         Reserved_27[3];
    U_VSDCADDR           VSDCADDR;
    U_VSDCCADDR          VSDCCADDR;
    unsigned int         Reserved_28[4];
    U_VSDSTRIDE          VSDSTRIDE;
    unsigned int         Reserved_29;
    U_VSDIRESO           VSDIRESO;
    U_VSDWRAPTHD         VSDWRAPTHD;
    U_VSDCBMPARA         VSDCBMPARA;
    unsigned int         Reserved_30;
    U_VSDCMPOFFSET       VSDCMPOFFSET;
    unsigned int         Reserved_31[2];
    U_VSDCFPOS           VSDCFPOS;
    U_VSDCLPOS           VSDCLPOS;
    U_VSDSRCRESO         VSDSRCRESO;
    U_VSDDRAWMODE        VSDDRAWMODE;
    U_VSDDFPOS           VSDDFPOS;
    U_VSDDLPOS           VSDDLPOS;
    U_VSDVFPOS           VSDVFPOS;
    U_VSDVLPOS           VSDVLPOS;
    U_VSDBK              VSDBK;
    unsigned int         Reserved_32[3];
    U_VSDCSCIDC          VSDCSCIDC;
    U_VSDCSCODC          VSDCSCODC;
    U_VSDCSCP0           VSDCSCP0;
    U_VSDCSCP1           VSDCSCP1;
    U_VSDCSCP2           VSDCSCP2;
    U_VSDCSCP3           VSDCSCP3;
    U_VSDCSCP4           VSDCSCP4;
    unsigned int         Reserved_33;
    U_VSDACM0            VSDACM0;
    U_VSDACM1            VSDACM1;
    U_VSDACM2            VSDACM2;
    U_VSDACM3            VSDACM3;
    U_VSDACM4            VSDACM4;
    U_VSDACM5            VSDACM5;
    U_VSDACM6            VSDACM6;
    U_VSDACM7            VSDACM7;
    U_VSDHSP             VSDHSP;
    U_VSDHLOFFSET        VSDHLOFFSET;
    U_VSDHCOFFSET        VSDHCOFFSET;
    unsigned int         Reserved_34[3];
    U_VSDVSP             VSDVSP;
    U_VSDVSR             VSDVSR;
    U_VSDVOFFSET         VSDVOFFSET;
    U_VSDZMEORESO        VSDZMEORESO;
    U_VSDZMEIRESO        VSDZMEIRESO;
    U_VSDZMEDBG          VSDZMEDBG;
    unsigned int         Reserved_35[4];
    U_VSDACCTHD1         VSDACCTHD1;
    U_VSDACCTHD2         VSDACCTHD2;
    unsigned int         Reserved_36[2];
    U_VSDACCLOWN         VSDACCLOWN[3];
    unsigned int         Reserved_37;
    U_VSDACCMEDN         VSDACCMEDN[3];
    unsigned int         Reserved_38;
    U_VSDACCHIGHN        VSDACCHIGHN[3];
    unsigned int         Reserved_39;
    U_VSDACCMLN          VSDACCMLN[3];
    unsigned int         Reserved_40;
    U_VSDACCMHN          VSDACCMHN[3];
    unsigned int         Reserved_41;
    U_VSDACC3LOW         VSDACC3LOW;
    U_VSDACC3MED         VSDACC3MED;
    U_VSDACC3HIGH        VSDACC3HIGH;
    U_VSDACC8MLOW        VSDACC8MLOW;
    U_VSDACC8MHIGH       VSDACC8MHIGH;
    U_VSDACCTOTAL        VSDACCTOTAL;
    unsigned int         Reserved_42[2];
    U_VSDIFIRCOEF01      VSDIFIRCOEF01;
    U_VSDIFIRCOEF23      VSDIFIRCOEF23;
    U_VSDIFIRCOEF45      VSDIFIRCOEF45;
    U_VSDIFIRCOEF67      VSDIFIRCOEF67;
    unsigned int         Reserved_43[28];
    U_G0CTRL             G0CTRL;
    U_G0UPD              G0UPD;
    U_G0ADDR             G0ADDR;
    U_G0STRIDE           G0STRIDE;
    U_G0CBMPARA          G0CBMPARA;
    U_G0CKEYMAX          G0CKEYMAX;
    U_G0CKEYMIN          G0CKEYMIN;
    U_G0CMASK            G0CMASK;
    U_G0IRESO            G0IRESO;
    U_G0ORESO            G0ORESO;
    U_G0SFPOS            G0SFPOS;
    U_G0DFPOS            G0DFPOS;
    U_G0DLPOS            G0DLPOS;
    U_G0CMPADDR          G0CMPADDR;
    unsigned int         Reserved_44[2];
    U_G0HSP              G0HSP;
    U_G0HOFFSET          G0HOFFSET;
    U_G0VSP              G0VSP;
    U_G0VSR              G0VSR;
    U_G0VOFFSET          G0VOFFSET;
    U_G0ZMEORESO         G0ZMEORESO;
    U_G0ZMEIRESO         G0ZMEIRESO;
    unsigned int         Reserved_45;
    U_G0LTICTRL          G0LTICTRL;
    U_G0LHPASSCOEF       G0LHPASSCOEF;
    U_G0LTITHD           G0LTITHD;
    unsigned int         Reserved_46;
    U_G0LHFREQTHD        G0LHFREQTHD;
    U_G0LGAINCOEF        G0LGAINCOEF;
    unsigned int         Reserved_47[2];
    U_G0CTICTRL          G0CTICTRL;
    U_G0CHPASSCOEF       G0CHPASSCOEF;
    U_G0CTITHD           G0CTITHD;
    unsigned int         Reserved_48[7];
    U_G0CSCP0            G0CSCP0;
    U_G0CSCP1            G0CSCP1;
    U_G0CSCP2            G0CSCP2;
    U_G0CSCP3            G0CSCP3;
    U_G0CSCP4            G0CSCP4;
    unsigned int         Reserved_49;
    U_G0CSCIDC           G0CSCIDC;
    U_G0CSCODC           G0CSCODC;
    U_G0CSCDC            G0CSCDC;
    unsigned int         Reserved_50[13];
    U_G1CTRL             G1CTRL;
    U_G1UPD              G1UPD;
    U_G1ADDR             G1ADDR;
    U_G1STRIDE           G1STRIDE;
    U_G1CBMPARA          G1CBMPARA;
    U_G1CKEYMAX          G1CKEYMAX;
    U_G1CKEYMIN          G1CKEYMIN;
    U_G1CMASK            G1CMASK;
    U_G1IRESO            G1IRESO;
    U_G1ORESO            G1ORESO;
    U_G1SFPOS            G1SFPOS;
    U_G1DFPOS            G1DFPOS;
    U_G1DLPOS            G1DLPOS;
    U_G1CMPADDR          G1CMPADDR;
    U_G1WRAPTHD          G1WRAPTHD;
    unsigned int         Reserved_51;
    U_G1HSP              G1HSP;
    U_G1HOFFSET          G1HOFFSET;
    U_G1VSP              G1VSP;
    U_G1VSR              G1VSR;
    U_G1VOFFSET          G1VOFFSET;
    U_G1ZMEORESO         G1ZMEORESO;
    U_G1ZMEIRESO         G1ZMEIRESO;
    unsigned int         Reserved_52[17];
    U_G1CSCIDC           G1CSCIDC;
    U_G1CSCODC           G1CSCODC;
    U_G1CSCP0            G1CSCP0;
    U_G1CSCP1            G1CSCP1;
    U_G1CSCP2            G1CSCP2;
    U_G1CSCP3            G1CSCP3;
    U_G1CSCP4            G1CSCP4;
    unsigned int         Reserved_53[17];
#if  0
	 U_HCCTRL             HCCTRL;
    U_HCUPD              HCUPD;
    U_HCADDR             HCADDR;
    U_HCSTRIDE           HCSTRIDE;
    U_HCCBMPARA          HCCBMPARA;
    U_HCCKEYMAX          HCCKEYMAX;
    U_HCCKEYMIN          HCCKEYMIN;
    U_HCCMASK            HCCMASK;
    U_HCIRESO            HCIRESO;
    unsigned int         Reserved_151;
    U_HCSFPOS            HCSFPOS;
    U_HCDFPOS            HCDFPOS;
    U_HCDLPOS            HCDLPOS;
    unsigned int         Reserved_152[27];
    U_HCCSCIDC           HCCSCIDC;
    U_HCCSCODC           HCCSCODC;
    U_HCCSCP0            HCCSCP0;
    U_HCCSCP1            HCCSCP1;
    U_HCCSCP2            HCCSCP2;
    U_HCCSCP3            HCCSCP3;
    U_HCCSCP4            HCCSCP4;
	unsigned int         Reserved_153[17];
#else
   U_G2CTRL             G2CTRL;
    U_G2UPD              G2UPD;
    U_ZONE1ADDR          ZONE1ADDR;
    U_ZONE1STRIDE        ZONE1STRIDE;
    U_G2CBMPARA          G2CBMPARA;
    U_G2CKEYMAX          G2CKEYMAX;
    U_G2CKEYMIN          G2CKEYMIN;
    U_G2CMASK            G2CMASK;
    unsigned int         Reserved_54[4];
    U_G2DLPOS            G2DLPOS;
    U_ZONE2ADDR          ZONE2ADDR;
    U_ZONE2STRIDE        ZONE2STRIDE;
    U_ZONE1FPOS          ZONE1FPOS;
    U_ZONE2FPOS          ZONE2FPOS;
    U_ZONE1RESO          ZONE1RESO;
    U_ZONE2RESO          ZONE2RESO;
    U_ZONE1DFPOS         ZONE1DFPOS;
    U_ZONE1DLPOS         ZONE1DLPOS;
    U_ZONE2DFPOS         ZONE2DFPOS;
    U_ZONE2DLPOS         ZONE2DLPOS;
    unsigned int         Reserved_55[41];
#endif
	
	
	
 
    U_WBC0CTRL           WBC0CTRL;
    U_WBC0UPD            WBC0UPD;
    U_WBC0ADDR           WBC0ADDR;
    U_WBC0STRIDE         WBC0STRIDE;
    U_WBC0ORESO          WBC0ORESO;
    U_WBC0FCROP          WBC0FCROP;
    U_WBC0LCROP          WBC0LCROP;
    unsigned int         Reserved_56;
    U_WBC0WRAPTHD        WBC0WRAPTHD;
    unsigned int         Reserved_57[51];
    U_WBC0_CHECKSUM_Y    WBC0_CHECKSUM_Y;
    U_WBC0_CHECKSUM_C    WBC0_CHECKSUM_C;
    unsigned int         Reserved_58[2];
    U_WBC2CTRL           WBC2CTRL;
    U_WBC2UPD            WBC2UPD;
    U_WBC2ADDR           WBC2ADDR;
    U_WBC2STRIDE         WBC2STRIDE;
    U_WBC2ORESO          WBC2ORESO;
    U_WBC2FCROP          WBC2FCROP;
    U_WBC2LCROP          WBC2LCROP;
    U_WBC2CMPADDR        WBC2CMPADDR;
    U_WBC2WRAPTHD        WBC2WRAPTHD;
    unsigned int         Reserved_59[51];
    U_WBC2_CHECKSUM_A    WBC2_CHECKSUM_A;
    U_WBC2_CHECKSUM_R    WBC2_CHECKSUM_R;
    U_WBC2_CHECKSUM_G    WBC2_CHECKSUM_G;
    U_WBC2_CHECKSUM_B    WBC2_CHECKSUM_B;
    U_WBC3CTRL           WBC3CTRL;
    U_WBC3UPD            WBC3UPD;
    U_WBC3ADDR           WBC3ADDR;
    U_WBC3STRIDE         WBC3STRIDE;
    U_WBC3ORESO          WBC3ORESO;
    U_WBC3FCROP          WBC3FCROP;
    U_WBC3LCROP          WBC3LCROP;
    U_WBC3CMPADDR        WBC3CMPADDR;
    unsigned int         Reserved_60;
    U_WBC3STPLN          WBC3STPLN;
    unsigned int         Reserved_61[118];
    U_CBMBKG1            CBMBKG1;
    U_CBMBKG2            CBMBKG2;
    U_CBMBKGV            CBMBKGV;
    U_CBMATTR            CBMATTR;
    U_CBMMIX1            CBMMIX1;
    U_CBMMIX2            CBMMIX2;
    unsigned int         Reserved_62[58];
    U_DHDCTRL            DHDCTRL;
    U_DHDVSYNC           DHDVSYNC;
    U_DHDHSYNC1          DHDHSYNC1;
    U_DHDHSYNC2          DHDHSYNC2;
    U_DHDVPLUS           DHDVPLUS;
    U_DHDPWR             DHDPWR;
    U_DHDVTTHD3          DHDVTTHD3;
    U_DHDVTTHD           DHDVTTHD;
    U_DHDCSCIDC          DHDCSCIDC;
    U_DHDCSCODC          DHDCSCODC;
    U_DHDCSCP0           DHDCSCP0;
    U_DHDCSCP1           DHDCSCP1;
    U_DHDCSCP2           DHDCSCP2;
    U_DHDCSCP3           DHDCSCP3;
    U_DHDCSCP4           DHDCSCP4;
    unsigned int         Reserved_63;
    U_DHDCLIPL           DHDCLIPL;
    U_DHDCLIPH           DHDCLIPH;
    unsigned int         Reserved_64[6];
    U_DHDUFWTHD          DHDUFWTHD;
    U_DHDSTATHD          DHDSTATHD;
    unsigned int         Reserved_65[6];
    U_HDMI_CSC_IDC       HDMI_CSC_IDC;
    U_HDMI_CSC_ODC       HDMI_CSC_ODC;
    U_HDMI_CSC_IODC      HDMI_CSC_IODC;
    U_HDMI_CSC_P0        HDMI_CSC_P0;
    U_HDMI_CSC_P1        HDMI_CSC_P1;
    U_HDMI_CSC_P2        HDMI_CSC_P2;
    U_HDMI_CSC_P3        HDMI_CSC_P3;
    U_HDMI_CSC_P4        HDMI_CSC_P4;
    unsigned int         Reserved_66[12];
    U_HDMI_CHECKSUM_Y    HDMI_CHECKSUM_Y;
    U_HDMI_CHECKSUM_CB   HDMI_CHECKSUM_CB;
    U_HDMI_CHECKSUM_CR   HDMI_CHECKSUM_CR;
    unsigned int         Reserved_67;
    U_DHD_CHECKSUM_Y     DHD_CHECKSUM_Y;
    U_DHD_CHECKSUM_CB    DHD_CHECKSUM_CB;
    U_DHD_CHECKSUM_CR    DHD_CHECKSUM_CR;
    unsigned int         Reserved_68;
    U_DHDSTATE           DHDSTATE;
    unsigned int         Reserved_69[67];
    U_DSDCTRL            DSDCTRL;
    U_DSDVSYNC           DSDVSYNC;
    U_DSDHSYNC1          DSDHSYNC1;
    U_DSDHSYNC2          DSDHSYNC2;
    U_DSDVPLUS           DSDVPLUS;
    U_DSDPWR             DSDPWR;
    U_DSDVTTHD3          DSDVTTHD3;
    U_DSDVTTHD           DSDVTTHD;
    U_DSDCSCIDC          DSDCSCIDC;
    U_DSDCSCODC          DSDCSCODC;
    U_DSDCSCP0           DSDCSCP0;
    U_DSDCSCP1           DSDCSCP1;
    U_DSDCSCP2           DSDCSCP2;
    U_DSDCSCP3           DSDCSCP3;
    U_DSDCSCP4           DSDCSCP4;
    unsigned int         Reserved_70;
    U_DSDCLIPL           DSDCLIPL;
    U_DSDCLIPH           DSDCLIPH;
    unsigned int         Reserved_71[2];
    U_DSDFRMTHD          DSDFRMTHD;
    unsigned int         Reserved_72[35];
    U_DSD_CHECKSUM_Y     DSD_CHECKSUM_Y;
    U_DSD_CHECKSUM_CB    DSD_CHECKSUM_CB;
    U_DSD_CHECKSUM_CR    DSD_CHECKSUM_CR;
    unsigned int         Reserved_73;
    U_DSDSTATE           DSDSTATE;
    unsigned int         Reserved_74[3];
    U_HDATE_VERSION      HDATE_VERSION;
    U_HDATE_EN           HDATE_EN;
    U_HDATE_POLA_CTRL    HDATE_POLA_CTRL;
    U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;
    U_HDATE_STATE        HDATE_STATE;
    U_HDATE_OUT_CTRL     HDATE_OUT_CTRL;
    U_HDATE_SRC_13_COEF1 HDATE_SRC_13_COEF1;
    U_HDATE_SRC_13_COEF2 HDATE_SRC_13_COEF2;
    U_HDATE_SRC_13_COEF3 HDATE_SRC_13_COEF3;
    U_HDATE_SRC_13_COEF4 HDATE_SRC_13_COEF4;
    U_HDATE_SRC_13_COEF5 HDATE_SRC_13_COEF5;
    U_HDATE_SRC_13_COEF6 HDATE_SRC_13_COEF6;
    U_HDATE_SRC_13_COEF7 HDATE_SRC_13_COEF7;
    U_HDATE_SRC_13_COEF8 HDATE_SRC_13_COEF8;
    U_HDATE_SRC_13_COEF9 HDATE_SRC_13_COEF9;
    U_HDATE_SRC_13_COEF10 HDATE_SRC_13_COEF10;
    U_HDATE_SRC_13_COEF11 HDATE_SRC_13_COEF11;
    U_HDATE_SRC_13_COEF12 HDATE_SRC_13_COEF12;
    U_HDATE_SRC_13_COEF13 HDATE_SRC_13_COEF13;
    U_HDATE_SRC_24_COEF1 HDATE_SRC_24_COEF1;
    U_HDATE_SRC_24_COEF2 HDATE_SRC_24_COEF2;
    U_HDATE_SRC_24_COEF3 HDATE_SRC_24_COEF3;
    U_HDATE_SRC_24_COEF4 HDATE_SRC_24_COEF4;
    U_HDATE_SRC_24_COEF5 HDATE_SRC_24_COEF5;
    U_HDATE_SRC_24_COEF6 HDATE_SRC_24_COEF6;
    U_HDATE_SRC_24_COEF7 HDATE_SRC_24_COEF7;
    U_HDATE_SRC_24_COEF8 HDATE_SRC_24_COEF8;
    U_HDATE_SRC_24_COEF9 HDATE_SRC_24_COEF9;
    U_HDATE_SRC_24_COEF10 HDATE_SRC_24_COEF10;
    U_HDATE_SRC_24_COEF11 HDATE_SRC_24_COEF11;
    U_HDATE_SRC_24_COEF12 HDATE_SRC_24_COEF12;
    U_HDATE_SRC_24_COEF13 HDATE_SRC_24_COEF13;
    U_HDATE_CSC_COEF1    HDATE_CSC_COEF1;
    U_HDATE_CSC_COEF2    HDATE_CSC_COEF2;
    U_HDATE_CSC_COEF3    HDATE_CSC_COEF3;
    U_HDATE_CSC_COEF4    HDATE_CSC_COEF4;
    U_HDATE_CSC_COEF5    HDATE_CSC_COEF5;
    U_HDATE_SRC_EN       HDATE_SRC_EN;
    U_HDATE_CSC_EN       HDATE_CSC_EN;
    unsigned int         Reserved_75;
    U_HDATE_TEST         HDATE_TEST;
    U_HDATE_VBI_CTRL     HDATE_VBI_CTRL;
    U_HDATE_CGMSA_DATA   HDATE_CGMSA_DATA;
    U_HDATE_CGMSB_H      HDATE_CGMSB_H;
    U_HDATE_CGMSB_DATA1  HDATE_CGMSB_DATA1;
    U_HDATE_CGMSB_DATA2  HDATE_CGMSB_DATA2;
    U_HDATE_CGMSB_DATA3  HDATE_CGMSB_DATA3;
    U_HDATE_CGMSB_DATA4  HDATE_CGMSB_DATA4;
    U_HDATE_DACDET1      HDATE_DACDET1;
    U_HDATE_DACDET2      HDATE_DACDET2;
    U_HDATE_SRC_13_COEF14 HDATE_SRC_13_COEF14;
    U_HDATE_SRC_13_COEF15 HDATE_SRC_13_COEF15;
    U_HDATE_SRC_13_COEF16 HDATE_SRC_13_COEF16;
    U_HDATE_SRC_13_COEF17 HDATE_SRC_13_COEF17;
    U_HDATE_SRC_13_COEF18 HDATE_SRC_13_COEF18;
    U_HDATE_SRC_24_COEF14 HDATE_SRC_24_COEF14;
    U_HDATE_SRC_24_COEF15 HDATE_SRC_24_COEF15;
    U_HDATE_SRC_24_COEF16 HDATE_SRC_24_COEF16;
    U_HDATE_SRC_24_COEF17 HDATE_SRC_24_COEF17;
    U_HDATE_SRC_24_COEF18 HDATE_SRC_24_COEF18;
    unsigned int         Reserved_76[68];
    U_DATE_COEFF0        DATE_COEFF0;
    U_DATE_COEFF1        DATE_COEFF1;
    U_DATE_COEFF2        DATE_COEFF2;
    U_DATE_COEFF3        DATE_COEFF3;
    U_DATE_COEFF4        DATE_COEFF4;
    U_DATE_COEFF5        DATE_COEFF5;
    U_DATE_COEFF6        DATE_COEFF6;
    U_DATE_COEFF7        TtxLineEnable;
    U_DATE_COEFF8        TtxStartAddr;
    U_DATE_COEFF9        TtxEndAddr;
    U_DATE_COEFF10       TtxConfig;
    U_DATE_COEFF11       CCConfig;
    U_DATE_COEFF12       CCData;
    U_DATE_COEFF13       DATE_COEFF13;
    U_DATE_COEFF14       DATE_COEFF14;
    U_DATE_COEFF15       WSSConfig;
    U_DATE_COEFF16       DATE_COEFF16;
    U_DATE_COEFF17       DATE_COEFF17;
    U_DATE_COEFF18       DATE_COEFF18;
    U_DATE_COEFF19       DATE_COEFF19;
    U_DATE_COEFF20       DATE_COEFF20;
    U_DATE_COEFF21       DATE_COEFF21;
    U_DATE_COEFF22       DATE_COEFF22;
    U_DATE_COEFF23       DATE_COEFF23;
    U_DATE_COEFF24       DATE_COEFF24;
    U_DATE_COEFF25       DATE_COEFF25;
    U_DATE_COEFF26       DATE_COEFF26;
    U_DATE_COEFF27       DATE_COEFF27;
    U_DATE_COEFF28       DATE_COEFF28;
    U_DATE_COEFF29       DATE_COEFF29;
    U_DATE_COEFF30       DATE_COEFF30;
    unsigned int         Reserved_77;
    U_DATE_ISRMASK       DATE_ISRMASK;
    U_DATE_ISRSTATE      DATE_ISRSTATE;
    U_DATE_ISR           DATE_ISR;
    unsigned int         Reserved_78;
    U_DATE_VERSION       DATE_VERSION;
    U_DATE_COEFF37       DATE_COEFF37;
    U_DATE_COEFF38       DATE_COEFF38;
    U_DATE_COEFF39       DATE_COEFF39;
    U_DATE_COEFF40       DATE_COEFF40;
    U_DATE_COEFF41       DATE_COEFF41;
    U_DATE_COEFF42       DATE_COEFF42;
    unsigned int         Reserved_79[5];
    U_DATE_DACDET1       DATE_DACDET1;
    U_DATE_DACDET2       DATE_DACDET2;
    U_DATE_COEFF50       DATE_COEFF50;
    U_DATE_COEFF51       DATE_COEFF51;
    U_DATE_COEFF52       DATE_COEFF52;
    U_DATE_COEFF53       DATE_COEFF53;
    U_DATE_COEFF54       DATE_COEFF54;
    U_DATE_COEFF55       DATE_COEFF55;
    U_DATE_COEFF56       DATE_COEFF56;
    U_DATE_COEFF57       DATE_COEFF57;
    U_DATE_COEFF58       DATE_COEFF58;
    U_DATE_COEFF59       DATE_COEFF59;
    U_DATE_COEFF60       DATE_COEFF60;
    U_DATE_COEFF61       DATE_COEFF61;
    U_DATE_COEFF62       DATE_COEFF62;
    U_DATE_COEFF63       DATE_COEFF63;
    U_DATE_COEFF64       DATE_COEFF64;
    U_DATE_COEFF65       DATE_COEFF65;
    U_DATE_COEFF66       DATE_COEFF66;
    U_DATE_COEFF67       DATE_COEFF67;
    U_DATE_COEFF68       DATE_COEFF68;
    U_DATE_COEFF69       DATE_COEFF69;
    U_DATE_COEFF70       DATE_COEFF70;
    U_DATE_COEFF71       DATE_COEFF71;
    U_DATE_COEFF72       DATE_COEFF72;
    U_DATE_COEFF73       DATE_COEFF73;
    U_DATE_COEFF74       DATE_COEFF74;
    U_DATE_COEFF75       DATE_COEFF75;
    U_DATE_COEFF76       DATE_COEFF76;
    U_DATE_COEFF77       DATE_COEFF77;
    U_DATE_COEFF78       DATE_COEFF78;
    U_DATE_COEFF79       DATE_COEFF79;
    U_DATE_COEFF80       DATE_COEFF80;
    U_DATE_COEFF81       DATE_COEFF81;
    U_DATE_COEFF82       DATE_COEFF82;
    U_DATE_COEFF83       DATE_COEFF83;
    U_DATE_COEFF84       DATE_COEFF84;
    unsigned int         Reserved_80[555];
    U_VHDHLCOEF          VHDHLCOEF[68];
    unsigned int         Reserved_81[60];
    U_VHDHCCOEF          VHDHCCOEF[34];
    unsigned int         Reserved_82[94];
    U_VHDVLCOEF          VHDVLCOEF[68];
    unsigned int         Reserved_83[60];
    U_VHDVCCOEF          VHDVCCOEF[34];
    unsigned int         Reserved_84[606];
    U_VSDHLCOEF          VSDHLCOEF[68];
    unsigned int         Reserved_85[60];
    U_VSDHCCOEF          VSDHCCOEF[34];
    unsigned int         Reserved_86[94];
    U_VSDVLCOEF          VSDVLCOEF[34];
    unsigned int         Reserved_87[94];
    U_VSDVCCOEF          VSDVCCOEF[34];
    unsigned int         Reserved_88[606];
    U_G0HLCOEF           G0HLCOEF[32];
    unsigned int         Reserved_89[32];
    U_G0HCCOEF           G0HCCOEF[32];
    unsigned int         Reserved_90[32];
    U_G0VLCOEF           G0VLCOEF[32];
    unsigned int         Reserved_91[32];
    U_G0VCCOEF           G0VCCOEF[32];
    unsigned int         Reserved_92[32];
    U_G1HLCOEF           G1HLCOEF[32];
    unsigned int         Reserved_93[32];
    U_G1HCCOEF           G1HCCOEF[32];
    unsigned int         Reserved_94[32];
    U_G1VLCOEF           G1VLCOEF[32];
    unsigned int         Reserved_95[32];
    U_G1VCCOEF           G1VCCOEF[32];
    unsigned int         Reserved_96[544];
    U_DHDGAMMAN          DHDGAMMAN[33];
    unsigned int         Reserved_97[991];
    U_VHDHLTICOEF        VHDHLTICOEF[69];
    unsigned int         Reserved_98[3];
    U_VHDHCTICOEF        VHDHCTICOEF[35];
    unsigned int         Reserved_99[21];
    U_VHDVLTICOEF        VHDVLTICOEF[17];
    unsigned int         Reserved_100[47];
    U_VHDVCTICOEF        VHDVCTICOEF[17];
    unsigned int         Reserved_101[47];
    U_G0HLTICOEF         G0HLTICOEF[12];
    unsigned int         Reserved_102[52];
    U_G0HCTICOEF         G0HCTICOEF[12];
    unsigned int         Reserved_103[52];
    U_G0VLTICOEF         G0VLTICOEF[16];
    unsigned int         Reserved_104[48];
    U_G0VCTICOEF         G0VCTICOEF[16];
    unsigned int         Reserved_105[1712];
    U_VIDCTRL            VIDCTRL;
    U_VIDBLKPOS0_1       VIDBLKPOS0_1;
    U_VIDBLKPOS2_3       VIDBLKPOS2_3;
    U_VIDBLKPOS4_5       VIDBLKPOS4_5;
    U_VIDBLK0TOL0        VIDBLK0TOL0;
    U_VIDBLK0TOL1        VIDBLK0TOL1;
    U_VIDBLK1TOL0        VIDBLK1TOL0;
    U_VIDBLK1TOL1        VIDBLK1TOL1;
    U_VIDBLK2TOL0        VIDBLK2TOL0;
    U_VIDBLK2TOL1        VIDBLK2TOL1;
    U_VIDBLK3TOL0        VIDBLK3TOL0;
    U_VIDBLK3TOL1        VIDBLK3TOL1;
    U_VIDBLK4TOL0        VIDBLK4TOL0;
    U_VIDBLK4TOL1        VIDBLK4TOL1;
    U_VIDBLK5TOL0        VIDBLK5TOL0;
    U_VIDBLK5TOL1        VIDBLK5TOL1;
    unsigned int         Reserved_106[880];
    U_VOUENVDEBUG0       VOUENVDEBUG0;
    U_VOUENVDEBUG1       VOUENVDEBUG1;


} S_VOU_V400_REGS_TYPE;

// Declare the struct pointor of the module VOU
extern S_VOU_V400_REGS_TYPE *gopVOU_V400AllReg;



#endif // __C_UNION_DEFINE_H__
