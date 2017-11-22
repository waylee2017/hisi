//****************************************************************************** 
// Copyright     :  Copyright (C) 2014, Hisilicon Technologies Co., Ltd.
// File name     :  hi_reg_peri.h
// Author        :  fangqiubin 00179307
// Version       :  1.0 
// Date          :  2014-07-22
// Description   :  Define all registers/tables for PERI_CTRL
// Others        :  Generated automatically by nManager V4.0 
// History       :  fangqiubin 00179307 2014-07-22 Create file
//******************************************************************************

#ifndef __HI_REG_PERI_H__
#define __HI_REG_PERI_H__

/* Define the union U_START_MODE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    reserved_0            : 8   ; /* [7..0]  */
        unsigned int    caboot_en             : 1   ; /* [8]  */
        unsigned int    boot_sel              : 2   ; /* [10..9]  */
        unsigned int    reserved_1            : 3   ; /* [13..11]  */
        unsigned int    chip_id               : 5   ; /* [18..14]  */
        unsigned int    reserved_2            : 1   ; /* [19]  */
        unsigned int    romboot_sel           : 1   ; /* [20]  */
        unsigned int    reserved_3            : 2   ; /* [22..21]  */
        unsigned int    jtag_sel_in           : 1   ; /* [23]  */
        unsigned int    page_size             : 1   ; /* [24]  */
        unsigned int    ecc_type              : 2   ; /* [26..25]  */
        unsigned int    boot_4_wire_cr        : 1   ; /* [27]  */
        unsigned int    reserved_4            : 4   ; /* [31..28]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_START_MODE;

/* Define the union U_PERI_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cbar_en               : 1   ; /* [0]  */
        unsigned int    sim0_pwren_od_sel     : 1   ; /* [1]  */
        unsigned int    sim0_rst_od_sel       : 1   ; /* [2]  */
        unsigned int    fe_led_base_od_sel    : 1   ; /* [3]  */
        unsigned int    fe_led_act_od_sel     : 1   ; /* [4]  */
        unsigned int    reserved_0            : 23  ; /* [27..5]  */
        unsigned int    clk_mhlnx_sel         : 1   ; /* [28]  */
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
        unsigned int    reserved_4            : 9   ; /* [23..15]  */
        unsigned int    l2_idle_stat          : 1   ; /* [24]  */
        unsigned int    l2_clkstopped         : 1   ; /* [25]  */
        unsigned int    scuidle               : 1   ; /* [26]  */
        unsigned int    power_state           : 2   ; /* [28..27]  */
        unsigned int    reserved_5            : 3   ; /* [31..29]  */
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
        unsigned int    l2_spniden            : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
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
        unsigned int    ppsel                 : 1   ; /* [3]  */
        unsigned int    chsel                 : 1   ; /* [4]  */
        unsigned int    endcr                 : 1   ; /* [5]  */
        unsigned int    bctrl                 : 5   ; /* [10..6]  */
        unsigned int    endoutz               : 1   ; /* [11]  */
        unsigned int    selof                 : 1   ; /* [12]  */
        unsigned int    startcal              : 1   ; /* [13]  */
        unsigned int    bcal                  : 2   ; /* [15..14]  */
        unsigned int    fsctrl                : 8   ; /* [23..16]  */
        unsigned int    adcrdy                : 1   ; /* [24]  */
        unsigned int    bitosync              : 1   ; /* [25]  */
        unsigned int    rfalgi                : 3   ; /* [28..26]  */
        unsigned int    rfalgq                : 3   ; /* [31..29]  */
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

/* Define the union U_PERI_PRIORITY_CFG */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    vdh_priority          : 3   ; /* [2..0]  */
        unsigned int    bpd_priority          : 3   ; /* [5..3]  */
        unsigned int    pgd_priority          : 3   ; /* [8..6]  */
        unsigned int    jpgd_priority         : 3   ; /* [11..9]  */
        unsigned int    dnr_priority          : 3   ; /* [14..12]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_PRIORITY_CFG;

/* Define the union U_PERI_QOS_CFG0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_m1_awqos          : 3   ; /* [2..0]  */
        unsigned int    reserved_0            : 1   ; /* [3]  */
        unsigned int    cpu_m1_arqos          : 3   ; /* [6..4]  */
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    aiao_awqos            : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    aiao_arqos            : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    vou_awqos             : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    vou_arqos             : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    tde_awqos             : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 1   ; /* [27]  */
        unsigned int    tde_arqos             : 3   ; /* [30..28]  */
        unsigned int    reserved_7            : 1   ; /* [31]  */
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
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    bpd_awqos             : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    bpd_arqos             : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    dnr_awqos             : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 1   ; /* [27]  */
        unsigned int    dnr_arqos             : 3   ; /* [30..28]  */
        unsigned int    reserved_7            : 1   ; /* [31]  */
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
        unsigned int    reserved_1            : 1   ; /* [7]  */
        unsigned int    pgd_awqos             : 3   ; /* [10..8]  */
        unsigned int    reserved_2            : 1   ; /* [11]  */
        unsigned int    pgd_arqos             : 3   ; /* [14..12]  */
        unsigned int    reserved_3            : 1   ; /* [15]  */
        unsigned int    qtc_awqos             : 3   ; /* [18..16]  */
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    qtc_arqos             : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    mcu_qos               : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 5   ; /* [31..27]  */
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
        unsigned int    reserved_4            : 1   ; /* [19]  */
        unsigned int    nandc_qos             : 3   ; /* [22..20]  */
        unsigned int    reserved_5            : 1   ; /* [23]  */
        unsigned int    sfc_qos               : 3   ; /* [26..24]  */
        unsigned int    reserved_6            : 1   ; /* [27]  */
        unsigned int    spi_nand_qos          : 3   ; /* [30..28]  */
        unsigned int    reserved_7            : 1   ; /* [31]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_QOS_CFG3;

/* Define the union U_PERI_USB_RESUME_INT_MASK */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    usb_phy0_suspend_int_mask : 1   ; /* [0]  */
        unsigned int    usb_phy1_suspend_int_mask : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB_RESUME_INT_MASK;

/* Define the union U_PERI_USB_RESUME_INT_RAWSTAT */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    usb_phy0_suspend_int_rawstat : 1   ; /* [0]  */
        unsigned int    usb_phy1_suspend_int_rawstat : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB_RESUME_INT_RAWSTAT;

/* Define the union U_PERI_USB_RESUME_INT_STAT */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    usb_phy0_suspend_int_stat : 1   ; /* [0]  */
        unsigned int    usb_phy1_suspend_int_stat : 1   ; /* [1]  */
        unsigned int    reserved_0            : 30  ; /* [31..2]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB_RESUME_INT_STAT;

/* Define the union U_PERI_FEPHY */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fephy_phy_addr        : 5   ; /* [4..0]  */
        unsigned int    reserved_0            : 3   ; /* [7..5]  */
        unsigned int    fephy_tclk_enable     : 1   ; /* [8]  */
        unsigned int    afe_tclk_0_div_sel0 : 1   ; /* [9]  */
        unsigned int    fephy_patch_enable    : 1   ; /* [10]  */
        unsigned int    afe_tclk_0_div_sel1 : 1   ; /* [11]  */
        unsigned int    soft_fephy_mdio_mdc   : 1   ; /* [12]  */
        unsigned int    reserved_1            : 1   ; /* [13]  */
        unsigned int    soft_fephy_mdio_i     : 1   ; /* [14]  */
        unsigned int    reserved_2            : 1   ; /* [15]  */
        unsigned int    soft_fephy_gp_i       : 16  ; /* [31..16]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_FEPHY;

/* Define the union U_PERI_FEPHY_LDO_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    fephy_ldo_vset        : 4   ; /* [3..0]  */
        unsigned int    reserved_0            : 28  ; /* [31..4]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_FEPHY_LDO_CTRL;

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
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    reserved_2            : 10  ; /* [21..12]  */
        unsigned int    ss_hubsetup_min_i     : 1   ; /* [22]  */
        unsigned int    reserved_3            : 5   ; /* [27..23]  */
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
        unsigned int    test_addr             : 5   ; /* [12..8]  */
        unsigned int    test_wren             : 1   ; /* [13]  */
        unsigned int    test_clk              : 1   ; /* [14]  */
        unsigned int    test_rstn             : 1   ; /* [15]  */
        unsigned int    test_rddata           : 8   ; /* [23..16]  */
        unsigned int    reserved_0            : 8   ; /* [31..24]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_USB1;

/* Define the union U_PERI_INT_A9TOMCE */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    int_a9tomce           : 1   ; /* [0]  */
        unsigned int    reserved_0            : 31  ; /* [31..1]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_INT_A9TOMCE;

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
        unsigned int    popfreer              : 1   ; /* [24]  */
        unsigned int    popfreel              : 1   ; /* [25]  */
        unsigned int    fs                    : 1   ; /* [26]  */
        unsigned int    pd_vref               : 1   ; /* [27]  */
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

/* Define the union U_CHIPSET_INFO */
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

    /* Define an unsigned member */
    unsigned int    u32;

} U_CHIPSET_INFO;

/* Define the union U_PERI_SPINAND_CTRL */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ctrl_bus              : 6   ; /* [5..0]  */
        unsigned int    dev_internal_ecc      : 1   ; /* [6]  */
        unsigned int    reserved_0            : 25  ; /* [31..7]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_SPINAND_CTRL;

/* Define the union U_PERI_TIMEOUT_CFG_0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    cpu_m1_wtout          : 2   ; /* [1..0]  */
        unsigned int    cpu_m1_rtout          : 2   ; /* [3..2]  */
        unsigned int    aiao_wtout            : 2   ; /* [5..4]  */
        unsigned int    aiao_rtout            : 2   ; /* [7..6]  */
        unsigned int    vou_wtout             : 2   ; /* [9..8]  */
        unsigned int    vou_rtout             : 2   ; /* [11..10]  */
        unsigned int    tde_wtout             : 2   ; /* [13..12]  */
        unsigned int    tde_rtout             : 2   ; /* [15..14]  */
        unsigned int    ddrt_wtout            : 2   ; /* [17..16]  */
        unsigned int    ddrt_rtout            : 2   ; /* [19..18]  */
        unsigned int    vdh_wtout             : 2   ; /* [21..20]  */
        unsigned int    vdh_rtout             : 2   ; /* [23..22]  */
        unsigned int    bpd_wtout             : 2   ; /* [25..24]  */
        unsigned int    bpd_rtout             : 2   ; /* [27..26]  */
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
        unsigned int    pgd_wtout             : 2   ; /* [5..4]  */
        unsigned int    pgd_rtout             : 2   ; /* [7..6]  */
        unsigned int    qtc_wtout             : 2   ; /* [9..8]  */
        unsigned int    qtc_rtout             : 2   ; /* [11..10]  */
        unsigned int    mcu_tout              : 2   ; /* [13..12]  */
        unsigned int    reserved_0            : 2   ; /* [15..14]  */
        unsigned int    spi_nand_tout         : 2   ; /* [17..16]  */
        unsigned int    sfc_tout              : 2   ; /* [19..18]  */
        unsigned int    nandc_tout            : 2   ; /* [21..20]  */
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
        unsigned int    reserved_1            : 3   ; /* [23..21]  */
        unsigned int    mven                  : 1   ; /* [24]  */
        unsigned int    reserved_2            : 7   ; /* [31..25]  */
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
        unsigned int    reserved_0            : 3   ; /* [2..0]  */
        unsigned int    otp_ctrl_sf           : 1   ; /* [3]  */
        unsigned int    reserved_1            : 1   ; /* [4]  */
        unsigned int    otp_ctrl_uart_mcu     : 1   ; /* [5]  */
        unsigned int    reserved_2            : 2   ; /* [7..6]  */
        unsigned int    romboot_sel_lock      : 1   ; /* [8]  */
        unsigned int    otp_vdh_real          : 1   ; /* [9]  */
        unsigned int    otp_vdh_divx3         : 1   ; /* [10]  */
        unsigned int    otp_vdh_vc1           : 1   ; /* [11]  */
        unsigned int    otp_vdh_vp6           : 1   ; /* [12]  */
        unsigned int    otp_vdh_vp8           : 1   ; /* [13]  */
        unsigned int    otp_vdh_h264          : 1   ; /* [14]  */
        unsigned int    otp_vdh_mpeg4         : 1   ; /* [15]  */
        unsigned int    otp_vdh_avs           : 1   ; /* [16]  */
        unsigned int    reserved_3            : 4   ; /* [20..17]  */
        unsigned int    otp_ctrl_usb          : 1   ; /* [21]  */
        unsigned int    reserved_4            : 10  ; /* [31..22]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_PERI_SOC_FUSE_1;

//==============================================================================
/* Define the global struct */
typedef struct
{
    volatile U_START_MODE           START_MODE               ; /* 0x0 */
    volatile unsigned int           reserved_0                     ; /* 0x4 */
    volatile U_PERI_CTRL            PERI_CTRL                ; /* 0x8 */
    volatile U_CPU_STAT             CPU_STAT                 ; /* 0xc */
    volatile U_CPU_SET              CPU_SET                  ; /* 0x10 */
    volatile unsigned int           reserved_1[8]                     ; /* 0x14~0x30 */
    volatile U_PERI_QAM             PERI_QAM                 ; /* 0x34 */
    volatile U_PERI_QAM_ADC0        PERI_QAM_ADC0            ; /* 0x38 */
    volatile U_PERI_QAM_ADC1        PERI_QAM_ADC1            ; /* 0x3c */
    volatile U_PERI_PRIORITY_CFG    PERI_PRIORITY_CFG        ; /* 0x40 */
    volatile U_PERI_QOS_CFG0        PERI_QOS_CFG0            ; /* 0x44 */
    volatile U_PERI_QOS_CFG1        PERI_QOS_CFG1            ; /* 0x48 */
    volatile U_PERI_QOS_CFG2        PERI_QOS_CFG2            ; /* 0x4c */
    volatile U_PERI_QOS_CFG3        PERI_QOS_CFG3            ; /* 0x50 */
    volatile unsigned int           reserved_2[24]                     ; /* 0x54~0xb0 */
    volatile U_PERI_USB_RESUME_INT_MASK   PERI_USB_RESUME_INT_MASK ; /* 0xb4 */
    volatile U_PERI_USB_RESUME_INT_RAWSTAT   PERI_USB_RESUME_INT_RAWSTAT ; /* 0xb8 */
    volatile U_PERI_USB_RESUME_INT_STAT   PERI_USB_RESUME_INT_STAT ; /* 0xbc */
    volatile unsigned int           reserved_3[22]                     ; /* 0xc0~0x114 */
    volatile U_PERI_FEPHY           PERI_FEPHY               ; /* 0x118 */
    volatile U_PERI_FEPHY_LDO_CTRL   PERI_FEPHY_LDO_CTRL     ; /* 0x11c */
    volatile U_PERI_USB0            PERI_USB0                ; /* 0x120 */
    volatile U_PERI_USB1            PERI_USB1                ; /* 0x124 */
    volatile unsigned int           reserved_4[34]                     ; /* 0x128~0x1ac */
    volatile U_PERI_INT_A9TOMCE     PERI_INT_A9TOMCE         ; /* 0x1b0 */
    volatile unsigned int           reserved_5                     ; /* 0x1b4 */
    volatile U_PERI_TIANLA_ADAC0    PERI_TIANLA_ADAC0        ; /* 0x1b8 */
    volatile U_PERI_TIANLA_ADAC1    PERI_TIANLA_ADAC1        ; /* 0x1bc */
    volatile unsigned int           reserved_6[8]                     ; /* 0x1c0~0x1dc */
    volatile U_CHIPSET_INFO         CHIPSET_INFO             ; /* 0x1e0 */
    volatile unsigned int           reserved_7[3]                     ; /* 0x1e4~0x1ec */
    volatile unsigned int           PERI_SW_SET              ; /* 0x1f0 */
    volatile unsigned int           reserved_8[4]                     ; /* 0x1f4~0x200 */
    volatile U_PERI_SPINAND_CTRL    PERI_SPINAND_CTRL        ; /* 0x204 */
    volatile unsigned int           reserved_9[390]                     ; /* 0x208~0x81c */
    volatile U_PERI_TIMEOUT_CFG_0   PERI_TIMEOUT_CFG_0       ; /* 0x820 */
    volatile U_PERI_TIMEOUT_CFG_1   PERI_TIMEOUT_CFG_1       ; /* 0x824 */
    volatile unsigned int           reserved_10[6]                     ; /* 0x828~0x83c */
    volatile U_PERI_SOC_FUSE_0      PERI_SOC_FUSE_0          ; /* 0x840 */
    volatile unsigned int           reserved_11[11]                     ; /* 0x844~0x86c */
    volatile U_PERI_SOC_FUSE_1      PERI_SOC_FUSE_1          ; /* 0x870 */

} S_PERI_CTRL_REGS_TYPE;

#endif /* __HI_REG_PERI_H__ */
