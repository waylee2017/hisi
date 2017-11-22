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
#include "upgrd_common.h"
#include "download.h"
#include "protocol.h"
#include "protocol_hisi_file.h"
#include "protocol_hisi_ota.h"
#include "protocol_ssu_ota.h"
#include "protocol_ca.h"

static PROTOCOL_TYPE_E g_enProtocolType;
static HI_LOADER_TYPE_E g_enDownloadType;

/**
 \brief initialize  protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_Init(HI_LOADER_TYPE_E enDownloadType, HI_VOID * pDownloadPara)
{
	HI_S32 s32Ret = HI_FAILURE;

	g_enDownloadType = enDownloadType;

	switch (enDownloadType)
	{
#if defined(HI_ADVCA_SUPPORT)
    case HI_LOADER_TYPE_OTA:
	{
#if defined HI_LOADER_PROTOCOL_HISI_OTA
        g_enProtocolType = PROTOCOL_TYPE_HISI_CAOTA;
		s32Ret = LOADER_PROTOCOL_HisiCAOTA_Init(enDownloadType,
				&(((HI_LOADER_PARAMETER_S *)pDownloadPara)->stPara.stOTAPara));
#elif defined HI_LOADER_PROTOCOL_SSU_OTA
        g_enProtocolType = PROTOCOL_TYPE_SSU_CAOTA;
		s32Ret = LOADER_PROTOCOL_SSUCAOTA_Init(enDownloadType,
				&(((HI_LOADER_PARAMETER_S *)pDownloadPara)->stPara.stOTAPara));
#else
		HI_FATAL_LOADER("invalid OTA protocol type!\n");
		s32Ret = HI_FAILURE;
#endif
		break;
	}

	case HI_LOADER_TYPE_USB:
	{
#if defined HI_LOADER_PROTOCOL_HISI_FILE

        g_enProtocolType = PROTOCOL_TYPE_HISI_CAFILE;
		s32Ret = LOADER_PROTOCOL_HisiCAFILE_Init(enDownloadType, pDownloadPara);
#else
		HI_FATAL_LOADER("invalid hisi file protocol!\n");
		s32Ret = HI_FAILURE;
#endif
		break;
	}
	
#else   /*NO ADVCA SUPPORT*/
case HI_LOADER_TYPE_OTA:
	{
#if defined HI_LOADER_PROTOCOL_HISI_OTA
		g_enProtocolType = PROTOCOL_TYPE_HISI_OTA;
		s32Ret = LOADER_PROTOCOL_HisiOTA_Init(enDownloadType,
				&(((HI_LOADER_PARAMETER_S *)pDownloadPara)->stPara.stOTAPara));
#elif defined HI_LOADER_PROTOCOL_SSU_OTA
		g_enProtocolType = PROTOCOL_TYPE_SSU;
		s32Ret = LOADER_PROTOCOL_SSU_Init(enDownloadType, &(((HI_LOADER_PARAMETER_S *)pDownloadPara)->stPara.stOTAPara));
#else
		HI_FATAL_LOADER("invalid OTA protocol type!\n");
		s32Ret = HI_FAILURE;
#endif
		break;
	}

	case HI_LOADER_TYPE_IP:
	case HI_LOADER_TYPE_USB:
	{
#if defined HI_LOADER_PROTOCOL_HISI_FILE
		g_enProtocolType = PROTOCOL_TYPE_HISI_FILE;
		s32Ret = LOADER_PROTOCOL_HisiFILE_Init(enDownloadType, pDownloadPara);
#else
		HI_FATAL_LOADER("invalid hisi file protocol!\n");
		s32Ret = HI_FAILURE;
#endif
		break;
	}

#endif  /*HI_ADVCA_SUPPORT*/

	default:
		HI_FATAL_LOADER("invalid protocol type!\n");
		s32Ret = HI_FAILURE;
		break;
	}

	UNUSED(g_enDownloadType);

	return s32Ret;
}

HI_S32 LOADER_PROTOCOL_RegisterCallback(LOADERCALLBACKSET_S *pstCallback)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_NULL == pstCallback)
    {
        return HI_FAILURE;
    }

    switch (g_enProtocolType)
    {
    case PROTOCOL_TYPE_HISI_OTA:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_HisiOTA_RegisterCallback(pstCallback);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_FILE:
    case PROTOCOL_TYPE_HISI_CAFILE:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
        if ((HI_LOADER_TYPE_USB == g_enDownloadType) || (HI_LOADER_TYPE_IP == g_enDownloadType))
        {
            s32Ret = LOADER_PROTOCOL_HisiFILE_RegisterCallback(pstCallback);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_SSU:
    {
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_SSU_RegisterCallback(pstCallback);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("SSU protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_HisiCAOTA_RegisterCallback(pstCallback);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_SSU_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_SSUCAOTA_RegisterCallback(pstCallback);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    default:
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}

/**
 \brief deinitialize protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_DeInit(HI_VOID)
{
	switch (g_enProtocolType)
	{
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
		case PROTOCOL_TYPE_HISI_OTA:
		{
			if (HI_LOADER_TYPE_OTA == g_enDownloadType)
				LOADER_PROTOCOL_HisiOTA_DeInit();
			
			break;
		}
		case PROTOCOL_TYPE_HISI_CAOTA:
		{
		  if (HI_LOADER_TYPE_OTA == g_enDownloadType)
		      LOADER_PROTOCOL_HisiCAOTA_DeInit();
            
		  break;
		}
#endif

#ifdef HI_LOADER_PROTOCOL_HISI_FILE
		case PROTOCOL_TYPE_HISI_FILE:
		{
			if ((HI_LOADER_TYPE_USB == g_enDownloadType) || (HI_LOADER_TYPE_IP == g_enDownloadType))
				LOADER_PROTOCOL_HisiFILE_DeInit();
			
			break;
		}
		case PROTOCOL_TYPE_HISI_CAFILE:
		{
		  if (HI_LOADER_TYPE_USB == g_enDownloadType)
		      LOADER_PROTOCOL_HisiCAFILE_DeInit();
            
		  break;
		}
#endif

#ifdef HI_LOADER_PROTOCOL_SSU_OTA
		case PROTOCOL_TYPE_SSU:
		{
			if (HI_LOADER_TYPE_OTA == g_enDownloadType)
				LOADER_PROTOCOL_SSU_DeInit();
			
			break;
		}
        case PROTOCOL_TYPE_SSU_CAOTA:
		{
			if (HI_LOADER_TYPE_OTA == g_enDownloadType)
				LOADER_PROTOCOL_SSUCAOTA_DeInit();
			
			break;
		}
#endif

		default:
			HI_FATAL_LOADER("invalid protocol(%d) type!\n", g_enProtocolType);
	}
}

/**
 \brief get version of upgrade file.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_GetVersionInfo(LOADER_VERSION_INFO_S * pstVersionInfo)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_NULL == pstVersionInfo)
    {
        return HI_FAILURE;
    }

    switch (g_enProtocolType)
    {
    case PROTOCOL_TYPE_HISI_OTA:
    case PROTOCOL_TYPE_HISI_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_HisiOTA_GetVersionInfo(pstVersionInfo);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_FILE:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
        if ((HI_LOADER_TYPE_USB == g_enDownloadType) || (HI_LOADER_TYPE_IP == g_enDownloadType))
        {
            s32Ret = LOADER_PROTOCOL_HisiFILE_GetVersionInfo(pstVersionInfo);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_SSU:
    case PROTOCOL_TYPE_SSU_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_SSU_GetVersionInfo(pstVersionInfo);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("SSU protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_CAFILE:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
        if (HI_LOADER_TYPE_USB == g_enDownloadType)
        {
            s32Ret = LOADER_PROTOCOL_HisiCAFILE_GetVersionInfo(pstVersionInfo);
        }
        else
        {
            s32Ret = HI_FAILURE;
        }

#else
        HI_ERR_LOADER("HISI protocol is not select!");
#endif
        break;
    }

    default:
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}

/**
 \brief get partition infomation of upgrade file.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum, HI_U32 *pu32PartNum)
{
    HI_S32 s32Ret = HI_FAILURE;

    if ((HI_NULL == pstPartInfo) || (HI_NULL == pu32PartNum))
        return HI_FAILURE;

    switch (g_enProtocolType)
    {
    case PROTOCOL_TYPE_HISI_OTA:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
            s32Ret = LOADER_PROTOCOL_HisiOTA_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
        else
            s32Ret = HI_FAILURE;
#else
        HI_ERR_LOADER("HISI OTA protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_FILE:
    case PROTOCOL_TYPE_HISI_CAFILE:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
        if ((HI_LOADER_TYPE_USB == g_enDownloadType) || (HI_LOADER_TYPE_IP == g_enDownloadType))
            s32Ret = LOADER_PROTOCOL_HisiFILE_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
        else
            s32Ret = HI_FAILURE;
#else
        HI_ERR_LOADER("HISI file protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_SSU:
    {
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
            s32Ret = LOADER_PROTOCOL_SSU_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
        else
            s32Ret = HI_FAILURE;
#else
        HI_ERR_LOADER("SSU protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_HISI_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
            s32Ret = LOADER_PROTOCOL_HisiCAOTA_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
        else
            s32Ret = HI_FAILURE;
#else
        HI_ERR_LOADER("HISI OTA protocol is not select!");
#endif
        break;
    }

    case PROTOCOL_TYPE_SSU_CAOTA:
    {
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
        if (HI_LOADER_TYPE_OTA == g_enDownloadType)
            s32Ret = LOADER_PROTOCOL_SSUCAOTA_GetPartitionInfo(pstPartInfo, u32BufNum, pu32PartNum);
        else
            s32Ret = HI_FAILURE;
#else
        HI_ERR_LOADER("SSU CAOTA protocol is not select!");
#endif
        break;
    }

    default:
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_Process(HI_U32 u32MaxMemorySize)
{
	HI_S32 s32Ret = HI_FAILURE;

	if (0 == u32MaxMemorySize)
		return HI_FAILURE;

	switch (g_enProtocolType)
	{
	case PROTOCOL_TYPE_HISI_OTA:
	{
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
		if (HI_LOADER_TYPE_OTA == g_enDownloadType)
			s32Ret = LOADER_PROTOCOL_HisiOTA_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("HISI OTA protocol is not select!");
#endif
		break;
	}

	case PROTOCOL_TYPE_HISI_FILE:
	{
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
		if ((HI_LOADER_TYPE_USB == g_enDownloadType) || (HI_LOADER_TYPE_IP == g_enDownloadType))
			s32Ret = LOADER_PROTOCOL_HisiFILE_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("HISI file protocol is not select!");
#endif
		break;
	}

	case PROTOCOL_TYPE_SSU:
	{
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
		if (HI_LOADER_TYPE_OTA == g_enDownloadType)
			s32Ret = LOADER_PROTOCOL_SSU_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("SSU protocol is not select!");
#endif
		break;
	}

    case PROTOCOL_TYPE_HISI_CAOTA:
	{
#ifdef HI_LOADER_PROTOCOL_HISI_OTA
		if (HI_LOADER_TYPE_OTA == g_enDownloadType)
			s32Ret = LOADER_PROTOCOL_HisiCAOTA_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("HISI OTA protocol is not select!");
#endif
		break;
	}
    
    case PROTOCOL_TYPE_SSU_CAOTA:
	{
#ifdef HI_LOADER_PROTOCOL_SSU_OTA
		if (HI_LOADER_TYPE_OTA == g_enDownloadType)
			s32Ret = LOADER_PROTOCOL_SSUCAOTA_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("HISI OTA protocol is not select!");
#endif
		break;
	}

	case PROTOCOL_TYPE_HISI_CAFILE:
	{
#ifdef HI_LOADER_PROTOCOL_HISI_FILE
		if (HI_LOADER_TYPE_USB == g_enDownloadType)
			s32Ret = LOADER_PROTOCOL_HisiCAFILE_Process(u32MaxMemorySize);
		else
			s32Ret = HI_FAILURE;
#else
		HI_FATAL_LOADER("HISI file protocol is not select!");
#endif
		break;
	}

	default:
		s32Ret = HI_FAILURE;
		HI_FATAL_LOADER("invalid protocol type!\n");
		break;
	}

	return s32Ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
