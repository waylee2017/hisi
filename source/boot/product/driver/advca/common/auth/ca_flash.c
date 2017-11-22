/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : ca_flash.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#include "ca_authdefine.h"
#include "ca_flash.h"

#ifdef HI_MINIBOOT_SUPPORT
#include <cpuinfo.h>		//for get_bootmedia
#include "app.h"
#else
#include "u-boot-arm.h"		//for get_bootmedia
#include "common.h"
#endif

extern HI_FLASH_TYPE_E g_enFlashType ;
extern HI_U32 g_MaxBlockSize;
//extern int get_bootmedia(char **media, void *arg);
extern int find_flash_part(char *mtdparts, char *media_name, char *ptn_name, HI_U64 *start, HI_U64 *length);

static HI_HANDLE  flash_open_addr(HI_U64 u64addr,HI_U32 u32Len, HI_U64 *pu64AdjustOffset);
static HI_S32 ADP_flash_read(HI_HANDLE flashhandle, HI_U64 offset, HI_U8 * buf, HI_U32 u32ReadLen, HI_Flash_InterInfo_S *flashInfo);
static HI_S32 ADP_flash_write(HI_HANDLE flashhandle, HI_U64 offset, HI_U8 * buf, HI_U32 u32WriteLen);
HI_FLASH_TYPE_E CA_get_env_flash_type(HI_VOID)
{
#if 1
//#ifdef HI_ADVCA_TYPE_VERIMATRIX
//	return HI_FLASH_TYPE_SPI_0;
//#else
    HI_FLASH_TYPE_E EnvFlashType = HI_FLASH_TYPE_BUTT;
    switch (get_bootmedia(NULL, NULL)) 
    {
        default:
            EnvFlashType = HI_FLASH_TYPE_BUTT;
            break;
        case BOOT_MEDIA_NAND:
            EnvFlashType = HI_FLASH_TYPE_NAND_0;
            break;
        case BOOT_MEDIA_SPIFLASH:
            EnvFlashType = HI_FLASH_TYPE_SPI_0;
            break;
        case BOOT_MEDIA_EMMC:
            EnvFlashType = HI_FLASH_TYPE_EMMC_0;
        break;
    }

    return EnvFlashType;
#endif
}


HI_S32 CA_flash_GetSize(HI_CHAR *pPartionName, HI_U32 *Size)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle = HI_INVALID_HANDLE;
    HI_Flash_InterInfo_S FlashInfo;
    if (pPartionName == NULL || Size == 0)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }    
    
    *Size = 0;
    
    flashhandle = HI_Flash_OpenByName(pPartionName);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
    {
        HI_ERR_CA("HI_Flash_Open(%s) error\n", pPartionName);
        return -1;
    }

    Ret = HI_Flash_GetInfo(flashhandle, &FlashInfo);
    if (Ret)
    {
        HI_ERR_CA("HI_Flash_GetInfo partion %s error\n", pPartionName);
        HI_Flash_Close(flashhandle);
        return -1;
    }
    *Size = (HI_U32)FlashInfo.PartSize;
    
    HI_Flash_Close(flashhandle);
    return 0;
}


HI_S32 CA_flash_GetFlashAddressFromParitonName(HI_FLASH_TYPE_E enFlashType, HI_CHAR *pPartitionName, HI_U32 *Address)
{
#ifndef HI_ADVCA_TYPE_VERIMATRIX
    HI_U64 u64Address, u64Len;
    char *ptr;
    const char *bootargs_str = getenv("bootargs");
    char media_name[20];
    if (pPartitionName == NULL || Address == NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }  
    
	if(bootargs_str == HI_NULL)
	{
	    HI_ERR_CA("pPartitionName =%s\n",pPartitionName);
	    return HI_INVALID_HANDLE;
	}

	switch (enFlashType)
    {
    case HI_FLASH_TYPE_SPI_0 :
        if ((ptr = strstr(bootargs_str, "mtdparts=")) == NULL)
        {
        	HI_ERR_CA("Cannot find bootargs\n");
        	return HI_INVALID_HANDLE;
        }

        ptr += strlen("mtdparts=");
        memset(media_name, 0 , 20);
        memcpy(media_name, "hi_sfc", 6);
        if (find_flash_part(ptr, media_name, pPartitionName, &u64Address, &u64Len) == 0)
        {
        	HI_ERR_CA("Cannot find partition: %s\n", pPartitionName);
        	return HI_INVALID_HANDLE;
        }
        *Address = (HI_U32)u64Address;
        break;
   case HI_FLASH_TYPE_NAND_0 :
        if ((ptr = strstr(bootargs_str, "mtdparts=")) == NULL)
        {
        	HI_ERR_CA("Cannot find bootargs\n");
        	return HI_INVALID_HANDLE;
        }
    
        ptr += strlen("mtdparts=");
        memset(media_name, 0 , 20);
        memcpy(media_name, "hinand", 6);
    
        if (find_flash_part(ptr, media_name, pPartitionName, &u64Address, &u64Len) == 0)
        {
        	HI_ERR_CA("Cannot find partition: %s\n", pPartitionName);
        	return HI_INVALID_HANDLE;
        }
        *Address = (HI_U32)u64Address;
        break;
   case HI_FLASH_TYPE_EMMC_0 :
        if ((ptr = strstr(bootargs_str, "blkdevparts=")) == NULL)
        {
        	HI_ERR_CA("Cannot find bootargs\n");
        	return HI_INVALID_HANDLE;
        }
    
        ptr += strlen("blkdevparts=");
        memset(media_name, 0 , 20);
        memcpy(media_name, "mmcblk0", 7);
    
        if (find_flash_part(ptr, media_name, pPartitionName, &u64Address, &u64Len) == 0)
        {
        	HI_ERR_CA("Cannot find partition: %s\n", pPartitionName);
        	return HI_INVALID_HANDLE;
        }
        *Address = (HI_U32)u64Address;
        break;
    default:
        HI_ERR_CA("Do not support FlashType:%d\n", enFlashType);
    }
    
    return 0;
#endif
}


HI_S32 CA_flash_getinfo(HI_CHAR *pPartionName, HI_U32 *PartionSize, HI_U32 *BlockSize, HI_U32 *PageSize, HI_U32 *OobSize)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle;
    HI_Flash_InterInfo_S FlashInfo;
    if (pPartionName == NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }  
    
    flashhandle = HI_Flash_OpenByName(pPartionName);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
    {
        HI_ERR_CA("HI_Flash_Open error\n");
        return -1;
    }

    Ret = HI_Flash_GetInfo(flashhandle, &FlashInfo);
    if (Ret)
    {
        HI_ERR_CA("HI_Flash_GetInfo partion %s error\n", pPartionName);
        HI_Flash_Close(flashhandle);
        return -1;
    }
    if (PartionSize != HI_NULL) { *PartionSize = (HI_U32)FlashInfo.PartSize;}
    if (BlockSize != HI_NULL) { *BlockSize = FlashInfo.BlockSize;}
    if (PageSize != HI_NULL) {*PageSize = FlashInfo.PageSize;}    
    if (OobSize != HI_NULL) { *OobSize = FlashInfo.OobSize;}
    
    HI_Flash_Close(flashhandle);
    return 0;
}

static HI_S32 ADP_flash_read(HI_HANDLE flashhandle, HI_U64 offset, HI_U8 * buf, HI_U32 u32ReadLen, HI_Flash_InterInfo_S *pstflashInfo)
{
    HI_S32 Ret = 0;
    HI_Flash_InterInfo_S FlashInfo;
    HI_UCHAR *pucTmpBuff = HI_NULL, *pucReadBuff = HI_NULL;
    HI_BOOL  bBegAddrNoAlign = HI_FALSE, bEndAddrNoAlign = HI_FALSE;
    HI_U32   i, u32TotalBlocks=0, u32BlockSize, u32TmpLen;
    HI_U64   u64BlockAddr,u64BegBlockAddr, u64EndAddr, u64TmpOffset;
    HI_U32   u32BegNoAlignOffset=0, u32FirstRealLen=0, u32EndNoAlignOffset=0;
    HI_U32   u32BufIndex=0;

    if (HI_SUCCESS != HI_Flash_GetInfo(flashhandle, &FlashInfo))
    {
        HI_ERR_CA("ADP_flash_write: partion error\n");
        return HI_FAILURE;
    }

    if (pstflashInfo != NULL)
    {
       memcpy(pstflashInfo, &FlashInfo, sizeof(HI_Flash_InterInfo_S));
    }

    u32BlockSize = FlashInfo.BlockSize; 
    u64EndAddr = offset+u32ReadLen;
    u32TotalBlocks = 0;    
    u32BegNoAlignOffset = offset%u32BlockSize;
    u64BegBlockAddr = offset - u32BegNoAlignOffset; 
    u32FirstRealLen = 0;
    if (0 != u32BegNoAlignOffset)
        {
        //printf("%s: Non-aligned offset \n", __FUNCTION__);
        bBegAddrNoAlign = HI_TRUE;
        u32TotalBlocks = u32TotalBlocks+1;
        u64TmpOffset = u64BegBlockAddr+u32BlockSize;
        u32FirstRealLen = (u64EndAddr > u64TmpOffset) ? (u64TmpOffset-offset) : u32ReadLen;       
    }
    if (u32ReadLen > u32FirstRealLen)
    {
        u32TmpLen = u32ReadLen - u32FirstRealLen;
        u32TotalBlocks = u32TotalBlocks + u32TmpLen/u32BlockSize;

        u32EndNoAlignOffset = u64EndAddr%u32BlockSize;
        if (0 != u32EndNoAlignOffset)
        {
           bEndAddrNoAlign = HI_TRUE;
           u32TotalBlocks = u32TotalBlocks+1;
        }
    }
    
    if ((bBegAddrNoAlign == HI_TRUE) || (bEndAddrNoAlign == HI_TRUE))
    {     
       pucTmpBuff = (HI_UCHAR*)malloc(u32BlockSize);
       if(NULL ==pucTmpBuff)
       {
           HI_ERR_CA("%s:Failed to allocate memory.",__FUNCTION__);
           return HI_FAILURE;
       } 
    }
    u64BlockAddr = u64BegBlockAddr;
    u32BufIndex = 0;
    for (i=0; i< u32TotalBlocks; i++)
    {
        if ((i == 0) && (bBegAddrNoAlign == HI_TRUE))
        {
            memset(pucTmpBuff, 0xFF, u32BlockSize);           
            Ret = HI_Flash_Read(flashhandle, u64BlockAddr, pucTmpBuff, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
            if (Ret != u32BlockSize)
    {
                 HI_ERR_CA("%s: Fail to write non-align data at partion\n", __FUNCTION__);
                 Ret = HI_FAILURE;
                 goto RD_ERROR_EXIT;                
            }
            memcpy(&buf[u32BufIndex], &pucTmpBuff[u32BegNoAlignOffset], u32FirstRealLen);  
            u32BufIndex = u32BufIndex + u32FirstRealLen;
        }       
        else if ((i == u32TotalBlocks-1) && (bEndAddrNoAlign == HI_TRUE))
        {
           memset(pucTmpBuff, 0xFF, u32BlockSize);
           Ret = HI_Flash_Read(flashhandle, u64BlockAddr, pucTmpBuff, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
           if (Ret != u32BlockSize)
           {
                HI_ERR_CA("%s: Fail to write non-align data at partion\n", __FUNCTION__);
                Ret = HI_FAILURE;
                goto RD_ERROR_EXIT;
           }
           memcpy(&buf[u32BufIndex], pucTmpBuff, u32EndNoAlignOffset);  
           u32BufIndex = u32BufIndex + u32EndNoAlignOffset;
        }
        else
        {               
             Ret = HI_Flash_Read(flashhandle, u64BlockAddr, &buf[u32BufIndex], u32BlockSize, HI_FLASH_RW_FLAG_RAW);
             if (Ret != u32BlockSize)
             {
                 HI_ERR_CA("%s: Fail to write data\n",__FUNCTION__);
                 Ret = HI_FAILURE;
                 goto RD_ERROR_EXIT;
             }

             u32BufIndex = u32BufIndex + u32BlockSize;
        }
        u64BlockAddr = u64BlockAddr + u32BlockSize;
    }

    Ret = HI_SUCCESS;
RD_ERROR_EXIT:
    if (pucTmpBuff == HI_NULL)
    {
        free(pucTmpBuff);
    }
    return Ret;
}

HI_S32 CA_flash_read(HI_CHAR *pPartionName, HI_U64 offset, HI_U32 bytes, HI_U8 * buf, HI_Flash_InterInfo_S *flashInfo)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle;
    if (pPartionName == NULL || bytes == 0 || buf == NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }
    flashhandle = HI_Flash_OpenByName(pPartionName);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
    {
        HI_ERR_CA("%s: fail to open flash partition=%s \n", __FUNCTION__, pPartionName);
        return HI_FAILURE;
    }

    Ret = ADP_flash_read(flashhandle, offset, buf, bytes, flashInfo);
	if (Ret != HI_SUCCESS)
    {
        HI_ERR_CA("%s: Fail to write flash\n", __FUNCTION__);
        HI_Flash_Close(flashhandle);
        return HI_FAILURE;
    }
    HI_Flash_Close(flashhandle);
    return HI_SUCCESS;
}

static HI_S32 ADP_flash_write(HI_HANDLE flashhandle, HI_U64 offset, HI_U8 * buf, HI_U32 u32WriteLen)
{
    HI_S32 Ret = 0;
    HI_Flash_InterInfo_S FlashInfo;
    HI_UCHAR *pucTmpBuff = NULL, *pucWriteBuff = NULL;
    HI_BOOL  bBegAddrNoAlign = HI_FALSE, bEndAddrNoAlign = HI_FALSE;
    HI_U32   i, u32TotalBlocks=0, u32BlockSize, u32TmpLen;
    HI_U64   u64BlockAddr, u64BegBlockAddr, u64EndAddr, u64TmpOffset;
    HI_U32   u32BegNoAlignOffset=0, u32FirstRealLen=0,u32EndNoAlignOffset=0;
    HI_U32   u32BufIndex=0;

    if (HI_SUCCESS != HI_Flash_GetInfo(flashhandle, &FlashInfo))
    {
        HI_ERR_CA("%s: partion error\n",__FUNCTION__);
        return HI_FAILURE;
    }

    u32BlockSize = FlashInfo.BlockSize; 
    u64EndAddr = offset+u32WriteLen;
    u32TotalBlocks = 0;    

    u32BegNoAlignOffset = offset%u32BlockSize;    
    u64BegBlockAddr = offset - u32BegNoAlignOffset; 
    u32FirstRealLen = 0;
    if (0 != u32BegNoAlignOffset) 
    {
        bBegAddrNoAlign = HI_TRUE;
        u32TotalBlocks = u32TotalBlocks+1;
        u64TmpOffset = u64BegBlockAddr+u32BlockSize;
        u32FirstRealLen = (u64EndAddr > u64TmpOffset) ? (u64TmpOffset-offset) : u32WriteLen;       
    }
    if (u32WriteLen > u32FirstRealLen)
    {
        u32TmpLen = u32WriteLen - u32FirstRealLen;
        u32TotalBlocks = u32TotalBlocks + u32TmpLen/u32BlockSize;
        u32EndNoAlignOffset = u64EndAddr%u32BlockSize;
        if (0 != u32EndNoAlignOffset)
        {
           bEndAddrNoAlign = HI_TRUE;
           u32TotalBlocks = u32TotalBlocks+1;
        }
    }
    if ((bBegAddrNoAlign == HI_TRUE) || (bEndAddrNoAlign == HI_TRUE))
    {     
       pucTmpBuff = (HI_UCHAR*)malloc(u32BlockSize);
       if(NULL == pucTmpBuff)
       {
           HI_ERR_CA("%s:Failed to allocate memory.",__FUNCTION__);
           return HI_FAILURE;
       } 
    }
    u64BlockAddr = u64BegBlockAddr;
    u32BufIndex = 0;
    for (i=0; i< u32TotalBlocks; i++)
    {
        if ((i == 0) && (bBegAddrNoAlign == HI_TRUE))
        {
            memset(pucTmpBuff, 0xFF, u32BlockSize);           
            Ret = HI_Flash_Read(flashhandle, u64BlockAddr, pucTmpBuff, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
            if (Ret != u32BlockSize)
    {
                 HI_ERR_CA("%s: Fail to write non-align data at partion\n", __FUNCTION__);
                 Ret = HI_FAILURE;
                 goto WR_ERROR_EXIT;                
            }
            memcpy(&pucTmpBuff[u32BegNoAlignOffset], &buf[u32BufIndex], u32FirstRealLen);
            pucWriteBuff = pucTmpBuff;
            u32BufIndex = u32BufIndex + u32FirstRealLen;
        }       
        else if ((i == u32TotalBlocks-1) && (bEndAddrNoAlign == HI_TRUE))
        {
           memset(pucTmpBuff, 0xFF, u32BlockSize);
           Ret = HI_Flash_Read(flashhandle, u64BlockAddr, pucTmpBuff, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
           if (Ret != u32BlockSize)
           {
                HI_ERR_CA("%s: Fail to write non-align data at partion\n", __FUNCTION__);
                Ret = HI_FAILURE;
                goto WR_ERROR_EXIT;
           }

           memcpy(pucTmpBuff, &buf[u32BufIndex], u32EndNoAlignOffset);
           pucWriteBuff = pucTmpBuff;
           u32BufIndex = u32BufIndex + u32EndNoAlignOffset;
    }
        else
        {           
             pucWriteBuff = &buf[u32BufIndex];
             u32BufIndex = u32BufIndex + u32BlockSize;
        }
        if (FlashInfo.FlashType != HI_FLASH_TYPE_EMMC_0)
        {
            Ret = HI_Flash_Erase(flashhandle, u64BlockAddr, (HI_U64)u32BlockSize);
            if(Ret <= 0)
	{
                HI_ERR_CA("%s: Erase Error, u64BlockAddr=0x%llx, u32BlockSize=0x%x, Ret:0x%x\n",__FUNCTION__,u64BlockAddr, u32BlockSize, Ret);
                Ret = HI_FAILURE;
                goto WR_ERROR_EXIT;
            }
        }
        Ret = HI_Flash_Write(flashhandle, u64BlockAddr, pucWriteBuff, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
        if (Ret != u32BlockSize)
        {
            HI_ERR_CA("%s: Fail to write data\n",__FUNCTION__);
            Ret = HI_FAILURE;
            goto WR_ERROR_EXIT;
        }
       u64BlockAddr = u64BlockAddr + u32BlockSize;
    }
    Ret = HI_SUCCESS;
WR_ERROR_EXIT:
    if (pucTmpBuff != NULL)
    {
        free(pucTmpBuff);
    }
    return Ret;
}
HI_S32 CA_flash_write(HI_CHAR *pPartionName, HI_U64 offset, HI_U32 bytes, HI_U8 * buf)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle;
    if (pPartionName == NULL || bytes == 0 || buf == HI_NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }
    flashhandle = HI_Flash_OpenByName(pPartionName);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
    {
        HI_ERR_CA("%s: fail to open flash partition=%s \n", __FUNCTION__, pPartionName);
        return HI_FAILURE;
	}
	
	Ret = ADP_flash_write(flashhandle,offset,buf,bytes);
	if (Ret != HI_SUCCESS)
    {
        HI_ERR_CA("%s: Fail to call  ADP_flash_write\n", __FUNCTION__);
        HI_Flash_Close(flashhandle);
        return HI_FAILURE;
    }


    HI_Flash_Close(flashhandle);

    return HI_SUCCESS;

}

static HI_HANDLE  flash_open_addr(HI_U64 u64addr,HI_U32 u32Len, HI_U64 *pu64AdjustOffset)
{
    HI_S32 ret = HI_SUCCESS;
    HI_HANDLE hFlashHandle;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_U64 u64AdjustAddr,u64AdjustOffset, u64OpenSize;
	HI_FLASH_TYPE_E enFlashType = HI_FLASH_TYPE_BUTT;
	HI_U64 u64DetectAddr, u64DetectLen;
    
    enFlashType = CA_get_env_flash_type();
    u64DetectAddr = 0ULL;
    if (enFlashType == HI_FLASH_TYPE_NAND_0)
    {
        u64DetectLen = 0x1000000;  /*For nand flash, set max block size as possible as detected size*/
    }
    else
    {
        u64DetectLen = 0x100000;  /*For SPI or emmc flash, it is ok to set 1M as detected size*/
    }

    hFlashHandle = HI_Flash_OpenByTypeAndAddr(enFlashType,u64DetectAddr,u64DetectLen);
    if(HI_INVALID_HANDLE == hFlashHandle)
    {
		return HI_INVALID_HANDLE;
    }    
      
	ret = HI_Flash_GetInfo(hFlashHandle, &stFlashInfo);
	if(HI_SUCCESS != ret)
	{
		HI_ERR_CA("%s: Fail to get flash infor!\n",__FUNCTION__);
		(HI_VOID)HI_Flash_Close(hFlashHandle);
		return HI_INVALID_HANDLE;
	}
	(HI_VOID)HI_Flash_Close(hFlashHandle);
	
    u64AdjustOffset = u64addr%stFlashInfo.BlockSize;
    u64AdjustAddr = u64addr - u64addr%stFlashInfo.BlockSize; 
    *pu64AdjustOffset = u64AdjustOffset;
	u64OpenSize = stFlashInfo.TotalSize - u64AdjustAddr;
    hFlashHandle = HI_Flash_OpenByTypeAndAddr(enFlashType,u64AdjustAddr,u64OpenSize);
    if(HI_INVALID_HANDLE == hFlashHandle)
    {
        HI_ERR_CA("%s: Fail to open flash\n", __FUNCTION__);
		return HI_INVALID_HANDLE;
    }
	
	return hFlashHandle;    
}
HI_S32 CA_flash_read_addr(HI_U64 u64addr, HI_U32 u32Len, HI_U8 * buf, HI_Flash_InterInfo_S *flashInfo)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle;
    HI_U64    u64AdjustOffset;
    
    if (u32Len == 0 || buf == HI_NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }

    flashhandle = flash_open_addr(u64addr, u32Len, &u64AdjustOffset);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
        {
        HI_ERR_CA("%s: fail to open flash by addr error\n", __FUNCTION__);
        return HI_FAILURE;
    }
    
    Ret = ADP_flash_read(flashhandle, u64AdjustOffset, buf, u32Len, flashInfo);
	if (Ret != HI_SUCCESS)
    {
        HI_ERR_CA("%s: Fail to read flash\n", __FUNCTION__);
        HI_Flash_Close(flashhandle);
        return HI_FAILURE;
    }
    HI_Flash_Close(flashhandle);
    return HI_SUCCESS;
}
HI_S32 CA_flash_write_addr(HI_U64 u64addr, HI_U32 u32Len, HI_U8 * buf)
{
    HI_S32 Ret = 0;
    HI_HANDLE flashhandle;
    HI_U64 u64AdjustOffset;
    
    if (u32Len == 0 || buf == HI_NULL)
    {
       HI_ERR_CA("%s: Parameter error\n", __FUNCTION__);
       return HI_FAILURE;
    }

    flashhandle = flash_open_addr(u64addr,(HI_U64)u32Len, &u64AdjustOffset);
    if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
	{
        HI_ERR_CA("%s: fail to open flash by addr error\n", __FUNCTION__);
        return HI_FAILURE;
	}
	
    Ret = ADP_flash_write(flashhandle,u64AdjustOffset,buf,u32Len);
	if (Ret != HI_SUCCESS)
    {
        HI_ERR_CA("%s: Fail to write flash\n", __FUNCTION__);
        HI_Flash_Close(flashhandle);
        return HI_FAILURE;
    }

    HI_Flash_Close(flashhandle);
    return HI_SUCCESS;
}

