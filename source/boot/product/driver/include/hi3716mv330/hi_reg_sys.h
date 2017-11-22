// ****************************************************************************** 
// Copyright     :  Copyright (C) 2016, Hisilicon Technologies Co. Ltd.
// File name     :  hi_reg_sys.h
// Project line  :  媒体产品线
// Department    :  STB开发部
// Author        :  fangqiubin 00179307
// Version       :  1.0
// Date          :  2013/1/17
// Description   :  项目描述信息
// Others        :  Generated automatically by nManager V4.0.2.5 
// History       :  fangqiubin 00179307 2016/02/04 17:32:23 Create file
// ******************************************************************************

#ifndef __HI_REG_SYS_H__
#define __HI_REG_SYS_H__

/* Define the union U_SC_LOW_POWER_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 1   ; /* [0]  */
        unsigned int    stb_poweroff          : 1   ; /* [1]  */
        unsigned int    reserved_1            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_SC_LOW_POWER_CTRL;

/* Define the union U_SC_CLKGATE_SRST_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 4   ; /* [3..0]  */
        unsigned int    ir_cken               : 1   ; /* [4]  */
        unsigned int    ir_srst_req           : 1   ; /* [5]  */
        unsigned int    timer01_cken          : 1   ; /* [6]  */
        unsigned int    timer01_srst_req      : 1   ; /* [7]  */
        unsigned int    led_cken              : 1   ; /* [8]  */
        unsigned int    led_srst_req          : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    uart_cken             : 1   ; /* [12]  */
        unsigned int    uart_srst_req         : 1   ; /* [13]  */
        unsigned int    reserved_2            : 15  ; /* [28..14]  */
        unsigned int    uart_sel              : 1   ; /* [29]  */
        unsigned int    reserved_3            : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_SC_CLKGATE_SRST_CTRL;

/* Define the union U_SC_WDG_RST_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    wdg_rst_ctrl          : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_SC_WDG_RST_CTRL;

/* Define the union U_SC_DDRPHY_LP_EN */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddrphy_lp_en          : 2   ; /* [1..0]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_SC_DDRPHY_LP_EN;

/* Define the union U_SC_DDRCA_RANDOM_LOCK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddrca_random_lock     : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_SC_DDRCA_RANDOM_LOCK;

//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile unsigned int           reserved_x;
    volatile unsigned int           SC_SYSRES;
    volatile unsigned int           reserved_0[14]                     ; /* 0x8~0x3c */
    volatile U_SC_LOW_POWER_CTRL    SC_LOW_POWER_CTRL;
    volatile unsigned int           reserved_1                     ; /* 0x44 */
    volatile U_SC_CLKGATE_SRST_CTRL SC_CLKGATE_SRST_CTRL;
    volatile unsigned int           reserved_2                     ; /* 0x4c */
    volatile U_SC_WDG_RST_CTRL      SC_WDG_RST_CTRL;
    volatile unsigned int           reserved_3                     ; /* 0x54 */
    volatile U_SC_DDRPHY_LP_EN      SC_DDRPHY_LP_EN;
    volatile unsigned int           reserved_4[9]                     ; /* 0x5c~0x7c */
    volatile unsigned int           SC_GEN0                  ; /* 0x80 */
    volatile unsigned int           SC_GEN1                  ; /* 0x84 */
    volatile unsigned int           SC_GEN2                  ; /* 0x88 */
    volatile unsigned int           SC_GEN3                  ; /* 0x8c */
    volatile unsigned int           SC_GEN4                  ; /* 0x90 */
    volatile unsigned int           SC_GEN5                  ; /* 0x94 */
    volatile unsigned int           SC_GEN6                  ; /* 0x98 */
    volatile unsigned int           SC_GEN7                  ; /* 0x9c */
    volatile unsigned int           SC_GEN8                  ; /* 0xa0 */
    volatile unsigned int           SC_GEN9                  ; /* 0xa4 */
    volatile unsigned int           SC_GEN10                 ; /* 0xa8 */
    volatile unsigned int           SC_GEN11                 ; /* 0xac */
    volatile unsigned int           SC_GEN12                 ; /* 0xb0 */
    volatile unsigned int           SC_GEN13                 ; /* 0xb4 */
    volatile unsigned int           SC_GEN14                 ; /* 0xb8 */
    volatile unsigned int           SC_GEN15                 ; /* 0xbc */
    volatile unsigned int           SC_GEN16                 ; /* 0xc0 */
    volatile unsigned int           SC_GEN17                 ; /* 0xc4 */
    volatile unsigned int           SC_GEN18                 ; /* 0xc8 */
    volatile unsigned int           SC_GEN19                 ; /* 0xcc */
    volatile unsigned int           SC_GEN20                 ; /* 0xd0 */
    volatile unsigned int           SC_GEN21                 ; /* 0xd4 */
    volatile unsigned int           SC_GEN22                 ; /* 0xd8 */
    volatile unsigned int           SC_GEN23                 ; /* 0xdc */
    volatile unsigned int           SC_GEN24                 ; /* 0xe0 */
    volatile unsigned int           SC_GEN25                 ; /* 0xe4 */
    volatile unsigned int           SC_GEN26                 ; /* 0xe8 */
    volatile unsigned int           SC_GEN27                 ; /* 0xec */
    volatile unsigned int           SC_GEN28                 ; /* 0xf0 */
    volatile unsigned int           SC_GEN29                 ; /* 0xf4 */
    volatile unsigned int           SC_GEN30                 ; /* 0xf8 */
    volatile unsigned int           SC_GEN31                 ; /* 0xfc */
    volatile unsigned int           reserved_5[67]                     ; /* 0x100~0x208 */
	volatile unsigned int           SC_LOCKEN;
    volatile unsigned int           reserved_6[816]                     ; /* 0x210~0xecc */
    volatile U_SC_DDRCA_RANDOM_LOCK SC_DDRCA_RANDOM_LOCK;
    volatile unsigned int           SC_DDRCA_RANDOM0;
    volatile unsigned int           SC_DDRCA_RANDOM1;
    volatile unsigned int           reserved_7                     ; /* 0xedc */
    volatile unsigned int           SC_SYSID0;
    volatile unsigned int           SC_SYSID1;
    volatile unsigned int           SC_SYSID2;
    volatile unsigned int           SC_SYSID3;
    volatile unsigned int           reserved_8[4]                     ; /* 0xef0~0xefc */
	volatile unsigned int           SC_GEN32                 ; /* 0xf00 */
    volatile unsigned int           SC_GEN33                 ; /* 0xf04 */
    volatile unsigned int           SC_GEN34                 ; /* 0xf08 */
    volatile unsigned int           SC_GEN35                 ; /* 0xf0c */
    volatile unsigned int           SC_GEN36                 ; /* 0xf10 */
    volatile unsigned int           SC_GEN37                 ; /* 0xf14 */
    volatile unsigned int           SC_GEN38                 ; /* 0xf18 */
    volatile unsigned int           SC_GEN39                 ; /* 0xf1c */
    volatile unsigned int           SC_GEN40                 ; /* 0xf20 */
    volatile unsigned int           SC_GEN41                 ; /* 0xf24 */
    volatile unsigned int           SC_GEN42                 ; /* 0xf28 */
    volatile unsigned int           SC_GEN43                 ; /* 0xf2c */
    volatile unsigned int           SC_GEN44                 ; /* 0xf30 */
    volatile unsigned int           SC_GEN45                 ; /* 0xf34 */
    volatile unsigned int           SC_GEN46                 ; /* 0xf38 */
    volatile unsigned int           SC_GEN47                 ; /* 0xf3c */
    volatile unsigned int           SC_GEN48                 ; /* 0xf40 */
    volatile unsigned int           SC_GEN49                 ; /* 0xf44 */
    volatile unsigned int           SC_GEN50                 ; /* 0xf48 */
    volatile unsigned int           SC_GEN51                 ; /* 0xf4c */
    volatile unsigned int           SC_GEN52                 ; /* 0xf50 */
    volatile unsigned int           SC_GEN53                 ; /* 0xf54 */
    volatile unsigned int           SC_GEN54                 ; /* 0xf58 */
    volatile unsigned int           SC_GEN55                 ; /* 0xf5c */
    volatile unsigned int           SC_GEN56                 ; /* 0xf60 */
    volatile unsigned int           SC_GEN57                 ; /* 0xf64 */
    volatile unsigned int           SC_GEN58                 ; /* 0xf68 */
    volatile unsigned int           SC_GEN59                 ; /* 0xf6c */
    volatile unsigned int           SC_GEN60                 ; /* 0xf70 */
    volatile unsigned int           SC_GEN61                 ; /* 0xf74 */
    volatile unsigned int           SC_GEN62                 ; /* 0xf78 */
    volatile unsigned int           SC_GEN63                 ; /* 0xf7c */

} S_SYS_CTRL_REGS_TYPE;


#endif /* __HI_REG_SYS_H__ */
