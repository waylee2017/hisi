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
#ifndef __BURN_CA_C__
#define __BURN_CA_C__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif
#include "loader_upgrade.h"
#include "hi_loader_info.h"
#include "upgrd_osd.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "hi_flash.h"
#include "upgrd_emmc.h"
#include "ca_ssd.h"
#include "wrapper_ca.h"
#include "burn.h"

extern FLASH_DATA_INFO_S *g_pstFlashDataInfo;

/*****************************************************************************
* Function:      UpgrdPro_UpdateData
* Description:   update data to flash
* Data Accessed:
* Data Updated:
* Input:            HI_VOID*
* Output:           None
* Return: HI_SUCCESS
* Others:
*****************************************************************************/
HI_S32 LOADER_BURN_WriteData_CA(FLASH_DATA_INFO_S *pstFlashDataInfo, HI_U8 * pucSrcDataBuff, HI_U32 u32SrcDataLen, HI_VOID * private)
{
    HI_S32 ret = HI_SUCCESS;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_U32 u32DataLen = 0;
    HI_U32 u32BlockSize = 0;
    HI_U8 *pu8DataBuf = NULL;
    HI_FLASH_TYPE_E enFlashType = HI_FLASH_TYPE_BUTT;
    HI_Flash_InterInfo_S stFlashInfo;

    if (HI_NULL == pucSrcDataBuff || HI_NULL == pstFlashDataInfo)
    {
        return HI_UPGRD_ERR_PARA;
    }

    if (u32SrcDataLen > (HI_U32)pstFlashDataInfo->u64PartitionSize)
    {
        HI_ERR_LOADER("burn size has overflow the partiton size,burn size is %#x, partition size is %#x\n",
         u32SrcDataLen, pstFlashDataInfo->u64PartitionSize);
        return HI_UPGRD_UPGRDPRO_WRFLASH;
    }
    
    hHandle = pstFlashDataInfo->hFlashHandle;
    enFlashType = pstFlashDataInfo->enFlashType;
    pu8DataBuf = pucSrcDataBuff;
    u32DataLen = u32SrcDataLen;

    if (HI_FALSE == pstFlashDataInfo->bErased)
    {
        if((HI_FLASH_TYPE_SPI_0 == enFlashType) || (HI_FLASH_TYPE_NAND_0 == enFlashType))
        {
            ret = HI_Flash_Erase(hHandle, (HI_U64)0, pstFlashDataInfo->u64PartitionSize);
            if (0 > ret)
            {
                HI_ERR_LOADER("Erase flash error! ret:0x%x\n", ret);
                return HI_UPGRD_UPGRDPRO_WRFLASH;
            }
        }

        pstFlashDataInfo->bErased = HI_TRUE;
    }

    ret = CA_SSD_EncryptImage(pu8DataBuf, u32DataLen, CA_SSD_KEY_GROUP1);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_LOADER("CA SSD Encrypt Image error!\n");
        return (HI_S32)HI_UPGRD_CA_SSD_CRYPT_FAIL;
    }

    /* Get the flash block size */
    memset(&stFlashInfo, 0x0 ,sizeof(HI_Flash_InterInfo_S));
    ret = HI_Flash_GetInfo(hHandle, &stFlashInfo);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_LOADER("Get Flash Info error!\n");
        return (HI_S32)HI_UPGRD_CA_SSD_CRYPT_FAIL;
    }
    u32BlockSize = (0 == stFlashInfo.BlockSize) ? 1 : stFlashInfo.BlockSize;

    /* Write image block size align*/
    ret = CA_SSD_BurnImageToFlash(hHandle, 
                                    pstFlashDataInfo->u64WriteOffset, 
                                    pu8DataBuf, (u32DataLen + u32BlockSize - 1) / u32BlockSize * u32BlockSize,
                                    pstFlashDataInfo->u32WriteFlags,
                                    enFlashType,
                                    HI_Flash_Write);
    if (0 > ret)
    {
        HI_ERR_LOADER("Write flash error!\n");
        return (HI_S32)HI_UPGRD_UPGRDPRO_WRFLASH;
    }

    IncCurWriteLen(u32DataLen);

    if (g_pfnOSDCallback)
    {
        g_pfnOSDCallback(OSD_EVENT_TYPE_BURN, GetCurWriteLen(), GetTotalWriteLen());
    }

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif  /*__BURN_CA_C__*/
