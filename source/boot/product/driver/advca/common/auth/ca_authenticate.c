/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_authenticate.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#include "ca_authenticate.h"
#include "drv_cipher_intf.h"
#include "ca_common.h"
#include "hi_boot_pdm.h"
#include "hi_boot_common.h"

#ifndef HI_ADVCA_TYPE_VERIMATRIX
#include "alg.h"
#endif

#ifdef HI_MINIBOOT_SUPPORT
#include "run.h"
#include "config.h"
#include "platform.h"
#else
#include "exports.h"
#endif //endif HI_MINIBOOT_SUPPORT

#include "loaderdb_info.h"
#include "hi_unf_advca.h"
#include "hi_unf_cipher.h"
#include "hi_unf_otp.h"
#include "malloc.h"
#include "ca_flash.h"

/* for printf: */
#undef printf
#include "ca_authdefine.h"
#include "ca_flash.h"
/* for printf end */

#ifdef HI_ADVCA_VMX_3RD_SIGN
#include "vmx_3rd_auth.h"
#endif

#ifndef HI_ADVCA_TYPE_VERIMATRIX

#define CMAC_VALUE_LEN 16

/*The data strcutue must be 16Bytes align*/
typedef struct hi_CaCMACDataHead_S
{   
    HI_U8  au8MagicNumber[32];
    HI_U32 u32Version;
    HI_U32 u32CMACDataLen;                       //Data length
    HI_U32 u32Reserve[6];                        //Reserve for forture  
    HI_U8  u8CMACValue[CMAC_VALUE_LEN]; 
    HI_U8  u8HeaderCMACValue[CMAC_VALUE_LEN];
} HI_CaCMACDataHead_S;

static HI_U8 s_au8InputKey[16]= {0x23,0x34,0x34,0x52,0x34,0x55,0x45,0x84,0x54,0x54,0x84,0x53,0x34,0x47,0x34,0x47};
#define SPARSE_EXT4

#ifdef SPARSE_EXT4
#include "sparse.h"
#define SYSTEM_SIGN_PARTITION  "systemsign"
#define SYSTEM_IMG_PARTITION  "system"
HI_U32 IsSparseFlag = 0xFF;  /* 0->init, 1->sparse, 2->not sparse */
HI_U32 *pSignChunkInfo = HI_NULL;
sparse_header_t *pSparseHead = HI_NULL;
sign_chunk_header_t *pChunkHead = HI_NULL;
#endif //endif SPARSE_EXT4


#define MAX_STRLEN(a, b) ((strlen((const char *)a) > strlen((const char *)b)) ? strlen((const char *)a) : strlen((const char *)b))
#define CFG_TIMERBASE23         REG_BASE_TIMER23
#define CFG_TIMER2_CTRL         0xC2
#define READ_TIMER2         \
     (*(volatile unsigned long *)(CFG_TIMERBASE23 + REG_TIMER_VALUE))

static HI_VOID printf_hex(HI_U8 *pu8Buf, HI_U32 u32Length)
{
    HI_U32 i;

    for(i = 0; i < u32Length; i++)
    {
        if(i % 16 == 0 && i != 0)
        {
            HI_SIMPLEINFO_CA("\n");
        }
        HI_SIMPLEINFO_CA("0x%02X, ", pu8Buf[i]);
    }
    HI_SIMPLEINFO_CA("\n");

    return;
}

/* trivial congruential random generators. from glibc. */
static unsigned long rstate = 1;
static void ca_srandom(unsigned long seed)
{
    rstate = seed ? seed : 1;  /* dont allow a 0 seed */
}

static unsigned long ca_random(void)
{
    unsigned int next = rstate;
    int result;

    next *= 1103515245;
    next += 12345;
    result = (unsigned int) (next / 65536) % 2048;

    next *= 1103515245;
    next += 12345;
    result <<= 10;
    result ^= (unsigned int) (next / 65536) % 1024;

    next *= 1103515245;
    next += 12345;
    result <<= 10;
    result ^= (unsigned int) (next / 65536) % 1024;

    rstate = next;

    return result;
}

#ifndef HI_MINIBOOT_SUPPORT
extern int do_reset(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);
#endif //endif HI_MINIBOOT_SUPPORT

extern void sha1( const unsigned char *input, int ilen, unsigned char output[20] );

extern HI_S32 Logo_Main(HI_PDM_MEMINFO_S *pstMemInfo);

static HI_U32 CipherBlockSize = 1024*1024-16;   //cipher block must < 1M BYTE and be times of 16BYTE
#if 0
static HI_U8 G1_CIPHERKEY[16] = "Hisilicon_cipher";
static HI_U8 G2_CIPHERKEY[16] = "Hisilicon_second";
static HI_U8 G1_KEYLADDER_KEY1[16] = "auth1_keyladder1";
static HI_U8 G1_KEYLADDER_KEY2[16] = "auth1_keyladder2";
static HI_U8 G2_KEYLADDER_KEY1[16] = "auth2_keyladder1";
static HI_U8 G2_KEYLADDER_KEY2[16] = "auth2_keyladder2";
static HI_U8 CAIMGHEAD_MAGICNUMBER[32]  =  "Hisilicon_ADVCA_ImgHead_MagicNum";
#else
static HI_U8 G1_CIPHERKEY[16]      = {0x5b,0x45,0x14,0x37,0x6d,0xed,0x1d,0x08,0x64,0x97,0xbc,0xba,0xe6,0x7f,0x90,0x78};
static HI_U8 G2_CIPHERKEY[16]      = {0xd6,0xbc,0x9e,0xe2,0x3a,0x61,0x50,0x10,0xb4,0x64,0x2e,0xaa,0xe8,0xf0,0x53,0xa6};
static HI_U8 G1_KEYLADDER_KEY1[16] = {0x1c,0x21,0x42,0xa2,0x9e,0x31,0x57,0x8d,0xff,0xa4,0xe1,0xdf,0x2e,0x36,0xa0,0x6e};
static HI_U8 G1_KEYLADDER_KEY2[16] = {0x7c,0x76,0x1a,0x38,0xc1,0x46,0x4e,0x53,0x8c,0xa3,0xd7,0xae,0x56,0xee,0x27,0xb7};
static HI_U8 G2_KEYLADDER_KEY1[16] = {0x41,0x98,0x30,0x77,0x14,0xed,0x9d,0xc3,0x60,0x55,0x49,0xcf,0x5e,0x75,0x13,0xa2};
static HI_U8 G2_KEYLADDER_KEY2[16] = {0x5c,0x98,0xbe,0x7c,0x52,0x24,0x35,0xb8,0x30,0xa5,0x10,0x54,0x33,0xc3,0x21,0xf8};
static HI_U8 CAIMGHEAD_MAGICNUMBER[32]  =  {0};
#endif
static HI_U8 CAIMGHEAD_VERSION[8] = "v1.0.0.3";
static HI_U32 u32ConfigEnvSize = CFG_ENV_SIZE;
static HI_HANDLE  g_hCipher = -1;

extern HI_U8 CA_VENDOR[];
extern HI_U32 g_MaxBlockSize;
extern HI_U8 *env_ptr;
extern HI_U32 g_EnvFlashPartionSize;
extern HI_U32 g_EnvBakFlashAddr;
extern HI_U32 g_MaxBlockSize;
extern HI_BOOL isCipherkeyByCA;
extern HI_UNF_CIPHER_ALG_E g_CipherAlg;
extern HI_U8  g_customer_rsa_public_key_N[256];
extern HI_U32  g_customer_rsa_public_key_E;
extern HI_U32 g_DDRSize ;
extern AUTHALG_E g_AuthAlg ;
extern HI_U8  g_customer_blpk[16];
extern HI_U32 g_EnvFlashAddr;

unsigned long DVB_CRC32(unsigned char *buf, int length);

HI_VOID CA_Reset(HI_VOID)
{
    HI_INFO_CA(" \n");
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    while(1) { };
}

void showtime(HI_U32 n,HI_U32*  oldtime,HI_U32* newtime)
{
    HI_U32 timeuse = 0;
    *newtime = get_timer(0);
    timeuse= (*newtime - *oldtime)/get_tbclk();
    HI_DEBUG_CA("%d\n", n);
    HI_DEBUG_CA(" Time use :%d s\n",timeuse);
    *oldtime = *newtime;
}
HI_VOID DumpImgHead(HI_CAImgHead_S* ImgInfo)
{
    HI_DEBUG_CA("ImgInfo->u8MagicNumber = %s\n",ImgInfo->u8MagicNumber);
    HI_DEBUG_CA("ImgInfo->u32TotalLen = 0x%x\n",ImgInfo->u32TotalLen);
}

HI_VOID GenerateMagicNum(HI_VOID)
{
    CAIMGHEAD_MAGICNUMBER[0] = 'H';
    CAIMGHEAD_MAGICNUMBER[1] = 'i';
    CAIMGHEAD_MAGICNUMBER[2] = 's';
    CAIMGHEAD_MAGICNUMBER[3] = 'i';
    CAIMGHEAD_MAGICNUMBER[4] = 'l';
    CAIMGHEAD_MAGICNUMBER[5] = 'i';
    CAIMGHEAD_MAGICNUMBER[6] = 'c';
    CAIMGHEAD_MAGICNUMBER[7] = 'o';
    CAIMGHEAD_MAGICNUMBER[8] = 'n';
    CAIMGHEAD_MAGICNUMBER[9] = '_';
    CAIMGHEAD_MAGICNUMBER[10] = 'A';
    CAIMGHEAD_MAGICNUMBER[11] = 'D';
    CAIMGHEAD_MAGICNUMBER[12] = 'V';
    CAIMGHEAD_MAGICNUMBER[13] = 'C';
    CAIMGHEAD_MAGICNUMBER[14] = 'A';
    CAIMGHEAD_MAGICNUMBER[15] = '_';
    CAIMGHEAD_MAGICNUMBER[16] = 'I';
    CAIMGHEAD_MAGICNUMBER[17] = 'm';
    CAIMGHEAD_MAGICNUMBER[18] = 'g';
    CAIMGHEAD_MAGICNUMBER[19] = 'H';
    CAIMGHEAD_MAGICNUMBER[20] = 'e';
    CAIMGHEAD_MAGICNUMBER[21] = 'a';
    CAIMGHEAD_MAGICNUMBER[22] = 'd';
    CAIMGHEAD_MAGICNUMBER[23] = '_';
    CAIMGHEAD_MAGICNUMBER[24] = 'M';
    CAIMGHEAD_MAGICNUMBER[25] = 'a';
    CAIMGHEAD_MAGICNUMBER[26] = 'g';
    CAIMGHEAD_MAGICNUMBER[27] = 'i';
    CAIMGHEAD_MAGICNUMBER[28] = 'c';
    CAIMGHEAD_MAGICNUMBER[29] = 'N';
    CAIMGHEAD_MAGICNUMBER[30] = 'u';
    CAIMGHEAD_MAGICNUMBER[31] = 'm';
}

HI_S32 CA_AuthenticateInit(HI_CA_KEY_GROUP_E enKeyGroup)
{
    HI_S32 ret = 0;
    HI_U8  SessionKey1[16];
    HI_U8  SessionKey2[16];
    HI_UNF_ADVCA_KEYLADDER_LEV_E enStage;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_UNF_CIPHER_ATTS_S stCipherAtts;

    /*Generate the magic number*/
    GenerateMagicNum();

    memset(SessionKey1,0,sizeof(SessionKey1));
    memset(SessionKey2,0,sizeof(SessionKey2));
    memset(&CipherCtrl,0,sizeof(HI_UNF_CIPHER_CTRL_S));

    /*open and config keyladder*/
    CA_ASSERT(HI_UNF_CIPHER_Init(),ret);
    
    HI_UNF_ADVCA_Init();
    
    CA_ASSERT(CA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_AES),ret);
    CA_ASSERT(CA_GetR2RLadder(&enStage),ret);

    if (HI_CA_KEY_GROUP_1 == enKeyGroup)
    {
        memcpy(SessionKey1, G1_KEYLADDER_KEY1, sizeof(SessionKey1));
        memcpy(SessionKey2, G1_KEYLADDER_KEY2, sizeof(SessionKey2));
        memcpy(CipherCtrl.u32Key,G1_CIPHERKEY,16);
    }
    else
    {
        memcpy(SessionKey1, G2_KEYLADDER_KEY1, sizeof(SessionKey1));
        memcpy(SessionKey2, G2_KEYLADDER_KEY2, sizeof(SessionKey2));
        memcpy(CipherCtrl.u32Key,G2_CIPHERKEY,16);
    }

    CA_ASSERT(HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV1,SessionKey1),ret);
    if(enStage == HI_UNF_ADVCA_KEYLADDER_LEV3)
    {
        CA_ASSERT(HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV2,SessionKey2),ret);
    }

    /*config cipher*/
    memset(&stCipherAtts, 0, sizeof(HI_UNF_CIPHER_ATTS_S));
    stCipherAtts.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&g_hCipher, &stCipherAtts),ret);

    if(HI_TRUE == isCipherkeyByCA)
    {
        CipherCtrl.bKeyByCA = isCipherkeyByCA;
    }
    else
    {
        CipherCtrl.bKeyByCA = HI_FALSE;
    }

    if(HI_UNF_CIPHER_ALG_3DES == g_CipherAlg)
    {
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_3DES;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_ECB;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_DES_2KEY;
    }
    else if(HI_UNF_CIPHER_ALG_DES == g_CipherAlg)
    {
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_DES;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_64BIT;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_ECB;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_DES_2KEY;
    }
    else if(HI_UNF_CIPHER_ALG_AES == g_CipherAlg)
    {
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_ECB;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    }
    else
    {
        HI_ERR_CA("Cipher Algorithem error\n");
        return -1;
    }

    CA_ASSERT(HI_UNF_CIPHER_ConfigHandle(g_hCipher,&CipherCtrl),ret);
    return ret;
}

HI_VOID CA_AuthenticateDeInit(HI_VOID)
{
    HI_UNF_CIPHER_DestroyHandle(g_hCipher);
    HI_UNF_CIPHER_DeInit();
}

HI_S32 CA_DataEncrypt(HI_U8 *pPlainText, HI_U32 TextLen, HI_U8 *pCipherText)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 CipherBlockNum = 0;
    HI_U32 index = 0;

    CA_CheckPointer(pPlainText);
    CA_CheckPointer(pCipherText);

    if(-1 == g_hCipher)
    {
        HI_ERR_CA("call CA_AuthenticateInit first\n");
        return ret;
    }
    if((TextLen < 16) || (TextLen%16 != 0))
    {
        HI_ERR_CA("Data length must be times of 16BYTE\n");
        return ret;
    }
    CipherBlockNum = TextLen/CipherBlockSize;
    if(CipherBlockNum > 0)
    {
        for(index = 0;index <CipherBlockNum;index++)
        {
            CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,((HI_U32)pPlainText+index*CipherBlockSize),((HI_U32)pCipherText+index*CipherBlockSize),CipherBlockSize),ret);
        }
        if(TextLen > index*CipherBlockSize)
        {
            CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,((HI_U32)pPlainText+index*CipherBlockSize),((HI_U32)pCipherText+index*CipherBlockSize),(TextLen-index*CipherBlockSize)),ret);
        }
    }
    else
    {
        CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,(HI_U32)pPlainText,(HI_U32)pCipherText,TextLen),ret);
    }
    return ret;
}
HI_S32 CA_DataDecrypt(HI_U8 *pCipherText, HI_U32 TextLen, HI_U8 *pPlainText)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 CipherBlockNum = 0;
    HI_U32 index = 0;

    CA_CheckPointer(pPlainText);
    CA_CheckPointer(pCipherText);
    if(-1 == g_hCipher)
    {
        HI_ERR_CA("call CA_AuthenticateInit first\n");
        return ret;
    }
    if((TextLen < 16) || (TextLen%16 != 0))
    {
        HI_ERR_CA("Data length must be times of 16BYTE\n");
        return ret;
    }
    CipherBlockNum = TextLen/CipherBlockSize;
    if(CipherBlockNum > 0)
    {
        for(index = 0;index <CipherBlockNum;index++)
        {
            CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,((HI_U32)pCipherText+index*CipherBlockSize),((HI_U32)pPlainText+index*CipherBlockSize),CipherBlockSize),ret);
        }
        if(TextLen > index*CipherBlockSize)
        {
            CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,((HI_U32)pCipherText+index*CipherBlockSize),((HI_U32)pPlainText+index*CipherBlockSize),(TextLen-index*CipherBlockSize)),ret);
        }
    }
    else
    {
        CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,(HI_U32)pCipherText,(HI_U32)pPlainText,TextLen),ret);
    }
    return ret;
}
HI_S32 auth(rsa_context *rsa, HI_U8* BlockStartAddr, HI_S32 Blocklength, HI_U8* sign)
{
    HI_S32 ret;
    CA_CheckPointer(rsa);
    CA_CheckPointer(BlockStartAddr);
    CA_CheckPointer(sign);

    HI_U8 hash[32];
    memset(hash,0,sizeof(hash));

    if(AUTH_SHA2 == g_AuthAlg)
    {
        sha2(BlockStartAddr, Blocklength, hash,0);
        ret = rsa_pkcs1_verify( rsa, RSA_PUBLIC, SIG_RSA_SHA256, 32, hash, sign);
    }
    else
    {
        sha1( BlockStartAddr, Blocklength, hash);
        ret = rsa_pkcs1_verify( rsa, RSA_PUBLIC, SIG_RSA_SHA1, 20, hash, sign);
    }
    return ret;
}
HI_S32 Getkey(rsa_context *rsa, HI_U8* base)
{
    HI_S32 ret;

    rsa_init( rsa, RSA_PKCS_V15, 0 );
    /* get N and E */
    CA_ASSERT( mpi_read_binary( &rsa->N, base, RSA_2048_LEN),ret);
    CA_ASSERT( mpi_read_binary( &rsa->E, base + RSA_2048_LEN, RSA_2048_LEN),ret);
    rsa->len = ( mpi_msb( &rsa->N ) + 7 ) >> 3;
    return ret;
}
HI_S32 CA_Getkey(rsa_context *rsa,HI_U8 *N,HI_U32 E)
{
    HI_U8   base[512];
    memset(base,0,sizeof(base));
    HI_U8 customer_rsa_public_key_E_100001[256] = {
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x10,0x00,0x01
            };

    HI_U8 customer_rsa_public_key_E_10001[256] = {
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x01
            };

    HI_U8 customer_rsa_public_key_E_3[256] = {
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03
            };

    if(NULL == N)
    {
        return -1;
    }
    memcpy(base,N,256);
    if(0x100001 == E)
    {
        memcpy(base + 256,customer_rsa_public_key_E_100001,256);
    }
    else if(0x10001 == E)
    {
        memcpy(base + 256,customer_rsa_public_key_E_10001,256);
    }
    else if(0x3 == E)
    {
        memcpy(base + 256,customer_rsa_public_key_E_3,256);
    }
    else
    {
        return -1;
    }
    return Getkey(rsa, base);
}

HI_U8* CA_GetEnvPtr(HI_VOID)
{
    return (HI_U8*)env_ptr;/*UBOOT use this address as env addr */
}

HI_VOID CA_SetEnv(HI_CHAR* args)
{
    HI_CHAR* s;
    HI_CHAR buf[4096];
    memset(buf,0,sizeof(buf));
    if((s = getenv(args)) != NULL)
    {
        HI_DEBUG_CA("%s = %s\n",args,s);
        snprintf(buf, sizeof(buf), "%s", s);
        setenv(args,buf);
    }
}

#if 0 /* for CMAC loaderdb partition */
HI_S32 CA_ReadUpgrdFlag(HI_BOOL *pbNeedUpgrd)
{
    HI_S32 ret = HI_SUCCESS;
    UPGRD_PARA_HEAD_S *pstParamHead;
    UPGRD_TAG_PARA_S  pstUpgrdParam;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_U32 u32CRC32Value = 0;

    CA_CheckPointer(pbNeedUpgrd);

    /*Read loaderdb partition*/
    hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, LOADER_INFOBASIC, 0, 0);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA("HI_Flash_Open() %s error, result %x!\n",LOADER_INFOBASIC,ret);
        return HI_FAILURE;
    }

    ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CA("HI_Flash_GetInfo() error, result %x!\n",ret);
        (HI_VOID)HI_Flash_Close(hFlash);
        return ret;
    }

    ret = HI_Flash_Read(hFlash, 0ULL, (HI_U8*)IMG_VERIFY_ADDRESS, stFlashInfo.BlockSize, HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("HI_Flash_Read partion %s error\n", LOADER_INFOBASIC);
        HI_Flash_Close(hFlash);
        return HI_FAILURE;
    }
    HI_Flash_Close(hFlash);

    /*loaderdb should use G2 to decrypt*/
    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_2),ret);
    CA_ASSERT(CA_DataDecrypt((HI_U8 *)IMG_VERIFY_ADDRESS,stFlashInfo.BlockSize,(HI_U8 *)IMG_VERIFY_ADDRESS),ret);

    pstParamHead = (UPGRD_PARA_HEAD_S *)IMG_VERIFY_ADDRESS;

    /* Verify Magic Number */
    if ( LOADER_MAGIC_NUMBER == pstParamHead->u32MagicNumber)
    {
        if( pstParamHead->u32Length < stFlashInfo.BlockSize )
        {
            /* Veriry CRC value */
            u32CRC32Value = crc32(0, (HI_U8 *)(IMG_VERIFY_ADDRESS + sizeof(HI_U32) * 2),
                           (pstParamHead->u32Length + sizeof(HI_U32)));
            if (u32CRC32Value == pstParamHead->u32Crc)
            {
                HI_INFO_CA("Get upgrade tag info from loderdb successfully.\n");
                memcpy(&pstUpgrdParam, (void *)(IMG_VERIFY_ADDRESS + sizeof(UPGRD_PARA_HEAD_S)),
                       sizeof(UPGRD_TAG_PARA_S));
                *pbNeedUpgrd = pstUpgrdParam.bTagNeedUpgrd;
                return HI_SUCCESS;
            }
            else
            {
                HI_ERR_CA("Check CRC for loaderdb failed u32CRC32Value %x != pstParamHead->u32Crc %x!\n", u32CRC32Value, pstParamHead->u32Crc);
            }
        }
        else
        {
            HI_ERR_CA("Read loaderdb value failed!\n");
        }
    }
    else
    {
        HI_ERR_CA("Check Magic Number for loaderdb failed!\n");
    }

    CA_AuthenticateDeInit();
    return HI_FAILURE;
}
#else
static HI_S32 CA_DecryptAndCMACPartitionLoderDB(const HI_CHAR *pPartitionName, HI_U32 *pu32RamAddress)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32DataSize = 0, u32DataOffset, u32HeaderLen, U32TmpLen;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_U32 u32DataRamAddress = 0;
  
    HI_CaCMACDataHead_S stCaCmacDataHeader;
    HI_U8 au8OutputMAC[16];
    HI_U8 *pu8Buf = HI_NULL, *pu8Data = HI_NULL;
    
    /*Read logo partition*/
    hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, pPartitionName, 0, 0);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA("HI_Flash_Open() %s error, result %x!\n",pPartitionName, ret);
        return HI_FAILURE;
    }

    pu8Buf = (HI_U8 *)&stCaCmacDataHeader;
    ret = HI_Flash_Read(hFlash, 0ULL, pu8Buf, sizeof(stCaCmacDataHeader), HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("Fail to read flash!\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }

    /**********************Verify whether the head is valid********************************/
    if (HI_SUCCESS != CA_AuthenticateInit(HI_CA_KEY_GROUP_2))
    {
        HI_ERR_CA("Fail to call CA_AuthenticateInit!\n");
        goto ERROR_EXIT;
    }
    if (HI_SUCCESS != CA_DataDecrypt(pu8Buf, sizeof(stCaCmacDataHeader), pu8Buf))
    {
        HI_ERR_CA("Fail to call CA_DataDecrypt 1 !\n");
        CA_AuthenticateDeInit();
        goto ERROR_EXIT;
    }
    
    CA_AuthenticateDeInit();
    
    u32HeaderLen = sizeof(stCaCmacDataHeader);
    U32TmpLen =  u32HeaderLen - CMAC_VALUE_LEN;
    ret = HI_CA_CalcMAC(s_au8InputKey, pu8Buf, U32TmpLen, au8OutputMAC, HI_TRUE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to calc CMAC\n");
        goto ERROR_EXIT;
    }
    
    if (0 != memcmp(au8OutputMAC, stCaCmacDataHeader.u8HeaderCMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA("PartitionDataCMacCheck: Header CMAC check error\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }
    /**********************Verify whether the data is valid********************************/
    u32DataSize = stCaCmacDataHeader.u32CMACDataLen + u32HeaderLen;
    u32DataRamAddress = IMG_VERIFY_ADDRESS;
    
    pu8Data = (HI_U8 *)u32DataRamAddress;
    ret = HI_Flash_Read(hFlash, 0ULL, pu8Data, u32DataSize, HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("HI_Flash_Read partion %s error\n", pPartitionName);
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }    

    if (HI_SUCCESS != CA_AuthenticateInit(HI_CA_KEY_GROUP_2))
    {
        HI_ERR_CA("Fail to call CA_AuthenticateInit!\n");
        goto ERROR_EXIT;
    }
    
    if(HI_SUCCESS != CA_DataDecrypt(pu8Data, u32DataSize, pu8Data))
    {
        HI_ERR_CA("Fail to call CA_DataDecrypt 2!\n");
        CA_AuthenticateDeInit();
        goto ERROR_EXIT;
    }    
    
    CA_AuthenticateDeInit();
    
    u32DataOffset = u32HeaderLen;
    ret = HI_CA_CalcMAC(s_au8InputKey, &pu8Data[u32DataOffset], stCaCmacDataHeader.u32CMACDataLen, au8OutputMAC, HI_TRUE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to calc CMAC\n");
        goto ERROR_EXIT;
    }

    if (0 != memcmp(au8OutputMAC, stCaCmacDataHeader.u8CMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA("PartitionDataCMacCheck: Data CMAC check error\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }

    if (pu32RamAddress != HI_NULL)
    {
       *pu32RamAddress = u32DataRamAddress + sizeof(HI_CaCMACDataHead_S);
    }

    ret = HI_SUCCESS;

ERROR_EXIT:
    HI_Flash_Close(hFlash);    
    return ret;
}
HI_S32 CA_ReadUpgrdFlag(HI_BOOL *pbNeedUpgrd)
{
    HI_S32 ret = HI_SUCCESS;
    UPGRD_PARA_HEAD_S *pstParamHead;
    UPGRD_TAG_PARA_S  pstUpgrdParam;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_U32 u32CRC32Value = 0;
    HI_U32 u32RamAddress;

    CA_CheckPointer(pbNeedUpgrd);

    CA_ASSERT(CA_DecryptAndCMACPartitionLoderDB(LOADER_INFOBASIC, &u32RamAddress), ret);
    
    pstParamHead = (UPGRD_PARA_HEAD_S *)u32RamAddress;

    /* Verify Magic Number */
    if (LOADER_MAGIC_NUMBER == pstParamHead->u32MagicNumber)
    {
	/* Veriry CRC value */
	u32CRC32Value = crc32(0, (HI_U8 *)(u32RamAddress + sizeof(HI_U32) * 2),
	           (pstParamHead->u32Length + sizeof(HI_U32)));
	if (u32CRC32Value == pstParamHead->u32Crc)
	{
		HI_INFO_CA("Get upgrade tag info from loderdb successfully.\n");
		memcpy(&pstUpgrdParam, (void *)(u32RamAddress + sizeof(UPGRD_PARA_HEAD_S)),
		       sizeof(UPGRD_TAG_PARA_S));
		*pbNeedUpgrd = pstUpgrdParam.bTagNeedUpgrd;
		return HI_SUCCESS;
	}
	else
	{
		HI_ERR_CA("Check CRC for loaderdb failed u32CRC32Value %x != pstParamHead->u32Crc %x!\n", u32CRC32Value, pstParamHead->u32Crc);
	}  
    }
    else
    {
        HI_ERR_CA("Check Magic Number for loaderdb failed!\n");
    }
    
    return HI_FAILURE;
}
#endif
HI_S32 CA_nand_env_relocate_spec(HI_U8 *u8EnvAddr)
{
    HI_U8* pGlobalEnvPtr = NULL;
    CA_CheckPointer(u8EnvAddr);
    
    pGlobalEnvPtr = CA_GetEnvPtr();
    
    memset(pGlobalEnvPtr, 0, u32ConfigEnvSize);
    memcpy(pGlobalEnvPtr, u8EnvAddr, u32ConfigEnvSize);
    
    CA_SetEnv("bootargs");
    CA_SetEnv("loaderargs");
    
#ifndef  HI_ADVCA_FUNCTION_RELEASE
//    CA_SetEnv("bootcmd");
    CA_SetEnv("ipaddr");
    CA_SetEnv("serverip");
    CA_SetEnv("gatewayip");
    CA_SetEnv("netmask");
    CA_SetEnv("ethaddr");
#endif

    return 0;
}

HI_U32 HI_CA_ImgAuthenticate(HI_U32 StartAddr,HI_U32 length,HI_U8 u8Signature[RSA_2048_LEN])
{
    HI_S32 ret = 0;
    rsa_context customer_key;

    memset(&customer_key,0,sizeof(customer_key));
    CA_ASSERT(CA_Getkey(&customer_key,g_customer_rsa_public_key_N,g_customer_rsa_public_key_E),ret);
    
    dcache_enable(g_DDRSize);
    ret = auth(&customer_key,(HI_U8 *)StartAddr,length,u8Signature);
    dcache_disable();
    
    rsa_free(&customer_key);
    
    return ret;
}

#if 0 /*Old implement*/
static HI_S32  CA_VerifyImageHeader(HI_U8 *pu8ImgHeaderBuf, HI_U32 u32ImageMaxLen, HI_BOOL *pIsEncrypt)
{
    HI_S32 ret = 0;
    HI_U32 u32CRC32Value = 0;
    HI_CAImgHead_S* pstImgInfo;
    CA_CheckPointer(pu8ImgHeaderBuf);
    pstImgInfo = (HI_CAImgHead_S*)pu8ImgHeaderBuf;    
    if(!memcmp(pstImgInfo->u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(pstImgInfo->u8MagicNumber)))
    {
        HI_INFO_CA("Img has not be encrypted\n");
        *pIsEncrypt = HI_FALSE;
    }
    else
    {
        CA_ASSERT(CA_DataDecrypt(pu8ImgHeaderBuf,NAND_PAGE_SIZE,pu8ImgHeaderBuf),ret);
        udelay(100000);//wait fo decrypt end,this code is essential
        if(0 != memcmp(pstImgInfo->u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(pstImgInfo->u8MagicNumber)))
        {
            HI_INFO_CA("Magic number err, get Img information failed\n");
            return HI_FAILURE;
        }
        *pIsEncrypt = HI_TRUE;
    }
    HI_INFO_CA("ImgInfo.u8MagicNumber:\n");
    printf_hex(pstImgInfo->u8MagicNumber, sizeof(pstImgInfo->u8MagicNumber));
    HI_INFO_CA("Magic number check success\n");
    if ((pstImgInfo->u32TotalLen > u32ImageMaxLen) || (pstImgInfo->u32TotalLen < NAND_PAGE_SIZE))
    {
        HI_ERR_CA("The total length of image invalid!\n");
        return HI_FAILURE;
    }
    if ((pstImgInfo->u32CodeOffset != NAND_PAGE_SIZE) || (pstImgInfo->u32SignedImageLen == 0) || (pstImgInfo->u32SignedImageLen > pstImgInfo->u32TotalLen) ||
            (pstImgInfo->u32SignatureOffset == 0) || (pstImgInfo->u32SignatureOffset > pstImgInfo->u32TotalLen))
    {
        HI_ERR_CA("The header data of image invalid!\n");
        return HI_FAILURE;
    }
    u32CRC32Value = DVB_CRC32((HI_U8 *)pstImgInfo, (sizeof(HI_CAImgHead_S) - 4));
    if(u32CRC32Value != pstImgInfo->u32CRC32)
    {
        HI_ERR_CA("Fail to check CRC, CRC32Value:%x != pstImgInfo->CRC32:%x\n", u32CRC32Value, pstImgInfo->u32CRC32);
        return HI_FAILURE;
    }
    return ret;
}
#endif
static HI_S32 CA_VerifyImageHeader(HI_U8 *pu8ImgHeaderBuf, HI_U32 u32ImageMaxLen, HI_BOOL *pIsEncrypt)
{
    HI_S32 ret = 0;
    HI_U8  *pu8Signature;
    HI_U8  *pImageSignature = NULL;
    HI_U32 u32CRC32Value = 0;
    HI_CAImgHead_S* pstImgInfo;
    CA_CheckPointer(pu8ImgHeaderBuf);
    pstImgInfo = (HI_CAImgHead_S*)pu8ImgHeaderBuf;
    ret = CA_DataDecrypt(pu8ImgHeaderBuf,NAND_PAGE_SIZE,pu8ImgHeaderBuf);
    if (ret != HI_SUCCESS)
    {
        HI_INFO_CA("%s: Fail to decrypt header image\n", __FUNCTION__);
        return HI_FAILURE;
    }    
    pu8Signature = pu8ImgHeaderBuf + NAND_PAGE_SIZE-SIGNATURE_LEN;     
    ret = HI_CA_ImgAuthenticate((HI_U32)pu8ImgHeaderBuf, NAND_PAGE_SIZE-SIGNATURE_LEN, pu8Signature);
    if (ret != HI_SUCCESS)
    {
        HI_INFO_CA("%s: Fail to verify header image\n", __FUNCTION__);
        return HI_FAILURE;
    }
    pstImgInfo = pu8ImgHeaderBuf;
    if(0 != memcmp(pstImgInfo->u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(pstImgInfo->u8MagicNumber)))
    {
        HI_INFO_CA("Magic number err, get Img information failed\n");
        return HI_FAILURE;
    }    
    HI_INFO_CA("ImgInfo.u8MagicNumber:%s\n", pstImgInfo->u8MagicNumber);
    printf_hex(pstImgInfo->u8MagicNumber, sizeof(pstImgInfo->u8MagicNumber));
    HI_INFO_CA("Magic number check success\n");
    *pIsEncrypt = HI_TRUE;
    if ((pstImgInfo->u32TotalLen > u32ImageMaxLen) || (pstImgInfo->u32TotalLen < NAND_PAGE_SIZE))
    {
        HI_ERR_CA("The total length of image invalid!\n");
        return HI_FAILURE;
    }
    if ((pstImgInfo->u32CodeOffset != NAND_PAGE_SIZE) || (pstImgInfo->u32SignedImageLen == 0) || (pstImgInfo->u32SignedImageLen > pstImgInfo->u32TotalLen) ||
            (pstImgInfo->u32SignatureOffset == 0) || (pstImgInfo->u32SignatureOffset > pstImgInfo->u32TotalLen))
    {
        HI_ERR_CA("The header data of image invalid!\n");
        return HI_FAILURE;
    }
    u32CRC32Value = DVB_CRC32((HI_U8 *)pstImgInfo, (sizeof(HI_CAImgHead_S) - 4));
    if(u32CRC32Value != pstImgInfo->u32CRC32)
    {
        HI_ERR_CA("Fail to check CRC, CRC32Value:%x != pstImgInfo->CRC32:%x\n", u32CRC32Value, pstImgInfo->u32CRC32);
        return HI_FAILURE;
    }
    return ret;
}
HI_S32 HI_CA_GetEncryptFlashImgInfoByName(HI_U8* pPartionName,HI_CAImgHead_S* pstImgInfo, HI_BOOL *pIsEncrypt)
{
    HI_S32 ret = 0;
    HI_U8 CAImageArea[CAImgHeadAreaLen] = {0};
    HI_U32 u32CRC32Value = 0;
    HI_Flash_InterInfo_S flashInfo;

    CA_CheckPointer(pPartionName);
    CA_CheckPointer(pstImgInfo);
    CA_CheckPointer(pIsEncrypt);

    CA_ASSERT(CA_flash_read((HI_CHAR*)pPartionName, 0ULL, NAND_PAGE_SIZE,(HI_U8*)CAImageArea, &flashInfo),ret);
    ret = CA_VerifyImageHeader(CAImageArea, flashInfo.PartSize, pIsEncrypt);
    if (ret != HI_SUCCESS)
    {
        HI_INFO_CA("%s: Fail to verify image header\n", __FUNCTION__);
        return HI_FAILURE;
    }

    memcpy(pstImgInfo, CAImageArea,sizeof(HI_CAImgHead_S));
    return HI_SUCCESS;
}

HI_S32 HI_CA_GetEncryptFlashImgInfoByAddr(HI_U32 PartionAddr,HI_CAImgHead_S* pstImgInfo, HI_BOOL *pIsEncrypt)
{
    HI_S32 ret = 0;
    HI_U8 CAImageArea[CAImgHeadAreaLen] = {0};
    HI_U32 u32CRC32Value = 0;
    HI_Flash_InterInfo_S flashInfo;

    CA_CheckPointer(pstImgInfo);
    CA_ASSERT(CA_flash_read_addr((HI_U64)PartionAddr,NAND_PAGE_SIZE,(HI_U8*)CAImageArea, &flashInfo),ret);
    ret = CA_VerifyImageHeader(CAImageArea, flashInfo.PartSize, pIsEncrypt);
    if (ret != HI_SUCCESS)
    {
        HI_INFO_CA("%s: Fail to verify image header\n", __FUNCTION__);
        return HI_FAILURE;
    }
    
        memcpy(pstImgInfo,CAImageArea,sizeof(HI_CAImgHead_S));

    return HI_SUCCESS;
}

HI_S32 HI_CA_EncryptDDRImageAndBurnFlashAddr(HI_U8* pImageDDRAddress, HI_U32 PartionAddr)
{
    HI_S32 ret = 0;
    HI_U32 FlashWriteSize = 0 ;
    HI_CAImgHead_S ImgInfo;

    memset(&ImgInfo, 0, sizeof(HI_CAImgHead_S));
    memcpy(&ImgInfo, pImageDDRAddress, sizeof(HI_CAImgHead_S));

    if(memcmp(ImgInfo.u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(ImgInfo.u8MagicNumber)))
    {
        HI_ERR_CA("Img format error\n");
        return -1;
    }

    CA_ASSERT(CA_DataEncrypt(pImageDDRAddress,ImgInfo.u32TotalLen,pImageDDRAddress),ret);

    FlashWriteSize = (ImgInfo.u32TotalLen + g_MaxBlockSize - 1)& (~(g_MaxBlockSize -1) );
    memset(pImageDDRAddress + ImgInfo.u32TotalLen, 0xff, FlashWriteSize - ImgInfo.u32TotalLen);

    CA_ASSERT(CA_flash_write_addr((HI_U64)PartionAddr, FlashWriteSize, pImageDDRAddress),ret);
    HI_INFO_CA("Img has been encrypted by SBP img encrypt process and write back to flash address = 0x%x\n",PartionAddr);
    
    CA_ASSERT(CA_DataDecrypt(pImageDDRAddress,ImgInfo.u32TotalLen,pImageDDRAddress),ret);

    return 0;

}

HI_S32 HI_CA_EncryptDDRImageAndBurnFlashName(HI_U8* pImageDDRAddress, HI_CHAR* pPartionName)
{
    HI_S32 ret = 0;
    HI_U32 FlashWriteSize = 0 ;
    HI_CAImgHead_S ImgInfo;

    memset(&ImgInfo, 0, sizeof(HI_CAImgHead_S));

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);

    memcpy(&ImgInfo, pImageDDRAddress, sizeof(HI_CAImgHead_S));
     if(memcmp(ImgInfo.u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(ImgInfo.u8MagicNumber)))
    {
        HI_ERR_CA("Img format error\n");

	    HI_INFO_CA("ImgInfo.u8MagicNumber:%s\n", ImgInfo.u8MagicNumber);
        printf_hex(ImgInfo.u8MagicNumber, sizeof(ImgInfo.u8MagicNumber));

		HI_INFO_CA("CAIMGHEAD_MAGICNUMBER:%s\n", CAIMGHEAD_MAGICNUMBER);
        printf_hex(CAIMGHEAD_MAGICNUMBER, sizeof(CAIMGHEAD_MAGICNUMBER));

        return -1;
    }

    CA_ASSERT(CA_DataEncrypt(pImageDDRAddress, ImgInfo.u32TotalLen, pImageDDRAddress),ret);
    
    FlashWriteSize = (ImgInfo.u32TotalLen + g_MaxBlockSize - 1)& (~(g_MaxBlockSize -1) );
    memset(pImageDDRAddress + ImgInfo.u32TotalLen ,0xff,FlashWriteSize - ImgInfo.u32TotalLen);
    
    CA_ASSERT(CA_flash_write(pPartionName, 0ULL, FlashWriteSize,pImageDDRAddress),ret);
    HI_INFO_CA("Img has been encrypted by SBP img encrypt process and write back to flash\n");
    
    CA_ASSERT(CA_DataDecrypt(pImageDDRAddress,ImgInfo.u32TotalLen,pImageDDRAddress),ret);

    CA_AuthenticateDeInit();
    return 0;

}

HI_S32 HI_CA_EncryptDDRImageAndBurnFlashNameByLen(HI_U8* pImageDDRAddress, HI_U32 u32Len, HI_CHAR* pPartionName)
{
    HI_S32 ret = 0;
    HI_U32 FlashWriteSize = 0 ;

    u32Len = (u32Len + NAND_PAGE_SIZE - 1)& (~(NAND_PAGE_SIZE -1) );
    /*loaderdb should use G2 to encrypt*/
    if (0 == strncmp(pPartionName, (HI_CHAR *)LOADER_INFOBASIC, MAX_STRLEN(pPartionName, LOADER_INFOBASIC)))
    {
        HI_INFO_CA("Img has been encrypted using G2 key\n");
        CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_2),ret);
    }
    else
    {
        HI_INFO_CA("Img has been encrypted using G1 key\n");
        CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);
    }

    CA_ASSERT(CA_DataEncrypt(pImageDDRAddress,u32Len,pImageDDRAddress),ret);

    FlashWriteSize = (u32Len + g_MaxBlockSize - 1)& (~(g_MaxBlockSize -1) );
    memset(pImageDDRAddress + u32Len ,0xff,FlashWriteSize - u32Len);

    CA_ASSERT(CA_flash_write(pPartionName, 0ULL, FlashWriteSize,pImageDDRAddress),ret);
    HI_INFO_CA("Img has been encrypted by SBP img encrypt process and write back to flash\n");

    CA_ASSERT(CA_DataDecrypt(pImageDDRAddress,u32Len,pImageDDRAddress),ret);

    CA_AuthenticateDeInit();
    return 0;

}

HI_S32 HI_CA_DecryptFlashImage2DDR(HI_CHAR* pPartionName)
{
    HI_S32 ret = 0;
    HI_CAImgHead_S ImgInfo;
    HI_BOOL bIsEncrypt=HI_TRUE;

    CA_CheckPointer(pPartionName);

    memset(&ImgInfo, 0, sizeof(HI_CAImgHead_S));

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);
    
    CA_ASSERT(HI_CA_GetEncryptFlashImgInfoByName((HI_U8 *)pPartionName, &ImgInfo, &bIsEncrypt),ret);
    
    CA_ASSERT(CA_flash_read((HI_CHAR*)pPartionName,0ULL, ImgInfo.u32TotalLen, (HI_U8*)IMG_VERIFY_ADDRESS, HI_NULL),ret);
    if (bIsEncrypt == HI_TRUE)
    {
	    CA_ASSERT(CA_DataDecrypt((HI_U8 *)IMG_VERIFY_ADDRESS, ImgInfo.u32TotalLen, (HI_U8 *)IMG_VERIFY_ADDRESS),ret);
    }
    
    if(memcmp(ImgInfo.u8MagicNumber,CAIMGHEAD_MAGICNUMBER,sizeof(ImgInfo.u8MagicNumber)))
    {
        HI_ERR_CA("Img format error\n");
        return -1;
    }

    CA_AuthenticateDeInit();

    return ret;
}

HI_S32 HI_CA_FlashAuthenticateByName(HI_U8* pPartionName,HI_U32 *ImgInDDRAddress)
{
    HI_S32 ret = 0;
    HI_BOOL bIsEncrypt = HI_TRUE;
    HI_CAImgHead_S ImgInfo;
    HI_U8 u8Signature[SIGNATURE_LEN] = {0};
    HI_U8* pImageSignature = NULL;

    memset(&ImgInfo,0,sizeof(ImgInfo));
    CA_CheckPointer(pPartionName);

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);
    
    CA_ASSERT(HI_CA_GetEncryptFlashImgInfoByName(pPartionName,&ImgInfo, &bIsEncrypt),ret);
    
    CA_ASSERT(CA_flash_read((HI_CHAR*)pPartionName,0ULL,ImgInfo.u32TotalLen,(HI_U8*)IMG_VERIFY_ADDRESS, HI_NULL),ret);
    
    if (HI_TRUE == bIsEncrypt)
    {
    CA_ASSERT(CA_DataDecrypt((HI_U8 *)IMG_VERIFY_ADDRESS,ImgInfo.u32TotalLen,(HI_U8 *)IMG_VERIFY_ADDRESS),ret);
    }
    
    pImageSignature = (HI_U8*)(IMG_VERIFY_ADDRESS + ImgInfo.u32SignatureOffset );
    memcpy(u8Signature,pImageSignature,SIGNATURE_LEN);
    
    CA_ASSERT(HI_CA_ImgAuthenticate(IMG_VERIFY_ADDRESS,ImgInfo.u32SignedImageLen,u8Signature),ret);
    if(ImgInDDRAddress)
    {
        *ImgInDDRAddress = IMG_VERIFY_ADDRESS + ImgInfo.u32CodeOffset ;
    }
    
    HI_INFO_CA("HI_CA_FlashAuthenticateByName %s successed\n",pPartionName);
    CA_AuthenticateDeInit();
    
    return ret;
}

HI_S32 HI_CA_FlashAuthenticateByAddr(HI_U32 PartionAddr,HI_BOOL bisBootargsArea,HI_U32 *ImgInDDRAddress)
{
    HI_S32 ret = 0;
    HI_BOOL bIsEncrypt = HI_TRUE;
    HI_CAImgHead_S ImgInfo;
    HI_U8 u8Signature[SIGNATURE_LEN] = {0};
    HI_U8* pImageSignature = NULL;

    memset(&ImgInfo,0,sizeof(ImgInfo));
    CA_CheckPointer(ImgInDDRAddress);

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);
    
    CA_ASSERT(HI_CA_GetEncryptFlashImgInfoByAddr(PartionAddr,&ImgInfo, &bIsEncrypt),ret);
    
    CA_ASSERT(CA_flash_read_addr((HI_U64)PartionAddr,ImgInfo.u32TotalLen,(HI_U8*)IMG_VERIFY_ADDRESS, HI_NULL),ret);
    
    if (HI_TRUE == bIsEncrypt)
    {
    CA_ASSERT(CA_DataDecrypt((HI_U8 *)IMG_VERIFY_ADDRESS,ImgInfo.u32TotalLen,(HI_U8 *)IMG_VERIFY_ADDRESS),ret);
    }
    
    pImageSignature = (HI_U8*)(IMG_VERIFY_ADDRESS + ImgInfo.u32SignatureOffset );
    memcpy(u8Signature,pImageSignature,SIGNATURE_LEN);
    
    CA_ASSERT(HI_CA_ImgAuthenticate(IMG_VERIFY_ADDRESS,ImgInfo.u32SignedImageLen,u8Signature),ret);
    if(ImgInDDRAddress)
    {
        *ImgInDDRAddress = IMG_VERIFY_ADDRESS + ImgInfo.u32CodeOffset ;
    }
    
    HI_INFO_CA("HI_CA_FlashAuthenticateByAddr   0x%x  successed\n",PartionAddr);
    if (HI_TRUE == bisBootargsArea)
    {
        HI_SIMPLEINFO_CA("re-set bootargs, offset:0x%x, realaddr:0x%x\n", IMG_VERIFY_ADDRESS+ImgInfo.u32CodeOffset, ImgInfo.u32CodeOffset);
        CA_nand_env_relocate_spec((HI_U8*)(IMG_VERIFY_ADDRESS+ImgInfo.u32CodeOffset));
    }
    
    CA_AuthenticateDeInit();
    
    return ret;
}

HI_S32 HI_CA_AuthenticateBootPara(HI_VOID)
{
    HI_S32 ret;
    HI_U32 ImgInDDRAddress = 0;

    HI_SIMPLEINFO_CA("HI_CA_AuthenticateBootPara g_EnvFlashAddr:0x%x\n", g_EnvFlashAddr);

    ret = HI_CA_FlashAuthenticateByAddr(g_EnvFlashAddr, HI_TRUE, &ImgInDDRAddress);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Authenticate bootargs failed\n");
        CA_Reset();
    }

    return HI_SUCCESS;
}

HI_S32 HI_CA_AuthenticateBootParaBak(HI_VOID)
{
    HI_U32 ImgInDDRAddress = 0;
    return HI_CA_FlashAuthenticateByAddr(g_EnvBakFlashAddr,HI_TRUE,&ImgInDDRAddress);
}

static HI_S32 CA_DecryptAndCMACPartitionData(const HI_CHAR *pPartitionName, HI_U32 *pu32RamAddress)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32DataSize = 0, u32DataOffset, u32HeaderLen, U32TmpLen;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_U32 u32DataRamAddress = 0;
  
    HI_CaCMACDataHead_S stCaCmacDataHeader;
    HI_U8 au8OutputMAC[16];
    HI_U8 *pu8Buf = HI_NULL, *puMMZBuf = HI_NULL;
    
    /*Read logo partition*/
    hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, pPartitionName, 0, 0);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA("HI_Flash_Open() %s error, result %x!\n",pPartitionName, ret);
        return HI_FAILURE;
    }

    pu8Buf = (HI_U8 *)&stCaCmacDataHeader;
    ret = HI_Flash_Read(hFlash, 0ULL, pu8Buf, sizeof(stCaCmacDataHeader), HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("Fail to read flash!\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }

    /**********************Verify whether the head is valid********************************/
    if (HI_SUCCESS != CA_AuthenticateInit(HI_CA_KEY_GROUP_1))
    {
        HI_ERR_CA("Fail to call CA_AuthenticateInit!\n");
        goto ERROR_EXIT;
    }
    if (HI_SUCCESS != CA_DataDecrypt(pu8Buf, sizeof(stCaCmacDataHeader), pu8Buf))
    {
        HI_ERR_CA("Fail to call CA_DataDecrypt 1 !\n");
        CA_AuthenticateDeInit();
        goto ERROR_EXIT;
    }
    
    CA_AuthenticateDeInit();
    
    u32HeaderLen = sizeof(stCaCmacDataHeader);
    U32TmpLen =  u32HeaderLen - CMAC_VALUE_LEN;
    ret = HI_CA_CalcMAC(s_au8InputKey, pu8Buf, U32TmpLen, au8OutputMAC, HI_TRUE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to calc CMAC\n");
        goto ERROR_EXIT;
    }
    
    if (0 != memcmp(au8OutputMAC, stCaCmacDataHeader.u8HeaderCMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA("PartitionDataCMacCheck: Header CMAC check error\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }

    /**********************Verify whether the data is valid********************************/
    u32DataSize = stCaCmacDataHeader.u32CMACDataLen + u32HeaderLen;
    
    ret = HI_PDM_AllocReserveMem(pPartitionName, u32DataSize, &u32DataRamAddress);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Alloc Reserve Mem err!, Ret = %#x\n", ret);
        goto ERROR_EXIT;
    }
    HI_ERR_CA("ram address = %x\n", u32DataRamAddress);

    puMMZBuf = (HI_U8 *)u32DataRamAddress;
    ret = HI_Flash_Read(hFlash, 0ULL, puMMZBuf, u32DataSize, HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("HI_Flash_Read partion %s error\n", pPartitionName);
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }    

    if (HI_SUCCESS != CA_AuthenticateInit(HI_CA_KEY_GROUP_1))
    {
        HI_ERR_CA("Fail to call CA_AuthenticateInit!\n");
        goto ERROR_EXIT;
    }
    
    if(HI_SUCCESS != CA_DataDecrypt(puMMZBuf, u32DataSize, puMMZBuf))
    {
        HI_ERR_CA("Fail to call CA_DataDecrypt 2!\n");
        CA_AuthenticateDeInit();
        goto ERROR_EXIT;
    }    
    
    CA_AuthenticateDeInit();
    
    u32DataOffset = u32HeaderLen;
    ret = HI_CA_CalcMAC(s_au8InputKey, &puMMZBuf[u32DataOffset], stCaCmacDataHeader.u32CMACDataLen, au8OutputMAC, HI_TRUE);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to calc CMAC\n");
        goto ERROR_EXIT;
    }
    
    if (0 != memcmp(au8OutputMAC, stCaCmacDataHeader.u8CMACValue, CMAC_VALUE_LEN))
    {
        HI_ERR_CA("PartitionDataCMacCheck: Data CMAC check error\n");
        ret = HI_FAILURE;
        goto ERROR_EXIT;
    }

    if (pu32RamAddress != HI_NULL)
    {
       *pu32RamAddress = u32DataRamAddress + sizeof(HI_CaCMACDataHead_S);
    }

    ret = HI_SUCCESS;

ERROR_EXIT:
    HI_Flash_Close(hFlash);    
    return ret;
}

HI_S32 HI_CA_AuthenticateLogoData(HI_VOID)
{
    HI_S32 ret = HI_FAILURE;
    HI_PDM_MEMINFO_S stPdmInfo;
    
    memset(&stPdmInfo, 0, sizeof(HI_PDM_MEMINFO_S));

    /* decrypt and verify basic parameter data with CMAC */
    CA_ASSERT(CA_DecryptAndCMACPartitionData(BASE_BASIC, &stPdmInfo.u32BaseAddr), ret);    

    /* decrypt and verify logo data with CMAC */
    CA_ASSERT(CA_DecryptAndCMACPartitionData(LOGO_BASIC, &stPdmInfo.u32LogoAddr), ret);

    /* show logo */
    Logo_Main(&stPdmInfo);
    
    /**just protect the logo reserve memory*/
    HI_PDM_SetTagData();    

    return HI_SUCCESS;
}

#if defined(HI_ADVCA_SUPPORT) && defined(HI_ADVCA_TYPE_CONAX) && defined(HI_ADVCA_VERIFY_ENABLE)

#ifdef CONFIG_ENV_BACKUP
    static HI_U32 s_u32LoadEnvLoop = 2;
#else
    static HI_U32 s_u32LoadEnvLoop = 1;
#endif
/*called by ./fastboot/common/env_common.c*/
int load_direct_env(void *env, unsigned int offset, unsigned int size)
{

    HI_S32 ret = 0;
    HI_CAImgHead_S ImgInfo;
    HI_U8 u8Signature[SIGNATURE_LEN] = {0};
    HI_U8* pImageSignature = NULL;
    HI_BOOL bEncrypt = HI_TRUE;

    
    HI_INFO_CA("Enter Conax load_direct_env offset:%x, size:%x\n", offset, size);
    
    memset(&ImgInfo,0,sizeof(ImgInfo));

    if(s_u32LoadEnvLoop > 0)
    {
        s_u32LoadEnvLoop--; 
    }
    else
    {
        return HI_FAILURE;
    }
    
    //Read the Bootargs image from flash.
    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);
    //the offset(address) use the flash, which include boot and bootargs
    ret = HI_CA_GetEncryptFlashImgInfoByAddr(offset, &ImgInfo, &bEncrypt);
    if (HI_SUCCESS == ret)
    {
        ret |= CA_flash_read_addr((HI_U64)offset, ImgInfo.u32TotalLen,(HI_U8*)IMG_VERIFY_ADDRESS, HI_NULL);
    
        if (bEncrypt == HI_TRUE)
        {
        ret |= CA_DataDecrypt((HI_U8 *)IMG_VERIFY_ADDRESS,ImgInfo.u32TotalLen,(HI_U8 *)IMG_VERIFY_ADDRESS);
        }        

        pImageSignature = (HI_U8*)(IMG_VERIFY_ADDRESS + ImgInfo.u32SignatureOffset );
        memcpy(u8Signature,pImageSignature,SIGNATURE_LEN);

        ret |= HI_CA_ImgAuthenticate(IMG_VERIFY_ADDRESS,ImgInfo.u32SignedImageLen,u8Signature);

    }
    
    if ((HI_SUCCESS != ret) && (0 == s_u32LoadEnvLoop))
    {
        HI_ERR_CA("Authenticate bootargs failed, s_u32LoadEnvLoop:%d\n", s_u32LoadEnvLoop);
        CA_Reset();
    }

    if (HI_SUCCESS == ret)
    {
        memset(env, 0, size);
        memcpy(env, (HI_U8 *)(IMG_VERIFY_ADDRESS + ImgInfo.u32CodeOffset), size);

        HI_ERR_CA("Authenticate bootargs success\n");

    }
    
    return ret;
}
#endif 
HI_S32 HI_CA_AuthenticateEntry(HI_VOID)
{
    HI_S32 ret;
    HI_BOOL bNeedUpgrd = HI_FALSE;
    HI_CHAR chBootCmd[64] = {0};
    HI_U32 u32LaunchAddr = 0;

#ifndef  HI_ADVCA_VERIFY_ENABLE
    HI_INFO_CA("Boot verify function is not enabled, display logo!\n");
    /* show logo */
    Logo_Main(HI_NULL);
    /**just protect the logo reserve memory*/
    HI_PDM_SetTagData();
    return 0;
#endif

    HI_CA_AuthenticateLogoData();
    
    ret = CA_ReadUpgrdFlag(&bNeedUpgrd);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("Fail to read upgrade flag !\n");
#ifdef HI_ADVCA_FUNCTION_RELEASE
         CA_Reset();
#endif
    }
        
    if (0x01 == bNeedUpgrd)
    {
        HI_INFO_CA("Need Upgrade!!!!!!!!!!!!!!\n");
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)STBID_BASIC,NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate stbid failed\n");
            CA_Reset();
        }
		/*according to MV310 SES document,for the Loader flowchat, no need veryfy the  "system"*/
		#if 0
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)SYSTEM_BASIC,NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate system failed\n");
            CA_Reset();
        }
		#endif
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)LOADER_BASIC,&u32LaunchAddr);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate loader failed\n");
            CA_Reset();
        }
    }
    else
    {
        HI_INFO_CA("Do not Need Upgrade!!!!!!!!!!!!!!\n");
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)STBID_BASIC,NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate stbid failed\n");
            CA_Reset();
        }
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)LOADER_BASIC,NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate loader failed\n");
            CA_Reset();
        }
        ret = HI_CA_FlashAuthenticateByName((HI_U8 *)SYSTEM_BASIC,&u32LaunchAddr);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Authenticate system failed\n");
            CA_Reset();
        }
    }

    snprintf(chBootCmd, sizeof(chBootCmd), "bootm 0x%x", u32LaunchAddr);

    run_command(chBootCmd, 0);

    return ret;
}


/*************************************************************************
 *
 * The function below is added for AES CBC-MAC, for Irdeto MSR1.9 chipset.
 *
 *************************************************************************/

/* For CMAC Calculation */
static HI_U8 const_Rb[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87
};

/* Basic Functions */
static HI_VOID xor_128(HI_U8 *a, HI_U8 *b, HI_U8 *out)
{
    HI_U32 i;

    if(a == NULL || b == NULL || out == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return;
    }

    for (i = 0; i < 16; i++)
    {
        out[i] = a[i] ^ b[i];
    }
}

/* AES-CMAC Generation Function */
static HI_VOID leftshift_onebit(HI_U8 *input, HI_U8 *output)
{
    HI_S32 i;
    HI_U8 overflow = 0;

    if(input == NULL || output == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return;
    }

    for ( i = 15; i >= 0; i-- )
    {
        output[i] = input[i] << 1;
        output[i] |= overflow;
        overflow = (input[i] & 0x80) ? 1 : 0;
    }
    return;
}

static HI_S32 generate_subkey(HI_HANDLE hCipherHandle, HI_U8 *K1, HI_U8 *K2)
{
    HI_U8 L[16];
    HI_U8 Z[16];
    HI_U8 tmp[16];
    HI_U32 u32DataLen = 16;
    HI_S32 Ret = HI_SUCCESS;

    if(K1 == NULL || K2 == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return HI_FAILURE;
    }

    memset(Z, 0x0, sizeof(Z));
    Ret = HI_CIPHER_EncryptEx(hCipherHandle, Z, u32DataLen, L);
    if(Ret != HI_SUCCESS)
    {
        return Ret;
    }

    if ( (L[0] & 0x80) == 0 ) /* If MSB(L) = 0, then K1 = L << 1 */
    {
        leftshift_onebit(L, K1);
    }
    else  /* Else K1 = ( L << 1 ) (+) Rb */
    {
        leftshift_onebit(L, tmp);
        xor_128(tmp, const_Rb, K1);
    }

    if ( (K1[0] & 0x80) == 0 )
    {
        leftshift_onebit(K1,K2);
    }
    else
    {
        leftshift_onebit(K1, tmp);
        xor_128(tmp, const_Rb, K2);
    }

    return HI_SUCCESS;
}

static HI_VOID padding ( HI_U8 *lastb, HI_U8 *pad, HI_U32 length )
{
    HI_U32 j;

    if(lastb == NULL || pad == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return;
    }

    /* original last block */
    for ( j = 0; j < 16; j++ )
    {
        if ( j < length )
        {
            pad[j] = lastb[j];
        }
        else if ( j == length )
        {
            pad[j] = 0x80;
        }
        else
        {
            pad[j] = 0x00;
        }
    }
}

HI_S32 HI_CA_CalcMAC(HI_U8 *pu8Key, HI_U8 *pInputData, HI_U32 u32InputDataLen,
                                        HI_U8 *pOutputMAC, HI_BOOL bIsLastBlock)
{
    HI_U8 X[16], M_last[16], padded[16];
    static HI_U8 K1[16], K2[16];
    HI_U32 n, i, flag;
    HI_U8 u8TmpBuf[16];
    HI_S32 Ret = HI_SUCCESS;
    HI_UNF_CIPHER_CTRL_S stCipherCtrl;
    static HI_BOOL bIsFirstBlock = HI_TRUE;
    HI_S32 ret = HI_SUCCESS;
    static HI_HANDLE hCipherHandle;
    HI_UNF_CIPHER_ATTS_S stCipherAtts;
    static HI_U32 u32MmzPhyAddr = 0;
    static HI_BOOL bIsDstMmzInit = HI_FALSE;
	HI_U8 au8SessionKey1[16] = {0x23,0x34,0x34,0x52,0x34,0x55,0x45,0x84,0x54,0x54,0x84,0x53,0x34,0x47,0x34,0x47};
	HI_U8 au8SessionKey2[16] = {0x56,0x34,0x88,0x52,0x34,0x89,0x45,0xa0,0x54,0x54,0x77,0x53,0x34,0x47,0x34,0x91};
    HI_UNF_ADVCA_KEYLADDER_LEV_E enStage = 0;

    if(pu8Key == NULL || pInputData == NULL || pOutputMAC == NULL)
    {
        HI_ERR_CA("Invalid parameter!\n");
        return -1;
    }

  
    if(bIsFirstBlock)
    {
        CA_ASSERT(HI_UNF_CIPHER_Init(), ret);
        HI_UNF_ADVCA_Init();

        CA_ASSERT(CA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_AES),ret);    
        CA_ASSERT(CA_GetR2RLadder(&enStage),ret);

        if(enStage >= HI_UNF_ADVCA_KEYLADDER_LEV2)
        {
        	ret = HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV1, au8SessionKey1);
            if (ret != HI_SUCCESS)
            {
        		HI_ERR_CA("Fail to set R2R session key, level %d\n", HI_UNF_ADVCA_KEYLADDER_LEV1);
                return HI_FAILURE;
            }
        }

        if(enStage >= HI_UNF_ADVCA_KEYLADDER_LEV3)
        {
        	ret = HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV2, au8SessionKey2);
            if (ret != HI_SUCCESS)
            {
               HI_ERR_CA("Fail to set R2R session key, level %d\n", HI_UNF_ADVCA_KEYLADDER_LEV2);
               return HI_FAILURE;
            }
        }
                
        memset(&stCipherAtts, 0, sizeof(HI_UNF_CIPHER_ATTS_S));
        stCipherAtts.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
        CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&hCipherHandle, &stCipherAtts),ret);
        memcpy(stCipherCtrl.u32Key, pu8Key, 16);
        memset(stCipherCtrl.u32IV, 0, sizeof(stCipherCtrl.u32IV));
        stCipherCtrl.bKeyByCA = HI_TRUE;
        stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        stCipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
        stCipherCtrl.stChangeFlags.bit1IV = 1;
        stCipherCtrl.enCaType = HI_UNF_CIPHER_CA_TYPE_R2R;       
        CA_ASSERT(HI_UNF_CIPHER_ConfigHandle(hCipherHandle, &stCipherCtrl), ret);

        Ret = generate_subkey(hCipherHandle, K1, K2);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }

        //After genreate the subkey, reset the configure handle
        memcpy(stCipherCtrl.u32Key, pu8Key, 16);
        memset(stCipherCtrl.u32IV, 0, sizeof(stCipherCtrl.u32IV));
        stCipherCtrl.bKeyByCA = HI_TRUE;
        stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        stCipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
        stCipherCtrl.stChangeFlags.bit1IV = 1;
        stCipherCtrl.enCaType = HI_UNF_CIPHER_CA_TYPE_R2R;
        CA_ASSERT(HI_UNF_CIPHER_ConfigHandle(hCipherHandle, &stCipherCtrl), ret);
        bIsFirstBlock = HI_FALSE;
    }

    if(!bIsDstMmzInit)
    {
        Ret = HI_MEM_Alloc(&u32MmzPhyAddr, MAX_DATA_LEN);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_CA("malloc input memory failed!\n");
            return HI_FAILURE;
        }
	    memset((void *)u32MmzPhyAddr, 0, MAX_DATA_LEN);

        bIsDstMmzInit = HI_TRUE;
    }

    if(!bIsLastBlock)
    {
       Ret = HI_CIPHER_EncryptEx(hCipherHandle, pInputData, u32InputDataLen, (HI_U8 *)u32MmzPhyAddr); /* X := AES-128(KEY, Y); */
       memcpy(u8TmpBuf, (HI_U8 *)(u32MmzPhyAddr + u32InputDataLen - 16), 16);
       if(Ret != HI_SUCCESS)
       {
            return Ret;
       }
    }
    else
    {
        bIsFirstBlock = HI_TRUE;

        n = (u32InputDataLen + 15) / 16; /* n is number of rounds */
        if ( n == 0 )
        {
            n = 1;
            flag = 0;
        }
        else
        {
            if ( (u32InputDataLen % 16) == 0 ) /* last block is a complete block */
            {
                flag = 1;
            }
            else /* last block is not complete block */
            {
                flag = 0;
            }
        }

        if ( flag )  /* last block is complete block */
        {
            xor_128(&pInputData[16 * (n - 1)], K1, M_last);
        }
        else
        {
            padding(&pInputData[16 * (n - 1)], padded, u32InputDataLen % 16);
            xor_128(padded, K2, M_last);
        }

        if(n > 1)
        {
           Ret = HI_CIPHER_EncryptEx(hCipherHandle, pInputData, 16 * (n - 1), (HI_U8 *)u32MmzPhyAddr); /* X := AES-128(KEY, Y); */
    	   memcpy(u8TmpBuf, (HI_U8 *)(u32MmzPhyAddr + 16 * (n - 1) - 16), 16);
           if(Ret != HI_SUCCESS)
           {
                return Ret;
           }
        }

        HI_CIPHER_EncryptEx(hCipherHandle, M_last, 16, X);
        if(Ret != HI_SUCCESS)
        {
            return Ret;
        }

        for ( i = 0; i < 16; i++ )
        {
            pOutputMAC[i] = X[i];
        }

        CA_ASSERT(HI_UNF_CIPHER_DestroyHandle(hCipherHandle), ret);
    }

    return HI_SUCCESS;
}
/****************/

/****************************************************/
HI_S32 generate_encrypt_key(HI_U8 *clear_key, HI_U8 *encrypt_key)
{
    CA_EncryptSwpk((HI_U32 *)clear_key, (HI_U32 *)encrypt_key);
    return HI_SUCCESS;
}

typedef enum
{
    Algoritm_Hash1,
    Algoritm_Hash2
}HI_Algorithm_EN;

typedef struct
{
    HI_U8 *pImageData;
    HI_U32 ImageDataLength;
    HI_CASignImageTail_S *pCASignTail;
} HI_CA_NEW_SignParam_S;

/*
** CRC32 Arithmetic
*/
#define     POLYNOMIAL 0x04c11db7L
static short _First = 1;                       /*Init _CrcTable[256] Flag, Only init once time*/
static unsigned long  _CrcTable[256];                  /*Calculate CRC32*/

static void GenCrcTable(void)
{
     int    i, j;
    unsigned long crc_accum;
    for( i = 0;  i < 256;  i++ )
    {
        crc_accum =  ( i << 24 );
        for( j = 0;  j < 8;  j++ )
        {
            if( crc_accum & 0x80000000L )
                crc_accum = ( crc_accum << 1 ) ^ POLYNOMIAL;
            else
                crc_accum = ( crc_accum << 1 );
        }
        _CrcTable[i] = crc_accum;
    }
    return;
}


unsigned long DVB_CRC32(unsigned char *buf, int length)
{
    unsigned long crc = 0xffffffff;

    if(_First)
    {
        GenCrcTable();
        _First = 0;
    }
    while( length-- )
    {
        crc = (crc << 8) ^ _CrcTable[((crc >> 24) ^ *buf++) & 0xff];
    }

    return crc;
}

typedef struct hash_atts
{
    HI_HANDLE *sha_context;
    HI_Algorithm_EN hashType;
}HASH_ATTS_S;

HI_S32 CA_Common_InitHASH(HI_U8 HashType, HI_HANDLE **handle)
{
    void *ctx = NULL;
    HASH_ATTS_S *atts = NULL;

    atts = (HASH_ATTS_S *)malloc(sizeof(HASH_ATTS_S));
    if (NULL == atts)
    {
        HI_SIMPLEINFO_CA("err [%s:%d]\n", __FUNCTION__, __LINE__);
        return -1;
    }

    if (HashType == Algoritm_Hash1)
    {
        ctx = (sha1_context *)malloc(sizeof(sha1_context));
        if (NULL == ctx)
        {
            HI_SIMPLEINFO_CA("err [%s:%d]\n", __FUNCTION__, __LINE__);
            free(atts);
            return -1;
        }
        memset(ctx, 0, sizeof(sha1_context));

        sha1_starts(ctx);
    }
    else if (HashType == Algoritm_Hash2)
    {
        ctx = (sha2_context *)malloc(sizeof(sha2_context));
        if (NULL == ctx)
        {
            HI_SIMPLEINFO_CA("err [%s:%d]\n", __FUNCTION__, __LINE__);
            free(atts);
            return -1;
        }
        memset(ctx, 0, sizeof(sha2_context));

        sha2_starts(ctx, 0);
    }
    else
    {
        HI_SIMPLEINFO_CA("Invalid hash type!\n");
        free(atts);
        return -1;
    }
    atts->sha_context= (HI_HANDLE *)ctx;
    atts->hashType = HashType;
    *handle = (HI_HANDLE *)atts;

    return 0;
}

HI_VOID CA_Common_UpdateHASH(HI_HANDLE *handle, HI_U8 *StartAddr, HI_U32 length)
{
    if (((HASH_ATTS_S *)handle)->hashType == Algoritm_Hash1)
    {
        sha2_update((sha2_context *)(((HASH_ATTS_S *)handle)->sha_context), (const unsigned char *)StartAddr, length);
    }
    else
    {
        sha1_update((sha1_context *)(((HASH_ATTS_S *)handle)->sha_context), (const unsigned char *)StartAddr, length);
    }
}

HI_VOID CA_Common_FinishHASH(HI_HANDLE *handle, HI_U8 *Hash)
{
    if (((HASH_ATTS_S *)handle)->hashType == Algoritm_Hash2)
    {
        sha2_finish((sha2_context *)(((HASH_ATTS_S *)handle)->sha_context), Hash);
        free((sha2_context *)(((HASH_ATTS_S *)handle)->sha_context));
    }
    else
    {
        sha1_finish((sha1_context *)(((HASH_ATTS_S *)handle)->sha_context), Hash);
        free((sha1_context *)(((HASH_ATTS_S *)handle)->sha_context));
    }
    free((HASH_ATTS_S *)handle);
}
HI_S32 Debug_CASignImageTail_Value(HI_CASignImageTail_S *pCASignTail)
{
    int index;
    unsigned char Data[256];

    memset(Data, 0, 256);
    memcpy(Data, pCASignTail->u8MagicNumber, 32);
    HI_SIMPLEINFO_CA("\nu8MagicNumber:%s\n", Data);
    memset(Data, 0, 256);
    if(memcmp(pCASignTail->u8Version, CAIMGHEAD_VERSION, sizeof(pCASignTail->u8Version)))
    {
        HI_ERR_CA("Version num has been changed from v0000002 to v0000003\n");
        return -1;
    }
    memcpy(Data, pCASignTail->u8Version, 8);

    HI_SIMPLEINFO_CA("u8Version:%s\n", Data);
    HI_SIMPLEINFO_CA("u32CreateDay:0x%x\n", pCASignTail->u32CreateDay);
    HI_SIMPLEINFO_CA("u32CreateTime:0x%x\n", pCASignTail->u32CreateTime);
    HI_SIMPLEINFO_CA("u32HeadLength:0x%x\n", pCASignTail->u32HeadLength);
    HI_SIMPLEINFO_CA("u32SignedDataLength:%d:0x%x\n", pCASignTail->u32SignedDataLength, pCASignTail->u32SignedDataLength);
    HI_SIMPLEINFO_CA("u32IsYaffsImage:%d\n", pCASignTail->u32IsYaffsImage);
    HI_SIMPLEINFO_CA("u32IsConfigNandBlock:%d\n", pCASignTail->u32IsConfigNandBlock);
    HI_SIMPLEINFO_CA("u32NandBlockType:%d\n", pCASignTail->u32NandBlockType);
    HI_SIMPLEINFO_CA("u32IsNeedEncrypt:%d\n", pCASignTail->u32IsNeedEncrypt);
    HI_SIMPLEINFO_CA("u32IsEncrypted:%d\n", pCASignTail->u32IsEncrypted);
    HI_SIMPLEINFO_CA("u32HashType:%d\n", pCASignTail->u32HashType);
    HI_SIMPLEINFO_CA("u32CurrentsectionID:%d\n", pCASignTail->u32CurrentsectionID);
    HI_SIMPLEINFO_CA("u32TotalsectionID:%d\n", pCASignTail->u32TotalsectionID);
    HI_SIMPLEINFO_CA("u32SectionSize:%d\n", pCASignTail->u32SectionSize);
    if(pCASignTail->u32HashType == Algoritm_Hash2)
    {
        for(index = 0; index < 32; index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", pCASignTail->u8Sha[index]);
        }
    }
    else
    {
        for(index = 0; index < 5; index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", pCASignTail->u8Sha[index]);
        }
    }
    HI_SIMPLEINFO_CA("\n");
    HI_SIMPLEINFO_CA("u32SignatureLen:%d\n", pCASignTail->u32SignatureLen);
    for(index = 0; index < pCASignTail->u32SignatureLen; index ++)
    {
        HI_SIMPLEINFO_CA("%02x ", pCASignTail->u8Signature[index]);
    }
    HI_SIMPLEINFO_CA("\n");
    HI_SIMPLEINFO_CA("OrignalImagePath:%s\n", pCASignTail->OrignalImagePath);
    HI_SIMPLEINFO_CA("RSAPrivateKeyPath:%s\n", pCASignTail->RSAPrivateKeyPath);
    HI_SIMPLEINFO_CA("CRC32:%x\n", pCASignTail->CRC32);

    return 0;
}

HI_S32 CA_CommonParse_SubCommand(HI_U8 *string, HI_U32 length, HI_U8 *ImageName, HI_U8 *SignName, HI_U32 *SignOffset)
{
    int ret = 0;
    HI_U8 *pImageoffset, *pSignimageoffset, *pSignloacationoffset;
    HI_U8 deliver[] = ",";

    pImageoffset = string;

    pSignimageoffset = (HI_U8 *)strstr((const char *)string, (const char *)deliver);
    if(pSignimageoffset == HI_NULL)
    {
        HI_ERR_CA("Can not find , in string:%s\n", string);
        return -1;
    }
    //Get ImageName
    memcpy(ImageName, pImageoffset, (pSignimageoffset - pImageoffset));

    pSignimageoffset ++; //jump ;
    pSignloacationoffset = (HI_U8 *)strstr((const char *)pSignimageoffset, (const char *)deliver);
    if(pSignloacationoffset == HI_NULL)
    {
        HI_ERR_CA("Can not find , in pSignimageoffset:%s\n", pSignimageoffset);
        return -1;
    }
    //Get SiagnName
    memcpy(SignName, pSignimageoffset, (pSignloacationoffset - pSignimageoffset));

    //Get Siagn loaction offset
    pSignloacationoffset ++; //jump ;
    *SignOffset = (HI_U32)simple_strtoul((const char *)pSignloacationoffset, NULL, 16);

    return ret;
}

HI_S32 CA_Common_Search_SignHeader(HI_U8 *PartitionSignName, HI_CASignImageTail_S *pSignImageInfo, HI_U32 *pOffset)
{
    HI_S32 ret = 0, index = 0;
    HI_U32 PartitionSize = 0;
    HI_S32 ReadSize = NAND_PAGE_SIZE;
    HI_U8 CAImageArea[NAND_PAGE_SIZE] = {0};
    HI_U32 IsFoundFlag = HI_FALSE;
    HI_U32 offset;

    CA_CheckPointer(pOffset);
    offset = *pOffset;

    CA_CheckPointer(PartitionSignName);
    HI_INFO_CA("PartitionSignName:%s\n", PartitionSignName);
    CA_ASSERT(CA_flash_GetSize((HI_CHAR *)PartitionSignName, &PartitionSize),ret);

    for(index = offset/ReadSize; index < PartitionSize / ReadSize; index ++)
    {
        CA_ASSERT(CA_flash_read((HI_CHAR*)PartitionSignName, ReadSize * index, ReadSize,(HI_U8*)CAImageArea, HI_NULL),ret);
        memcpy(pSignImageInfo, CAImageArea, sizeof(HI_CASignImageTail_S));
        if(!memcmp(pSignImageInfo->u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(pSignImageInfo->u8MagicNumber)))
        {
            unsigned int CRC32Value;
            HI_INFO_CA("Sign Header found!\n");
            IsFoundFlag = HI_TRUE;
            //Clacluate CRC32!
            CRC32Value = DVB_CRC32((HI_U8 *)pSignImageInfo, (sizeof(HI_CASignImageTail_S) - 4));
            if(CRC32Value == pSignImageInfo->CRC32)
            {
                *pOffset = ReadSize * index;
                HI_INFO_CA("CRC32 check ok\n");
            }
            else
            {
                HI_ERR_CA("CRC32Value:%x != pSignImageInfo->CRC32:%x\n", CRC32Value, pSignImageInfo->CRC32);
                return HI_FAILURE;
            }
#ifdef SPARSE_EXT4
            if (0 == IsSparseFlag && !memcmp(PartitionSignName, SYSTEM_SIGN_PARTITION, strlen(SYSTEM_SIGN_PARTITION)))
            {
                HI_U32 pTmp = 0;
                ret = HI_MEM_Alloc(&pTmp, PartitionSize - ReadSize * index);
                if (HI_SUCCESS != ret)
                {
                    return HI_FAILURE;
                }
                CA_CheckPointer((HI_VOID *)pTmp);
                CA_ASSERT(CA_flash_read((HI_CHAR*)PartitionSignName, ReadSize * index, PartitionSize - ReadSize * index, (HI_U8 *)pTmp, HI_NULL), ret);
                pSparseHead = (sparse_header_t *)(pTmp + pSignImageInfo->u32TotalsectionID * ReadSize);
                if (IS_SPARSE(pSparseHead))  /* sparse ext4 */
                {
                    IsSparseFlag = 1;
                    pChunkHead = (sign_chunk_header_t *)(pTmp + pSignImageInfo->u32TotalsectionID * ReadSize + pSparseHead->file_hdr_sz);
                    pSignChunkInfo = (HI_U32 *)(pTmp + pSignImageInfo->u32TotalsectionID * ReadSize + pSparseHead->file_hdr_sz + pSparseHead->chunk_hdr_sz * pSparseHead->total_chunks);
                }
                else  /* not sparse ext4 */
                {
                    IsSparseFlag = 2;
                }
            }
#endif
            break;
        }
        else
        {
            continue;
        }
    }
    if(IsFoundFlag == HI_TRUE)
    {
        //Debug pSignImageInfor!
        return 0;
    }
    return HI_FAILURE;
}

static HI_S32 CA_GetYAFFSFlashData(HI_U8 * PartitionImagenName, HI_U8 *DDRAddress, HI_U32 Length)
{
    HI_S32 ret = 0, index;
    HI_U8 *pCAImageArea;
    HI_U32 Address;
    HI_U32 PartionSize;
    HI_U32 PageSize;
    HI_U32 BlockSize;
    HI_U32 OobSize;

    char argv[5][20];
    char command[256];

    CA_ASSERT(CA_flash_getinfo((HI_CHAR *)PartitionImagenName, &PartionSize, &BlockSize, &PageSize, &OobSize),ret);
    if(Length == 0)
    {
        Length = PartionSize;
    }

    pCAImageArea = (HI_U8 *)DDRAddress;
    if(pCAImageArea == NULL)
    {
        HI_ERR_CA("can not allocate data\n");
        return HI_FAILURE;
    }


    CA_flash_GetFlashAddressFromParitonName(HI_FLASH_TYPE_NAND_0, (HI_CHAR*)PartitionImagenName, &Address);

    memset(argv, 0, 5*20);
    strncpy(argv[0], "nand", sizeof(argv[0]));
    strncpy(argv[1], "read.yaffs", sizeof(argv[1]));
    snprintf(argv[2], sizeof(argv[2]), "%x ", pCAImageArea);
    snprintf(argv[3], sizeof(argv[3]), "%x ", Address);
    snprintf(argv[4], sizeof(argv[4]), "%x ", Length);

    for(index = 0; index < 5; index ++)
    {
        HI_SIMPLEINFO_CA("%s ", argv[index]);
    }

#if 1
    memset(command, 0, 256);
    snprintf(command, sizeof(command), "nand read.yaffs 0x%x 0x%x 0x%x ", pCAImageArea, Address, Length);
    run_command(command, 0);
#else
    do_get_nand_read(&(argv[1]), &(argv[2]), &(argv[3]), &(argv[4]));
#endif

    HI_SIMPLEINFO_CA("Get %s to %x, length:0x%x\n", PartitionImagenName, (int)DDRAddress, Length);

    return ret;
}

HI_S32 CA_Common_GetImageData(HI_U8 *PartitionImageName, HI_CASignImageTail_S *pSignImageInfo, HI_CA_NEW_SignParam_S *pSignParam, HI_U32 *pu32ImageAddress)
{
    HI_S32 ret = 0, index = 0;
    HI_S32 PartitionImagSize = 0;
    HI_U64 PartitionImageOffset = 0;
    HI_U8 *pCAImageArea = NULL;
    HI_U8 TmpSha[32];
#ifdef SPARSE_EXT4
    HI_U32 u32CurChunkNum = 0;
    HI_U32 u32NextChunkNum = 0;
    HI_U32 u32ChunkNum = 0;
    HI_U32 u32MergeDataLen = 0;
    HI_U32 u32MergeDataOffset = 0;
    sign_chunk_header_t * tmpChunkHead = HI_NULL;
#endif

    CA_CheckPointer(PartitionImageName);

    HI_INFO_CA("PartitionImageName:%s, pSignImageInfo->u32SignedDataLength:%d\n", PartitionImageName, pSignImageInfo->u32SignedDataLength);
    PartitionImagSize = (pSignImageInfo->u32SignedDataLength + NAND_PAGE_SIZE - 1) / NAND_PAGE_SIZE * NAND_PAGE_SIZE;
    PartitionImageOffset = pSignImageInfo->u32CurrentsectionID * pSignImageInfo->u32SectionSize;

    if(pu32ImageAddress == NULL)
    {
        pCAImageArea = (HI_U8 *)IMG_VERIFY_ADDRESS;
    }
    else
    {
        pCAImageArea = (HI_U8 *)(*pu32ImageAddress);
    }
    if(pCAImageArea == NULL)
    {
        HI_ERR_CA("can not allocate data\n");
        return HI_FAILURE;
    }
    memset(pCAImageArea, 0x00, PartitionImagSize);
    if(pSignImageInfo->u32IsYaffsImage)
    {
        HI_INFO_CA("Yaffs FileSystem, We will check sign of the whole yaffs-image:%s\n", PartitionImageName);
        CA_ASSERT(CA_GetYAFFSFlashData((HI_U8*)PartitionImageName, pCAImageArea, pSignImageInfo->u32SignedDataLength),ret);
    }
    else
    {
        CA_ASSERT(CA_flash_read((HI_CHAR*)PartitionImageName, PartitionImageOffset, PartitionImagSize,(HI_U8*)pCAImageArea, HI_NULL),ret);
    }

#ifdef SPARSE_EXT4
    if (1 == IsSparseFlag)
    {
        /* Get authenticate data begin in which sparse chunk */
        u32CurChunkNum = *(pSignChunkInfo + pSignImageInfo->u32CurrentsectionID);
        u32NextChunkNum = *(pSignChunkInfo + pSignImageInfo->u32CurrentsectionID + 1);
        u32ChunkNum = u32NextChunkNum - u32CurChunkNum;

        tmpChunkHead = (sign_chunk_header_t *)(pChunkHead + u32CurChunkNum);
        if (tmpChunkHead->num != u32CurChunkNum)
        {
            HI_ERR_CA("Get sparse ext4 info error!\n");
            return HI_FAILURE;
        }

        /* set the data of CHUNK_TYPE_DONT_CARE to zero */
        if (0 == u32ChunkNum)
        {
            if (tmpChunkHead->chunk_type == CHUNK_TYPE_DONT_CARE)
            {
                memset(pCAImageArea, 0, pSignImageInfo->u32SignedDataLength);
            }
        }
        else
        {
            if (tmpChunkHead->chunk_type == CHUNK_TYPE_DONT_CARE)
                u32MergeDataOffset = 0;
            else
                u32MergeDataOffset = tmpChunkHead->offset + tmpChunkHead->chunk_sz * pSparseHead->blk_sz - pSignImageInfo->u32CurrentsectionID * pSignImageInfo->u32SignedDataLength;
            u32MergeDataLen = 0;
            for (index = 0; index <= u32ChunkNum; index++)
            {
                if (tmpChunkHead->chunk_type == CHUNK_TYPE_DONT_CARE)
                {
                    if (0 == index)
                        u32MergeDataLen = tmpChunkHead->offset + tmpChunkHead->chunk_sz * pSparseHead->blk_sz - pSignImageInfo->u32CurrentsectionID * pSignImageInfo->u32SignedDataLength;
                    else if (u32ChunkNum == index)
                        u32MergeDataLen = pSignImageInfo->u32SignedDataLength - u32MergeDataOffset;
                    else
                        u32MergeDataLen = tmpChunkHead->offset + tmpChunkHead->chunk_sz * pSparseHead->blk_sz - pSignImageInfo->u32CurrentsectionID * pSignImageInfo->u32SignedDataLength - u32MergeDataOffset;
                    memset((HI_U8 *)(pCAImageArea + u32MergeDataOffset), 0, u32MergeDataLen);
                    u32MergeDataOffset += u32MergeDataLen;
                }
                else
                {
                    if (0 != index)
                        u32MergeDataOffset +=  tmpChunkHead->chunk_sz * pSparseHead->blk_sz;
                }
                tmpChunkHead++;
            }
        }
    }
#endif

    if(pSignImageInfo->u32IsEncrypted == HI_TRUE)
    {
        HI_INFO_CA("Need to Decrypt image \n");
        CA_DataDecrypt(pCAImageArea, PartitionImagSize, pCAImageArea);
    }
    //We can check SHA value!
    if(pSignImageInfo->u32HashType == Algoritm_Hash1)
    {
        dcache_enable(g_DDRSize);
        sha1((HI_U8 *)pCAImageArea, pSignImageInfo->u32SignedDataLength, TmpSha);
        dcache_disable();
        for(index = 0; index < 5; index ++)
        {
            if(TmpSha[index] != pSignImageInfo->u8Sha[index])
            {
                HI_ERR_CA("error index:%d sha:0x%2x != 0x%2x\n", index, TmpSha[index], pSignImageInfo->u8Sha[index]);
                return HI_FAILURE;
            }
        }
    }
    else
    {
        HI_INFO_CA("begin sha2, length:%d\n", pSignImageInfo->u32SignedDataLength);

        g_DDRSize = 512*1024*1024;
        dcache_enable(g_DDRSize);
        sha2((HI_U8 *)pCAImageArea, pSignImageInfo->u32SignedDataLength, TmpSha, 0);
        dcache_disable();

        for(index = 0; index < 32; index ++)
        {
            if(TmpSha[index] != pSignImageInfo->u8Sha[index])
            {
                HI_ERR_CA("error index:%d sha:0x%2x != 0x%2x\n", index, TmpSha[index], pSignImageInfo->u8Sha[index]);
                return HI_FAILURE;
            }
        }
    }
    HI_INFO_CA("Sha check ok\n");
    //Now, We got clean image data!
    pSignParam->pImageData = pCAImageArea;
    pSignParam->ImageDataLength = pSignImageInfo->u32SignedDataLength;
    pSignParam->pCASignTail = pSignImageInfo;
    if(pu32ImageAddress != NULL)
    {
        *pu32ImageAddress += pSignImageInfo->u32SignedDataLength;
    }
    return 0;
}

HI_S32 HI_CA_CommonVerify_Signature(HI_U8 *PartitionImagenName, HI_U8 *PartitionSignName, HI_U32 offset, HI_U32 *pu32ImageAddress)
{
    HI_S32 ret = 0, index = 0;
    HI_U32 u32TotalSection = 0;
    HI_CASignImageTail_S SignImageInfo;
    HI_CA_NEW_SignParam_S SignParam;

    //Verify Partition
    CA_CheckPointer(PartitionImagenName);
    CA_CheckPointer(PartitionSignName);

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);

    CA_ASSERT(CA_Common_Search_SignHeader(PartitionSignName, &SignImageInfo, &offset),ret);
    CA_ASSERT(Debug_CASignImageTail_Value(&SignImageInfo),ret);

    u32TotalSection = SignImageInfo.u32TotalsectionID;
    if(u32TotalSection >= 1)
    {
        for(index = 0; index < u32TotalSection; index++)
        {
            CA_ASSERT(CA_Common_Search_SignHeader(PartitionSignName, &SignImageInfo, &offset),ret);
            CA_ASSERT(Debug_CASignImageTail_Value(&SignImageInfo),ret);

            //Get image data
            CA_ASSERT(CA_Common_GetImageData(PartitionImagenName, &SignImageInfo, &SignParam, pu32ImageAddress),ret);
            //Verify image signature
            CA_ASSERT(HI_CA_ImgAuthenticate((HI_U32)(SignParam.pImageData), SignParam.ImageDataLength, SignParam.pCASignTail->u8Signature),ret);

            offset += NAND_PAGE_SIZE;
        }
    }
    else
    {
        HI_ERR_CA("Err u32TotalsectionID = %d\n", u32TotalSection);
    }

    CA_AuthenticateDeInit();
    HI_INFO_CA("\nAuthenticate %s image is ok\n\n", PartitionImagenName);

    return 0;
}

HI_S32 HI_CA_CommonVerify_Section_Signature(HI_U8 *PartitionImagenName, HI_U8 *PartitionSignName, HI_U32 offset, HI_U32 *pu32ImageAddress)
{
    HI_S32 ret = 0, index = 0;
    HI_U32 u32TotalSection = 0;
    HI_U32 u32random;
    HI_CASignImageTail_S SignImageInfo;
    HI_CA_NEW_SignParam_S SignParam;

    //Verify Partition
    CA_CheckPointer(PartitionImagenName);
    CA_CheckPointer(PartitionSignName);

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);

    if ((0xFF == IsSparseFlag) &&
        (!memcmp(PartitionSignName, SYSTEM_SIGN_PARTITION, strlen(SYSTEM_SIGN_PARTITION))) &&
        (!memcmp(PartitionImagenName, SYSTEM_IMG_PARTITION, strlen(SYSTEM_IMG_PARTITION)))
        )
    {
        IsSparseFlag = 0;
    }
    CA_ASSERT(CA_Common_Search_SignHeader(PartitionSignName, &SignImageInfo, &offset),ret);
    CA_ASSERT(Debug_CASignImageTail_Value(&SignImageInfo),ret);

    u32TotalSection = SignImageInfo.u32TotalsectionID;
    ca_srandom(READ_TIMER2 & 0xFFFFFFFF);
    u32random = ca_random() % 10 + 1;

    if(u32TotalSection >= 1)
    {
        for(index = 0; index < u32TotalSection;)
        {
            CA_ASSERT(CA_Common_Search_SignHeader(PartitionSignName, &SignImageInfo, &offset),ret);
            CA_ASSERT(Debug_CASignImageTail_Value(&SignImageInfo),ret);

            //Get image data
            CA_ASSERT(CA_Common_GetImageData(PartitionImagenName, &SignImageInfo, &SignParam, pu32ImageAddress),ret);
            //Verify image signature
            CA_ASSERT(HI_CA_ImgAuthenticate((HI_U32)(SignParam.pImageData), SignParam.ImageDataLength, SignParam.pCASignTail->u8Signature),ret);
            if (0 == index)
            {
                index = u32random;
            }
            else
            {
                index = index + 10;
            }
            offset = NAND_PAGE_SIZE * index;
        }
    }
    else
    {
        HI_ERR_CA("Err u32TotalsectionID = %d\n", u32TotalSection);
    }

    HI_INFO_CA("Check Authenitication is ok\n");
    CA_AuthenticateDeInit();
    return 0;
}


HI_S32 HI_CA_CommonVerify_EncryptImage(HI_U8 *PartitionImagenName, HI_U8 *PartitionSignName, HI_U32 offset)
{
    HI_S32 ret = 0;
    HI_U32 EncryptLength = 0;
    HI_CASignImageTail_S SignImageInfo;
    HI_CA_NEW_SignParam_S SignParam;
    HI_U32 PartionSize;
    HI_U32 PageSize;
    HI_U32 BlockSize;
    HI_U32 OobSize;

    //Verify Partition
    CA_CheckPointer(PartitionImagenName);
    CA_CheckPointer(PartitionSignName);

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);

    CA_ASSERT(CA_Common_Search_SignHeader(PartitionSignName, &SignImageInfo, &offset),ret);
    Debug_CASignImageTail_Value(&SignImageInfo);
    //Get image data
    CA_ASSERT(CA_Common_GetImageData(PartitionImagenName, &SignImageInfo, &SignParam, NULL),ret);
    //Verify image signature
    CA_ASSERT(HI_CA_ImgAuthenticate((HI_U32)SignParam.pImageData, SignParam.ImageDataLength, SignParam.pCASignTail->u8Signature),ret);
    HI_INFO_CA("Check Authenitication is ok\n");

    if(SignImageInfo.u32IsNeedEncrypt == 0)
    {
        HI_ERR_CA("Do not need to encrypt image\n");
        return 0;
    }
    else if(SignImageInfo.u32IsEncrypted == 1)
    {
        HI_ERR_CA("Image pariton is already encrypted\n");
        return 0;
    }

    if(strncmp((const char *)PartitionImagenName, (const char *)PartitionSignName, MAX_STRLEN(PartitionImagenName, PartitionSignName)) == 0)
    {
        HI_ERR_CA("Error Image Partition and SignImagePartion are the same(%s)\n", PartitionSignName);
        return -1;
    }
    if(SignImageInfo.u32IsYaffsImage != 0)
    {
        HI_ERR_CA("Error Yaffs Image can not be encrypted\n");
        return -1;
    }

    //User R2R to encrypt Image Data Partition
    CA_ASSERT(CA_flash_getinfo((HI_CHAR *)PartitionImagenName, &PartionSize, &BlockSize, &PageSize, &OobSize),ret);
    HI_INFO_CA("NAND BlockSize:0x%x, PageSize:0x%x, OobSize:0x%x\n", BlockSize, PageSize, OobSize);
    EncryptLength = (SignParam.ImageDataLength + BlockSize - 1) & (~(BlockSize -1));

    CA_ASSERT(CA_DataEncrypt((HI_U8*)SignParam.pImageData, EncryptLength, (HI_U8*)SignParam.pImageData),ret);

    //write data back to flash
    CA_ASSERT(CA_flash_write((HI_CHAR *)PartitionImagenName, 0x00, EncryptLength, (HI_U8*)SignParam.pImageData),ret);
    //Set SignHead Encrypt flag to true
    SignImageInfo.u32IsEncrypted = 1;
    SignImageInfo.CRC32 = DVB_CRC32((HI_U8*)(&SignImageInfo), (sizeof(HI_CASignImageTail_S) - 4));
    HI_INFO_CA("new crc32:%x\n", SignImageInfo.CRC32);
    //write data back to flash
    CA_ASSERT(CA_flash_write((HI_CHAR *)PartitionSignName, 0x00, BlockSize, (HI_U8*)(&SignImageInfo)),ret);

    CA_AuthenticateDeInit();
    return 0;
}


HI_S32 HI_CA_CommonVerify_BootPara(HI_U32 u32ParaPartionAddr, HI_U32 u32ParaParitonSize)
{
    HI_S32 ret = 0, index;
    HI_CASignImageTail_S SignImageInfo;
    HI_U8 *ParaBase, *CAImageArea;
    HI_U32 IsFoundFlag = HI_FALSE;
    HI_U8 TmpSha[32];

    CA_ASSERT(CA_AuthenticateInit(HI_CA_KEY_GROUP_1),ret);

    ParaBase = (HI_U8*)IMG_VERIFY_ADDRESS;

    //Read out flash data
    CA_ASSERT(CA_flash_read_addr((HI_U64)u32ParaPartionAddr, u32ParaParitonSize, ParaBase, HI_NULL),ret);
    //Get Signature of bottargrs pariton!
    for(index = 0; index < u32ParaParitonSize/NAND_PAGE_SIZE; index ++)
    {
        CAImageArea = ParaBase + index * NAND_PAGE_SIZE;
        memcpy(&SignImageInfo, CAImageArea, sizeof(HI_CASignImageTail_S));
        if(!memcmp(SignImageInfo.u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(SignImageInfo.u8MagicNumber)))
        {
            unsigned int CRC32Value;
            HI_INFO_CA("Sign Header found!\n");
            IsFoundFlag = HI_TRUE;
            //Clacluate CRC32!
            CRC32Value = DVB_CRC32((unsigned char *)&SignImageInfo, (sizeof(HI_CASignImageTail_S) - 4));
            if(CRC32Value == SignImageInfo.CRC32)
            {
                HI_INFO_CA("CRC32 check ok\n");
            }
            else
            {
                HI_ERR_CA("CRC32Value:%x != SignImageInfo.CRC32:%x\n", CRC32Value, SignImageInfo.CRC32);
                return HI_FAILURE;
            }
            break;
        }
        else
        {
            continue;
        }
    }
    if(IsFoundFlag != HI_TRUE)
    {
        HI_INFO_CA("Sign Header is not correct!\n");
        return HI_FAILURE;
    }
    //We can check SHA value!
    if(SignImageInfo.u32HashType == Algoritm_Hash1)
    {
        dcache_enable(g_DDRSize);
        sha1((HI_U8 *)ParaBase, SignImageInfo.u32SignedDataLength, TmpSha);
        dcache_disable();
        for(index = 0; index < 5; index ++)
        {
            if(TmpSha[index] != SignImageInfo.u8Sha[index])
            {
                HI_ERR_CA("error index:%d sha:0x%2x != 0x%2x\n", index, TmpSha[index], SignImageInfo.u8Sha[index]);
                return HI_FAILURE;
            }
        }
    }
    else
    {
        HI_INFO_CA("begin sha2, length:%d\n", SignImageInfo.u32SignedDataLength);

        dcache_enable(g_DDRSize);
        sha2((HI_U8 *)ParaBase, SignImageInfo.u32SignedDataLength, TmpSha, 0);
        dcache_disable();

        for(index = 0; index < 32; index ++)
        {
            if(TmpSha[index] != SignImageInfo.u8Sha[index])
            {
                HI_ERR_CA("error index:%d sha:0x%2x != 0x%2x\n", index, TmpSha[index], SignImageInfo.u8Sha[index]);
                return HI_FAILURE;
            }
        }
    }
    HI_INFO_CA("Sha check ok\n");
    CA_ASSERT(Debug_CASignImageTail_Value(&SignImageInfo),ret);

    //Verify image signature
    CA_ASSERT(HI_CA_ImgAuthenticate((HI_U32)ParaBase, SignImageInfo.u32SignedDataLength, SignImageInfo.u8Signature),ret);

    HI_INFO_CA("\nAuthenticate bootargs is ok\n\n");

    CA_AuthenticateDeInit();
    return ret;
}

HI_S32 HI_CA_GetExternRsaKey(HI_U8 *PartitionImagenName)
{
    HI_S32 ret = 0;
    HI_S32 index = 0;
    HI_U8 buffer[NAND_PAGE_SIZE] = {0};
    HI_CHIP_TYPE_E enChipType;
    HI_CHIP_VERSION_E u32ChipVersion = 0;
    HI_FLASH_TYPE_E EnvFlashType;
    HI_U32 u32Offset = 0;
    
    HI_DRV_SYS_GetChipVersion( &enChipType, &u32ChipVersion );
    
    if(NULL != PartitionImagenName)
    {
        CA_ASSERT(CA_flash_read((HI_CHAR *)PartitionImagenName, 0, NAND_PAGE_SIZE, buffer, HI_NULL), ret);
    }
    else
    {
        CA_ASSERT(CA_flash_read_addr(0ULL, NAND_PAGE_SIZE, buffer, HI_NULL), ret);
    }

    EnvFlashType = CA_get_env_flash_type();
    if (EnvFlashType == HI_FLASH_TYPE_SPI_0 || EnvFlashType == HI_FLASH_TYPE_NAND_0)
    {
        u32Offset = 0;
    }
    else if (EnvFlashType == HI_FLASH_TYPE_EMMC_0)
    {
#if defined(CHIP_TYPE_hi3719mv100)
        if ((HI_CHIP_TYPE_HI3719M == enChipType) && (HI_CHIP_VERSION_V100 == u32ChipVersion))
        {
            u32Offset = 0;
        }
        else    
#endif        
        {
            u32Offset = 512;
        }
    }
    else
    {
        HI_ERR_CA("\nInvalid boot flash type %d!\n", EnvFlashType);
        return HI_FAILURE;
    }
    
    for (index=0; index<256; index++)
    {
       g_customer_rsa_public_key_N[index] = buffer[u32Offset+index];
    }
    g_customer_rsa_public_key_E = (buffer[u32Offset+508] << 24) + (buffer[u32Offset+509] << 16) + (buffer[u32Offset+510] << 8) + buffer[u32Offset+511];

//z00213260, for test

    //printf_hex(g_customer_rsa_public_key_N, sizeof(g_customer_rsa_public_key_N));

    //printf("RSA Exponent:\n");
    //printf_hex((HI_U8 *)&g_customer_rsa_public_key_E, sizeof(g_customer_rsa_public_key_E));

    //HI_SIMPLEINFO_CA("\nget extern rsa key success!\n");

    return 0;
}

extern const char* Loader_Check(void);
extern HI_S32 Loader_Main();

#define PARTITION_NAME_KERNEL       "kernel"
#define PARTITION_NAME_KERNEL_SIG   "kernel_sign"
#define PARTITION_NAME_LOADER       "loader"
#define PARTITION_NAME_LOADER_SIG   "loader_sign"
#define PARTITION_NAME_ROOTFS       "rootfs"
#define PARTITION_NAME_ROOTFS_SIG   "rootfs_sign"

HI_S32 HI_CA_Common_Authenticate(HI_VOID)
{
    HI_S32 ret = 0;
	const char *pRet = NULL;
    HI_BOOL bSecBootEn = HI_FALSE;
	HI_UNF_ADVCA_FLASH_TYPE_E enCAFlashType = HI_UNF_ADVCA_FLASH_TYPE_BUTT;
    char *bootargs = NULL;
    char *pszTemp = NULL;
    HI_U32 u32ImageAddress = IMG_VERIFY_ADDRESS;
    HI_U32 u32PartitionAddress = u32ImageAddress;
    HI_CHAR cmdStr[64] = {0};
    HI_U32 u32PartitionSize = 0;
    
    #ifdef CFG_COMMON_SIG_OFFSET_KERNEL
    HI_U32 u32SigOffsetKernel = CFG_COMMON_SIG_OFFSET_KERNEL;
    #else
    HI_U32 u32SigOffsetKernel = 0;
    #endif

    #ifdef CFG_COMMON_SIG_OFFSET_LOADER
    HI_U32 u32SigOffsetLoader = CFG_COMMON_SIG_OFFSET_LOADER;
    #else
    HI_U32 u32SigOffsetLoader = 0;
    #endif

    #ifdef CFG_COMMON_SIG_OFFSET_ROOTFS
    HI_U32 u32SigOffsetFS = CFG_COMMON_SIG_OFFSET_ROOTFS;
    #else
    HI_U32 u32SigOffsetFS = 0;
    #endif

	#ifndef HI_ADVCA_VERIFY_ENABLE
    HI_INFO_CA("Boot verify function is not enabled, display logo!\n");
    /* show logo */
    Logo_Main(HI_NULL);
    /**just protect the logo reserve memory*/
    HI_PDM_SetTagData();    
    return 0;
	#endif

	CA_ASSERT(HI_UNF_ADVCA_Init(), ret);
	CA_ASSERT(HI_UNF_ADVCA_GetSecBootStat(&bSecBootEn, &enCAFlashType), ret);	/* parameter enCAFlashType is not used in this case */

    HI_INFO_CA("bSecBootEn=%d, enCAFlashType=%d!\n", bSecBootEn, enCAFlashType);

	#ifdef HI_ADVCA_USE_EXT1_RSA_KEY
    ret = HI_CA_GetExternRsaKey(NULL);
    if (ret == -1)
    {
        HI_INFO_CA("Get extern rsa key failed, use default rsa key!\n");
    }
	#endif

    /*verify bootargs*/
    HI_INFO_CA("g_EnvFlashAddr:0x%x, g_EnvFlashPartionSize:0x%x\n", g_EnvFlashAddr, g_EnvFlashPartionSize);
    ret = HI_CA_CommonVerify_BootPara(g_EnvFlashAddr, g_EnvFlashPartionSize);
    if (ret == -1)
    {
        HI_ERR_CA("Verify bootargs failed!\n");
        goto __ErrorExit;
    }
    
    bootargs = getenv("bootargs");
    if(NULL == bootargs)
    {
        HI_ERR_CA("Can not find bootargs!\n");
        goto __ErrorExit;
    }
    HI_INFO_CA("bootargs=%s\n", bootargs);

    /*display logo*/
    HI_INFO_CA("Display logo!\n");
    /* show logo */
    Logo_Main(HI_NULL);
    /**just protect the logo reserve memory*/
    HI_PDM_SetTagData();    

#ifdef HI_LOADER_SUPPORT
    /*The stbinfo is need to check or not, is decided by customer*/

    /*verify loader*/
#ifdef HI_LOADER_APPLOADER
    u32ImageAddress = IMG_VERIFY_ADDRESS;
    u32PartitionAddress = u32ImageAddress;
    pszTemp = strstr(bootargs, PARTITION_NAME_LOADER_SIG);
    if(pszTemp == NULL)
    {
        HI_INFO_CA("Can not find %s partition!\n", PARTITION_NAME_LOADER_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_LOADER,PARTITION_NAME_LOADER,u32SigOffsetLoader,&u32ImageAddress);
    }
    else
    {
        HI_INFO_CA("Find %s partition!\n", PARTITION_NAME_LOADER_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_LOADER,PARTITION_NAME_LOADER_SIG,0,&u32ImageAddress);
    }
    
    if (ret == -1)
    {
        HI_ERR_CA("Verify loader failed!\n");
        goto __ErrorExit;
    }
#endif  //HI_LOADER_APPLOADER

    pRet = Loader_Check();
    if ((HI_NULL != pRet) && (0 == strncmp(pRet, "loader", strlen("loader"))))    
    {
#ifdef HI_LOADER_APPLOADER  
        memset(cmdStr, 0, sizeof(cmdStr));
        snprintf(cmdStr, sizeof(cmdStr), "bootm 0x%x", u32PartitionAddress);
        return run_command(cmdStr, 0);
#else
        return Loader_Main();
#endif  //HI_LOADER_APPLOADER
    }
#endif  //HI_LOADER_SUPPORT

    /*verify kernel*/
    u32ImageAddress = IMG_VERIFY_ADDRESS;
    u32PartitionAddress = u32ImageAddress;
    pszTemp = strstr(bootargs, PARTITION_NAME_KERNEL_SIG);
    if(pszTemp == NULL)
    {
        HI_INFO_CA("Can not find %s partition!\n", PARTITION_NAME_KERNEL_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_KERNEL,PARTITION_NAME_KERNEL,u32SigOffsetKernel,&u32ImageAddress);
    }
    else
    {
        HI_INFO_CA("Find %s partition!\n", PARTITION_NAME_KERNEL_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_KERNEL,PARTITION_NAME_KERNEL_SIG,0,&u32ImageAddress);
    }
    if (ret == -1)
    {
        HI_ERR_CA("Verify kernel failed!\n");
        goto __ErrorExit;
    }
    
    /*verify rootfs*/
    ret = CA_flash_GetSize(PARTITION_NAME_KERNEL, &u32PartitionSize);
    if(ret != 0)
    {
        HI_ERR_CA("Get %s partition size failed!\n", PARTITION_NAME_KERNEL);
        goto __ErrorExit;
    }
    
    u32ImageAddress = u32PartitionAddress + u32PartitionSize;    //rootfs verify address, the u32ImageAddress will be changed after verify
    u32PartitionAddress = u32ImageAddress;
    HI_INFO_CA("%s image verify address is 0x%x!\n", PARTITION_NAME_ROOTFS,u32ImageAddress);

    pszTemp = strstr(bootargs, PARTITION_NAME_ROOTFS_SIG);
    if(pszTemp == NULL)
    {
        HI_INFO_CA("Can not find %s partition!\n", PARTITION_NAME_ROOTFS_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_ROOTFS,PARTITION_NAME_ROOTFS,u32SigOffsetFS,&u32ImageAddress);
    }
    else
    {
        HI_INFO_CA("Find %s partition!\n", PARTITION_NAME_ROOTFS_SIG);
        ret = HI_CA_CommonVerify_Signature(PARTITION_NAME_ROOTFS, PARTITION_NAME_ROOTFS_SIG,0,&u32ImageAddress);
    }
    if (ret == -1)
    {
        HI_ERR_CA("Verify rootfs failed!\n");
        goto __ErrorExit;
    }
    memset(cmdStr, 0, sizeof(cmdStr));
    snprintf(cmdStr, sizeof(cmdStr), "bootm 0x%x", IMG_VERIFY_ADDRESS);  //kernel image address
    return run_command(cmdStr, 0);

__ErrorExit:
    if (bSecBootEn == HI_TRUE)
    {
        CA_Reset();
    }
    return -1;
}



HI_S32 CA_LOADER_DecryptImage(HI_U8 *pu8Buffer, HI_U32 u32Len, HI_CA_KEY_GROUP_E enKeyType)
{
#ifndef HI_ADVCA_TYPE_VERIMATRIX
#ifndef HI_ADVCA_TYPE_NAGRA
    HI_S32 s32Ret = HI_SUCCESS;

    if ( (NULL == pu8Buffer) || (0 == u32Len) || (0xFFFFFFFF == u32Len))
    {
        HI_ERR_CA("Invalid parameter input.\n");
        return HI_FAILURE;
    }
    s32Ret = CA_AuthenticateInit(enKeyType);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("CA_AuthenticateInit failed\n");
        return HI_FAILURE;
    }
    
    s32Ret = CA_DataDecrypt(pu8Buffer, u32Len, pu8Buffer);
    if ( HI_SUCCESS != s32Ret )
    {
        CA_AuthenticateDeInit();
        HI_ERR_CA("Decrypt image failed.\n");
        return HI_FAILURE;
    }

    CA_AuthenticateDeInit();
#else
    HI_INFO_CA("No need to decrypt image for nagra.\n");
#endif
#else
    HI_INFO_CA("No need to decrypt image for verimatrix.\n");
#endif


    return HI_SUCCESS;
}

HI_S32 CA_LOADER_EncryptImage(HI_U8 *pu8Buffer, HI_U32 u32Len, HI_CA_KEY_GROUP_E enKeyType)
{ 
#ifndef HI_ADVCA_TYPE_VERIMATRIX
#ifndef HI_ADVCA_TYPE_NAGRA
    HI_S32 s32Ret = HI_SUCCESS;

    if ( (NULL == pu8Buffer) || (0 == u32Len) || (0xFFFFFFFF == u32Len))
    {
        HI_ERR_CA("Invalid parameter input.\n");
        return HI_FAILURE;
    }

    s32Ret = CA_AuthenticateInit(enKeyType);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA("CA_AuthenticateInit failed\n");
        return HI_FAILURE;
    }

    s32Ret = CA_DataEncrypt(pu8Buffer, u32Len, pu8Buffer);
    if ( HI_SUCCESS != s32Ret )
    {
        CA_AuthenticateDeInit();        
        HI_ERR_CA("Encrypt image failed.\n");
        return HI_FAILURE;
    }

    CA_AuthenticateDeInit();

#else
    HI_INFO_CA("No need to encrypt image for nagra.\n");
#endif
#else

    HI_INFO_CA("No need to encrypt image for verimatrix.\n");
#endif
    
    return HI_SUCCESS;
}

HI_S32 CA_Loader_CommonVerify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32Index = 0;
    unsigned int CRC32Value;
    HI_U32 PartitionImagSize = 0;
    HI_CASignImageTail_S CASignTail;
    
    CA_CheckPointer(pu8StartVirAddr);
    
    if(u32Addrlength % NAND_PAGE_SIZE != 0)
    {
        HI_ERR_CA("Error, Authenticate data length:0x%x is not Aligned by %x\n", u32Addrlength, NAND_PAGE_SIZE);
        return HI_FAILURE;
    }
    if(u32Addrlength <= NAND_PAGE_SIZE)
    {
        HI_ERR_CA("Error, Authenticate data length:0x%x is too small, must > 0x%x\n", u32Addrlength, NAND_PAGE_SIZE);
        return HI_FAILURE;
    }
    /* Get CASignTail from pu8StartVirAddr! */
    memcpy(&CASignTail, (HI_VOID *)&(pu8StartVirAddr[u32Addrlength - NAND_PAGE_SIZE]), sizeof(HI_CASignImageTail_S));
    
    if(memcmp(CASignTail.u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(CASignTail.u8MagicNumber)))
    {
        HI_ERR_CA("magic number error,get img info failed\n");
        for(u32Index = 0; u32Index < sizeof(CASignTail.u8MagicNumber); u32Index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", CASignTail.u8MagicNumber[u32Index]);
        }
        return HI_FAILURE;
    }
    HI_SIMPLEINFO_CA("Sign Header found!\n");
    /* Clacluate CRC32! */
    CRC32Value = DVB_CRC32((HI_U8 *)&CASignTail, (sizeof(HI_CASignImageTail_S) - 4));
    if(CRC32Value == CASignTail.CRC32)
    {
        HI_SIMPLEINFO_CA("CRC32 check ok\n");
    }
    else
    {
        HI_ERR_CA("CRC32Value:0x%x != CASignTail.CRC32:0x%x\n", CRC32Value, CASignTail.CRC32);
        return HI_FAILURE;
    }
        
    PartitionImagSize = (CASignTail.u32SignedDataLength + NAND_PAGE_SIZE - 1) / NAND_PAGE_SIZE * NAND_PAGE_SIZE;
    if((PartitionImagSize + NAND_PAGE_SIZE) < u32Addrlength)
    {
        HI_ERR_CA("(PartitionImagSize + FAKE_BLOCK_SIZE):0x%x < u32Addrlength:0x%x\n", u32Addrlength, (PartitionImagSize + NAND_PAGE_SIZE));
        return HI_FAILURE;
    }
    
    if(CASignTail.u32IsNeedEncrypt == HI_TRUE)
    {
        HI_ERR_CA("Warrning:Encrypt requirement do not support, continue...\n");
        HI_ERR_CA("If you need to ecnrypt image, please select another mode:Signature in the head of Image\n");
    }
    if(CASignTail.u32IsYaffsImage == HI_TRUE)
    {
        HI_SIMPLEINFO_CA("Warrning:Yaffs FileSystem, At present, we do not support this requirement, continue ...\n");
    }
    
    ret = CA_CommonVerify_AuthenticateEx(pu8StartVirAddr, CASignTail.u32SignedDataLength, &CASignTail);
    
    return ret;
}

HI_S32 CA_CommonVerify_AuthenticateEx(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength, HI_CASignImageTail_S *pstSignImageInfo)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32Index;
    HI_U8  TmpSha[32];
    
    CA_CheckPointer(pu8StartVirAddr);
    CA_CheckPointer(pstSignImageInfo);
        
    if(memcmp(pstSignImageInfo->u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(pstSignImageInfo->u8MagicNumber)))
    {
        HI_ERR_CA("magic number error,get img info failed\n");
        return HI_FAILURE;
    }
    /* We can check SHA value! */
    if(pstSignImageInfo->u32HashType == AUTH_SHA1)
    {
        memset(TmpSha, 0, 32);
        sha1(pu8StartVirAddr, pstSignImageInfo->u32SignedDataLength, TmpSha);
        for(u32Index = 0; u32Index < 5; u32Index ++)
        {
            if(TmpSha[u32Index] != pstSignImageInfo->u8Sha[u32Index])
            {
                HI_ERR_CA("error u32Index:%d sha:0x%2x != 0x%2x\n", u32Index, TmpSha[u32Index], pstSignImageInfo->u8Sha[u32Index]);
                return HI_FAILURE;
            }
        }
    }
    else
    {
        HI_SIMPLEINFO_CA("begin sha2, length:%d\n", pstSignImageInfo->u32SignedDataLength);
        
        memset(TmpSha, 0, 32);
        sha2(pu8StartVirAddr, pstSignImageInfo->u32SignedDataLength, TmpSha, 0);
        
        for(u32Index = 0; u32Index < 32; u32Index ++)
        {
            if(TmpSha[u32Index] != pstSignImageInfo->u8Sha[u32Index])
            {
                HI_ERR_CA("error u32Index:%d sha:0x%2x != 0x%2x\n", u32Index, TmpSha[u32Index], pstSignImageInfo->u8Sha[u32Index]);
                return HI_FAILURE;
            }
        }
    }
    HI_SIMPLEINFO_CA("Sha check ok\n");

    /* Verify image signature */
    CA_ASSERT(HI_CA_ImgAuthenticate(pu8StartVirAddr, pstSignImageInfo->u32SignedDataLength, pstSignImageInfo->u8Signature), ret);
    HI_SIMPLEINFO_CA("Check Authenitication is ok\n");
        
    return ret;
}

static HI_S32 CA_Loader_SpecialVerify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 *pu32Addrlength)
{   
    HI_S32 ret = 0;
    HI_CAImgHead_S *ImgInfo = NULL;
    HI_U8 u8Signature[SIGNATURE_LEN] = {0};
    
    CA_CheckPointer(pu8StartVirAddr);
    
    ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;
    
    if(memcmp(ImgInfo->u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->u8MagicNumber)))
    {
        HI_ERR_CA("magic number error,get img info failed\n");
        return HI_FAILURE;
    }

    memcpy(u8Signature, pu8StartVirAddr + ImgInfo->u32SignatureOffset, SIGNATURE_LEN);
    
    CA_ASSERT(HI_CA_ImgAuthenticate(pu8StartVirAddr, ImgInfo->u32SignedImageLen, u8Signature), ret);
    if(pu8StartVirAddr)
    {
        *pu32Addrlength = pu8StartVirAddr + ImgInfo->u32CodeOffset ;
    }

    HI_SIMPLEINFO_CA("Check Authenitication is ok\n");

    return HI_SUCCESS;
}

static HI_S32 CA_Loader_Verify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength)
{
    HI_CASignImageTail_S CASignTail;
    HI_CAImgHead_S *ImgInfo = NULL;
    HI_U32 u32CodeOffset = 0;
    CA_CheckPointer(pu8StartVirAddr);

    if(u32Addrlength % NAND_PAGE_SIZE != 0)
    {
        HI_ERR_CA("Error, Authenticate data length:0x%x is not Aligned by %x\n", u32Addrlength, NAND_PAGE_SIZE);
        return HI_FAILURE;
    }
    if(u32Addrlength <= NAND_PAGE_SIZE)
    {
        HI_ERR_CA("Error, Authenticate data length:0x%x is too small, must > 0x%x\n", u32Addrlength, NAND_PAGE_SIZE);
        return HI_FAILURE;
    }

    /* Get CASignTail from pu8StartVirAddr! */
    
    memcpy(&CASignTail, (HI_VOID *)&(pu8StartVirAddr[u32Addrlength - NAND_PAGE_SIZE]), sizeof(HI_CASignImageTail_S));

    
    if(!memcmp(CASignTail.u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(CASignTail.u8MagicNumber)))
    {
        return CA_Loader_CommonVerify_Authenticate(pu8StartVirAddr, u32Addrlength);

    }
    else
    {
        ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;

        if(!memcmp(ImgInfo->u8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->u8MagicNumber)))
        {
            return CA_Loader_SpecialVerify_Authenticate(pu8StartVirAddr, &u32CodeOffset);
        }
        else
        {
            HI_ERR_CA("Error, None supported authentication type!\n");
            return HI_FAILURE;
        }
    }
    
}

HI_S32 CA_LOADER_Authenticate(HI_U8 *pu8Buffer, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if ( (NULL == pu8Buffer) || (u32Len <= 0) )
    {
        HI_ERR_CA("Invalid parameter input.\n");
        return HI_FAILURE;
    }

    s32Ret = CA_AuthenticateInit(HI_CA_KEY_GROUP_1);
    if (HI_SUCCESS != s32Ret)
    {
        CA_AuthenticateDeInit();
        HI_ERR_CA("CA_AuthenticateInit failed\n");
        return HI_FAILURE;
    }

    s32Ret = CA_Loader_Verify_Authenticate(pu8Buffer, u32Len);
    if ( HI_SUCCESS != s32Ret )
    {
        CA_AuthenticateDeInit();        
        HI_ERR_CA("ssd authenticate failed.\n");
        return HI_FAILURE;
    }

    CA_AuthenticateDeInit();
    return HI_SUCCESS;
}

#else //#ifndef HI_ADVCA_TYPE_VERIMATRIX


#ifdef HI_ADVCA_VMX_3RD_SIGN
static int g_vmx_reboot_flag = 0;
#endif

#define VMX_SIG_OFFSET  (16)
#define VMX_SIG_LENGTH  (256)
#define VMX_IMG_OFFSET  (VMX_SIG_OFFSET + VMX_SIG_LENGTH)
#define VMX_HEAD_LENGTH (VMX_IMG_OFFSET)

#define VMX_VERIFY_BUFFER_ALLIGN      (0x100000)

#define KERNEL_VERIFY_ADDR_VMX  IMG_VERIFY_ADDRESS
#define LOADER_VERIFY_ADDR_VMX  IMG_VERIFY_ADDRESS
#define ROOTFS_VERIFY_ADDR_VMX  (0x81900000 - VMX_HEAD_LENGTH)


#ifdef HI_MINIBOOT_SUPPORT
extern int reboot();
#endif

HI_VOID CA_Reset(HI_VOID)
{
#ifndef HI_MINIBOOT_SUPPORT
    HI_INFO_CA(" \n");
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    while(1) { };
#else
    reboot();
#endif
}


static HI_U32 getTempBufferAddr(HI_U32 size)    
{
    HI_U32 ddrSize = 0;
    HI_U32 addr = 0;
    HI_U32 rellocSize = 0;

    rellocSize = (size + VMX_VERIFY_BUFFER_ALLIGN - 1 ) & (~ (VMX_VERIFY_BUFFER_ALLIGN - 1));
    ddrSize = get_ddr_size();

    HI_INFO_CA("getTempBufferAddr size:%x, rellocSize:%x, ddrSize:%x\n", size, rellocSize, ddrSize);
    if((0 == rellocSize)||(0 == ddrSize)||(rellocSize > ddrSize))
    {
         HI_ERR_CA("Get TempBufferAdrr error, size:%x, ddr_size:%x\n", rellocSize, ddrSize);
         return 0;
    }

    
    addr = MEM_BASE_DDR + ddrSize - rellocSize;
    HI_INFO_CA("Get TempBufferAdrr:%x\n", addr);

    return addr;    
}



static HI_S32 VMX_PrintBuffer(const HI_CHAR *string, HI_U8 *pu8Input, HI_U32 u32Length)
{

    HI_U32 i = 0;

    if ( NULL != string )
    {
        HI_SIMPLEINFO_CA("%s\n", string);
    }

    for ( i = 0 ; i < u32Length; i++ )
    {
        if( (i % 16 == 0) && (i != 0)) HI_SIMPLEINFO_CA("\n");
        HI_SIMPLEINFO_CA("%02x ", pu8Input[i]);
    }
    HI_SIMPLEINFO_CA("\n");

    return HI_SUCCESS;
}

static HI_S32 VMX_Auth_Bootargs(HI_U8 *ptr, HI_U8 *ptr_tmp, HI_U32 offset, HI_U32 size)
{
    HI_U32 image_len = 0;
    HI_U8 errorCode = 0;
    HI_S32 ret;
#ifdef HI_ADVCA_VMX_3RD_SIGN
    VMX_APPLICATION_HEADER_S stAppHeader;
#endif

#ifdef HI_ADVCA_VMX_3RD_SIGN
    memset(&stAppHeader, 0, sizeof(VMX_APPLICATION_HEADER_S));
    stAppHeader.u32ImageLen = *((HI_U32 *)ptr);
    stAppHeader.enc_ctrl.enc_flag = ptr[4]&0x1;

    HI_ERR_CA("bootargs enc flag:%d\n", stAppHeader.enc_ctrl.enc_flag);
    (void)VMX3RD_SetEncFlag(stAppHeader.enc_ctrl.enc_flag);
#endif

    image_len = *((HI_U32 *)ptr);
    
    if(0 != (image_len & 0xF))
    {
        HI_ERR_CA("failed, Invalid image_len:0x%x!\n", image_len);
        return HI_FAILURE;
    }
    HI_INFO_CA("verify bootargs parameter ptr:0x%x, image len:%x\n", ptr, image_len);
    ret = verifySignature((ptr + VMX_SIG_OFFSET),
                        (ptr + VMX_IMG_OFFSET),
                        ptr_tmp + VMX_IMG_OFFSET,
                        image_len,
                        image_len,
                        0,
                        &errorCode);


    if (1 == ret)
    {
        return HI_SUCCESS;
    }
    else if ((1 == errorCode) && (0 == ret))
    {
        HI_ERR_CA("verify bootargs errorCode: 0x%x, ret: 0x%x!!!!!!!!!\n", errorCode, ret);        
        return HI_FAILURE;
    }
    else if ((2 == errorCode) && (0 == ret))
    {

        HI_INFO_CA("verify success! burn src to flash, errorCode:0x%x\n", errorCode);

        //HI_HANDLE hFlashHandle;
        HI_Flash_InterInfo_S stFlashInfo;
        HI_U32 write_length = 0;


        write_length =  VMX_HEAD_LENGTH + image_len;

        HI_INFO_CA("Try to Write back the bootargs into Flash\n");

#ifdef HI_ADVCA_VMX_3RD_SIGN
        memcpy(ptr_tmp, ptr, VMX_IMG_OFFSET);
        ret = CA_flash_write_addr((HI_U64)offset, (HI_U64)write_length, ptr_tmp);
#else
        ret = CA_flash_write_addr((HI_U64)offset, (HI_U64)write_length, ptr);
#endif
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Burn image to flash failed! ret:0x%x, Resetting ...\n", ret);
            CA_Reset();            
            return HI_FAILURE;
        }
        else
        {
            HI_INFO_CA("\nWrite src to flash success, ret:0x%x! Resetting ...\n", ret);

#ifdef HI_ADVCA_VMX_3RD_SIGN
            HI_ERR_CA("set reboot flag to 1, return success\n");
            g_vmx_reboot_flag = 1;
            return HI_SUCCESS;
#else
            CA_Reset();
            return HI_SUCCESS;
#endif  
        }
        
    }
    else
    {
        HI_ERR_CA("VMX Not support return!!!!!!\n");
    }
    
    return HI_FAILURE;
}

static HI_S32 VMX_Auth_Partition_Image(HI_CHAR *partition_name, HI_U8 *ptr)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 image_len = 0;
    HI_U8 errorCode = 0;
    HI_U32 u32VerifyTempAddr = 0;
    HI_U8 *pu8Tmp = NULL;

#ifdef HI_ADVCA_VMX_3RD_SIGN
    VMX_APPLICATION_HEADER_S stAppHeader;
#endif

    if(NULL == partition_name || NULL == ptr)
    {
        HI_ERR_CA("failed, NULL pointer!\n");
        return HI_FAILURE;
    }
    HI_INFO_CA("VMX Verify no-boot-image name:%s\n", partition_name);

#ifdef HI_ADVCA_VMX_3RD_SIGN
    memset(&stAppHeader, 0, sizeof(VMX_APPLICATION_HEADER_S));
    stAppHeader.u32ImageLen = *((HI_U32 *)ptr);
    stAppHeader.enc_ctrl.enc_flag = ptr[4]&0x1;
    HI_INFO_CA(" no-boot-image encrypted flag:%x\n", stAppHeader.enc_ctrl.enc_flag);

    (void)VMX3RD_SetEncFlag(stAppHeader.enc_ctrl.enc_flag);
#endif
    
    image_len = *((HI_U32 *)ptr);
	VMX_PrintBuffer("image:", ptr, 32);
    HI_INFO_CA("%s image_len: 0x%08x\n", partition_name, image_len);

    if(0 != (image_len & 0xF))
    {
        HI_ERR_CA("failed, Invalid image_len:0x%x!\n", image_len);
        return HI_FAILURE;
    }

    u32VerifyTempAddr = getTempBufferAddr(image_len + VMX_HEAD_LENGTH);
    if (0 == u32VerifyTempAddr)
    {
        HI_ERR_CA("getTempBufferAddr failed \n");
        return HI_FAILURE;
    }
	pu8Tmp = (HI_U8 *)u32VerifyTempAddr;
   
    /*
        errorCode is a pointer to a value that tells the reason for not having a valid image
            1 means no valid signature found - reboot
            2 means store src part to flash and reboot after it
        return value
            0 indicates do not start the application
            1 indicates the application can be started

        There are three situations: ret=1; ret=0 and errorCode=1;  ret=0 and errorCode=2;
    */

    HI_INFO_CA("verify parameter ptr:0x%x, image len:%x\n", ptr, image_len);    
    ret = verifySignature((ptr + VMX_SIG_OFFSET),
                        (ptr + VMX_IMG_OFFSET),
                        pu8Tmp + VMX_IMG_OFFSET,
                        image_len,
                        image_len,
                        0,
                        &errorCode);


    if(1 == ret)
    {
        HI_ERR_CA("verify success! ret:0x%x, Continue ...\n", ret);
        return HI_SUCCESS;
    }
    else if((1 == errorCode) && (0 == ret))         /* Invalid signature, maybe */
    {
        HI_ERR_CA("do not start the application, reset! errorCode: 0x%x, ret: 0x%x, Resetting ...\n", errorCode, ret);
        CA_Reset();
    }
    else if((2 == errorCode) && (0 == ret))         /* Src is re-encrypted inside BL library, burn to flash */
    {
        HI_ERR_CA("verify success! burn src to flash, errorCode:0x%x\n", errorCode);

        HI_U32 PartionSize = 0;
        HI_U32 BlockSize = 0;
        HI_U32 PageSize = 0;
        HI_U32 OobSize = 0;
        HI_U32 write_length = 0;

        ret = CA_flash_getinfo(partition_name, &PartionSize, &BlockSize, &PageSize, &OobSize);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA("CA_flash_getinfo failed! ret:0x%x\n", ret);
            return HI_FAILURE;
        }


        write_length = ((VMX_HEAD_LENGTH + image_len) + BlockSize - 1) & (~(BlockSize -1));

        VMX_PrintBuffer("before write(32 bytes):", ptr, 32);

        HI_INFO_CA("write info: partition_name:%s\, BlockSize:0x%x, PageSize:0x%x, OobSize:0x%x, write_length:0x%x\n", partition_name, BlockSize, PageSize, OobSize, write_length);

#ifdef HI_ADVCA_VMX_3RD_SIGN
        memcpy(pu8Tmp, ptr, VMX_IMG_OFFSET);
        ret = CA_flash_write(partition_name, (HI_U64)0, write_length, pu8Tmp);
#else
        ret= CA_flash_write(partition_name, (HI_U64)0, write_length, ptr);
#endif
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA("Burn image to flash failed! ret:0x%x, Resetting ...\n", ret);
            CA_Reset();
        }
        else
        {
            HI_INFO_CA("\nWrite src to flash success, ret:0x%x! Resetting ...\n", ret);
#ifdef HI_ADVCA_VMX_3RD_SIGN
            g_vmx_reboot_flag = 1;
#else
            CA_Reset();
#endif
        }

    }
    else
    {
        //not supported;
    }

    return HI_SUCCESS;
}


#if defined(HI_ADVCA_VERIFY_ENABLE)

#ifdef CONFIG_ENV_BACKUP
    static HI_U32 s_u32LoadEnvLoop = 2;
#else
    static HI_U32 s_u32LoadEnvLoop = 1;
#endif
extern HI_U32 g_MaxPageSize;
int load_direct_env(void *env, unsigned int offset, unsigned int size)
{
    HI_S32 ret = 0;
    HI_U32 u32VerifyTempAddr = 0;
    HI_U32 u32BootargsReadSize = 0;
    HI_INFO_CA("Enter VMX Advcanced load_direct_env offset:%x, size:%x\n", offset, size);
    
    if (s_u32LoadEnvLoop > 0)
    {
        s_u32LoadEnvLoop--; 
    }
    else
    {
        return HI_FAILURE;
    }

    u32VerifyTempAddr = getTempBufferAddr(size + VMX_HEAD_LENGTH);
    if (0 == u32VerifyTempAddr)
    {
        HI_ERR_CA("getTempBufferAddr failed\n");
        return HI_FAILURE;
    }
    u32BootargsReadSize = (size + VMX_HEAD_LENGTH + g_MaxPageSize - 1) & (~(g_MaxPageSize - 1));
    HI_INFO_CA("u32BootargsReadSize:%x\n", u32BootargsReadSize);

    ret = CA_flash_read_addr(offset, u32BootargsReadSize, (HI_U8*)IMG_VERIFY_ADDRESS, HI_NULL);
    //VMX_PrintBuffer("bootargs:", (HI_U8 *)IMG_VERIFY_ADDRESS, 512);
    if (HI_SUCCESS == ret)
    {
        ret = VMX_Auth_Bootargs((HI_U8 *)IMG_VERIFY_ADDRESS, (HI_U8 *) u32VerifyTempAddr, offset, size);
    }
    else
    {
    	HI_INFO_CA("CA_flash_read_addr bootargs failed\n");
    }

    if ((HI_SUCCESS != ret) && (0 == s_u32LoadEnvLoop))
    {
        HI_ERR_CA("Authenticate bootargs failed\n");
        CA_Reset();
    }

    if (HI_SUCCESS == ret)
    {
        HI_INFO_CA("Authenticate bootargs success\n");

        memset(env, 0, size);
        memcpy(env, (HI_U8 *)(IMG_VERIFY_ADDRESS + VMX_IMG_OFFSET), size);
    }
    VMX_PrintBuffer("bootargs(start):", (HI_U8 *)(IMG_VERIFY_ADDRESS + VMX_IMG_OFFSET), 512);
    VMX_PrintBuffer("bootargs(end):", (HI_U8 *)(IMG_VERIFY_ADDRESS + size - 512), 512);

    return ret;
}
#endif 

HI_S32 VMX_ReadUpgrdFlag(HI_BOOL *pbNeedUpgrd)
{
    HI_S32 ret = HI_SUCCESS;
    UPGRD_PARA_HEAD_S *pstParamHead;
    UPGRD_TAG_PARA_S  pstUpgrdParam;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_U32 u32CRC32Value = 0;
    HI_U8 * pBufLoaderdb = HI_NULL;

    CA_CheckPointer(pbNeedUpgrd);

	*pbNeedUpgrd = HI_FALSE;

    /*Read loaderdb partition*/
    hFlash = HI_Flash_OpenByName(LOADER_INFOBASIC);
	if ((0 == hFlash) || (HI_INVALID_HANDLE == hFlash))
	{
		HI_ERR_CA("HI_Flash_Open() %s error, hFlash:0x%x\n", LOADER_INFOBASIC, hFlash);
		return HI_SUCCESS;
	}

    ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CA("HI_Flash_GetInfo() error, result %x!\n",ret);
        (HI_VOID)HI_Flash_Close(hFlash);
        return HI_SUCCESS;
    }
    pBufLoaderdb = (HI_U8 *)malloc(stFlashInfo.BlockSize);
    if (HI_NULL == pBufLoaderdb)
    {
        HI_ERR_CA("malloc buf error\n");
        (HI_VOID)HI_Flash_Close(hFlash);
        return HI_SUCCESS;
    }
    ret = HI_Flash_Read(hFlash, 0ULL, (HI_U8*)pBufLoaderdb, stFlashInfo.BlockSize, HI_FLASH_RW_FLAG_RAW);
    if (ret <= 0)
    {
        HI_ERR_CA("HI_Flash_Read partion %s error\n", LOADER_INFOBASIC);
        HI_Flash_Close(hFlash);
        free(pBufLoaderdb);
        return HI_SUCCESS;
    }
    HI_Flash_Close(hFlash);

    pstParamHead = (UPGRD_PARA_HEAD_S *)pBufLoaderdb;

    /* Verify Magic Number */
    if ( LOADER_MAGIC_NUMBER != pstParamHead->u32MagicNumber)
    {
        HI_ERR_CA("Check Magic Number for loaderdb failed!\n");
        free(pBufLoaderdb);
		return HI_SUCCESS;
	}

    if( pstParamHead->u32Length >= stFlashInfo.BlockSize )
    {
        HI_ERR_CA("Read loaderdb value failed!\n");
        free(pBufLoaderdb);
		return HI_SUCCESS;
	}

    /* Veriry CRC value */
    u32CRC32Value = crc32(0, (HI_U8 *)(pBufLoaderdb + sizeof(HI_U32) * 2), (pstParamHead->u32Length + sizeof(HI_U32)));
    if (u32CRC32Value != pstParamHead->u32Crc)
    {
        HI_ERR_CA("Check CRC for loaderdb failed u32CRC32Value %x != pstParamHead->u32Crc %x!\n", u32CRC32Value, pstParamHead->u32Crc);
        free(pBufLoaderdb);
        return HI_SUCCESS;
	}

    HI_INFO_CA("Get upgrade tag info from loderdb successfully.\n");

    memcpy(&pstUpgrdParam, (void *)(pBufLoaderdb + sizeof(UPGRD_PARA_HEAD_S)), sizeof(UPGRD_TAG_PARA_S));
    *pbNeedUpgrd = pstUpgrdParam.bTagNeedUpgrd;

	free(pBufLoaderdb);
    return HI_SUCCESS;
}


HI_S32 hi_bootargs_append(HI_CHAR* appendStr)
{
    HI_CHAR *pTmp = HI_NULL;
    HI_CHAR Bootarg[1024] = {0};

    pTmp = getenv("bootargs");
    if(pTmp)
    {
        snprintf(Bootarg, 1024, "%s %s" ,pTmp, appendStr);
        setenv("bootargs", Bootarg);
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_S32 HI_CA_AuthenticateEntry_VMX(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U8 *ParaBase = (HI_U8*)IMG_VERIFY_ADDRESS;
    HI_U32 u32KernelSize = 0;
    HI_U32 u32verifyTempAddr = 0;
    HI_U32 u32FsSize = 0;
    HI_U8 *ptr = NULL;
    HI_U8 *ptr_fs_trace = NULL;
    HI_Flash_InterInfo_S flashInfo;

    HI_U32 KernelPartionSize = 0;
    HI_U32 LoaderPartionSize = 0;
    HI_U32 BlockSize = 0;
    HI_U32 PageSize = 0;
    HI_U32 OobSize = 0;
    HI_U32 u32FSReadSize = 0;
    HI_U32 u32KernelReadSize = 0;
    HI_U32 u32TotalBufLen = 0;
	HI_CHAR *loader_name = "loader";
	HI_CHAR *kernel_name = "kernel";
	HI_CHAR *rootfs_name = "rootfs";
	HI_CHAR acRootfsParam[128];

	HI_BOOL bNeedUpgrd = HI_FALSE;
    HI_CHAR as8BootCmd[64];

    HI_U8 *pu8Tmp_system = NULL;
    HI_INFO_CA("start ---------->\n");
	

    /*display logo*/
    Logo_Main(HI_NULL);
    HI_PDM_SetTagData(); 

#ifdef HI_LOADER_SUPPORT
	ret = VMX_ReadUpgrdFlag(&bNeedUpgrd);
	if (HI_SUCCESS != ret)
	{
		HI_ERR_CA("read upgrade flag for loader failed\n");
		//return HI_FAILURE;
	}
	HI_INFO_CA("bNeedUpgrd = %d\n", bNeedUpgrd);
#endif

	if(HI_TRUE == bNeedUpgrd)
	{
#ifndef HI_LOADER_BOOTLOADER
		ptr = (HI_U8 *)LOADER_VERIFY_ADDR_VMX;

        HI_INFO_CA("Need to upgrade, enter to verify loader\n");
	    /* prepare the loader image data to ddr */
	    ret = CA_flash_getinfo(loader_name, &LoaderPartionSize, &BlockSize, &PageSize, &OobSize);
	    if(HI_SUCCESS != ret)
	    {
	        HI_ERR_CA("failed, ret:%d!\n", ret);
	        return HI_FAILURE;
	    }
		HI_INFO_CA("PageSize:0x%x\n", PageSize);

	    ret = CA_flash_read(loader_name, (unsigned long long)0, LoaderPartionSize, ptr, &flashInfo);
	    if(HI_SUCCESS != ret)
	    {
	        HI_ERR_CA("failed, ret:%d!\n", ret);
	        return HI_FAILURE;
	    }
		VMX_PrintBuffer("loader:", ptr, 32);
	    HI_INFO_CA("%s partition size is: 0x%x\n", loader_name, LoaderPartionSize);
		/* verify loader now */
		ret = VMX_Auth_Partition_Image(loader_name, ptr);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("Authenticate %s failed\n", loader_name);
			CA_Reset();
		}
		HI_INFO_CA("Authenticate %s success.\n\n\n", loader_name);
#else
        return Loader_Main();
#endif		
	}
	else
	{
		ptr = (HI_U8 *)KERNEL_VERIFY_ADDR_VMX;

		/* get kernel partition info */
		ret = CA_flash_getinfo(kernel_name, &KernelPartionSize, &BlockSize, &PageSize, &OobSize);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("failed, ret:%d!\n", ret);
			return HI_FAILURE;
		}
        /* the pagesize of spi flash is 1 or undefined, transport page size to block size*/
		if (PageSize < 0x2000)
		{
			PageSize = BlockSize;
		}
		//read kernel signed header
		ret = CA_flash_read(kernel_name, (unsigned long long)0, PageSize, ptr, &flashInfo);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("failed, ret:%d!\n", ret);
			return HI_FAILURE;
		}
		VMX_PrintBuffer("kernel header:", ptr, 32);
		u32KernelSize = *(HI_U32 *)ptr;
		u32KernelReadSize = (u32KernelSize + VMX_HEAD_LENGTH + PageSize - 1) & (~(PageSize - 1));
		HI_INFO_CA("%s real size is: 0x%x, read size is: 0x%x\n", kernel_name, u32KernelSize, u32KernelReadSize);

		//read kernel image
		ret = CA_flash_read(kernel_name, (unsigned long long)0, u32KernelReadSize, ptr, &flashInfo);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("failed, ret:%d!\n", ret);
			return HI_FAILURE;
		}
		VMX_PrintBuffer("kernel header:", ptr, 32);
		VMX_PrintBuffer("kernel image(first 32 bytes):", ptr + VMX_HEAD_LENGTH, 32);
		ret = VMX_Auth_Partition_Image(kernel_name, ptr);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("Authenticate %s failed\n", kernel_name);
			CA_Reset();
		}
	    HI_INFO_CA("Authenticate %s success.\n\n\n", kernel_name);

      /* prepare fs image data to ddr */
        pu8Tmp_system = (HI_U8 *) ((KERNEL_VERIFY_ADDR_VMX + u32KernelReadSize + VMX_VERIFY_BUFFER_ALLIGN - 1) & ~(VMX_VERIFY_BUFFER_ALLIGN -1));
        //pu8Tmp_system = ROOTFS_VERIFY_ADDR_VMX;
        HI_SIMPLEINFO_CA("FS image read in addr: 0x%x\n", pu8Tmp_system);

        ret = CA_flash_read(rootfs_name, 0, PageSize, pu8Tmp_system, &flashInfo);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA("failed, ret!\n", ret);
            return HI_FAILURE;
        }
        u32FsSize = *(HI_U32 *)pu8Tmp_system;
        u32FSReadSize = (u32FsSize + VMX_HEAD_LENGTH + PageSize - 1) & (~(PageSize - 1));
        HI_SIMPLEINFO_CA("%s partition size is: 0x%x, u32FSReadSize:0x%x\n", rootfs_name, u32FsSize, u32FSReadSize);

		HI_INFO_CA("%s partition size is: 0x%x, u32FSReadSize:0x%x\n", rootfs_name, u32FsSize, u32FSReadSize);
		ret = CA_flash_read(rootfs_name, (unsigned long long)0, u32FSReadSize, pu8Tmp_system, &flashInfo);
		if(HI_SUCCESS != ret)
		{
			HI_ERR_CA("failed, ret:%d!\n", ret);
			return HI_FAILURE;
		}
		VMX_PrintBuffer("rootfs header 32byte:", pu8Tmp_system, 32);
        
		VMX_PrintBuffer("rootfs first 32byte:", pu8Tmp_system + VMX_HEAD_LENGTH, 32);

		ret = VMX_Auth_Partition_Image(rootfs_name, pu8Tmp_system);
	    if(HI_SUCCESS != ret)
	    {
	        HI_ERR_CA("Authenticate %s failed\n", rootfs_name);
	        CA_Reset();
	    }
	    HI_INFO_CA("Authenticate %s success.\n\n\n", rootfs_name);
        //set system file start addr to bootargs
        memset(acRootfsParam, 0x0, sizeof (acRootfsParam));
        snprintf(acRootfsParam, sizeof (acRootfsParam), "initrd=0x%x,0x%x root=/dev/ram ramdisk_size=40960 rootfstype=squashfs", pu8Tmp_system + VMX_HEAD_LENGTH, u32FSReadSize);
	    HI_INFO_CA("ram system param: %s\n", acRootfsParam);
        ret =  hi_bootargs_append(acRootfsParam);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("set ram system param error!\n");
            CA_Reset();
        }
	}

#ifdef HI_ADVCA_VMX_3RD_SIGN
    if(1 == g_vmx_reboot_flag)
    {
        CA_Reset();
    }
#endif
    /* start the kernel or loader*/
	ptr += VMX_HEAD_LENGTH;
	if(HI_TRUE == bNeedUpgrd)
	{
		HI_INFO_CA("enter loader:0x%08x\n", (HI_U32)ptr);
	}
	else
	{
		HI_INFO_CA("enter kernel:0x%08x\n", (HI_U32)ptr);
	}

#ifdef HI_MINIBOOT_SUPPORT
	HI_INFO_CA("Miniboot:Now Miniboot will jump to kernel. the kern_load:0x%x\n", ptr);
	kern_load((char *)ptr);
#else
	memset(as8BootCmd, 0, sizeof(as8BootCmd));
	snprintf(as8BootCmd, sizeof(as8BootCmd), "bootm 0x%x", ptr);
	HI_INFO_CA("Fastboot:Now Fastboot will jump to kernel. %s\n", as8BootCmd);
	run_command(as8BootCmd, 0);
#endif

    return HI_SUCCESS;
}

#endif //#ifndef HI_ADVCA_TYPE_VERIMATRIX

