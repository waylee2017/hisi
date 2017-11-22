// ****************************************************************************** 
// Copyright     :  Copyright (C) 2016, Hisilicon Technologies Co. Ltd.
// File name     :  hi_reg_peri.h
// Project line  :  媒体产品线
// Department    :  STB产品线
// Author        :  fangqiubin 00179307
// Version       :  1.0
// Date          :  2014/1/17
// Description   :  项目描述信息
// Others        :  Generated automatically by nManager V4.0.2.5 
// History       :  fangqiubin 00179307 2016/02/04 17:31:48 Create file
// ******************************************************************************

#ifndef __HI_REG_PERI_H__
#define __HI_REG_PERI_H__

/* Define the union U_START_MODE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 9   ; /* [8..0]  */
        unsigned int    boot_sel              : 2   ; /* [10..9]  */
        unsigned int    reserved_1            : 21  ; /* [31..11]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_START_MODE;

/* Define the union U_REMAP_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    remap                 : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_REMAP_CTRL;

/* Define the union U_PERI_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cbar_en               : 1   ; /* [0]  */
        unsigned int    reserved_0            : 2   ; /* [2..1]  */
        unsigned int    fe_led_base_od_sel    : 1   ; /* [3]  */
        unsigned int    fe_led_act_od_sel     : 1   ; /* [4]  */
        unsigned int    reserved_1            : 17  ; /* [21..5]  */
        unsigned int    sim0_bypass           : 1   ; /* [22]  */
        unsigned int    sim0_th_ctl           : 3   ; /* [25..23]  */
        unsigned int    sim0_vdd_sel          : 1   ; /* [26]  */
        unsigned int    pvr_tsi1_sel          : 1   ; /* [27]  */
        unsigned int    reserved_2            : 1   ; /* [28]  */
        unsigned int    peri_jtag_sel         : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_CTRL;

/* Define the union U_CPU_STAT */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    pmusecure             : 1   ; /* [0]  */
        unsigned int    reserved_0            : 1   ; /* [1]  */
        unsigned int    pmupriv               : 1   ; /* [2]  */
        unsigned int    reserved_1            : 1   ; /* [3]  */
        unsigned int    standbywfi            : 1   ; /* [4]  */
        unsigned int    reserved_2            : 1   ; /* [5]  */
        unsigned int    standbywfe            : 1   ; /* [6]  */
        unsigned int    reserved_3            : 1   ; /* [7]  */
        unsigned int    deflags0              : 7   ; /* [14..8]  */
        unsigned int    reserved_4            : 7   ; /* [21..15]  */
        unsigned int    smpnamp               : 1   ; /* [22]  */
        unsigned int    reserved_5            : 3   ; /* [25..23]  */
        unsigned int    scuidle               : 1   ; /* [26]  */
        unsigned int    power_state           : 2   ; /* [28..27]  */
        unsigned int    reserved_6            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CPU_STAT;

/* Define the union U_CPU_SET */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cp15sdisable          : 1   ; /* [0]  */
        unsigned int    cfgsdisable           : 1   ; /* [1]  */
        unsigned int    cfgnmfi               : 1   ; /* [2]  */
        unsigned int    eventi                : 1   ; /* [3]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_CPU_SET;

/* Define the union U_PERI_QAM */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    qam_i2c_devaddr       : 7   ; /* [6..0]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QAM;

/* Define the union U_PERI_QAM_ADC0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    opm                   : 2   ; /* [1..0]  */
        unsigned int    use_prev_f            : 1   ; /* [2]  */
        unsigned int    reserved_0            : 2   ; /* [4..3]  */
        unsigned int    endcr                 : 1   ; /* [5]  */
        unsigned int    bctrl                 : 5   ; /* [10..6]  */
        unsigned int    endoutz               : 1   ; /* [11]  */
        unsigned int    selof                 : 1   ; /* [12]  */
        unsigned int    startcal              : 1   ; /* [13]  */
        unsigned int    bcal                  : 2   ; /* [15..14]  */
        unsigned int    fsctrl                : 8   ; /* [23..16]  */
        unsigned int    adcrdy                : 1   ; /* [24]  */
        unsigned int    reserved_1            : 1   ; /* [25]  */
        unsigned int    rfalgi                : 3   ; /* [28..26]  */
        unsigned int    reserved_2            : 3   ; /* [31..29]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QAM_ADC0;

/* Define the union U_PERI_QAM_ADC1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    qamadc_i2c_devaddr    : 7   ; /* [6..0]  */
        unsigned int    enavcmin              : 1   ; /* [7]  */
        unsigned int    i2c_resetz            : 1   ; /* [8]  */
        unsigned int    reserved_0            : 23  ; /* [31..9]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QAM_ADC1;

/* Define the union U_PERI_QOS_CFG0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_m1_awqos          : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    cpu_m1_arqos          : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 5   ; /* [11..7]  */
        unsigned int    aiao_arqos            : 3   ; /* [14..12]  */
        unsigned int    reserved_2            : 1   ; /* [15]  */
        unsigned int    vou_awqos             : 3   ; /* [18..16]  */
        unsigned int    reserved_3            : 1   ; /* [19]  */
        unsigned int    vou_arqos             : 3   ; /* [22..20]  */
        unsigned int    reserved_4            : 1   ; /* [23]  */
        unsigned int    tde_awqos             : 3   ; /* [26..24]  */
        unsigned int    reserved_5            : 1   ; /* [27]  */
        unsigned int    tde_arqos             : 3   ; /* [30..28]  */
        unsigned int    reserved_6            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QOS_CFG0;

/* Define the union U_PERI_QOS_CFG1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ddrt_awqos            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    ddrt_arqos            : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    vdh_awqos             : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    vdh_arqos             : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 9   ; /* [23..15]  */
        unsigned int    dnr_awqos             : 3   ; /* [26..24]  */
        unsigned int    reserved_4            : 1   ; /* [27]  */
        unsigned int    dnr_arqos             : 3   ; /* [30..28]  */
        unsigned int    reserved_5            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QOS_CFG1;

/* Define the union U_PERI_QOS_CFG2 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    jpgd_awqos            : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    jpgd_arqos            : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 9   ; /* [15..7]  */
        unsigned int    qtc_awqos             : 3   ; /* [18..16]  */
        unsigned int    reserved_2            : 9   ; /* [27..19]  */
        unsigned int    fmc_qos               : 3   ; /* [30..28]  */
        unsigned int    reserved_3            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QOS_CFG2;

/* Define the union U_PERI_QOS_CFG3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    sf_qos                : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    pvr_qos               : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    sha_qos               : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    mcipher_qos           : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    usb2_qos              : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 13  ; /* [31..19]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QOS_CFG3;

/* Define the union U_PERI_FEPHY */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fephy_phy_addr        : 5   ; /* [4..0]  */
        unsigned int    fephy_ldo_en          : 1   ; /* [5]  */
        unsigned int    fephy_ldo_enz         : 1   ; /* [6]  */
        unsigned int    fephy_ldo_rstn        : 1   ; /* [7]  */
        unsigned int    soft_fephy_test_en    : 1   ; /* [8]  */
        unsigned int    soft_fephy_iddq_mode  : 1   ; /* [9]  */
        unsigned int    soft_fephy_patch_en   : 1   ; /* [10]  */
        unsigned int    reserved_0            : 1   ; /* [11]  */
        unsigned int    soft_fephy_mdio_mdc   : 1   ; /* [12]  */
        unsigned int    reserved_1            : 1   ; /* [13]  */
        unsigned int    soft_fephy_mdio_i     : 1   ; /* [14]  */
        unsigned int    reserved_2            : 1   ; /* [15]  */
        unsigned int    soft_fephy_gp_i       : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_FEPHY;

/* Define the union U_PERI_USB0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ss_word_if_i          : 1   ; /* [0]  */
        unsigned int    ohci_susp_lgcy_i      : 1   ; /* [1]  */
        unsigned int    app_start_clk_i       : 1   ; /* [2]  */
        unsigned int    ulpi_bypass_en_i      : 1   ; /* [3]  */
        unsigned int    reserved_0            : 1   ; /* [4]  */
        unsigned int    ss_autoppd_on_overcur_en_i : 1   ; /* [5]  */
        unsigned int    ss_ena_incr_align_i   : 1   ; /* [6]  */
        unsigned int    ss_ena_incr4_i        : 1   ; /* [7]  */
        unsigned int    ss_ena_incr8_i        : 1   ; /* [8]  */
        unsigned int    ss_ena_incr16_i       : 1   ; /* [9]  */
        unsigned int    reserved_1            : 12  ; /* [21..10]  */
        unsigned int    ss_hubsetup_min_i     : 1   ; /* [22]  */
        unsigned int    reserved_2            : 5   ; /* [27..23]  */
        unsigned int    chipid                : 1   ; /* [28]  */
        unsigned int    ss_scaledown_mode     : 2   ; /* [30..29]  */
        unsigned int    ohci_0_cntsel_i_n     : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB0;

/* Define the union U_PERI_USB1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    test_wrdata           : 8   ; /* [7..0]  */
        unsigned int    test_addr             : 11  ; /* [18..8]  */
        unsigned int    reserved_0            : 2   ; /* [20..19]  */
        unsigned int    test_wren             : 1   ; /* [21]  */
        unsigned int    test_clk              : 1   ; /* [22]  */
        unsigned int    test_rstn             : 1   ; /* [23]  */
        unsigned int    test_rddata           : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB1;

/* Define the union U_PERI_TIANLA_ADAC0 */
typedef union
{
    /* Define the struct bits */
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

} U_PERI_TIANLA_ADAC0;

/* Define the union U_PERI_TIANLA_ADAC1 */
typedef union
{
    /* Define the struct bits */
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

} U_PERI_TIANLA_ADAC1;

/* Define the union U_PERI_TIANLA_ADAC2 */
typedef union
{
    /* Define the struct bits */
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

} U_PERI_TIANLA_ADAC2;

/* Define the union U_PERI_TIANLA_ADAC3 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    adac_ctrl5            : 8   ; /* [7..0]  */
        unsigned int    adac_ctrl6            : 8   ; /* [15..8]  */
        unsigned int    adac_ctrl7            : 8   ; /* [23..16]  */
        unsigned int    adac_ctrl8            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_TIANLA_ADAC3;

/* Define the union U_PERI_TIANLA_ADAC4 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    adac_ctrl9            : 8   ; /* [7..0]  */
        unsigned int    adac_ctrl10           : 8   ; /* [15..8]  */
        unsigned int    reserved_0            : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_TIANLA_ADAC4;

/* Define the union U_PERI_TIMEOUT_CFG_0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    dolby_flag            : 1   ; /* [0]  */
        unsigned int    reserved_0            : 1   ; /* [1]  */
        unsigned int    dts_flag              : 1   ; /* [2]  */
        unsigned int    peri_chipset_info     : 29  ; /* [31..3]  */
    } bits;
    unsigned int    u32;
} U_CHIPSET_INFO;
typedef union
{
    struct
    {
        unsigned int    cpu_m1_wtout          : 2   ; /* [1..0]  */
        unsigned int    cpu_m1_rtout          : 2   ; /* [3..2]  */
        unsigned int    reserved_0            : 2   ; /* [5..4]  */
        unsigned int    aiao_rtout            : 2   ; /* [7..6]  */
        unsigned int    vou_wtout             : 2   ; /* [9..8]  */
        unsigned int    vou_rtout             : 2   ; /* [11..10]  */
        unsigned int    tde_wtout             : 2   ; /* [13..12]  */
        unsigned int    tde_rtout             : 2   ; /* [15..14]  */
        unsigned int    ddrt_wtout            : 2   ; /* [17..16]  */
        unsigned int    ddrt_rtout            : 2   ; /* [19..18]  */
        unsigned int    vdh_wtout             : 2   ; /* [21..20]  */
        unsigned int    vdh_rtout             : 2   ; /* [23..22]  */
        unsigned int    reserved_1            : 4   ; /* [27..24]  */
        unsigned int    dnr_wtout             : 2   ; /* [29..28]  */
        unsigned int    dnr_rtout             : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_TIMEOUT_CFG_0;

/* Define the union U_PERI_TIMEOUT_CFG_1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    jpgd_wtout            : 2   ; /* [1..0]  */
        unsigned int    jpgd_rtout            : 2   ; /* [3..2]  */
        unsigned int    reserved_0            : 4   ; /* [7..4]  */
        unsigned int    qtc_wtout             : 2   ; /* [9..8]  */
        unsigned int    reserved_1            : 4   ; /* [13..10]  */
        unsigned int    fmc_tout              : 2   ; /* [15..14]  */
        unsigned int    reserved_2            : 6   ; /* [21..16]  */
        unsigned int    usb2_tout             : 2   ; /* [23..22]  */
        unsigned int    mcipher_tout          : 2   ; /* [25..24]  */
        unsigned int    sha_tout              : 2   ; /* [27..26]  */
        unsigned int    pvr_tout              : 2   ; /* [29..28]  */
        unsigned int    sf_tout               : 2   ; /* [31..30]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_TIMEOUT_CFG_1;

/* Define the union U_PERI_SOC_FUSE_0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 16  ; /* [15..0]  */
        unsigned int    chip_id               : 5   ; /* [20..16]  */
        unsigned int    reserved_1            : 7   ; /* [27..21]  */
        unsigned int    otp_ctrl_tsi0         : 1   ; /* [28]  */
        unsigned int    otp_ctrl_tsi1         : 1   ; /* [29]  */
        unsigned int    otp_ctrl_tsi2         : 1   ; /* [30]  */
        unsigned int    otp_ctrl_tsi3         : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_SOC_FUSE_0;

/* Define the union U_PERI_SOC_FUSE_1 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    romboot_sel_lock      : 1   ; /* [8]  */
        unsigned int    reserved_1            : 1   ; /* [9]  */
        unsigned int    otp_vdh_divx3         : 1   ; /* [10]  */
        unsigned int    reserved_2            : 11  ; /* [21..11]  */
        unsigned int    otp_ctrl_usb_otg      : 1   ; /* [22]  */
        unsigned int    reserved_3            : 9   ; /* [31..23]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_SOC_FUSE_1;

//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile U_START_MODE           START_MODE;
    volatile U_REMAP_CTRL           REMAP_CTRL;
    volatile U_PERI_CTRL            PERI_CTRL;
    volatile U_CPU_STAT             CPU_STAT;
    volatile U_CPU_SET              CPU_SET;
    volatile unsigned int           reserved_0[8]                     ; /* 0x14~0x30 */
    volatile U_PERI_QAM             PERI_QAM;
    volatile U_PERI_QAM_ADC0        PERI_QAM_ADC0;
    volatile U_PERI_QAM_ADC1        PERI_QAM_ADC1;
    volatile unsigned int           reserved_1                     ; /* 0x40 */
    volatile U_PERI_QOS_CFG0        PERI_QOS_CFG0;
    volatile U_PERI_QOS_CFG1        PERI_QOS_CFG1;
    volatile U_PERI_QOS_CFG2        PERI_QOS_CFG2;
    volatile U_PERI_QOS_CFG3        PERI_QOS_CFG3;
    volatile unsigned int           reserved_2[49]                     ; /* 0x54~0x114 */
    volatile U_PERI_FEPHY           PERI_FEPHY;
    volatile unsigned int           reserved_3                     ; /* 0x11c */
    volatile U_PERI_USB0            PERI_USB0;
    volatile U_PERI_USB1            PERI_USB1;
    volatile unsigned int           reserved_4[36]                     ; /* 0x128~0x1b4 */
    volatile U_PERI_TIANLA_ADAC0    PERI_TIANLA_ADAC0;
    volatile U_PERI_TIANLA_ADAC1    PERI_TIANLA_ADAC1;
    volatile U_PERI_TIANLA_ADAC2    PERI_TIANLA_ADAC2;
    volatile U_PERI_TIANLA_ADAC3    PERI_TIANLA_ADAC3;
    volatile U_PERI_TIANLA_ADAC4    PERI_TIANLA_ADAC4;
    volatile unsigned int           reserved_5[5]                     ; /* 0x1cc~0x1dc */
    volatile U_CHIPSET_INFO         CHIPSET_INFO;
    volatile unsigned int           reserved_6[3]                     ; /* 0x1e4~0x1ec */
    volatile unsigned int           PERI_SW_SET;
    volatile unsigned int           reserved_7[395]                     ; /* 0x1f4~0x81c */
    volatile U_PERI_TIMEOUT_CFG_0   PERI_TIMEOUT_CFG_0;
    volatile U_PERI_TIMEOUT_CFG_1   PERI_TIMEOUT_CFG_1;
    volatile unsigned int           reserved_8[6]                     ; /* 0x828~0x83c */
    volatile U_PERI_SOC_FUSE_0      PERI_SOC_FUSE_0;
    volatile unsigned int           reserved_9[11]                     ; /* 0x844~0x86c */
    volatile U_PERI_SOC_FUSE_1      PERI_SOC_FUSE_1;

} S_PERI_CTRL_REGS_TYPE;


#endif /* __HI_REG_PERI_H__ */
