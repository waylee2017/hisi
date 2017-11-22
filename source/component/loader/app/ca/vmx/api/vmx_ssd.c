/******************************************************************************
Copyright (C), 2001-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : vmx_ssd.c
Version       : Initial Draft
Author        : Hisilicon hisecurity team
Created       : 2014/09/23
Last Modified :
Description   : 
Function List :
History       :
******************************************************************************/
#ifdef HI_LOADER_APPLOADER
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#else
#ifdef HI_MINIBOOT_SUPPORT
#include "run.h"
#include "config.h"
#include "platform.h"
#else
#include "exports.h"
extern int do_reset(cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);
#endif
#endif
#include "vmx_ssd.h"
#include "hi_flash.h"
#include "burn.h"
#include "hi_loader_info.h"

HI_VMX_SSD_S g_stVMXSSD[VMX_SSD_MAX_PARTITIONS];

extern FLASH_DATA_INFO_S *g_pstFlashDataInfo;
extern HI_S32 ClearUpgradeParam(HI_VOID);
extern HI_VOID LOADER_UpgrdeDone(HI_S32 s32Ret, HI_LOADER_TYPE_E enType);
extern int verifySignature( unsigned char* signature, 
                                        unsigned char   * src, 
                                        unsigned char* tmp, 
                                        unsigned int len, 
                                        unsigned int maxLen, 
                                        unsigned char mode, 
                                        unsigned char *errorCode );

#ifdef HI_MINIBOOT_SUPPORT
static int reboot()
{
//	do_shutdown();

//	disable_interrupts();
	reset_cpu(0);
}
#endif

#ifdef HI_LOADER_BOOTLOADER
static HI_VOID CA_Reset(HI_VOID)
{
#ifndef HI_MINIBOOT_SUPPORT
//    HI_INFO_CA(" \n");
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    do_reset (NULL, 0, 0, NULL);
    while(1) { };
#else
    reboot();
#endif
}
#endif

extern HI_VOID GenerateMagicNum(HI_VOID);

HI_S32 VMX_printBuffer(const HI_CHAR *string, HI_U8 *pu8Input, HI_U32 u32Length)
{
    HI_U32 i = 0;
    
    if ( NULL != string )
    {
        HI_SIMPLEINFO_CA("%s\n", string);
    }

    for ( i = 0 ; i < u32Length; i++ )
    {
        if( (i % 16 == 0) && (i != 0)) HI_SIMPLEINFO_CA("\n");
        HI_SIMPLEINFO_CA("0x%02x ", pu8Input[i]);
    }
    HI_SIMPLEINFO_CA("\n");

    return HI_SUCCESS;
}

static HI_S32 VMX_SetBurnParams(HI_U32 u32FlashAddress, HI_BOOL bNeedToBurn)
{
	HI_S32 index = 0;

	for(index = 0; index < VMX_SSD_MAX_PARTITIONS; index++)
	{
		if(HI_TRUE == g_stVMXSSD[index].bIsValid)
		{
			continue;
		}

		g_stVMXSSD[index].bBurnFlag = bNeedToBurn;
		g_stVMXSSD[index].u64FlashAddress = (HI_U64)u32FlashAddress;
		g_stVMXSSD[index].bIsValid = HI_TRUE;
		HI_SIMPLEINFO_CA("set burn params: index:%d, addr:0x%llx\n", index, g_stVMXSSD[index].u64FlashAddress);

		return HI_SUCCESS;
	}

	HI_SIMPLEINFO_CA("failed, no valid resources, index:%d.\n", index);
	return HI_FAILURE;
}

HI_S32 VMX_GetBurnParams(HI_U64 u64FlashAddress, HI_BOOL *pbNeedToBurn)
{
	HI_S32 index = 0;

	if(NULL == pbNeedToBurn)
	{
		HI_SIMPLEINFO_CA("failed, invalid params input!\n");
		return HI_FAILURE;
	}

	HI_SIMPLEINFO_CA("begin to search flash address, u64FlashAddress:0x%llx.\n", u64FlashAddress);

	for(index = 0; index < VMX_SSD_MAX_PARTITIONS; index++)
	{
		if(u64FlashAddress == g_stVMXSSD[index].u64FlashAddress)
		{
			HI_SIMPLEINFO_CA("burn flag: %d\n", g_stVMXSSD[index].bBurnFlag);
			*pbNeedToBurn = g_stVMXSSD[index].bBurnFlag;
			return HI_SUCCESS;
		}
	}

	*pbNeedToBurn = HI_TRUE;
	return HI_SUCCESS;
}

extern HI_U32 g_u32PartitionNum;
static HI_S32 VMX_SetEraseParamByFlashAddr(HI_U32 flash_addr)
{
    HI_U8 index = 0;
	HI_S32 ret = 0;
	HI_HANDLE hFlash = HI_INVALID_HANDLE;
	HI_Flash_InterInfo_S stFlashInfo;

	HI_SIMPLEINFO_CA("g_u32PartitionNum:%d\n", g_u32PartitionNum);

    for (index = 0; index < g_u32PartitionNum; index++)
    {
#if 1
        if(HI_INVALID_HANDLE != g_pstFlashDataInfo[index].hFlashHandle)
        {
        	memset(&stFlashInfo, 0, sizeof(HI_Flash_InterInfo_S));
        	hFlash = g_pstFlashDataInfo[index].hFlashHandle;
        	ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
			if(ret != HI_SUCCESS)
			{
				HI_SIMPLEINFO_CA("HI_Flash_GetInfo failed, hFlash:0x%x!\n", hFlash);
				return HI_FAILURE;
			}
			HI_SIMPLEINFO_CA("HI_Flash_GetInfo success, hFlash:0x%x!\n", hFlash);

			if(stFlashInfo.OpenAddr == flash_addr)
			{
				g_pstFlashDataInfo[index].bErased = HI_TRUE;
				HI_SIMPLEINFO_CA("Set bErased flag success, flash_addr:0x%x\n", flash_addr);
				return HI_SUCCESS;
			}
			HI_SIMPLEINFO_CA("stFlashInfo.OpenAddr:0x%x != flash_addr:0x%x!\n", stFlashInfo.OpenAddr, flash_addr);
        }
#else
		HI_SIMPLEINFO_CA("index:%d, g_pstFlashDataInfo[index].hFlashHandle:0x%x\n", index, g_pstFlashDataInfo[index].hFlashHandle);
		HI_SIMPLEINFO_CA("g_pstFlashDataInfo[index].u64FlashAddr:0x%llx\n", g_pstFlashDataInfo[index].u64FlashAddr);

		if(flash_addr == (HI_U32)(g_pstFlashDataInfo[index].u64FlashAddr))
		{
			g_pstFlashDataInfo[index].bErased = HI_TRUE;
			HI_SIMPLEINFO_CA("Set bErased flag success!\n");
			return HI_SUCCESS;
		}
#endif
    }
	
	HI_SIMPLEINFO_CA("Set bErased flag failed, index:%d!\n", index);
    return HI_FAILURE;
}


HI_S32 VMX_Verify_Authenticate(HI_U8* pu8StartVirAddr, HI_U32 u32Addrlength, HI_U32 u32FlashStartAddr, HI_U32 u32FlashType)
{
	HI_S32 ret = HI_SUCCESS;
	unsigned char errorCode = 0;
	HI_U8 *tmp = NULL;
	HI_U32 image_offset = VMX_SSD_HEADER_LEN + VMX_SSD_SIG_LEN;
	HI_U32 sig_offset = VMX_SSD_HEADER_LEN;
	HI_U32 image_len = u32Addrlength - image_offset;

	if((NULL == pu8StartVirAddr) || (0 == u32Addrlength) || (0xFFFFFFFF == u32Addrlength))
	{
		HI_SIMPLEINFO_CA("VMX_Verify_Authenticate, invalid params!\n");
		return HI_FAILURE;
	}

	HI_SIMPLEINFO_CA("VMX_Verify_Authenticate: u32FlashStartAddr: 0x%x, u32Addrlength: 0x%x\n", u32FlashStartAddr, u32Addrlength);
	VMX_printBuffer("VMX_Verify_Authenticate, first 32 bytes:", pu8StartVirAddr, 32);
#ifdef HI_LOADER_APPLOADER
	tmp = (HI_U8 *)malloc(image_len);
#else
       HI_MEM_Alloc(&tmp, image_len);
       tmp = (HI_U8 *)tmp;
#endif
	if(NULL == tmp)
	{
		HI_SIMPLEINFO_CA("malloc for tmp failed: 0x%x!\n", image_len);
		return HI_FAILURE;
	}

	ret = verifySignature(pu8StartVirAddr + sig_offset, 
							pu8StartVirAddr + image_offset, 
							tmp, 
							image_len, 
							image_len, 
							1, 
							&errorCode);
	if(1 == ret)
	{
		HI_SIMPLEINFO_CA("verifySignature() success! do not burn to flash ret:0x%x, u32FlashStartAddr:0x%x\n", ret, u32FlashStartAddr);
#ifdef HI_LOADER_APPLOADER
		free(tmp);
		tmp = NULL;
#else
		HI_MEM_Free(tmp);
		tmp = NULL;
#endif
		ret = VMX_SetBurnParams(u32FlashStartAddr, HI_FALSE);
		if(HI_SUCCESS != ret)
		{
			LOADER_UpgrdeDone(0, 0);	//reboot
		}

		ret = VMX_SetEraseParamByFlashAddr(u32FlashStartAddr);
		if(HI_SUCCESS != ret)
		{

			LOADER_UpgrdeDone(0, 0);	//reboot
		}

		return HI_SUCCESS;
	}
	else if((1 == errorCode) && (0 == ret))			/* Invalid signature, reboot */
	{
		HI_SIMPLEINFO_CA("verifySignature() failed, Invalid signature, reboot! errorCode: 0x%x, ret: 0x%x, u32FlashStartAddr:0x%x\n", errorCode, ret, u32FlashStartAddr);
#ifdef HI_LOADER_APPLOADER
		free(tmp);
		tmp = NULL;
#else
		HI_MEM_Free(tmp);
        tmp = NULL;
#endif
		LOADER_UpgrdeDone(0, 0);		//reboot
	}
	else if((2 == errorCode) && (0 == ret)) 		/* Src is re-encrypted inside BL library, burn to flash */
	{
		HI_SIMPLEINFO_CA("verifySignature() success! burn src to flash, errorCode:0x%x, u32FlashStartAddr:0x%x\n", errorCode, u32FlashStartAddr);
#ifdef HI_LOADER_APPLOADER
		free(tmp);
		tmp = NULL;
#else
        HI_MEM_Free(tmp);
		tmp = NULL;
#endif
		ret = VMX_SetBurnParams(u32FlashStartAddr, HI_TRUE);
		if(HI_SUCCESS != ret)
		{
			LOADER_UpgrdeDone(0, 0);	//reboot
		}
		return HI_SUCCESS;
	}

	if(NULL != tmp)
	{
#ifdef HI_LOADER_APPLOADER
		free(tmp);
		tmp = NULL;
#else
		HI_MEM_Free(tmp);
		tmp = NULL;
#endif
	}
	return HI_SUCCESS;
}

/*-----------------------------------END----------------------------------*/

