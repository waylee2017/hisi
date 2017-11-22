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
#include <config.h>
#include "rsa.h"
#include "sha2.h"
#include "sha1.h"
#include "cx_ssd.h"

#include "../../../../api/src/cx_ssd.c"

#define INVALID_HANDLE 0xffffffff

static rsa_context g_customer_key;
extern AUTHALG_E g_AuthAlg ;

extern HI_U8  g_customer_rsa_public_key_N[256];
extern HI_U32  g_customer_rsa_public_key_E;

HI_S32 Auth(rsa_context *rsa, HI_U8* BlockStartAddr, HI_S32 Blocklength, HI_U8* sign)
{
    int ret;
    CA_CheckPointer(rsa);
    CA_CheckPointer(BlockStartAddr);
    CA_CheckPointer(sign);
    
    unsigned char hash[32]; 
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

HI_S32 CA_Auth(HI_U8* BlockStartAddr, HI_S32 Blocklength, HI_U8* sign)
{
    if((NULL == BlockStartAddr) || (NULL == sign))
    {
        return -1;
    }
    return Auth(&g_customer_key, BlockStartAddr,Blocklength,sign);
}

HI_S32 CA_Getkey(HI_U8 *N,HI_U32 E)
{
    HI_U8   base[512];
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
    if(0x10001 == E)
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
    return Getkey(&g_customer_key, base);   
}

#if 0
HI_S32 CA_Authenticate(HI_U8* pu8StartVirAddr,HI_U32* pu32CodeOffset)
{
    HI_S32 ret = 0;
    HI_CAImgHead_S *ImgInfo = NULL;
    HI_U8 u8Signature[SIGNATURE_LEN] = {0};

    CA_CheckPointer(pu8StartVirAddr);
    CA_CheckPointer(pu32CodeOffset);
    ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;

    if(memcmp(ImgInfo->au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->au8MagicNumber)))
    {
        HI_ERR_CA_INTEGRATION("magic number error,get img info failed\n");
        return -1;
    }
    CA_ASSERT(CA_Getkey(g_customer_rsa_public_key_N,g_customer_rsa_public_key_E),ret); 
    memcpy(u8Signature,(pu8StartVirAddr + ImgInfo->u32SignatureOffset),SIGNATURE_LEN);
    *pu32CodeOffset = ImgInfo->u32CodeOffset;
    
    CA_ASSERT(CA_Auth(pu8StartVirAddr, ImgInfo->u32SignedImageLen, u8Signature),ret);

    rsa_free(&g_customer_key);
    return ret;
}
#else
HI_S32 CA_Authenticate(HI_U8* pu8StartVirAddr,HI_U32* pu32CodeOffset)
{
    HI_S32 ret = 0;
    HI_CAImgHead_S *ImgInfo = NULL;
    HI_U8          *pu8Signature = NULL;

    CA_CheckPointer(pu8StartVirAddr);
    CA_CheckPointer(pu32CodeOffset);
    
    /*First, verify header of image*/
    pu8Signature = pu8StartVirAddr + NAND_PAGE_SIZE - SIGNATURE_LEN;
    CA_ASSERT(CA_Getkey(g_customer_rsa_public_key_N,g_customer_rsa_public_key_E),ret);    
    CA_ASSERT(CA_Auth(pu8StartVirAddr, NAND_PAGE_SIZE - SIGNATURE_LEN, pu8Signature),ret);
    rsa_free(&g_customer_key);    

    /*Then obtain the infor of header*/
    ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;
    if(memcmp(ImgInfo->au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->au8MagicNumber)))
    {
        HI_ERR_CA_INTEGRATION("magic number error,get img info failed\n");
        return -1;
    }
    
    if (pu32CodeOffset != NULL)
    {
       *pu32CodeOffset = ImgInfo->u32CodeOffset;
    }

    /*At last, verify the whole image*/
    pu8Signature = pu8StartVirAddr + ImgInfo->u32SignatureOffset;    
    CA_ASSERT(CA_Getkey(g_customer_rsa_public_key_N,g_customer_rsa_public_key_E),ret); 
    CA_ASSERT(CA_Auth(pu8StartVirAddr, ImgInfo->u32SignedImageLen, pu8Signature),ret);
    rsa_free(&g_customer_key);    
    
    return ret;
}
#endif

HI_S32 CA_GetEncryptedImageLenByStructureLen(HI_U32 u32StructureLen, HI_U32* pu32EncryptedImageLen)
{
    CA_CheckPointer(pu32EncryptedImageLen);
    * pu32EncryptedImageLen = (u32StructureLen + NAND_PAGE_SIZE - 1)& (~(NAND_PAGE_SIZE -1) );
    return HI_SUCCESS;
}

HI_S32 CA_DecryptUpgradeImage(HI_U8* pu8StartVirAddr, HI_U32 u32Length, HI_U8 au8M2MEncryptedSWPK[16])
{
    HI_S32 ret = 0;
    HI_U32 u32Index = 0;
    HI_U32 MMZLen = 1024 * 1024;
    HI_UNF_CIPHER_CTRL_S stCipherCtrl ; 
    HI_U32 cycle = u32Length / MMZLen;
    HI_U32 remains = u32Length % MMZLen;
    HI_MMZ_BUF_S stDownLoadBuf;
    HI_UNF_CIPHER_ATTS_S stCipherAttr;

    memset(&stDownLoadBuf, 0, sizeof(stDownLoadBuf));
    strncpy(stDownLoadBuf.bufname, "loader", MAX_BUFFER_NAME_SIZE);
    stDownLoadBuf.bufsize = MMZLen;
    stDownLoadBuf.overflow_threshold = 100;
    stDownLoadBuf.underflow_threshold = 0;
    stDownLoadBuf.user_viraddr = 0;
    stDownLoadBuf.phyaddr = 0;
    
    CA_CheckPointer(pu8StartVirAddr);
    CA_CheckPointer(au8M2MEncryptedSWPK);
    if(u32Length%8 != 0)
    {
        HI_ERR_CA_INTEGRATION("Decrypt u32Length is not times of 8BYTE,error\n");
        return HI_FAILURE;
    }

#if 1
    /*open and config keyladder*/
    ret = HI_UNF_CIPHER_Init();
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_UNF_CIPHER_Init failed\n");
        return ret;
    }

    ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_UNF_ADVCA_Init failed\n");
        goto CIPHER_CLOSE;
    }
#endif

    /*config cipher*/
    memset(&stCipherAttr, 0x0, sizeof(HI_UNF_CIPHER_ATTS_S));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    ret = HI_UNF_CIPHER_CreateHandle(&g_hCipher, &stCipherAttr);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_UNF_CIPHER_CreateHandle failed\n");
        goto ADVCA_DEINIT;
    }

    ret = HI_UNF_ADVCA_SWPKKeyLadderOpen();
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_UNF_ADVCA_SWPKKeyLadderOpen failed:%x\n",ret);
        goto CIPHER_DESTROY;
    }
    
    memset(&stCipherCtrl, 0x00, sizeof(HI_UNF_CIPHER_CTRL_S));
    memcpy(stCipherCtrl.u32Key, au8M2MEncryptedSWPK, 16);
    stCipherCtrl.bKeyByCA = isCipherkeyByCA;
    stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_3DES;
    stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    stCipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_ECB;
    stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_DES_2KEY;
    ret = HI_UNF_CIPHER_ConfigHandle(g_hCipher,&stCipherCtrl);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_UNF_CIPHER_ConfigHandle failed\n");
        goto SWPK_CLOSE;
    }
    
    ret = HI_MMZ_Malloc(&stDownLoadBuf);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA_INTEGRATION("HI_MMZ_Malloc failed:%x\n",ret);
        goto SWPK_CLOSE;
    }
    memset(stDownLoadBuf.user_viraddr,0,MMZLen);
    
    /* =======================begin using the M2M(SWPK) to decrypt the upgrade_image==================== */
    if(cycle > 0)
    {
        for(u32Index = 0;u32Index < cycle;u32Index ++)
        {
            memset(stDownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(stDownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),MMZLen);
            ret = CA_DataDecrypt(stDownLoadBuf.phyaddr,MMZLen,stDownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataEncrypt failed:%x\n",ret);
                goto MMZ_FREE;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),stDownLoadBuf.user_viraddr,MMZLen);
                
            }
        }
        if(remains > 0)
        {
            memset(stDownLoadBuf.user_viraddr,0,MMZLen);
            memcpy(stDownLoadBuf.user_viraddr,(pu8StartVirAddr + u32Index*MMZLen),remains);
            ret = CA_DataDecrypt(stDownLoadBuf.phyaddr,remains,stDownLoadBuf.phyaddr);
            if(HI_SUCCESS != ret)
            {
                HI_ERR_CA_INTEGRATION("CA_DataEncrypt failed:%x\n",ret);
                goto MMZ_FREE;
            }
            else
            {
                memcpy((pu8StartVirAddr + u32Index*MMZLen),stDownLoadBuf.user_viraddr,remains);
                
            }
        }
    }
    else
    {
        memset(stDownLoadBuf.user_viraddr,0,MMZLen);
        memcpy(stDownLoadBuf.user_viraddr,pu8StartVirAddr,u32Length);
        ret = CA_DataDecrypt(stDownLoadBuf.phyaddr,u32Length,stDownLoadBuf.phyaddr);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CA_INTEGRATION("CA_DataDecrypt failed:%x\n",ret);
            goto MMZ_FREE;
        }
        else
        {
            memcpy(pu8StartVirAddr,stDownLoadBuf.user_viraddr,u32Length);
        }
    }
    HI_INFO_CA_INTEGRATION("Img has been encrypted by SSD img encrypt process\n");

MMZ_FREE:
    HI_MMZ_Free(&stDownLoadBuf);

SWPK_CLOSE:
    (HI_VOID)HI_UNF_ADVCA_SWPKKeyLadderClose();

CIPHER_DESTROY:
    (HI_VOID)HI_UNF_CIPHER_DestroyHandle(g_hCipher);
    g_hCipher = INVALID_HANDLE;

ADVCA_DEINIT:
    (HI_VOID)HI_UNF_ADVCA_DeInit();

CIPHER_CLOSE:
    (HI_VOID)HI_UNF_CIPHER_DeInit();
    
    return ret;
}


/*
** Below is deal with signature at the tail of datablock
*/


typedef struct
{
    HI_U8 *pImageData;
    HI_U32 ImageDataLength;
    HI_CASignImageTail_S *pCASignTail;
} HI_CA_NEW_SignParam_S;

/*
** CRC32 Arithmetic
*/
#define POLYNOMIAL (0x04c11db7L)

/*Init _CrcTable[256] Flag, Only init once time*/
static short _First = 1;
/*Calculate CRC32*/
static unsigned long  _CrcTable[256];

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
unsigned int Debug_CASignImageTail_Value(HI_CASignImageTail_S *pCASignTail)
{
    HI_U32 u32Index;
    HI_U8 Data[256];
    
    memset(Data, 0, 256);
    memcpy(Data, pCASignTail->au8MagicNumber, 32);
    HI_SIMPLEINFO_CA("\nu8MagicNumber:%s\n", Data);    
    memset(Data, 0, 256);
    memcpy(Data, pCASignTail->au8Version, 8);
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
    if(pCASignTail->u32HashType == AUTH_SHA2)
    {
        for(u32Index = 0; u32Index < 32; u32Index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", pCASignTail->au8Sha[u32Index]);
        }
    }
    else
    {
        for(u32Index = 0; u32Index < 5; u32Index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", pCASignTail->au8Sha[u32Index]);
        }
    }
    HI_SIMPLEINFO_CA("\n");    
    HI_SIMPLEINFO_CA("u32SignatureLen:%d\n", pCASignTail->u32SignatureLen);
    for(u32Index = 0; u32Index < pCASignTail->u32SignatureLen; u32Index ++)
    {
        HI_SIMPLEINFO_CA("%02x ", pCASignTail->au8Signature[u32Index]);
    }
    HI_SIMPLEINFO_CA("\n");
    HI_SIMPLEINFO_CA("OrignalImagePath:%s\n", pCASignTail->au8OrignalImagePath);
    HI_SIMPLEINFO_CA("RSAPrivateKeyPath:%s\n", pCASignTail->au8RSAPrivateKeyPath);
    HI_SIMPLEINFO_CA("CRC32:%x\n", pCASignTail->CRC32);
    
    return 0;
}

/*
StartVirAddr real structure is:
Data:   |----------Data------------| xxxxx stuff xxxxxx   | Tail+stuff |
offset:0x00                              Aligned by 0x2000  Aligned by 0x2000
*/
HI_S32 CA_CommonVerify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32Index = 0;
    unsigned int CRC32Value;
    HI_U32 PartitionImagSize = 0;
    HI_CASignImageTail_S CASignTail;
    
    CA_CheckPointer(pu8StartVirAddr);
    
    if(u32Addrlength % FAKE_BLOCK_SIZE != 0)
    {
        HI_ERR_CA_INTEGRATION("Error, Authenticate data length:0x%x is not Aligned by %x\n", u32Addrlength, FAKE_BLOCK_SIZE);
        return HI_FAILURE;
    }
    if(u32Addrlength <= FAKE_BLOCK_SIZE)
    {
        HI_ERR_CA_INTEGRATION("Error, Authenticate data length:0x%x is too small, must > 0x%x\n", u32Addrlength, FAKE_BLOCK_SIZE);
        return HI_FAILURE;
    }
    /* Get CASignTail from pu8StartVirAddr! */
    memcpy(&CASignTail, (HI_VOID *)&(pu8StartVirAddr[u32Addrlength - FAKE_BLOCK_SIZE]), sizeof(HI_CASignImageTail_S));
    
    if(memcmp(CASignTail.au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(CASignTail.au8MagicNumber)))
    {
        HI_ERR_CA_INTEGRATION("magic number error,get img info failed\n");
        for(u32Index = 0; u32Index < sizeof(CASignTail.au8MagicNumber); u32Index ++)
        {
            HI_SIMPLEINFO_CA("%02x ", CASignTail.au8MagicNumber[u32Index]);
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
        HI_ERR_CA_INTEGRATION("CRC32Value:0x%x != CASignTail.CRC32:0x%x\n", CRC32Value, CASignTail.CRC32);
        return HI_FAILURE;
    }
    
    Debug_CASignImageTail_Value(&CASignTail);
    
    PartitionImagSize = (CASignTail.u32SignedDataLength + FAKE_BLOCK_SIZE - 1) / FAKE_BLOCK_SIZE * FAKE_BLOCK_SIZE;
    if((PartitionImagSize + FAKE_BLOCK_SIZE) < u32Addrlength)
    {
        HI_ERR_CA_INTEGRATION("(PartitionImagSize + FAKE_BLOCK_SIZE):0x%x < u32Addrlength:0x%x\n", u32Addrlength, (PartitionImagSize + FAKE_BLOCK_SIZE));
        return HI_FAILURE;
    }
    
    if(CASignTail.u32IsNeedEncrypt == HI_TRUE)
    {
        HI_SIMPLEINFO_CA("Warrning:Encrypt requirement do not support, continue...\n");
        HI_SIMPLEINFO_CA("If you need to ecnrypt image, please select another mode:Signature in the head of Image\n");
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
        
    if(memcmp(pstSignImageInfo->au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(pstSignImageInfo->au8MagicNumber)))
    {
        HI_ERR_CA_INTEGRATION("magic number error,get img info failed\n");
        return HI_FAILURE;
    }
    /* We can check SHA value! */
    if(pstSignImageInfo->u32HashType == AUTH_SHA1)
    {
        memset(TmpSha, 0, 32);
        sha1(pu8StartVirAddr, pstSignImageInfo->u32SignedDataLength, TmpSha);
        for(u32Index = 0; u32Index < 5; u32Index ++)
        {
            if(TmpSha[u32Index] != pstSignImageInfo->au8Sha[u32Index])
            {
                HI_ERR_CA_INTEGRATION("error u32Index:%d sha:0x%2x != 0x%2x\n", u32Index, TmpSha[u32Index], pstSignImageInfo->au8Sha[u32Index]);
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
            if(TmpSha[u32Index] != pstSignImageInfo->au8Sha[u32Index])
            {
                HI_ERR_CA_INTEGRATION("error u32Index:%d sha:0x%2x != 0x%2x\n", u32Index, TmpSha[u32Index], pstSignImageInfo->au8Sha[u32Index]);
                return HI_FAILURE;
            }
        }
    }
    HI_SIMPLEINFO_CA("Sha check ok\n");

    /* Verify image signature */
    CA_ASSERT(CA_Getkey(g_customer_rsa_public_key_N,g_customer_rsa_public_key_E),ret);
    CA_ASSERT(CA_Auth(pu8StartVirAddr, pstSignImageInfo->u32SignedDataLength, pstSignImageInfo->au8Signature),ret);
    rsa_free(&g_customer_key);
    HI_SIMPLEINFO_CA("Check Authenitication is ok\n");
        
    return ret;
}

HI_S32 CA_Verify_Authenticate(HI_U8* pu8StartVirAddr,HI_U32 u32Addrlength)
{
    HI_CASignImageTail_S CASignTail;
    HI_CAImgHead_S *ImgInfo = NULL;
    HI_U32 u32CodeOffset = 0;
    
    CA_CheckPointer(pu8StartVirAddr);

    if(u32Addrlength % 16 != 0)
    {
        HI_ERR_CA_INTEGRATION("Error, Authenticate data length:0x%x is not Aligned by %x\n", u32Addrlength, 16);
        return HI_FAILURE;
    }
    if(u32Addrlength <= 16)
    {
        HI_ERR_CA_INTEGRATION("Error, Authenticate data length:0x%x is too small, must > 0x%x\n", u32Addrlength, 16);
        return HI_FAILURE;
    }

    /* Get CASignTail from pu8StartVirAddr! */
    memcpy(&CASignTail, (HI_VOID *)&(pu8StartVirAddr[u32Addrlength - SIGNATURE_LEN]), sizeof(HI_CASignImageTail_S));
    
    if(!memcmp(CASignTail.au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(CASignTail.au8MagicNumber)))
    {
        g_enAuthType = CA_AUTH_TYPE_COMMON;
        return CA_CommonVerify_Authenticate(pu8StartVirAddr, u32Addrlength);
    }
    else
    {
        ImgInfo = (HI_CAImgHead_S*)pu8StartVirAddr;

        if(!memcmp(ImgInfo->au8MagicNumber, CAIMGHEAD_MAGICNUMBER, sizeof(ImgInfo->au8MagicNumber)))
        {
            g_enAuthType = CA_AUTH_TYPE_SPECIAL;
            return CA_Authenticate(pu8StartVirAddr, &u32CodeOffset);
        }
        else
        {
            g_enAuthType = CA_AUTH_TYPE_BUTT;
            HI_ERR_CA_INTEGRATION("Error, None supported authentication type!\n");
            return HI_FAILURE;
        }
    }
    
}

/*-----------------------------------END----------------------------------*/

