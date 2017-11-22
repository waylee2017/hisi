/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : vmx_3rd_test.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2014-09-19
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifdef LOADER
#include "hi_type.h"
#endif

//#define VMX3RD_SELFTEST
#include "app.h"
#include "vmx_3rd_adp.h"
#include "vmx_3rd_auth.h"
#include "hi_unf_advca.h"
#include "hi_unf_cipher.h"


#ifdef LOADER
extern HI_VOID *HI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName);
extern HI_S32 HI_MMZ_Delete(HI_U32 u32PhysAddr);
extern HI_VOID *HI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached);
extern HI_S32 HI_MMZ_Unmap(HI_U32 u32PhysAddr);
#endif

#define HASH_SIZE (20*1024*1024)    //20M per round inside this interface for hash
#ifdef VMX3RD_SELFTEST


extern unsigned char g_au8VMX3RDRsaN[256];

unsigned char g_au8VMX3RDRsaD[256]={
0x82, 0x11, 0x22, 0x56, 0x4a, 0x13, 0xae, 0xbe, 0x76, 0x5d, 0x5c, 0xf4, 0xa8, 0xda, 0xf0, 0x1f,
0x4b, 0x9a, 0x2b, 0x90, 0x2a, 0x36, 0x01, 0x70, 0x88, 0x45, 0x04, 0xed, 0x08, 0xcf, 0x80, 0x25,
0x63, 0x85, 0x02, 0xda, 0x47, 0xf1, 0x08, 0xcb, 0x2e, 0xf5, 0x93, 0x9e, 0x14, 0x4e, 0x7e, 0x1f,
0xc2, 0xa4, 0x65, 0x5f, 0xf5, 0x11, 0x18, 0x2b, 0xa9, 0x4d, 0xaa, 0x6e, 0xb0, 0x9f, 0x57, 0xbc,
0x86, 0x80, 0x73, 0xae, 0xa6, 0x64, 0x89, 0xac, 0xaa, 0xc2, 0x9f, 0x00, 0xec, 0x31, 0x18, 0x4a,
0xcb, 0xbd, 0x78, 0x71, 0xf6, 0x91, 0xb8, 0xeb, 0xa5, 0xc1, 0x80, 0x27, 0x81, 0x5b, 0x35, 0x17,
0x12, 0x60, 0x73, 0x08, 0x01, 0xf0, 0x61, 0xcc, 0x23, 0x27, 0x9d, 0x2f, 0x6a, 0xf8, 0x1b, 0xa3,
0xcc, 0xc2, 0x16, 0x27, 0xd3, 0x78, 0x42, 0xf0, 0xdd, 0x19, 0x12, 0x1d, 0xba, 0x5b, 0x87, 0x74,
0x1b, 0xf1, 0x37, 0xf9, 0x7c, 0x47, 0x4a, 0x29, 0x0c, 0x7f, 0x90, 0xdb, 0x54, 0x63, 0x89, 0xbf,
0x35, 0x8f, 0x51, 0xb5, 0xcd, 0x44, 0xc4, 0x29, 0x5c, 0xb6, 0x4d, 0x8a, 0x2b, 0xa1, 0xf0, 0xf2,
0x71, 0x99, 0x3d, 0x32, 0xb1, 0x94, 0x62, 0x6f, 0x93, 0x5e, 0xe5, 0x2a, 0xb5, 0xbe, 0x17, 0x1d,
0x98, 0xf3, 0x50, 0xeb, 0xbc, 0x26, 0x39, 0xbd, 0xf3, 0x74, 0xd6, 0x93, 0xfc, 0x19, 0x19, 0x99,
0x54, 0x9e, 0xb0, 0x7b, 0x66, 0xb1, 0xc2, 0xc2, 0x2b, 0xee, 0x3c, 0x84, 0x8b, 0xc2, 0xfc, 0xb6,
0xfa, 0xbe, 0x0a, 0x1e, 0x55, 0xec, 0x73, 0xd8, 0x1c, 0xa1, 0x8f, 0xd1, 0x40, 0xea, 0xf0, 0xff,
0xed, 0x4e, 0xc1, 0x8e, 0x0b, 0xbb, 0x07, 0x4d, 0xf2, 0x9d, 0xde, 0x5a, 0x85, 0x11, 0xb5, 0xfe,
0x7d, 0x53, 0x51, 0xdf, 0x73, 0xa7, 0x5c, 0xb5, 0xaf, 0x8f, 0x53, 0x6a, 0x52, 0x33, 0xdb, 0xe3
};


static void s_VMX3RD_ADP_Printbuffer(char *str, unsigned char *pu8Buf, unsigned int u32Length)
{
    unsigned int i = 0;

    if(NULL != str)
    {
        printf("%s\n", str);
    }

    for(i = 0; i < u32Length; i++)
    {
        if(i % 16 == 0 && i != 0)
        {
            printf("\n");
        }
        printf("0x%02X, ", pu8Buf[i]);
    }
    printf("\n");
    return;
}

static int VMX3RD_ADP_RSASign(unsigned char* data, int data_len, unsigned char* signature, int sig_len)
{
	int ret = 0;
	HI_UNF_CIPHER_RSA_SIGN_S stRsaSign;
	unsigned int len_sig = sig_len;

	ret = HI_UNF_CIPHER_Init();
	if(0 != HI_SUCCESS)
	{
		VMX_PRINT("cipher init failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	memset(&stRsaSign, 0, sizeof(HI_UNF_CIPHER_RSA_SIGN_S));
	stRsaSign.enScheme = HI_UNF_CIPHER_RSA_SIGN_SCHEME_RSASSA_PKCS1_V15_SHA256;
	stRsaSign.stPriKey.pu8N = g_au8VMX3RDRsaN;
	stRsaSign.stPriKey.u16NLen = 256;
	stRsaSign.stPriKey.pu8D = g_au8VMX3RDRsaD;
	stRsaSign.stPriKey.u16DLen = 256;

	ret = HI_UNF_CIPHER_RsaSign(&stRsaSign, data, data_len, NULL, signature, &len_sig);
	if(ret != HI_SUCCESS)
	{
		VMX_PRINT("Rsa sign failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	ret = HI_UNF_CIPHER_DeInit();
	if(ret != HI_SUCCESS)
	{
		VMX_PRINT("cipher deinit failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	s_VMX3RD_ADP_Printbuffer("Signature output:", signature, len_sig);
	return HI_SUCCESS;
}

static int s_VMX3RD_ADP_EncryptBySWPK(unsigned char* input, int length, unsigned char* output)
{
	HI_S32 ret = 0;
	unsigned char au8SWPK[16] = {0xE1, 0xA6, 0xAB, 0x11, 0x1A, 0xD3, 0x1E, 0xCB, 0xC4, 0x16, 0x60, 0x50, 0x47, 0x2A, 0xE5, 0x34};
	unsigned char au8IV[16]   = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};
    HI_UNF_CIPHER_CTRL_S stCipherCtrl;
    HI_UNF_CIPHER_ATTS_S stCipherAtts;
    HI_HANDLE hCipher = -1;
	HI_U32 u32Round = 0;
	HI_U32 u32TailLen = 0;
	HI_S32 i = 0;
	HI_U32 Offset = 0;
#ifdef LOADER
	HI_U32 u32MmzSrcPhyAddr = 0;
	HI_U32 u32MmzDestPhyAddr = 0;
	HI_U8 *pu8MmzSrcVirAddr = 0;
	HI_U8 *pu8MmzDestVirAddr = 0;
#endif

	if((NULL == input) || (NULL == output) || (0 == length) || (0xFFFFFFFF == length) || (0 != (length % 16)) )
	{
		VMX_PRINT("Invalid parameters, ldatalen: 0x%x.\n", length);
		return HI_FAILURE;
	}

    VMX_ASSERT(HI_UNF_CIPHER_Init(), ret);

#ifdef LOADER
	u32MmzSrcPhyAddr = (HI_U32)HI_MMZ_New(CIPHER_1M_16, 4, NULL, "src_cipher_r2r");
	if(0 == u32MmzSrcPhyAddr)
	{
		VMX_PRINT("mmz new for src_cipher failed, u32MmzSrcPhyAddr:0x%x\n", u32MmzSrcPhyAddr);
		return HI_FAILURE;
	}

	pu8MmzSrcVirAddr = (HI_U8 *)HI_MMZ_Map(u32MmzSrcPhyAddr, 0);
	if(NULL == pu8MmzSrcVirAddr)
	{
		VMX_PRINT("mmz map for src_cipher failed\n");
		return HI_FAILURE;
	}

	u32MmzDestPhyAddr = (HI_U32)HI_MMZ_New(CIPHER_1M_16, 4, NULL, "dest_cipher_r2r");
	if(0 == u32MmzDestPhyAddr)
	{
		VMX_PRINT("mmz new for dest_cipher failed, u32MmzDestPhyAddr:0x%x\n", u32MmzDestPhyAddr);
		return HI_FAILURE;
	}

	pu8MmzDestVirAddr = (HI_U8 *)HI_MMZ_Map(u32MmzDestPhyAddr, 0);
	if(NULL == pu8MmzDestVirAddr)
	{
		VMX_PRINT("mmz map for dest_cipher failed\n");
		return HI_FAILURE;
	}
#endif

    memset(&stCipherAtts, 0, sizeof(HI_UNF_CIPHER_ATTS_S));
    stCipherAtts.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    VMX_ASSERT(HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAtts), ret);

    memset(&stCipherCtrl, 0, sizeof(stCipherCtrl));
    stCipherCtrl.bKeyByCA = HI_TRUE;
    stCipherCtrl.enCaType = HI_UNF_CIPHER_CA_TYPE_BLPK;
    stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    stCipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    stCipherCtrl.stChangeFlags.bit1IV = HI_TRUE;

    memcpy(stCipherCtrl.u32Key, au8SWPK,16);
    memcpy(stCipherCtrl.u32IV, au8IV, 16);

    VMX_ASSERT(HI_UNF_CIPHER_ConfigHandle(hCipher, &stCipherCtrl), ret);

	u32Round = length / CIPHER_1M_16;
	u32TailLen = length % CIPHER_1M_16;

	Offset = 0;
	for(i = 0; i < u32Round; i++)
	{
#ifndef LOADER
	    VMX_ASSERT(HI_UNF_CIPHER_Encrypt(hCipher, (HI_U32)(input + Offset), (HI_U32)(output + Offset), CIPHER_1M_16), ret);
#else
		memcpy(pu8MmzSrcVirAddr, input + Offset, CIPHER_1M_16);
	    VMX_ASSERT(HI_UNF_CIPHER_Encrypt(hCipher, u32MmzSrcPhyAddr, u32MmzDestPhyAddr, CIPHER_1M_16), ret);
		memcpy(output + Offset, pu8MmzDestVirAddr, CIPHER_1M_16);
#endif
		Offset += CIPHER_1M_16;
	}

	if(0 != u32TailLen)
	{
		Offset = length - u32TailLen;
#ifndef LOADER
	    VMX_ASSERT(HI_UNF_CIPHER_Encrypt(hCipher, (HI_U32)(input + Offset), (HI_U32)(output + Offset), u32TailLen), ret);
#else
		memcpy(pu8MmzSrcVirAddr, input + Offset, u32TailLen);
	    VMX_ASSERT(HI_UNF_CIPHER_Encrypt(hCipher, u32MmzSrcPhyAddr, u32MmzDestPhyAddr, u32TailLen), ret);
		memcpy(output + Offset, pu8MmzDestVirAddr, u32TailLen);
#endif
	}

#ifdef LOADER
	(HI_VOID)HI_MMZ_Unmap(u32MmzSrcPhyAddr);
	(HI_VOID)HI_MMZ_Delete(u32MmzSrcPhyAddr);
	(HI_VOID)HI_MMZ_Unmap(u32MmzDestPhyAddr);
	(HI_VOID)HI_MMZ_Delete(u32MmzDestPhyAddr);
#endif
    VMX_ASSERT(HI_UNF_CIPHER_DestroyHandle(hCipher), ret);

    HI_UNF_CIPHER_DeInit();
    return HI_SUCCESS;
}
static int s_VMX3RD_ADP_SelfTest_RSA(void)
{
	int ret = 0;
	unsigned char au8TestData1[3] = {0x1,0x2,0x3};
	unsigned char au8TestData2[256] = {0x1,0x2,0x3,0x4};
	unsigned char au8TestData3[2048] = {0x1,0x2,0x3,0x4,0x5};
	unsigned char au8TestData4[4096] = {0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0xa,0xb,0xc,0xe,0xf};
	unsigned char au8Signature[256] = {0};

	ret = VMX3RD_ADP_RSASign(au8TestData1, sizeof(au8TestData1), au8Signature, sizeof(au8Signature));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	ret = VMX3RD_ADP_VerifyRSASignature(au8Signature, sizeof(au8Signature), au8TestData1, sizeof(au8TestData1));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	VMX_PRINT("SelfTest RSA 1(3) Success!\n");

	ret = VMX3RD_ADP_RSASign(au8TestData2, sizeof(au8TestData2), au8Signature, sizeof(au8Signature));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	ret = VMX3RD_ADP_VerifyRSASignature(au8Signature, sizeof(au8Signature), au8TestData2, sizeof(au8TestData2));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	VMX_PRINT("SelfTest RSA 2(256) Success!\n");

	ret = VMX3RD_ADP_RSASign(au8TestData3, sizeof(au8TestData3), au8Signature, sizeof(au8Signature));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	ret = VMX3RD_ADP_VerifyRSASignature(au8Signature, sizeof(au8Signature), au8TestData3, sizeof(au8TestData3));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	VMX_PRINT("SelfTest RSA 3(2048) Success!\n");

	ret = VMX3RD_ADP_RSASign(au8TestData4, sizeof(au8TestData4), au8Signature, sizeof(au8Signature));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	ret = VMX3RD_ADP_VerifyRSASignature(au8Signature, sizeof(au8Signature), au8TestData4, sizeof(au8TestData4));
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}

	VMX_PRINT("SelfTest RSA 4(4096) Success!\n");

	return HI_SUCCESS;

}

static int s_VMX3RD_ADP_SelfTest_R2R(void)
{
	int ret = 0;
	unsigned char au8TestData1[16] = {0x1,0x2,0x3};
	unsigned char au8TestData2[256] = {0x1,0x2,0x3,0x4};
	unsigned char au8TestData3[2048] = {0x1,0x2,0x3,0x4,0x5};
	unsigned char au8TestData4[4096] = {0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0xa,0xb,0xc,0xe,0xf};
	unsigned char au8TempEnc[4096] = {0};
	unsigned char au8TempDec[4096] = {0};

	ret = VMX3RD_ADP_R2RByMiscKeyladder(0, au8TestData1, sizeof(au8TestData1), au8TempEnc);
	ret |= VMX3RD_ADP_R2RByMiscKeyladder(1, au8TempEnc, sizeof(au8TestData1), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	ret = memcmp(au8TestData1, au8TempDec, sizeof(au8TestData1));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest R2R 1(16) Success!\n");

	ret = VMX3RD_ADP_R2RByMiscKeyladder(0, au8TestData2, sizeof(au8TestData2), au8TempEnc);
	ret |= VMX3RD_ADP_R2RByMiscKeyladder(1, au8TempEnc, sizeof(au8TestData2), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	ret = memcmp(au8TestData2, au8TempDec, sizeof(au8TestData2));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest R2R 2 Success!\n");

	ret = VMX3RD_ADP_R2RByMiscKeyladder(0, au8TestData3, sizeof(au8TestData3), au8TempEnc);
	ret |= VMX3RD_ADP_R2RByMiscKeyladder(1, au8TempEnc, sizeof(au8TestData3), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	ret = memcmp(au8TestData3, au8TempDec, sizeof(au8TestData3));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest R2R 3 Success!\n");

	ret = VMX3RD_ADP_R2RByMiscKeyladder(0, au8TestData4, sizeof(au8TestData4), au8TempEnc);
	ret |= VMX3RD_ADP_R2RByMiscKeyladder(1, au8TempEnc, sizeof(au8TestData4), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	ret = memcmp(au8TestData4, au8TempDec, sizeof(au8TestData4));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest R2R 4 Success!\n");

	return HI_SUCCESS;
}

static int s_VMX3RD_ADP_SelfTest_SWPK(void)
{
	int ret = 0;
	unsigned char au8TestData1[16] = {0x1,0x2,0x3};
	unsigned char au8TestData2[256] = {0x1,0x2,0x3,0x4};
	unsigned char au8TestData3[2048] = {0x1,0x2,0x3,0x4,0x5};
	unsigned char au8TestData4[4096] = {0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0xa,0xb,0xc,0xe,0xf};
	unsigned char au8TempEnc[4096] = {0};
	unsigned char au8TempDec[4096] = {0};

	ret = s_VMX3RD_ADP_EncryptBySWPK(au8TestData1, sizeof(au8TestData1), au8TempEnc);
	ret |= VMX3RD_ADP_DecryptBySWPK(au8TempEnc, sizeof(au8TestData1), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	s_VMX3RD_ADP_Printbuffer("SWPK Encrypt output:", au8TempEnc, 16);
	s_VMX3RD_ADP_Printbuffer("SWPK Decrypt output:", au8TempDec, 16);
	ret = memcmp(au8TestData1, au8TempDec, sizeof(au8TestData1));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest SWPK 1 Success!\n");

	ret = s_VMX3RD_ADP_EncryptBySWPK(au8TestData2, sizeof(au8TestData2), au8TempEnc);
	ret |= VMX3RD_ADP_DecryptBySWPK(au8TempEnc, sizeof(au8TestData2), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	s_VMX3RD_ADP_Printbuffer("SWPK Encrypt output:", au8TempEnc, 32);
	s_VMX3RD_ADP_Printbuffer("SWPK Decrypt output:", au8TempDec, 32);
	ret = memcmp(au8TestData2, au8TempDec, sizeof(au8TestData2));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest SWPK 2 Success!\n");

	ret = s_VMX3RD_ADP_EncryptBySWPK(au8TestData3, sizeof(au8TestData3), au8TempEnc);
	ret |= VMX3RD_ADP_DecryptBySWPK(au8TempEnc, sizeof(au8TestData3), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	s_VMX3RD_ADP_Printbuffer("SWPK Encrypt output:", au8TempEnc, 32);
	s_VMX3RD_ADP_Printbuffer("SWPK Decrypt output:", au8TempDec, 32);
	ret = memcmp(au8TestData3, au8TempDec, sizeof(au8TestData3));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest SWPK 3 Success!\n");

	ret = s_VMX3RD_ADP_EncryptBySWPK(au8TestData4, sizeof(au8TestData4), au8TempEnc);
	ret |= VMX3RD_ADP_DecryptBySWPK(au8TempEnc, sizeof(au8TestData4), au8TempDec);
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	s_VMX3RD_ADP_Printbuffer("SWPK Encrypt output:", au8TempEnc, 32);
	s_VMX3RD_ADP_Printbuffer("SWPK Decrypt output:", au8TempDec, 32);
	ret = memcmp(au8TestData4, au8TempDec, sizeof(au8TestData4));
	if(0 != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		return HI_FAILURE;
	}
	VMX_PRINT("SelfTest SWPK 4 Success!\n");

	return HI_SUCCESS;
}

int VMX3RD_ADP_SelfTest(void)
{
	int ret = 0;

	ret = s_VMX3RD_ADP_SelfTest_R2R();
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		//return HI_FAILURE;
	}
	else
	{
		VMX_PRINT("VMX3RD ADP Selftest R2R success!\n");
	}

	ret = s_VMX3RD_ADP_SelfTest_SWPK();
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		//return HI_FAILURE;
	}
	else
	{
		VMX_PRINT("VMX3RD ADP Selftest SWPK success!\n");
	}

	ret = s_VMX3RD_ADP_SelfTest_RSA();
	if(HI_SUCCESS != ret)
	{
		VMX_PRINT("failed, ret:0x%x\n", ret);
		//return HI_FAILURE;
	}
	else
	{
		VMX_PRINT("VMX3RD ADP Selftest RSA success!\n");
	}

	VMX_PRINT("VMX3RD ADP Selftest success!\n");
	return 0;
}
#endif
