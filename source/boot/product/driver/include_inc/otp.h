/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : otp.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __OTP_H__
#define __OTP_H__

#include "hi_type.h"

#ifndef HI_ADVCA_FUNCTION_RELEASE
#ifndef HI_MINIBOOT_SUPPORT
#define OTPCOMMANDTEST
#endif
#endif

#define OTP_CUSTOMER_KEY_LEN        (16)

/* otp register address */
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
#define OTP_V200_BASE_OFFSET        (0x10180000)
#else
#define OTP_V200_BASE_OFFSET        (0xF8AB0000)
#endif
#define OTP_V200_CHANNEL_SEL        (OTP_V200_BASE_OFFSET + 0x00)
#define OTP_V200_CPU_RW_CTRL        (OTP_V200_BASE_OFFSET + 0x04)
#define OTP_V200_WR_START           (OTP_V200_BASE_OFFSET + 0x08)
#define OTP_V200_CTRL_STATUS        (OTP_V200_BASE_OFFSET + 0x0c)
#define OTP_V200_RDATA              (OTP_V200_BASE_OFFSET + 0x10)
#define OTP_V200_WDATA              (OTP_V200_BASE_OFFSET + 0x14)
#define OTP_V200_RADDR              (OTP_V200_BASE_OFFSET + 0x18)
#define OTP_V200_WADDR              (OTP_V200_BASE_OFFSET + 0x1C)
#define OTP_V200_MODE               (OTP_V200_BASE_OFFSET + 0x20)

#define OTP_V200_CHIPID			    (OTP_V200_BASE_OFFSET + 0xe8)
#define OTP_V200_STBSN			    (OTP_V200_BASE_OFFSET + 0x110)
#define OTP_V200_MARKETID			(OTP_V200_BASE_OFFSET + 0x120)
#define OTP_V200_SecureBootEn		(OTP_V200_BASE_OFFSET + 0x98)
#define OTP_V200_CA_VENDOR_ID       (OTP_V200_BASE_OFFSET + 0x12C)
#define OTP_V200_PVREGISTER0        (OTP_V200_BASE_OFFSET + 0x80)

/* otp address */
#define OTP_SECURE_CHIP_FLAG_ADDR	(0x04)
#define OTP_SECURE_CHIP_FLAG_LOCK_ADDR (0xc)
#define OTP_ID_WORD_LOCK_ADDR       (0x10)
#define OTP_RIGHT_CTRL_EN_ADDR		(0x19)
#define OTP_CHIP_ID_ADDR            (0x68)
#define OTP_ADVCA_ID_WORD_ADDR		(0xa8)		//0xa8 ~ 0xab
#define OTP_SCS_EN_BAK_ADDR			(0xad)
#define OTP_JTAG_MODE_BAK_ADDR		(0xae)
#define OTP_RIGHT_CTRL_EN_BAK_ADDR	(0xaf)
#define OTP_SELF_BOOT_DIABLE_BAK_ADDR	(0x1c)

#define ADVCA_ID_WORD 				(0x6EDBE953)
#define NORMAL_ID_WORD				(0x2A13C812)

#define OTP_STB_PRIV_DATA_ADDR      (0x2b0)
#define OTP_CUSTOMER_KEY_ADDR       (0x2c0)

#define CA_OTP_V200_INTERNAL_DATALOCK_0           (0x10)
#define CA_OTP_V200_INTERNAL_ONEWAY_0             (0x18)

#define CA_OTP_V200_INTERNAL_CSA2_ROOTKEY_0       (0x20)
#define CA_OTP_V200_INTERNAL_R2R_ROOTKEY_0        (0x30)
#define CA_OTP_V200_INTERNAL_CSA3_ROOTKEY_0       (0x50)

#define CA_OTP_V200_INTERNAL_STB_SN_0             (0x90)

#define CA_OTP_V200_INTERNAL_DATALOCK_1           (0x14)
#define CA_OTP_V200_INTERNAL_RSA_KEY_E_BASE       (0x2F0)
#define CA_OTP_V200_INTERNAL_RSA_KEY_N_BASE       (0x300)

#define CA_OTP_V200_INTERNAL_CHECKSUM_CSA2_ROOT_KEY        (0x420)
#define CA_OTP_V200_INTERNAL_CHECKSUM_R2R_ROOT_KEY         (0x421)
#define CA_OTP_V200_INTERNAL_CHECKSUM_CSA3_ROOT_KEY        (0x423)
#define CA_OTP_V200_INTERNAL_CHECKSUM_JTAGKEY_CHIPID       (0x424)
#define CA_OTP_V200_INTERNAL_CHECKSUMLOCK         (0x430)
#define CA_OTP_V200_INTERNAL_JTAG_KEY_0           (0x60)



#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HI_ERR_OTP(format, arg...)
#define HI_INFO_OTP printf
#else
#define HI_ERR_OTP(format, arg...) printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_INFO_OTP printf
#endif

typedef struct hiOTP_CUSTOMER_KEY_S
{
    HI_U32 u32CustomerKey[4];
}OTP_CUSTOMER_KEY_S;

typedef struct hiOTP_STB_PRIV_DATA_S
{
    HI_U32 u32Offset;
    HI_U8 u8Data;
}OTP_STB_PRIV_DATA_S;

typedef union
{
    struct
    {
        HI_U32 channel_sel         : 2; // [0-1]
        HI_U32 reserved            : 30; // [2-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CHANNEL_SEL_U; //Offset:0x00

typedef union
{
    struct
    {
        HI_U32 wr_sel              : 1; // [0]
        HI_U32 rd_enable           : 1; // [1]
        HI_U32 wr_enable           : 1; // [2]
        HI_U32 rsv                 : 1; // [3]
        HI_U32 cpu_size            : 2; // [4-5]
        HI_U32 reserved            : 26; // [6-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CPU_RW_CTRL_U; //Offset:0x04

typedef union
{
    struct
    {
        HI_U32 start              : 1; // [0]
        HI_U32 reserved           : 31; // [1-31]
    } bits;
    HI_U32 u32;
} OTP_V200_WR_START_U; //Offset:0x08

typedef union
{
    struct
    {
        HI_U32 ctrl_ready          : 1; // [0]
        HI_U32 fail_flag           : 1; // [1]
        HI_U32 soak_flag           : 1; // [2]
        HI_U32 rsv                 : 1; // [3]
        HI_U32 r_lock              : 1; // [4]
        HI_U32 w_lock              : 1; // [5]
        HI_U32 reserved            : 26; // [6-31]
    } bits;
    HI_U32 u32;
} OTP_V200_CTRL_STATUS_U;//Offset:0x0c

typedef union
{
    struct
    {
        HI_U32 rdata0              : 8; // [0-7]
        HI_U32 rdata1              : 8; // [8-15]
        HI_U32 rdata2              : 8; // [16-23]
        HI_U32 rdata3              : 8; // [24-31]
    } bits;
    HI_U32 u32;
} OTP_V200_RDATA_U;//Offset:0x10

typedef union
{
    struct
    {
        HI_U32 wdata              : 32; // [0-31]
    } bits;
    HI_U32 u32;
} OTP_V200_WDATA_U;//Offset:0x14

typedef union
{
    struct
    {
        HI_U32 raddr              : 32; // [0-31]
    } bits;
    HI_U32 u32;
} OTP_V200_RADDR_U;//Offset:0x18

typedef union
{
    struct
    {
        HI_U32 waddr              : 32; // [0-31]
    } bits;
    HI_U32 u32;
} OTP_V200_WADDR_U;//Offset:0x1C

typedef union
{
    struct
    {
        HI_U32 max_soak_times      : 4; // [0-3]
        HI_U32 otp_time            : 4; // [4-7]
        HI_U32 soak_en             : 1; // [8]
        HI_U32 time_en             : 1; // [9]
        HI_U32 reserved            : 22; // [10-31]
    } bits;
    HI_U32 u32;
} OTP_V200_MODE_U;//Offset:0x20

typedef union
{
    struct
    {
        HI_U32 reserved0  		: 8; //[7:0]
        HI_U32 ca_kl_srst_req	: 1; //[8]
        HI_U32 ca_ci_srst_req   : 1; //[9]
        HI_U32 otp_srst_req		: 1; //[10]
        HI_U32 reserved1		: 1; //[11]
        HI_U32 ca_ci_clk_sel	: 1; //[12]
        HI_U32 reserved2		: 19;//[31:13]
    }bits;
    HI_U32 u32;
}OTP_V200_CRG_CTRL_U;        //PERI_CRG48

typedef enum
{
    OTP_KEY_LEV1 = 0,
    OTP_KEY_LEV2,     
    OTP_KEY_LEV3,
    OTP_KEY_LEV_BUTT
}OTP_KEY_LEVEL_E;


typedef union
{
    struct
    {
        HI_U32 boot_mode_sel_0      : 1;//0x00[0]
        HI_U32 boot_mode_sel_1      : 1;//0x00[1]
        HI_U32 bload_dec_en         : 1;//0x00[2]
        HI_U32 self_boot_disable    : 1;//0x00[3]
        HI_U32 ddr_wakeup_disable   : 1;//0x00[4]
        HI_U32 csa2_lv_sel          : 1;//0x00[5]
        HI_U32 r2r_lv_sel           : 1;//0x00[6]
        HI_U32 sp_lv_sel            : 1;//0x00[7]
        HI_U32 csa3_lv_sel          : 1;//0x01[0]
        HI_U32 link_prt_disable     : 1;//0x01[1]
        HI_U32 ts_csa2_hardonly_en  : 1;//0x01[2]
        HI_U32 ts_sp_hardonly_en    : 1;//0x01[3]
        HI_U32 ts_des_hardonly_en   : 1;//0x01[4]
        HI_U32 ts_nv_hardonly_en    : 1;//0x01[5]
        HI_U32 ts_csa3_hardonly_en  : 1;//0x01[6]
        HI_U32 ts_others_hardonly_en: 1;//0x01[7]
        HI_U32 tskl_csa2_disable    : 1;//0x02[0]
        HI_U32 tskl_sp_disable      : 1;//0x02[1]
        HI_U32 tskl_des_disable     : 1;//0x02[2]
        HI_U32 tskl_nv_disable      : 1;//0x02[3]
        HI_U32 tskl_csa3_disable    : 1;//0x02[4]
        HI_U32 tskl_others_disable  : 1;//0x02[5]
        HI_U32 mc_aes_hardonly_en   : 1;//0x02[6]
        HI_U32 mc_tdes_hardonly_en  : 1;//0x02[7]
        HI_U32 mc_des_hardonly_en   : 1;//0x03[0]
        HI_U32 mc_rc4_hardonly_en   : 1;//0x03[1]
        HI_U32 mckl_des_hard_disable: 1;//0x03[2]
        HI_U32 mckl_rc4_disable     : 1;//0x03[3]
        HI_U32 tskl_tdes_disable    : 1;//0x03[4]  DEMUX TDES engine control.
        HI_U32 bload_mode_sel       : 1;//0x03[5]
        HI_U32 ddr_scramble_en      : 1;//0x03[6]
        HI_U32 otp_global_lock_en   : 1;//0x03[7]
    } bits;
    HI_U32 u32;
} CA_OTP_V200_INTERNAL_PV_0_U;


typedef union
{
    struct
    {
        HI_U32 secure_chip_flag      : 1;//0x04[0]
        HI_U32 soc_tz_enable         : 1;//0x04[1]
        HI_U32 otp_tz_area_enable    : 1;//0x04[2]
        HI_U32 misc_kl_disable       : 1;//0x04[3]
        HI_U32 gg_kl_disable         : 1;//0x04[4]
        HI_U32 dcas_kl_disable       : 1;//0x04[5]
        HI_U32 kl_dpa_clk_sel_en     : 1;//0x04[6]
        HI_U32 kl_dpa_filter_clk_en  : 1;//0x04[7]
        HI_U32 mc_dpa_clk_sel_en     : 1;//0x05[0]
        HI_U32 pvr_dpa_filter_clk_en : 1;//0x05[1]
        HI_U32 uart_disable          : 1;//0x05[2]
        HI_U32 pcie_disable          : 1;//0x05[3]
        HI_U32 usb_disable           : 1;//0x05[4]
        HI_U32 sata_disable          : 1;//0x05[5]
        HI_U32 gmac_disable          : 1;//0x05[6]
        HI_U32 ts_out_disable        : 1;//0x05[7]
        HI_U32 lpc_disable           : 1;//0x06[0]
        HI_U32 lpc_master_disable    : 1;//0x06[1]
        HI_U32 bootsel_ctrl          : 1;//0x06[2]
        HI_U32 bload_enc_disable     : 1;//0x06[3]
        HI_U32 runtime_check_en      : 1;//0x06[4]
        HI_U32 dolby_flag            : 1;//0x06[5]
        HI_U32 macrovision_flag      : 1;//0x06[6]
        HI_U32 dts_flag              : 1;//0x06[7]
        HI_U32 wakeup_ddr_check_en   : 1;//0x07[0]
        HI_U32 misc_lv_sel           : 1;//0x07[1]
        HI_U32 version_id_check_en   : 1;//0x07[2]
        HI_U32 bl_msid_check_en      : 1;//0x07[3]
        HI_U32 nf_rng_disable        : 1;//0x07[4]
        HI_U32 soft_hash_flag        : 1;//0x07[5]
        HI_U32 sp_lv_sel_2           : 1;//0x07[6]
        HI_U32 misc_lv_sel_2         : 1;//0x07[7]
    } bits;
    HI_U32 u32;
} CA_OTP_V200_INTERNAL_PV_1_U;


typedef union
{
    struct
    {
        HI_U32 rsa_key_lock	        : 1;//  0x14[0]
        HI_U32 reserved0	        : 7;//  0x14[7~1]
        HI_U32 CSA3_RootKey_lock	: 1;//  0x15[0]
        HI_U32 R2R_RootKey_lock	    : 1;//  0x15[1]
        HI_U32 SP_RootKey_lock	    : 1;//  0x15[2]
        HI_U32 JTAG_Key_lock	    : 1;//  0x15[3]
        HI_U32 reserved1  	        : 19;// 0x15[4] ~ 0x17[6]
        HI_U32 prm_err_flag 	    : 1;//  0x17[7]
    } bits;
    HI_U32 u32;
} CA_OTP_V200_INTERNAL_DATALOCK_1_U;


typedef union
{
    struct
    {
        HI_U32 secret_key_lock	        : 1;//	0x10[0] ONLY FOR CSA2 ROOT KEY LOCK
        HI_U32 ca_chip_id_lock	        : 1;//	0x10[1]
        HI_U32 esck_lock	            : 1;//	0x10[2]
        HI_U32 stb_rootkey_lock	        : 1;//	0x10[3]
        HI_U32 stbsn0_lock	            : 1;//	0x10[4]
        HI_U32 stbsn1_lock	            : 1;//	0x10[5]
        HI_U32 stbsn2_lock	            : 1;//	0x10[6]
        HI_U32 stbsn3_lock	            : 1;//	0x10[7] used as ITCSA3_IMLB LOCK in Irdeto MSR2.2
        HI_U32 msid_lock	            : 1;//	0x11[0]
        HI_U32 version_id_lock	        : 1;//	0x11[1]
        HI_U32 id_word_lock	            : 1;//	0x11[2]
        HI_U32 ca_vendor_id_lock        : 1;//	0x11[3]
        HI_U32 scs_en_bak_lock          : 1;//	0x11[4]
        HI_U32 jtag_mode_bak_lock       : 1;//	0x11[5]
        HI_U32 right_ctrl_en_bak_lock   : 1;//	0x11[6]
        HI_U32 misc_rootkey_lock        : 1;//	0x11[7]
        HI_U32 HDCP_RootKey_lock        : 1;//	0x12[0]
        HI_U32 OEM_RootKey_lock         : 1;//	0x12[1]
        HI_U32 rsv_data_1_lock	        : 1;//	0x12[2]
        HI_U32 rsv_data_2_lock	        : 1;//	0x12[3]
        HI_U32 hdcp_lock	            : 1;//	0x12[4]
        HI_U32 rsv_hdcp_lock	        : 1;//	0x12[5]
        HI_U32 rsv_data_3to10_lock      :8;//	0x12[6]~0x13[5]
        HI_U32 rsv_rsa_0_lock	        :1;//	    0x13[6]
        HI_U32 rsv_rsa_1_lock	        :1;//	    0x13[7]        
    } bits;
    HI_U32 u32;
} CA_OTP_V200_INTERNAL_DATALOCK_0_U;


typedef union
{
    struct
    {
        HI_U32 locker_CSA2_RootKey          :1;// 0x430[0]
        HI_U32 locker_R2R_RootKey           :1;// 0x430[1]
        HI_U32 locker_SP_RootKey            :1;// 0x430[2]
        HI_U32 locker_CSA3_RootKey          :1;// 0x430[3]
        HI_U32 locker_JTAGKey_ChipID        :1;// 0x430[4]
        HI_U32 locker_ESCK                  :1;// 0x430[5]
        HI_U32 locker_STB_RootKey           :1;// 0x430[6]
        HI_U32 locker_MISC_RootKey          :1;// 0x430[7]
        HI_U32 locker_HDCP_RootKey          :1;// 0x431[0]
        HI_U32 locker_OEM_RootKey           :1;// 0x431[1]
        HI_U32 locker_SecureCPU_PSWD        :1;// 0x431[2]
        HI_U32 reserved                     :21;// 0x431[3] ~
    }bits;
    HI_U32 u32;
}CA_OTP_V200_INTERNAL_CHECKSUMLOCK_U;

typedef union
{
    struct
    {
        HI_U32 SCS_activation           : 1; //18[0]
        HI_U32 jtag_prt_mode_0          : 1; //18[1]
        HI_U32 jtag_prt_mode_1          : 1; //18[2]
        HI_U32 csa2_deactivation        : 1; //18[3]
        HI_U32 csa3_deactivation        : 1; //18[4]
        HI_U32 r2r_deactivation         : 1; //18[5]
        HI_U32 sp_deactivation          : 1; //18[6]
        HI_U32 jtag_r_disable           : 1; //18[7]
        HI_U32 jtag_w_disable           : 1; //19[0]
        HI_U32 debug_disable            : 1; //19[1]
        HI_U32 self_test_disable        : 1; //19[2]
        HI_U32 right_ctrl_en            : 1; //19[3]
        HI_U32 arm_jtag_disable         : 1; //19[4]
        HI_U32 boot_info_disable        : 1; //19[5]
        HI_U32 checksum_read_disable    : 1; //19[6]
        HI_U32 reserved0                : 3; //19[7] ~ 1a[1]
        HI_U32 SecCPU_prt_mode_0        : 1; //1a[2]
        HI_U32 SecCPU_prt_mode_1        : 1; //1a[3]        
        HI_U32 reserved1                : 2;//0x1a[5:4]
        HI_U32 SecCpuMode_0 			: 1; //0x1a[6] //for Irdeto MSR2.2
        HI_U32 SecCpuMode_1 			: 1; //0x1a[7] //for Irdeto MSR2.2
        HI_U32 dbg_port_mode 			: 8; //0X1b
    } bits;
    HI_U32 u32;
} CA_OTP_V200_ONE_WAY_0_U;//Offset:0x18

/*====================define for CA and mailbox===============================*/

/* CA_MAILBOX */
#define HI_ERR_CA_COMMON_INVALID_PARA	(HI_S32)(0x804E0005)
#define otp_read_reg(addr)          	(*(volatile HI_U32 *)(addr))
#define otp_write_reg(addr, val)    	((*(volatile HI_U32 *)(addr)) = (val))

HI_VOID OTP_Init(void);
HI_VOID OTP_DeInit(void);
HI_U32 OTP_Read(HI_U32 addr);
HI_S32 OTP_SetByte(HI_U32 addr, HI_U8 tdata);
HI_U8  OTP_ReadByte(HI_U32 addr);
HI_S32 OTP_V200_getCustomerKey(OTP_CUSTOMER_KEY_S * pCustomerKey);
HI_S32 OTP_GetMarketID(HI_U8 u8Id[4]);
HI_S32 OTP_GetR2RLadderLevel(OTP_KEY_LEVEL_E *pLevel);
HI_S32 OTP_V200_Set_StbPrivData(OTP_STB_PRIV_DATA_S *pStbPrivData);
HI_S32 OTP_V200_Get_StbPrivData(OTP_STB_PRIV_DATA_S *pStbPrivData);



#endif  /* __OTP_H__ */
