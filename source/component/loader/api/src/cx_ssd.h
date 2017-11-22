/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#ifndef __CX_API_SSD_H__
#define __CX_API_SSD_H__

#include "hi_type.h"
#define SIGNATURE_LEN           (0x100)
#define RSA_2048_LEN            (0x100)

/* #define CAIMGHEAD_MAGICNUMBER   "Hisilicon_ADVCA_ImgHead_MagicNum" */
#define KEYAREALEN              (0x200)
#define NAND_PAGE_SIZE       (0x2000)
#define CAImgHeadAreaLen        NAND_PAGE_SIZE   
#define IMG_MAX_BLOCK_NUM       5
#define FAKE_BLOCK_SIZE         0x2000

typedef struct hi_CAImgHead_S
{   
    HI_U8  au8MagicNumber[32];
    HI_U8  au8Version[8];
    HI_U32 u32TotalLen;
    HI_U32 u32CodeOffset;
    HI_U32 u32SignedImageLen; 
    HI_U32 u32SignatureOffset;
    HI_U32 u32SignatureLen;
    HI_U32 u32BlockNum;
    HI_U32 au32BlockOffset[IMG_MAX_BLOCK_NUM];
    HI_U32 au32BlockLength[IMG_MAX_BLOCK_NUM];
    HI_U32 au32Reserverd[32];
    HI_U32 u32CRC32;
} HI_CAImgHead_S;


typedef struct
{
    HI_U8   au8MagicNumber[32];             /* Magic Number: "Hisilicon_ADVCA_ImgTail_MagicNum" */
    HI_U8   au8Version[8];                  /* version: "V000 0002" */
    HI_U32  u32CreateDay;                   /* yyyymmdd */
    HI_U32  u32CreateTime;                  /* hhmmss */
    HI_U32  u32HeadLength;                  /* The following data size */
    HI_U32  u32SignedDataLength;            /* signed data length */
    HI_U32  u32IsYaffsImage;                /* Yaffsr image need to specail read-out */
    HI_U32  u32IsConfigNandBlock;           /* Yaffsr image need to specail read-out */
    HI_U32  u32NandBlockType;               /* Yaffsr image need to specail read-out */
    HI_U32  u32IsNeedEncrypt;               /* if "1", code need to be encrypted. */
    HI_U32  u32IsEncrypted;                 /* if "1", code has encrypted. */
    HI_U32  u32HashType;                    /* if "0", au8Sha save sha1 of code, if "1",  au8Sha save sha256 of code */
    HI_U8   au8Sha[32];                     /* SHA value */
    HI_U32  u32SignatureLen;                /* Actural Signature length */
    HI_U8   au8Signature[256];              /* Max length:0x100 */
    HI_U8   au8OrignalImagePath[256];       /* Max length: */
    HI_U8   au8RSAPrivateKeyPath[256];      /* Max length:0x100 */
    HI_U32  u32CurrentsectionID;            /*begin with 0 */
	HI_U32  u32SectionSize;                 /*section size  */
    HI_U32  u32TotalsectionID;              /*Max section ID > 1  */
	HI_U32  CRC32;                          /* CRC32 of upper data */
} HI_CASignImageTail_S;                     /* Total size */


typedef enum
{
    AUTH_SHA1,
    AUTH_SHA2,
    AUTH_BUTT
}AUTHALG_E;

typedef enum hiCA_KEY_GROUP_E
{
    HI_CA_KEY_GROUP_1,
    HI_CA_KEY_GROUP_2,
}HI_CA_KEY_GROUP_E;

typedef enum 
{
    CA_AUTH_TYPE_COMMON,
    CA_AUTH_TYPE_SPECIAL,
    CA_AUTH_TYPE_BUTT,
}CA_AUTH_TYPE_E;

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HI_ERR_CA_INTEGRATION(format, arg...)    
#define HI_INFO_CA_INTEGRATION(format, arg...)   
#define HI_SIMPLEINFO_CA(format, arg...)
#else
#if 1
#define HI_ERR_CA_INTEGRATION(format, arg...)    printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_INFO_CA_INTEGRATION(format, arg...)   
#define HI_SIMPLEINFO_CA(format, arg...)         printf(format, ## arg)
#else
#define HI_ERR_CA_INTEGRATION(format, arg...)    HI_PRINT( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_INFO_CA_INTEGRATION(format, arg...)   HI_PRINT( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_SIMPLEINFO_CA(format, arg...)		 HI_PRINT(format, ## arg)
#endif
#endif
#define CA_CheckPointer(p) \
    do {  \
        if (HI_NULL == p)\
        {\
            HI_ERR_CA_INTEGRATION("pointer parameter is NULL.\n"); \
            return -1; \
        } \
    } while (0)
    
#define CA_ASSERT(api, ret) \
    do{ \
        HI_S32 l_ret = api; \
        if (l_ret != HI_SUCCESS) \
        { \
            HI_ERR_CA_INTEGRATION("run %s failed, ERRNO:%#x.\n", #api, l_ret); \
            return -1;\
        } \
        else\
        {\
            HI_INFO_CA_INTEGRATION("sample %s: run %s ok.\n", __FUNCTION__, #api);   \
        }\
        ret = l_ret;\
    }while(0) 


#if 0
#define HI_DEBUG_CA printf
#else
#define HI_DEBUG_CA
#endif

/**
\brief decrypt the data  CNcomment:解密数据
\param[in]  enKeyGroup The key for decryption CNcomment:enKeyGroup 解密所使用的key类型
\param[in]  StartVirAddr start address of data CNcomment:StartVirAddr 数据起始地址
\param[in]  CipherTextlength  data  length CNcomment:length 数据长度
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_DecryptImageUsingR2RKeyladder(HI_CA_KEY_GROUP_E enKeyGroup, HI_U8* pu8StartVirAddr,HI_U32 u32CipherTextlength);

/**
\brief encrypt the data  CNcomment:加密数据
\param[in]  enKeyGroup The key for encryption CNcomment:enKeyGroup 加密所使用的key类型
\param[in]  StartVirAddr start address of data CNcomment:StartVirAddr 数据起始地址
\param[in]  PlainTextlength  data  length CNcomment:length 数据长度
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_EncryptImageUsingR2RKeyladder(HI_CA_KEY_GROUP_E enKeyGroup, HI_U8* pu8StartVirAddr,HI_U32 u32PlainTextlength);

/**
\brief authenticate the magic number of the data CNcomment:对数据的MAGIC NUMBER进行校验
\param[in]  StartVirAddr start virtual address of data CNcomment:StartVirAddr 数据起始虚拟地址
\param[out] CodeAddr  real Code address CNcomment:length 真正可用软件镜像的地址
\retval ::HI_SUCCESS  success CNcomment:成功
\retval ::HI_FAILURE failure CNcomment:失败
\see \n
*/
HI_S32 CA_AuthenticateEx(HI_U8* pu8StartVirAddr, HI_U32* pu32CodeOffset);

#endif

