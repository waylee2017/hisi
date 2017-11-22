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

#define USB_MAGIC_NUM 0x4C4F4144

typedef struct tagPARTITION_MEMORY_INFO_S
{
    HI_U32  u32PartitionId;
    HI_U32  u32PartitionDataSize;               /* size of ugrade data */
    HI_U32  u32ReceiveOffset;       /* 本次接收数据起始地址相对partition起始地址的偏移*/
    HI_U8  *pu8MemAddr;
    HI_U32  u32MemSize;             /* size of allocated memory */
    HI_U32  u32ReceiveStatus;       /* 接收状态 0:未开始接收;1:正在接收;2:接收完毕*/
    HI_BOOL bReceivePurData;        /*是否已经开始接收纯数据()*/
    HI_U32  u32DataCRC;             /*crc descripts in upgrade file*/
    HI_U32  u32CalculateCRC;        /*crc calculate from image data*/
} PARTITION_MEMORY_INFO_S;

typedef struct tagUPGRADE_MEM_INFO_S
{
    HI_U32                  u32TotalSize;
    HI_U32                  u32ReceivedSize;
    HI_U32                  u32PartNum;
    PARTITION_MEMORY_INFO_S astPartMemInfo[MAX_UPGRADE_IMAGE_NUM];
} UPGRADE_MEM_INFO_S;

static UPGRADE_MEM_INFO_S g_stUpgradeMemInfo;

static UsbHeader s_stFileHeader;
UsbManuInfo *s_pstManu = HI_NULL;

static HI_U32 g_u32DownLoadDataSize = 0;
static HI_U32 g_u32FullDataSize = 0;
static HI_U32 g_u32ReadOffset = 0;

LOADERCALLBACKSET_S *g_pstCallback = HI_NULL;

static HI_U8 *g_pu8DataBuf = HI_NULL;

static LOADER_DATA_S g_astData[MAX_UPGRADE_IMAGE_NUM];

/******************************************************************************
* Function:            getBits
* Description:        Read buf, the offset byte_offset byte start of bitlen, from startbit bit value
* Input:         pBuf :data pointer
                    u32ByteOffset :offset byte
                    u32Startbit  :start bit
                    u32Bitlen: bit length
* Output:
* Return:            get value from buf
* Data Accessed: (Optional)
* Data Updated:  (Optional)
* Others:  (Optional) :This function supports up to bitlen <= 32-bit. Otherwise it will cause transboundary
******************************************************************************/
HI_U32 getBits (const HI_U8 *pBuf, HI_U32 u32ByteOffset, HI_U32 u32Startbit, HI_U32 u32Bitlen)
{
    HI_U8   *b;
    HI_U32 v;
    HI_U32 mask;
    HI_U32 tmp_long, tmp_long40;
    HI_U32 bitHigh;
    HI_U32 offset;

    if (u32Bitlen > 32)
    {
        HI_ERR_LOADER(" \n Error: [getBits()] request out of bound!!!! (report!!) \n");
        return (HI_U32) 0xFEFEFEFE;
    }

    if (pBuf == (HI_U8*) 0)
    {
        HI_ERR_LOADER(" \n Error: [getBits()] buf is NULL  \n");
        return (HI_U32) 0xFEFEFEFE;
    }

    b = (HI_U8*)&pBuf[u32ByteOffset + (u32Startbit >> 3)];
    u32Startbit %= 8;

    if ((HI_U32)0 == u32Bitlen)
    {
        return (HI_U32)0;
    }

    offset = (u32Bitlen - 1) >> 3;
    tmp_long40 = 0;

    switch (offset)
    {
    case 0:                 /*-- 1..8 bit*/
        tmp_long = (HI_U32)(
            (*(b) << 8) + *(b + 1));
        bitHigh = 16;
        break;

    case 1:                 /* -- 9..16 bit*/
        tmp_long = (HI_U32)(
            (*(b) << 16) + (*(b + 1) << 8) + *(b + 2));
        bitHigh = 24;
        break;

    case 2:                 /*-- 17..24 bit*/
        tmp_long = (HI_U32)(
            (*(b) << 24) + (*(b + 1) << 16) +
            (*(b + 2) << 8) + *(b + 3));
        bitHigh = 32;
        break;

    case 3:                 /* -- 25..32 bit*/
        tmp_long40 = (HI_U32)(*(b));
        tmp_long = (HI_U32)(
            (*(b + 1) << 24) + (*(b + 2) << 16) +
            (*(b + 3) << 8) + *(b + 4));
        bitHigh = 40;
        break;

    default:        /* -- 33.. bits: fail, deliver constant fail value*/
        HI_ERR_LOADER(" Error: [getBits()] request out of bound!!!! (report!!) \n");
        return (HI_U32) 0xFEFEFEFE;
    }

    u32Startbit = bitHigh - (u32Startbit + u32Bitlen);
    tmp_long = tmp_long >> u32Startbit;
    mask = (((HI_U32)0x00000001) << u32Startbit) - 1;
    tmp_long40 &= mask;
    tmp_long |= (tmp_long40 << (32 - u32Startbit));

    if (u32Bitlen == 32)
    {
#if 0
        mask = (((HI_U32)0x00000001) << bitlen) - 1;  /* if support 64bits*/
#else
        mask = 0xFFFFFFFF;
#endif
    }
    else
    {
        mask = (((HI_U32)0x00000001) << u32Bitlen) - 1;
    }

    v = tmp_long & mask;

    return v;
}

HI_VOID ParseHeader(HI_U8 *pBuf, UsbHeader *pstHeader)
{
    HI_U32 i, j, k;
    UsbManuInfo *pManu;
    UsbImgMap *pImg;

    k = 0;
    pstHeader->u32MagicNum = getBits(pBuf, 0, k, 32);
    k += 32;
    pstHeader->u32HeaderCrc = getBits(pBuf, 0, k, 32);
    k += 32;
    pstHeader->u32HeaderLen = getBits(pBuf, 0, k, 32);
    k += 32;
    pstHeader->u32FileLen = getBits(pBuf, 0, k, 32);
    k += 32;
    pstHeader->u16ManuNum = getBits(pBuf, 0, k, 16);
    k    += 16;
    pBuf += k / 8;

    HI_DBG_LOADER("pstHeader->u32MagicNum  = 0x%x\n", pstHeader->u32MagicNum );
    HI_DBG_LOADER("pstHeader->u32HeaderCrc = 0x%x\n", pstHeader->u32HeaderCrc );
    HI_DBG_LOADER("pstHeader->u32HeaderLen = 0x%x\n", pstHeader->u32HeaderLen );
    HI_DBG_LOADER("pstHeader->u32FileLen   = 0x%x\n", pstHeader->u32FileLen );
    HI_DBG_LOADER("pstHeader->u16ManuNum   = 0x%x\n", pstHeader->u16ManuNum );

    if (pstHeader->u16ManuNum > USB_MANU_MAX_NUM)
    {
        pstHeader->u16ManuNum = 0;
    }

    for (i = 0; i < pstHeader->u16ManuNum; ++i)
    {
        pManu = &pstHeader->astManuInfo[i];
        k = 0;
        pManu->u32ManuId = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32HardVersion = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32SoftVersion = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32SNStart = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32SNEnd = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32DownloadType = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u32Reserved = getBits(pBuf, 0, k, 32);
        k += 32;
        pManu->u16ImgMapNum = getBits(pBuf, 0, k, 16);
        k    += 16;
        pBuf += k / 8;

        HI_DBG_LOADER("pManu->u32ManuId       = 0x%x\n", pManu->u32ManuId );
        HI_DBG_LOADER("pManu->u32HardVersion  = 0x%x\n", pManu->u32HardVersion );
        HI_DBG_LOADER("pManu->u32SoftVersion  = 0x%x\n", pManu->u32SoftVersion );
        HI_DBG_LOADER("pManu->u32SNStart      = 0x%x\n", pManu->u32SNStart );
        HI_DBG_LOADER("pManu->u32SNEnd        = 0x%x\n", pManu->u32SNEnd );
        HI_DBG_LOADER("pManu->u32DownloadType = 0x%x\n", pManu->u32DownloadType );
        HI_DBG_LOADER("pManu->u32Reserved     = 0x%x\n", pManu->u32Reserved );
        HI_DBG_LOADER("pManu->u16ImgMapNum    = 0x%x\n", pManu->u16ImgMapNum );

        if (pManu->u16ImgMapNum > USB_IMG_MAX_NUM)
        {
            pManu->u16ImgMapNum = 0;
        }

        for (j = 0; j < pManu->u16ImgMapNum; ++j)
        {
            pImg = &pManu->astImgMap[j];
            k = 0;
            pImg->u32FileLength = getBits(pBuf, 0, k, 32);
            k += 32;
            pImg->u32Offset = getBits(pBuf, 0, k, 32);
            k += 32;
            pImg->u32FlashAddr = getBits(pBuf, 0, k, 32);
            k += 32;
            pImg->uPartition_endaddr = getBits(pBuf, 0, k, 32);
            k += 32;
            pImg->uFlashType = getBits(pBuf, 0, k, 32);
            k += 32;
            pImg->lFlashIndex = getBits(pBuf, 0, k, 32);
            k += 32;

            pBuf += k / 8;

            HI_DBG_LOADER("pImg->u32FileLength      = 0x%x\n", pImg->u32FileLength );
            HI_DBG_LOADER("pImg->u32Offset          = 0x%x\n", pImg->u32Offset );
            HI_DBG_LOADER("pImg->u32FlashAddr       = 0x%x\n", pImg->u32FlashAddr );
            HI_DBG_LOADER("pImg->uPartition_endaddr = 0x%x\n", pImg->uPartition_endaddr );
            HI_DBG_LOADER("pImg->uFlashType         = 0x%x\n", pImg->uFlashType );
            HI_DBG_LOADER("pImg->lFlashIndex        = 0x%x\n", pImg->lFlashIndex );
        }
    }
}

HI_S32 InitUpgradeBuff(UsbManuInfo *pstManuInfo)
{
    HI_U8 ii = 0;
    PARTITION_MEMORY_INFO_S *pstPartMemInfo = HI_NULL;

    if (HI_NULL == pstManuInfo)
        return HI_FAILURE;

    memset(&g_stUpgradeMemInfo, 0, sizeof(g_stUpgradeMemInfo));
    g_stUpgradeMemInfo.u32PartNum = (HI_U32)pstManuInfo->u16ImgMapNum;
    g_stUpgradeMemInfo.u32ReceivedSize = 0;

    HI_DBG_LOADER("totalsize %d\n", g_stUpgradeMemInfo.u32TotalSize);

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        pstPartMemInfo[ii].u32PartitionDataSize = pstManuInfo->astImgMap[ii].u32FileLength;
        pstPartMemInfo[ii].u32ReceiveOffset = 0;
        pstPartMemInfo[ii].u32ReceiveStatus = 0;
        pstPartMemInfo[ii].bReceivePurData = HI_FALSE;
        pstPartMemInfo[ii].u32CalculateCRC = 0xffffffff;

        HI_DBG_LOADER("partition %d datasize :%u\n", ii, pstPartMemInfo[ii].u32PartitionDataSize);
    }

    return HI_SUCCESS;
}

static HI_S32 AllocateUpgradeBuff(HI_U8 * pBuff, HI_U32 u32MaxMemorySize)
{
    HI_U8 ii = 0;
    PARTITION_MEMORY_INFO_S *pstPartMemInfo = HI_NULL;
    HI_U32 u32MemSize = 0;
    HI_S32 s32AllocateSuccess = HI_FAILURE;
    HI_U32 u32ExpectMem = 0;
    HI_U32 u32MemOffset = 0;

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        /*释放已经分配了的partiton的内存*/
        if (0 != pstPartMemInfo[ii].u32ReceiveStatus)
        {
            if (HI_NULL != pstPartMemInfo[ii].pu8MemAddr)
            {
                pstPartMemInfo[ii].pu8MemAddr = HI_NULL;
            }
        }
    }

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (u32MemOffset >= u32MaxMemorySize)
        {
            HI_DBG_LOADER("memory is consume!used:0x%x, max:0x%x\n", u32MemOffset, u32MaxMemorySize);
            break;
        }

        /*为还没有接收完数据的partition分配内存*/
        if (2 != pstPartMemInfo[ii].u32ReceiveStatus)
        {
            u32ExpectMem = pstPartMemInfo[ii].u32PartitionDataSize - pstPartMemInfo[ii].u32ReceiveOffset;

            /*计算需要分配的内存大小*/
            if ((u32MaxMemorySize - u32MemOffset) > u32ExpectMem)
            {
                u32MemSize = u32ExpectMem;
            }
            else
            {
                u32MemSize = u32MaxMemorySize - u32MemOffset;
            }

            pstPartMemInfo[ii].pu8MemAddr = (HI_U8 *)(pBuff + u32MemOffset);

            /*buffer address offset of Next partition*/
            u32MemOffset += u32MemSize;
            if ((u32MemOffset % 4) != 0)
            {
                u32MemOffset += 4 - (u32MemOffset % 4);
            }

            s32AllocateSuccess = HI_SUCCESS;
            pstPartMemInfo[ii].u32MemSize = u32MemSize;
            pstPartMemInfo[ii].u32ReceiveStatus = 1;
        }
    }

    return s32AllocateSuccess;
}

HI_S32 FreeMemory(HI_VOID)
{
    HI_U8 ii = 0;

    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        g_stUpgradeMemInfo.astPartMemInfo[ii].pu8MemAddr = HI_NULL;
    }

    return HI_SUCCESS;
}

/**
 \brief initialize hisi file protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Init(HI_LOADER_TYPE_E enType, HI_VOID * para)
{
    g_u32ReadOffset = 0;
    g_u32DownLoadDataSize = 0;
    g_u32FullDataSize = 0;

    g_pu8DataBuf = (HI_U8 *)malloc(MAX_FILE_HEAD_LENGHT);

    if (HI_NULL == g_pu8DataBuf)
    {
        return HI_FAILURE;
    }

    return LOADER_DOWNLOAD_Init(enType, para);
}

HI_S32 LOADER_PROTOCOL_HisiFILE_RegisterCallback(LOADERCALLBACKSET_S *pstCallback)
{
    if (HI_NULL != pstCallback)
    {
        g_pstCallback = pstCallback;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/**
 \brief deinitialize hisi file protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_HisiFILE_DeInit(HI_VOID)
{
    free(g_pu8DataBuf);
    g_pu8DataBuf = HI_NULL;

    FreeMemory();

    (HI_VOID)LOADER_DOWNLOAD_DeInit();
}

/**
 \brief get version of hisi file protocol upgrade file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_GetVersionInfo(LOADER_VERSION_INFO_S * pstVersionInfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32MagicNum = 0;
    HI_U32 u32HeaderLen = 0;
    HI_U32 u32ReadLen = 0;
    HI_U8 *pTmp = g_pu8DataBuf;
    HI_U32 ii = 0;
    HI_U32 u32crc = 0;

    if (HI_NULL == pstVersionInfo)
        return HI_FAILURE;

    do
    {
        s32Ret = LOADER_DOWNLOAD_Getdata(pTmp, 16, &u32ReadLen);
        if ((s32Ret != HI_SUCCESS) || (u32ReadLen != 16))
        {
            s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
            break;
        }

        /*magic number check*/
        u32MagicNum = getBits(g_pu8DataBuf, 0, 0, 32);
        if ( USB_MAGIC_NUM !=  u32MagicNum )
        {
            HI_ERR_LOADER("stream magic num error 0x%x.", u32MagicNum);
            s32Ret = HI_FAILURE;
            break;
        }
            
        u32HeaderLen = getBits(g_pu8DataBuf, 0, 64, 32);
		
		if (u32HeaderLen > MAX_FILE_HEAD_LENGHT)
        {
            HI_ERR_LOADER("File head length has overflowed!\n");
            s32Ret = HI_UPGRD_UPGRDPARSE_DATAERROR;
            break;
        }
		
        pTmp += 16;
        g_u32ReadOffset += u32ReadLen;
        
        s32Ret = LOADER_DOWNLOAD_Getdata(pTmp, u32HeaderLen - 16, &u32ReadLen);
        if ((s32Ret != HI_SUCCESS) || (u32ReadLen != u32HeaderLen - 16))
        {
            s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
            break;
        }

        g_u32ReadOffset += u32ReadLen;

        ParseHeader(g_pu8DataBuf, &s_stFileHeader);

        if (s_stFileHeader.u16ManuNum > 0)
            s_pstManu = &s_stFileHeader.astManuInfo[0];

        if (s_pstManu == HI_NULL)
        {
            HI_ERR_LOADER("can't find upgrade image!\n");
            s32Ret = HI_UPGRD_OUI_NOT_MATCH;
            break;
        }

        for (ii = 0; ii < s_pstManu->u16ImgMapNum; ++ii)
            g_u32FullDataSize += s_pstManu->astImgMap[ii].u32FileLength;

        /*crc check*/
        memset(g_pu8DataBuf + sizeof(s_stFileHeader.u32MagicNum), 0, sizeof(s_stFileHeader.u32MagicNum));
        LOADER_Entire_CRC32(g_pu8DataBuf, s_stFileHeader.u32HeaderLen, &u32crc);
        if (u32crc != s_stFileHeader.u32HeaderCrc)
        {
            HI_ERR_LOADER("Bad head crc 0x%x, calc crc 0x%x.", s_stFileHeader.u32HeaderCrc, u32crc);
            s32Ret = HI_FAILURE;
            break;
        }

        pstVersionInfo->u32FactoryId   = s_pstManu->u32ManuId;
        pstVersionInfo->u32HardwareVer = s_pstManu->u32HardVersion;
        pstVersionInfo->u32Softwarever = s_pstManu->u32SoftVersion;
        pstVersionInfo->u32StartSn     = s_pstManu->u32SNStart;
        pstVersionInfo->u32EndSn       = s_pstManu->u32SNEnd; 
        
        s32Ret = HI_SUCCESS;
    } while (0);

    return s32Ret;
}

/**
 \brief get partition infomation of hisi file protocol upgrade file.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                 HI_U32 *pu32PartNum)
{
    HI_U8 ii = 0;
    UsbImgMap *pImg;

    if ((HI_NULL == pstPartInfo) || (HI_NULL == pu32PartNum))
    {
        HI_ERR_LOADER("Invalid Parameter!");
        return HI_FAILURE;
    }

    if (HI_NULL == s_pstManu)
        return HI_FAILURE;

    if (u32BufNum < s_pstManu->u16ImgMapNum)
        HI_ERR_LOADER("buf number is to small, need %d buf", s_pstManu->u16ImgMapNum);

    for (ii = 0; ii < s_pstManu->u16ImgMapNum; ii++)
    {
        pImg = &(s_pstManu->astImgMap[ii]);

        pstPartInfo[ii].u32PartitionId = ii + 1;
        pstPartInfo[ii].u32FlashType = pImg->uFlashType;
        pstPartInfo[ii].u32ImageFS = pImg->lFlashIndex;
        pstPartInfo[ii].u32FlashStartAddr = pImg->u32FlashAddr;
        pstPartInfo[ii].u32FlashEndAddr  = pImg->uPartition_endaddr;
        pstPartInfo[ii].u32ImageDataSize = pImg->u32FileLength;

        HI_DBG_LOADER("usbip protocol part[%d] id                : %d\n", ii, pstPartInfo[ii].u32PartitionId);
        HI_DBG_LOADER("usbip protocol part[%d] u32FlashType      : %d\n", ii, pstPartInfo[ii].u32FlashType);
        HI_DBG_LOADER("usbip protocol part[%d] u32ImageFS        : 0x%x\n", ii, pstPartInfo[ii].u32ImageFS);
        HI_DBG_LOADER("usbip protocol part[%d] u32FlashStartAddr : 0x%x\n", ii, pstPartInfo[ii].u32FlashStartAddr);
        HI_DBG_LOADER("usbip protocol part[%d] u32FlashEndAddr   : 0x%x\n", ii, pstPartInfo[ii].u32FlashEndAddr);
        HI_DBG_LOADER("usbip protocol part[%d] u32ImageDataSize  : 0x%x\n", ii, pstPartInfo[ii].u32ImageDataSize);
    }

    *pu32PartNum = s_pstManu->u16ImgMapNum;

    return HI_SUCCESS;
}

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiFILE_Process(HI_U32 u32MaxMemorySize)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 ii = 0;
    UsbImgMap *pImg = HI_NULL;
    HI_U32 u32ExpectLen = 0;
    HI_U32 u32DataLen = 0;
    HI_U32 u32DataNumber = 0; /*number of partitions received data*/
    HI_U32 u32RecOverNum = 0; /*number of partitions received data completely*/
    HI_U32 u32TmpCRC = 0;
    HI_U8 *pMemAddr = 0;
    HI_U32 u32Size = 0;
    HI_BOOL  bSmoothProg = HI_TRUE; 

    if (0 == u32MaxMemorySize)
        return HI_FAILURE;

    if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
        return HI_FAILURE;

    if (HI_NULL == s_pstManu)
        return HI_FAILURE;

#ifdef HI_LOADER_BOOTLOADER
    extern HI_BOOL g_bHiproUpgrdFlg;
    bSmoothProg = !g_bHiproUpgrdFlg;   /* bootloader for hipro no need smooth progress bar */
#else
    bSmoothProg = HI_TRUE; /* OSD display progress bar smoothly */
#endif 

    s32Ret = InitUpgradeBuff(s_pstManu);

    pMemAddr = LOADER_GetUsableMemory(g_u32FullDataSize+PLUS_MEM_SIZE, &u32Size);
    if (NULL == pMemAddr)
    {
        HI_ERR_LOADER("There is no Usable Memory.\n");
        return HI_FAILURE;
    }

    s32Ret = AllocateUpgradeBuff(pMemAddr, u32Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("allocate memory failed.\n");
        LOADER_FreeUsableMemory(pMemAddr);
        return HI_FAILURE;
    }

    while (1)
    {
        u32DataNumber = 0;

        /*receive data and check crc for every partitions, */
        for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
        {
            PARTITION_MEMORY_INFO_S *pstPartMemInfo = &(g_stUpgradeMemInfo.astPartMemInfo[ii]);

            if (1 != pstPartMemInfo->u32ReceiveStatus)
                continue;

            /*receive Image_length and Image_crc field */
            if (pstPartMemInfo->bReceivePurData == HI_FALSE)
            {
                pImg = &(s_pstManu->astImgMap[ii]);

                /*below code would not excute if TS packet tool and code are comply to protocol */
                //code begin
                if (pImg->u32Offset < g_u32ReadOffset)
                {
                    s32Ret = HI_FAILURE;
                    HI_ERR_LOADER("ERROR");
                    break;
                }
                else if (pImg->u32Offset > g_u32ReadOffset)
                {
                    s32Ret = LOADER_DOWNLOAD_Getdata(g_pu8DataBuf, pImg->u32Offset - g_u32ReadOffset, &u32DataLen);
                    if ((s32Ret != HI_SUCCESS) || (pImg->u32Offset - g_u32ReadOffset != u32DataLen))
                    {
                        s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
                        HI_ERR_LOADER("ERROR");
                        break;
                    }

                    g_u32ReadOffset += u32DataLen;
                }
                //code end

                /*Get Image_length and Image_crc filds in file protocol*/
                s32Ret = LOADER_DOWNLOAD_Getdata(g_pu8DataBuf, 8, &u32DataLen);
                if ((s32Ret != HI_SUCCESS) || (8 != u32DataLen))
                {
                    s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
                    HI_ERR_LOADER("ERROR");
                    break;
                }

                g_u32ReadOffset += u32DataLen;

                pImg->u32DataCRC = getBits(g_pu8DataBuf, 0, 32, 32);

                pstPartMemInfo->bReceivePurData  = HI_TRUE;
                pstPartMemInfo->u32ReceiveOffset = 0;
                pstPartMemInfo->u32DataCRC = pImg->u32DataCRC;
            }

            if (HI_NULL != pImg)
            {
                u32ExpectLen = pImg->u32FileLength > pstPartMemInfo->u32MemSize ?
                    pstPartMemInfo->u32MemSize : pImg->u32FileLength;
            }            

            /*divide to small piece to get data for showing progress*/
            if (bSmoothProg == HI_TRUE)
            {
#define MIN_PIECE_SIZE (128 * 1024)
                HI_U32 u32GetLen = 0;
                HI_U32 u32Piece;
                HI_U8* pu8Tmp = pstPartMemInfo->pu8MemAddr;
                            HI_U32 u32PieceSize = u32ExpectLen / 100 > MIN_PIECE_SIZE ? u32ExpectLen / 100 : MIN_PIECE_SIZE;

                while (u32GetLen < u32ExpectLen)
                {
                    if (u32ExpectLen - u32GetLen > u32PieceSize)
                    {
                        u32Piece = u32PieceSize;
                    }
                    else
                    {
                        u32Piece = u32ExpectLen - u32GetLen;
                    }

                    s32Ret = LOADER_DOWNLOAD_Getdata(pu8Tmp,
                            u32Piece, &u32DataLen);

                    if (s32Ret != HI_SUCCESS)
                    {
                        s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
                        HI_ERR_LOADER("return data len(%d) smaller than piece(%d).\n", u32DataLen, u32Piece);
                        break;
                    }

                    g_u32DownLoadDataSize += u32Piece;
                    g_u32ReadOffset += u32Piece;
                    pstPartMemInfo->u32ReceiveOffset += u32Piece;
                    pu8Tmp    += u32Piece;
                    u32GetLen += u32Piece;

                    if (g_pstCallback && g_pstCallback->pfnOSDCallback)
                    {
                        g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, g_u32DownLoadDataSize, g_u32FullDataSize);
                    }
                }

                /*if error occured in above 'while' loop, break 'for' loop to stop receiving data*/
                if (s32Ret != HI_SUCCESS)
                    break;
            }
            else
            {
                s32Ret = LOADER_DOWNLOAD_Getdata(pstPartMemInfo->pu8MemAddr,
                        u32ExpectLen, &u32DataLen);
                if ((s32Ret != HI_SUCCESS) || (u32ExpectLen != u32DataLen))
                {
                    s32Ret = (s32Ret == HI_SUCCESS) ? HI_FAILURE : s32Ret;
                    HI_ERR_LOADER("ERROR");
                    break;
                }

                g_u32DownLoadDataSize += u32ExpectLen;
                g_u32ReadOffset += u32ExpectLen;
                pstPartMemInfo->u32ReceiveOffset += u32ExpectLen;

                if (g_pstCallback && g_pstCallback->pfnOSDCallback)
                {
                    g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, g_u32DownLoadDataSize, g_u32FullDataSize);
                }
            }

            LOADER_Segmental_CRC32(pstPartMemInfo->u32CalculateCRC,
                    pstPartMemInfo->pu8MemAddr,
                    u32ExpectLen,
                    &u32TmpCRC);
            
#ifdef HI_LOADER_BOOTLOADER
            /* it spend too much time for crc checking ,keep heartbeat with hipro tool asap */
            if (HI_TRUE == g_bHiproUpgrdFlg)
            {
                if (g_pstCallback && g_pstCallback->pfnOSDCallback)
                {
                    g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, g_u32DownLoadDataSize, g_u32FullDataSize);
                }
            }
#endif


            pstPartMemInfo->u32CalculateCRC = u32TmpCRC;

            g_astData[u32DataNumber].u32PartitionId = ii + 1;
            g_astData[u32DataNumber].u8DataBuff  = pstPartMemInfo->pu8MemAddr;
            g_astData[u32DataNumber].u32DataSize = u32ExpectLen;
            g_astData[u32DataNumber].bLastData = HI_FALSE;

            if (pstPartMemInfo->u32ReceiveOffset == pstPartMemInfo->u32PartitionDataSize)
            {
                if (pstPartMemInfo->u32CalculateCRC != pstPartMemInfo->u32DataCRC)
                {
                    HI_ERR_LOADER("CRC error! ori crc: 0x%08x, cal crc: 0x%08x",
                            pstPartMemInfo->u32DataCRC, pstPartMemInfo->u32CalculateCRC);
                    s32Ret = HI_UPGRD_CRC_ERROR;
                    break;
                }

                pstPartMemInfo->u32ReceiveStatus   = 2;
                g_astData[u32DataNumber].bLastData = HI_TRUE;
            }

            u32DataNumber++;
        }

        /*there must be some wrong when receive data, skip out the while loop */
        if (ii < g_stUpgradeMemInfo.u32PartNum)
            break;

        if (g_pstCallback && g_pstCallback->pfnDataCallback)
        {
            s32Ret = g_pstCallback->pfnDataCallback(g_astData, u32DataNumber);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_LOADER("pfnDataCallback error.\n");
                break;
            }
        }

        /*calculate number of partition received data*/
        u32RecOverNum = 0;
        for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
        {
            if (2 == g_stUpgradeMemInfo.astPartMemInfo[ii].u32ReceiveStatus)
            {
                u32RecOverNum++;
            }
        }

        HI_DBG_LOADER("u32DataNumber: %d, u32RecOverNum: %d\n", u32DataNumber, u32RecOverNum);

        /*receive all data, skip out the while loop */
        if (u32RecOverNum == g_stUpgradeMemInfo.u32PartNum)
            break;

        /*allocate memory for next receive*/
        s32Ret = AllocateUpgradeBuff(pMemAddr, u32Size);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("allocate memory failed");
            break;
        }
    }

    LOADER_FreeUsableMemory(pMemAddr);

    return s32Ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
