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
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include "hi_type.h"
#include "hi_unf_advca.h"
#include "hi_unf_ecs.h"
#include "hi_flash.h"
#include "sample_ca_common.h"

/***************************** Macro Definition ******************************/
#define BLPK_SPACE_OFFSET  0x1800
#define BLPK_PARAM_OFFSET  0x304
#define BLPK_SPACE_LEN     0x20
#define BLPK_LEN           0x10
#define BOOT_IMG_LEN       0x80000
#define SIGNATURE_LEN	   0x100
/*************************** Structure Definition ****************************/

static HI_U8 g_BootImg[BOOT_IMG_LEN] = {0};

static HI_U8 g_BLPK[BLPK_LEN] = {0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f};

/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc,HI_CHAR** argv)
{
	HI_HANDLE       hFlash;
	HI_U8           *pBlpk;
    HI_U8           *pBootImage;
	HI_U8           EncryptBlpk[BLPK_LEN];
	HI_U8           BlpkClear;
	HI_S32          Ret;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_HANDLE       blpkHandle = 0;
    HI_U8           u8CheckedAreaOffset[4] = {0};
    HI_U8           u8CheckedAreaLen[4] = {0};
    HI_U32          u32CheckedAreaOffset = 0;
    HI_U32          u32CheckedAreaLen = 0;
    HI_U32          Testcached = 0;
    HI_U32          cipherAddrPhy;
    HI_U8           *pCipherAddrVir;
    HI_U32          cipherOutAddrPhy;
    HI_U8           *pCipherOutAddrVir;
    HI_S32          blpkFd = -1;
    HI_S32          len = 0;
    HI_U32          i = 0;
    HI_UNF_CIPHER_ATTS_S stCipherAttr;

    memset(&stCipherAttr, 0, sizeof(stCipherAttr));
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;

    Ret = HI_SYS_Init();
    if (HI_FAILURE == Ret)
	{
	    HI_DEBUG_ADVCA("HI_SYS_Init Failed:%#x\n",Ret);
		return Ret;
	}

	/* open flash */
#ifdef ANDROID
    hFlash = HI_Flash_OpenByName("fastboot");
#else
    hFlash = HI_Flash_OpenByName("boot");
#endif
    if (0xffffffff == hFlash)
    {
        HI_DEBUG_ADVCA("HI_Flash_Open failed\n");
    	Ret = HI_FAILURE;
        goto _SYS_DEINIT;
    }

    /* read all valid data of boot partition  */
    Ret = HI_Flash_Read(hFlash,(HI_U64)0, g_BootImg, BOOT_IMG_LEN, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == Ret)
    {
        HI_DEBUG_ADVCA("HI_Flash_Read Failed:%#x\n",Ret);
        goto _FLASH_CLOSE;
    }

    /*read the offset and length of the param area*/
    memcpy(u8CheckedAreaOffset, g_BootImg + BLPK_PARAM_OFFSET, 4);
    memcpy(u8CheckedAreaLen, g_BootImg + BLPK_PARAM_OFFSET + 8, 4);

    u32CheckedAreaOffset = u8CheckedAreaOffset[0];
    u32CheckedAreaOffset += u8CheckedAreaOffset[1] << 8;
    u32CheckedAreaOffset += u8CheckedAreaOffset[2] << 16;
    u32CheckedAreaOffset += u8CheckedAreaOffset[3] << 24;

    u32CheckedAreaLen = u8CheckedAreaLen[0];
    u32CheckedAreaLen += u8CheckedAreaLen[1] << 8;
    u32CheckedAreaLen += u8CheckedAreaLen[2] << 16;
    u32CheckedAreaLen += u8CheckedAreaLen[3] << 24;

    HI_DEBUG_ADVCA("u32CheckedAreaOffset = %x, u32CheckedAreaLen = %x\n", u32CheckedAreaOffset, u32CheckedAreaLen);

    if (0 != (u32CheckedAreaLen % 0x100))
    {
        HI_DEBUG_ADVCA("checked area length invalid!\n");
        Ret = HI_FAILURE;
        goto _FLASH_CLOSE;
    }

    /* read blpk and its clear flag */
    pBlpk = g_BootImg + BLPK_SPACE_OFFSET; 
    pBootImage = g_BootImg + BLPK_SPACE_OFFSET + u32CheckedAreaOffset;
    BlpkClear = pBlpk[BLPK_LEN];
    if (0x48 == BlpkClear)
    {
        HI_DEBUG_ADVCA("blpk is already encrypted\n");
        (HI_VOID)HI_Flash_Close(hFlash);
        return HI_SUCCESS;
    }

    HI_DEBUG_ADVCA("clear key:");
    for (i = 0; i < BLPK_LEN; i++)
    {
        HI_DEBUG_ADVCA("%02x ", g_BLPK[i]);
    }
    HI_DEBUG_ADVCA("\n");
    
    Ret = HI_UNF_CIPHER_Init();
    if (HI_SUCCESS != Ret)
	{
	    HI_DEBUG_ADVCA("HI_UNF_CIPHER_Init failed:%#x\n",Ret);
		goto _FLASH_CLOSE;
	}

    Ret = HI_UNF_CIPHER_CreateHandle(&blpkHandle, &stCipherAttr);
    if (HI_SUCCESS != Ret)
	{
	    HI_DEBUG_ADVCA("HI_UNF_CIPHER_CreateHandle failed:%#x\n",Ret);
		goto _CIPHER_CLOSE;
	}
    
    CipherCtrl.bKeyByCA = HI_FALSE;
    CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
    CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    CipherCtrl.stChangeFlags.bit1IV = 1;

	memcpy(CipherCtrl.u32Key, g_BLPK, BLPK_LEN);
	memset(CipherCtrl.u32IV, 0, 16);

    Ret = HI_UNF_CIPHER_ConfigHandle(blpkHandle, &CipherCtrl);
    if (HI_SUCCESS != Ret)
	{
	    HI_DEBUG_ADVCA("HI_UNF_CIPHER_ConfigHandle failed:%#x\n",Ret);
		goto _CIPHER_DESTROY;
	}

    /*************************************************************/
    cipherAddrPhy = (HI_U32)HI_MMZ_New(BOOT_IMG_LEN, 0, NULL, "cipherIn");
    if (0 == cipherAddrPhy)
    {
        HI_DEBUG_ADVCA("get phyaddr for Input!\n");
        Ret = HI_FAILURE;
        goto _CIPHER_DESTROY;
    }

    pCipherAddrVir = HI_MMZ_Map(cipherAddrPhy, Testcached);

    /*************************************************************/
    cipherOutAddrPhy = (HI_U32)HI_MMZ_New(BOOT_IMG_LEN, 0, NULL, "cipherOut");
    if (0 == cipherOutAddrPhy)
    {
        HI_DEBUG_ADVCA("get phyaddr for Output!\n");
        Ret = HI_FAILURE;
        goto _CIPHER_DESTROY;
    }

    pCipherOutAddrVir = HI_MMZ_Map(cipherOutAddrPhy, Testcached);

    /*************************************************************/
    memcpy(pCipherAddrVir, pBootImage, u32CheckedAreaLen);
    memset(pCipherOutAddrVir, 0, BOOT_IMG_LEN);

    Ret = HI_UNF_CIPHER_Encrypt(blpkHandle, cipherAddrPhy, cipherOutAddrPhy, u32CheckedAreaLen);
    if (HI_SUCCESS != Ret)
	{
	    HI_DEBUG_ADVCA("HI_UNF_CIPHER_Encrypt failed:%#x\n",Ret);
		goto _MMZ_DELETE;
	}

	/* encrypt blpk */
    Ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed:%#x\n",Ret);
        goto _MMZ_DELETE;
    }

    Ret = HI_UNF_ADVCA_EncryptSWPK(g_BLPK, EncryptBlpk);
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_EncryptSWPK failed:%#x\n",Ret);
        goto _ADVCA_DEINIT;
    }

    HI_DEBUG_ADVCA("encrypted key:");
    for (i = 0; i < BLPK_LEN; i++)
    {
        HI_DEBUG_ADVCA("%02x ", EncryptBlpk[i]);
    }
    HI_DEBUG_ADVCA("\n");
    
	/* write encrypted blpk and set flag*/
	memcpy(pBlpk, EncryptBlpk, BLPK_LEN);
    pBlpk[BLPK_LEN] = BlpkClear = 0x48;
    memcpy(pBootImage, pCipherOutAddrVir, u32CheckedAreaLen);

	Ret = HI_Flash_Write(hFlash, 0, g_BootImg, BOOT_IMG_LEN, HI_FLASH_RW_FLAG_ERASE_FIRST);
	if (HI_FAILURE == Ret)
	{
	    HI_DEBUG_ADVCA("HI_Flash_Write Failed:%#x\n",Ret);
        goto _ADVCA_DEINIT;
	}

    Ret = HI_SUCCESS;
#ifdef ANDROID
    blpkFd = open ("blpk.bin", O_RDWR | O_CREAT, 0666);
#else
    blpkFd = open ("blpk.bin", O_RDWR | O_CREAT);
#endif
    if (blpkFd < 0) 
    {
        HI_DEBUG_ADVCA("open blpk file ERROR!\n");
    	goto _ADVCA_DEINIT;
    }

    len = write(blpkFd, g_BootImg, BLPK_SPACE_OFFSET + BLPK_SPACE_LEN + u32CheckedAreaLen + SIGNATURE_LEN);
    if (0 == len)
    {
        HI_DEBUG_ADVCA("write to blpk.bin file FAIL!\n");
    }

    close(blpkFd);

_ADVCA_DEINIT:
    (HI_VOID)HI_UNF_ADVCA_DeInit();

_MMZ_DELETE:
    (HI_VOID)HI_MMZ_Unmap(cipherOutAddrPhy);
    (HI_VOID)HI_MMZ_Delete(cipherOutAddrPhy);
    
    (HI_VOID)HI_MMZ_Unmap(cipherAddrPhy);
    (HI_VOID)HI_MMZ_Delete(cipherAddrPhy);

_CIPHER_DESTROY:
    (HI_VOID)HI_UNF_CIPHER_DestroyHandle(blpkHandle);

_CIPHER_CLOSE:
    (HI_VOID)HI_UNF_CIPHER_DeInit();
    
_FLASH_CLOSE:
	(HI_VOID)HI_Flash_Close(hFlash);

_SYS_DEINIT:
    (HI_VOID)HI_SYS_DeInit();

    if (HI_SUCCESS == Ret)
    {
        HI_DEBUG_ADVCA("encrypt blpk SUCCESS!\n");
    }
    else
    {
        HI_DEBUG_ADVCA("encrypt blpk FAIL!\n");
    }

    return Ret;
}

