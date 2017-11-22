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
#include "hi_loader_info.h"
#include "loaderdb_info.h"
#include "hi_flash.h"
#include "ca_ssd.h"

/* for avoid conflict with libhiloader.a & so */
#if defined(HI_LOADER_BOOTLOADER) || defined(HI_LOADER_APPLOADER)
#include "upgrd_common.h"
#else /* libhiloader.a &so */
#include <string.h>
#include <stdlib.h>

#undef HI_FATAL_LOADER 
#undef HI_ERR_LOADER        
#undef HI_WARN_LOADER     
#undef HI_INFO_LOADER
#undef HI_DBG_LOADER  

 /* for debug libhiloader.a */
 #define HI_ERR_LOADER(arg...) HI_PRINT(arg)
 #define HI_DBG_LOADER(arg...) 
#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE
static const HI_CHAR s_szLoaderVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";
#endif
HI_S32 HI_LOADER_ReadParameters(HI_LOADER_PARAMETER_S* info)
{
	UPGRD_LOADER_INFO_S stUpgrdLoaderInfo;

	if (HI_NULL == info)
	{
		HI_ERR_LOADER("Invaled params.");
		return HI_FAILURE;
	}

	if (HI_SUCCESS != Upgrd_ReadLoaderDBInfo(&stUpgrdLoaderInfo))
	{
		HI_ERR_LOADER("Failed to read loaderdb info.\n");
		return HI_FAILURE;
	}

	memcpy(info, &stUpgrdLoaderInfo.stLoaderParam, sizeof(HI_LOADER_PARAMETER_S));
	return HI_SUCCESS;
}

HI_S32 HI_LOADER_WriteParameters(HI_LOADER_PARAMETER_S* info)
{
	UPGRD_LOADER_INFO_S stUpgrdLoaderInfo;

	if (HI_NULL == info)
	{
		HI_ERR_LOADER("Invaled params.");
		return HI_FAILURE;
	}

	if (HI_SUCCESS != Upgrd_ReadLoaderDBInfo(&stUpgrdLoaderInfo))
	{
		HI_ERR_LOADER("Failed to read loaderdb info.");
		return HI_FAILURE;
	}

	if (HI_LOADER_TYPE_BUTT > info->eUpdateType)
	{
		stUpgrdLoaderInfo.stTagPara.bTagNeedUpgrd = HI_TRUE;
		stUpgrdLoaderInfo.stTagPara.bTagManuForceUpgrd = HI_FALSE;
	}
	else
	{
		info->eUpdateType = HI_LOADER_TYPE_BUTT;
		stUpgrdLoaderInfo.stTagPara.bTagNeedUpgrd = HI_FALSE;
		stUpgrdLoaderInfo.stTagPara.bTagManuForceUpgrd = HI_FALSE;
	}

	/*clear loader history data*/
	stUpgrdLoaderInfo.stLoaderPrivate.u32FailedCnt = 0;
	stUpgrdLoaderInfo.stLoaderPrivate.bTagDestroy = HI_FALSE;

	memcpy(&stUpgrdLoaderInfo.stLoaderParam, info, sizeof(HI_LOADER_PARAMETER_S));

	if (HI_SUCCESS != Upgrd_WriteLoaderDBInfo(&stUpgrdLoaderInfo))
	{
		HI_ERR_LOADER("Failed to write loaderdb info.");
		return HI_FAILURE;
	}

	return HI_SUCCESS;
}

HI_S32 HI_LOADER_ReadSTBInfo(HI_LOADER_STB_INFO_S* pstStbinfo)
{
	HI_U32 u32RegionSize = 0;
	HI_U32 u32Offset;
	HI_U32 u32Size;
	HI_HANDLE hFlash = HI_INVALID_HANDLE;
	HI_U8  *pucBuf;
	HI_S32 s32Ret  = HI_FAILURE;
	HI_U8  *pu8BufTmp = HI_NULL;

	if (NULL == pstStbinfo)
	{
		HI_ERR_LOADER("pointer is null.");
		return HI_FAILURE;
	}

	if (HI_SUCCESS != Upgrd_OpenDataBlock(STBINFO, &hFlash, &u32RegionSize, &u32Offset, &u32Size))
	{
		return HI_FAILURE;
	}
	else  /* external check */
	{
		/* check size is enough */
		if (u32Size < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset + u32Size > u32RegionSize))
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", STBINFO, u32Offset, u32Size);
			s32Ret =  HI_FAILURE;
			goto out1;
		}

		HI_DBG_LOADER(" %s offset: 0x%08x, size: 0x%08x\n", STBINFO, u32Offset, u32Size);
	}

	if (NULL == (pucBuf = (HI_U8*)malloc(u32RegionSize)))
	{
		HI_ERR_LOADER("Failed to malloc space.");
		s32Ret =  HI_FAILURE;
		goto out1;
	}

	/* to read STB ID data */
	if (0 >= HI_Flash_Read(hFlash, (HI_U64)0, pucBuf, u32RegionSize, HI_FLASH_RW_FLAG_RAW))
	{
		HI_ERR_LOADER("Failed to read block.");
		s32Ret = HI_FAILURE;
		goto out2;
	}

    /* according to the requirements of hisecurity, need decrypt here*/
    /* achieve encrypt data length*/
    s32Ret = CA_SSD_DecryptImage(pucBuf, u32RegionSize, CA_SSD_KEY_GROUP1);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_LOADER("Failed to decrypt block.\n");
        goto out2;
    }

    s32Ret = CA_SSD_AuthenticateEx(pucBuf, &u32RegionSize);
    if ( HI_SUCCESS != s32Ret )
    {
        HI_ERR_LOADER("Failed to authenticate block.\n");
        goto out2;
    }

	/*
	   Data conversion:
	   AAAABBCCCDDEEXFFFFFFFFFFFF
	   AAAA: AREA CODE
	   BB: OUI
	   CCC: Batch
	   EE: HW
	 */

	if (u32Offset < u32RegionSize)
	{
#ifdef HI_ADVCA_SUPPORT
#ifdef HI_ADVCA_TYPE_NAGRA
        /*  considering the sbp signature header(4Bytes) */
        pu8BufTmp = pucBuf + 4;
#else
#ifndef HI_ADVCA_TYPE_VERIMATRIX
        /*  considering the sbp signature header */
        HI_CAImgHead_S stCAImgHead;
        
        memset(&stCAImgHead, 0x0, sizeof(HI_CAImgHead_S));
        memcpy(&stCAImgHead,(HI_CAImgHead_S *)pucBuf,sizeof(HI_CAImgHead_S));
        pu8BufTmp = pucBuf + stCAImgHead.u32CodeOffset;
#else
        pu8BufTmp = pucBuf;
#endif
#endif
#else
		pu8BufTmp = pucBuf + u32Offset;
#endif
	}
	else
	{
		s32Ret = HI_FAILURE;
		goto out2;
	}

	pstStbinfo->u32AreaCode = (pu8BufTmp[0] << 8) | pu8BufTmp[1];
	pstStbinfo->u32OUI = pu8BufTmp[2];
	pstStbinfo->u32HWBatch = (pu8BufTmp[3] << 4) | (pu8BufTmp[4] >> 4);
	pstStbinfo->u32HWVersion = ((pu8BufTmp[5] & 0x0f) << 4) | pu8BufTmp[6] >> 4;

	memcpy(pstStbinfo->au8OutSn, pu8BufTmp, HI_SYSCFG_STBID_LEN);
#ifdef LOADER_INNER_STB_SN
	memcpy(pstStbinfo->au8Sn, pu8BufTmp + HI_SYSCFG_STBID_LEN, HI_SYSCFG_STBSN_LEN);
#endif

	s32Ret = HI_SUCCESS;

out2:
	free(pucBuf);
out1:
	HI_Flash_Close(hFlash);

	return s32Ret;
}

#if defined (HI_ADVCA_SUPPORT) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
HI_S32 HI_LOADER_WriteSTBInfo(HI_LOADER_STB_INFO_S* pstStbinfo)
{
    HI_ERR_LOADER("STB info is not allowed to write!\n");
    return HI_SUCCESS;
}
#else
HI_S32 HI_LOADER_WriteSTBInfo(HI_LOADER_STB_INFO_S* pstStbinfo)
{
	HI_U8  *pucBuf;
	HI_U32 u32RegionSize = 0;
	HI_U32 u32Offset;
	HI_U32 u32Size;
	HI_HANDLE hFlash = HI_INVALID_HANDLE;
	HI_S32 s32Ret  = HI_FAILURE;

	if (NULL == pstStbinfo)
	{
		HI_ERR_LOADER("pointer is null.");
		return HI_FAILURE;
	}

	if (HI_SUCCESS != Upgrd_OpenDataBlock(STBINFO, &hFlash, &u32RegionSize, &u32Offset, &u32Size))
	{
		return HI_FAILURE;
	}
	else  /* external check */
	{
		/* check size is enough */
		if (u32Size < sizeof(HI_LOADER_STB_INFO_S)  || (u32Offset + u32Size > u32RegionSize) )
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", STBINFO, u32Offset, u32Size);
			s32Ret = HI_FAILURE;
			goto out1;
		}

		HI_DBG_LOADER(" %s offset: 0x%08x, size: 0x%08x\n", STBINFO, u32Offset, u32Size);
	}

	if (NULL == (pucBuf = (HI_U8*)malloc(u32RegionSize)))
	{
		HI_ERR_LOADER("Failed to malloc space.");
		s32Ret =  HI_FAILURE;
		goto out1;
	}

	if (0 >= HI_Flash_Read(hFlash, (HI_U64)0, pucBuf, u32RegionSize, HI_FLASH_RW_FLAG_RAW))
	{
		HI_ERR_LOADER("Failed to read block.");
		s32Ret =  HI_FAILURE;
		goto out2;
	}
    
    s32Ret = CA_SSD_DecryptImage(pucBuf, u32RegionSize, CA_SSD_KEY_GROUP1);
    if ( HI_SUCCESS != s32Ret )
    {
        goto out2;
    }

	if (u32Offset < u32RegionSize)
	{
		memcpy(pucBuf + u32Offset, pstStbinfo->au8OutSn, HI_SYSCFG_STBID_LEN);

#ifdef LOADER_INNER_STB_SN
		memcpy((pucBuf + u32Offset + HI_SYSCFG_STBID_LEN), pstStbinfo->au8Sn, HI_SYSCFG_STBSN_LEN);
#endif
	}
	else
	{
		s32Ret = HI_FAILURE;
		goto out2;
	}

    s32Ret = CA_SSD_EncryptImage(pucBuf, u32RegionSize, CA_SSD_KEY_GROUP1);
    if ( HI_SUCCESS != s32Ret )
    {
        goto out2;
    }
    
	if (0 >= HI_Flash_Write(hFlash, (HI_U64)0, pucBuf, u32RegionSize, HI_FLASH_RW_FLAG_ERASE_FIRST))
	{
		HI_ERR_LOADER("Failed to write block '%s'.", STBINFO);
		s32Ret =  HI_FAILURE;
		goto out2;
	}

	HI_DBG_LOADER("[HI_LOADER_WriteSTBInfo]write STBINFO success.\n");

	s32Ret = HI_SUCCESS;

out2:
	free(pucBuf);
out1:
	HI_Flash_Close(hFlash);

	return s32Ret;
}
#endif

