/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : cmd_cipher.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
//#include <stdlib.h>
#include "hi_type.h"
#include "drv_cipher_intf.h"
#include "hi_unf_cipher.h"
#ifndef HI_MINIBOOT_SUPPORT
#include <common.h>
#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE

#ifdef CIPHER_CMD_TEST
static HI_S32 Cipher_printBuffer(const HI_CHAR *string, const HI_U8 *pu8Input, HI_U32 u32Length)
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

HI_U8 u8HMACSha1Key[16] = {0x7e, 0xe0, 0x1e, 0x27, 0x94, 0x95, 0x29, 0x65, 0x14, 0xed, 0x4d, 0x39, 0x5a, 0x60, 0x6c, 0x62};
HI_U8 u8HMACSha2Key[16] = {0x16, 0x37, 0xa4, 0x54, 0x64, 0xda, 0xe9, 0x19, 0x03, 0x69, 0xe4, 0x1f, 0xea, 0xa9, 0xfa, 0x0a};


static unsigned char sha1_buf[3][57] = {
    {"abc"},
    {"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"},
    {""}
};
static const int sha1_buflen[3] ={3, 56, 1024};
static const unsigned char sha1_sum[3][20] ={
    {0xA9, 0x99, 0x3E, 0x36, 0x47, 0x06, 0x81, 0x6A, 0xBA, 0x3E,
     0x25, 0x71, 0x78, 0x50, 0xC2, 0x6C, 0x9C, 0xD0, 0xD8, 0x9D},
    {0x84, 0x98, 0x3E, 0x44, 0x1C, 0x3B, 0xD2, 0x6E, 0xBA, 0xAE,
     0x4A, 0xA1, 0xF9, 0x51, 0x29, 0xE5, 0xE5, 0x46, 0x70, 0xF1},
    {0x8e, 0xca, 0x55, 0x46, 0x31, 0xdf, 0x9e, 0xad, 0x14, 0x51,
     0x0e, 0x1a, 0x70, 0xae, 0x48, 0xc7, 0x0f, 0x9b, 0x93, 0x84}
};

static const unsigned char hmac_sha1_sum[3][20] ={
    {0x2c, 0x70, 0x65, 0xf0, 0xbb, 0xfa, 0x67, 0x39, 0x91, 0x6b,
     0x63, 0xe8, 0x33, 0xd3, 0x80, 0x91, 0xa2, 0x6a, 0x4c, 0x83},
    {0xed, 0xc8, 0x02, 0x3a, 0x75, 0x1a, 0xa5, 0x87, 0xe7, 0xff,
     0x04, 0x81, 0x93, 0x5d, 0x02, 0x1f, 0xf4, 0x06, 0x09, 0x4a},
    {0x9e, 0x7d, 0x9a, 0x09, 0x2b, 0x47, 0x81, 0x6b, 0x27, 0xef, 
     0xad, 0x19, 0xbd, 0x49, 0x00, 0xce, 0xff, 0x71, 0x9b, 0x99}
};

static unsigned char sha2_buf[3][57] = {
    {"abc"},
    {"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"},
    {""}
};
static const int sha2_buflen[3] = {3, 56, 1024};
static const unsigned char sha2_sum[6][32] ={
    /** SHA-256 sample vectors*/
    {0xBA, 0x78, 0x16, 0xBF, 0x8F, 0x01, 0xCF, 0xEA, 0x41, 0x41, 0x40, 0xDE, 0x5D, 0xAE, 0x22, 0x23,
     0xB0, 0x03, 0x61, 0xA3, 0x96, 0x17, 0x7A, 0x9C, 0xB4, 0x10, 0xFF, 0x61, 0xF2, 0x00, 0x15, 0xAD},
    {0x24, 0x8D, 0x6A, 0x61, 0xD2, 0x06, 0x38, 0xB8, 0xE5, 0xC0, 0x26, 0x93, 0x0C, 0x3E, 0x60, 0x39,
     0xA3, 0x3C, 0xE4, 0x59, 0x64, 0xFF, 0x21, 0x67, 0xF6, 0xEC, 0xED, 0xD4, 0x19, 0xDB, 0x06, 0xC1},
    {0x2e, 0xdc, 0x98, 0x68, 0x47, 0xe2, 0x09, 0xb4, 0x01, 0x6e, 0x14, 0x1a, 0x6d, 0xc8, 0x71, 0x6d, 
     0x32, 0x07, 0x35, 0x0f, 0x41, 0x69, 0x69, 0x38, 0x2d, 0x43, 0x15, 0x39, 0xbf, 0x29, 0x2e, 0x4a }
};

static const unsigned char hmac_sha2_sum[3][32] ={
    {0xd3, 0x8b, 0x88, 0x1e, 0x79, 0xe5, 0x1f, 0xb4, 0xd8, 0xee, 0x47, 0xe5, 0xe8, 0x91, 0x10, 0xf7, 
     0x3d, 0xa9, 0x7d, 0xd1, 0x9f, 0x6b, 0xd6, 0x14, 0x8a, 0x19, 0x4c, 0xf9, 0x90, 0x7a, 0x68, 0xb1},
    {0xc8, 0xd7, 0x55, 0xa5, 0xce, 0x90, 0xef, 0xe5, 0xb9, 0x56, 0x99, 0xf5, 0x32, 0x29, 0x10, 0x2d, 
     0x3c, 0xc6, 0x56, 0x4b, 0x61, 0xf4, 0x0d, 0xda, 0xf0, 0xdc, 0x66, 0xa8, 0x1e, 0x81, 0xab, 0xe0},
    {0xfc, 0xcb, 0x8f, 0x53, 0xa2, 0xee, 0x0c, 0xd1, 0x9b, 0x04, 0x23, 0xc5, 0x37, 0x64, 0x76, 0x7f, 
     0x02, 0x7c, 0x03, 0xe1, 0x37, 0xb6, 0x37, 0xb3, 0x85, 0x22, 0x5b, 0x1b, 0x12, 0x1d, 0xee, 0xe2}
};

HI_S32 SHA1(HI_VOID)
{
    HI_U8 u8Hash[20];
    HI_U32 i, j;
    HI_U8 u8Buf[1024];
    HI_U32 buflen;
    HI_HANDLE hHandle;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr ={0};

	HI_UNF_CIPHER_Init();

    memset(u8Hash, 0, 20);

    for(i = 0; i < 3; i++)
    {
        if(i == 2)
        {
            memset(u8Buf, 'a', buflen = 1024);
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA1;
            stHashAttr.u32TotalDataLen = buflen;
            HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            HI_UNF_CIPHER_HashUpdate(hHandle, u8Buf, 1024);
            HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        }
        else
        {
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA1;
            stHashAttr.u32TotalDataLen = sha1_buflen[i];
            HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
            HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        }

        Cipher_printBuffer("Sha1 result:", u8Hash, 20);

        if(memcmp(u8Hash, sha1_sum[i], 20) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "SHA1 run failed, sample %d!\n" "\033[0m", i);
            Cipher_printBuffer("golden data:", sha1_sum[i], 20);
            return HI_FAILURE;
        }
    }

    HI_ERR_CIPHER("sample SHA1 run successfully!\n");
    HI_UNF_CIPHER_DeInit();

    return HI_SUCCESS;
}

HI_S32 SHA256(HI_VOID)
{
    HI_U8 u8Hash[32];
    HI_U32 i, j;
    HI_U8 u8Buf[1024];
    HI_U32 buflen;
    HI_HANDLE hHandle;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr = {0};

	HI_UNF_CIPHER_Init();

    for(i = 0; i < 3; i++)
    {
        if(i == 2)
        {
            memset(u8Buf, 'a', buflen = 1024);

            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA256;
            stHashAttr.u32TotalDataLen = buflen;
            HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            HI_UNF_CIPHER_HashUpdate(hHandle, u8Buf, 1024);
            HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        }
        else
        {
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA256;
            stHashAttr.u32TotalDataLen = sha1_buflen[i];
            HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
            HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        }

        Cipher_printBuffer("Sha256 result:", u8Hash, 32);

        if(memcmp(u8Hash, sha2_sum[i], 32) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "SHA256 run failed, sample %d!\n" "\033[0m", i);
            Cipher_printBuffer("golden data:", sha2_sum[i], 32);
            return HI_FAILURE;
        }
    }

    HI_ERR_CIPHER("sample SHA256 run successfully!\n");
    HI_UNF_CIPHER_DeInit();
    return HI_SUCCESS;
}

HI_S32 HMAC_SHA1(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U8 u8Hash[20];
    HI_U32 i, j;
    HI_U8 u8Buf[1024];
    HI_U32 buflen;
    HI_HANDLE hHandle;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr = {0};

	HI_UNF_CIPHER_Init();

    memset(u8Hash, 0, 20);

    for(i = 0; i < 3; i++)
    {
        if(i == 2)
        {            
            memset(u8Buf, 'a', buflen = 1024);
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1;
            stHashAttr.u32TotalDataLen = buflen;
            memcpy(stHashAttr.u8HMACKey, u8HMACSha1Key, 16);
            ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            if( HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("HASH INIT FAILED!\n");
                return HI_FAILURE;
            }
            ret = HI_UNF_CIPHER_HashUpdate(hHandle, u8Buf, 1024);
            if( HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("HASH UPDATE FAILED!\n");
                ret = HI_FAILURE;
                goto EXIT;
            }
            
            ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
            if( HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("HASH FINAL FAILED!\n");
                ret = HI_FAILURE;
                goto EXIT;
            }
        }
        else
        {
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA1;
            stHashAttr.u32TotalDataLen = sha1_buflen[i];
            memcpy(stHashAttr.u8HMACKey, u8HMACSha1Key, 16);
            ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash init failed!\n");
                ret = HI_FAILURE;
                goto EXIT;
            }
            
            ret = HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash update failed!\n");
                ret = HI_FAILURE;
                goto EXIT;
            }
            
            ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash final failed!\n");
                ret = HI_FAILURE;
                goto EXIT;
            }
        }

        Cipher_printBuffer("hmac-Sha1 result:", u8Hash, 20);

        if(memcmp(u8Hash, hmac_sha1_sum[i], 20) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "HMAC SHA1 run failed, sample %d!\n" "\033[0m", i);
            Cipher_printBuffer("golden data:", hmac_sha1_sum[i], 20);
            return HI_FAILURE;
        }
    }

    HI_ERR_CIPHER("sample HMAC SHA1 run successfully!\n");

EXIT:
    HI_UNF_CIPHER_DeInit();

    return ret;
}


HI_S32 HMAC_SHA256(HI_VOID)
{
    HI_S32 ret = HI_FAILURE;
    HI_U8 u8Hash[32];
    HI_U32 i, j;
    HI_U8 u8Buf[1024];
    HI_U32 buflen;
    HI_HANDLE hHandle;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr = {0};
    

	HI_UNF_CIPHER_Init();

    memset(u8Hash, 0, 32);

    for(i = 0; i < 3; i++)
    {
        if(i == 2)
        {            
            memset(u8Buf, 'a', buflen = 1024);
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256;
            stHashAttr.u32TotalDataLen = buflen;
            memcpy(stHashAttr.u8HMACKey, u8HMACSha2Key, 16);
            ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash init failed!\n");
                return HI_FAILURE;
            }
            
            ret = HI_UNF_CIPHER_HashUpdate(hHandle, u8Buf, 1024);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash update failed!\n");
                return HI_FAILURE;
            }
            
            ret = HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("hash final failed!\n");
                return HI_FAILURE;
            }
        }
        else
        {
            stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_HMAC_SHA256;
            stHashAttr.u32TotalDataLen = sha1_buflen[i];
            memcpy(stHashAttr.u8HMACKey, u8HMACSha2Key, 16);
            HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
            HI_UNF_CIPHER_HashUpdate(hHandle, sha1_buf[i], sha1_buflen[i]);
            HI_UNF_CIPHER_HashFinal(hHandle, u8Hash);
        }

        Cipher_printBuffer("hmac-Sha256 result:", u8Hash, 32);

        if(memcmp(u8Hash, hmac_sha2_sum[i], 32) != 0)
        {
            HI_ERR_CIPHER("\033[0;31m" "HMAC SHA256 run failed, sample %d!\n" "\033[0m", i);
            Cipher_printBuffer("golden data:", hmac_sha2_sum[i], 32);
            return HI_FAILURE;
        }
    }

    HI_ERR_CIPHER("sample HMAC SHA256 run successfully!\n");

EXIT:
    HI_UNF_CIPHER_DeInit();

    return HI_SUCCESS;
}

#if !defined HI_ADVCA_TYPE_VERIMATRIX && !defined HI_MINIBOOT_SUPPORT
int test_hash(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    
    HI_S32 ret = HI_SUCCESS;
    
    if ( argc != 2)
    {
        HI_INFO_CIPHER("Usage: %s funcNumber\n\n", argv[0]);
        HI_INFO_CIPHER("#########hash sample##########\n"
                        "[0] SHA1\n"
                        "[1] SHA256\n"
                        "[2] HMAC-SHA1\n"
                        "[3] HMAC-SHA256\n");
        return HI_SUCCESS;
    }
    
	if (!strncmp(argv[1], "0", 1))
    {
        ret = SHA1();
    }
    else if (!strncmp(argv[1], "1", 1))
    {
        ret = SHA256();
    }
    else if (!strncmp(argv[1], "2", 1))
    {
        ret = HMAC_SHA1();
    }
    else if (!strncmp(argv[1], "3", 1))
    {
        ret = HMAC_SHA256();
    }
    else
    {      
        HI_INFO_CIPHER("funcNumber %s do not exist!\n",argv[1]);
    }

    if(HI_SUCCESS != ret)    
    {        
        HI_INFO_CIPHER("funcNumber %s run failure.\n",argv[1]);        
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

U_BOOT_CMD(
	hash_test,	3,	1,	test_hash,
	"hash_test [x]:[0] SHA1; [1] SHA256; [2] HMAC-SHA1; [3] HMAC-SHA256;",
	"Test the hash interface");

static HI_S32 Hash_SHA1_Calc(HI_U8 *pu8Buffer, HI_U32 u32Len)
{
	HI_S32 ret = 0;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr;
    HI_U8 au8Hash[32] = {0};
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_U32 index = 0;
    HI_U32 u32BlockSize = 1024 * 1024;
    HI_U32 round = 0;
    HI_U32 tail = 0;

	if(NULL == pu8Buffer || 0 == u32Len)
	{
		printf("Invalid parameters!\n");
		return HI_FAILURE;
	}

	memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
    stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA1;
    stHashAttr.u32TotalDataLen = u32Len;

    ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_CIPHER_HashInit failed, ret: 0x%x!\n", ret);
		return HI_FAILURE;
	}

	round = u32Len / u32BlockSize;
	for(index = 0; index < (round * u32BlockSize); index+=u32BlockSize)
	{
	    ret = HI_UNF_CIPHER_HashUpdate(hHandle, pu8Buffer + index, u32BlockSize);
		if(HI_SUCCESS != ret)
		{
			printf("HI_UNF_CIPHER_HashUpdate failed, ret: 0x%x!\n", ret);
			return HI_FAILURE;
		}
	}

	/* the last round */
	tail = u32Len % u32BlockSize;
	if(0 != tail)
	{
	    ret = HI_UNF_CIPHER_HashUpdate(hHandle, pu8Buffer + index, tail);
		if(HI_SUCCESS != ret)
		{
			printf("HI_UNF_CIPHER_HashUpdate failed, ret: 0x%x!\n", ret);
			return HI_FAILURE;
		}
	}

	ret = HI_UNF_CIPHER_HashFinal(hHandle, au8Hash);
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_CIPHER_HashFinal failed, ret: 0x%x!\n", ret);
		return HI_FAILURE;
	}

	Cipher_printBuffer("SHA1 result:", au8Hash, 20);

	return HI_SUCCESS;
}

static HI_S32 Hash_SHA2_Calc(HI_U8 *pu8Buffer, HI_U32 u32Len)
{
	HI_S32 ret = 0;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr ={0};
    HI_U8 au8Hash[32] = {0};
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_U32 index = 0;
    HI_U32 u32BlockSize = 1024 * 1024;
    HI_U32 round = 0;
    HI_U32 tail = 0;

	if(NULL == pu8Buffer || 0 == u32Len)
	{
		printf("Invalid parameters!\n");
		return HI_FAILURE;
	}

	memset(&stHashAttr, 0, sizeof(HI_UNF_CIPHER_HASH_ATTS_S));
    stHashAttr.eShaType = HI_UNF_CIPHER_HASH_TYPE_SHA256;
    stHashAttr.u32TotalDataLen = u32Len;

    ret = HI_UNF_CIPHER_HashInit(&stHashAttr, &hHandle);
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_CIPHER_HashInit failed, ret: 0x%x!\n", ret);
		return HI_FAILURE;
	}

	round = u32Len / u32BlockSize;
	for(index = 0; index < (round * u32BlockSize); index+=u32BlockSize)
	{
	    ret = HI_UNF_CIPHER_HashUpdate(hHandle, pu8Buffer + index, u32BlockSize);
		if(HI_SUCCESS != ret)
		{
			printf("HI_UNF_CIPHER_HashUpdate failed, ret: 0x%x!\n", ret);
			return HI_FAILURE;
		}
	}

	/* the last round */
	tail = u32Len % u32BlockSize;
	if(0 != tail)
	{
	    ret = HI_UNF_CIPHER_HashUpdate(hHandle, pu8Buffer + index, tail);
		if(HI_SUCCESS != ret)
		{
			printf("HI_UNF_CIPHER_HashUpdate failed, ret: 0x%x!\n", ret);
			return HI_FAILURE;
		}
	}

	ret = HI_UNF_CIPHER_HashFinal(hHandle, au8Hash);
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_CIPHER_HashFinal failed, ret: 0x%x!\n", ret);
		return HI_FAILURE;
	}

	Cipher_printBuffer("SHA2 result:", au8Hash, 32);

	return HI_SUCCESS;
}

static int Hash_Calc(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32Len = 0;
    HI_U32 u32Addr = 0;
    HI_U32 u32HashType = 0;
    HI_UNF_CIPHER_HASH_ATTS_S stHashAttr ={0};

	if ( argc != 4)
    {
        HI_INFO_CIPHER("Usage: %s funcNumber addr len\n\n", argv[0]);
        HI_INFO_CIPHER("#########funcNumber##########\n"
                        "[0] SHA1\n"
                        "[1] SHA256\n");
        return HI_SUCCESS;
    }

	u32HashType = (HI_U32)simple_strtoul(argv[1], NULL, 0);
	u32Addr = (HI_U32)simple_strtoul(argv[2], NULL, 0);
	u32Len = (HI_U32)simple_strtoul(argv[3], NULL, 0);

	printf("u32HashType: 0x%x, Address: 0x%x, Length: 0x%x\n", u32HashType, u32Addr, u32Len);

/*
    if (u32Len <= 56)
    {
        memcpy((void*)u32Addr, sha1_buf[1], u32Len);
    }
    else
    {
        memset((void*)u32Addr, 'a', u32Len);
    }
*/
	HI_UNF_CIPHER_Init();

	if (0 == u32HashType)
    {
        ret = Hash_SHA1_Calc(u32Addr, u32Len);
    }
    else if (1 == u32HashType)
    {
        ret = Hash_SHA2_Calc(u32Addr, u32Len);
    }
    else
    {
		printf("Failed, Hash type not supported: 0x%x!\n", u32HashType);
    }

    return ret;
}

U_BOOT_CMD(hash, 4, 1, Hash_Calc, "Calcluate hash", "for example: hash type address length  type:0:sha1, 1:sha2");
HI_S32 Setconfiginfo(HI_HANDLE chnHandle, HI_U8 *pu8Key)
{
	HI_UNF_CIPHER_CTRL_S CipherCtrl;
	HI_S32 s32Ret = HI_SUCCESS;
    memset(&CipherCtrl, 0, sizeof(CipherCtrl));
    CipherCtrl.bKeyByCA = HI_TRUE;
    CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    CipherCtrl.stChangeFlags.bit1IV = 1;
    CipherCtrl.enCaType = HI_UNF_CIPHER_CA_TYPE_BLPK;
    memcpy(CipherCtrl.u32Key, pu8Key,16);
	memset(CipherCtrl.u32IV, 0x0, 16);
	s32Ret = HI_UNF_CIPHER_ConfigHandle(chnHandle, &CipherCtrl);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher Config Handle Failed!\n");
		return HI_FAILURE;
	}
    return HI_SUCCESS;
}
HI_S32 cbc_mac(HI_S32 argc, char *argv[])
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_U8 u8MacValue[16];
	HI_U8 M[40] = {
        0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
        0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a,
        0xae, 0x2d, 0x8a, 0x57, 0x1e, 0x03, 0xac, 0x9c,
        0x9e, 0xb7, 0x6f, 0xac, 0x45, 0xaf, 0x8e, 0x51,
        0x30, 0xc8, 0x1c, 0x46, 0xa3, 0x5c, 0xe4, 0x11
	};
	HI_U8 key[16] = {
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
        0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
    };
    HI_U8 result[16] = {0xa8, 0x77, 0x19, 0x4e, 0x75, 0x47, 0x29, 0xac, 0x10, 0x45, 0xdb, 0x8c, 0x2f, 0xc3, 0xf8, 0x26};//use hard key, all 0
    HI_HANDLE hCipherHandle = 0;
	HI_UNF_CIPHER_ATTS_S stCipherAttr = {0};
	HI_UNF_CIPHER_Init();
	stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
	s32Ret = HI_UNF_CIPHER_CreateHandle(&hCipherHandle, &stCipherAttr);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher Create Handle Failed!\n");
		return HI_FAILURE;
	}
	s32Ret = Setconfiginfo(hCipherHandle, key);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher Setconfiginfo Failed!\n");
        HI_UNF_CIPHER_DeInit();
		return HI_FAILURE;
	}
	HI_UNF_CIPHER_CalcMAC(hCipherHandle, M, 16, u8MacValue, HI_FALSE);
	HI_UNF_CIPHER_CalcMAC(hCipherHandle, M + 16, 16, u8MacValue, HI_FALSE);
	HI_UNF_CIPHER_CalcMAC(hCipherHandle, M + 32, 8, u8MacValue, HI_TRUE);
    Cipher_printBuffer("Cbcmac value:", u8MacValue, sizeof(u8MacValue));
    if (memcmp(u8MacValue, result, 16) != 0)
    {
        HI_ERR_CIPHER("CBC MAC TEST Failed!\n");
    }
	s32Ret = HI_UNF_CIPHER_DestroyHandle(hCipherHandle);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher DestroyHandle Failed!\n");
        HI_UNF_CIPHER_DeInit();
		return HI_FAILURE;
}
	HI_UNF_CIPHER_DeInit();
	return HI_SUCCESS;
}
U_BOOT_CMD(cbc_mac_test, 4, 1, cbc_mac, "Calcluate cbc mac", "for example: cbc_mac_test");
#endif /* #if !defined HI_ADVCA_TYPE_VERIMATRIX && !defined HI_MINIBOOT_SUPPORT */
#endif /* #ifdef CIPHER_CMD_TEST */

#endif /* #ifndef HI_ADVCA_FUNCTION_RELEASE */
