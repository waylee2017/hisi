/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_common.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __CA_COMMON_H__
#define __CA_COMMON_H__

#include "hi_type.h"
#include "ca_authdefine.h"

#include "drv_cipher_define.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#define  HI_ERR_CA_OPEN_ERR                         (HI_S32)(0x804E0001)
#define  HI_ERR_CA_CLOSE_ERR                        (HI_S32)(0x804E0002)
#define  HI_ERR_CA_NOT_INIT                         (HI_S32)(0x804E0003)
#define  HI_ERR_CA_COPY_DATA_ERR                    (HI_S32)(0x804E0004)
#define  HI_ERR_CA_INVALID_PARA                     (HI_S32)(0x804E0005)
#define  HI_ERR_CA_WAIT_TIMEOUT                     (HI_S32)(0x804E0006)
#define  HI_ERR_CA_CW_DECRYPT                       (HI_S32)(0x804E0007)
#define  HI_ERR_CA_R2R_DECRYPT                      (HI_S32)(0x804E0008)
#define  HI_ERR_CA_R2R_ENCRYPT                      (HI_S32)(0x804E0009)
#define  HI_ERR_CA_SETPARAM_AGAIN	                (HI_S32)(0x804E000A)
#define  HI_ERR_CA_DBG_INERR 		                (HI_S32)(0x804E000B)
#define  HI_ERR_CA_NOT_CONFIG                       (HI_S32)(0x804E000C)
#define  HI_ERR_CA_LPK_DECRYPT                      (HI_S32)(0x804E000D)
#define  HI_ERR_CA_NOT_SUPPORT                      (HI_S32)(0x804E000E)
#define  HI_ERR_CA_SWPK_ENCRYPT                     (HI_S32)(0x804E000F)
#define ATE_STAGE

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_4_11 */
/** @{ */  /** <!-- [ADVCA] */


/** advanced CA session serect key class*/
typedef enum hiUNF_ADVCA_KEYLADDER_LEV_E
{
	HI_UNF_ADVCA_KEYLADDER_LEV1 = 0,   /**<session serect key level 1*/
	HI_UNF_ADVCA_KEYLADDER_LEV2 ,	   /**<session serect key level 2*/
	HI_UNF_ADVCA_KEYLADDER_LEV3 ,	   /**<session serect key level 3*/
	HI_UNF_ADVCA_KEYLADDER_LEV4,       /**<session serect key level 4*/
	HI_UNF_ADVCA_KEYLADDER_LEV5,       /**<session serect key level 5*/
	HI_UNF_ADVCA_KEYLADDER_LEV6,       /**<session serect key level 6*/

	HI_UNF_ADVCA_KEYLADDER_BUTT 
}HI_UNF_ADVCA_KEYLADDER_LEV_E;


/** advanced CA Encrypt arith*/
typedef enum hiUNF_ADVCA_ALG_TYPE_E
{
    HI_UNF_ADVCA_ALG_TYPE_TDES = 0,    /**<Encrypt arith :3 DES*/
    HI_UNF_ADVCA_ALG_TYPE_AES,         /**<Encrypt arith : AES*/

    HI_UNF_ADVCA_ALG_TYPE_BUTT
}HI_UNF_ADVCA_ALG_TYPE_E;

/** FLASH device types*/
typedef enum hiUNF_ADVCA_FLASH_TYPE_E
{
    HI_UNF_ADVCA_FLASH_TYPE_SPI = 0,     /**<SPI flash*/
    HI_UNF_ADVCA_FLASH_TYPE_NAND,        /**<nand flash*/
    HI_UNF_ADVCA_FLASH_TYPE_NOR,         /**<nor flash*/
    HI_UNF_ADVCA_FLASH_TYPE_EMMC,        /**<eMMC*/
	HI_UNF_ADVCA_FLASH_TYPE_SPI_NAND,	 /**<spi_nand flash*/
    HI_UNF_ADVCA_FLASH_TYPE_BUTT
}HI_UNF_ADVCA_FLASH_TYPE_E;

/** JTAG protect mode*/
typedef enum hiUNF_ADVCA_JTAG_MODE_E
{
    HI_UNF_ADVCA_JTAG_MODE_OPEN = 0,     
    HI_UNF_ADVCA_JTAG_MODE_PROTECT,       
    HI_UNF_ADVCA_JTAG_MODE_CLOSED,     

    HI_UNF_ADVCA_JTAG_MODE_BUTT
}HI_UNF_ADVCA_JTAG_MODE_E;

typedef enum
{
    CA_CW_DEF  = 0x0,
    CA_CW_EVEN,
    CA_CW_ODD,
    CA_CW_BUTT
} CA_CW_TYPE;

typedef enum
{
    CA_CW  = 0x0,
    CA_R2R = 0x1
} CA_WORK_MODE;

typedef struct hiCA_CryptPm_S
{
    HI_UNF_ADVCA_KEYLADDER_LEV_E ladder;
    HI_U32                       pDin[4];
} CA_CRYPTPM_S;

typedef struct hiCA_LOADLPK_S
{
    HI_U32 EncryptLpk[4];
}CA_LOADLPK_S;

typedef struct hiCA_DecryptLpData_S
{
    HI_U32 EncryptData[2];
    HI_U32 ClearData[2];
}CA_DECRYPTLPTDATA_S;

typedef struct hiCA_EncryptSWPK_S
{
    HI_U32 ClearSwpk[4];
    HI_U32 EncryptSwpk[4];
}CA_ENCRYPTSWPK_S;

typedef struct hiCA_RsvData_S
{
    HI_U32 type;
    HI_U32 bitOff;
    HI_U32 byteOff;
    HI_U32 val;
} CA_RSVDATA_S;

typedef struct hiCA_KEY_S
{
    HI_U8 KeyBuf[512];  
}CA_KEY_S;

typedef enum
{
    CA_VERSION_200,
    CA_VERSION_300,
    CA_VERSION_BUTT
}CA_VERSION_E;

typedef enum hiDRV_ADVCA_CA_TARGET_E
{
	DRV_ADVCA_CA_TARGET_DEMUX         = 0,
	DRV_ADVCA_CA_TARGET_MULTICIPHER,
}DRV_ADVCA_CA_TARGET_E;

typedef enum hiUNF_ADVCA_SP_DSC_MODE_E
{
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_CSA2      		= 0x0000,   /**<Demux PAYLOAD CSA2 */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_CSA3      		= 0x0010,   /**<Demux PAYLOAD CSA3 */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_IDSA 		= 0x0020,   /**<Demux PAYLOAD AES  IPTV Mode */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_ECB          	= 0x0021,   /**<Demux PAYLOAD AES  ECB Mode */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC_CI     	= 0x0022,   /**<Demux PAYLOAD AES  CIPLUS */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_DES_IPTVT     	= 0x0030,   /**<Demux PAYLOAD DES  CIPLUS */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_DES_CIPLUS     	= 0x0032,   /**<Demux PAYLOAD DES  CIPLUS */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_DES_CBC       	= 0x0033,   /**<Demux PAYLOAD DES  CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_NOVEL       	= 0x0040,   /**<Demux PAYLOAD AES  NOVEL */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_SMS4_NOVEL       	= 0x0041,   /**<Demux PAYLOAD SMS4 NOVEL */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_SMS4_IPTV       	= 0x0050,   /**<Demux PAYLOAD SMS4 IPTV */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_SMS4_ECB       	= 0x0051,   /**<Demux PAYLOAD SMS4 ECB */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_SMS4_CBC       	= 0x0053,   /**<Demux PAYLOAD SMS4 CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_AES_CBC       	= 0x0063,   /**<Demux PAYLOAD AES  CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_TDES_IPTV       	= 0x0070,   /**<Demux PAYLOAD TDES IPTV */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_TDES_ECB       	= 0x0071,   /**<Demux PAYLOAD TDES ECB */
     HI_UNF_ADVCA_SP_DSC_MODE_PAYLOAD_TDES_CBC      	= 0x0073,   /**<Demux PAYLOAD TDES CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC               = 0x4020,   /**<MultiCipher AES CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_ECB               = 0x4021,   /**<MultiCipher AES ECB */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC_PIFF        	= 0x4022,   /**<MultiCipher AES CBC PIFF */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CBC_APPLE    		= 0x4023,   /**<MultiCipher AES CBC APPLE */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_AES_CTR               = 0x4024,   /**<MultiCipher AES CTR */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_TDES_CBC              = 0x4040,   /**<MultiCipher AES CBC */
     HI_UNF_ADVCA_SP_DSC_MODE_RAW_TDES_ECB              = 0x4041,   /**<MultiCipher AES ECB */
     HI_UNF_ADVCA_SP_DSC_MODE_BUTT
}HI_UNF_ADVCA_SP_DSC_MODE_E;

typedef struct
{
    HI_BOOL                      OpenFlag;  //Flag for Keyladder usage
    HI_UNF_CIPHER_ALG_E          Alg;       //KeyLadder algorithm
    HI_UNF_ADVCA_SP_DSC_MODE_E   enDscMode;
    HI_UNF_ADVCA_KEYLADDER_LEV_E MaxLevel;  //Max level
    HI_U32                       Keyladder_Ready;     //Max level
    HI_U8                        SessionKey[16][32];
    HI_U8                        GG_Flag[4];
    HI_U32                       SessionKey_sec[16];
    HI_U8                        LastEvenKey[16];
    HI_U32                       LastEvenKey_secTime;
    HI_U8                        LastOddKey[16];
    HI_U32                       LastOddKey_secTime;
}CA_KEYLADDER_INFO_S;

/** Advca CA VendorID */
typedef enum hi_ADVCA_VENDORID_E
{
    HI_ADVCA_NULL       = 0x00,        /**<No-Advcance CA chipset, Marked with 0*/
    HI_ADVCA_NAGRA      = 0x01,        /**<NAGRA  Chipse, Marked with R*/
    HI_ADVCA_IRDETO     = 0x02,        /**<IRDETO Chipset, Marked with I*/
    HI_ADVCA_CONAX      = 0x03,        /**<CONAX Chipset, Marked with C*/
    HI_ADVCA_SUMA       = 0x05,        /**<SUMA Chipset, Marked with S*/
    HI_ADVCA_NOVEL      = 0x06,        /**<NOVEL Chipset, Marked with Y*/
    HI_ADVCA_VERIMATRIX = 0x07,        /**<VERIMATRIX Chipset, Marked with M*/
    HI_ADVCA_CTI        = 0x08,        /**<CTI Chipset, Marked with T*/
    HI_ADVCA_COMMONDCA  = 0x0b,        /**<COMMONCA Chipset, Marked with H*/
    HI_ADVCA_DCAS       = 0x0c,        /**<DCAS CA Chipset*/
    HI_ADVCA_VENDORIDE_BUTT
}HI_UNF_ADVCA_VENDORID_E;

/**Defines the attribute of the keyladder root key.*/
/**CNcomment: 定义keyladder 根密钥属性结构体.*/
typedef struct hiUNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S
{
    HI_U8 u8RootKey[16];    /**<Root key of the keyladder*/
}HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S;

/**Defines the attribute of the JTAG key.*/
/**CNcomment: 定义JTAG接口保护密钥属性结构体.*/
typedef struct hiUNF_ADVCA_JTAG_KEY_ATTR_S
{
    HI_U8 u8JtagKey[8];     /**<JTAG protected key*/
}HI_UNF_ADVCA_JTAG_KEY_ATTR_S;

/**Defines the attribute of the CA vendor type ID.*/
/**CNcomment: ?¨ò?CA vendorê?D?ààDíID.*/
typedef enum hi_ADVCA_CA_VENDOR_ATTR_E
{
    HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_CALC,  /**<To calculate the high level code CBC-MAC, ONLY used for Irdeto MSR2.2.*/
    HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_AUTH,  /**<To authenticate the high level code CBC-MAC, ONLY used for Irdeto MSR2.2.*/    
    HI_ADVCA_CAVENDOR_ATTR_BUTT
}HI_ADVCA_CA_VENDOR_OPT_E;

/**Defines the attribute of the Irdeto MSR2.2 high level code CBC-MAC.*/
/**CNcomment: ?¨ò?Irdeto MSR2.2 é?2?ó|ó?CBC-MACê?D??á11ì?.*/
typedef struct hi_ADVCA_IRDETO_CBCMAC_ATTR_S
{
    HI_U8 *pu8InputData;
    HI_U32 u32InputDataLen;
    HI_U8 u8OutputCbcMac[16];
    HI_U8 u8RefCbcMAC[16];  /**<Reference CBC-MAC*/
    HI_U32 u32AppLen; /**<High level code length*/   
}HI_ADVCA_IRDETO_CBCMAC_OPT_S;

/**Defines the attribute of the CA vendor private function.*/
typedef struct hi_ADVCA_CA_VENDOR_OPT_S
{	
    HI_ADVCA_CA_VENDOR_OPT_E enCaVendorOpt;
    union
    {
        HI_ADVCA_IRDETO_CBCMAC_OPT_S            stIrdetoCbcMac;
    }unCaVendorOpt;
}HI_UNF_ADVCA_CA_VENDOR_OPT_S;

/**Defines the default attribute of OTP fuse. If one OTP fuse can ONLY be "Enable" or "Disable",
then we will use this attribute.*/
/**CNcomment: 定义OTP位默认属性结构体. 适用于一个OTP位的功能
只是开启或关闭的情况*/
typedef struct hiUNF_ADVCA_OTP_DEFAULT_ATTR_S
{
    HI_BOOL bEnable;    /**<Is the feature enable or not*/
}HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S;


typedef enum hiHI_UNF_ADVCA_OTP_FUSE_E
{
    HI_UNF_ADVCA_OTP_CSA2_ROOTKEY, /**<CSA2 keyladder root key, HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*//**<CNcomment: CSA2 keyladder根密钥 , HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*/
    HI_UNF_ADVCA_OTP_R2R_ROOTKEY, /**<R2R keyladder root key, HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*//**<CNcomment: R2R keyladder根密钥 , HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*/
    HI_UNF_ADVCA_OTP_CSA3_ROOTKEY, /**<CSA3 keyladder root key, HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*//**<CNcomment: CSA3 keyladder根密钥 , HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*/
    HI_UNF_ADVCA_OTP_JTAG_KEY, /**<JTAG key, HI_UNF_ADVCA_JTAG_KEY_ATTR_S*//**<CNcomment: JTAG密钥 , HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S*/

    HI_UNF_ADVCA_OTP_R2R_ROOTKEY_LOCK_FLAG,   /**< Get the lock flag of R2R_Root_key, HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S*/ /**<CNcomment: 获取R2R_Root_key lock标记，HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S*/     
    HI_UNF_ADVCA_OTP_JTAG_KEY_LOCK_FLAG,   /**< Get the lock flag of JTAG key, HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S*/ /**<CNcomment: 获取JTAG key lock标记，HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S*/     

	HI_UNF_ADVCA_OTP_RSA_KEY_LOCK_FLAG,
	HI_UNF_ADVCA_OTP_BUTT,
}HI_UNF_ADVCA_OTP_FUSE_E;

typedef struct
{
	HI_BOOL bIsLocked;
}HI_UNF_ADVCA_RSA_KEY_LOCK_FLAG_S;

typedef struct hiUNF_ADVCA_OTP_ATTR_S
{
	union
	{
        HI_UNF_ADVCA_OTP_DEFAULT_ATTR_S          stDefaultAttr; /**<Default attribute, if one fuse can ONLY be "Enable" or "Disable", then we can use this attribute*/
        HI_UNF_ADVCA_KEYLADDER_ROOTKEY_ATTR_S    stKeyladderRootKey; /**<Keyladder rootkey attribute*/
        HI_UNF_ADVCA_JTAG_KEY_ATTR_S             stJtagKey;   /**<JTAG key attribute*/
		HI_UNF_ADVCA_RSA_KEY_LOCK_FLAG_S stRSAKeyLockFlag;
	}unOtpFuseAttr;
}HI_UNF_ADVCA_OTP_ATTR_S;

/***************************** Macro Definition ******************************/
/* CA_MAILBOX */
#define CA_BASE_ADDR 0x10000000
#define CA_CRG_ADDR  0x101F50B4

#define CA_V200_SECURE_BOOT_CFG_ADD   (CA_BASE_ADDR + 0x00)
#define CA_V200_SECURE_BOOT_STAT_ADD  (CA_BASE_ADDR + 0x04)
#define CA_V200_MARKET_SID_REF_ADD    (CA_BASE_ADDR + 0x08)
#define CA_V200_CHIP_ID_ADD           (CA_BASE_ADDR + 0x0c)
#define CA_V200_STB_SN_ADD            (CA_BASE_ADDR + 0x10)
#define CA_V200_DIN0_ADD              (CA_BASE_ADDR + 0x20)
#define CA_V200_DIN1_ADD              (CA_BASE_ADDR + 0x24)
#define CA_V200_DIN2_ADD              (CA_BASE_ADDR + 0x28)
#define CA_V200_DIN3_ADD              (CA_BASE_ADDR + 0x2c)
#define CA_V200_CTRL_ADD              (CA_BASE_ADDR + 0x30)
#define CA_V200_SET_ADD               (CA_BASE_ADDR + 0x34)
#define CA_V200_STAT_ADD              (CA_BASE_ADDR + 0x38)
#define CA_V200_INT_STAT_ADD          (CA_BASE_ADDR + 0x40)
#define CA_V200_INT_EN_ADD            (CA_BASE_ADDR + 0x44)
#define CA_V200_INT_RAW_ADD           (CA_BASE_ADDR + 0x48)
#define CA_V200_LOAD_OTP_ADD          (CA_BASE_ADDR + 0x4c)
#define CA_V200_RST_ST_ADD            (CA_BASE_ADDR + 0x50)
#define CA_V200_DOUT0_ADD             (CA_BASE_ADDR + 0x60)
#define CA_V200_DOUT1_ADD             (CA_BASE_ADDR + 0x64)
#define CA_V200_DOUT2_ADD             (CA_BASE_ADDR + 0x68)
#define CA_V200_DOUT3_ADD             (CA_BASE_ADDR + 0x6c)
#define CA_V200_JTAG_KEY0_ADD         (CA_BASE_ADDR + 0x70)
#define CA_V200_JTAG_KEY1_ADD         (CA_BASE_ADDR + 0x74)
#define CA_V200_CTRL_PROC_ADD         (CA_BASE_ADDR + 0x78)
#define CA_V200_PRM_OTP_ADD           (CA_BASE_ADDR + 0x7c)
#define CA_V200_DVB_ROOT_KEY0_ADD     (CA_BASE_ADDR + 0x80)
#define CA_V200_DVB_ROOT_KEY1_ADD     (CA_BASE_ADDR + 0x84)
#define CA_V200_DVB_ROOT_KEY2_ADD     (CA_BASE_ADDR + 0x88)
#define CA_V200_DVB_ROOT_KEY3_ADD     (CA_BASE_ADDR + 0x8C)
#define CA_V200_R2R_ROOT_KEY0_ADD     (CA_BASE_ADDR + 0x90)
#define CA_V200_R2R_ROOT_KEY1_ADD     (CA_BASE_ADDR + 0x94)
#define CA_V200_R2R_ROOT_KEY2_ADD     (CA_BASE_ADDR + 0x98)
#define CA_V200_R2R_ROOT_KEY3_ADD     (CA_BASE_ADDR + 0x9C)
#define CA_V200_LP_SET_ADD            (CA_BASE_ADDR + 0xa0)
#define CA_V200_DEBUG_INFO_ADD        (CA_BASE_ADDR + 0xa4)
#define CA_V200_LPK_RDY_ADD           (CA_BASE_ADDR + 0xa8)
#define CA_V200_LP_PARAMETER_0_ADD    (CA_BASE_ADDR + 0xb0)
#define CA_V200_LP_PARAMETER_1_ADD    (CA_BASE_ADDR + 0xb4)
#define CA_V200_LP_PARAMETER_2_ADD    (CA_BASE_ADDR + 0xb8)
#define CA_V200_LP_PARAMETER_3_ADD    (CA_BASE_ADDR + 0xbc)
#define CA_V200_RSV0_INFO_ADD         (CA_BASE_ADDR + 0xc0)
#define CA_V200_RSV1_INFO_ADD         (CA_BASE_ADDR + 0xc4)
#define CA_V200_RSV2_INFO_ADD         (CA_BASE_ADDR + 0xc8)
#define CA_V200_RSV3_INFO_ADD         (CA_BASE_ADDR + 0xcc)
#define CA_V200_VERSION_ADD           (CA_BASE_ADDR + 0xd0)

#define ca_rdReg(addr, val)  ((val) = (*(volatile HI_U32 *)(addr)))
#define ca_wtReg(addr, val)  ((*(volatile HI_U32 *)(addr)) = (val))

HI_S32 CA_Init(HI_VOID);

HI_S32 CA_GetR2RLadder(HI_UNF_ADVCA_KEYLADDER_LEV_E *psel);

HI_S32 CA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_E type);

HI_S32 CA_DecryptR2R(HI_UNF_ADVCA_KEYLADDER_LEV_E enLevel,HI_U32 *pDataIn,HI_U32 AddrID,HI_BOOL bEnOrDeCrypt);

HI_S32 CA_DecryptCipher(HI_U32 AddrID, HI_U32 *pDataIn);   

HI_S32 CA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key);

HI_S32 CA_GetRSAKeyLockFlag(HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr);

HI_S32 CA_SetRSAKeyLockFlag(HI_UNF_ADVCA_OTP_ATTR_S *pstOtpFuseAttr);
HI_S32 CA_EncryptSwpk(HI_U32 *pClearSwpk, HI_U32 *pEncryptSwpk);

HI_S32 CA_DecryptSwpk(HI_U32 AddrID, HI_U32 *pEncryptSwpk);

HI_S32 CA_MISCKeyLadder_Open(HI_VOID);

HI_S32 CA_MISCKeyLadder_Close(HI_VOID);

HI_S32 CA_SetMiscAlgorithm(HI_UNF_ADVCA_ALG_TYPE_E enType);

HI_S32 CA_V300_GetMiscAlgorithm(HI_UNF_ADVCA_ALG_TYPE_E *penType);

HI_S32 CA_SetMISCSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV_E enStage, HI_U8 *pu8Key);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif
