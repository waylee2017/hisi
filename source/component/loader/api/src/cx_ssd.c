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
#include <stdio.h>
#include <string.h>
#include <string.h>
#include "hi_type.h"
#include "hi_unf_advca.h"
#include "hi_unf_cipher.h"
#include "cx_ssd.h"
#include "hi_common.h"

#define INVALID_HANDLE 0xffffffff

/* Cipher block must < 1M BYTE and be times of 16BYTE */
static HI_U32 CipherBlockSize = 1024*1024-16;

#if 0
static HI_U8 G1_CIPHERKEY[16] = "Hisilicon_cipher";
static HI_U8 G2_CIPHERKEY[16] = "Hisilicon_second";
static HI_U8 G1_KEYLADDER_KEY1[16] = "auth1_keyladder1";
static HI_U8 G1_KEYLADDER_KEY2[16] = "auth1_keyladder2";
static HI_U8 G2_KEYLADDER_KEY1[16] = "auth2_keyladder1";
static HI_U8 G2_KEYLADDER_KEY2[16] = "auth2_keyladder2";
#else
static HI_U8 G1_CIPHERKEY[16]      = {0x5b,0x45,0x14,0x37,0x6d,0xed,0x1d,0x08,0x64,0x97,0xbc,0xba,0xe6,0x7f,0x90,0x78};
static HI_U8 G2_CIPHERKEY[16]      = {0xd6,0xbc,0x9e,0xe2,0x3a,0x61,0x50,0x10,0xb4,0x64,0x2e,0xaa,0xe8,0xf0,0x53,0xa6};
static HI_U8 G1_KEYLADDER_KEY1[16] = {0x1c,0x21,0x42,0xa2,0x9e,0x31,0x57,0x8d,0xff,0xa4,0xe1,0xdf,0x2e,0x36,0xa0,0x6e};
static HI_U8 G1_KEYLADDER_KEY2[16] = {0x7c,0x76,0x1a,0x38,0xc1,0x46,0x4e,0x53,0x8c,0xa3,0xd7,0xae,0x56,0xee,0x27,0xb7};
static HI_U8 G2_KEYLADDER_KEY1[16] = {0x41,0x98,0x30,0x77,0x14,0xed,0x9d,0xc3,0x60,0x55,0x49,0xcf,0x5e,0x75,0x13,0xa2};
static HI_U8 G2_KEYLADDER_KEY2[16] = {0x5c,0x98,0xbe,0x7c,0x52,0x24,0x35,0xb8,0x30,0xa5,0x10,0x54,0x33,0xc3,0x21,0xf8};
static HI_U8 CAIMGHEAD_MAGICNUMBER[32] = {0};
#endif
static HI_HANDLE  g_hCipher = INVALID_HANDLE;  
CA_AUTH_TYPE_E g_enAuthType = CA_AUTH_TYPE_BUTT;
extern HI_BOOL isCipherkeyByCA;
extern HI_UNF_CIPHER_ALG_E g_CipherAlg;

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
    HI_UNF_CIPHER_ATTS_S stCipherAttr;

    /* Form the magic number */
    GenerateMagicNum();

    memset(SessionKey1,0,sizeof(SessionKey1)); 
    memset(SessionKey2,0,sizeof(SessionKey2)); 
    memset(&CipherCtrl,0,sizeof(HI_UNF_CIPHER_CTRL_S));

    /* open and config keyladder */
#if 1
    CA_ASSERT(HI_UNF_CIPHER_Init(),ret);
    HI_UNF_ADVCA_Init();
#endif
    CA_ASSERT(HI_UNF_ADVCA_SetR2RAlg(HI_UNF_ADVCA_ALG_TYPE_AES),ret);
    CA_ASSERT(HI_UNF_ADVCA_GetR2RKeyLadderStage(&enStage),ret);

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

    /* config cipher */
    memset(&stCipherAttr, 0x0, sizeof(HI_UNF_CIPHER_ATTS_S));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    CA_ASSERT(HI_UNF_CIPHER_CreateHandle(&g_hCipher, &stCipherAttr),ret);
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
        HI_ERR_CA_INTEGRATION("Cipher Algorithem error\n");
        return -1;
    }

    CA_ASSERT(HI_UNF_CIPHER_ConfigHandle(g_hCipher,&CipherCtrl),ret);   
    return ret;
}

HI_S32 CA_AuthenticateDeInit(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;
    
    CA_ASSERT(HI_UNF_CIPHER_DestroyHandle(g_hCipher),ret);
    g_hCipher = INVALID_HANDLE;
    CA_ASSERT(HI_UNF_CIPHER_DeInit(),ret);
    CA_ASSERT(HI_UNF_ADVCA_DeInit(),ret);
    
    return ret;
}

HI_S32 CA_DataDecrypt(HI_U32 CipherTextPhyAddr, HI_U32 TextLen, HI_U32 PlainTextPhyAddr)
{
    HI_S32 ret = 0;
    HI_U32 CipherBlockNum = 0;
    HI_U32 u32Index = 0;

    if(INVALID_HANDLE == g_hCipher)
    {
        HI_ERR_CA_INTEGRATION("call CA_AuthenticateInit first\n");
        return ret; 
    }
    if((TextLen < 16) || (TextLen%16 != 0))
    {
        HI_ERR_CA_INTEGRATION("Data length must be times of 16BYTE\n");
        return ret;     
    }    
    CipherBlockNum = TextLen/CipherBlockSize;
    if(CipherBlockNum > 0)
    {
        for(u32Index = 0;u32Index <CipherBlockNum;u32Index++)
        {
            CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,(PlainTextPhyAddr+u32Index*CipherBlockSize),(CipherTextPhyAddr+u32Index*CipherBlockSize),CipherBlockSize),ret);
        }
        if(TextLen > u32Index*CipherBlockSize)
        {
            CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,(PlainTextPhyAddr+u32Index*CipherBlockSize),(CipherTextPhyAddr+u32Index*CipherBlockSize),(TextLen-u32Index*CipherBlockSize)),ret);
        }
    }
    else
    {
        CA_ASSERT(HI_UNF_CIPHER_Decrypt(g_hCipher,PlainTextPhyAddr,CipherTextPhyAddr,TextLen),ret);
    }
    return ret;
}


HI_S32 CA_DataEncrypt(HI_U32 PlainTextPhyAddr, HI_U32 TextLen, HI_U32 CipherTextPhyAddr)
{
    HI_S32 ret = 0;
    HI_U32 CipherBlockNum = 0;
    HI_U32 u32Index = 0;

    if(INVALID_HANDLE == g_hCipher)
    {
        HI_ERR_CA_INTEGRATION("call CA_AuthenticateInit first\n");
        return ret; 
    }
    if((TextLen < 16) || (TextLen%16 != 0))
    {
        HI_ERR_CA_INTEGRATION("Data length must be times of 16BYTE\n");
        return ret;     
    }    
    CipherBlockNum = TextLen/CipherBlockSize;
    if(CipherBlockNum > 0)
    {
        for(u32Index = 0;u32Index <CipherBlockNum;u32Index++)
        {
            CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,(PlainTextPhyAddr+u32Index*CipherBlockSize),(CipherTextPhyAddr+u32Index*CipherBlockSize),CipherBlockSize),ret);
        }
        if(TextLen > u32Index*CipherBlockSize)
        {
            CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,(PlainTextPhyAddr+u32Index*CipherBlockSize),(CipherTextPhyAddr+u32Index*CipherBlockSize),(TextLen-u32Index*CipherBlockSize)),ret);
        }
    }
    else
    {
        CA_ASSERT(HI_UNF_CIPHER_Encrypt(g_hCipher,PlainTextPhyAddr,CipherTextPhyAddr,TextLen),ret);
    }
    return ret;
}

HI_S32 CA_DecryptImageUsingR2RKeyladder(HI_CA_KEY_GROUP_E enKeyGroup, HI_U8* pu8StartVirAddr,HI_U32 u32CipherTextlength)
{
    HI_S32 ret = 0;
    HI_U32 u32Index = 0;
    HI_U32 MMZLen = 1024*1024;
    HI_U32 cycle = u32CipherTextlength/MMZLen;
    HI_U32 remains = u32CipherTextlength%MMZLen;
    HI_MMZ_BUF_S DownLoadBuf;
    strncpy(DownLoadBuf.bufname, "Cipher", MAX_BUFFER_NAME_SIZE);
    DownLoadBuf.bufsize = MMZLen;
    DownLoadBuf.overflow_threshold = 100;
    DownLoadBuf.underflow_threshold = 0;
    DownLoadBuf.user_viraddr = 0;
    DownLoadBuf.phyaddr = 0; 

    if(u32CipherTextlength%8 != 0)
    {
        HI_ERR_CA_INTEGRATION("Decrypt length is not times of 8BYTE,error\n");
        return HI_FAILURE;
    }
    ret = HI_MMZ_Malloc(&DownLoadBuf);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_MMZ_Malloc failed:%x\n",ret);
        return HI_FAILURE;
    }
    memset(DownLoadBuf.user_viraddr,0,MMZLen);

    ret = CA_AuthenticateInit(enKeyGroup);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("CA_AuthenticateInit failed:%x\n",ret);
        goto MMZ_FREE;
    }

    if(cycle > 0)
    {
        for(u32Index = 0;u32Index < cycle;u32Index ++)
        {
            memset(DownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(DownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),MMZLen);
            ret = CA_DataDecrypt(DownLoadBuf.phyaddr,MMZLen,DownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataDecrypt failed:%x\n",ret);
                goto AUTH_DEINIT;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),DownLoadBuf.user_viraddr,MMZLen);
                
            }
        }
        if(remains > 0)
        {
            memset(DownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(DownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),remains);
            ret = CA_DataDecrypt(DownLoadBuf.phyaddr,remains,DownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataDecrypt failed:%x\n",ret);
                goto AUTH_DEINIT;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),DownLoadBuf.user_viraddr,remains);
                
            }
        }
    }
    else
    {
        memset(DownLoadBuf.user_viraddr,0,MMZLen);
        memcpy(DownLoadBuf.user_viraddr,pu8StartVirAddr,u32CipherTextlength);
        ret = CA_DataDecrypt(DownLoadBuf.phyaddr,u32CipherTextlength,DownLoadBuf.phyaddr);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA_INTEGRATION("CA_DataDecrypt failed:%x\n",ret);
            goto AUTH_DEINIT;
        }
        else
        {
            memcpy(pu8StartVirAddr,DownLoadBuf.user_viraddr,u32CipherTextlength);
        }
    }
    HI_INFO_CA_INTEGRATION("Img has been decrypted by SSD img decrypt process\n");

AUTH_DEINIT:
    (HI_VOID)CA_AuthenticateDeInit();

MMZ_FREE:
    HI_MMZ_Free(&DownLoadBuf);
    return ret;
}


HI_S32 CA_EncryptImageUsingR2RKeyladder(HI_CA_KEY_GROUP_E enKeyGroup, HI_U8* pu8StartVirAddr,HI_U32 u32PlainTextlength)
{
    HI_S32 ret = 0;
    HI_U32 u32Index = 0;
    HI_U32 MMZLen = 1024*1024;
    HI_U32 cycle = u32PlainTextlength/MMZLen;
    HI_U32 remains = u32PlainTextlength%MMZLen;
    HI_MMZ_BUF_S DownLoadBuf;
    strncpy(DownLoadBuf.bufname, "Plain", MAX_BUFFER_NAME_SIZE);
    DownLoadBuf.bufsize = MMZLen;
    DownLoadBuf.overflow_threshold = 100;
    DownLoadBuf.underflow_threshold = 0;
    DownLoadBuf.user_viraddr = 0;
    DownLoadBuf.phyaddr = 0; 

    if(u32PlainTextlength%8 != 0)
    {
        HI_ERR_CA_INTEGRATION("Encrypt length is not times of 8BYTE,error\n");
        return HI_FAILURE;
    }

    if (CA_AUTH_TYPE_COMMON == g_enAuthType)
    {
        HI_INFO_CA_INTEGRATION("No need to encrypt for common authenticate type!\n");
        return HI_SUCCESS;
    }
    
    ret = HI_MMZ_Malloc(&DownLoadBuf);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_MMZ_Malloc failed:%x\n",ret);
        return HI_FAILURE;
    }
    memset(DownLoadBuf.user_viraddr,0,MMZLen);

    ret = CA_AuthenticateInit(enKeyGroup);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("CA_AuthenticateInit failed:%x\n",ret);
        goto MMZ_FREE;
    }
    if(cycle > 0)
    {
        for(u32Index = 0;u32Index < cycle;u32Index ++)
        {
            memset(DownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(DownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),MMZLen);
            ret = CA_DataEncrypt(DownLoadBuf.phyaddr,MMZLen,DownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataEncrypt failed:%x\n",ret);
                goto AUTH_DEINIT;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),DownLoadBuf.user_viraddr,MMZLen);
                
            }
        }
        if(remains > 0)
        {
            memset(DownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(DownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),remains);
            ret = CA_DataEncrypt(DownLoadBuf.phyaddr,remains,DownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataEncrypt failed:%x\n",ret);
                goto AUTH_DEINIT;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),DownLoadBuf.user_viraddr,remains);
                
            }
        }
    }
    else
    {
        memset(DownLoadBuf.user_viraddr,0,MMZLen);
        memcpy(DownLoadBuf.user_viraddr,pu8StartVirAddr,u32PlainTextlength);
        ret = CA_DataEncrypt(DownLoadBuf.phyaddr,u32PlainTextlength,DownLoadBuf.phyaddr);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA_INTEGRATION("CA_DataEncrypt failed:%x\n",ret);
            goto AUTH_DEINIT;
        }
        else
        {
            memcpy(pu8StartVirAddr,DownLoadBuf.user_viraddr,u32PlainTextlength);
        }
    }
    HI_INFO_CA_INTEGRATION("Img has been encrypted by SSD img encrypt process\n");

AUTH_DEINIT:
    (HI_VOID)CA_AuthenticateDeInit();

MMZ_FREE:
    HI_MMZ_Free(&DownLoadBuf);

    return HI_SUCCESS;
}

HI_S32 CA_AuthenticateEx(HI_U8* pu8StartVirAddr, HI_U32* pu32CodeOffset)
{
    HI_CAImgHead_S *ImgInfo = NULL;

    CA_CheckPointer(pu8StartVirAddr);
    CA_CheckPointer(pu32CodeOffset);
    ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;

    if(memcmp(ImgInfo->au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->au8MagicNumber)))
    {
        HI_ERR_CA_INTEGRATION("magic number error,get img info failed\n");
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}

/*-----------------------------------END----------------------------------*/

