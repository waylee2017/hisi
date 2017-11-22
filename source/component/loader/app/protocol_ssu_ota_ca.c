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
#ifndef __PROTOCOL_SSU_OTA_CA_C__
#define __PROTOCOL_SSU_OTA_CA_C__

/* C++ support */
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#include "loader_upgrade.h"

//#include "hi_unf_ecs.h"
#include "hi_unf_demux.h"
#include "hi_loader_info.h"
#include "upgrd_osd.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "protocol_ssu_ota.h"
#include "protocol_hisi_file.h"
#include "ota_datamanager.h"
#include "wrapper_ca.h"
#include "protocol_ca.h"
#include "ca_ssd.h"

static LOADER_DATA_S g_astData[MAX_UPGRADE_IMAGE_NUM];
static HI_U32 g_au32CalculateCRC[MAX_UPGRADE_IMAGE_NUM];

static HI_U8 g_au8SectionBuffer[SECTION_BUFFER_LENGTH];

static LOADERCALLBACKSET_S *g_pstCallback = HI_NULL;

static HI_U8 *g_pMemAddr = NULL;

/**
 \brief initialize hisi ota protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_SSUCAOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para)
{
    HI_U32 ii = 0;
	HI_S32 s32Ret = HI_FAILURE;

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

        s32Ret = LOADER_DOWNLOAD_OTA_Init(para);
        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        s32Ret = LOADER_PROTOCOL_HisiFILE_Init_OTA();
        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        s32Ret = CA_SSD_Init();
        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

HI_S32 LOADER_PROTOCOL_SSUCAOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback)
{
    if (HI_NULL != pstCallback)
    {
        g_pstCallback = pstCallback;

        if (HI_SUCCESS != LOADER_PROTOCOL_HisiFILE_RegisterCallback(pstCallback))
        {
            HI_ERR_LOADER("OTA file register callback failure!\n");
            return HI_FAILURE;
        }
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/**
 \brief deinitialize hisi ota protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_SSUCAOTA_DeInit(HI_VOID)
{
    if (HI_NULL != g_stDataInfo.pstPartitionInfo)
    {
        free(g_stDataInfo.pstPartitionInfo);
        g_stDataInfo.pstPartitionInfo = HI_NULL;
    }

    (HI_VOID)OTA_FreeMemory();
    
    LOADER_PROTOCOL_HisiFILE_DeInit_OTA();

    (HI_VOID)CA_SSD_DeInit();
}

/**
 \brief get partition infomation of hisi ca ota protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_SSUCAOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SectionLen = 0;
    HI_U8 u8PartCount = 0;
    DOWNLOAD_STATUS_E enDLStatus;
    HI_U32 u32ImageNum;

    HI_U32 u32Size = 0;
    HI_U32 ii = 0;
    HI_U32 u32Index  = 0;
    HI_U32 u32CRCTmp = 0;	
	LOADER_VERSION_INFO_S stVersionInfo = {0};
	
    HI_U8  au8Buff[4] = 
    {
        (g_u32GroupId & 0xff000000) >> 24,
	 	(g_u32GroupId & 0x00ff0000) >> 16,
	 	(g_u32GroupId & 0x0000ff00) >> 8,
	 	(g_u32GroupId & 0x000000ff)
    };

    /*Tuner configuration*/
    HI_UNF_DMX_FILTER_ATTR_S stParFilterAttr =
    {
        15,
        {DII_TABLE_ID, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03, 0x10, 0x02, au8Buff[0], au8Buff[1], au8Buff[2], au8Buff[3], 0x00},
        {        0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff},
        {        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
    };
    /*section configuration*/

    if (HI_NULL == pstPartInfo)
    {
        return HI_FAILURE;
    }

    HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
	{
		FILTERDEPTH,
		{DBB_TABLE_ID, g_u32GroupId & 0xff, 0x00, 0x00, 0x00, 0x00, 0x11, 0x03, 0x10, 0x03, 0x00, 0x00},
		{        0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff},
		{        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	};

    s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stParFilterAttr);
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


    if (u32BufNum < g_stDataInfo.u32PartitionNum)
    {
        HI_ERR_LOADER("the u32BufNum(%d) is too small, there are %d partitins", u32BufNum, g_stDataInfo.u32PartitionNum);
        return HI_FAILURE;
    }

    /*Process the upgrade data to get the actual partition size*/
    if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
    {
        return HI_FAILURE;
    }

    s32Ret = OTA_InitUpgradeBuff(&g_stDataInfo, g_u32DataGramSize);

    g_pMemAddr = LOADER_GetUsableMemory(g_stDataInfo.u32DataFullSize+PLUS_MEM_SIZE, &u32Size);
    if (NULL == g_pMemAddr || (g_stDataInfo.u32DataFullSize+PLUS_MEM_SIZE) != u32Size)
    {
        HI_ERR_LOADER("There is no enough Usable Memory");
        return HI_FAILURE;
    }

    s32Ret = OTA_AllocateUpgradeBuff(g_pMemAddr, u32Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("allocate memory failed");
        LOADER_FreeUsableMemory(g_pMemAddr);
        return HI_FAILURE;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
    if (HI_SUCCESS != s32Ret)
    {
        LOADER_FreeUsableMemory(g_pMemAddr);
        return s32Ret;
    }

    while (1)
    {
        s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);
        if (HI_SUCCESS != s32Ret)
        {
			LOADER_FreeUsableMemory(g_pMemAddr);
            HI_ERR_LOADER("OTA getdata failuer!\n");
            return s32Ret;
        }

        s32Ret = SSU_ParseDSMCC(g_au8SectionBuffer, (HI_S32)u32SectionLen);
        if (HI_SUCCESS != s32Ret)
        {
            LOADER_FreeUsableMemory(g_pMemAddr);
            return s32Ret;
        }

        enDLStatus = OTA_CheckDownloadStatus(g_astData, sizeof(g_astData) / sizeof(g_astData[0]), &u32ImageNum);

        if (g_pstCallback && g_pstCallback->pfnOSDCallback)
        {
            (HI_VOID)g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, OTA_GetDownLoadDataSize(),
                    g_stDataInfo.u32DataFullSize);
        }

        /*There is only 1 piece for CA OTA loader*/
        if (DOWNLOAD_STATUS_ALL_COMPLETE == enDLStatus)
        {
            break;
        }
    }

    /*calculate crc, compare crc*/
    if (1 != u32ImageNum)
    {
        HI_ERR_LOADER("There should be only 1 image for the OTA upgrade!\n");
        LOADER_FreeUsableMemory(g_pMemAddr);
        return HI_FAILURE;
    }
    
    for (ii = 0; ii < u32ImageNum; ii++)
    {
        if (HI_SUCCESS != SSU_GetIndexById((HI_U16)g_astData[ii].u32PartitionId, &u32Index))
        {
            HI_ERR_LOADER("DATA ERROR!");
            s32Ret = HI_UPGRD_DATA_ERROR;
            break;
        }

        (HI_VOID)LOADER_Entire_CRC32(g_astData[ii].u8DataBuff, g_astData[ii].u32DataSize, &u32CRCTmp);
        if (u32CRCTmp != g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32)
        {
            HI_ERR_LOADER("partition %d CRC ERROR! cal:0x%08x, ori:0x%08x",
                    u32Index, u32CRCTmp,
                    g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32);
            s32Ret = HI_UPGRD_CRC_ERROR;
            break;
        }
    }

    /*there must be data error or crc error in the received data, so return failure*/
    if (ii < u32ImageNum)
    {
        LOADER_FreeUsableMemory(g_pMemAddr);
        return s32Ret;
    }

    s32Ret = LOADER_PROTOCOL_HisiFILE_GetVersionInfo_OTA(&stVersionInfo, g_astData[0].u8DataBuff, g_astData[0].u32DataSize);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("get upgrade stream version info failed!\n");
        LOADER_FreeUsableMemory(g_pMemAddr);
        return s32Ret;
    }

    s32Ret = LOADER_PROTOCOL_HisiFILE_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("Get partition info failed!\n");
        LOADER_FreeUsableMemory(g_pMemAddr);
        return s32Ret;
    }

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
HI_S32 LOADER_PROTOCOL_SSUCAOTA_Process(HI_U32 u32MaxMemorySize)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
    if (0 == u32MaxMemorySize)
    {
        return HI_FAILURE;
    }

    s32Ret = LOADER_PROTOCOL_HisiFILE_Process_OTA(u32MaxMemorySize, g_astData[0].u8DataBuff, g_astData[0].u32DataSize);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("Process failed!\n" );
        LOADER_FreeUsableMemory(g_pMemAddr);
        return s32Ret;
    }

    LOADER_FreeUsableMemory(g_pMemAddr);

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */

#endif  /*__PROTOCOL_HISI_OTA_CA_C__*/
