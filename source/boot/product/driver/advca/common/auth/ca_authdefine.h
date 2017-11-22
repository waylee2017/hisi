/******************************************************************************

Copyright (C), 2004-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_authdefine.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __CA_AUTHDEFINE_H__
#define __CA_AUTHDEFINE_H__

#include "hi_type.h"
#ifndef HI_ADVCA_TYPE_VERIMATRIX
#include <config.h>
#endif
#include "ca_pub.h"

#ifndef HI_MINIBOOT_SUPPORT
#include "common.h"
#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define AUTHCOMMONDTEST
#endif

#define NAND_PAGE_SIZE          (0x2000)
#define RSA_2048_LEN            (0x100)
#define SIGNATURE_LEN           (0x100)                             
#define KEYAREALEN              (0x200)
#define CMD_LEN                 (0X200)
#if defined (CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv330)

#define IMG_VERIFY_ADDRESS      (0X81400000)		//20M

#else
#define IMG_VERIFY_ADDRESS      (0X04000000)
#endif


#define CAImgHeadAreaLen        NAND_PAGE_SIZE
#define IMG_MAX_BLOCK_NUM       (5)
#define SHOW_TIME

typedef struct hi_CAImgHead_S
{   
    HI_U8  u8MagicNumber[32];                    //Magic Number: "Hisilicon_ADVCA_ImgHead_MagicNum"
    HI_U8  u8Version[8];                         //version: "V000 0003" 
    HI_U32 u32TotalLen;                          //Total length
    HI_U32 u32CodeOffset;                        //Image offset
    HI_U32 u32SignedImageLen;                    //Signed Image file size
    HI_U32 u32SignatureOffset;                   //Signed Image offset
    HI_U32 u32SignatureLen;                      //Signature length
    HI_U32 u32BlockNum;                          //Image block number
    HI_U32 u32BlockOffset[IMG_MAX_BLOCK_NUM];    //Each Block offset
    HI_U32 u32BlockLength[IMG_MAX_BLOCK_NUM];    //Each Block length
    HI_U32 Reserverd[32];
    HI_U32 u32CRC32;                             //CRC32 value
} HI_CAImgHead_S;

typedef enum
{
    AUTH_SHA1,
    AUTH_SHA2,
    AUTH_BUTT
}AUTHALG_E;

typedef struct
{
    unsigned char u8MagicNumber[32];             //Magic Number: "Hisilicon_ADVCA_ImgHead_MagicNum"
    unsigned char u8Version[8];                  //version: "V000 0003" 
    unsigned int  u32CreateDay;                  //yyyymmdd
    unsigned int  u32CreateTime;                 //hhmmss
    unsigned int  u32HeadLength;                 //The following data size
    unsigned int  u32SignedDataLength;           //signed data length
    unsigned int  u32IsYaffsImage;               //Yaffsr image need to specail read-out, No use
    unsigned int  u32IsConfigNandBlock;          //Yaffsr image need to specail read-out, No use
    unsigned int  u32NandBlockType;              //Yaffsr image need to specail read-out, No use
    unsigned int  u32IsNeedEncrypt;              //if "1", code need to be encrypted. 
    unsigned int  u32IsEncrypted;                //if "1", code has encrypted. 
    unsigned int  u32HashType;                   //if "0", u8Sha save sha1 of code, if "1",  u8Sha save sha256 of code
    unsigned char u8Sha[32];                     //SHA value
    unsigned int  u32SignatureLen;               //Actural Signature length
    unsigned char u8Signature[256];              //Max length:0x100
    unsigned char OrignalImagePath[256];         //Max length:
    unsigned char RSAPrivateKeyPath[256];        //Max length:0x100
    unsigned int  u32CurrentsectionID;            //begin with 0
	unsigned int  u32SectionSize;                 //section size 
    unsigned int  u32TotalsectionID;              //Max section ID > 1 
    unsigned int  CRC32;                         //CRC32 value
} HI_CASignImageTail_S;

typedef union
{
    struct 
    {
        HI_U8 reserved1        : 5;//[0:4]
        HI_U8 bload_mode_sel   : 1; //[5]
        HI_U8 reserved2        : 2; //[6:7]
    }bits;
    HI_U8 u8;
}CA_V300_BLOAD_MODE_U;

#define BOOT_BASIC          "boot"
#define STBID_BASIC         "stbid"
#define LOADER_BASIC        "loader"
#define SYSTEM_BASIC        "system"
#define BASE_BASIC          "baseparam"
#define PQ_BASIC            "pqparam"
#define LOGO_BASIC          "logo"
#define LOADER_INFOBASIC    "loaderdb"

#define SAVE_FREE( p ) \
    do {\
            if(p){\
                free(p);p=NULL;}\
        }while(0)

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HI_DEBUG_CA(format, arg...)
#else
#define HI_DEBUG_CA(format, arg...)     printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#endif

#ifdef  HI_ADVCA_FUNCTION_RELEASE
#define HI_ERR_CA(format, arg...)    
#define HI_INFO_CA(format, arg...)   
#define HI_SIMPLEINFO_CA(format, arg...)   
#else
#define HI_ERR_CA(format, arg...)       printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)   
#define HI_INFO_CA(format, arg...)      printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg) 
#define HI_SIMPLEINFO_CA(format, arg...)printf(format, ## arg)
#endif

#define CA_CheckPointer(p) \
    do {  \
        if (HI_NULL == p)\
        {\
            HI_ERR_CA("pointer parameter is NULL.\n"); \
            return -1; \
        } \
    } while (0)
    
#define CA_ASSERT(api, ret) \
    do{ \
        int l_ret = api; \
        if (l_ret != HI_SUCCESS) \
        { \
            HI_ERR_CA("run %s failed, ERRNO:%#x.\n", #api, l_ret); \
            return -1;\
        } \
        else\
        {\
        /*printf("sample %s: run %s ok.\n", __FUNCTION__, #api);}*/   \
        }\
        ret = l_ret;\
    }while(0)

#endif/*__CA_AUTHDEFINE_H__*/
