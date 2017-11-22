/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : drv_cipher_define.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __DRV_CIPHER_DEFINE_H__
#define __DRV_CIPHER_DEFINE_H__

//#include <linux/version.h>
#include "hi_type.h"

#define __CIPHER_DEBUG_VERSION__ /* when release cipher SW, mask it */

#define CIPHER_WAIT_IDLE_TIMES 1000
#define HASH_MAX_DURATION      6000

//#if LINUX_VERSION_CODE > KERNEL_VERSION(2,6,14)
#define  SA_INTERRUPT     IRQF_DISABLED
#define  SA_SHIRQ         IRQF_SHARED
//#endif


#define TASK_QUEUE_IDLE 			(0)
#define TASK_QUEUE_BUSY 			(1)

#define MEM_LENGTH_ERROR    		(1)
#define AHB_BUS_ERROR       		(2)

#define CIPHER_MAX_LIST_NUM  		(128)

#define CI_IV_SIZE       			(16)  /* max 128bit */
#define CI_KEY_SIZE      			(32)  /* max 256bit */


#define CI_BUF_LIST_FLAG_IVSET_BIT  (21)
#define CI_BUF_LIST_FLAG_EOL_BIT    (22)
#define CIPHER_MAX_RSA_KEY_LEN 512

typedef struct hiCI_BUF_LIST_ENTRY_S
{
    HI_U32  u32DataAddr;    /* Phy Addr */
    HI_U32  u32Flags;       /* bit21: iv_set_flag, bit22: end_of_list_flag */
    HI_U32  U32DataLen;     /* bit0~bit19, total 20 bit */
    HI_U32  u32IVStartAddr; /* if iv_set_flag == 1, this is the IV addr */
} CI_BUF_LIST_ENTRY_S;

/*************************** Structure Definition ****************************/
/** \addtogroup      CIPHER */
/** @{ */  /** <!-- [CIPHER] */

/** min length of encrypt, unit: byte */
/** CNcomment: 最小加解密长度，单位byte */
#define HI_UNF_CIPHER_MIN_CRYPT_LEN      8

/** max length of encrypt, unit: byte */
/** CNcomment: 最大加解密长度，单位byte */
#define HI_UNF_CIPHER_MAX_CRYPT_LEN      0xfffff

/** Cipher work mode */
/** CNcomment:CIPHER工作模式 */
typedef enum hiHI_UNF_CIPHER_WORK_MODE_E
{
    HI_UNF_CIPHER_WORK_MODE_ECB     = 0x0,   /**<Electronic codebook (ECB) mode*/    /**< CNcomment:ECB模式 */
    HI_UNF_CIPHER_WORK_MODE_CBC     = 0x1,   /**<Cipher block chaining (CBC) mode*/  /**< CNcomment:CBC模式 */
    HI_UNF_CIPHER_WORK_MODE_CFB     = 0x2,   /**<Cipher feedback (CFB) mode*/        /**< CNcomment:CFB模式 */
    HI_UNF_CIPHER_WORK_MODE_OFB     = 0x3,   /**<Output feedback (OFB) mode*/        /**< CNcomment:OFB模式 */
    HI_UNF_CIPHER_WORK_MODE_CTR     = 0x4,   /**<Counter (CTR) mode*/                /**< CNcomment:CTR模式 */
    HI_UNF_CIPHER_WORK_MODE_BUTT    = 0x5
}HI_UNF_CIPHER_WORK_MODE_E;

/** Cipher algorithm */
/** CNcomment:CIPHER加密算法 */
typedef enum hiHI_UNF_CIPHER_ALG_E
{
    HI_UNF_CIPHER_ALG_DES           = 0x0,  /**< Data encryption standard (DES) algorithm */     /**< CNcomment: DES算法 */
    HI_UNF_CIPHER_ALG_3DES          = 0x1,  /**< 3DES algorithm */                               /**< CNcomment: 3DES算法 */
    HI_UNF_CIPHER_ALG_AES           = 0x2,  /**< Advanced encryption standard (AES) algorithm */ /**< CNcomment: AES算法 */
    HI_UNF_CIPHER_ALG_BUTT          = 0x3   
}HI_UNF_CIPHER_ALG_E;

/** Key length */
/** CNcomment: 密钥长度 */
typedef enum hiHI_UNF_CIPHER_KEY_LENGTH_E
{
    HI_UNF_CIPHER_KEY_AES_128BIT    = 0x0,  /**< 128-bit key for the AES algorithm */ /**< CNcomment:AES运算方式下采用128bit密钥长度 */
    HI_UNF_CIPHER_KEY_AES_192BIT    = 0x1,  /**< 192-bit key for the AES algorithm */ /**< CNcomment:AES运算方式下采用192bit密钥长度 */
    HI_UNF_CIPHER_KEY_AES_256BIT    = 0x2,  /**< 256-bit key for the AES algorithm */ /**< CNcomment:AES运算方式下采用256bit密钥长度 */
    HI_UNF_CIPHER_KEY_DES_3KEY      = 0x2,  /**< Three keys for the DES algorithm */  /**< CNcomment:DES运算方式下采用3个key */
    HI_UNF_CIPHER_KEY_DES_2KEY      = 0x3,  /**< Two keys for the DES algorithm */    /**< CNcomment: DES运算方式下采用2个key  */
}HI_UNF_CIPHER_KEY_LENGTH_E;

/** Cipher bit width */
/** CNcomment: 加密位宽 */
typedef enum hiHI_UNF_CIPHER_BIT_WIDTH_E
{
    HI_UNF_CIPHER_BIT_WIDTH_64BIT   = 0x0,  /**< 64-bit width */   /**< CNcomment:64bit位宽 */
    HI_UNF_CIPHER_BIT_WIDTH_8BIT    = 0x1,  /**< 8-bit width */    /**< CNcomment:8bit位宽 */
    HI_UNF_CIPHER_BIT_WIDTH_1BIT    = 0x2,  /**< 1-bit width */    /**< CNcomment:1bit位宽 */
    HI_UNF_CIPHER_BIT_WIDTH_128BIT  = 0x3,  /**< 128-bit width */  /**< CNcomment:128bit位宽 */
}HI_UNF_CIPHER_BIT_WIDTH_E;

/** Cipher control parameters */
/** CNcomment:加密控制参数变更标志 */
typedef struct hiUNF_CIPHER_CTRL_CHANGE_FLAG_S
{
    HI_U32   bit1IV:1;              /**< Initial Vector change or not */ /**< CNcomment:向量变更 */
    HI_U32   bitsResv:31;           /**< Reserved */ 					 /**< CNcomment:保留 */
}HI_UNF_CIPHER_CTRL_CHANGE_FLAG_S;

/** Key ladder selecting parameters */
/** CNcomment:使用哪个key ladder标志 */
typedef enum hiUNF_CIPHER_CA_TYPE_E
{
    HI_UNF_CIPHER_CA_TYPE_R2R  = 0x0,    /**< Using R2R key ladder */                                                 /**< CNcomment:使用R2R key ladder */
    HI_UNF_CIPHER_CA_TYPE_SP   ,         /**< Using SP key ladder */                                                  /**< CNcomment:使用SP key ladder */
    HI_UNF_CIPHER_CA_TYPE_BLPK ,         /**< Using BLPK key ladder */                                                /**< CNcomment:使用BLPK key ladder */
    HI_UNF_CIPHER_CA_TYPE_IRDETO_HCA,   /**< Using Irdeto high level code authentication key ladder, only used for Irdeto MSR2.2 */ /**< CNcomment:Irdeto上层应用校验keyladder，仅用于Irdeto MSR2.2 */
}HI_UNF_CIPHER_CA_TYPE_E;

/** Encryption/Decryption type selecting */
/** CNcomment:CIPHE加解密类型选择 */
typedef enum
{
    HI_UNF_CIPHER_TYPE_NORMAL       = 0x0,
    HI_UNF_CIPHER_TYPE_COPY_AVOID,
    HI_UNF_CIPHER_TYPE_BUTT,
}HI_UNF_CIPHER_TYPE_E;

typedef struct
{
    HI_UNF_CIPHER_TYPE_E enCipherType;
}HI_UNF_CIPHER_ATTS_S;

/** Structure of the cipher control information */
/** CNcomment:加密控制信息结构 */
typedef struct hiHI_UNF_CIPHER_CTRL_S
{
    HI_U32 u32Key[8];                               /**< Key input */                                                                                                     /**< CNcomment:输入密钥 */
    HI_U32 u32IV[4];                                /**< Initialization vector (IV) */                                                                                    /**< CNcomment:初始向量 */
    HI_BOOL bKeyByCA;                               /**< Encryption using advanced conditional access (CA) or decryption using keys */                                    /**< CNcomment:是否使用高安全CA加密或解密Key */
    HI_UNF_CIPHER_CA_TYPE_E enCaType;                   /**< Select keyladder type when using advanced CA */                                                  		          /**< CNcomment:使用高安全CA时,选择何种类型的keyladder */
    HI_UNF_CIPHER_ALG_E enAlg;                      /**< Cipher algorithm */                                                                                              /**< CNcomment:加密算法 */
    HI_UNF_CIPHER_BIT_WIDTH_E enBitWidth;           /**< Bit width for encryption or decryption */                                                                        /**< CNcomment:加密或解密的位宽 */
    HI_UNF_CIPHER_WORK_MODE_E enWorkMode;           /**< Operating mode */                                                                                                /**< CNcomment:工作模式 */
    HI_UNF_CIPHER_KEY_LENGTH_E enKeyLen;            /**< Key length */                                                                                                    /**< CNcomment:密钥长度 */
    HI_UNF_CIPHER_CTRL_CHANGE_FLAG_S stChangeFlags; /**< control information exchange choices, we default all woulde be change except they have been in the choices */ 	  /**< CNcomment:控制信息变更选项，选项中没有标识的项默认全部变更 */
} HI_UNF_CIPHER_CTRL_S;

/** Cipher data */
/** CNcomment:加解密数据 */
typedef struct hiHI_UNF_CIPHER_DATA_S
{
    HI_U32 u32SrcPhyAddr;     /**< phy address of the original data */   /**< CNcomment:源数据物理地址 */
    HI_U32 u32DestPhyAddr;    /**< phy address of the purpose data */    /**< CNcomment:目的数据物理地址 */
    HI_U32 u32ByteLength;     /**< cigher data length*/                 /**< CNcomment:加解密数据长度 */
} HI_UNF_CIPHER_DATA_S;

/** Hash algrithm type */
/** CNcomment:哈希算法类型 */
typedef enum hiHI_UNF_CIPHER_HASH_TYPE_E
{
    HI_UNF_CIPHER_HASH_TYPE_SHA1,
    HI_UNF_CIPHER_HASH_TYPE_SHA256,
    HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1,
    HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256,
    HI_UNF_CIPHER_HASH_TYPE_IRDETO_CBCMAC, /**< Irdeto MSR2.2 CBC-MAC*/ /**< CNcomment: Irdeto MSR2.2 CBC-MAC*/
    HI_UNF_CIPHER_HASH_TYPE_BUTT,
}HI_UNF_CIPHER_HASH_TYPE_E;

/** Hash init struct input */
/** CNcomment:哈希算法初始化输入结构体 */
typedef struct
{
    HI_U32 u32TotalDataLen;
    HI_U8  u8HMACKey[16];		/**< only used for HMAC-SHA1/HMAC-SHA2 algrithm */	/**< CNcomment:此参数仅仅用于HMAC-SHA1/HMAC-SHA2算法 */
    HI_UNF_CIPHER_HASH_TYPE_E eShaType;
}HI_UNF_CIPHER_HASH_ATTS_S;

typedef enum
{
    HI_CIPHER_HMAC_KEY_FROM_CA  = 0,
    HI_CIPHER_HMAC_KEY_FROM_CPU = 1,
}CIPHER_HMAC_KEY_FROM_E;

typedef struct hiCIPHER_HASH_DATA_S
{
    HI_HANDLE hHandle;
    HI_UNF_CIPHER_HASH_TYPE_E enShaType;
    HI_U32 u32TotalDataLen;
    HI_U8  *pu8InputData;
    HI_U32 u32InputDataLen;
    /* max padding data (64bytes) | fix data length(8bytes) */
    HI_U8  u8Padding[64+8];
    HI_U32 u32PaddingLen;
    HI_U8  u8HMACKey[16];
    CIPHER_HMAC_KEY_FROM_E enHMACKeyFrom;
    HI_U8  *pu8Output;
}CIPHER_HASH_DATA_S;

/***/
typedef struct hiCIPHER_DATA_INFO_S
{
    HI_U32  u32src;          /**< */
    HI_U32  u32dest;         /**< */
    HI_U32  u32length;       /**< */
    HI_BOOL bDecrypt;        /**< */
    HI_U32  u32DataPkg[4];   /**< */
}HI_DRV_CIPHER_DATA_INFO_S;

typedef struct hiCIPHER_TASK_S
{
    HI_DRV_CIPHER_DATA_INFO_S         	stData2Process;
    HI_U32                      u32CallBackArg;
}HI_DRV_CIPHER_TASK_S;

typedef struct
{    
    HI_U8  *pu8Input;    
    HI_U8  *pu8Output;   
    HI_U32  u32DataLen;    
    HI_U8  *pu8N;    
    HI_U8  *pu8K;    
    HI_U16 u16NLen;    
    HI_U16 u16KLen;
}CIPHER_RSA_DATA_S;

/***************************** Macro Definition ******************************/
/** \addtogroup      H_3_5 */
/** @{ */  /** <!-- [ECS error code] */

#define  HI_ERR_CIPHER_NOT_INIT                     (HI_S32)(0x804D0001)
#define  HI_ERR_CIPHER_INVALID_HANDLE               (HI_S32)(0x804D0002)
#define  HI_ERR_CIPHER_INVALID_POINT                (HI_S32)(0x804D0003)
#define  HI_ERR_CIPHER_INVALID_PARA                 (HI_S32)(0x804D0004)
#define  HI_ERR_CIPHER_FAILED_INIT                  (HI_S32)(0x804D0005)
#define  HI_ERR_CIPHER_FAILED_GETHANDLE             (HI_S32)(0x804D0006)
#define  HI_ERR_CIPHER_FAILED_RELEASEHANDLE         (HI_S32)(0x804D0007)
#define  HI_ERR_CIPHER_FAILED_CONFIGAES             (HI_S32)(0x804D0008)
#define  HI_ERR_CIPHER_FAILED_CONFIGDES             (HI_S32)(0x804D0009)
#define  HI_ERR_CIPHER_FAILED_ENCRYPT               (HI_S32)(0x804D000A)
#define  HI_ERR_CIPHER_FAILED_DECRYPT               (HI_S32)(0x804D000B)
#define  HI_ERR_CIPHER_BUSY                         (HI_S32)(0x804D000C)

/** @} */  /*! <!-- Macro Definition end */

/* device parameter */
typedef struct  hiCIPHER_DATA_S
{
    HI_HANDLE CIHandle;
    HI_U32 ScrPhyAddr;
    HI_U32 DestPhyAddr;
    HI_U32 ByteLength;

}CIPHER_DATA_S;

typedef struct hiCIPHER_Config_CTRL
{
    HI_HANDLE CIHandle;
    HI_UNF_CIPHER_CTRL_S CIpstCtrl;

}CIPHER_Config_CTRL;


typedef struct hiCIPHER_PROC_ITEM_S
{
    HI_U32    u32Resv;

}CIPHER_PROC_ITEM_S;
#endif


