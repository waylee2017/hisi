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
#include "loader_upgrade.h"
#include "hi_loader_info.h"
#include "upgrd_common.h"
#include "ota_datamanager.h"
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

typedef struct tagPARTITION_MEMORY_INFO_S
{
    HI_U32  u32PartitionId;
    HI_U32  u32PartitionDataSize;               /* size of ugrade data */
    HI_U32  u32ReceiveOffset;       /* 本次接收数据起始地址相对partition起始地址的偏移*/
    HI_U32  u32ReceiveSize;         /* 本次已接收数据的长度 */
    HI_U32  u32BlockSize;           /* size of block, in one section transmit*/
    HI_U8  *pu8MemAddr;
    HI_U32  u32MemSize;             /* size of allocated memory */
    HI_U32  u32TotalDataGramNum;        /* 整个image的datagram总数*/
    HI_U8  *pu8DataGramReceiveFlag; /* section 接收状态标志*/
    HI_U32  u32StartDataGramNum;    /* 本次接收数据的起始datagram number*/
    HI_U32  u32ToReceiveDataGramNum;    /* 本次要接收数据的datagram 的数目*/
    HI_U32  u32ReceivedDataGramNum;     /* 本次已经接收数据的datagram 的数目*/
    HI_U32  u32ReceiveStatus;       /* 接收状态 0:未开始接收;1:正在接收;2:接收完毕*/
} PARTITION_MEMORY_INFO_S;

typedef struct tagUPGRADE_MEM_INFO_S
{
    HI_U32                  u32TotalSize;
    HI_U32                  u32ReceivedSize;
    HI_U32                  u32PartNum;
    PARTITION_MEMORY_INFO_S astPartMemInfo[MAX_UPGRADE_IMAGE_NUM];
} UPGRADE_MEM_INFO_S;

static UPGRADE_MEM_INFO_S g_stUpgradeMemInfo;

HI_S32 OTA_StoreSectionData(HI_U32 u32PartNum, HI_U32 u32DatagramNum, const HI_U8 *pubData, HI_U32 u32Lenth)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32Offset = 0; //数据报文相对整个image起始位置的偏移
    HI_U32 u32MemOffset = 0; //数据报文相对存储buffer起始位置的偏移

    PARTITION_MEMORY_INFO_S *pstMemInfo;

    do
    {
        if (HI_NULL == pubData)
        {
            break;
        }

        /*Partition is invalid */
        if (u32PartNum >= g_stUpgradeMemInfo.u32PartNum)
        {
            break;
        }

        pstMemInfo = &(g_stUpgradeMemInfo.astPartMemInfo[u32PartNum]);

        /*if the partition is not on receiveing status, return(no memory is allocated) */
        if (1 != pstMemInfo->u32ReceiveStatus)
        {
            break;
        }

        /*Section is invalid */
        if ((u32DatagramNum < pstMemInfo->u32StartDataGramNum)
            || (u32DatagramNum >= pstMemInfo->u32StartDataGramNum + pstMemInfo->u32ToReceiveDataGramNum))
        {
            break;
        }

        /*Section have received */
        if (pstMemInfo->pu8DataGramReceiveFlag[u32DatagramNum] >= 1)
        {
        	pstMemInfo->pu8DataGramReceiveFlag[u32DatagramNum]++;

			if (pstMemInfo->pu8DataGramReceiveFlag[u32DatagramNum] > OTA_DATA_RECEIVE_TIMES)
			{
				s32Ret = HI_UPGRD_DMX_TIMEOUT;
			}
            
            break;
        }

        u32Offset = u32DatagramNum * pstMemInfo->u32BlockSize;

        /*data is larger than descript */
        if (u32Offset + u32Lenth > pstMemInfo->u32PartitionDataSize)
        {
            break;
        }

        HI_DBG_LOADER("%d, %d\n", u32PartNum, u32DatagramNum);

        /*存储到buffer*/
        u32MemOffset = (u32DatagramNum - pstMemInfo->u32StartDataGramNum) * pstMemInfo->u32BlockSize;
        memcpy(&(pstMemInfo->pu8MemAddr[u32MemOffset]), pubData, u32Lenth);

        pstMemInfo->pu8DataGramReceiveFlag[u32DatagramNum] = 1;
        pstMemInfo->u32ReceivedDataGramNum++;

        pstMemInfo->u32ReceiveSize += u32Lenth;

        g_stUpgradeMemInfo.u32ReceivedSize += u32Lenth;
    } while (0);

    return s32Ret;
}

HI_S32 OTA_InitUpgradeBuff(LOADER_DATA_INFO_S *pstUpgradeInfo, HI_U32 u32DataGramSize)
{
    HI_U8 ii = 0;
    PARTITION_MEMORY_INFO_S *pstPartMemInfo = HI_NULL;

    if (HI_NULL == pstUpgradeInfo)
    {
        return HI_FAILURE;
    }

    memset(&g_stUpgradeMemInfo, 0, sizeof(g_stUpgradeMemInfo));
    g_stUpgradeMemInfo.u32PartNum   = pstUpgradeInfo->u32PartitionNum;
    g_stUpgradeMemInfo.u32TotalSize = pstUpgradeInfo->u32DataFullSize;
    g_stUpgradeMemInfo.u32ReceivedSize = 0;

    HI_DBG_LOADER("totalsize %d\n", g_stUpgradeMemInfo.u32TotalSize);

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        pstPartMemInfo[ii].u32PartitionId = pstUpgradeInfo->pstPartitionInfo[ii].u32PartitionId;
        pstPartMemInfo[ii].u32PartitionDataSize = pstUpgradeInfo->pstPartitionInfo[ii].u32ImageDataSize;
        pstPartMemInfo[ii].u32BlockSize = u32DataGramSize;

        pstPartMemInfo[ii].u32TotalDataGramNum = pstPartMemInfo[ii].u32PartitionDataSize
                                                 / pstPartMemInfo[ii].u32BlockSize;
        if (pstPartMemInfo[ii].u32PartitionDataSize % pstPartMemInfo[ii].u32BlockSize != 0)
        {
            pstPartMemInfo[ii].u32TotalDataGramNum++;
        }

        pstPartMemInfo[ii].u32ReceiveSize   = 0;
        pstPartMemInfo[ii].u32ReceiveOffset = 0;
        pstPartMemInfo[ii].u32ReceiveStatus = 0;
        pstPartMemInfo[ii].u32StartDataGramNum = 0;
        pstPartMemInfo[ii].u32ReceivedDataGramNum = 0;

        HI_DBG_LOADER("partition %d datagram :%d\n", ii, pstPartMemInfo[ii].u32TotalDataGramNum);
        HI_DBG_LOADER("partition %d datasize :%d\n", ii, pstPartMemInfo[ii].u32PartitionDataSize);
    }

    return HI_SUCCESS;
}

HI_S32 OTA_AllocateUpgradeBuff(HI_U8 *pBuff, HI_U32 u32MaxMemorySize)
{
    HI_U8 ii = 0;
    PARTITION_MEMORY_INFO_S *pstPartMemInfo = HI_NULL;
    HI_U32 u32MemSize = 0;
    HI_S32 s32AllocateSuccess = HI_FAILURE;
    HI_U32 u32RemainDGNum = 0; //number of datagram remained to receive
    HI_U32 u32MemoryDGNum = 0; //number of datagram memory can store;
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
#if 0
            if (2 == pstPartMemInfo[ii].u32ReceiveStatus)
            {
                if (HI_NULL != pstPartMemInfo[ii].pu8DataGramReceiveFlag)
                {
                    free(pstPartMemInfo[ii].pu8DataGramReceiveFlag);
                    pstPartMemInfo[ii].pu8DataGramReceiveFlag = HI_NULL;
                }
            }
#endif
        }
    }

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (u32MemOffset >= u32MaxMemorySize)
        {
            HI_DBG_LOADER("memory is consume! used:0x%x, max:0x%x\n", u32MemOffset, u32MaxMemorySize);
            break;
        }

        /*为还没有接收完数据的partition分配内存*/
        if (2 != pstPartMemInfo[ii].u32ReceiveStatus)
        {
            if (0 == pstPartMemInfo[ii].u32ReceiveStatus)
            {
                pstPartMemInfo[ii].pu8DataGramReceiveFlag = (HI_U8 *)malloc(pstPartMemInfo[ii].u32TotalDataGramNum);

                if (HI_NULL != pstPartMemInfo[ii].pu8DataGramReceiveFlag)
                {
                    memset(pstPartMemInfo[ii].pu8DataGramReceiveFlag, 0, pstPartMemInfo[ii].u32TotalDataGramNum);
                }
                else
                {
                    break;
                }
            }

            u32ExpectMem = (pstPartMemInfo[ii].u32TotalDataGramNum -
                            (pstPartMemInfo[ii].u32StartDataGramNum + pstPartMemInfo[ii].u32ReceivedDataGramNum)) *
                           pstPartMemInfo[ii].u32BlockSize;
            HI_DBG_LOADER("expect memory size is : %d, partition size :%d\n", u32ExpectMem,
                          pstPartMemInfo[ii].u32PartitionDataSize);

            /*计算需要分配的内存大小*/
            if ((u32MaxMemorySize - u32MemOffset) > u32ExpectMem)
            {
                u32MemSize = u32ExpectMem;
            }
            else
            {
                u32MemSize = u32MaxMemorySize - u32MemOffset;
            }

            HI_DBG_LOADER("real memory size:%d\n", u32MemSize);

            pstPartMemInfo[ii].pu8MemAddr = (HI_U8 *)(pBuff + u32MemOffset);
			
            s32AllocateSuccess = HI_SUCCESS;
            pstPartMemInfo[ii].u32MemSize = u32MemSize;
            pstPartMemInfo[ii].u32ReceiveStatus = 1;
            pstPartMemInfo[ii].u32ReceiveSize = 0;

            /*计算本次应该接收的section number的范围*/
            pstPartMemInfo[ii].u32StartDataGramNum += pstPartMemInfo[ii].u32ReceivedDataGramNum;

            u32RemainDGNum = pstPartMemInfo[ii].u32TotalDataGramNum - pstPartMemInfo[ii].u32StartDataGramNum;
            u32MemoryDGNum = pstPartMemInfo[ii].u32MemSize / pstPartMemInfo[ii].u32BlockSize;
            HI_DBG_LOADER("u32RemainDGNum : %d, u32MemoryDGNum : %d\n", u32RemainDGNum, u32MemoryDGNum);
            pstPartMemInfo[ii].u32ToReceiveDataGramNum = u32RemainDGNum
                                                         > u32MemoryDGNum ? u32MemoryDGNum : u32RemainDGNum;
            pstPartMemInfo[ii].u32ReceivedDataGramNum = 0;

			/*buffer address offset of Next partition*/
			u32MemOffset += u32MemSize;
			if ((u32MemOffset % 4) != 0)
			{
				u32MemOffset += 4 - (u32MemOffset % 4);
			}			
        }
    }

    return s32AllocateSuccess;
}

DOWNLOAD_STATUS_E OTA_CheckDownloadStatus(LOADER_DATA_S *pstData, HI_U32 u32BufNum, HI_U32 *pu32Num)
{
    HI_U8 ii = 0;
    DOWNLOAD_STATUS_E enStatus;
    PARTITION_MEMORY_INFO_S *pstPartMemInfo = HI_NULL;
    HI_U32 u32Number = 0;

    *pu32Num = 0;

    pstPartMemInfo = g_stUpgradeMemInfo.astPartMemInfo;

    /*check whether piece data have received completely*/
    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (1 == pstPartMemInfo[ii].u32ReceiveStatus)
        {
            if (pstPartMemInfo[ii].u32ReceivedDataGramNum < pstPartMemInfo[ii].u32ToReceiveDataGramNum)
            {
                enStatus = DOWNLOAD_STATUS_NON_COMPLETE;
                return enStatus;
            }
        }
    }

    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (1 == pstPartMemInfo[ii].u32ReceiveStatus)
        {
            HI_DBG_LOADER("total:%d, start:%d, to:%d, Received:%d\n", pstPartMemInfo[ii].u32TotalDataGramNum,
                          pstPartMemInfo[ii].u32StartDataGramNum, pstPartMemInfo[ii].u32ToReceiveDataGramNum,
                          pstPartMemInfo[ii].u32ReceivedDataGramNum);

            pstData[u32Number].u32PartitionId = pstPartMemInfo[ii].u32PartitionId;
            pstData[u32Number].u8DataBuff  = pstPartMemInfo[ii].pu8MemAddr;
            pstData[u32Number].u32DataSize = pstPartMemInfo[ii].u32ReceiveSize;
            pstData[u32Number].bLastData = HI_FALSE;

            if (pstPartMemInfo[ii].u32ReceivedDataGramNum + pstPartMemInfo[ii].u32StartDataGramNum ==
                pstPartMemInfo[ii].u32TotalDataGramNum)
            {
                pstPartMemInfo[ii].u32ReceiveStatus = 2;
                pstData[u32Number].bLastData = HI_TRUE;
                HI_DBG_LOADER("partition %d have received completely!", ii);
            }

            u32Number++;
        }
    }

    if (0 == u32Number)
    {
        HI_ERR_LOADER("There is no receiving Partition!\n");
        return DOWNLOAD_STATUS_NON_COMPLETE;
    }

    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (2 != pstPartMemInfo[ii].u32ReceiveStatus)
        {
            break;
        }
    }

    if (ii >= g_stUpgradeMemInfo.u32PartNum)
    {
        HI_DBG_LOADER("all data have received completely!");
        enStatus = DOWNLOAD_STATUS_ALL_COMPLETE;
    }
    else
    {
        HI_DBG_LOADER("piece data have received completely!");
        enStatus = DOWNLOAD_STATUS_PIECE_COMPLETE;
    }

    *pu32Num = u32Number;

    return enStatus;
}

HI_U32 OTA_GetDownLoadDataSize(HI_VOID)
{
    return g_stUpgradeMemInfo.u32ReceivedSize;
}

HI_S32 OTA_FreeMemory(HI_VOID)
{
    HI_U8 ii = 0;

    for (ii = 0; ii < g_stUpgradeMemInfo.u32PartNum; ii++)
    {
        if (g_stUpgradeMemInfo.astPartMemInfo[ii].pu8MemAddr != HI_NULL)
        {
            g_stUpgradeMemInfo.astPartMemInfo[ii].pu8MemAddr = HI_NULL;
        }

        if (g_stUpgradeMemInfo.astPartMemInfo[ii].pu8DataGramReceiveFlag != HI_NULL)
        {
            free(g_stUpgradeMemInfo.astPartMemInfo[ii].pu8DataGramReceiveFlag);
            g_stUpgradeMemInfo.astPartMemInfo[ii].pu8DataGramReceiveFlag = HI_NULL;
        }
    }

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
