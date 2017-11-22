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
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "hi_adp_boardcfg.h"
#include "ota_datamanager.h"
#include "hi_unf_demux.h"
#include "hi_unf_frontend.h"
#include "download_ota.h"
#include "protocol_ssu_ota.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */



HI_U16 g_u32Pid = 0;
HI_U32 g_u32GroupId = 0;
HI_U32 g_u32DataGramSize = 0;
LOADER_DATA_INFO_S g_stDataInfo;

static LOADER_DATA_S g_astData[MAX_UPGRADE_IMAGE_NUM];
static HI_U32 g_au32CalculateCRC[MAX_UPGRADE_IMAGE_NUM];

static LOADER_VERSION_INFO_S g_stVerInfo;

static HI_U8 g_au8SectionBuffer[SECTION_BUFFER_LENGTH];

static LOADERCALLBACKSET_S *g_pstCallback = HI_NULL;

static HI_S32 SSU_ParseDSI(HI_U8 *pu8DataBuf, HI_S32 s32Length)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32GroupInfoIndicationLen;

    do
    {
        /*service id length add compatibilitydescriptor length is 22*/
        if (s32Length < 22)
        {
            s32Ret = HI_FAILURE;
            break;
        }

        pu8DataBuf += 22;
        s32Length -= 22;

        s32GroupInfoIndicationLen = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
        pu8DataBuf += 2;
        s32Length -= 2;

        s32Ret = HI_FAILURE;
        HI_DBG_LOADER("s32GroupInfoIndicationLen:%d\n", s32GroupInfoIndicationLen);

        /*GroupInfoIndication structure*/
        while (s32GroupInfoIndicationLen > 29)
        {
            HI_U16 u16GroupNum = 0;
            HI_U32 u32GroupId;
            HI_U32 u32GroupSize;
            HI_U16 u16GroupInfoLen;
            HI_U32 u16PrivateLen;

            u16GroupNum = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
            pu8DataBuf += 2;
            s32GroupInfoIndicationLen -= 2;
            HI_DBG_LOADER("u16GroupNum:%d\n", u16GroupNum);

            while (s32GroupInfoIndicationLen > 27)
            {
                GETFOURBYTE(u32GroupId, pu8DataBuf);
                s32GroupInfoIndicationLen -= 4;
				g_u32GroupId = u32GroupId;
                HI_DBG_LOADER("u32GroupId:%d\n", u32GroupId);

                GETFOURBYTE(u32GroupSize, pu8DataBuf);
                s32GroupInfoIndicationLen -= 4;
                HI_DBG_LOADER("u32GroupSize:%d\n", u32GroupSize);

                /*CompatibilityDescriptor*/
                while (s32GroupInfoIndicationLen > 15)
                {
                    HI_U16 u16CompatibilityLen;
                    HI_U16 u16DescriptorCount;
                    HI_U16 ii;

                    u16CompatibilityLen = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
                    u16DescriptorCount = (pu8DataBuf[2] << 8) | pu8DataBuf[3];
                    pu8DataBuf += 4;
                    s32GroupInfoIndicationLen -= 4;
                    HI_DBG_LOADER("u16DescriptorCount:%d\n", u16DescriptorCount);

                    /*each loop includes 11 Bytes*/
                    for (ii = 0; ii < u16DescriptorCount; ii++)
                    {
                        HI_U8 u8DescriptorType;
                        HI_U8 u8DescriptorLen;
                        HI_U8 u8SpecifierType;
                        HI_U32 u32SpecifierData; //OUI
                        HI_U16 u16Model;
                        HI_U16 u16Version;
                        HI_U8 u8SubDesCount;

                        u8DescriptorType = pu8DataBuf[0];
                        u8DescriptorLen  = pu8DataBuf[1];
                        u8SpecifierType  = pu8DataBuf[2];
                        u32SpecifierData = (pu8DataBuf[3] << 16) | (pu8DataBuf[4] << 8) | pu8DataBuf[5];
                        u16Model   = (pu8DataBuf[6] << 8) | pu8DataBuf[7];
                        u16Version = (pu8DataBuf[8] << 8) | pu8DataBuf[9];
                        u8SubDesCount = pu8DataBuf[10];

                        pu8DataBuf += 2 + u8DescriptorLen;
                        s32GroupInfoIndicationLen -= 2 + u8DescriptorLen;

                        s32Ret = HI_SUCCESS;

                        g_stVerInfo.u32FactoryId = u32SpecifierData;

                        /* 0x01:hardware; 0x02:software; 0x40:start_sn; 0x41:end_sn */
                        if (u8DescriptorType == 0x01)
                        {
                            g_stVerInfo.u32HardwareVer = (HI_U32)((u16Model << 16) | u16Version);
                        }
                        else if (u8DescriptorType == 0x02)
                        {
                            g_stVerInfo.u32Softwarever = (HI_U32)((u16Model << 16) | u16Version);
                        }
                        else if (u8DescriptorType == 0x40)
                        {
                            g_stVerInfo.u32StartSn = (HI_U32)((u16Model << 16) | u16Version);
                        }
                        else if (u8DescriptorType == 0x41)
                        {
                            g_stVerInfo.u32EndSn = (HI_U32)((u16Model << 16) | u16Version);
                        }

                        g_stDataInfo.u32DataFullSize = u32GroupSize;
                        g_stDataInfo.bCheckFullCRC32 = HI_FALSE;

						UNUSED(u8SpecifierType);
						UNUSED(u8SubDesCount);					
                    }

					UNUSED(u16CompatibilityLen);
                }

                u16GroupInfoLen = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
                pu8DataBuf += 2 + u16GroupInfoLen;
                s32GroupInfoIndicationLen -= 2 + u16GroupInfoLen;

                u16PrivateLen = (pu8DataBuf[2] << 8) | pu8DataBuf[3];
                pu8DataBuf += 2 + u16PrivateLen;
                s32GroupInfoIndicationLen -= 2 + u16PrivateLen;
            }

			UNUSED(u16GroupNum);
        }

        if (HI_FAILURE == s32Ret)
        {
            s32Ret = HI_UPGRD_OUI_NOT_MATCH;
        }
    } while (0);

    return s32Ret;
}

static HI_S32 SSU_ParseDII(HI_U8 *pu8DataBuf, HI_S32 s32Length)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_U32 u32DownloadId = 0;
	HI_U16 u16BlockSize = 0;
	HI_U16 u16ModuleNum = 0;
	HI_U16 ii = 0;
	LOADER_PARTITION_INFO_S *pstPartitionInfo = HI_NULL;
	HI_U32 u32MemLen;
	HI_U8 u8PrivateLen;

	do
	{
		/*the length from downloadId to numberOfModules is 20 Bytes*/
		if (s32Length <= 20)
		{
			s32Ret = HI_FAILURE;
			break;
		}

		HI_DBG_LOADER("DII Len: %d\n", s32Length);

		GETFOURBYTE(u32DownloadId, pu8DataBuf);
		s32Length -= 4;

		u16BlockSize = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
		u16ModuleNum = (pu8DataBuf[14] << 8) | pu8DataBuf[15];

		pu8DataBuf += 16;
		s32Length -= 16;

		u32MemLen = u16ModuleNum * sizeof(LOADER_PARTITION_INFO_S);
		pstPartitionInfo = (LOADER_PARTITION_INFO_S *)malloc(u32MemLen);

		if (HI_NULL == pstPartitionInfo)
		{
			return HI_FAILURE;
		}

		HI_DBG_LOADER("DII module numbers: %d\n", u16ModuleNum);

		g_stDataInfo.u32PartitionNum  = u16ModuleNum;
		g_stDataInfo.pstPartitionInfo = pstPartitionInfo;

		for (ii = 0; ii < u16ModuleNum; ii++)
		{
			HI_U16 u16ModuleId;
			HI_U32 u32ModuleSize;
			HI_U8 u8ModuleVersion;
			HI_U8 u8ModuleInfoLen;

			u16ModuleId = (pu8DataBuf[0] << 8) | pu8DataBuf[1];
			pu8DataBuf += 2;
			s32Length -= 2;

			GETFOURBYTE(u32ModuleSize, pu8DataBuf);
			s32Length -= 4;

			u8ModuleVersion = pu8DataBuf[0];
			u8ModuleInfoLen = pu8DataBuf[1];
			HI_DBG_LOADER("DII moudule u8ModuleInfoLen : %d\n", u8ModuleInfoLen);
			pu8DataBuf += 2;
			s32Length -= 2;

			/*module_extend_info*/
			{
				HI_U32 u32FlashStartAddr;
				HI_U32 u32FlashEndAddr;
				HI_U32 u32FlashType;
				HI_U32 u32ImageFS;
				HI_U32 u32PartCRC;

				GETFOURBYTE(u32FlashStartAddr, pu8DataBuf);
				s32Length -= 4;

				GETFOURBYTE(u32FlashEndAddr, pu8DataBuf);
				s32Length -= 4;

				GETFOURBYTE(u32FlashType, pu8DataBuf);
				s32Length -= 4;

				GETFOURBYTE(u32ImageFS, pu8DataBuf);
				s32Length -= 4;

				GETFOURBYTE(u32PartCRC, pu8DataBuf);
				s32Length -= 4;

				pstPartitionInfo = &(g_stDataInfo.pstPartitionInfo[ii]);
				pstPartitionInfo->u32PartitionId   = u16ModuleId;
				pstPartitionInfo->u32ImageDataSize = u32ModuleSize;
				g_u32DataGramSize = u16BlockSize;
				pstPartitionInfo->u32FlashStartAddr = u32FlashStartAddr;
				pstPartitionInfo->u32FlashEndAddr = u32FlashEndAddr;
				pstPartitionInfo->u32FlashType = u32FlashType;
				pstPartitionInfo->u32ImageFS = u32ImageFS;
				pstPartitionInfo->u32ImageDataCRC32 = u32PartCRC;

				HI_DBG_LOADER("imagesize:0x%x, start:0x%x, end:0x%x, type:%d, Index:0x%x; PartCRC:0x%x, BlockSize: %d\n",
						u32ModuleSize, u32FlashStartAddr, u32FlashEndAddr, u32FlashType,
						u32ImageFS, u32PartCRC, u16BlockSize);
				/*
				 * partition upgrade stream size which restrict less than 250MB(2^16*(4096-8-12-6-4)/1024/1024 - 6MB). 
				 * 2^16: protocol define using 16 bytes to store the datagram number
				 * 4096-8-12-6-4 : the size of one section is 1024 which include 32 bytes control info
				 * 6MB : control section redundance
				 * for detail please refer to blockNumber field description in ssu protocl document
				 */
#define MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES (((1<<16) * u16BlockSize) - (6*1024*1024))
				if(u32ModuleSize >= (HI_U32)MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES)
				{
					HI_ERR_LOADER("the partition(NR:%d) upgrade file is too big(>%dMB).\n", ii, MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES/1024/1024);
					return HI_FAILURE;
				}

			}

			UNUSED(u8ModuleVersion);
			UNUSED(u8ModuleInfoLen);
		}

		u8PrivateLen = pu8DataBuf[0];
		pu8DataBuf += 1 + u8PrivateLen;
		s32Length -= 1 + u8PrivateLen;
		HI_DBG_LOADER("DII moudule private len: %d\n", u8PrivateLen);
	} while (0);

	UNUSED(u32DownloadId);
	return s32Ret;
}

HI_S32 SSU_GetIndexById(HI_U16 u16ModuleId, HI_U32 *pu32Index)
{
    HI_U32 ii = 0;

    if (HI_NULL == pu32Index)
    {
        return HI_FAILURE;
    }

    for (ii = 0; ii < g_stDataInfo.u32PartitionNum; ii++)
    {
        if ((HI_U32)u16ModuleId == g_stDataInfo.pstPartitionInfo[ii].u32PartitionId)
        {
            *pu32Index = ii;
            return HI_SUCCESS;
        }
    }

    return HI_FAILURE;
}

static HI_S32 SSU_ParseDDB(HI_U8 *pu8DataBuf, HI_S32 s32Length)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U16 u16ModuleId;
    HI_U8 u8ModuleVersion;
    HI_U16 u16BlockNumber;
    HI_U32 u32Index = 0;

    if (s32Length <= 6)
    {
        return HI_FAILURE;
    }

    u16ModuleId = pu8DataBuf[0] << 8 | pu8DataBuf[1];
    u8ModuleVersion = pu8DataBuf[2];
    u16BlockNumber = pu8DataBuf[4] << 8 | pu8DataBuf[5];

    pu8DataBuf += 6;
    s32Length -= 6;

    HI_DBG_LOADER("DDB pure data lenth: %d\n", s32Length);

    s32Ret = SSU_GetIndexById(u16ModuleId, &u32Index);

    if (HI_SUCCESS == s32Ret)
    {
        s32Ret = OTA_StoreSectionData(u32Index, (HI_U32)u16BlockNumber, (const HI_U8 *)pu8DataBuf, s32Length);
    }

	UNUSED(u8ModuleVersion);

    return s32Ret;
}

/*****************************************************************************
* Function:       OTA_Hisi_ParseDSMCC
* Description:
* Calls:
* Data Accessed: None
* Data Updated:  None
* Input:
        pu8SectionData - section data
        s32Length - section length

* Output:         None
* Return:        HI_SUCCESS HI_FAILURE
* Others:        None
*****************************************************************************/
HI_S32 SSU_ParseDSMCC(const HI_U8 *pu8SectionData, HI_S32 s32Length)
{
    HI_S32 s32DataLength = 0;

    //HI_U16 u16tableextId = 0;
    HI_S32 s32Ret = 0;
    HI_U8  *pu8DataBuf = (HI_U8 *)pu8SectionData;
    HI_U8 u8TableId = 0;
    HI_U16 u16TableIdExt = 0;
    HI_U16 u16MessageId = 0;
    HI_U32 u32TransactionId = 0; // transactionId or downloadId
    HI_U16 u16MessageLen = 0;
    HI_U32 u32CalCRCRet = 0;
    HI_U32 u32SectionCRCRet = 0;
    HI_U16 u16SectionLen = 0;

    if (HI_NULL == pu8DataBuf)
    {
        s32Ret = (HI_S32)HI_UPGRD_ERR_PARA;
        HI_ERR_LOADER("pointer is null." );
        return s32Ret;
    }

    HI_DBG_LOADER("OTA_Hisi_ParseDSMCC: ===start===\n" );
    u8TableId = pu8DataBuf[0];

    if ((u8TableId != DSI_TABLE_ID) && (u8TableId != DII_TABLE_ID) && (u8TableId != DBB_TABLE_ID))
    {
        HI_ERR_LOADER("Section data is not ssu upgrade data");
        return HI_FAILURE;
    }

    /* get section length*/
    u16SectionLen = (HI_S32)((pu8DataBuf[1] << 8) | pu8DataBuf[2]) & 0x0fff;

    s32DataLength = u16SectionLen + 3 - 4;  /*add by l55561 5.14*/
    HI_DBG_LOADER("s32Length: %d, u16SectionLen:%d, s32DataLength:%d\n", s32Length, u16SectionLen, s32DataLength);

    s32Ret = LOADER_Entire_CRC32(pu8DataBuf, (HI_U32)s32DataLength, &u32CalCRCRet);
    u32SectionCRCRet = (pu8DataBuf[s32DataLength] << 24)
                       | (pu8DataBuf[s32DataLength + 1] << 16)
                       | (pu8DataBuf[s32DataLength + 2] << 8)
                       | pu8DataBuf[s32DataLength + 3];

    if (u32SectionCRCRet != u32CalCRCRet)
    {
        HI_ERR_LOADER("u32SectionCRCRet:%d,  u32CalCRCRet: %d\n", u32SectionCRCRet, u32CalCRCRet);
        return HI_FAILURE;
    }

    pu8DataBuf    += 3;
    s32DataLength -= 3;

    u16TableIdExt = (pu8DataBuf[0] << 8) | pu8DataBuf[1];

    pu8DataBuf    += 5;
    s32DataLength -= 5;

    if (s32DataLength <= DSMCC_MESSAGE_HEADER_LENTH)
    {
        HI_ERR_LOADER("Section data is invalid");
        return HI_FAILURE;
    }

    /*parse message header*/
    {
        HI_U8 u8Protocol;
        HI_U8 u8Type;
        HI_U8 u8AdaptionLen;

        u8Protocol = pu8DataBuf[0];
        u8Type = pu8DataBuf[1];

        if ((u8Protocol != 0x11) || (u8Type != 0x03))
        {
            HI_ERR_LOADER("Section data is not ssu upgrade data");
            return HI_FAILURE;
        }

        u16MessageId = (pu8DataBuf[2] << 8) | pu8DataBuf[3];

        pu8DataBuf    += 4;
        s32DataLength -= 4;

        GETFOURBYTE(u32TransactionId, pu8DataBuf);
        s32DataLength -= 4;

        u8AdaptionLen = pu8DataBuf[1];

        /*skip one reserved Bytes*/
        u16MessageLen = (pu8DataBuf[2] << 8) | pu8DataBuf[3];

        pu8DataBuf    += 4;
        s32DataLength -= 4;

        pu8DataBuf    += u8AdaptionLen;
        s32DataLength -= u8AdaptionLen;
        u16MessageLen -= u8AdaptionLen;
        HI_DBG_LOADER("u16MessageLen:%d\n", u16MessageLen);
    }

    if (s32DataLength < 0)
    {
        return HI_FAILURE;
    }

    switch (u16MessageId)
    {
    case DSI_MESSAGE_ID:
        s32Ret = SSU_ParseDSI(pu8DataBuf, u16MessageLen);
        break;

    case DII_MESSAGE_ID:
        s32Ret = SSU_ParseDII(pu8DataBuf, u16MessageLen);
        break;

    case DBB_MESSAGE_ID:
        s32Ret = SSU_ParseDDB(pu8DataBuf, u16MessageLen);
        break;

    default:
        s32Ret = HI_FAILURE;
        break;
    }

	UNUSED(u16TableIdExt);
	UNUSED(u32TransactionId);

    HI_DBG_LOADER("OTA_Hisi_ParseDSMCC: ===end===\n" );
    return s32Ret;
}

/**
 \brief initialize ssu protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_SSU_Init(HI_LOADER_TYPE_E enType, HI_VOID * para)
{
    HI_U32 ii = 0;

    if (HI_NULL == para)
    {
        return HI_FAILURE;
    }

    for (ii = 0; ii < MAX_UPGRADE_IMAGE_NUM; ii++)
    {
        g_au32CalculateCRC[ii] = 0xffffffff;
    }

    if (HI_LOADER_TYPE_OTA == enType)
    {
        HI_LOADER_OTA_PARA_S* pstOtaParam = (HI_LOADER_OTA_PARA_S *)para;

        if (HI_UNF_TUNER_SIG_TYPE_CAB == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stCab.u32OtaPid;
        }
        else if (HI_UNF_TUNER_SIG_TYPE_SAT == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stSat.u32OtaPid;
	 	}
        else if (HI_UNF_TUNER_SIG_TYPE_DVB_T == pstOtaParam->eSigType
			  || HI_UNF_TUNER_SIG_TYPE_DVB_T2 == pstOtaParam->eSigType
			  || (HI_UNF_TUNER_SIG_TYPE_DVB_T | HI_UNF_TUNER_SIG_TYPE_DVB_T2) == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stTer.u32OtaPid;
        }
		else
		{
    		HI_ERR_LOADER("Invalid signal type.\n");		
    	}

        return LOADER_DOWNLOAD_OTA_Init(para);
    }

    return HI_FAILURE;
}

HI_S32 LOADER_PROTOCOL_SSU_RegisterCallback(LOADERCALLBACKSET_S * pstCallback)
{
    if (HI_NULL != pstCallback)
    {
        g_pstCallback = pstCallback;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/**
 \brief deinitialize ssu protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_SSU_DeInit(HI_VOID)
{
    if (HI_NULL != g_stDataInfo.pstPartitionInfo)
    {
        free(g_stDataInfo.pstPartitionInfo);
        g_stDataInfo.pstPartitionInfo = HI_NULL;
    }

    OTA_FreeMemory();
    return;
}

/**
 \brief get version of ssu protocol upgrade stream.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_SSU_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SectionLen = 0;

    /*Tuner configuration*/
    HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
    {
        FILTERDEPTH,
        {DSI_TABLE_ID, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03, 0x10, 0x06, 0x00, 0x00},
        {        0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff},
        {        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
    };

    if (HI_NULL == versioninfo)
    {
        return HI_FAILURE;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("OTA getdata failuer!\n");
        return HI_FAILURE;
    }

    s32Ret = SSU_ParseDSMCC(g_au8SectionBuffer, (HI_S32)u32SectionLen);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    memcpy(versioninfo, &g_stVerInfo, sizeof(LOADER_VERSION_INFO_S));

    return HI_SUCCESS;
}

/**
 \brief get partition infomation of ssu protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_SSU_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                            HI_U32 *pu32PartNum)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SectionLen = 0;
	HI_U8  au8Buff[4] = 
	{
		(g_u32GroupId & 0xff000000) >> 24,
		(g_u32GroupId & 0x00ff0000) >> 16,
		(g_u32GroupId & 0x0000ff00) >> 8,
		(g_u32GroupId & 0x000000ff)
	};

    /*Tuner configuration*/
    HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
    {
        15,
        {DII_TABLE_ID, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03, 0x10, 0x02, au8Buff[0], au8Buff[1], au8Buff[2], au8Buff[3], 0x00},
        {        0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff},
        {        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
    };

    if ((HI_NULL == pstPartInfo) || (HI_NULL == pu32PartNum))
    {
        HI_ERR_LOADER("Invalid Parameters");
        return HI_FAILURE;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);

    if ((HI_SUCCESS != s32Ret) || (0 == u32SectionLen))
    {
        HI_ERR_LOADER("OTA getdata failuer!\n");
        return HI_FAILURE;
    }

    s32Ret = SSU_ParseDSMCC(g_au8SectionBuffer, (HI_S32)u32SectionLen);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_FAILURE;
    }

    if (u32BufNum < g_stDataInfo.u32PartitionNum)
    {
        HI_ERR_LOADER("the u32BufNum(%d) is too small, there are %d partitins", u32BufNum, g_stDataInfo.u32PartitionNum);
        return HI_FAILURE;
    }

    memcpy(pstPartInfo, g_stDataInfo.pstPartitionInfo,
           g_stDataInfo.u32PartitionNum * sizeof(LOADER_PARTITION_INFO_S));
    *pu32PartNum = g_stDataInfo.u32PartitionNum;

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
HI_S32 LOADER_PROTOCOL_SSU_Process(HI_U32 u32MaxMemorySize)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_U32 u32SectionLen = 0;
	DOWNLOAD_STATUS_E enDLStatus;
	HI_U32 u32ImageNum;
	HI_U8 *pMemAddr = 0;
	HI_U32 u32Size = 0;

	HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
	{
		FILTERDEPTH,
		{DBB_TABLE_ID, g_u32GroupId & 0xff, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03, 0x10, 0x03, 0x00, 0x00},
		{        0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff},
		{        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	};

	HI_DBG_LOADER("MaxMemorySize: %d.\n", u32MaxMemorySize);

	if (0 == u32MaxMemorySize)
	{
		return HI_FAILURE;
	}

	if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
	{
		return HI_FAILURE;
	}

	s32Ret = OTA_InitUpgradeBuff(&g_stDataInfo, g_u32DataGramSize);

	pMemAddr = LOADER_GetUsableMemory(g_stDataInfo.u32DataFullSize+PLUS_MEM_SIZE, &u32Size);
	if (HI_NULL == pMemAddr)
	{
		HI_ERR_LOADER("There is no Usable Memory.\n");
		return HI_FAILURE;
	}

	s32Ret = OTA_AllocateUpgradeBuff(pMemAddr, u32Size);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_LOADER("allocate memory failed.\n");
		LOADER_FreeUsableMemory(pMemAddr);
		return HI_FAILURE;
	}

	s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
	if (HI_SUCCESS != s32Ret)
	{
		LOADER_FreeUsableMemory(pMemAddr);
		return s32Ret;
	}

	while (1)
	{
		s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);
		if (HI_SUCCESS != s32Ret)
		{
			LOADER_FreeUsableMemory(pMemAddr);
			HI_ERR_LOADER("OTA getdata failuer!\n");
			return s32Ret;
		}

		s32Ret = SSU_ParseDSMCC(g_au8SectionBuffer, (HI_S32)u32SectionLen);
		if (HI_SUCCESS != s32Ret)
		{
			LOADER_FreeUsableMemory(pMemAddr);
			return s32Ret;
		}

		enDLStatus = OTA_CheckDownloadStatus(g_astData, sizeof(g_astData) / sizeof(g_astData[0]), &u32ImageNum);

		/**/
		if (g_pstCallback && g_pstCallback->pfnOSDCallback)
		{
			g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, OTA_GetDownLoadDataSize(),
					g_stDataInfo.u32DataFullSize);
		}

		if ((DOWNLOAD_STATUS_PIECE_COMPLETE == enDLStatus)
				|| (DOWNLOAD_STATUS_ALL_COMPLETE == enDLStatus))
		{
			HI_U32 ii = 0;
			HI_U32 u32Index  = 0;
			HI_U32 u32CRCTmp = 0;

			/*calculate crc, compare crc*/
			for (ii = 0; ii < u32ImageNum; ii++)
			{
				if (HI_SUCCESS != SSU_GetIndexById((HI_U16)g_astData[ii].u32PartitionId, &u32Index))
				{
					HI_ERR_LOADER("DATA ERROR!.\n");
					s32Ret = HI_UPGRD_DATA_ERROR;
					break;
				}

				LOADER_Segmental_CRC32(g_au32CalculateCRC[u32Index], g_astData[ii].u8DataBuff,
						g_astData[ii].u32DataSize, &u32CRCTmp);

				g_au32CalculateCRC[u32Index] = u32CRCTmp;

				if (g_astData[ii].bLastData)
				{
					if (g_au32CalculateCRC[u32Index] != g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32)
					{
						HI_ERR_LOADER("partition %d CRC ERROR! cal:0x%08x, ori:0x%08x.\n",
								u32Index, g_au32CalculateCRC[u32Index],
								g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32);
						s32Ret = HI_UPGRD_CRC_ERROR;
						break;
					}
				}
			}

			/*there must be data error or crc error in the received data, so return failure*/
			if (ii < u32ImageNum)
			{
				LOADER_FreeUsableMemory(pMemAddr);
				return s32Ret;
			}

			if (g_pstCallback && g_pstCallback->pfnDataCallback)
			{
				s32Ret = g_pstCallback->pfnDataCallback(g_astData, u32ImageNum);
				if (HI_SUCCESS != s32Ret)
				{
					HI_ERR_LOADER("pfnDataCallback.\n");
					LOADER_FreeUsableMemory(pMemAddr);
					return s32Ret;
				}
			}

			if (DOWNLOAD_STATUS_PIECE_COMPLETE == enDLStatus)
			{
				s32Ret = OTA_AllocateUpgradeBuff(pMemAddr, u32Size);
				if (HI_SUCCESS != s32Ret)
				{
					HI_ERR_LOADER("allocate memory failed.\n");
					LOADER_FreeUsableMemory(pMemAddr);
					return s32Ret;
				}
			}
			else
			{
				//have download all data, skip out the loop
				break;
			}
		}
	}

	LOADER_FreeUsableMemory(pMemAddr);
	return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
