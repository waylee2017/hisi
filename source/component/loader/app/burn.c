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
#include "loader_upgrade.h"
#include "upgrd_common.h"
#include "hi_flash.h"
#include "burn.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

static HI_U32 g_FlashTotalWriteLen = 0;
static HI_U32 g_FlashCurWriteLen = 0;
HI_U32 g_u32PartitionNum = 0;
static HI_BOOL g_bBurnFirstPiece = HI_TRUE;
LOADER_OSD_CALLBACK g_pfnOSDCallback  = HI_NULL;
FLASH_DATA_INFO_S *g_pstFlashDataInfo = HI_NULL;

#if defined(HI_ADVCA_SUPPORT)
HI_S32 LOADER_BURN_WriteData_CA(FLASH_DATA_INFO_S *pstFlashDataInfo, HI_U8 * pucSrcDataBuff, HI_U32 u32SrcDataLen, HI_VOID * private);
#endif

/*
 *  import functions from burn_raw.c
 */
HI_S32 LOADER_BURN_WriteData_raw(FLASH_DATA_INFO_S *pstFlashDataInfo, HI_U8 * pucDataBuff, HI_U32 u32DataLen, HI_VOID * private);

/*
 * import functions from burn_ext4sp.c
 */
HI_BOOL LOADER_BURN_Identify_ext4sp(HI_U8 * pucBuff, HI_U32 u32DataLen);
HI_S32 LOADER_BURN_WriteData_ext4sp(FLASH_DATA_INFO_S *pstFlashDataInfo, HI_U8 * pucDataBuff, HI_U32 u32DataLen, HI_VOID * private);

/*
 * internal helper functions
 */
HI_S32 GetIndexById(HI_U32 id, HI_U32 *pu32Index)
{
    HI_U8 ii = 0;

    for (ii = 0; ii < g_u32PartitionNum; ii++)
    {
        if (id == g_pstFlashDataInfo[ii].u32PartitionId)
        {
            *pu32Index = ii;
            return HI_SUCCESS;
        }
    }

    return HI_FAILURE;
}

HI_U32 GetTotalWriteLen(HI_VOID)
{
    return g_FlashTotalWriteLen;
}

HI_U32 GetCurWriteLen(HI_VOID)
{
    return g_FlashCurWriteLen;
}

HI_U32 IncCurWriteLen(HI_U32 len)
{
    g_FlashCurWriteLen += len;
    return g_FlashCurWriteLen;
}

static HI_S32 InitFlashPartition(LOADER_PARTITION_INFO_S *pstPartionInfo, HI_U32 u32PartitionNum)
{
    HI_U8 i = 0;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_U32 u32StartAddr;
    HI_U32 u32EndAddr;
    HI_U64 u64FlashSize = 0;
    HI_U32 u32FlashType;
    HI_U32 u32ImageFS = 0;

    HI_HANDLE hHandle = 0;

    for (i = 0; i < u32PartitionNum; i++)
    {
        u32StartAddr = pstPartionInfo[i].u32FlashStartAddr;
        u32EndAddr   = pstPartionInfo[i].u32FlashEndAddr;
        u32FlashType = pstPartionInfo[i].u32FlashType;
        u32ImageFS = pstPartionInfo[i].u32ImageFS;

        HI_DBG_LOADER("FlashType:%x, u32ImageFS:0x%08x, StartAddr:%x EndAddr:0x%08x \n",
                u32FlashType, u32ImageFS, u32StartAddr, u32EndAddr);
        
        hHandle = HI_Flash_Open((HI_FLASH_TYPE_E)u32FlashType, NULL, (HI_U64)u32StartAddr, (HI_U64)(u32EndAddr - u32StartAddr));
        if (HI_INVALID_HANDLE == hHandle)
        {
            HI_DBG_LOADER("Failed to open flash, Type:%x StartAddr:%x.\n", u32FlashType, u32StartAddr);
            return HI_UPGRD_DATA_ERROR;
        }

        if (HI_SUCCESS != HI_Flash_GetInfo(hHandle, &stFlashInfo))
        {
            HI_ERR_LOADER("HI_Flash_GetInfo get failed.\n");
            return HI_UPGRD_DATA_ERROR;
        }
        u64FlashSize = stFlashInfo.TotalSize;
        if ((HI_U64)u32EndAddr > u64FlashSize)
        {
            HI_DBG_LOADER("Invalid end address.(flash size: 0x%08llx, file end addr is: 0x%08llx)",
                    u64FlashSize,
                    (HI_U64)u32EndAddr);
            HI_Flash_Close(hHandle);
            return HI_UPGRD_DATA_ERROR;
        }

        g_FlashTotalWriteLen += pstPartionInfo[i].u32ImageDataSize;

        g_pstFlashDataInfo[i].u32PartitionId = pstPartionInfo[i].u32PartitionId;
        g_pstFlashDataInfo[i].hFlashHandle = hHandle;
        g_pstFlashDataInfo[i].enFlashType = (HI_FLASH_TYPE_E)u32FlashType;
        g_pstFlashDataInfo[i].u32PartitionOriCRC = pstPartionInfo[i].u32ImageDataCRC32;
        g_pstFlashDataInfo[i].u64WriteOffset = 0;
        g_pstFlashDataInfo[i].u32PartitionCalCRC = 0xffffffff;
        g_pstFlashDataInfo[i].bErased = HI_FALSE;
        g_pstFlashDataInfo[i].u64PartitionSize = (HI_U64)(u32EndAddr - u32StartAddr);
        g_pstFlashDataInfo[i].LOADER_BURN_WriteData =  HI_NULL;
        g_pstFlashDataInfo[i].private =  HI_NULL;

        /*Adjust  update file system */
        if ((u32ImageFS) >> 16 != 0)
        {
            /*write yaffs filse system*/
            g_pstFlashDataInfo[i].u32WriteFlags = HI_FLASH_RW_FLAG_WITH_OOB;
            g_pstFlashDataInfo[i].u32DataBlockSize  = (stFlashInfo.BlockSize
                    / stFlashInfo.PageSize)
                * (stFlashInfo.PageSize + stFlashInfo.OobSize);
            g_pstFlashDataInfo[i].u32FlashBlockSize = stFlashInfo.BlockSize;
        }
        else
        {
            /*write row data.*/
            g_pstFlashDataInfo[i].u32WriteFlags = HI_FLASH_RW_FLAG_RAW;
            g_pstFlashDataInfo[i].u32DataBlockSize  = stFlashInfo.BlockSize;
            g_pstFlashDataInfo[i].u32FlashBlockSize = stFlashInfo.BlockSize;
        }

#ifdef HI_LOADER_BOOTLOADER
        MMZ_BUFFER_S stMMZ;
        if (HI_SUCCESS == HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, g_pstFlashDataInfo[i].u32DataBlockSize))
        {
            g_pstFlashDataInfo[i].pu8Buff = (HI_U8 *)stMMZ.u32StartPhyAddr;
        }
        else
        {
            g_pstFlashDataInfo[i].pu8Buff = HI_NULL;
        }
        
#else
        g_pstFlashDataInfo[i].pu8Buff = (HI_U8 *)malloc(g_pstFlashDataInfo[i].u32DataBlockSize);
#endif
        if (HI_NULL == g_pstFlashDataInfo[i].pu8Buff)
        {
            HI_ERR_LOADER("malloc flash block buffer failed.\n");
            return HI_FAILURE;
        }

        g_pstFlashDataInfo[i].u32BuffLen = 0;
        
    }

    return HI_SUCCESS;
}

HI_S32 LOADER_BURN_Init(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32PartNum, LOADER_OSD_CALLBACK pfnOsdCallback)
{
    HI_U32 u32MemLen;

    if (HI_NULL == pstPartInfo)
    {
        return HI_FAILURE;
    }

    g_pfnOSDCallback = pfnOsdCallback;
    g_u32PartitionNum = u32PartNum;

    u32MemLen = u32PartNum * sizeof(FLASH_DATA_INFO_S);
    g_pstFlashDataInfo = (FLASH_DATA_INFO_S *)malloc(u32MemLen);

    if (HI_NULL == g_pstFlashDataInfo)
    {
        return HI_FAILURE;
    }

    return InitFlashPartition(pstPartInfo, u32PartNum);
}

/*
 * for different image style(ext4sp, raw, ca...) has different burn method implemention
 */
static HI_S32 LOADER_BURN_ProbeImageType(HI_U32 u32Index, HI_U8 * pucBuff, HI_U32 u32DataLen)
{
    /* set burn method */
    if (!g_pstFlashDataInfo[u32Index].LOADER_BURN_WriteData)
    {
#if defined(HI_ADVCA_SUPPORT)
        g_pstFlashDataInfo[u32Index].LOADER_BURN_WriteData = LOADER_BURN_WriteData_CA;
#else
        /* ext4sp */
        if (HI_TRUE == LOADER_BURN_Identify_ext4sp(pucBuff, u32DataLen))
        {
            HI_DBG_LOADER("image is ext4 sparse filesystem for partition(%d).\n", u32Index + 1);
            g_pstFlashDataInfo[u32Index].LOADER_BURN_WriteData = LOADER_BURN_WriteData_ext4sp;
        }
        else /* raw */
        {
            HI_DBG_LOADER("image is raw data for partition(%d).\n", u32Index + 1);
            g_pstFlashDataInfo[u32Index].LOADER_BURN_WriteData = LOADER_BURN_WriteData_raw;
        }
#endif  
    }
    
    return HI_SUCCESS;
}

/*****************************************************************************
* Function:      LOADER_BURN_WriteData
* Description:   update data to flash
* Data Accessed:
* Data Updated:
* Input:           
* Output:           
* Return: HI_SUCCESS
* Others:
*****************************************************************************/
HI_S32 LOADER_BURN_WriteData(LOADER_DATA_S *pstPartInfo, HI_U32 u32PartNum)
{
    HI_U32 i;
    HI_U32 u32Index;
    HI_U32 s32Ret = HI_UPGRD_UPGRDPRO_WRFLASH;

    /* reset OSD display if the first time burn */
    if (g_bBurnFirstPiece && g_pfnOSDCallback)
    {
        g_bBurnFirstPiece = HI_FALSE;
        g_pfnOSDCallback(OSD_EVENT_TYPE_BURN, 0, g_FlashTotalWriteLen);
    }

    for (i = 0; i < u32PartNum; i++)
    {
        s32Ret = GetIndexById(pstPartInfo[i].u32PartitionId, &u32Index);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("Invalid partition data, partition id: %d.\n", pstPartInfo[i].u32PartitionId);
            s32Ret = HI_UPGRD_DATA_ERROR;
            goto err;
        }

        /* probe partition burn method according to different image type */
        s32Ret = LOADER_BURN_ProbeImageType(u32Index, pstPartInfo[i].u8DataBuff, pstPartInfo[i].u32DataSize);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("Probe burn method failed.\n");
            goto err;
       }

        /* start burn progress */
        s32Ret = g_pstFlashDataInfo[u32Index].LOADER_BURN_WriteData(&g_pstFlashDataInfo[u32Index], pstPartInfo[i].u8DataBuff, pstPartInfo[i].u32DataSize, (HI_VOID*)pstPartInfo[i].bLastData);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("burn image failed.\n");
            goto err;
        }
    }
     
err:    
    return s32Ret;
}

HI_S32 LOADER_BURN_DeInit(HI_VOID)
{
    HI_U32 i = 0;
    
    /* DeInitFlashPartition */
    for (i = 0; i < g_u32PartitionNum; i++)
    {
        if (HI_INVALID_HANDLE != g_pstFlashDataInfo[i].hFlashHandle)
        {
            HI_Flash_Close(g_pstFlashDataInfo[i].hFlashHandle);
            g_pstFlashDataInfo[i].hFlashHandle = HI_INVALID_HANDLE;
            
#ifdef HI_LOADER_BOOTLOADER
            /* no need free boot reserved memory */
#else
            if (g_pstFlashDataInfo[i].pu8Buff)
            {
                free(g_pstFlashDataInfo[i].pu8Buff);
                g_pstFlashDataInfo[i].pu8Buff = HI_NULL;
            }
#endif    
            if (g_pstFlashDataInfo[i].private)
            {
                /* for ext4sp */
                if (g_pstFlashDataInfo[i].LOADER_BURN_WriteData == LOADER_BURN_WriteData_ext4sp)
                {
                    free(g_pstFlashDataInfo[i].private);
                    g_pstFlashDataInfo[i].private = HI_NULL;
                }

                /* for ... */
            }
        }
    }

    if (HI_NULL != g_pstFlashDataInfo)
    {
        free(g_pstFlashDataInfo);
        g_pstFlashDataInfo = HI_NULL;
    }

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
