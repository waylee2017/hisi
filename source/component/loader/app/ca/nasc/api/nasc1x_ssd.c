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
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <pthread.h>
#include <unistd.h>
#include "ca_ssd.h"
#include "nasc1x_ssd.h"
#include "hi_unf_cipher.h"
#include "hi_unf_advca.h"
#include "hi_flash.h"
#include "hi_common.h"
#include "hi_debug.h"
#include "hi_module.h"
#include "hi_type.h"

#ifdef HI_ADVCA_FUNCTION_RELEASE
#include "ssassd.h"
#else
#include "ssassdd.h"
#endif

static HI_S32 hFd = -1;
static const char dev[]="/dev/hi_mem";
static pthread_mutex_t   g_SsdMutex = PTHREAD_MUTEX_INITIALIZER;
static HI_S32 g_SsdInitFlag = 0;
static HI_S32 g_SsdCAMapFlag = 0;

#define HI_SSD_LOCK()       (void)pthread_mutex_lock(&g_SsdMutex);
#define HI_SSD_UNLOCK()     (void)pthread_mutex_unlock(&g_SsdMutex);

static HI_U8 CAIMGHEAD_MAGICNUMBER[32] = {0};


HI_U8 pu8GlobalKey[NAGRA_GLOBAL_KEY_SIZE] = {0xee,0x01,0x02,0x4d,0xf1,0x05,0x67,0x07,0x15,0x33,0x0a,0x0b,0x0c,0x8f,0x0e,0x4f};
static HI_U8 g_csd_xR2RCipheredProtectingKeys[16] ={0xe4, 0x21, 0x13, 0xa7, 0x99, 0xca, 0xf4, 0xc7,0x05, 0xff, 0x14, 0x32, 0x23, 0x32, 0x91, 0xcb};
static HI_U8 g_csd_pxCipheredContentKey[16] = {0xe4, 0x21, 0x13, 0xa7, 0x99, 0xca, 0xf4, 0xc7,0x05, 0xff, 0x14, 0x32, 0x23, 0x32, 0x91, 0xcb};

#define CHECK_SSD_INIT()\
do{\
    if (0 == g_SsdInitFlag)\
    {\
        HI_ERR_CA_SSD("SSD is not initialized.\n"); \
        return HI_FAILURE;  \
    }\
}while(0)

#define CHECK_SSD_CA_MMAP()\
do{\
    if (1 == g_SsdCAMapFlag)\
    {\
        HI_WARN_CA_SSD("Ssd CA MEM have been already maped.\n");\
        return HI_SUCCESS;\
    }\
}while(0)

#define CHECK_SSD_CA_MUNMAP()\
do{\
    if (0 == g_SsdInitFlag)\
    {\
        HI_WARN_CA_SSD("Ssd CA MEM have been already unmaped.\n");\
        return HI_SUCCESS;\
    }\
}while(0)

HI_S32 csdInitialize(HI_VOID)
{
    return HI_UNF_ADVCA_Init();
}

HI_S32 csdTerminate(HI_VOID)
{
    return HI_UNF_ADVCA_DeInit();
}

HI_S32 csdDecryptDataWithClearTextHostKey(HI_UNF_CIPHER_ALG_E xAlgorithm,
                                        HI_UNF_CIPHER_WORK_MODE_E xMode,
                                        const HI_U8* pu8ClearTextHostKey,
                                        HI_U32 u32ClearTextHostKeySize,
                                        const HI_U8* pu8InitializationVector,
                                        HI_U32 u32InitializationVectorSize,
                                        HI_BOOL bRefreshIv,
                                        HI_HANDLE hR2RKeyPathHandle,
                                        const HI_U8* pu8InputData,
                                        HI_U8* pu8OutputData,
                                        HI_U32 u32DataSize)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_UNF_CIPHER_CTRL_S stCipherCtrl;
    HI_U32  u32UnitSize = 16;
    HI_MMZ_BUF_S stTmpBuf;

    memset((HI_VOID*)&stCipherCtrl, 0, sizeof(HI_UNF_CIPHER_CTRL_S));
    switch (xAlgorithm)
    {
        case HI_UNF_CIPHER_ALG_AES :
            u32UnitSize = 16;
            break;
        case HI_UNF_CIPHER_ALG_3DES:
            u32UnitSize = 8;
            break;
        default:
        {
            HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }

    /*clear text host key should be 16 Bytes long*/
    if ((16 != u32ClearTextHostKeySize) || (NULL == pu8ClearTextHostKey))
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Clear Text HostKey Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    /*IV should be 16 Bytes in AES and 8 Bytes in TDES*/
    if (((HI_UNF_CIPHER_WORK_MODE_CBC  == xMode) || (HI_UNF_CIPHER_WORK_MODE_CTR  == xMode)) && bRefreshIv)
    {
        if ((u32UnitSize != u32InitializationVectorSize) || (NULL == pu8InitializationVector))
        {
            HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Parameters Invalid!\n");
            return HI_ERR_CA_SSD_INVALID_PARAM;
        }
    }

    if ((NULL == pu8InputData) || (NULL == pu8OutputData))
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Clear Text HostKey Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }
    
    /*the size of the input data block must be a multiple of 8 bytes if it must be encrypted with the TDES algorithm or
     a multiple of 16 bytes if it must be encrypted with the AES algorithm*/
    if (0 != (u32DataSize % u32UnitSize))
    {
        HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    if (0 == hR2RKeyPathHandle)
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Clear Text HostKey Key Path Handle Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    stCipherCtrl.bKeyByCA = HI_FALSE;
    switch (xAlgorithm)
    {
        case HI_UNF_CIPHER_ALG_AES :
        {
            stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
            stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
            stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
            break;
        }
        case HI_UNF_CIPHER_ALG_3DES:
        {
            stCipherCtrl.enAlg = HI_UNF_CIPHER_ALG_3DES;
            stCipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_64BIT;
            stCipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_DES_2KEY;
            break;
        }
        default:
        {
            HI_ERR_CA_SSD("CSD Decrypt Data With Clear Text HostKey Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }

    switch (xMode)
    {
        case HI_UNF_CIPHER_WORK_MODE_ECB:
        case HI_UNF_CIPHER_WORK_MODE_CBC:
        case HI_UNF_CIPHER_WORK_MODE_CTR:
        {
            stCipherCtrl.enWorkMode = xMode;
            break;
        }
        default:
        {
            HI_ERR_CA_SSD("CSD Decrypt Data With Clear Text HostKey Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }

    memcpy((HI_VOID*)stCipherCtrl.u32Key, pu8ClearTextHostKey, u32ClearTextHostKeySize);        

    if (bRefreshIv)
    {
        stCipherCtrl.stChangeFlags.bit1IV = 1;
        memcpy((HI_VOID*)stCipherCtrl.u32IV, pu8InitializationVector, u32InitializationVectorSize);
    }

    Ret = HI_UNF_CIPHER_ConfigHandle(hR2RKeyPathHandle, &stCipherCtrl);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("CSD CIPHER Config Handle ERROR! Ret = 0x%x\n", Ret);
        return HI_FAILURE;
    }

    strncpy(stTmpBuf.bufname, "NagraDecrypt", 13);
    stTmpBuf.bufsize = u32DataSize;
    stTmpBuf.overflow_threshold = 100;
    stTmpBuf.underflow_threshold = 0;
    Ret = HI_MMZ_Malloc(&stTmpBuf);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("HI_MMZ_Malloc failed:%x\n",Ret);
        return HI_FAILURE;
    }

    memcpy(stTmpBuf.user_viraddr, pu8InputData,u32DataSize);

    Ret = HI_UNF_CIPHER_Decrypt(hR2RKeyPathHandle, stTmpBuf.phyaddr, stTmpBuf.phyaddr, u32DataSize);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("CSD CIPHER Decrypt ERROR! Ret = 0x%x\n", Ret);
        (HI_VOID)HI_MMZ_Free(&stTmpBuf);
        return HI_FAILURE;
    }
    memcpy(pu8OutputData,stTmpBuf.user_viraddr,u32DataSize);
    (HI_VOID)HI_MMZ_Free(&stTmpBuf);
    
    return HI_SUCCESS;
}

HI_S32 csdDecryptDataWithSecretContentKey(HI_UNF_CIPHER_ALG_E                xAlgorithm,
                                        HI_UNF_CIPHER_WORK_MODE_E       xMode,
                                        HI_U8*                          pxR2RCipheredProtectingKeys,
                                  const HI_U8*                          pxCipheredContentKey,
                                        HI_U32                          xCipheredContentKeySize,
                                  const HI_U8*                          pxInitializationVector,
                                        HI_U32                          xInitializationVectorSize,
                                        HI_BOOL                         xRefreshIv,
                                        HI_HANDLE                       xR2RKeyPathHandle,
                                  const HI_U8*                          pxInputData,
                                        HI_U8*                          pxOutputData,
                                        HI_U32                          xDataSize)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_U32  UnitSize = 16;
    HI_MMZ_BUF_S stTmpBuf;

    HI_UNF_ADVCA_ALG_TYPE_E r2rAlg = HI_UNF_ADVCA_ALG_TYPE_TDES;
    
    memset((HI_VOID*)&CipherCtrl,0,sizeof(HI_UNF_CIPHER_CTRL_S));
    switch (xAlgorithm)
    {
        case HI_UNF_ADVCA_ALG_TYPE_AES :
            UnitSize = 16;
            break;
        case HI_UNF_ADVCA_ALG_TYPE_TDES:
            UnitSize = 8;
            break;
        default:
        {
            HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }

    /*ciphered content key should be 16 Bytes long*/
    if ((16 != xCipheredContentKeySize) || (NULL == pxCipheredContentKey))
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    if (NULL == pxR2RCipheredProtectingKeys)
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }
    
    /*IV should be 16 Bytes in AES and 8 Bytes in TDES*/
    if (((HI_UNF_CIPHER_WORK_MODE_CBC  == xMode) || (HI_UNF_CIPHER_WORK_MODE_CTR  == xMode)) && xRefreshIv)
    {
        if ((UnitSize != xInitializationVectorSize) || (NULL == pxInitializationVector))
        {
            HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Parameters Invalid!\n");
            return HI_ERR_CA_SSD_INVALID_PARAM;
        }
    }

    if ((NULL == pxInputData) || (NULL == pxOutputData))
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }
    
    /*the size of the input data block must be a multiple of 8 bytes if it must be encrypted with the TDES algorithm or
     a multiple of 16 bytes if it must be encrypted with the AES algorithm*/
    if (0 != (xDataSize % UnitSize))
    {
        HI_ERR_CA_SSD("CSD Encrypt Data With Clear Text HostKey Parameters Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    if (0 == xR2RKeyPathHandle)
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Key Path Handle Invalid!\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    CipherCtrl.bKeyByCA = HI_TRUE;
    switch (xAlgorithm)
    {
        case HI_UNF_CIPHER_ALG_AES :
        {
            CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
            CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
            CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
            break;
        }
        case HI_UNF_CIPHER_ALG_3DES:
        {
            CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_3DES;
            CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_64BIT;
            CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_DES_2KEY;
            break;
        }
        default:
        {
            HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }

    switch (xMode)
    {
        case HI_UNF_CIPHER_WORK_MODE_ECB:
        case HI_UNF_CIPHER_WORK_MODE_CBC:
        case HI_UNF_CIPHER_WORK_MODE_CTR:
        {
            CipherCtrl.enWorkMode = xMode;
            break;
        }
        default:
        {
            HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Operation Not Supported!\n");
            return HI_ERR_CA_SSD_DEC_FAILED;
        }
    }
    
    memcpy((HI_VOID*)CipherCtrl.u32Key, pxCipheredContentKey, xCipheredContentKeySize);

    if (xRefreshIv)
    {
        CipherCtrl.stChangeFlags.bit1IV = 1;
        memcpy((HI_VOID*)CipherCtrl.u32IV, pxInitializationVector, xInitializationVectorSize);
    }

    /* perform ciphered protecting level 1 */
    //cryptPm.ladder = HI_UNF_ADVCA_KEYLADDER_LEV1;
    //memcpy((HI_VOID*)cryptPm.pDin, pxR2RCipheredProtectingKeys, 16);

    
    Ret = HI_UNF_ADVCA_SetR2RAlg(r2rAlg);//ioctl(g_s32NagraFd, CMD_NAGRA_R2R_SETALG, &r2rAlg);
    Ret |= HI_UNF_ADVCA_SetR2RSessionKey(HI_UNF_ADVCA_KEYLADDER_LEV1, pxR2RCipheredProtectingKeys);//ioctl(g_s32NagraFd, CMD_NAGRA_R2R_CRYPT, &cryptPm);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("CSD Decrypt Data With Secret Content Key Genarate Private Key ERROR! Ret = 0x%x\n", Ret);
        return HI_FAILURE;
    }

    Ret = HI_UNF_CIPHER_ConfigHandle(xR2RKeyPathHandle, &CipherCtrl);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("CSD CIPHER Config Handle ERROR! Ret = 0x%x\n", Ret);
        return HI_FAILURE;
    }

    strncpy(stTmpBuf.bufname, "NagraDecrypt" 13);
    stTmpBuf.bufsize = xDataSize;
    stTmpBuf.overflow_threshold = 100;
    stTmpBuf.underflow_threshold = 0;
    Ret = HI_MMZ_Malloc(&stTmpBuf);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("HI_MMZ_Malloc failed:%x\n",Ret);
        return HI_FAILURE;
    }

    memcpy(stTmpBuf.user_viraddr,pxInputData,xDataSize);

    Ret = HI_UNF_CIPHER_Decrypt(xR2RKeyPathHandle, stTmpBuf.phyaddr, stTmpBuf.phyaddr, xDataSize);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_CA_SSD("CSD CIPHER Decrypt ERROR! Ret = 0x%x\n", Ret);
        (HI_VOID)HI_MMZ_Free(&stTmpBuf);
        return HI_FAILURE;
    }
    memcpy(pxOutputData,stTmpBuf.user_viraddr,xDataSize);
    (HI_VOID)HI_MMZ_Free(&stTmpBuf);

    return HI_SUCCESS;
}

static HI_S32 SSD_DecryptBigBlock_TDESECB( HI_U8 *pu8DataBuf, HI_U32 u32DataLen, const HI_U8 *pu8HostKey, HI_U32 u32HostKeyLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hCipher = 0;     
    HI_U32 u32CryptRound = 0;
    HI_U32 u32RoundDataLength = 0;
    HI_U32 u32Loop = 0;
    HI_U8 *pu8BufTrace = NULL;
    HI_UNF_CIPHER_ATTS_S stCipherAttr = {0};

    if((NULL == pu8DataBuf) || (NULL == pu8HostKey))
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");
        return HI_FAILURE;
    }

#if 0
    s32Ret = HI_UNF_CIPHER_Init();
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_Init error, s32Ret=0x%x\n", s32Ret);
        return HI_FAILURE;
    }
#endif
    
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    s32Ret = HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAttr);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_CreateHandle error, s32Ret=0x%x\n", s32Ret);
        s32Ret = HI_FAILURE;
        goto _CIPHER_DESTROY;
    }

    /* decryption */
    pu8BufTrace = pu8DataBuf;
    u32CryptRound = (u32DataLen +  SSD_CIPHER_MAX_CRYPT_LEN - 1) / SSD_CIPHER_MAX_CRYPT_LEN;
    u32RoundDataLength = SSD_CIPHER_MAX_CRYPT_LEN;    
    
    for(u32Loop = 0; u32Loop < u32CryptRound; u32Loop ++)
    {
        if((0 != (u32DataLen % SSD_CIPHER_MAX_CRYPT_LEN)) && ((u32CryptRound -1) == u32Loop))
        {
            u32RoundDataLength = u32DataLen % SSD_CIPHER_MAX_CRYPT_LEN - u32DataLen % 8;
        }
        
        s32Ret = csdDecryptDataWithClearTextHostKey(HI_UNF_CIPHER_ALG_3DES,
                                                    HI_UNF_CIPHER_WORK_MODE_ECB,
                                                    pu8HostKey,
                                                    u32HostKeyLen,
                                                    NULL, 0, FALSE,
                                                    hCipher,
                                                    pu8BufTrace,
                                                    pu8BufTrace,
                                                    u32RoundDataLength);
        if( HI_SUCCESS != s32Ret )
        {
            HI_ERR_CA_SSD("Failed to decryption.\n");
            s32Ret = HI_FAILURE;
            goto _CIPHER_DESTROY;
        }
        
        pu8BufTrace += u32RoundDataLength;        
    }

_CIPHER_DESTROY:
    if(0 != hCipher)
    {
        (HI_VOID)HI_UNF_CIPHER_DestroyHandle(hCipher);
        hCipher = 0;
    }
#if 0
    (HI_VOID)HI_UNF_CIPHER_DeInit();
#endif

    return s32Ret;
}

static HI_S32 SSD_GetFlashBlockSize(HI_FLASH_TYPE_E enFlashType, HI_U32 *pu32BlockSize)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_Flash_InterInfo_S stFlashInfo;    
    HI_U32 u32Addr = 0;
    HI_U32 u32Len = 0x100000;

    hFlash = HI_Flash_Open(enFlashType, HI_NULL, (HI_U64)u32Addr, (HI_U64)u32Len);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA_SSD("HI_Flash_Open() error.\n");
        return HI_FAILURE;
    }
    
    s32Ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_Flash_GetInfo() error, result %x!\n",s32Ret);
        s32Ret = HI_Flash_DeInit(hFlash);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_CA_SSD("HI_Flash_DeInit() error!\n");    
        }
        return HI_FAILURE;
    }
    
    *pu32BlockSize = stFlashInfo.BlockSize;

    s32Ret = HI_Flash_DeInit(hFlash);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_Flash_DeInit() error!\n");    
        return HI_FAILURE;
    }
    
    return HI_SUCCESS; 
}


/* important:if return HI_FAILURE, function failed, Otherwise function success. */
static HI_S32 SSD_CopyDataFromRamToFlash(HI_FLASH_TYPE_E enFlashType, const HI_U8 *pu8RamBuf, HI_U32 u32DataLen, HI_U32 u32FlashAddr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_U8 *pu8Buf = HI_NULL;
    HI_U32 u32TotalLen;
    HI_U32 u32StartAddr;
    HI_U32 u32Offset = 0;
    HI_U32 u32BlockSize;

    if(HI_NULL == pu8RamBuf)
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");        
        return HI_FAILURE;
    }

    s32Ret = SSD_GetFlashBlockSize(enFlashType, &u32BlockSize);
    if(HI_FAILURE == s32Ret)
    {
        return HI_FAILURE;
    }
    
    u32StartAddr = (u32FlashAddr / u32BlockSize) * u32BlockSize;
    u32TotalLen = u32FlashAddr + u32DataLen -u32StartAddr;
    if(u32TotalLen%u32BlockSize)
    {
        u32TotalLen = (u32TotalLen / u32BlockSize) * u32BlockSize + u32BlockSize;
    }

    hFlash = HI_Flash_Open(enFlashType, HI_NULL, (HI_U64)u32StartAddr, (HI_U64)u32TotalLen);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA_SSD("HI_Flash_Open() error.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    u32Offset = u32FlashAddr - u32StartAddr;
    
    pu8Buf = malloc(u32TotalLen);
    if(HI_NULL == pu8Buf)
    {
        HI_ERR_CA_SSD("malloc failed.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    s32Ret = HI_Flash_Read(hFlash, (HI_U64)0, pu8Buf, u32TotalLen, HI_FLASH_RW_FLAG_RAW);
    if((HI_FAILURE == s32Ret) || (s32Ret != (HI_S32)u32TotalLen))
    {
        HI_ERR_CA_SSD("HI_Flash_Read() failed.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    memcpy(pu8Buf + u32Offset, pu8RamBuf, u32DataLen);

    s32Ret = HI_Flash_Erase(hFlash, (HI_U64)0, (HI_U64)u32TotalLen);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("HI_Flash_Erase() error.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;        
    }

    s32Ret = HI_Flash_Write(hFlash, (HI_U64)0, pu8Buf, u32TotalLen, HI_FLASH_RW_FLAG_RAW);
    if((HI_FAILURE == s32Ret) || (s32Ret != (HI_S32)u32TotalLen))
    {
        HI_ERR_CA_SSD("HI_Flash_Write() failed.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }
    
__QUIT:
    if(HI_NULL != pu8Buf)
    {
        free(pu8Buf);
        pu8Buf = NULL;
    }

    if(HI_INVALID_HANDLE != hFlash)
    {
        (HI_VOID)HI_Flash_DeInit(hFlash);
    }
    
    return s32Ret;
}

/* return HI_FAILURE, if failed. */
static HI_S32 SSD_CopyDataFromFlashToRam(HI_FLASH_TYPE_E enFlashType, HI_U32 u32FlashAddr, HI_U32 u32DataLen, HI_U8 * pu8RamAddr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_U8 *pu8Buf = HI_NULL;
    HI_U32 u32TotalLen;
    HI_U32 u32StartAddr;
    HI_U32 u32Offset = 0;
    HI_U32 u32BlockSize;

    if(NULL== pu8RamAddr)
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");        
        return HI_FAILURE;
    }
    
    s32Ret = SSD_GetFlashBlockSize(enFlashType, &u32BlockSize);
    if(HI_FAILURE == s32Ret)
    {
        return HI_FAILURE;
    }
    
    u32StartAddr = (u32FlashAddr / u32BlockSize) * u32BlockSize;
    u32TotalLen = u32FlashAddr + u32DataLen -u32StartAddr;
    if(u32TotalLen % u32BlockSize)
    {
        u32TotalLen = (u32TotalLen / u32BlockSize) * u32BlockSize + u32BlockSize;
    }

    hFlash = HI_Flash_Open(enFlashType, HI_NULL, (HI_U64)u32StartAddr, (HI_U64)u32TotalLen);
    if(HI_INVALID_HANDLE == hFlash)
    {
        HI_ERR_CA_SSD("HI_Flash_Open() error.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    u32Offset = u32FlashAddr - u32StartAddr;
    pu8Buf = malloc(u32TotalLen);
    if(HI_NULL == pu8Buf)
    {
        HI_ERR_CA_SSD("malloc failed.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    s32Ret = HI_Flash_Read(hFlash, (HI_U64)0, pu8Buf, u32TotalLen, HI_FLASH_RW_FLAG_RAW);
    if((HI_FAILURE == s32Ret) || (s32Ret != (HI_S32)u32TotalLen))
    {
        HI_ERR_CA_SSD("HI_Flash_Read() failed.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    memcpy(pu8RamAddr, pu8Buf + u32Offset, u32DataLen);
            
__QUIT:
    if(HI_NULL != pu8Buf)
    {
        free(pu8Buf);
        pu8Buf = NULL;
    }

    if(HI_INVALID_HANDLE != hFlash)
    {
        (HI_VOID)HI_Flash_DeInit(hFlash);        
    }
    
    return s32Ret;
}


static HI_S32 SSD_DecryptGlobalKey(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hCipher = 0;
    HI_U8 u8GlobalKeyBUf[16];
    HI_UNF_CIPHER_ATTS_S stCipherAttr = {0};

    
    /* Copy global key from flash to ram*/
    s32Ret = SSD_CopyDataFromFlashToRam(NAGRA_SSD_GLOBALKEY_FLASH_TYPE, NAGRA_GLOBAL_KEY_ADDR_FLASH, NAGRA_GLOBAL_KEY_SIZE, u8GlobalKeyBUf);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("Copyfromflashtoram failed, glbKey.\n");
        return HI_FAILURE;        
    }

    /* decrypt global key using key ladder */
#if 0
    s32Ret = HI_UNF_CIPHER_Init();
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_Init error, s32Ret=0x%x\n", s32Ret);
        return HI_FAILURE;
    }
#endif

    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    s32Ret = HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAttr);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_CreateHandle error, s32Ret=0x%x\n", s32Ret);
        s32Ret =  HI_FAILURE;
        goto _Cipher_Destroy;
    }

   s32Ret = csdDecryptDataWithSecretContentKey(HI_UNF_CIPHER_ALG_3DES,
                                                HI_UNF_CIPHER_WORK_MODE_ECB,
                                                g_csd_xR2RCipheredProtectingKeys,
                                                g_csd_pxCipheredContentKey,
                                                16,
                                                NULL, 
                                                0,
                                                FALSE,
                                                hCipher,
                                                u8GlobalKeyBUf,
                                                u8GlobalKeyBUf,
                                                sizeof(u8GlobalKeyBUf));
    if( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("failed to decrypt global key.\n");       
        s32Ret =  HI_FAILURE;
        goto _Cipher_Destroy;
    }    

    s32Ret = memcmp(u8GlobalKeyBUf, u8GlobalKeyBUf + 8, 8);
    if(0 == s32Ret)
    {
        HI_ERR_CA_SSD("Invalid global key, first 8 Bytes == last 8 bytes.\n");
        s32Ret =  HI_FAILURE;
        goto _Cipher_Destroy;
    }
    else
    {
        s32Ret = HI_SUCCESS;
    }

    memcpy(pu8GlobalKey, u8GlobalKeyBUf, 16);
    
_Cipher_Destroy:  
    if(0 != hCipher)
    {        
        (HI_VOID)HI_UNF_CIPHER_DestroyHandle(hCipher);    
        hCipher = 0;
    }          
#if 0
    (HI_VOID)HI_UNF_CIPHER_DeInit();
#endif

    return s32Ret;
}

static HI_S32 SSD_CA_Mmap(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;    
    HI_U8 *pu8CAMem=NULL;

    CHECK_SSD_CA_MMAP();
    
    if(hFd < 0)
    {
        /* dev not opened yet, so open it */
        hFd= open (dev, O_RDWR | O_SYNC);
        if (hFd < 0)
        {
            HI_ERR_CA_SSD("memmap():open %s error!\n", dev);
            return HI_FAILURE;
        }
    }
        
    pu8CAMem = (HI_U8 *)mmap ((HI_VOID *)CA_MEM_ADDR, CA_MEM_LEN, PROT_READ|PROT_WRITE, MAP_PRIVATE, hFd, (off_t)CA_MEM_ADDR);
    if ((HI_U8 *)CA_MEM_ADDR != pu8CAMem)
    {
        HI_ERR_CA_SSD("mmap @ 0x%x error!\n", CA_MEM_ADDR);
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }
    
    memset(pu8CAMem, 0, CA_MEM_LEN);

__QUIT:
    if((NULL != pu8CAMem) && (HI_FAILURE == s32Ret))
    {
        (HI_VOID)munmap(pu8CAMem, CA_MEM_LEN);
        pu8CAMem = NULL;
    }

    if(hFd >= 0)
    {
        close(hFd);
        hFd = -1;
    }

    g_SsdCAMapFlag = 1;
   return s32Ret;
}

static HI_S32 SSD_CA_Munmap(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
    CHECK_SSD_CA_MUNMAP();
    
    s32Ret = munmap((HI_VOID *)CA_MEM_ADDR, CA_MEM_LEN);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("munmap failed.\n");
        s32Ret = HI_FAILURE;
    }
    
    g_SsdCAMapFlag = 0;    
    
    return s32Ret;
}

static HI_S32 SSD_Copy_DA1_DA2(HI_VOID)
{
    HI_S32 s32Ret;
   
    /* DA1 */
    s32Ret = SSD_CopyDataFromFlashToRam(NAGRA_SSD_DA1_FLASH_TYPE, NAGRA_DA1_ADDR_FLASH, NAGRA_DA1_SIZE, (HI_U8 *)NAGRA_DA1_ADDR_DDR);    
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("Copyfromflashtoram failed, da1.\n");  
        return HI_FAILURE;
    }

    /* DA2 */
    s32Ret = SSD_CopyDataFromFlashToRam(NAGRA_SSD_DA2_FLASH_TYPE, NAGRA_DA2_ADDR_FLASH, NAGRA_DA2_SIZE, (HI_U8 *)NAGRA_DA2_ADDR_DDR);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("Copyfromflashtoram failed, da2.\n");        
        return HI_FAILURE;        
    }

    return HI_SUCCESS;
}

HI_S32 HI_SSD_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    HI_SSD_LOCK();
    
    if ( 1 == g_SsdInitFlag )
    {
        HI_SSD_UNLOCK();
        return HI_SUCCESS;
    }
    
    s32Ret = SSD_CA_Mmap();
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("CA MMAP Failed.\n");
        HI_SSD_UNLOCK();        
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_CIPHER_Init();
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("Cipher init Failed.\n");
        HI_SSD_UNLOCK();        
    }

    s32Ret = csdInitialize();
    if (HI_SUCCESS != s32Ret)
    {
        s32Ret = SSD_CA_Munmap();
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_CA_SSD("SSD_CA_Munmap Failed.\n");
        }

        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }
    
    /* Copy DA1,DA2 from flash to RAM */
    s32Ret = SSD_Copy_DA1_DA2();
    if( HI_SUCCESS !=  s32Ret)
    {
        s32Ret = SSD_CA_Munmap();
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_CA_SSD("SSD_CA_Munmap Failed.\n");
        }
    
        (HI_VOID)csdTerminate();
        HI_SSD_UNLOCK();    
        return HI_FAILURE;
    }

    /* Decrypt Globak Key using key ladder */
    s32Ret  = SSD_DecryptGlobalKey();    
    if(HI_SUCCESS != s32Ret)
    {
        s32Ret = SSD_CA_Munmap();
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_CA_SSD("SSD_CA_Munmap Failed.\n");
        }
    
        (HI_VOID)csdTerminate();
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }   
    
    g_SsdInitFlag = 1;
    HI_SSD_UNLOCK();
    
    return HI_SUCCESS;
}

HI_S32 HI_SSD_DeInit(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    HI_SSD_LOCK();    
    if ( 0 == g_SsdInitFlag )
    {
        HI_SSD_UNLOCK();
        return HI_SUCCESS;
    }

    s32Ret = HI_UNF_CIPHER_DeInit();
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_CA_SSD("Cipher deinit Failed.\n");
        g_SsdInitFlag = 0;
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }

    (HI_VOID)csdTerminate();

    s32Ret = SSD_CA_Munmap();
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("CA Munmap failed.\n");  
        g_SsdInitFlag = 0;
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }

    g_SsdInitFlag = 0;    

    HI_SSD_UNLOCK();   

    return HI_SUCCESS;
}

HI_S32 HI_SSD_DecryptUpgradeImage(HI_U8 *pu8DataBuf, HI_U32 u32DataLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hCipher = 0;
    HI_U32 u32CryptRound = 0;
    HI_U32 u32RoundDataLength = 0;
    HI_U32 u32Loop = 0;
    HI_U8 *pu8BufTrace = NULL;
    HI_UNF_CIPHER_ATTS_S stCipherAttr = {0};

    if((NULL == pu8DataBuf) || (0 == u32DataLen) || (0xFFFFFFFF == u32DataLen))
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");
        return HI_ERR_CA_SSD_INVALID_PARAM;
    }

    CHECK_SSD_INIT();
    HI_SSD_LOCK();

#if 0
    s32Ret = HI_UNF_CIPHER_Init();
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_Init error, s32Ret=0x%x\n", s32Ret);
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }
#endif

    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    s32Ret = HI_UNF_CIPHER_CreateHandle(&hCipher, &stCipherAttr);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_CA_SSD("HI_UNF_CIPHER_CreateHandle error, s32Ret=0x%x\n", s32Ret);
        s32Ret = HI_FAILURE;
        goto _CIPHER_DESTROY;
    }

    pu8BufTrace = pu8DataBuf;
    u32CryptRound = (u32DataLen +  SSD_CIPHER_MAX_CRYPT_LEN - 1) / SSD_CIPHER_MAX_CRYPT_LEN;
    u32RoundDataLength = SSD_CIPHER_MAX_CRYPT_LEN;    
    
    for(u32Loop = 0; u32Loop < u32CryptRound; u32Loop++)
    {
        if((0 != (u32DataLen % SSD_CIPHER_MAX_CRYPT_LEN)) && ((u32CryptRound -1) == u32Loop))
        {
            u32RoundDataLength = u32DataLen % SSD_CIPHER_MAX_CRYPT_LEN - u32DataLen % 8;
        }

        s32Ret = csdDecryptDataWithClearTextHostKey(HI_UNF_CIPHER_ALG_3DES,
                                                    HI_UNF_CIPHER_WORK_MODE_ECB,
                                                    pu8GlobalKey,
                                                    sizeof(pu8GlobalKey),
                                                    NULL, 0, FALSE,
                                                    hCipher,
                                                    pu8BufTrace,
                                                    pu8BufTrace,
                                                    u32RoundDataLength);
        if( HI_SUCCESS != s32Ret )
        {
            HI_ERR_CA_SSD("Failed to decryption.\n");
            s32Ret = HI_FAILURE;
            goto _CIPHER_DESTROY;
        }
        
        pu8BufTrace += u32RoundDataLength;        
    }

_CIPHER_DESTROY:
    if(0 != hCipher)
    {
        (HI_VOID)HI_UNF_CIPHER_DestroyHandle(hCipher);
        hCipher = 0;
    }

#if 0
    (HI_VOID)HI_UNF_CIPHER_DeInit();
#endif

    HI_SSD_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SSD_Authenticate(HI_U8 *pu8Buf, HI_U32 u32Size, HI_SSD_BlockInfo_S *pstAuthBlockInfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    TSsdCheckStatus verifyResult = 0;

#ifndef HI_ADVCA_FUNCTION_RELEASE
    TSsdCheckStatus u32Status; 
#endif

    CHECK_SSD_INIT();
    HI_SSD_LOCK();

    if( (NULL == pu8Buf) || (NULL == pstAuthBlockInfo))
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }

    if ( (0 == u32Size ) || (0xffffffff == u32Size))
    {
        HI_ERR_CA_SSD("Invalid param, u32Size cann't be zero or 0xffffffff.\n");
        HI_SSD_UNLOCK();        
        return HI_FAILURE;
    }

#ifdef HI_ADVCA_FUNCTION_RELEASE
    verifyResult = ssaSsdCheck(pu8Buf, u32Size, NULL, NULL);
    if ( SSD_CHECK_VALID_NO_ERROR != verifyResult )
    {
        HI_SSD_UNLOCK();        
        return HI_FAILURE;
     }
#else
    verifyResult = ssaSsdCheck(pu8Buf, u32Size, NULL, NULL, &u32Status);
    if ( SSD_CHECK_VALID_NO_ERROR != verifyResult )
    {
        HI_ERR_CA_SSD("SSD Check failed, status [0x%x].\n", u32Status);
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }
#endif

    pstAuthBlockInfo->u32BlockOffset = SSD_SIG_HEADER_SIZE;
    pstAuthBlockInfo->u32BlockSize =( ( ( pu8Buf[0] << 24 ) & 0xff000000)
                                     |( ( pu8Buf[1] << 16 ) & 0x00ff0000)
                                     |( ( pu8Buf[2] << 8 ) & 0x0000ff00)
                                     |(   pu8Buf[3] & 0x000000ff)) - SSD_SIG_HEADER_SIZE;

    HI_SSD_UNLOCK();
    
    return HI_SUCCESS;
}

HI_S32 HI_SSD_GetDA2Address(HI_FLASH_TYPE_E *penFlashType , HI_U32 *pu32DA2Addr, HI_U32 *pu32DA2Size)
{
    CHECK_SSD_INIT();
    
    HI_SSD_LOCK();
    
    if((NULL == penFlashType) || (NULL == pu32DA2Addr) || (NULL == pu32DA2Size))
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }

    *penFlashType = NAGRA_SSD_DA2_FLASH_TYPE;
    *pu32DA2Addr = (HI_U32)NAGRA_DA2_ADDR_FLASH;
    *pu32DA2Size = (HI_U32)NAGRA_DA2_SIZE;

    HI_SSD_UNLOCK();

    return HI_SUCCESS;
}


HI_S32 HI_SSD_DA2_Process(const HI_U32 *pu32UpgrdDA2Addr, HI_U32 u32UpgrdDA2Size)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 *pu8DA2Buffer = NULL;    

    CHECK_SSD_INIT();
    
    HI_SSD_LOCK();
    
    if( NULL == pu32UpgrdDA2Addr)
    {
        HI_ERR_CA_SSD("Invalid param, NULL pointer.\n");
        HI_SSD_UNLOCK();
        return HI_FAILURE;
    }

    if( (NAGRA_DA2_SIZE < u32UpgrdDA2Size) || ( 0 == u32UpgrdDA2Size ) || ( 0xffffffff == u32UpgrdDA2Size ))
    {
        HI_ERR_CA_SSD("Invalid input da2 size [0x%x].\n", u32UpgrdDA2Size);
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }
    
    pu8DA2Buffer = (HI_U8 *)malloc(NAGRA_DA2_SIZE);
    if(NULL == pu8DA2Buffer)
    {
        HI_ERR_CA_SSD("malloc failed.\n");            
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }

    s32Ret = SSD_CopyDataFromFlashToRam(NAGRA_SSD_DA2_FLASH_TYPE, NAGRA_DA2_ADDR_FLASH, NAGRA_DA2_SIZE, pu8DA2Buffer);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("Copyfromflashtoram failed, da2.\n");        
        goto __QUIT;
    }

    /* compare, if DA2 in the flash is the same with that in the upgrade-data */
    s32Ret = memcmp((HI_U8 *)pu32UpgrdDA2Addr, pu8DA2Buffer, u32UpgrdDA2Size);
    if(0 == s32Ret)
    {
        HI_WARN_CA_SSD("Memcmp, Same, DA2 need not to be upgraded.\n");
        goto __QUIT;
    }

    /* write DA2 in the upgrade-data to flash */
    s32Ret = SSD_CopyDataFromRamToFlash(NAGRA_SSD_DA2_FLASH_TYPE, (HI_U8 *)pu32UpgrdDA2Addr, u32UpgrdDA2Size, NAGRA_DA2_ADDR_FLASH);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("SSD_CopyDataFromRamToFlash failed, da2.\n");
        goto __QUIT;
    }

    /* verify ,write flash success or not */    
    s32Ret = SSD_CopyDataFromFlashToRam(NAGRA_SSD_DA2_FLASH_TYPE, NAGRA_DA2_ADDR_FLASH, u32UpgrdDA2Size, pu8DA2Buffer);
    if(HI_FAILURE == s32Ret)
    {
        HI_ERR_CA_SSD("Copyfromflashtoram failed, da2.\n");        
        goto __QUIT;
    }
    
    s32Ret = memcmp((HI_U8 *)pu32UpgrdDA2Addr, pu8DA2Buffer, u32UpgrdDA2Size);
    if(0 != s32Ret)
    {
        HI_ERR_CA_SSD("Write flash failed. da2.\n");
        s32Ret = HI_FAILURE;
        goto __QUIT;
    }
    
__QUIT:
    
    if(NULL != pu8DA2Buffer)
    {
        free(pu8DA2Buffer);
        pu8DA2Buffer = NULL;
    }
    
    HI_SSD_UNLOCK();
    return s32Ret;
}

