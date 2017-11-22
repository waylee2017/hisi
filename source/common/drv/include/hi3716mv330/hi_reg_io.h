// ****************************************************************************** 
// Copyright     :  Copyright (C) 2016, Hisilicon Technologies Co. Ltd.
// File name     :  hi_reg_io.h
// Project line  :  Platform And Key Technologies Development
// Department    :  CAD Development Department
// Author        :  xxx
// Version       :  1.0
// Date          :  2013/3/10
// Description   :  The description of xxx project
// Others        :  Generated automatically by nManager V4.0.2.5 
// History       :  xxx 2016/02/04 17:28:56 Create file
// ******************************************************************************

#ifndef __HI_REG_IO_H__
#define __HI_REG_IO_H__

/* Define the union U_ioshare_0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_0             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_0_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_0_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_0_OPD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_0;

/* Define the union U_ioshare_1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_1             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_1_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_1_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_1_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_1;

/* Define the union U_ioshare_2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_2             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_2_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_2_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_2_OPU          : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_2;

/* Define the union U_ioshare_3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_3             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_3_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_3_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_3_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_3;

/* Define the union U_ioshare_4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_4             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_4_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_4_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_4_OPU          : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_4;

/* Define the union U_ioshare_5 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_5             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_5_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_5_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_5_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_5;

/* Define the union U_ioshare_6 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_6             : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_6_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_6_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_6_OPU          : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_6;

/* Define the union U_ioshare_7 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_7             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_7_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_7_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_7_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_7;

/* Define the union U_ioshare_8 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_8             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_8_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_8_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_8_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_8;

/* Define the union U_ioshare_9 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_9             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_9_DS           : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_9_SR           : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_9_PD           : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_9;

/* Define the union U_ioshare_10 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_10            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_10_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_10_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_10_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_10;

/* Define the union U_ioshare_11 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_11            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_11_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_11_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_11_OPU         : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_11;

/* Define the union U_ioshare_12 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_12            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_12_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_12_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_12_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_12;

/* Define the union U_ioshare_13 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_13            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_13_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_13_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_13_OPU         : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_13;

/* Define the union U_ioshare_14 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_14            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_14;

/* Define the union U_ioshare_15 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_15            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_15;

/* Define the union U_ioshare_16 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_16            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_16;

/* Define the union U_ioshare_17 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_17            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_17;

/* Define the union U_ioshare_18 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_18            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_18;

/* Define the union U_ioshare_19 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_19            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_19;

/* Define the union U_ioshare_20 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_20            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_20_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_20_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_20_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_20;

/* Define the union U_ioshare_21 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_21            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_21_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_21_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_21_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_21;

/* Define the union U_ioshare_22 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_22            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_22_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_22_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_22_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_22;

/* Define the union U_ioshare_23 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_23            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_23;

/* Define the union U_ioshare_24 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_24            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_24_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_24_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_24_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_24;

/* Define the union U_ioshare_25 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_25            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_25_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_25_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_25_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_25;

/* Define the union U_ioshare_26 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_26            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 29  ; /* [31..3]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_26;

/* Define the union U_ioshare_27 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_27            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_27_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_27_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 4   ; /* [12..9]  */
        unsigned int    ioctrl_27_PD          : 1   ; /* [13]  */
        unsigned int    reserved_3            : 18  ; /* [31..14]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_27;

/* Define the union U_ioshare_28 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_28            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ioctrl_28_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_28_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_28_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_28;

/* Define the union U_ioshare_29 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_29            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_29;

/* Define the union U_ioshare_30 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_30            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_30;

/* Define the union U_ioshare_31 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_31            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_31;

/* Define the union U_ioshare_32 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_32            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 3   ; /* [3..1]  */
        unsigned int    ioctrl_32_DS          : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_32_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_32_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_32;

/* Define the union U_ioshare_33 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_33            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_33;

/* Define the union U_ioshare_34 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_34            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_34;

/* Define the union U_ioshare_35 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_35            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_35;

/* Define the union U_ioshare_36 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_36            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 2   ; /* [3..2]  */
        unsigned int    ioctrl_36_DS1         : 2   ; /* [5..4]  */
        unsigned int    reserved_1            : 2   ; /* [7..6]  */
        unsigned int    ioctrl_36_SW          : 4   ; /* [11..8]  */
        unsigned int    reserved_2            : 20  ; /* [31..12]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_36;

/* Define the union U_ioshare_37 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_37            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_37;

/* Define the union U_ioshare_38 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_38            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_38;

/* Define the union U_ioshare_39 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_39            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_39;

/* Define the union U_ioshare_40 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_40            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_40;

/* Define the union U_ioshare_41 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 4   ; /* [3..0]  */
        unsigned int    ioctrl_41_DS          : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    ioctrl_41_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_41_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_41;

/* Define the union U_ioshare_42 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_42            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_42;

/* Define the union U_ioshare_43 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_43            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_43;

/* Define the union U_ioshare_44 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 4   ; /* [3..0]  */
        unsigned int    ioctrl_44_DS          : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    ioctrl_44_SR          : 1   ; /* [8]  */
        unsigned int    reserved_2            : 3   ; /* [11..9]  */
        unsigned int    ioctrl_44_PD          : 1   ; /* [12]  */
        unsigned int    reserved_3            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_44;

/* Define the union U_ioshare_45 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_45            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_45;

/* Define the union U_ioshare_46 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_46            : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_46;
//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile U_ioshare_0            ioshare_0;
    volatile U_ioshare_1            ioshare_1;
    volatile U_ioshare_2            ioshare_2;
    volatile U_ioshare_3            ioshare_3;
    volatile U_ioshare_4            ioshare_4;
    volatile U_ioshare_5            ioshare_5;
    volatile U_ioshare_6            ioshare_6;
    volatile U_ioshare_7            ioshare_7;
    volatile U_ioshare_8            ioshare_8;
    volatile U_ioshare_9            ioshare_9;
    volatile U_ioshare_10           ioshare_10;
    volatile U_ioshare_11           ioshare_11;
    volatile U_ioshare_12           ioshare_12;
    volatile U_ioshare_13           ioshare_13;
    volatile U_ioshare_14           ioshare_14;
    volatile U_ioshare_15           ioshare_15;
    volatile U_ioshare_16           ioshare_16;
    volatile U_ioshare_17           ioshare_17;
    volatile U_ioshare_18           ioshare_18;
    volatile U_ioshare_19           ioshare_19;
    volatile U_ioshare_20           ioshare_20;
    volatile U_ioshare_21           ioshare_21;
    volatile U_ioshare_22           ioshare_22;
    volatile U_ioshare_23           ioshare_23;
    volatile U_ioshare_24           ioshare_24;
    volatile U_ioshare_25           ioshare_25;
    volatile U_ioshare_26           ioshare_26;
    volatile U_ioshare_27           ioshare_27;
    volatile U_ioshare_28           ioshare_28;
    volatile U_ioshare_29           ioshare_29;
    volatile U_ioshare_30           ioshare_30;
    volatile U_ioshare_31           ioshare_31;
    volatile U_ioshare_32           ioshare_32;
    volatile U_ioshare_33           ioshare_33;
    volatile U_ioshare_34           ioshare_34;
    volatile U_ioshare_35           ioshare_35;
    volatile U_ioshare_36           ioshare_36;
    volatile U_ioshare_37           ioshare_37;
    volatile U_ioshare_38           ioshare_38;
    volatile U_ioshare_39           ioshare_39               ; /* 0x9c */
    volatile U_ioshare_40           ioshare_40               ; /* 0xa0 */
    volatile U_ioshare_41           ioshare_41               ; /* 0xa4 */
    volatile U_ioshare_42           ioshare_42               ; /* 0xa8 */
    volatile U_ioshare_43           ioshare_43               ; /* 0xac */
    volatile U_ioshare_44           ioshare_44               ; /* 0xb0 */
    volatile U_ioshare_45           ioshare_45               ; /* 0xb4 */
    volatile U_ioshare_46           ioshare_46               ; /* 0xb8 */

} S_IO_REGS_TYPE;


#endif /* __HI_REG_IO_H__ */
