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
#include "hi_flash.h"
#include "crc32.h"
#include "loaderdb_info.h"
#include "ca_ssd.h"

/* for avoid conflict with libhiloader.a & so */
#if defined(HI_LOADER_BOOTLOADER) || defined(HI_LOADER_APPLOADER)
#include "upgrd_common.h"
#else
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

 #undef HI_FATAL_LOADER 
 #undef HI_ERR_LOADER        
 #undef HI_WARN_LOADER     
 #undef HI_INFO_LOADER 
 #undef HI_DBG_LOADER

 /* for debug libhiloader.a */
 #define HI_ERR_LOADER(arg...) HI_PRINT(arg)
 #define HI_INFO_LOADER(arg...) 
 #define HI_DBG_LOADER(arg...) 
#endif

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#define PARTION_NAME_LEN (32)

typedef struct tagLOADER_DATABLOCK_INFO_S
{
    HI_CHAR         ac8PartionName[PARTION_NAME_LEN];     /*数据所在分区的分区名，在bootargs中描述，不同数据
                                                          可能位于同一分区内，此时这些数据的分区名相同*/
    HI_FLASH_TYPE_E eFlashType;                     /*分区所在Flash的类型*/
    HI_U32          u32Offset;                          /*数据在分区中的地址偏移,如某分区只保存一种数据，
                                                        则这种数据的地址偏移位０*/
    HI_U32          u32Size;                            /*数据在分区中预留的长度*/
} LOADER_DATABLOCK_INFO_S;

#define SAVE_FREE( p ) \
    do {\
        if (p){\
            free(p); p = NULL;} \
    } while (0)

static HI_S32 Upgrd_checkTagSector(UPGRD_LOADER_INFO_S *pstInfoParam);
static HI_S32 Upgrd_checkOtaSector(UPGRD_LOADER_INFO_S *pstInfoParam);

static HI_BOOL PartitionExist(const HI_CHAR* pstPartitonName)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_BOOL bRet = HI_FALSE;
    HI_HANDLE hFlashHandle = HI_INVALID_HANDLE;
    HI_U32 u32Offset = 0, u32Size = 0, u32RegionSize = 0;
    
    s32Ret = Upgrd_OpenDataBlock(pstPartitonName, &hFlashHandle, &u32RegionSize, &u32Offset, &u32Size);
	if (HI_SUCCESS != s32Ret)
	{
	    HI_ERR_LOADER("%s: fail to open db partition %s\n", __FUNCTION__, pstPartitonName);
		bRet = HI_FALSE;
	}
	else
	{
	    bRet = HI_TRUE;
	}

	if (HI_INVALID_HANDLE != hFlashHandle)
    {
		HI_Flash_Close(hFlashHandle);
	}
	
	return bRet;
}

static HI_S32 CheckLoaderDB(UPGRD_LOADER_INFO_S *pstInfoParam)
{
     if (HI_SUCCESS != Upgrd_checkTagSector(pstInfoParam))
     {
         HI_ERR_LOADER("Fail to check loader db Tag\n");
         return HI_FAILURE;
     }

     if (HI_SUCCESS != Upgrd_checkOtaSector(pstInfoParam))
     {
         HI_ERR_LOADER("Fail to check OTA parameter\n"); 
     	 return HI_FAILURE;
     }
     
     return HI_SUCCESS;
}

static HI_S32 GetLoaderDBInfo(const HI_CHAR* pstPartitonName, UPGRD_LOADER_INFO_S *pstInfoParam)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hFlashHandle = HI_INVALID_HANDLE;
    HI_U8 *au8Buf = HI_NULL;
    HI_U32 u32Offset = 0, u32Size = 0, u32RegionSize = 0;
	HI_U32 u32RawDataOffset = 0;
	UPGRD_LOADER_INFO_S *pstLoaderInfo;

    if (pstPartitonName == HI_NULL || pstInfoParam == HI_NULL)
    {
       HI_ERR_LOADER("%s: parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }
    
    /* 1: loaderdb */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(pstPartitonName, &hFlashHandle, &u32RegionSize, &u32Offset, &u32Size))
	{
	    HI_ERR_LOADER("%s:fail to call Upgrd_OpenDataBlock\n", __FUNCTION__);
		goto ERROR_EXIT;
	}

    /* check size is enough */
	if (u32Size < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset + u32Size > u32RegionSize))
	{
		HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", pstPartitonName, u32Offset, u32Size);
		goto ERROR_EXIT;
	}

	/* prepare flash block buffer */
	au8Buf = (HI_U8*)malloc(u32RegionSize);
	if (HI_NULL == au8Buf)
	{
		HI_ERR_LOADER("%s: Fail to malloc memory\n", __FUNCTION__);
		goto ERROR_EXIT;
	}

	/* NOT check return value for badblock */
	s32Ret = HI_Flash_Read(hFlashHandle, (HI_U64)0, au8Buf, u32RegionSize, HI_FLASH_RW_FLAG_RAW);
	if (s32Ret <= 0)
	{
	    HI_ERR_LOADER("%s: HI_Flash_Read partion %s error\n", __FUNCTION__, pstPartitonName);
        s32Ret = HI_FAILURE;
        goto ERROR_EXIT;
	}
	
    /*For no ca, the value of u32RawDataOffset is always retuned to 0*/
	s32Ret = CA_DecryptAndCheckCMAC(&au8Buf[u32Offset], u32RegionSize, &u32RawDataOffset);
    if (HI_SUCCESS != s32Ret )
    {
        HI_ERR_LOADER("%s:Fail to decrypt and check CMAC\n", __FUNCTION__);
    	goto ERROR_EXIT;
    }   
    
	pstLoaderInfo = (UPGRD_LOADER_INFO_S *)(au8Buf+u32Offset+u32RawDataOffset);
    s32Ret = CheckLoaderDB(pstLoaderInfo);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("%s:Fail to check Loader DB\n", __FUNCTION__);
    	goto ERROR_EXIT;
    }  

    memcpy(pstInfoParam, pstLoaderInfo, sizeof(UPGRD_LOADER_INFO_S));
    
    s32Ret = HI_SUCCESS;
    
ERROR_EXIT:
    if (au8Buf != HI_NULL)
    {
        free(au8Buf);
    }

    if (HI_INVALID_HANDLE != hFlashHandle)
    {
		HI_Flash_Close(hFlashHandle);
	}
	
    return s32Ret;	
}

static HI_S32 GetDefaultLoaderDBInfo(UPGRD_LOADER_INFO_S *pstLoaderInfo)
{    
    if (pstLoaderInfo == HI_NULL)
    {
       HI_ERR_LOADER("GetDefaultLoaderDBInfo: parameter error\n");
       return HI_FAILURE;
    }

    memset(pstLoaderInfo, 0x0, sizeof(UPGRD_LOADER_INFO_S));    
    /***********************set default tag****************************************/
	pstLoaderInfo->stTagPara.bTagNeedUpgrd = HI_FALSE;
	pstLoaderInfo->stTagPara.bTagManuForceUpgrd = HI_FALSE;

    /***********************set default loader parameter and private data***************/
	memset(&pstLoaderInfo->stLoaderParam, 0x00, sizeof(HI_LOADER_PARAMETER_S));
	pstLoaderInfo->stLoaderPrivate.u32FailedCnt = 0;
	pstLoaderInfo->stLoaderPrivate.bTagDestroy = HI_FALSE;
	pstLoaderInfo->stLoaderParam.eUpdateType = HI_LOADER_TYPE_BUTT;
	
	return HI_SUCCESS;
}

static HI_S32 CalcLoaderDBInfoCRC(UPGRD_LOADER_INFO_S *pstLoaderInfo)
{    
    HI_U8  *pu8TmpBuf = HI_NULL;
    HI_U32  u32CrcDataLength;
    
    if (pstLoaderInfo == HI_NULL)
    {
       HI_ERR_LOADER("%s:parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }

    /***********************Calculate tag CRC****************************************/
    pstLoaderInfo->stTagParaHead.u32MagicNumber = LOADER_MAGIC_NUMBER;
    pstLoaderInfo->stTagParaHead.u32Length = sizeof(UPGRD_TAG_PARA_S);

    pu8TmpBuf = (HI_U8 *)pstLoaderInfo + sizeof(UPGRD_PARA_HEAD_S) - sizeof(HI_U32);
    u32CrcDataLength = pstLoaderInfo->stTagParaHead.u32Length + sizeof(HI_U32);   
    pstLoaderInfo->stTagParaHead.u32Crc = crc32(0, pu8TmpBuf, u32CrcDataLength);
    HI_DBG_LOADER("Loader tag crc: 0x%08x\n", pstLoaderInfo->stTagParaHead.u32Crc);
    
    /***********************Calculate Loader Parameter CRC****************************************/
    pstLoaderInfo->stLoaderParaHead.u32MagicNumber = LOADER_MAGIC_NUMBER;
    pstLoaderInfo->stLoaderParaHead.u32Length = sizeof(HI_LOADER_PARAMETER_S) + sizeof(UPGRD_PRIVATE_PARAM_S);
    
    /*******************************************************************
     * UPGRD_PARA_HEAD_S     stLoaderParaHead;
     *    HI_U32 u32MagicNumber;
     *    HI_U32 u32Crc;
     *    HI_U32 u32Length;                       ---|
     * HI_LOADER_PARAMETER_S stLoaderParam;       ---| ==> crc region 
     * UPGRD_PRIVATE_PARAM_S stLoaderPrivate;     ---|
     *******************************************************************/
   	pu8TmpBuf = (HI_U8*)&pstLoaderInfo->stLoaderParaHead.u32Length;
	u32CrcDataLength = sizeof(HI_U32) + pstLoaderInfo->stLoaderParaHead.u32Length;

    pstLoaderInfo->stLoaderParaHead.u32Crc = crc32(0, pu8TmpBuf, u32CrcDataLength);	
    
	HI_DBG_LOADER("Loader prameter crc: 0x%08x\n", pstLoaderInfo->stLoaderParaHead.u32Crc);

	return HI_SUCCESS;
}


static HI_S32 SaveLoaderDBInfo(const HI_CHAR* pstPartitonName, UPGRD_LOADER_INFO_S *pstLoaderInfo)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_HANDLE hFlashHandle = HI_INVALID_HANDLE;
    HI_U8 *au8Buf = HI_NULL;
    HI_U32 u32Offset = 0, u32Size = 0, u32RegionSize = 0;
    HI_U32 u32DataLen;

    if (pstPartitonName == HI_NULL || pstLoaderInfo == HI_NULL)
    {
       HI_ERR_LOADER("%s: parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }
    
    /* 1: loaderdb */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(pstPartitonName, &hFlashHandle, &u32RegionSize, &u32Offset, &u32Size))
	{
	    HI_ERR_LOADER("%s: fail to open db partition %s\n", __FUNCTION__, pstPartitonName);
		s32Ret = HI_FAILURE;
		goto ERROR_EXIT;
	}

	/* check size is enough */
	if (u32Size < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset + u32Size) > u32RegionSize)
	{
		HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", pstPartitonName, u32Offset, u32Size);
		goto ERROR_EXIT;
	}

	/* prepare flash block buffer */
	au8Buf = (HI_U8*)malloc(u32RegionSize);
	if (HI_NULL == au8Buf)
	{
	    HI_ERR_LOADER("%s: Fail to malloc memory\n", __FUNCTION__);
		goto ERROR_EXIT;
	}

	/* NOT check return value for badblock */
	s32Ret = HI_Flash_Read(hFlashHandle, (HI_U64)0, au8Buf, u32RegionSize, HI_FLASH_RW_FLAG_RAW);
	if (s32Ret <= 0)
	{
	    HI_ERR_LOADER("%s: HI_Flash_Read partion %s error\n", __FUNCTION__, pstPartitonName);
        s32Ret = HI_FAILURE;
        goto ERROR_EXIT;
	}

    s32Ret = CalcLoaderDBInfoCRC(pstLoaderInfo);
    if (HI_SUCCESS != s32Ret)
	{
	    HI_ERR_LOADER("%s: Fail to call CalcLoaderDBInfoCRC\n", __FUNCTION__);
        goto ERROR_EXIT;
	}

    u32DataLen = sizeof(UPGRD_LOADER_INFO_S);
	s32Ret = CA_GenerateCMACAndEncrypt(au8Buf + u32Offset, (HI_U8 *)pstLoaderInfo, u32DataLen);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("%s: Fail to generate CMAC and encrypt for loader db\n", __FUNCTION__);
    	goto ERROR_EXIT;
    }       
    
	/* Writing data to the main block */
	if (0 > HI_Flash_Erase(hFlashHandle, (HI_U64)0, u32RegionSize))
	{
		HI_ERR_LOADER("Flash erase error!\n.");
		s32Ret = HI_FAILURE;
		goto ERROR_EXIT;
	}
	s32Ret = HI_Flash_Write(hFlashHandle, (HI_U64)0, (HI_U8*)au8Buf, u32RegionSize, HI_FLASH_RW_FLAG_ERASE_FIRST);
  	if (s32Ret <= 0)
  	{
  		HI_DBG_LOADER("%s: Failed to write block '%s' of flash.", __FUNCTION__, pstPartitonName);
  		s32Ret = HI_FAILURE;
        goto ERROR_EXIT;
  	}	
	
    s32Ret = HI_SUCCESS;
    
ERROR_EXIT:
    if (au8Buf != HI_NULL)
    {
        free(au8Buf);
    }

    if (HI_INVALID_HANDLE != hFlashHandle)
    {
		HI_Flash_Close(hFlashHandle);
	}
    return s32Ret;
}


HI_S32 Upgrd_ReadLoaderDBInfo(UPGRD_LOADER_INFO_S *pstInfoParam)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_BOOL bBakPartionExist = HI_FALSE;
    HI_BOOL bIsDbMainOk = HI_FALSE, bIsDbBakOk = HI_FALSE;
    UPGRD_LOADER_INFO_S stLoaderInfo;

    if (pstInfoParam == HI_NULL)
    {
       HI_ERR_LOADER("%s:Prameter error!", __FUNCTION__);
       return HI_FAILURE;
    }
    
    /*Get main loader db info*/
    s32Ret = GetLoaderDBInfo(LOADERDB, &stLoaderInfo); 
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_LOADER("%s:Fail to get main loader db!", __FUNCTION__);
        bIsDbMainOk = HI_FALSE;
    } 
    else
    {
        bIsDbMainOk = HI_TRUE; 
        goto _OK_EXIT_; /*If succeed in getting loader infor, exit here*/
    }

    /*Get bak loader db infor if it does exsit */
    if(HI_TRUE == PartitionExist(LOADERDBBAK))
    {
        bBakPartionExist = HI_TRUE;
        s32Ret = GetLoaderDBInfo(LOADERDBBAK, &stLoaderInfo);
        if (s32Ret == HI_SUCCESS)
        {
            bIsDbBakOk = HI_TRUE; 
            /*If bak is OK, then restore main db infor*/
            if (HI_SUCCESS != SaveLoaderDBInfo(LOADERDB, &stLoaderInfo))
            {
                 HI_ERR_LOADER("%s:Fail to save loader db!", __FUNCTION__);
            }
            goto _OK_EXIT_; /*If succeed in getting bak loader infor, exit here*/
        }
        else
        {
            HI_ERR_LOADER("%s:Fail to get bak loader db!", __FUNCTION__);
            bIsDbBakOk = HI_FALSE;
        }        
    }
    else
    {
        /*If bak db does not exsit, we also set bIsDbBakOk = HI_FALSE. see process below */
        bIsDbBakOk = HI_FALSE; 
    }   
    

    /*If main and bak db infor are not OK, we will use default db and write into both flash partitions */
    if (bIsDbMainOk == HI_FALSE && bIsDbBakOk == HI_FALSE)
    {    
        HI_ERR_LOADER("%s: Fail to get loader DB, use default loader infor.\n", __FUNCTION__);
        GetDefaultLoaderDBInfo(&stLoaderInfo);
        if (HI_SUCCESS != SaveLoaderDBInfo(LOADERDB, &stLoaderInfo))
    	{
    		HI_ERR_LOADER("%s:Failed to Save default LoaderDBInfo to partiton %s", __FUNCTION__, LOADERDB);
    	}
    	
        /*save BAK partition if it does exist*/
    	if (bBakPartionExist == HI_TRUE)
    	{
    	    if (HI_SUCCESS != SaveLoaderDBInfo(LOADERDBBAK, &stLoaderInfo))
        	{
        		HI_ERR_LOADER("%s:Failed to Save default LoaderDBInfo to partiton %s", __FUNCTION__, LOADERDBBAK);
        	}
    	}
	}
 
_OK_EXIT_:
    memcpy(pstInfoParam, &stLoaderInfo, sizeof(stLoaderInfo));    
    return HI_SUCCESS;
}

HI_S32 Upgrd_WriteLoaderDBInfo(UPGRD_LOADER_INFO_S *pstInfoParam)
{
   HI_S32 s32Ret = HI_FAILURE;
   HI_BOOL bSaveMainDbOk = HI_FALSE; 
   HI_BOOL bDbBakExist = HI_FALSE, bSaveBakDbOk = HI_FALSE;
   
   if (pstInfoParam == HI_NULL)
   {
       HI_ERR_LOADER("%s:Prameter error!", __FUNCTION__);
       return HI_FAILURE;
   }

   /*Save main loader db*/
   s32Ret = SaveLoaderDBInfo(LOADERDB, pstInfoParam);
   if (s32Ret != HI_SUCCESS)
   {
        HI_ERR_LOADER("%s:Fail to save loader db to partiton %s!", __FUNCTION__, LOADERDB);
        bSaveMainDbOk = HI_FALSE;
   }
   else
   {
       bSaveMainDbOk = HI_TRUE;
   }

   /*Save bak loader db if it does exist*/
   if (HI_TRUE == PartitionExist(LOADERDBBAK))
   {
        bDbBakExist = HI_TRUE;
        s32Ret = SaveLoaderDBInfo(LOADERDBBAK, pstInfoParam);
        if (s32Ret != HI_SUCCESS)
        {
             HI_ERR_LOADER("%s:Fail to save loader db to partiton %s!", __FUNCTION__, LOADERDBBAK);
             bSaveBakDbOk = HI_FALSE;
        }
        else
        {
             bSaveBakDbOk = HI_TRUE;
        }
   }
   else
   {
        /*If bak db does not exsit, we also set bSaveDbBakOk = HI_FALSE. see process below */
        bSaveBakDbOk = HI_FALSE; 
   } 

   /* As long as one of db partitions is saved successful, return HI_SUCCESS */
   if ((bSaveMainDbOk == HI_TRUE) || (bDbBakExist == HI_TRUE && bSaveBakDbOk == HI_TRUE))
   {
       return HI_SUCCESS;
   }
   else
   {
      HI_ERR_LOADER("%s:Fail to save loader db!", __FUNCTION__);
      return HI_FAILURE;
   }   
}


HI_S32 Upgrd_ClearRequest(UPGRD_LOADER_INFO_S *pstLoaderInfo)
{
	//add for first time to use dataclr

	pstLoaderInfo->stLoaderPrivate.u32FailedCnt = 0;
	pstLoaderInfo->stLoaderParam.eUpdateType = HI_LOADER_TYPE_BUTT;
	pstLoaderInfo->stTagPara.bTagNeedUpgrd = HI_FALSE;
	Upgrd_WriteLoaderDBInfo(pstLoaderInfo);

	return HI_SUCCESS;
}

static HI_S32 Upgrd_checkTagSector(UPGRD_LOADER_INFO_S *pstInfoParam)
{	
	HI_U32 u32Crc = 0, u32CrcDataLen;	
	HI_U8 *pucBuf;

	if (HI_NULL == pstInfoParam)
	{
		HI_ERR_LOADER("Invalid pointer parameter.");
		return HI_FAILURE;
	}

	if (LOADER_MAGIC_NUMBER == pstInfoParam->stTagParaHead.u32MagicNumber)
	{
	    pucBuf = (HI_U8 *)pstInfoParam + sizeof(UPGRD_PARA_HEAD_S) - sizeof(HI_U32);
	    u32CrcDataLen = pstInfoParam->stTagParaHead.u32Length + sizeof(HI_U32);
	    
		u32Crc = crc32(0, pucBuf,u32CrcDataLen);
		if (u32Crc == pstInfoParam->stTagParaHead.u32Crc)
		{
			return HI_SUCCESS;
		}
		else
		{
			HI_ERR_LOADER("read tag crc: 0x%08x, cal crc: 0x%08x\n", pstInfoParam->stTagParaHead.u32Crc, u32Crc);
		}
	}

	HI_DBG_LOADER("Failed to check tag sector.\n");
	return HI_FAILURE;
}

static HI_S32 Upgrd_checkOtaSector(UPGRD_LOADER_INFO_S *pstInfoParam)
{
	HI_U32 u32Crc = 0, u32CrcDataLen;	
	HI_U8 *pucBuf;

	if (HI_NULL == pstInfoParam)
	{
		HI_ERR_LOADER("Invalid pointer parameter.");
		return HI_FAILURE;
	}

	if (LOADER_MAGIC_NUMBER == pstInfoParam->stLoaderParaHead.u32MagicNumber)
	{
		/*******************************************************************
		 * UPGRD_PARA_HEAD_S     stLoaderParaHead;
		 *    HI_U32 u32MagicNumber;
		 *    HI_U32 u32Crc;
		 *    HI_U32 u32Length;                       ---|
		 * HI_LOADER_PARAMETER_S stLoaderParam;       ---| ==> crc region 
		 * UPGRD_PRIVATE_PARAM_S stLoaderPrivate;     ---|
		 *******************************************************************/
		pucBuf = (HI_U8 *)&pstInfoParam->stLoaderParaHead.u32Length;
	    u32CrcDataLen = (sizeof(HI_U32) + pstInfoParam->stLoaderParaHead.u32Length);

		u32Crc = crc32(0, pucBuf, u32CrcDataLen);
		if (u32Crc == pstInfoParam->stLoaderParaHead.u32Crc)
		{
			return HI_SUCCESS;
		}
		else
		{
			HI_ERR_LOADER("read ota crc: 0x%08x, cal crc: 0x%08x\n", pstInfoParam->stLoaderParaHead.u32Crc, u32Crc);
		}
	}

	HI_DBG_LOADER("Failed to check ota sector.\n");
	return HI_FAILURE;
}

/*
 * search loader config parameter from bootargs in secondary style: loaderdb=part_name,offset,size.
 */
static HI_S32 GetDataBlockInfo(const HI_CHAR *pstrDataName, const HI_CHAR *bootargs,
		LOADER_DATABLOCK_INFO_S *pstDataInfo)
{
	HI_CHAR *pstr  = (HI_CHAR *)pstrDataName;
	HI_CHAR *pstr2 = (HI_CHAR *)bootargs;
	HI_CHAR buf[12];

	if ((HI_NULL == pstrDataName) || (HI_NULL == bootargs) || (HI_NULL == pstDataInfo))
		return HI_FAILURE;

	pstr = strstr(pstr2, pstr);

	if ((HI_NULL == pstr) || (strlen(pstr) <= strlen(pstrDataName)))
		return HI_FAILURE;

	if (pstr[strlen(pstrDataName)] == '=')
	{
		/* get partition name */
		pstr += strlen(pstrDataName) + 1; //point to the char after '='
		pstr2 = strstr(pstr, ",");

		if (HI_NULL == pstr2)
			return HI_FAILURE;

		if ((HI_U32)(pstr2 - pstr) >= sizeof(pstDataInfo->ac8PartionName))
		{
			HI_ERR_LOADER("datablock name is too long in bootargs!");
			return HI_FAILURE;
		}

		memset(pstDataInfo->ac8PartionName, 0, sizeof(pstDataInfo->ac8PartionName));
		memcpy(pstDataInfo->ac8PartionName, pstr, pstr2 - pstr);

		/* get offset */
		pstr  = pstr2 + 1;
		pstr2 = strstr(pstr, ",");

		if (HI_NULL == pstr2)
			return HI_FAILURE;

		if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
		{
			HI_ERR_LOADER("offset is invalid in bootargs!");
			return HI_FAILURE;
		}

		memset(buf, 0, sizeof(buf));
		memcpy(buf, pstr, pstr2 - pstr);
#ifdef HI_LOADER_BOOTLOADER
#ifdef HI_MINIBOOT_SUPPORT
		pstDataInfo->u32Offset = simple_strtoul_2(buf, HI_NULL, 16);
#else
		pstDataInfo->u32Offset = simple_strtoul(buf, HI_NULL, 16); 
#endif
#else
		pstDataInfo->u32Offset = strtoul(buf, HI_NULL, 16);    
#endif
		/* get size */
		pstr  = pstr2 + 1;
		pstr2 = strstr(pstr, " ");

		if (HI_NULL == pstr2)
			return HI_FAILURE;

		if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
		{
			HI_ERR_LOADER("size is invalid in bootargs!");
			return HI_FAILURE;
		}

		memset(buf, 0, sizeof(buf));
		memcpy(buf, pstr, pstr2 - pstr);
#ifdef HI_LOADER_BOOTLOADER
#ifdef HI_MINIBOOT_SUPPORT
		pstDataInfo->u32Size = simple_strtoul_2(buf, HI_NULL, 16);		
#else
		pstDataInfo->u32Size = simple_strtoul(buf, HI_NULL, 16);
#endif
#else
		pstDataInfo->u32Size = strtoul(buf, HI_NULL, 16);    
#endif
		return HI_SUCCESS;
	}

	return HI_FAILURE;
}

#ifdef HI_LOADER_BOOTLOADER
static HI_CHAR* get_bootargs(HI_VOID)
{
	return getenv("bootargs");
}
#else
static HI_CHAR* get_bootargs(HI_VOID)
{
	/* bootargs size according to arch/arm/include/asm/setup.h COMMAND_LINE_SIZE */
	static HI_CHAR bootargs[1024];
	FILE *pf;

	if (NULL == (pf = fopen("/proc/cmdline", "r")))
	{
		HI_ERR_LOADER("Failed to open '/proc/cmdline'.\n");
		return HI_NULL;
	}

	if (NULL == fgets((char*)bootargs, sizeof(bootargs), pf))
	{
		HI_ERR_LOADER("Failed to fgets string.\n");
		fclose(pf);
		return HI_NULL;
	}

	fclose(pf);
	
	return bootargs;
}
#endif

/******************************************************************************************************
* Reagrding clarification of several paramters: 
* pu32RegionSize: The stroage area size of loader infor, 
*                  it is the block size of flash (Suppose the db size is not beyond flash block)
* pu32Size: the actual size you want to use. The paramter is used for storage sharing with other data in one partition.
*           Therefore, pu32Size <= pu32RegionSize
* pu32Offset: the offset loader db. The paramter is used for storage sharing with other data in one partition.
*           Therefore, (pu32Offset + pu32Size) <= pu32RegionSize
* If loader db is only save in one single partition, pu32Offset should be set to 0, 
*           and pu32Size and pu32RegionSize should be equal to stFlashInfo.BlockSize
*
* q00256878 add this comment 20150506
*******************************************************************************************************/
HI_S32 Upgrd_OpenDataBlock(const HI_CHAR* pstDBName, HI_HANDLE *hFlash, HI_U32 *pu32RegionSize, HI_U32 *pu32Offset,
		HI_U32 *pu32Size)
{
	HI_Flash_InterInfo_S stFlashInfo;
	LOADER_DATABLOCK_INFO_S stDBInfo;

	if ((HI_NULL == pstDBName)
			|| (HI_NULL == hFlash)
			|| (HI_NULL == pu32RegionSize)
			|| (HI_NULL == pu32Offset)
			|| (HI_NULL == pu32Size))
	{
		return HI_FAILURE;
	}

	*hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, (HI_CHAR*)pstDBName, (HI_U64)0, (HI_U64)0);

	if (HI_INVALID_HANDLE == *hFlash)
	{        
		HI_CHAR *bootargs = get_bootargs();
		if (HI_NULL == bootargs)
		{
			HI_ERR_LOADER("bootargs is null!");
			return HI_FAILURE;
		}
		
		if (HI_SUCCESS != GetDataBlockInfo(pstDBName, (const HI_CHAR *) bootargs, &stDBInfo))
		{
			HI_INFO_LOADER("no found %s=part_name,offset,size parameter from bootargs.\n", pstDBName);
			return HI_FAILURE;
		}

		*hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, stDBInfo.ac8PartionName, (HI_U64)0, (HI_U64)0);
		if (HI_INVALID_HANDLE == *hFlash)
		{
			HI_ERR_LOADER("open partition[%s] failed.\n", stDBInfo.ac8PartionName);
			return HI_FAILURE;
		}

		*pu32Offset = stDBInfo.u32Offset;
		*pu32Size = stDBInfo.u32Size;

		if (HI_SUCCESS != HI_Flash_GetInfo(*hFlash, &stFlashInfo))
		{
			HI_Flash_Close(*hFlash);
			return HI_FAILURE;
		}

		*pu32RegionSize = stFlashInfo.BlockSize;
	}
	else
	{
		*pu32Offset = 0;
		if (HI_SUCCESS != HI_Flash_GetInfo(*hFlash, &stFlashInfo))
		{
			HI_Flash_Close(*hFlash);
			return HI_FAILURE;
		}

		*pu32RegionSize = stFlashInfo.BlockSize; //stFlashInfo.PartSize
		*pu32Size = stFlashInfo.BlockSize;       //stFlashInfo.PartSize
	}

	return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
