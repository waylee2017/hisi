
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
 *
 *******************************************************************************
 * File name     : optm_reg_v200.h
 * Version       : 2.0
 * Author        : xxx
 * Created       : 2011-12-08
 * Last Modified : 
 * Description   :  add difference for mv300 vou reg
 * Function List : 
 * History       : 
 * 1 Date        : 
 * Author        : xxx
 * Modification  : Create file
 *******************************************************************************/
#ifndef __OPTM_REG_V200_H__
#define __OPTM_REG_V200_H__

#include  "optm_reg.h"
// Define the union U_VHDLKEY
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_low              : 8   ; // [7..0]
        unsigned int    luma_high             : 8   ; // [15..8]
        unsigned int    luma_mask             : 8   ; // [23..16]
        unsigned int    Reserved_0            : 7   ; // [30..24]
        unsigned int    luma_key_en           : 1   ; // [31]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDLKEY;
// Define the union U_VHDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP0_V200;

// Define the union U_VHDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP1_V200;

// Define the union U_VHDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP2_V200;

// Define the union U_VHDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP3_V200;

// Define the union U_VHDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDCSCP4_V200;
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
        unsigned int    Reserved_0            : 18  ; // [28..11]
        unsigned int    die_st_mode           : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VHDDIELMA2_V200;

// Define the union U_VADLKEY
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_low              : 8   ; // [7..0]
        unsigned int    luma_high             : 8   ; // [15..8]
        unsigned int    luma_mask             : 8   ; // [23..16]
        unsigned int    Reserved_0            : 7   ; // [30..24]
        unsigned int    luma_key_en           : 1   ; // [31]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADLKEY;

// Define the union U_VADCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADCSCP0_V200;

// Define the union U_VADCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADCSCP1_V200;

// Define the union U_VADCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADCSCP2_V200;

// Define the union U_VADCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADCSCP3_V200;

// Define the union U_VADCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VADCSCP4_V200;
// Define the union U_VSDLKEY
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    luma_low              : 8   ; // [7..0]
        unsigned int    luma_high             : 8   ; // [15..8]
        unsigned int    luma_mask             : 8   ; // [23..16]
        unsigned int    Reserved_0            : 7   ; // [30..24]
        unsigned int    luma_key_en           : 1   ; // [31]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDLKEY;

// Define the union U_VSDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP0_V200;

// Define the union U_VSDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP1_V200;

// Define the union U_VSDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP2_V200;

// Define the union U_VSDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP3_V200;

// Define the union U_VSDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_VSDCSCP4_V200;

// Define the union U_G0CSCIDC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscidc0               : 9   ; // [8..0]
        unsigned int    cscidc1               : 9   ; // [17..9]
        unsigned int    cscidc2               : 9   ; // [26..18]
        unsigned int    csc_en                : 1   ; // [27]
        unsigned int    Reserved_0            : 4   ; // [31..28]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCIDC_V200;

// Define the union U_G0CSCODC
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscodc0               : 9   ; // [8..0]
        unsigned int    cscodc1               : 9   ; // [17..9]
        unsigned int    cscodc2               : 9   ; // [26..18]
        unsigned int    Reserved_0            : 5   ; // [31..27]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCODC_V200;


// Define the union U_G0CSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP0_V200;

// Define the union U_G0CSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP1_V200;


// Define the union U_G0CSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP2_V200;

// Define the union U_G0CSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP3_V200;


// Define the union U_G0CSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G0CSCP4_V200;

// Define the union U_G1CSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP0_V200;

// Define the union U_G1CSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP1_V200;

// Define the union U_G1CSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP2_V200;

// Define the union U_G1CSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP3_V200;

// Define the union U_G1CSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_G1CSCP4_V200;

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
        unsigned int    Reserved_1            : 1   ; // [15]
        unsigned int    mixer_v_pro0          : 1   ; // [16]
        unsigned int    mixer_v_pro1          : 1   ; // [17]
        unsigned int    bk_v_alpha_sel        : 1   ; // [18]
        unsigned int    mixer_v_en            : 1   ; // [19]
        unsigned int    Reserved_0            : 12  ; // [31..20]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_CBMMIX1_V200;

// Define the union U_DHDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP0_V200;

// Define the union U_DHDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP1_V200;

// Define the union U_DHDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP2_V200;

// Define the union U_DHDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP3_V200;

// Define the union U_DHDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DHDCSCP4_V200;

// Define the union U_DSDCSCP0
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp00                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp01                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP0_V200;

// Define the union U_DSDCSCP1
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp02                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp10                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP1_V200;

// Define the union U_DSDCSCP2
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp11                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp12                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP2_V200;

// Define the union U_DSDCSCP3
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp20                : 13  ; // [12..0]
        unsigned int    Reserved_1            : 3   ; // [15..13]
        unsigned int    cscp21                : 13  ; // [28..16]
        unsigned int    Reserved_0            : 3   ; // [31..29]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP3_V200;

// Define the union U_DSDCSCP4
typedef union
{
    // Define the struct bits
    struct
    {
        unsigned int    cscp22                : 13  ; // [12..0]
        unsigned int    Reserved_0            : 19  ; // [31..13]
    } bits;

    // Define an unsigned member
    unsigned int    u32;

} U_DSDCSCP4_V200;

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
    U_VOLNKLSTCTRL       VOLNKLSTCTRL;
    U_VOLNKLSTADDR       VOLNKLSTADDR;
    U_VOLNKLSTSTRT       VOLNKLSTSTRT;
    U_VOLNKLSTPENDINGSTA VOLNKLSTPENDINGSTA;
    U_VOLNKLSTWORKINGSTA VOLNKLSTWORKINGSTA;
    U_VOLNKLSTENDSTA     VOLNKLSTENDSTA;
    U_VOLNKLSTNUMSTA     VOLNKLSTNUMSTA;
    U_VOPARAUP           VOPARAUP;
    U_VHDHCOEFAD         VHDHCOEFAD;
    U_VHDVCOEFAD         VHDVCOEFAD;
    U_VADHCOEFAD         VADHCOEFAD;
    U_VADVCOEFAD         VADVCOEFAD;
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
    unsigned int         Reserved_0[25];
    U_DACCTRL0_2         DACCTRL0_2;
    U_DACCTRL3_5         DACCTRL3_5;
    U_DACSTAT0_2         DACSTAT0_2;
    U_DACSTAT3_5         DACSTAT3_5;
    U_DACBANDGAP         DACBANDGAP;
    unsigned int         Reserved_1[3];
    U_VHDCTRL            VHDCTRL;
    U_VHDUPD             VHDUPD;
    U_VHDLADDR           VHDLADDR;
    U_VHDLCADDR          VHDLCADDR;
    U_VHDCADDR           VHDCADDR;
    U_VHDCCADDR          VHDCCADDR;
    U_VHDNADDR           VHDNADDR;
    U_VHDNCADDR          VHDNCADDR;
    unsigned int         Reserved_2;
    U_VHDSTRIDE          VHDSTRIDE;
    U_VHDIRESO           VHDIRESO;
    unsigned int         Reserved_3;
    U_VHDLKEY            VHDLKEY;
    U_VHDCBMPARA         VHDCBMPARA;
    U_VHDDIEADDR         VHDDIEADDR;
    U_VHDWBC1ADDR        VHDWBC1ADDR;
    U_VHDWBC1STRD        VHDWBC1STRD;
    U_VHDDIESTADDR       VHDDIESTADDR;
    unsigned int         Reserved_4[6];
    U_VHDDFPOS           VHDDFPOS;
    U_VHDDLPOS           VHDDLPOS;
    U_VHDVFPOS           VHDVFPOS;
    U_VHDVLPOS           VHDVLPOS;
    U_VHDBK              VHDBK;
    unsigned int         Reserved_5[3];
    U_VHDCSCIDC          VHDCSCIDC;
    U_VHDCSCODC          VHDCSCODC;
    U_VHDCSCP0_V200           VHDCSCP0;
    U_VHDCSCP1_V200           VHDCSCP1;
    U_VHDCSCP2_V200           VHDCSCP2;
    U_VHDCSCP3_V200           VHDCSCP3;
    U_VHDCSCP4_V200           VHDCSCP4;
    unsigned int         Reserved_6;
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
    unsigned int         Reserved_7[3];
    U_VHDVSP             VHDVSP;
    U_VHDVSR             VHDVSR;
    U_VHDVOFFSET         VHDVOFFSET;
    U_VHDZMEORESO        VHDZMEORESO;
    U_VHDZMEIRESO        VHDZMEIRESO;
    U_VHDZMEDBG          VHDZMEDBG;
    unsigned int         Reserved_8[4];
    U_VHDACCTHD1         VHDACCTHD1;
    U_VHDACCTHD2         VHDACCTHD2;
    unsigned int         Reserved_9[2];
    U_VHDACCLOWN         VHDACCLOWN[3];
    unsigned int         Reserved_10;
    U_VHDACCMEDN         VHDACCMEDN[3];
    unsigned int         Reserved_11;
    U_VHDACCHIGHN        VHDACCHIGHN[3];
    unsigned int         Reserved_12;
    U_VHDACCMLN          VHDACCMLN[3];
    unsigned int         Reserved_13;
    U_VHDACCMHN          VHDACCMHN[3];
    unsigned int         Reserved_14;
    U_VHDACC3LOW         VHDACC3LOW;
    U_VHDACC3MED         VHDACC3MED;
    U_VHDACC3HIGH        VHDACC3HIGH;
    U_VHDACC8MLOW        VHDACC8MLOW;
    U_VHDACC8MHIGH       VHDACC8MHIGH;
    U_VHDACCTOTAL        VHDACCTOTAL;
    unsigned int         Reserved_15[2];
    U_VHDIFIRCOEF01      VHDIFIRCOEF01;
    U_VHDIFIRCOEF23      VHDIFIRCOEF23;
    U_VHDIFIRCOEF45      VHDIFIRCOEF45;
    U_VHDIFIRCOEF67      VHDIFIRCOEF67;
    unsigned int         Reserved_16[28];
    U_VHDDIECTRL         VHDDIECTRL;
    unsigned int         Reserved_17;
    U_VHDDIELMA0         VHDDIELMA0;
    U_VHDDIELMA1         VHDDIELMA1;
    U_VHDDIELMA2_V200         VHDDIELMA2;
    U_VHDDIEINTEN        VHDDIEINTEN;
    U_VHDDIESCALE        VHDDIESCALE;
    U_VHDDIECHECK1       VHDDIECHECK1;
    U_VHDDIECHECK2       VHDDIECHECK2;
    U_VHDDIEDIR0_3       VHDDIEDIR0_3;
    U_VHDDIEDIR4_7       VHDDIEDIR4_7;
    U_VHDDIEDIR8_11      VHDDIEDIR8_11;
    U_VHDDIEDIR12_14     VHDDIEDIR12_14;
    unsigned int         Reserved_18;
    U_VHDDIESTA          VHDDIESTA;
    unsigned int         Reserved_19[26];
    U_VHDDIESTKADDR      VHDDIESTKADDR;
    U_VHDDIESTLADDR      VHDDIESTLADDR;
    U_VHDDIESTMADDR      VHDDIESTMADDR;
    U_VHDDIESTNADDR      VHDDIESTNADDR;
    U_VHDDIESTSQTRADDR   VHDDIESTSQTRADDR;
    U_VHDCCRSCLR0        VHDCCRSCLR0;
    U_VHDCCRSCLR1        VHDCCRSCLR1;
    unsigned int         Reserved_20[16];
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
    U_VADCTRL            VADCTRL;
    U_VADUPD             VADUPD;
    unsigned int         Reserved_21[2];
    U_VADCADDR           VADCADDR;
    U_VADCCADDR          VADCCADDR;
    unsigned int         Reserved_22[3];
    U_VADSTRIDE          VADSTRIDE;
    U_VADIRESO           VADIRESO;
    unsigned int         Reserved_23;
    U_VADLKEY            VADLKEY;
    U_VADCBMPARA         VADCBMPARA;
    unsigned int         Reserved_24[10];
    U_VADDFPOS           VADDFPOS;
    U_VADDLPOS           VADDLPOS;
    U_VADVFPOS           VADVFPOS;
    U_VADVLPOS           VADVLPOS;
    U_VADBK              VADBK;
    unsigned int         Reserved_25[3];
    U_VADCSCIDC          VADCSCIDC;
    U_VADCSCODC          VADCSCODC;
    U_VADCSCP0_V200           VADCSCP0;
    U_VADCSCP1_V200           VADCSCP1;
    U_VADCSCP2_V200           VADCSCP2;
    U_VADCSCP3_V200           VADCSCP3;
    U_VADCSCP4_V200           VADCSCP4;
    unsigned int         Reserved_26;
    U_VADACM0            VADACM0;
    U_VADACM1            VADACM1;
    U_VADACM2            VADACM2;
    U_VADACM3            VADACM3;
    U_VADACM4            VADACM4;
    U_VADACM5            VADACM5;
    U_VADACM6            VADACM6;
    U_VADACM7            VADACM7;
    U_VADHSP             VADHSP;
    U_VADHLOFFSET        VADHLOFFSET;
    U_VADHCOFFSET        VADHCOFFSET;
    unsigned int         Reserved_27[3];
    U_VADVSP             VADVSP;
    U_VADVSR             VADVSR;
    U_VADVOFFSET         VADVOFFSET;
    U_VADZMEORESO        VADZMEORESO;
    U_VADZMEIRESO        VADZMEIRESO;
    U_VADZMEDBG          VADZMEDBG;
    U_VADMOSAIC          VADMOSAIC[4];
    U_VADACCTHD1         VADACCTHD1;
    U_VADACCTHD2         VADACCTHD2;
    unsigned int         Reserved_28[2];
    U_VADACCLOWN         VADACCLOWN[3];
    unsigned int         Reserved_29;
    U_VADACCMEDN         VADACCMEDN[3];
    unsigned int         Reserved_30;
    U_VADACCHIGHN        VADACCHIGHN[3];
    unsigned int         Reserved_31;
    U_VADACCMLN          VADACCMLN[3];
    unsigned int         Reserved_32;
    U_VADACCMHN          VADACCMHN[3];
    unsigned int         Reserved_33;
    U_VADACC3LOW         VADACC3LOW;
    U_VADACC3MED         VADACC3MED;
    U_VADACC3HIGH        VADACC3HIGH;
    U_VADACC8MLOW        VADACC8MLOW;
    U_VADACC8MHIGH       VADACC8MHIGH;
    U_VADACCTOTAL        VADACCTOTAL;
    unsigned int         Reserved_34[2];
    U_VADIFIRCOEF01      VADIFIRCOEF01;
    U_VADIFIRCOEF23      VADIFIRCOEF23;
    U_VADIFIRCOEF45      VADIFIRCOEF45;
    U_VADIFIRCOEF67      VADIFIRCOEF67;
    unsigned int         Reserved_35[28];
    U_VSDCTRL            VSDCTRL;
    U_VSDUPD             VSDUPD;
    unsigned int         Reserved_36[2];
    U_VSDCADDR           VSDCADDR;
    U_VSDCCADDR          VSDCCADDR;
    unsigned int         Reserved_37[3];
    U_VSDSTRIDE          VSDSTRIDE;
    U_VSDIRESO           VSDIRESO;
    unsigned int         Reserved_38;
    U_VSDLKEY            VSDLKEY;
    U_VSDCBMPARA         VSDCBMPARA;
    unsigned int         Reserved_39[10];
    U_VSDDFPOS           VSDDFPOS;
    U_VSDDLPOS           VSDDLPOS;
    U_VSDVFPOS           VSDVFPOS;
    U_VSDVLPOS           VSDVLPOS;
    U_VSDBK              VSDBK;
    unsigned int         Reserved_40[3];
    U_VSDCSCIDC          VSDCSCIDC;
    U_VSDCSCODC          VSDCSCODC;
    U_VSDCSCP0_V200           VSDCSCP0;
    U_VSDCSCP1_V200           VSDCSCP1;
    U_VSDCSCP2_V200           VSDCSCP2;
    U_VSDCSCP3_V200           VSDCSCP3;
    U_VSDCSCP4_V200           VSDCSCP4;
    unsigned int         Reserved_41;
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
    unsigned int         Reserved_42[3];
    U_VSDVSP             VSDVSP;
    U_VSDVSR             VSDVSR;
    U_VSDVOFFSET         VSDVOFFSET;
    U_VSDZMEORESO        VSDZMEORESO;
    U_VSDZMEIRESO        VSDZMEIRESO;
    U_VSDZMEDBG          VSDZMEDBG;
    U_VSDMOSAIC          VSDMOSAIC[4];
    U_VSDACCTHD1         VSDACCTHD1;
    U_VSDACCTHD2         VSDACCTHD2;
    unsigned int         Reserved_43[2];
    U_VSDACCLOWN         VSDACCLOWN[3];
    unsigned int         Reserved_44;
    U_VSDACCMEDN         VSDACCMEDN[3];
    unsigned int         Reserved_45;
    U_VSDACCHIGHN        VSDACCHIGHN[3];
    unsigned int         Reserved_46;
    U_VSDACCMLN          VSDACCMLN[3];
    unsigned int         Reserved_47;
    U_VSDACCMHN          VSDACCMHN[3];
    unsigned int         Reserved_48;
    U_VSDACC3LOW         VSDACC3LOW;
    U_VSDACC3MED         VSDACC3MED;
    U_VSDACC3HIGH        VSDACC3HIGH;
    U_VSDACC8MLOW        VSDACC8MLOW;
    U_VSDACC8MHIGH       VSDACC8MHIGH;
    U_VSDACCTOTAL        VSDACCTOTAL;
    unsigned int         Reserved_49[2];
    U_VSDIFIRCOEF01      VSDIFIRCOEF01;
    U_VSDIFIRCOEF23      VSDIFIRCOEF23;
    U_VSDIFIRCOEF45      VSDIFIRCOEF45;
    U_VSDIFIRCOEF67      VSDIFIRCOEF67;
    unsigned int         Reserved_50[28];
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
    unsigned int         Reserved_51[3];
    U_G0HSP              G0HSP;
    U_G0HOFFSET          G0HOFFSET;
    U_G0VSP              G0VSP;
    U_G0VSR              G0VSR;
    U_G0VOFFSET          G0VOFFSET;
    U_G0ZMEORESO         G0ZMEORESO;
    U_G0ZMEIRESO         G0ZMEIRESO;
    unsigned int         Reserved_52[17];
    U_G0CSCIDC           G0CSCIDC;
    U_G0CSCODC           G0CSCODC;
    U_G0CSCP0_V200            G0CSCP0;
    U_G0CSCP1_V200            G0CSCP1;
    U_G0CSCP2_V200            G0CSCP2;
    U_G0CSCP3_V200            G0CSCP3;
    U_G0CSCP4_V200            G0CSCP4;
    unsigned int         Reserved_53[17];
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
    unsigned int         Reserved_54[3];
    U_G1HSP              G1HSP;
    U_G1HOFFSET          G1HOFFSET;
    U_G1VSP              G1VSP;
    U_G1VSR              G1VSR;
    U_G1VOFFSET          G1VOFFSET;
    U_G1ZMEORESO         G1ZMEORESO;
    U_G1ZMEIRESO         G1ZMEIRESO;
    unsigned int         Reserved_55[17];
    U_G1CSCIDC           G1CSCIDC;
    U_G1CSCODC           G1CSCODC;
    U_G1CSCP0_V200            G1CSCP0;
    U_G1CSCP1_V200            G1CSCP1;
    U_G1CSCP2_V200            G1CSCP2;
    U_G1CSCP3_V200            G1CSCP3;
    U_G1CSCP4_V200            G1CSCP4;
    unsigned int         Reserved_56[17];
    U_HCCTRL             HCCTRL;
    U_HCUPD              HCUPD;
    U_HCADDR             HCADDR;
    U_HCSTRIDE           HCSTRIDE;
    U_HCCBMPARA          HCCBMPARA;
    U_HCCKEYMAX          HCCKEYMAX;
    U_HCCKEYMIN          HCCKEYMIN;
    U_HCCMASK            HCCMASK;
    U_HCIRESO            HCIRESO;
    unsigned int         Reserved_57;
    U_HCSFPOS            HCSFPOS;
    U_HCDFPOS            HCDFPOS;
    U_HCDLPOS            HCDLPOS;
    unsigned int         Reserved_58[27];
    U_HCCSCIDC           HCCSCIDC;
    U_HCCSCODC           HCCSCODC;
    U_HCCSCP0            HCCSCP0;
    U_HCCSCP1            HCCSCP1;
    U_HCCSCP2            HCCSCP2;
    U_HCCSCP3            HCCSCP3;
    U_HCCSCP4            HCCSCP4;
    unsigned int         Reserved_59[17];
    U_WBC0CTRL           WBC0CTRL;
    U_WBC0UPD            WBC0UPD;
    U_WBC0ADDR           WBC0ADDR;
    U_WBC0STRIDE         WBC0STRIDE;
    U_WBC0ORESO          WBC0ORESO;
    U_WBC0FCROP          WBC0FCROP;
    U_WBC0LCROP          WBC0LCROP;
    unsigned int         Reserved_60[57];
    U_WBC2CTRL           WBC2CTRL;
    U_WBC2UPD            WBC2UPD;
    U_WBC2ADDR           WBC2ADDR;
    U_WBC2STRIDE         WBC2STRIDE;
    U_WBC2ORESO          WBC2ORESO;
    unsigned int         Reserved_61[187];
    U_CBMBKG1            CBMBKG1;
    U_CBMBKG2            CBMBKG2;
    U_CBMBKGV            CBMBKGV;
    U_CBMATTR            CBMATTR;
    U_CBMMIX1_V200            CBMMIX1;
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
    U_DHDCSCP0_V200           DHDCSCP0;
    U_DHDCSCP1_V200           DHDCSCP1;
    U_DHDCSCP2_V200           DHDCSCP2;
    U_DHDCSCP3_V200           DHDCSCP3;
    U_DHDCSCP4_V200           DHDCSCP4;
    unsigned int         Reserved_63;
    U_DHDCLIPL           DHDCLIPL;
    U_DHDCLIPH           DHDCLIPH;
    unsigned int         Reserved_64[42];
    U_DHDSTATE           DHDSTATE;
    unsigned int         Reserved_65[67];
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
    U_DSDCSCP0_V200           DSDCSCP0;
    U_DSDCSCP1_V200           DSDCSCP1;
    U_DSDCSCP2_V200           DSDCSCP2;
    U_DSDCSCP3_V200           DSDCSCP3;
    U_DSDCSCP4_V200           DSDCSCP4;
    unsigned int         Reserved_66;
    U_DSDCLIPL           DSDCLIPL;
    U_DSDCLIPH           DSDCLIPH;
    unsigned int         Reserved_67[42];
    U_DSDSTATE           DSDSTATE;
    unsigned int         Reserved_68[3];
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
    unsigned int         Reserved_69[3];
    U_HDATE_TEST         HDATE_TEST;
    U_HDATE_VBI_CTRL     HDATE_VBI_CTRL;
    U_HDATE_CGMSA_DATA   HDATE_CGMSA_DATA;
    U_HDATE_CGMSB_H      HDATE_CGMSB_H;
    U_HDATE_CGMSB_DATA1  HDATE_CGMSB_DATA1;
    U_HDATE_CGMSB_DATA2  HDATE_CGMSB_DATA2;
    U_HDATE_CGMSB_DATA3  HDATE_CGMSB_DATA3;
    U_HDATE_CGMSB_DATA4  HDATE_CGMSB_DATA4;
    unsigned int         Reserved_70[80];

    U_DATE_COEFF0        DATE_COEFF0;
    U_DATE_COEFF1        DATE_COEFF1;
    unsigned int         Reserved_71[5];
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
    unsigned int         Reserved_72[8];

    U_DATE_ISRMASK       DATE_ISRMASK;
    U_DATE_ISRSTATE      DATE_ISRSTATE;
    U_DATE_ISR           DATE_ISR;
    unsigned int         Reserved_73;
    U_DATE_VERSION       DATE_VERSION;
    unsigned int         Reserved_74[603];
    U_VHDHLCOEF          VHDHLCOEF[68];
    unsigned int         Reserved_75[60];
    U_VHDHCCOEF          VHDHCCOEF[34];
    unsigned int         Reserved_76[94];
    U_VHDVLCOEF          VHDVLCOEF[68];
    unsigned int         Reserved_77[60];
    U_VHDVCCOEF          VHDVCCOEF[34];
    unsigned int         Reserved_78[94];
    U_VADHLCOEF          VADHLCOEF[68];
    unsigned int         Reserved_79[60];
    U_VADHCCOEF          VADHCCOEF[34];
    unsigned int         Reserved_80[94];
    U_VADVLCOEF          VADVLCOEF[34];
    unsigned int         Reserved_81[94];
    U_VADVCCOEF          VADVCCOEF[34];
    unsigned int         Reserved_82[94];
    U_VSDHLCOEF          VSDHLCOEF[4];
    unsigned int         Reserved_83[124];
    U_VSDHCCOEF          VSDHCCOEF[34];
    unsigned int         Reserved_84[94];
    U_VSDVLCOEF          VSDVLCOEF[34];
    unsigned int         Reserved_85[94];
    U_VSDVCCOEF          VSDVCCOEF[34];
    unsigned int         Reserved_86[606];
    U_G0HLCOEF           G0HLCOEF[32];
    unsigned int         Reserved_87[32];
    U_G0HCCOEF           G0HCCOEF[32];
    unsigned int         Reserved_88[32];
    U_G0VLCOEF           G0VLCOEF[32];
    unsigned int         Reserved_89[32];
    U_G0VCCOEF           G0VCCOEF[32];
    unsigned int         Reserved_90[32];
    U_G1HLCOEF           G1HLCOEF[32];
    unsigned int         Reserved_91[32];
    U_G1HCCOEF           G1HCCOEF[32];
    unsigned int         Reserved_92[32];
    U_G1VLCOEF           G1VLCOEF[32];
    unsigned int         Reserved_93[32];
    U_G1VCCOEF           G1VCCOEF[32];
    unsigned int         Reserved_94[544];
    U_DHDGAMMAN          DHDGAMMAN[33];
} S_VOU_V400_REGS_TYPE_V200;

#endif //__OPTM_REG_V200_H__





