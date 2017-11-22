/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : cmd_authenticate.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 204-09-19
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef HI_ADVCA_FUNCTION_RELEASE

#ifndef HI_MINIBOOT_SUPPORT
#include "ca_authenticate.h"
#include "hi_unf_cipher.h"
#include "hi_unf_otp.h"
#include "hi_unf_advca.h"
#include "ca_common.h"

extern HI_U32 g_EnvFlashAddr;
extern HI_U32 g_EnvFlashPartionSize;
extern HI_U32 g_EnvFlashPartionSize;
extern HI_U8  g_customer_blpk[16];
extern HI_U8  g_customer_rsa_public_key_N[256];
extern HI_U32  g_customer_rsa_public_key_E;

#define MAX_DATA_LEN (1024*1024 - 16) //the max data length for encryption / decryption

#ifndef HI_ADVCA_TYPE_VERIMATRIX
U_BOOT_CMD(CXSecSystemBoot, 1, 1, HI_CA_AuthenticateEntry, "Conax CA security system booting", "eg: CX_SecSystemBoot");

/* special signing test */
#ifdef CA_CMD_SIGN_TYPE_SPECIAL_TEST
static HI_S32 CA_Special_BurnFlashName(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_U32 addr = 0;

    if (argc != 3)
    {
        HI_SIMPLEINFO_CA( "ca_special_burnflashname  - burn DDR image to  flash_patition_name, for example: ca_special_burnflashname  DDRAddress FlashPartition (eg: ca_special_burnflashname 1000000 kernel)\n\n");
        return 0;
    }

    addr = simple_strtoul(argv[1], NULL, 16);
    HI_DEBUG_CA("burn DDR address 0x%x  to flash area %s\n",addr,argv[2]);

    CA_ASSERT(HI_CA_EncryptDDRImageAndBurnFlashName((HI_U8*)addr,(HI_U8*)argv[2]),ret);
    HI_DEBUG_CA("ca_special_burnflashname success\n");

    return ret;
}
U_BOOT_CMD(ca_special_burnflashname,3,1,CA_Special_BurnFlashName,\
"Encrypt DDR image with R2R Key-ladder and burn DDR image into flash", "ca_special_burnflashname  DDRAddress FlashPartition (eg: ca_special_burnflashname 1000000 kernel)");

HI_S32 CA_Special_BurnFlashNameByLen(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_U32 addr = 0;
    HI_U32 len = 0;
    HI_U32 FlashWriteSize = 0;
    HI_U8* pImageDDRAddress = NULL;
    if (argc != 4)
    {
        HI_SIMPLEINFO_CA( "ca_special_burnflashnamebylen  - burn DDR image to  flash_patition_name, for example: ca_special_burnflashnamebylen  DDRAddress ImageLen FlashPartition (eg: ca_special_burnflashnamebylen 1000000 80000 logo)\n");
        return 0;
    }
    addr = simple_strtoul(argv[1], NULL, 16);
    pImageDDRAddress = (HI_U8*)addr;
    len =   simple_strtoul(argv[2], NULL, 16);
    len =  (len + NAND_PAGE_SIZE - 1)& (~(NAND_PAGE_SIZE -1) );
    HI_DEBUG_CA("burn DDR address 0x%x  with len = 0x%x to flash area %s\n",addr,len ,argv[3]);

    CA_ASSERT(HI_CA_EncryptDDRImageAndBurnFlashNameByLen(pImageDDRAddress,len,argv[3]),ret);
    HI_DEBUG_CA("ca_special_burnflashnamebylen success\n");
    return ret;
}
U_BOOT_CMD(ca_special_burnflashnamebylen,4,1,CA_Special_BurnFlashNameByLen,\
"Encrypt DDR image with R2R Key-ladder and burn DDR image into flash", "ca_special_burnflashnamebylen  DDRAddress ImageLen FlashPartition (eg: ca_special_burnflashnamebylen 1000000 80000 logo)");



HI_S32 CA_DecryptFlashImage2DDRTest(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    if (argc != 2)
    {
        HI_SIMPLEINFO_CA( "ca_decryptflashpartition  - decrypt flash_patition_name to DDR, for example: DecryptFlashPartition kernel\n");
        return 0;
    }

    HI_DEBUG_CA("HI_CA_DecryptFlashImage2DDR %s\n",argv[1]);
    CA_ASSERT(HI_CA_DecryptFlashImage2DDR((HI_U8*)argv[1]),ret);
    HI_DEBUG_CA("HI_CA_DecryptFlashImage2DDR success\n");

    return ret;
}
U_BOOT_CMD(ca_decryptflashpartition,2,1,CA_DecryptFlashImage2DDRTest,"decrypt flash_patition_name to DDR", "eg:ca_decryptflashpartition kernel");



HI_S32 CA_Special_FlashAuthenticateDebug(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    if (argc != 2)
    {
        HI_SIMPLEINFO_CA( "ca_special_verify  - ca_special_verify flash_patition_name, for example: ca_special_verify bootpara\n");
        return 0;
    }

    HI_DEBUG_CA("CA_FlashAuthenticate %s\n",argv[1]);
    CA_ASSERT(HI_CA_FlashAuthenticateByName((HI_U8*)argv[1], NULL), ret);
    HI_DEBUG_CA("ca_special_verify success\n");
    return ret;
}
U_BOOT_CMD(ca_special_verify, 2, 1, CA_Special_FlashAuthenticateDebug, \
"ca_special_verify flash_patition_name", "eg: ca_special_verify bootpara");



HI_S32 CA_Special_FlashAuthenticateAddrDebug(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_U32 addr = 0;
    HI_U32 ImgInDDRAddress = 0;

    if (argc != 2)
    {
        HI_SIMPLEINFO_CA("ca_special_verifyaddr- ca_special_verifyaddr flash_patition_Addr, for example: ca_special_verifyaddr 0x100000\n");
        return 0;
    }

    addr = simple_strtoul(argv[1], NULL, 16);
    HI_DEBUG_CA("HI_CA_FlashAuthenticateByAddr 0x%X\n",addr);

    CA_ASSERT(HI_CA_FlashAuthenticateByAddr(addr,HI_FALSE,&ImgInDDRAddress),ret);
    HI_DEBUG_CA("ca_special_verifyaddr success\n");

    return ret;
}
U_BOOT_CMD(ca_special_verifyaddr,2,1,CA_Special_FlashAuthenticateAddrDebug,"ca_special_verifyaddr flash_patition_Addr", "eg: ca_special_verifyaddr 0x100000");



HI_S32 CA_Special_AuthenticateBootParaDebug(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    if (argc != 1)
    {
        HI_SIMPLEINFO_CA("ca_special_verifybootargs- verify bootargs, for example: ca_special_verifybootargs\n");
        return 0;
    }

    ret = HI_CA_AuthenticateBootPara();
    HI_DEBUG_CA("ca_special_verifybootargs success\n");
    return ret;
}
U_BOOT_CMD(ca_special_verifybootargs,1,1,CA_Special_AuthenticateBootParaDebug,"verify bootargs", "eg: ca_special_verifybootargs");
#endif /* endif CA_CMD_SIGN_TYPE_SPECIAL_TEST */

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

HI_VOID compare_hex(char *title, HI_U8 *pu8Src, HI_U8 *pu8Dst, HI_U32 u32Length)
{
    HI_U32 i;

    for(i = 0; i < u32Length; i++)
    {
        if(pu8Src[i] != pu8Dst[i])
        {
           HI_SIMPLEINFO_CA("\033[0;31m" "%s failed!\n" "\033[0m", title);
           return;
        }
    }
    HI_SIMPLEINFO_CA("%s success!\n", title);
    return;
}

//test for AES CBC MAC

HI_S32 cipher_calcmac_test(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{

    HI_U8 T[16];
    HI_U8 M[64] = {
        0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
        0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a,
        0xae, 0x2d, 0x8a, 0x57, 0x1e, 0x03, 0xac, 0x9c,
        0x9e, 0xb7, 0x6f, 0xac, 0x45, 0xaf, 0x8e, 0x51,
        0x30, 0xc8, 0x1c, 0x46, 0xa3, 0x5c, 0xe4, 0x11,
        0xe5, 0xfb, 0xc1, 0x19, 0x1a, 0x0a, 0x52, 0xef,
        0xf6, 0x9f, 0x24, 0x45, 0xdf, 0x4f, 0x9b, 0x17,
        0xad, 0x2b, 0x41, 0x7b, 0xe6, 0x6c, 0x37, 0x10
    };
    HI_U8 key[16] = {
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
        0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
    };
	//Root key 为0时的测试结果
    HI_U8 AEC_CBC_MAC_0[16] = {
        0x10, 0x80, 0xBB, 0x96, 0x6B, 0x0A, 0xEA, 0xA8, 
        0x2D, 0x4E, 0x07, 0x61, 0xB6, 0xDA, 0xAC, 0x57
    };

    HI_U8 AEC_CBC_MAC_16[16] = {
        0x52, 0x8F, 0xCE, 0x1F, 0xC0, 0xFE, 0x06, 0xF8,
        0x4A, 0xD9, 0xFE, 0xF5, 0x37, 0x42, 0x2B, 0x2D 
    };
    HI_U8 AEC_CBC_MAC_40[16] = {
        0x93, 0x4C, 0xBC, 0xE5, 0x97, 0x70, 0xA7, 0x21,
        0x64, 0x31, 0x02, 0xFD, 0xFB, 0x01, 0x36, 0x9B
    };
    HI_U8 AEC_CBC_MAC_64[16] = {
        0x21, 0x43, 0xEE, 0x76, 0x35, 0xBD, 0x01, 0x7D,
        0x61, 0xAE, 0xC9, 0xCD, 0xF9, 0x04, 0xC0, 0x50
    };
    
    HI_UNF_ADVCA_Init();

    HI_SIMPLEINFO_CA("\nExample 1: len = 0\n");
    HI_SIMPLEINFO_CA("M "); HI_SIMPLEINFO_CA("<empty string>\n");
    HI_CA_CalcMAC(key, M, 0, T, HI_TRUE);
    HI_SIMPLEINFO_CA("AES_CMAC "); printf_hex(T, 16); HI_SIMPLEINFO_CA("\n");
    compare_hex("M_0", AEC_CBC_MAC_0, T, 16);

    HI_SIMPLEINFO_CA("\nExample 2: len = 16\n");
    HI_SIMPLEINFO_CA("M "); printf_hex(M, 16);
    HI_CA_CalcMAC(key, M, 16, T, HI_TRUE);
    HI_SIMPLEINFO_CA("AES_CMAC "); printf_hex(T, 16); HI_SIMPLEINFO_CA("\n");
    compare_hex("M_16", AEC_CBC_MAC_16, T, 16);

    HI_SIMPLEINFO_CA("\nExample 3: len = 64\n");
    HI_CA_CalcMAC(key, M, 64, T, HI_TRUE);
    HI_SIMPLEINFO_CA("AES_CMAC "); printf_hex(T, 16); HI_SIMPLEINFO_CA("\n");
    compare_hex("M_64", AEC_CBC_MAC_64, T, 16);

    HI_SIMPLEINFO_CA("\nExample 4: len = 40\n");
    HI_CA_CalcMAC(key, M, 40, T, HI_TRUE);
    HI_SIMPLEINFO_CA("AES_CMAC "); printf_hex(T, 16); HI_SIMPLEINFO_CA("\n");
    compare_hex("M_40", AEC_CBC_MAC_40, T, 16);

    HI_U32 timeuse = 0;
    HI_U32 newtime, oldtime;
    HI_U32 i;

    oldtime = get_timer(0);

    HI_SIMPLEINFO_CA("start 300M data test......\r\n");

    for(i = 0; i < 299; i++)
    {
        HI_CA_CalcMAC(key, IMG_VERIFY_ADDRESS, 0x100000, T, HI_FALSE);
    }
    HI_CA_CalcMAC(key, IMG_VERIFY_ADDRESS, 0x100000, T, HI_TRUE);

    newtime = get_timer(0);
    timeuse= (newtime - oldtime)/get_tbclk();
    HI_SIMPLEINFO_CA("time use: %d s\r\n", timeuse);

    HI_SIMPLEINFO_CA("--------------------------------------------------\n");

    return 0;
}
U_BOOT_CMD(cipher_calcmac_test, 2, 1, cipher_calcmac_test, "", "");

/* normal signing test */
#ifdef CA_CMD_SIGN_TYPE_COMMON_TEST
HI_S32 CA_Common_VerifyImageSignature(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_U32 u32ImageAddress = 0;
    HI_U32 pu32ImageAddress = NULL;

    if(argc >= 5)
    {
        u32ImageAddress = (HI_U32)simple_strtoul((const char *)argv[4], NULL, 16);
        pu32ImageAddress = &u32ImageAddress;
    }

    if(argc >= 4)
    {
        HI_U32 offset = 0;

        offset = (HI_U32)simple_strtoul((const char *)argv[3], NULL, 16);
        CA_ASSERT(HI_CA_CommonVerify_Signature((HI_U8*)argv[1], (HI_U8*)argv[2], offset, pu32ImageAddress),ret);
    }
    else if(argc >= 3)
    {
        CA_ASSERT(HI_CA_CommonVerify_Signature((HI_U8*)argv[1], (HI_U8*)argv[2], 0, pu32ImageAddress),ret);
    }
    else if(argc >= 2)
    {
        CA_ASSERT(HI_CA_CommonVerify_Signature((HI_U8*)argv[1], (HI_U8*)argv[1], 0, pu32ImageAddress),ret);
    }
    else
    {
        HI_ERR_CA("Error Input, for example: ca_common_verify_image_signature imgepartionname signpartionname signoffsetinpartion\n");
        
    }

    return ret;
}

U_BOOT_CMD(ca_common_verify_image_signature,5,1,CA_Common_VerifyImageSignature, \
"verify pariton-image signature with tail mode","for example: ca_common_verify_image_signature imgepartionname signpartionname signoffsetinpartion");
#endif

#ifdef HI_ADVCA_TYPE_VERIMATRIX
extern HI_S32 VMX_CommonVerify_Signature_Test(HI_U8 *PartitionImagenName, HI_U8 *PartitionSignName, HI_U32 offset);
HI_S32 CA_Common_VerifyImageSignature_VMX(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    if(argc >= 4)
    {
        HI_U32 offset = 0;

        offset = (HI_U32)simple_strtoul((const char *)argv[3], NULL, 16);
        CA_ASSERT(VMX_CommonVerify_Signature_Test((HI_U8*)argv[1], (HI_U8*)argv[2], offset),ret);
    }
    else if(argc >= 3)
    {
        CA_ASSERT(VMX_CommonVerify_Signature_Test((HI_U8*)argv[1], (HI_U8*)argv[2], 0),ret);
    }
    else if(argc >= 2)
    {
        CA_ASSERT(VMX_CommonVerify_Signature_Test((HI_U8*)argv[1], (HI_U8*)argv[1], 0),ret);
    }
    else
    {
        HI_ERR_CA("Error Input, for example: ca_common_verify_image_signature_vmx_test imgepartionname signpartionname signoffsetinpartion\n");
        
    }

    return ret;
}

U_BOOT_CMD(ca_common_verify_image_signature_vmx_test,4,1,CA_Common_VerifyImageSignature_VMX, \
"verify pariton-image signature with tail mode","for example: ca_common_verify_image_signature_vmx_test imgepartionname signpartionname signoffsetinpartion");
#endif

HI_S32 CA_Common_VerifySystemSignature(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_U32 u32ImageAddress = 0;
    HI_U32 pu32ImageAddress = NULL;

    if(argc >= 5)
    {
        u32ImageAddress = (HI_U32)simple_strtoul((const char *)argv[4], NULL, 16);
        pu32ImageAddress = &u32ImageAddress;
    }
    
    if(argc >= 4)
    {
        HI_U32 offset = 0;

        offset = (HI_U32)simple_strtoul((const char *)argv[3], NULL, 16);
        CA_ASSERT(HI_CA_CommonVerify_Section_Signature((HI_U8*)argv[1], (HI_U8*)argv[2], offset, pu32ImageAddress),ret);
    }
    else if(argc >= 3)
    {
        CA_ASSERT(HI_CA_CommonVerify_Section_Signature((HI_U8*)argv[1], (HI_U8*)argv[2], 0, pu32ImageAddress),ret);
    }
    else if(argc >= 2)
    {
        CA_ASSERT(HI_CA_CommonVerify_Section_Signature((HI_U8*)argv[1], (HI_U8*)argv[1], 0, pu32ImageAddress),ret);
    }
    else
    {
        HI_ERR_CA("Error Input\n");
    }

    return ret;
}

U_BOOT_CMD(ca_common_verify_system_signature,5,1,CA_Common_VerifySystemSignature, \
"verify pariton-image signature with tail mode","for example: ca_common_verify_system_signature imgepartionname signpartionname signoffsetinpartion");



HI_S32 CA_Common_VerifyParseSignCommand(void)
{
    HI_S32 ret = 0;
    unsigned char  *str = NULL;        /* used to set string properties */
    int strlength = 0, offset = 0;
    unsigned char head[] = "sign:";
    unsigned char *pParamoffset, *pImageoffset;

    HI_U8 ImageName[50] = {0};
    HI_U8 SignName[50] = {0};
    HI_U32 SignLocationOffset = 0;
    HI_U32 u32ImageAddress = IMG_VERIFY_ADDRESS;

    str = getenv("signature_check");
    if (str == NULL)
    {
        HI_ERR_CA("can not find boot argures:signature_check\n");
        return HI_FAILURE;
    }
    strlength = strlen(str);
    if(strlength > 256)
    {
        HI_ERR_CA("signature_check is too long > 256,error\n");
        return -1;
    }

    //parse as: setenv signature_check 'sign:kernel,kernel,0x280000 sign:fs,fs,0x600000 sign:subfs,subfs,0x400000'
    offset = 0;
    while(offset <= strlength)
    {
        HI_U8  ImageName[50] = {0};
        HI_U8  SignName[50] = {0};
        HI_U32 SignOffset = 0;

        pParamoffset = (HI_U8 *)strstr((const char *)(str + offset), (const char *)head);
        if(pParamoffset == HI_NULL)
        {
            break;
        }

        //To get the Image,Image_Signature,SignatureOffset
        pImageoffset = pParamoffset + strlen(head);

        offset = pImageoffset - str;//change offset
        ret = CA_CommonParse_SubCommand(pImageoffset, strlen(pImageoffset), ImageName, SignName, &SignOffset);
        if(ret != 0)
        {
            HI_ERR_CA("Error to parse data\n");
            return -1;
        }
        HI_INFO_CA("verify image:%s, sign:%s, offset:0x%x\n", ImageName, SignName, SignOffset);
        HI_CA_CommonVerify_Signature(ImageName, SignName, SignOffset, &u32ImageAddress);
    }
    HI_INFO_CA("Finish\n");

    return 0;
}

U_BOOT_CMD(ca_common_verify_signature_check,2,1,CA_Common_VerifyParseSignCommand, \
"verify images signature with signature_check configuration in bootargs","for example: ca_common_verify_signature_check, please set signature_check 'Image,Image_Signature,SignatureOffset'");


HI_S32 CA_Common_VerifyEncryptCommand(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    if(argc >= 3)
    {
        CA_ASSERT(HI_CA_CommonVerify_EncryptImage((HI_U8*)argv[1], (HI_U8*)argv[2], 0),ret);
    }
    else
    {
        HI_ERR_CA("Error Input\n");
    }

    return ret;
}

U_BOOT_CMD(ca_common_verify_encryptimage,3,1,CA_Common_VerifyEncryptCommand, \
"Verify and encrypt image with r2r_root_key","for example: ca_common_verify_encryptimage Image Image_Signature");


HI_S32 CA_Common_VerifyBootParaDebug(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    
    HI_SIMPLEINFO_CA("g_EnvFlashAddr:0x%x, g_EnvFlashPartionSize:0x%x\n", g_EnvFlashAddr, g_EnvFlashPartionSize);
    
    ret = HI_CA_CommonVerify_BootPara(g_EnvFlashAddr, g_EnvFlashPartionSize);
	if(HI_FAILURE != ret)
	{
		HI_DEBUG_CA("verify success\n");
    }
    else
    {
    	HI_DEBUG_CA("verify failed\n");
    }
    
    return ret;
}
U_BOOT_CMD(ca_common_verify_bootargs,2,1,CA_Common_VerifyBootParaDebug, \
"Verify bootargs signature with tail mode","for example: ca_common_verify_bootargs ");


extern HI_FLASH_TYPE_E CA_get_env_flash_type(HI_VOID);
HI_S32 CA_Common_VerifyBootParaByPartitionDebug(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_FLASH_TYPE_E EnvFlashType = CA_get_env_flash_type();

    if(argc == 2)
    {
        CA_ASSERT(CA_flash_GetSize(argv[1], &g_EnvFlashPartionSize), ret);
        CA_ASSERT(CA_flash_GetFlashAddressFromParitonName(EnvFlashType, argv[1], &g_EnvFlashAddr), ret);

        HI_SIMPLEINFO_CA("g_EnvFlashAddr:0x%x, g_EnvFlashPartionSize:0x%x\n", g_EnvFlashAddr, g_EnvFlashPartionSize);

        CA_ASSERT(HI_CA_CommonVerify_BootPara(g_EnvFlashAddr, g_EnvFlashPartionSize), ret);
        HI_DEBUG_CA("verify success\n");
    }
    else
    {
        HI_ERR_CA("Error Input\n");
        HI_ERR_CA("usage: ca_common_verify_bootargs  bootargs_partition_name\n");
        ret = HI_FAILURE;
    }

    return ret;
}
U_BOOT_CMD(ca_common_verify_bootargs_partition,2,1,CA_Common_VerifyBootParaByPartitionDebug, \
"Verify bootargs signature with tail mode by partition name","for example: ca_common_verify_bootargs_partition  bootargs_partition_name");

#endif /* endif CA_CMD_SIGN_TYPE_COMMON_TEST */

#ifndef HI_ADVCA_TYPE_VERIMATRIX
#define BLPK_SPACE_V300_OFFSET  0x1800
#define BLPK_SPACE_V200_OFFSET  0x800
#define BLPK_PARAM_OFFSET       0x304
#define BLPK_LEN                0x10
#define BOOT_IMG_LEN            0x80000
#define BLOAD_MODE_SEL_ADDR     0x03

static HI_U8 g_BootImg[BOOT_IMG_LEN] = {0};

HI_S32 CA_EncryptBoot_Test(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32                  ret = 0;
    HI_U8                   *pBlpk;
    HI_U8                   *pBootImage;
    HI_U8                   EncryptBlpk[BLPK_LEN];
    HI_U8                   BlpkClear;
    HI_UNF_CIPHER_CTRL_S    CipherCtrl;
    HI_HANDLE               blpkHandle = 0;
    HI_U8                   u8CheckedAreaOffset[4] = {0};
    HI_U8                   u8CheckedAreaLen[4] = {0};
    HI_U32                  u32CheckedAreaOffset = 0;
    HI_U32                  u32CheckedAreaLen = 0;
    HI_U32                  i = 0;
    CA_V300_BLOAD_MODE_U    bloadMode;
    static HI_U32           u32MmzPhyAddr = 0;
    HI_BOOL                 bIsV300 = HI_FALSE;
    HI_U32                  u32BlpkSpaceOffset = 0;
    HI_UNF_CIPHER_ATTS_S stCipherAtts;

    u32BlpkSpaceOffset= BLPK_SPACE_V300_OFFSET;
    bIsV300 = HI_TRUE;

    /* read all valid data of boot partition  */
    CA_ASSERT(CA_flash_read(BOOT_BASIC,0ULL,BOOT_IMG_LEN,(HI_U8*)g_BootImg, HI_NULL),ret);

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

    HI_SIMPLEINFO_CA("u32CheckedAreaOffset = %x, u32CheckedAreaLen = %x\n", u32CheckedAreaOffset, u32CheckedAreaLen);

    if (0 != (u32CheckedAreaLen % 0x100))
    {
        HI_ERR_CA("checked area length invalid!\n");
        return HI_FAILURE;
    }

    /* read blpk and its clear flag */
    pBlpk = g_BootImg + u32BlpkSpaceOffset;
    pBootImage = g_BootImg + u32BlpkSpaceOffset + u32CheckedAreaOffset;
    BlpkClear = pBlpk[BLPK_LEN];
    if (bIsV300)
    {
        if (0x48 == BlpkClear)
        {
            HI_ERR_CA("blpk is already encrypted\n");
            return HI_SUCCESS;
        }

        HI_SIMPLEINFO_CA("clear key:");
        for (i = 0; i < BLPK_LEN; i++)
        {
            HI_SIMPLEINFO_CA("%02x ", g_customer_blpk[i]);
        }
        HI_SIMPLEINFO_CA("\n");

        ret = HI_UNF_CIPHER_Init();
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("HI_UNF_CIPHER_Init failed:%#x\n",ret);
            return HI_FAILURE;
        }

        memset(&stCipherAtts, 0, sizeof(HI_UNF_CIPHER_ATTS_S));
        stCipherAtts.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
        ret = HI_UNF_CIPHER_CreateHandle(&blpkHandle, &stCipherAtts);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("HI_UNF_CIPHER_CreateHandle failed:%#x\n",ret);
            goto _CIPHER_CLOSE;
        }

        CipherCtrl.bKeyByCA = HI_FALSE;
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;

        memcpy(CipherCtrl.u32Key, g_customer_blpk, BLPK_LEN);
        memset(CipherCtrl.u32IV, 0, 16);

        ret = HI_UNF_CIPHER_ConfigHandle(blpkHandle, &CipherCtrl);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("HI_UNF_CIPHER_ConfigHandle failed:%#x\n",ret);
            goto _CIPHER_DESTROY;
        }

        /*************************************************************/
        ret = HI_MEM_Alloc(&u32MmzPhyAddr, MAX_DATA_LEN);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_CA("malloc input memory failed!\n");
            goto _CIPHER_DESTROY;
        }
        memset((void *)u32MmzPhyAddr, 0, BOOT_IMG_LEN);

        /*************************************************************/
        memcpy((void *)u32MmzPhyAddr, pBootImage, u32CheckedAreaLen);

        ret = HI_UNF_CIPHER_Encrypt(blpkHandle, u32MmzPhyAddr, u32MmzPhyAddr, u32CheckedAreaLen);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("HI_UNF_CIPHER_Encrypt failed:%#x\n",ret);
            goto _CIPHER_DESTROY;
        }
        memcpy(pBootImage, (HI_U8 *)u32MmzPhyAddr, u32CheckedAreaLen);

        /* encrypt blpk */
        HI_UNF_ADVCA_Init();

        ret = CA_EncryptSwpk(g_customer_blpk,EncryptBlpk);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("CA_EncryptSwpk failed:%#x\n",ret);
            goto _CIPHER_DESTROY;
        }

        HI_SIMPLEINFO_CA("encrypted key:");
        for (i = 0; i < BLPK_LEN; i++)
        {
            HI_SIMPLEINFO_CA("%02x ", EncryptBlpk[i]);
        }
        HI_SIMPLEINFO_CA("\n");

        /* write encrypted blpk and set flag*/
        memcpy(pBlpk,EncryptBlpk,BLPK_LEN);
        pBlpk[BLPK_LEN] = BlpkClear = 0X48;

        /* write all valid data of boot partition  */
        ret = CA_flash_write(BOOT_BASIC,0ULL,BOOT_IMG_LEN,(HI_U8*)g_BootImg);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("CA_flash_write failed:%#x\n",ret);
            goto _CIPHER_DESTROY;
        }

        HI_UNF_OTP_Init();

        /*Set bload mode sel flag*/
        bloadMode.u8 = 0;
        bloadMode.bits.bload_mode_sel = 1;
        ret = HI_OTP_WriteByte(BLOAD_MODE_SEL_ADDR, bloadMode.u8);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("Set bload_mod_sel failed:%#x\n",ret);
            goto _OTP_DEINIT;
        }

        HI_UNF_OTP_DeInit();

        ret = HI_SUCCESS;

_OTP_DEINIT:
        HI_UNF_OTP_DeInit();

_CIPHER_DESTROY:
        HI_UNF_CIPHER_DestroyHandle(blpkHandle);

_CIPHER_CLOSE:
        HI_UNF_CIPHER_DeInit();
    }
    else
    {
        if (0x0 == BlpkClear)
        {
            HI_ERR_CA("blpk is already encrypted\n");
            return HI_SUCCESS;
        }

        HI_SIMPLEINFO_CA("clear key:");
        for (i = 0; i < BLPK_LEN; i++)
        {
            HI_SIMPLEINFO_CA("%02x ", pBlpk[i]);
        }
        HI_SIMPLEINFO_CA("\n");

        /* encrypt blpk */
        HI_UNF_ADVCA_Init();

        ret = CA_EncryptSwpk(pBlpk, EncryptBlpk);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("CA_EncryptSwpk failed:%#x\n",ret);
            goto _END_PROCESS;
        }

        HI_SIMPLEINFO_CA("encrypted key:");
        for (i = 0; i < BLPK_LEN; i++)
        {
            HI_SIMPLEINFO_CA("%02x ", EncryptBlpk[i]);
        }
        HI_SIMPLEINFO_CA("\n");

        /* write encrypted blpk and set flag*/
        memcpy(pBlpk,EncryptBlpk,BLPK_LEN);
        pBlpk[BLPK_LEN] = BlpkClear = 0X0;

        /* write all valid data of boot partition  */
        ret = CA_flash_write(BOOT_BASIC,0ULL,BOOT_IMG_LEN,(HI_U8*)g_BootImg);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CA("CA_flash_write failed:%#x\n",ret);
            goto _END_PROCESS;
        }

        ret = HI_SUCCESS;
    }

_END_PROCESS:
    if (HI_SUCCESS == ret)
    {
        HI_ERR_CA("ca_encryptboot blpk SUCCESS!\n");
    }
    else
    {
        HI_ERR_CA("ca_encryptboot blpk FAIL!\n");
    }

    return ret;
}
U_BOOT_CMD(ca_encryptboot, 1, 1, CA_EncryptBoot_Test, "CA Encrypt Boot ", "eg: ca_encryptboot");

#if 0
HI_S32 CA_GetExternRsaKey(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;
    HI_S32 index = 0;
    HI_U8 buffer[512] = {0};
    HI_U8 command[512] = {0};
    HI_CHIP_TYPE_E enChipType;
    HI_CHIP_VERSION_E u32ChipVersion = 0;
    HI_FLASH_TYPE_E EnvFlashType;

    if (argc != 2)
    {
       HI_ERR_CA("Error Input\n");
       HI_ERR_CA("usage: get_extern_rsa_key  fastboot_partition_name\n");
       return HI_FAILURE;
    }
    
    HI_DRV_SYS_GetChipVersion( &enChipType, &u32ChipVersion );

    EnvFlashType = CA_get_env_flash_type();
    if (EnvFlashType == HI_FLASH_TYPE_SPI_0 || EnvFlashType == HI_FLASH_TYPE_NAND_0)
    {
        CA_ASSERT(CA_flash_read(argv[1], 0ULL, 512, buffer, HI_NULL), ret);
    }
    else if (EnvFlashType == HI_FLASH_TYPE_EMMC_0)
    {
       memset(command, 0, 256);
#if defined(CHIP_TYPE_hi3719mv100)
       if ((HI_CHIP_TYPE_HI3719M == enChipType) && (HI_CHIP_VERSION_V100 == u32ChipVersion))
       {
           snprintf((char *)command, sizeof(command), "mmc read 0 0x%x 0x0 0x1 ", buffer);
       }
       else
#endif
       {
           snprintf((char *)command, sizeof(command), "mmc read 0 0x%x 0x1 0x1 ", buffer);
       }
       run_command((const char *)command, 0);
    }
    else
    {
        HI_ERR_CA("\nget extern rsa key fail!\n");
        return HI_FAILURE;
    }

    for (; index < 256; index++)
    {
       g_customer_rsa_public_key_N[index] = buffer[index];
    }
    g_customer_rsa_public_key_E = (buffer[508] << 24) + (buffer[509] << 16) + (buffer[510] << 8) + buffer[511];

//z00213260, for test
    printf("RSA Module:\n");
    printf_hex(g_customer_rsa_public_key_N, sizeof(g_customer_rsa_public_key_N));

    printf("RSA Exponent:\n");
    printf_hex((HI_U8 *)&g_customer_rsa_public_key_E, sizeof(g_customer_rsa_public_key_E));

    HI_SIMPLEINFO_CA("\nget extern rsa key success!\n");

    return 0;
}
#else
HI_S32 CA_GetExternRsaKey(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_S32 ret = 0;

    CA_ASSERT(HI_CA_GetExternRsaKey(argv[1]),ret);

    return 0;
}

#endif

U_BOOT_CMD(ca_get_extern_rsa_key,2,1,CA_GetExternRsaKey, "get external rsa key","for example: ca_get_extern_rsa_key boot");

#if 0
HI_S32 HI_Android_Authenticate(HI_VOID)
{
    HI_S32 ret = 0;
    HI_BOOL CAFlag = HI_FALSE;
	HI_UNF_ADVCA_FLASH_TYPE_E enCAFlashType = HI_UNF_ADVCA_FLASH_TYPE_BUTT;

    HI_FLASH_TYPE_E EnvFlashType;
    EnvFlashType = CA_get_env_flash_type();

	CA_ASSERT(HI_UNF_ADVCA_Init(), ret);
	CA_ASSERT(HI_UNF_ADVCA_GetSecBootStat(&CAFlag, &enCAFlashType), ret);	/* parameter enCAFlashType is not used in this case */
	
    if (CAFlag == HI_TRUE)
    {
        ret = run_command("get_extern_rsa_key fastboot", 0);
        if (ret == -1)
        {
            HI_ERR_CA("Get extern rsa key failed!\n");
            return -1;
        }

        ret = run_command("common_verify_bootargs_partition bootargs", 0);
        if (ret == -1)
        {
            HI_ERR_CA("Verify bootargs failed!\n");
            return -1;
        }

        ret = run_command("common_verify_image_signature recovery", 0);
        if (ret == -1)
        {
            HI_ERR_CA("Verify recovery failed!\n");
            return -1;
        }

        ret = run_command("common_verify_image_signature kernel", 0);
        if (ret == -1)
        {
            HI_ERR_CA("Verify kernel failed!\n");
            return -1;
        }

        if (EnvFlashType == HI_FLASH_TYPE_EMMC_0)
		{
            ret = run_command("common_verify_image_signature systemsign systemsign 0x3E8000", 0);
        }
		else
        {
            HI_U8 CAImageInfo[NAND_PAGE_SIZE] = {0};
            HI_CASignImageTail_S stSignImage = {0};
            CA_ASSERT(CA_flash_read("systemsign", 0UL, NAND_PAGE_SIZE,(HI_U8 *)CAImageInfo, HI_NULL),ret);
            memcpy(&stSignImage, CAImageInfo, sizeof(HI_CASignImageTail_S));
            CA_ASSERT(HI_CA_CommonVerify_Signature("systemsign", "systemsign", stSignImage.u32TotalsectionID * NAND_PAGE_SIZE), ret);
        }

        if (ret == -1)
        {
            HI_ERR_CA("Verify systemsign failed!\n");
            return -1;
        }

        ret = run_command("common_verify_system_signature system systemsign 0x0", 0);
        if (ret == -1)
        {
            HI_ERR_CA("Verify system failed!\n");
            return -1;
        }
    }
    else
    {
        HI_SIMPLEINFO_CA("enter write OTP mode!\n");
    }

    return 0;
}


U_BOOT_CMD(ca_auth, 2, 1, HI_Android_Authenticate, \
"verify android system: bootargs, recovory, kernel, system...", "for example: ca_auth");
#endif

/*************************************************************************
 *
 * The test below is for Irdeto MSR2.2 chipset AES CBC-MAC.
 *
 *************************************************************************/
HI_S32 CA_CbcMacTest(cmd_tbl_t *cmdtp, HI_S32 flag, HI_S32 argc, char *argv[])
{
    HI_U8 u8TestData[16];
    HI_U8 u8CbcMac[16];
    HI_S32 Ret = HI_SUCCESS;
    HI_UNF_ADVCA_CA_VENDOR_OPT_S stCaVendorOpt;

    HI_UNF_ADVCA_Init();
    CA_ASSERT(HI_UNF_CIPHER_Init(), Ret);

    HI_SIMPLEINFO_CA("Test case 1: Calculate the AES CBC MAC\n");

    memset(u8TestData, 0xA5, sizeof(u8TestData));
    stCaVendorOpt.enCaVendorOpt = HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_CALC;
    stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.pu8InputData = u8TestData;
    stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.u32InputDataLen = sizeof(u8TestData);
    Ret = HI_UNF_ADVCA_CaVendorOperation(HI_ADVCA_IRDETO, &stCaVendorOpt);
    if(Ret != HI_SUCCESS)
    {
        HI_ERR_CA("Calcualte the AES CBC MAC failed! Ret = 0x%08x\n", Ret);
        return HI_FAILURE;
    }
    memcpy(u8CbcMac, stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.u8OutputCbcMac, 16);
    HI_SIMPLEINFO_CA("The AES CBC-MAC is:\n");
    printf_hex(u8CbcMac, 16);
    
    HI_SIMPLEINFO_CA("Test case 2: Authenticate the AES CBC MAC\n");

    //If the authentication failed, the chipset will reset automatically
    memset(u8TestData, 0xA5, sizeof(u8TestData));
    stCaVendorOpt.enCaVendorOpt = HI_ADVCA_CAVENDOR_ATTR_IRDETO_CBCMAC_AUTH;
    stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.pu8InputData = u8TestData;
    stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.u32InputDataLen = sizeof(u8TestData);
    stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.u32AppLen = sizeof(u8TestData);
    
    //Use the last AES CBC-MAC for test
    memcpy(stCaVendorOpt.unCaVendorOpt.stIrdetoCbcMac.u8RefCbcMAC, u8CbcMac, 16);
    Ret = HI_UNF_ADVCA_CaVendorOperation(HI_ADVCA_IRDETO, &stCaVendorOpt);
    if(Ret != HI_SUCCESS)
    {
        HI_ERR_CA("Authenticate the AES CBC MAC failed! Ret = 0x%08x\n", Ret);
        return HI_FAILURE;
    }
    HI_SIMPLEINFO_CA("Authenticate the AES CBC MAC successfully\n");

    return HI_SUCCESS;
}
U_BOOT_CMD(ca_cbcmac_test, 2, 1, CA_CbcMacTest, "", "");

HI_S32 OTP_GetChipIDEx(HI_U8 *pu8ChipId, HI_U32 len)
{
    HI_U32 index = 0;

	if(NULL == pu8ChipId || 8 != len)
	{
		HI_ERR_OTP("Invalid parameters when read chipid!\n");
		return HI_FAILURE;
	}

	for(index = 0; index < len; index++)
	{
		pu8ChipId[index] = HAL_OTP_V200_ReadByte(OTP_CHIP_ID_ADDR + index);
	}

    return HI_SUCCESS;
}

HI_S32 OTP_GetChipID_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_U8 au8ChipId[8] = {0};
 
    HI_UNF_OTP_Init();
    OTP_GetChipIDEx(au8ChipId, 8);

    HI_SIMPLEINFO_CA("Chipid:\n");
	printf_hex(au8ChipId, 8);
	
    HI_SIMPLEINFO_CA("otp_getchipid success\n");
    
    return HI_SUCCESS;
}
U_BOOT_CMD(otp_getchipid,2,1,OTP_GetChipID_test,"otp_getchipid ","");

HI_S32 OTP_GetStbSN_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_U8 i = 0;
    HI_U8 u8SN[4];

    HI_UNF_ADVCA_Init();

    memset(u8SN,0,sizeof(u8SN));
    HI_UNF_ADVCA_GetStbSn(u8SN);

    HI_SIMPLEINFO_CA("STBSN = \n");
    for(i = 0;i<4;i++)
    {
        HI_SIMPLEINFO_CA("0x%x ",u8SN[i]);
    }
    HI_SIMPLEINFO_CA("\n");
    HI_SIMPLEINFO_CA("otp_getstbsn success\n"); 
    return HI_SUCCESS;
}
U_BOOT_CMD(otp_getstbsn,2,1,OTP_GetStbSN_test,"otp_getstbsn ","");

HI_S32 OTP_GetMarketID_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_U8 i = 0;
    HI_U8 u8SN[4];

    HI_UNF_OTP_Init();
    
    memset(u8SN,0,sizeof(u8SN));
    OTP_GetMarketID(u8SN);

    HI_SIMPLEINFO_CA("MarketID = \n");
    for(i = 0;i<4;i++)
    {
        HI_SIMPLEINFO_CA("0x%x ",u8SN[i]);
    }
    HI_SIMPLEINFO_CA("\n");
    HI_SIMPLEINFO_CA("otp_getmsid success\n"); 
    return HI_SUCCESS;
}
U_BOOT_CMD(otp_getmsid,2,1,OTP_GetMarketID_test,"otp_getmsid ","for example: getMarketID");


HI_S32 OTP_GetSecureBootEn_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_BOOL bSecBootEn = HI_FALSE;
	HI_UNF_ADVCA_FLASH_TYPE_E enFlashType = HI_UNF_ADVCA_FLASH_TYPE_BUTT;

	s32Ret = HI_UNF_ADVCA_Init();
    s32Ret |= HI_UNF_ADVCA_GetSecBootStat(&bSecBootEn, &enFlashType);
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("Get Secure boot en failed!\n");
    	return HI_FAILURE;
    }

    HI_SIMPLEINFO_CA("SecBootEn = %d\n", bSecBootEn);
    HI_SIMPLEINFO_CA("otp_getsecurebooten success\n");

    return HI_SUCCESS;
}
U_BOOT_CMD(otp_getsecurebooten,2,1,OTP_GetSecureBootEn_test,"otp_getsecurebooten ","");

#define ADVCA_BOOT_SETSTBSN
#ifdef ADVCA_BOOT_SETSTBSN

#define TEST_SN_ADDR    (0x90)
HI_S32 ADVCA_SetStbSn_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 u8StbSn[4] = {0x12, 0x34, 0x56, 0x78};
    HI_U8 u8StbSnFromOTP[4] = {0};
    HI_S32 i;
    
	s32Ret = HI_UNF_ADVCA_Init();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_Init failed!\n");
    	return HI_FAILURE;
    }

    s32Ret = HI_UNF_ADVCA_SetStbSn(u8StbSn);
    if (HI_SUCCESS != s32Ret)
    {
        (HI_VOID)HI_UNF_ADVCA_DeInit();
        HI_SIMPLEINFO_CA("HI_UNF_ADVCA_SetStbSn failed!\n");
    }

    for (i = 0; i < 4; i++)
    {
        if (u8StbSn[3 - i] != HI_OTP_ReadByte(TEST_SN_ADDR + i))
        {
    	    HI_SIMPLEINFO_CA("Compare StbSn failed!\n");
            HI_UNF_ADVCA_DeInit();
            return HI_FAILURE;
        }
    }

    s32Ret = HI_UNF_ADVCA_DeInit();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_DeInit failed!\n");
    	return HI_FAILURE;
    }
    return HI_SUCCESS;
}
U_BOOT_CMD(advca_setstbsn_test,2,1,ADVCA_SetStbSn_test,"advca_setstbsn_test ","");

#endif

HI_S32 ADVCA_verify_loader_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 Size = 0;
    HI_U32 Addr = 0;
	s32Ret = HI_UNF_ADVCA_Init();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_Init failed!\n");
    	return HI_FAILURE;
    }

    Addr = simple_strtoul(argv[1], HI_NULL, 16);
    Size = simple_strtoul(argv[2], HI_NULL, 16);
    
    s32Ret = CA_LOADER_Authenticate((HI_U8 *)Addr, Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_SIMPLEINFO_CA("CA_SSD_Authenticate failed\n");
    }

    s32Ret = HI_UNF_ADVCA_DeInit();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_DeInit failed!\n");
    	return HI_FAILURE;
    }
    return HI_SUCCESS;
}
U_BOOT_CMD(advca_loader_auth_test,3,1,ADVCA_verify_loader_test,"advca_loader_auth_test ","");

HI_S32 ADVCA_ssd_crypto_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 Size = 0;
    HI_U32 Addr = 0;
	s32Ret = HI_UNF_ADVCA_Init();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_Init failed!\n");
    	return HI_FAILURE;
    }
    Addr = simple_strtoul(argv[1], HI_NULL, 16);
    Size = simple_strtoul(argv[2], HI_NULL, 16);
    
    s32Ret = CA_LOADER_EncryptImage((HI_U8 *)Addr, Size, HI_CA_KEY_GROUP_1);
    if (HI_SUCCESS != s32Ret)
    {
        HI_SIMPLEINFO_CA("CA_SSD_Authenticate failed\n");
    }

    s32Ret = HI_UNF_ADVCA_DeInit();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_DeInit failed!\n");
    	return HI_FAILURE;
    }
    return HI_SUCCESS;
}
U_BOOT_CMD(advca_loader_crypto_test,3,1,ADVCA_ssd_crypto_test,"advca_loader_crypto_test ","");


HI_S32 ADVCA_ssd_decrypto_test(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 Size = 0;
    HI_U32 Addr = 0;

    
	s32Ret = HI_UNF_ADVCA_Init();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_Init failed!\n");
    	return HI_FAILURE;
    }

    Addr = simple_strtoul(argv[1], HI_NULL, 16);
    Size = simple_strtoul(argv[2], HI_NULL, 16);
    
    s32Ret = CA_LOADER_DecryptImage((HI_U8 *)Addr, Size, HI_CA_KEY_GROUP_1);
    if (HI_SUCCESS != s32Ret)
    {
        HI_SIMPLEINFO_CA("CA_SSD_Authenticate failed\n");
    }

    s32Ret = HI_UNF_ADVCA_DeInit();
    if(HI_SUCCESS != s32Ret)
    {
    	HI_SIMPLEINFO_CA("HI_UNF_ADVCA_DeInit failed!\n");
    	return HI_FAILURE;
    }
    return HI_SUCCESS;
}
U_BOOT_CMD(advca_loader_decrypto_test,3,1,ADVCA_ssd_decrypto_test,"advca_loader_decrypto_test ","");

#endif

#endif /* #ifndef HI_MINIBOOT_SUPPORT */

#endif /* #ifndef HI_ADVCA_FUNCTION_RELEASE */

