/******************************************************************************
Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : sample_rng.c
Version       : Initial Draft
Author        : Hisilicon
Created       : 2012/07/10
Last Modified :
Description   :	sample for cipher
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

typedef HI_S32 (*list_func)();

static const HI_U8 aes_128_cbc_IV[32] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,};
HI_U8 aes_128_src_buf[16] = {0x11, 0x11, 0x11, 0x11, 0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
HI_U8 aes_128_dst_buf[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

static HI_S32 printBuffer(HI_CHAR *string, HI_U8 *pu8Input, HI_U32 u32Length)
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


HI_S32 Setconfiginfo(HI_HANDLE chnHandle, HI_BOOL isKeyByCA, HI_UNF_CIPHER_ALG_E alg, HI_UNF_CIPHER_WORK_MODE_E mode, HI_UNF_CIPHER_KEY_LENGTH_E keyLen,
                                                const HI_U8 u8KeyBuf[16], const HI_U8 u8IVBuf[16])
{
	HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    
    memset(&CipherCtrl, 0, sizeof(HI_UNF_CIPHER_CTRL_S));
    CipherCtrl.bKeyByCA = isKeyByCA;
    CipherCtrl.enAlg = alg;
    CipherCtrl.enWorkMode = mode;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_64BIT;
    CipherCtrl.enKeyLen = keyLen;
    if(CipherCtrl.enWorkMode != HI_UNF_CIPHER_WORK_MODE_ECB)
    {
        CipherCtrl.stChangeFlags.bit1IV = 1;  //must set for CBC , CFB mode
        memcpy(CipherCtrl.u32IV, u8IVBuf, 16);
    }

    if ( HI_FALSE == isKeyByCA )
    {
        memcpy(CipherCtrl.u32Key, u8KeyBuf, 32);
    }        

    s32Ret = HI_UNF_CIPHER_ConfigHandle(chnHandle, &CipherCtrl);
    if(HI_SUCCESS != s32Ret)
	{
		return HI_FAILURE;	
	}

    return HI_SUCCESS;
}


/* encrypt data using special chn*/
HI_S32 main(int argc, char* argv[])
{
	HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32TestDataLen = 16;
    HI_U32 u32InputAddrPhy;
    HI_U32 u32OutPutAddrPhy;
    HI_U32 u32Testcached = 0;
    HI_U8 *pInputAddrVir;
    HI_U8 *pOutputAddrVir;
    HI_HANDLE hTestchnid = 0;
    HI_UNF_CIPHER_ATTS_S stCipherAttr = {0};
    HI_U8 u8Buffer[16];
    HI_U8 u8Key[16] = {0x11, 0x11, 0x11, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    HI_U32 i = 0;

    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;

    (HI_VOID)HI_SYS_Init();

    s32Ret = HI_UNF_CIPHER_Init();
    if(HI_SUCCESS != s32Ret)
	{
        (HI_VOID)HI_SYS_DeInit();
		return HI_FAILURE;	
	}
    s32Ret = HI_UNF_CIPHER_CreateHandle(&hTestchnid, &stCipherAttr);
    if(HI_SUCCESS != s32Ret)
	{
		HI_UNF_CIPHER_DeInit();
        (HI_VOID)HI_SYS_DeInit();
		return HI_FAILURE;	
	}

    u32InputAddrPhy = (HI_U32)HI_MMZ_New(u32TestDataLen, 0, NULL, "CIPHER_BufIn");
    if (0 == u32InputAddrPhy)
    {
        HI_ERR_CIPHER("Error: Get phyaddr for input failed!\n");
        goto __CIPHER_EXIT__;
    }
    pInputAddrVir = HI_MMZ_Map(u32InputAddrPhy, u32Testcached);
    u32OutPutAddrPhy = (HI_U32)HI_MMZ_New(u32TestDataLen, 0, NULL, "CIPHER_BufOut");
    if (0 == u32OutPutAddrPhy)
    {
        HI_ERR_CIPHER("Error: Get phyaddr for outPut failed!\n");
        goto __CIPHER_EXIT__;
    }
    pOutputAddrVir = HI_MMZ_Map(u32OutPutAddrPhy, u32Testcached);
    
	/* For encrypt */
    s32Ret = Setconfiginfo(hTestchnid, 
                            HI_FALSE, 
                            HI_UNF_CIPHER_ALG_AES, 
                            HI_UNF_CIPHER_WORK_MODE_CBC, 
                            HI_UNF_CIPHER_KEY_AES_128BIT,
                            u8Key, 
                            aes_128_cbc_IV);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Set config info failed.\n");
		goto __CIPHER_EXIT__;	
	}

    memset(pInputAddrVir, 0x0, u32TestDataLen);
    memcpy(pInputAddrVir, aes_128_src_buf, u32TestDataLen);
    printBuffer("clear text:", aes_128_src_buf, sizeof(aes_128_src_buf));

    memset(pOutputAddrVir, 0x0, u32TestDataLen);

    s32Ret = HI_UNF_CIPHER_Encrypt(hTestchnid, u32InputAddrPhy, u32OutPutAddrPhy, u32TestDataLen);
    if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher encrypt failed.\n");
		s32Ret = HI_FAILURE;
		goto __CIPHER_EXIT__;	
	}
	
    memcpy(aes_128_dst_buf, pOutputAddrVir, u32TestDataLen);
    printBuffer("encrypted text:", pOutputAddrVir, sizeof(aes_128_dst_buf));
    
    memcpy(pInputAddrVir, aes_128_dst_buf, u32TestDataLen);
    memset(pOutputAddrVir, 0x0, u32TestDataLen);

	/* For decrypt */
	s32Ret = Setconfiginfo(hTestchnid, 
                                    HI_FALSE, 
                                    HI_UNF_CIPHER_ALG_AES, 
                                    HI_UNF_CIPHER_WORK_MODE_CBC, 
                                    HI_UNF_CIPHER_KEY_AES_128BIT,
                                    u8Key, 
                                    aes_128_cbc_IV);
	if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Set config info failed.\n");
		goto __CIPHER_EXIT__;	
	}
	
    printBuffer("before decrypt:", aes_128_dst_buf, sizeof(aes_128_dst_buf));
    s32Ret = HI_UNF_CIPHER_Decrypt(hTestchnid, u32InputAddrPhy, u32OutPutAddrPhy, u32TestDataLen);
    if(HI_SUCCESS != s32Ret)
	{
		HI_ERR_CIPHER("Cipher decrypt failed.\n");
		s32Ret = HI_FAILURE;
		goto __CIPHER_EXIT__;
	}

    memcpy(u8Buffer, pOutputAddrVir, u32TestDataLen);
    printBuffer("decrypted text:", u8Buffer, sizeof(u8Buffer));
  
	/* compare */
    if ( 0 != memcmp(u8Buffer, aes_128_src_buf, u32TestDataLen) )
    {
        HI_ERR_CIPHER("Memcmp failed!\n");
        s32Ret = HI_FAILURE;
        goto __CIPHER_EXIT__;
    }

__CIPHER_EXIT__:
    HI_MMZ_Unmap(u32InputAddrPhy);
    HI_MMZ_Delete(u32InputAddrPhy);
    HI_MMZ_Unmap(u32OutPutAddrPhy);
    HI_MMZ_Delete(u32OutPutAddrPhy);
    
    HI_UNF_CIPHER_DestroyHandle(hTestchnid);
    HI_UNF_CIPHER_DeInit();
    (HI_VOID)HI_SYS_DeInit();
    return s32Ret;
}
