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
#ifndef __PROTOCOL_HISI_FILE_CA_C__
#define __PROTOCOL_HISI_FILE_CA_C__

/* C++ support */
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/*include header files  */
#include <malloc.h>
#include "hi_type.h"
#include "download.h"
#include "hi_loader_info.h"
#include "upgrd_common.h"
#include "protocol_hisi_file.h"
#include "ca_ssd.h"
#include "wrapper_ca.h"

#define USB_MAGIC_NUM 0x4C4F4144
static HI_U32 g_u32USBHeaderNotAligned = 0;     /*The unaligned data size of USB header*/
static HI_U32 g_u32USBHeaderLen = 0;            /*The length of USB header*/

static UsbHeader s_stFileHeader;


static HI_U8 *g_pu8DataBuf = HI_NULL;
static HI_U8 *g_pu8FileHeadBuf = HI_NULL;
static HI_U8 *g_pu8UsbImageBufStart = HI_NULL;
static LOADER_DATA_S g_astData[MAX_UPGRADE_IMAGE_NUM];
extern CA_AUTH_TYPE_E g_enAuthType;

HI_U32 g_u32UsbUpgradeFileSize = 0;

/**
 \brief initialize hisi OTA file protocol .
 \attention \n
 \param[] None
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Init_OTA(HI_VOID)
{
    g_pu8FileHeadBuf = (HI_U8 *)malloc(MAX_FILE_HEAD_LENGHT);

    if (HI_NULL == g_pu8FileHeadBuf)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/**
 \brief Deinitialize hisi OTA protocol .
 \attention \n
 \param[] None
 \retval ::HI_VOID
 */
HI_VOID LOADER_PROTOCOL_HisiFILE_DeInit_OTA(HI_VOID)
{
    if (HI_NULL != g_pu8FileHeadBuf)
    {
        free(g_pu8FileHeadBuf);
        g_pu8FileHeadBuf = HI_NULL;
    }
}

/**
 \brief initialize hisi CA file protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_Init(HI_LOADER_TYPE_E enType, HI_VOID * para)
{
    g_pu8FileHeadBuf = (HI_U8 *)malloc(MAX_FILE_HEAD_LENGHT);

    if (HI_NULL == g_pu8FileHeadBuf)
    {
        return HI_FAILURE;
    }
    if (HI_SUCCESS != CA_SSD_Init())
    {
        return HI_FAILURE;
    }

    return LOADER_DOWNLOAD_Init(enType, para);
}

/**
 \brief deinitialize hisi CA file protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */

HI_VOID LOADER_PROTOCOL_HisiCAFILE_DeInit(HI_VOID)
{
    if (HI_NULL != g_pu8FileHeadBuf)
    {
        free(g_pu8FileHeadBuf);
        g_pu8FileHeadBuf = HI_NULL;
    }
	 
	/* free the whole data buffer in the end which was malloced in LOADER_PROTOCOL_HisiCAFILE_GetVersionInfo*/
    LOADER_FreeUsableMemory(g_pu8DataBuf);
    
    (HI_VOID)FreeMemory();

    (HI_VOID)LOADER_DOWNLOAD_DeInit();

    (HI_VOID)CA_SSD_DeInit();
}

/**
 \brief get version of hisi OTA file.
 \attention \n
 \param[in] pu8Data: The data from OTA
 \param[in] u32Len: The length of pu8Data
 \param[out] pstVersionInfo: The version of the data
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_GetVersionInfo_OTA(LOADER_VERSION_INFO_S * pstVersionInfo, const HI_U8 *pu8Data, HI_U32 u32Len)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32MagicNum = 0;
    HI_U32 u32HeaderLen = 0;
    HI_U8 *pTmp = pu8Data;
    HI_U32 u32crc = 0;
    HI_U32 u32ReadLenTmp = 0;

    if ((HI_NULL == pstVersionInfo) || (HI_NULL == pu8Data) || (u32Len < 16))
    {
        return HI_FAILURE;
    }
    
    do
    {
#if defined(HI_ADVCA_TYPE_CONAX)
        if (u32Len % 16)
        {
            HI_ERR_LOADER("usb upgrade image must be 16 bytes aligned and not be 0!\n");
            s32Ret = HI_FAILURE;
            break;   
        }

        /* decrypt the whole upgrade image */
        s32Ret = CA_SSD_DecryptUpgradeImage(pTmp, u32Len);
        if ( HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("ca ssd decrypt upgrade image failed!\n");
            return s32Ret;
        }

         /* Authenticate the whole upgrade image , */
        s32Ret = CA_Verify_Authenticate(pTmp, u32Len);
        if ( HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("ca ssd authenticate upgrade image failed!\n");
            return s32Ret;
        }

        if (CA_AUTH_TYPE_COMMON == g_enAuthType)
        {
            g_pu8UsbImageBufStart = pTmp;
            HI_INFO_LOADER("the whole usb update image was signatured by common!\n");
        }
        else if (CA_AUTH_TYPE_SPECIAL== g_enAuthType)
        {
            g_pu8UsbImageBufStart = pTmp + FAKE_BLOCK_SIZE;
            HI_INFO_LOADER("the whole usb update image was signatured by special!\n");
        }
        else
        {
            HI_ERR_LOADER("unknow signature type!\n");
            return HI_FAILURE;
        }
#else
		/* other advca type such as verimatrix */
		g_pu8UsbImageBufStart = pTmp;
#endif         
        /*magic number check*/
        u32MagicNum = getBits(g_pu8UsbImageBufStart, 0, 0, 32);
        if ( USB_MAGIC_NUM !=  u32MagicNum)
        {
            HI_ERR_LOADER("stream magic num error 0x%x.", u32MagicNum);
            s32Ret = HI_FAILURE;
            break;
        }
        
        u32HeaderLen = getBits(g_pu8UsbImageBufStart, 0, 64, 32);
        if (u32HeaderLen > MAX_FILE_HEAD_LENGHT)
        {
            HI_ERR_LOADER("File head length has overflowed!\n");
            s32Ret = HI_UPGRD_UPGRDPARSE_DATAERROR;
            break;
        }
        g_u32USBHeaderLen = u32HeaderLen;

        ParseHeader(g_pu8UsbImageBufStart, &s_stFileHeader);

         /* display the whole progress bar*/
        if (g_pstCallback && g_pstCallback->pfnOSDCallback)
        {
            (HI_VOID)g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, s_stFileHeader.u32FileLen, s_stFileHeader.u32FileLen);
        }
        
        if (s_stFileHeader.u16ManuNum > 0)
            s_pstManu = &s_stFileHeader.astManuInfo[0];

        if (s_pstManu == HI_NULL)
        {
            HI_ERR_LOADER("can't find upgrade image!\n");
            s32Ret = HI_UPGRD_OUI_NOT_MATCH;
            break;
        }

        /*crc check*/
        memcpy(g_pu8FileHeadBuf, g_pu8UsbImageBufStart, MAX_FILE_HEAD_LENGHT);
        memset(g_pu8FileHeadBuf + sizeof(s_stFileHeader.u32MagicNum), 0, sizeof(s_stFileHeader.u32HeaderCrc));
        (HI_VOID)LOADER_Entire_CRC32(g_pu8FileHeadBuf, s_stFileHeader.u32HeaderLen, &u32crc);
        if (u32crc != s_stFileHeader.u32HeaderCrc)
        {
            HI_ERR_LOADER("Bad head crc 0x%x, calc crc 0x%x.", s_stFileHeader.u32HeaderCrc, u32crc);
            s32Ret = HI_FAILURE;
            break;
        }

        pstVersionInfo->u32FactoryId   = s_pstManu->u32ManuId;
        pstVersionInfo->u32HardwareVer = s_pstManu->u32HardVersion;
        pstVersionInfo->u32Softwarever = s_pstManu->u32SoftVersion;
        pstVersionInfo->u32StartSn = s_pstManu->u32SNStart;
        pstVersionInfo->u32EndSn = s_pstManu->u32SNEnd;

        s32Ret = HI_SUCCESS;

    } while (0);

    return s32Ret;
}

/**
 \brief get version of hisi CA file protocol upgrade file.
 \attention \n
 \param[out] pstVersionInfo: The version info of CA file
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_GetVersionInfo(LOADER_VERSION_INFO_S * pstVersionInfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32MagicNum = 0;
    HI_U32 u32HeaderLen = 0;
    HI_U32 u32ReadLen = 0;
    HI_U32 u32Size = 0;
    HI_U32 u32crc = 0;
    
    if (HI_NULL == pstVersionInfo)
        return HI_FAILURE;

    do
    {   
#if defined(HI_LOADER_BOOTLOADER) && !defined(HI_ADVCA_TYPE_CONAX)
		s32Ret = LOADER_DOWNLOAD_Getdata(g_pu8FileHeadBuf, 16, &u32ReadLen);
        if ((s32Ret != HI_SUCCESS) || (u32ReadLen != 16))
        {
            s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
            break;
        }
		/* skip magic_num Header_crc Header_len 32*3 = 96, and the whole file length is 4 bytes*/
		g_u32UsbUpgradeFileSize = getBits(g_pu8FileHeadBuf, 0, 96, 32);
#endif

        if (g_u32UsbUpgradeFileSize % 16 || 0 == g_u32UsbUpgradeFileSize)
        {
            HI_ERR_LOADER("usb upgrade image must be 16 bytes aligned and not be 0!\n");
            s32Ret = HI_FAILURE;
            break;   
        }

        /* Malloc more size to store the whole upgrade image aligned with 16 Bytes */
		/* and it will be freed in LOADER_PROTOCOL_HisiCAFILE_DeInit in the end */
        g_pu8DataBuf = (HI_U8 *)LOADER_GetUsableMemory(g_u32UsbUpgradeFileSize+PLUS_MEM_SIZE, &u32Size);
        if (HI_NULL == g_pu8DataBuf || (g_u32UsbUpgradeFileSize+PLUS_MEM_SIZE) != u32Size)
        {
            HI_ERR_LOADER("upgrade buffer malloc failed!\n");
            s32Ret = HI_FAILURE;
            break;
        }
        /* Get the whole upgrade image */
        s32Ret = LOADER_DOWNLOAD_Getdata(g_pu8DataBuf, g_u32UsbUpgradeFileSize, &u32ReadLen);
        if ((s32Ret != HI_SUCCESS) || (u32ReadLen != g_u32UsbUpgradeFileSize))
        {
            HI_ERR_LOADER("encrypted upgrade get failed!\n");
            s32Ret = HI_FAILURE;
            break;
        }
#if defined(HI_ADVCA_TYPE_CONAX)        
        /* decrypt the whole upgrade image */
        s32Ret = CA_SSD_DecryptUpgradeImage(g_pu8DataBuf, u32ReadLen);
        if ( HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("ca ssd decrypt upgrade image failed!\n");
            return s32Ret;
        }

         /* Authenticate the whole upgrade image , */
        s32Ret = CA_Verify_Authenticate(g_pu8DataBuf, u32ReadLen);
        if ( HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("ca ssd authenticate upgrade image failed!\n");
            return s32Ret;
        }

        if (CA_AUTH_TYPE_COMMON == g_enAuthType)
        {
            g_pu8UsbImageBufStart = g_pu8DataBuf;
            HI_INFO_LOADER("the whole usb update image was signatured by common!\n");
        }
        else if (CA_AUTH_TYPE_SPECIAL== g_enAuthType)
        {
            g_pu8UsbImageBufStart = g_pu8DataBuf + FAKE_BLOCK_SIZE;
            HI_INFO_LOADER("the whole usb update image was signatured by special!\n");
        }
        else
        {
            HI_ERR_LOADER("unknow signature type!\n");
            return HI_FAILURE;
        }
#else
		/* other advca type such as verimatrix */
		g_pu8UsbImageBufStart = g_pu8DataBuf;
#endif        
        /*magic number check*/
        u32MagicNum = getBits(g_pu8UsbImageBufStart, 0, 0, 32);
        if ( USB_MAGIC_NUM !=  u32MagicNum)
        {
            HI_ERR_LOADER("stream magic num error 0x%x.", u32MagicNum);
            s32Ret = HI_FAILURE;
            break;
        }
        
        u32HeaderLen = getBits(g_pu8UsbImageBufStart, 0, 64, 32);
        if (u32HeaderLen > MAX_FILE_HEAD_LENGHT)
        {
            HI_ERR_LOADER("File head length has overflowed!\n");
            s32Ret = HI_UPGRD_UPGRDPARSE_DATAERROR;
            break;
        }
        g_u32USBHeaderLen = u32HeaderLen;

        ParseHeader(g_pu8UsbImageBufStart, &s_stFileHeader);

         /* display the whole progress bar*/
        if (g_pstCallback && g_pstCallback->pfnOSDCallback)
        {
            (HI_VOID)g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, s_stFileHeader.u32FileLen, s_stFileHeader.u32FileLen);
        }
        
        if (s_stFileHeader.u16ManuNum > 0)
            s_pstManu = &s_stFileHeader.astManuInfo[0];

        if (s_pstManu == HI_NULL)
        {
            HI_ERR_LOADER("can't find upgrade image!\n");
            s32Ret = HI_UPGRD_OUI_NOT_MATCH;
            break;
        }

        /*crc check*/
        memcpy(g_pu8FileHeadBuf, g_pu8UsbImageBufStart, MAX_FILE_HEAD_LENGHT);
        memset(g_pu8FileHeadBuf + sizeof(s_stFileHeader.u32MagicNum), 0, sizeof(s_stFileHeader.u32HeaderCrc));
        (HI_VOID)LOADER_Entire_CRC32(g_pu8FileHeadBuf, s_stFileHeader.u32HeaderLen, &u32crc);
        if (u32crc != s_stFileHeader.u32HeaderCrc)
        {
            HI_ERR_LOADER("Bad head crc 0x%x, calc crc 0x%x.", s_stFileHeader.u32HeaderCrc, u32crc);
            s32Ret = HI_FAILURE;
            break;
        }

        pstVersionInfo->u32FactoryId   = s_pstManu->u32ManuId;
        pstVersionInfo->u32HardwareVer = s_pstManu->u32HardVersion;
        pstVersionInfo->u32Softwarever = s_pstManu->u32SoftVersion;
        pstVersionInfo->u32StartSn = s_pstManu->u32SNStart;
        pstVersionInfo->u32EndSn = s_pstManu->u32SNEnd;

        s32Ret = HI_SUCCESS;
    } while (0);

    return s32Ret;
}

/**
 \brief process the OTA file, and call datacallback to notice caller the data.
 \attention \n
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \param[in] pu8Data:  The data from OTA to process
 \param[in] u32Len:   The length of pu8Data
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Process_OTA(HI_U32 u32MaxMemorySize, const HI_U8 *pu8Data, HI_U32 u32Len)
{
    HI_S32 ret = HI_SUCCESS;
    UsbImgMap *pImg = HI_NULL;
    HI_U32 u32TmpCRC = 0;
    HI_U8 *pMemAddr = g_pu8UsbImageBufStart;
    HI_U32 u32Size = 0;
    HI_U32 u32MemSize = 0;
    HI_U8 offset = 0;

    if ((0 == u32MaxMemorySize) || (HI_NULL == pu8Data) || (s_stFileHeader.u32FileLen > u32Len))
    {
        return HI_FAILURE;
    }

    if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
    {
        return HI_FAILURE;
    }

    if (HI_NULL == s_pstManu)
    {
        return HI_FAILURE;
    }

    ret = InitUpgradeBuff(s_pstManu);
    if ( HI_FAILURE == ret )
    {
        return HI_FAILURE;
    }

#ifdef HI_ADVCA_TYPE_NAGRA
    ret = CA_SSD_AuthenticatePrepare((const HI_U32 *)&s_stFileHeader, pMemAddr, g_u32USBHeaderLen);
    if ( HI_SUCCESS != ret )
    {
        HI_ERR_LOADER("ca auth prepare failed!\n");
        return HI_FAILURE;
    }
#endif

    for (offset = 0; offset < s_stFileHeader.astManuInfo[0].u16ImgMapNum; offset++)
    {
        pImg = &(s_pstManu->astImgMap[offset]);
         /*  skip Image_length member(4 bytes) in every partition */
        pImg->u32DataCRC = getBits(pMemAddr + pImg->u32Offset, 0, 32, 32);

        /* CRC check,  skip Image_length member(4 bytes) and Image_crc(4 bytes) in every partition */
        (HI_VOID)LOADER_Entire_CRC32(pMemAddr + pImg->u32Offset + 8, pImg->u32FileLength, &u32TmpCRC);
        if ( pImg->u32DataCRC != u32TmpCRC )
        {
            HI_ERR_LOADER("crc auth failed!\n");
            return HI_FAILURE;
        }

        /* SSD Authenticate */
        ret = CA_SSD_Authenticate(pMemAddr + pImg->u32Offset + 8, 
                                &(pImg->u32FileLength), 
                                pImg->u32FlashAddr, 
                                pImg->uFlashType);
        if ( HI_SUCCESS != ret )
        {
            HI_ERR_LOADER("ca auth failed!\n");
            return HI_FAILURE;
        }

        /* Write image */
        g_astData[offset].u8DataBuff = pMemAddr + pImg->u32Offset + 8;
        g_astData[offset].u32DataSize = pImg->u32FileLength;
        g_astData[offset].u32PartitionId = offset + 1;
        g_astData[offset].bLastData = HI_TRUE;
    }

    if (g_pstCallback && g_pstCallback->pfnDataCallback)
    {
        ret = g_pstCallback->pfnDataCallback(g_astData, offset);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_LOADER("pfnDataCallback error");
            return ret;
        }
    }

    return ret;
}


/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiCAFILE_Process(HI_U32 u32MaxMemorySize)
{
    HI_S32 ret = HI_SUCCESS;
    UsbImgMap *pImg = HI_NULL;
    HI_U32 u32TmpCRC = 0;
    HI_U8 *pMemAddr = g_pu8UsbImageBufStart;
    HI_U32 u32Size = 0;
    HI_U32 u32MemSize = 0;
    HI_U32 u32FileNotAlignedByte = 0;
    HI_U8 offset = 0;

    if (0 == u32MaxMemorySize)
    {
		HI_ERR_LOADER("u32MaxMemorySize is 0!\n");
        return HI_FAILURE;
    }
    if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
	{
		HI_ERR_LOADER("g_pstCallback or g_pstCallback->pfnDataCallback is NULL!\n");
        return HI_FAILURE;
	}
    if (HI_NULL == s_pstManu)
    {
		HI_ERR_LOADER("s_pstManu is NULL!\n");
        return HI_FAILURE;
    }
    ret = InitUpgradeBuff(s_pstManu);
    if ( HI_FAILURE == ret )
    {   
		HI_ERR_LOADER("InitUpgradeBuff called failed!\n");
        return HI_FAILURE;
    }

#ifdef HI_ADVCA_TYPE_NAGRA
    ret = CA_SSD_AuthenticatePrepare((const HI_U32 *)&s_stFileHeader, pMemAddr, g_u32USBHeaderLen);
    if ( HI_SUCCESS != ret )
    {
        HI_ERR_LOADER("ca auth prepare failed!\n");
        return HI_FAILURE;
    }
#endif
    for (offset = 0; offset < s_stFileHeader.astManuInfo[0].u16ImgMapNum; offset++)
    {
        pImg = &(s_pstManu->astImgMap[offset]);
        pImg->u32DataCRC = getBits(pMemAddr + pImg->u32Offset, 0, 32, 32);

        /* CRC check */
        (HI_VOID)LOADER_Entire_CRC32(pMemAddr + pImg->u32Offset + 8, pImg->u32FileLength, &u32TmpCRC);
        if ( pImg->u32DataCRC != u32TmpCRC )
        {
            HI_ERR_LOADER("crc auth failed! pImg->u32DataCRC = %x, u32TmpCRC = %x\n", pImg->u32DataCRC, u32TmpCRC);
            return HI_FAILURE;
        }

        /* SSD Authenticate */
        ret = CA_SSD_Authenticate(pMemAddr + pImg->u32Offset + 8, 
                                &(pImg->u32FileLength), 
                                pImg->u32FlashAddr, 
                                pImg->uFlashType);
        if ( HI_SUCCESS != ret )
        {
            HI_ERR_LOADER("ca auth failed!\n");
            return HI_FAILURE;
        }

        /* Write image */
        g_astData[offset].u8DataBuff = pMemAddr + pImg->u32Offset + 8;
        g_astData[offset].u32DataSize = pImg->u32FileLength;
        g_astData[offset].u32PartitionId = offset + 1;
        g_astData[offset].bLastData = HI_TRUE;
    }

    if (g_pstCallback && g_pstCallback->pfnDataCallback)
    {
        ret = g_pstCallback->pfnDataCallback(g_astData, offset);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_LOADER("pfnDataCallback error");
            return ret;
        }
    }

    return ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */

#endif  /*__PROTOCOL_HISI_FILE_CA_C__*/
