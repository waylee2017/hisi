/******************************************************************************
Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : sample_rng.c
Version       : Initial Draft
Author        : Hisilicon
Created       : 2012/07/10
Last Modified :
Description   :	sample for hash
Function List :
History       :
******************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <linux/fb.h>
#include <assert.h> 

#include "hi_type.h"
#include "hi_unf_cipher.h"
#include "hi_common.h"
#include "hi_adp.h"

#ifdef  CONFIG_SUPPORT_CA_RELEASE
#define HI_ERR_CIPHER(format, arg...)
#define HI_INFO_CIPHER(format, arg...)   printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#else
#define HI_ERR_CIPHER(format, arg...)    printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_INFO_CIPHER(format, arg...)   printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#endif

static HI_S32 printBuffer(const HI_CHAR *string, const HI_U8 *pu8Input, HI_U32 u32Length)
{
    HI_U32 i = 0;
    
    if ( NULL != string )
    {
        printf("%s\n", string);
    }

    for ( i = 0 ; i < u32Length; i++ )
    {
        if( (i % 16 == 0) && (i != 0)) printf("\n");
        printf("0x%02x ", pu8Input[i]);
    }
    printf("\n");

    return HI_SUCCESS;
}

HI_U8 u8HMACKey[16] = {0xe, 0xd, 0x2, 0x3, 0x2, 0x9, 0xc, 0xd, 0xa, 0xb, 0xc, 0xd, 0xa, 0xb, 0xc, 0xd};

static unsigned char sha1_buf[3][57] = {
    {"abc"},
    {"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"},
    {""}
};
static const int sha1_buflen[3] ={3, 56};
static const unsigned char sha1_sum[2][20] ={
    {0xA9, 0x99, 0x3E, 0x36, 0x47, 0x06, 0x81, 0x6A, 0xBA, 0x3E,
     0x25, 0x71, 0x78, 0x50, 0xC2, 0x6C, 0x9C, 0xD0, 0xD8, 0x9D},
    {0x84, 0x98, 0x3E, 0x44, 0x1C, 0x3B, 0xD2, 0x6E, 0xBA, 0xAE,
     0x4A, 0xA1, 0xF9, 0x51, 0x29, 0xE5, 0xE5, 0x46, 0x70, 0xF1},
};


static unsigned char sha2_buf[3][57] = {
    {"abc"},
    {"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"},
    {""}
};
static const int sha2_buflen[3] = {3, 56, 1000};
static const unsigned char sha2_sum[6][32] ={
    /** SHA-256 sample vectors*/
    {0xBA, 0x78, 0x16, 0xBF, 0x8F, 0x01, 0xCF, 0xEA, 0x41, 0x41, 0x40, 0xDE, 0x5D, 0xAE, 0x22, 0x23, 0xB0, 0x03, 0x61, 0xA3, 0x96, 0x17, 0x7A, 0x9C, 0xB4, 0x10, 0xFF, 0x61, 0xF2, 0x00, 0x15, 0xAD},
    {0x24, 0x8D, 0x6A, 0x61, 0xD2, 0x06, 0x38, 0xB8, 0xE5, 0xC0, 0x26, 0x93, 0x0C, 0x3E, 0x60, 0x39, 0xA3, 0x3C, 0xE4, 0x59, 0x64, 0xFF, 0x21, 0x67, 0xF6, 0xEC, 0xED, 0xD4, 0x19, 0xDB, 0x06, 0xC1},
    {0xCD, 0xC7, 0x6E, 0x5C, 0x99, 0x14, 0xFB, 0x92, 0x81, 0xA1, 0xC7, 0xE2, 0x84, 0xD7, 0x3E, 0x67, 0xF1, 0x80, 0x9A, 0x48, 0xA4, 0x97, 0x20, 0x0E, 0x04, 0x6D, 0x39, 0xCC, 0xC7, 0x11, 0x2C, 0xD0}
};

HI_S32 SHA1()
{
	HI_S32 ret = HI_SUCCESS;
    HI_U8 u8Hash[20];
    HI_U32 i = 0;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr;

	ret = HI_UNF_CIPHER_Init();
	if ( HI_SUCCESS != ret )
	{
		return HI_FAILURE;
	}

    memset(u8Hash, 0, 20);

    for(i = 0; i < 2; i++)
    {
        memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
        stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA1;

        ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}
		
        ret = HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}
		
        ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        if(memcmp(u8Hash, sha1_sum[i], 20) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "SHA1 run failed, sample %d!\n" "\033[0m", i);
            printBuffer("golden data:", sha1_sum[i], 20);
            printBuffer("Sha1 result:", u8Hash, 20);
            HI_UNF_CIPHER_DeInit();
            return HI_FAILURE;
        }

        printBuffer("Sha1 result:", u8Hash, 20);
    }

    HI_ERR_CIPHER("sample SHA1 run successfully!\n");
    HI_UNF_CIPHER_DeInit();
    (HI_VOID)HI_SYS_DeInit();

    return HI_SUCCESS;
}

HI_S32 SHA256()
{
	HI_S32 ret = HI_SUCCESS;
    HI_U8 u8Hash[32];
    HI_U32 i = 0;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr;

	ret = HI_UNF_CIPHER_Init();
	if ( HI_SUCCESS != ret )
	{
		return HI_FAILURE;
	}

    for(i = 0; i < 2; i++)
    {
        memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
        stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA256;

        ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        ret = HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        if(memcmp(u8Hash, sha2_sum[i], 32) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "SHA256 run failed, sample %d!\n" "\033[0m", i);
			HI_UNF_CIPHER_DeInit();
            return HI_FAILURE;
        }

        printBuffer("Sha256 result:", u8Hash, 32);
    }

    HI_ERR_CIPHER("sample SHA256 run successfully!\n");
    HI_UNF_CIPHER_DeInit();
    return HI_SUCCESS;
}

HI_S32 HMAC_SHA1()
{
    HI_S32 ret = HI_SUCCESS;
    HI_U8 u8Hash[20];
    HI_U32 i = 0;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr;

	ret = HI_UNF_CIPHER_Init();
	if ( HI_SUCCESS != ret )
	{
		return HI_FAILURE;
	}

    memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
	stHashAttr.pu8HMACKey = malloc(16);
	stHashAttr.u32HMACKeyLen = 16;
	if ( NULL == stHashAttr.pu8HMACKey )
	{
	    HI_UNF_CIPHER_DeInit();
		return HI_FAILURE;
	}

    memset(u8Hash, 0, 20);

    for(i = 0; i < 2; i++)
    {
        stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1;
        memcpy(stHashAttr.pu8HMACKey, u8HMACKey, 16);

        ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("hash init failed!\n");
            ret = HI_FAILURE;
            goto __EXIT__;
        }
        
        ret = HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("hash update failed!\n");
            ret = HI_FAILURE;
            goto __EXIT__;
        }
        
        ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("hash final failed!\n");
            ret = HI_FAILURE;
            goto __EXIT__;
        }

        printBuffer("hmac-Sha1 result:", u8Hash, 20);
    }

    HI_ERR_CIPHER("sample HMAC SHA1 run successfully!\n");

__EXIT__:
	free(stHashAttr.pu8HMACKey);
	stHashAttr.pu8HMACKey = NULL;
    HI_UNF_CIPHER_DeInit();

    return ret;
}


HI_S32 HMAC_SHA256()
{
    HI_S32 ret = HI_FAILURE;
    HI_U8 u8Hash[32];
    HI_U32 i = 0;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr;

	ret = HI_UNF_CIPHER_Init();
	if ( HI_SUCCESS != ret )
	{
		return HI_FAILURE;
	}

    memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
	stHashAttr.pu8HMACKey = malloc(16);
	stHashAttr.u32HMACKeyLen = 16;
	if ( NULL == stHashAttr.pu8HMACKey )
	{
	    HI_UNF_CIPHER_DeInit();
		return HI_FAILURE;
	}
	
    memset(u8Hash, 0, 32);

    for(i = 0; i < 2; i++)
    {
        stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256;
        memcpy(stHashAttr.pu8HMACKey, u8HMACKey, 16);

        ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        ret = HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}
		
        ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
		if ( HI_SUCCESS != ret )
		{
			HI_UNF_CIPHER_DeInit();
			return HI_FAILURE;
		}

        printBuffer("hmac-Sha256 result:", u8Hash, 32);
    }

    HI_ERR_CIPHER("sample HMAC SHA256 run successfully!\n");

__EXIT__:
    free(stHashAttr.pu8HMACKey);
	stHashAttr.pu8HMACKey = NULL;
    HI_UNF_CIPHER_DeInit();

    return HI_SUCCESS;
}


int main(int argc, char* argv[])
{
    
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 funcNumber = 0;
    HI_U32 i = 0;
    HI_U32 total= 0;

    (HI_VOID)HI_SYS_Init();

    if ( 2 != argc )
    {
        HI_INFO_CIPHER("Usage: %s funcNumber\n\n", argv[0]);
        HI_INFO_CIPHER("#########cipher sample##########\n"
                        "[0] SHA1\n"
                        "[1] SHA256\n"
                        "[2] HMAC-SHA1\n"
                        "[3] HMAC-SHA256\n");
	    (HI_VOID)HI_SYS_DeInit();
        return HI_SUCCESS;
    }
    funcNumber = strtol(argv[1],NULL,0);
    
	if ( 0 == funcNumber )
    {
        s32Ret = SHA1();
    }
    else if ( 1 == funcNumber )
    {
        s32Ret = SHA256();
    }
    else if ( 2 == funcNumber )
    {
        s32Ret = HMAC_SHA1();
    }
    else if ( 3 == funcNumber )
    {
        s32Ret = HMAC_SHA256();
    }
    else    
    {      
        HI_INFO_CIPHER("funcNumber %d do not exist!\n",funcNumber);
    }

    (HI_VOID)HI_SYS_DeInit();

    if(HI_SUCCESS != s32Ret)
    {        
        HI_INFO_CIPHER("funcNumber %d run failure.\n",funcNumber);        
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

