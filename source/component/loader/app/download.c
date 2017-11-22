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
#include "download.h"
#include "download_usb.h"
#include "download_ip.h"
#include "upgrd_common.h"

static HI_LOADER_TYPE_E g_enLoaderType = HI_LOADER_TYPE_OTA;

/**
 \brief initialize download mode.
 \attention \n
 \param[in] Para:
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */

// OTA
HI_S32 LOADER_DOWNLOAD_Init(HI_LOADER_TYPE_E enType, HI_VOID * Para)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_LOADER_PARAMETER_S *pstLoaderInfo = (HI_LOADER_PARAMETER_S *)Para;

    switch (enType)
    {
    case HI_LOADER_TYPE_IP:
    {
#ifdef HI_LOADER_MODE_IP
        g_enLoaderType = enType;
        s32Ret = LOADER_DOWNLOAD_IP_Init((HI_VOID *)(pstLoaderInfo ? &(pstLoaderInfo->stPara.stIPParam) : NULL));
        if (s32Ret != HI_SUCCESS)
            HI_ERR_LOADER("init ip failed.\n");
#else
        HI_FATAL_LOADER("IP Download mode is not select!\n");
#endif
        break;
    }

    case HI_LOADER_TYPE_USB:
    {
#ifdef HI_LOADER_MODE_USB
        g_enLoaderType = enType;
        s32Ret = LOADER_DOWNLOAD_USB_Init((HI_VOID *)(pstLoaderInfo ? pstLoaderInfo->stPara.stUSBParam.as8FileName : NULL));
        if (s32Ret != HI_SUCCESS)
            HI_ERR_LOADER("init usb failed.\n");
#else
        HI_FATAL_LOADER("USB Download mode is not select!\n");
#endif
        break;
    }

    default:
        g_enLoaderType = HI_LOADER_TYPE_BUTT;
        HI_FATAL_LOADER("no found valid upgrade type!\n");
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}

/**
 \brief deinitialize download mode.
 \attention \n
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_DeInit(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;

    switch (g_enLoaderType)
    {
    case HI_LOADER_TYPE_IP:
    {
#ifdef HI_LOADER_MODE_IP
        s32Ret = LOADER_DOWNLOAD_IP_DeInit();
#else
        HI_ERR_LOADER("IP Download mode is not select!");
#endif
        break;
    }

    case HI_LOADER_TYPE_USB:
    {
#ifdef HI_LOADER_MODE_USB
        s32Ret = LOADER_DOWNLOAD_USB_DeInit();
#else
        HI_ERR_LOADER("USB Download mode is not select!");
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
 \brief Get upgrade data.
 \attention \n
 \param[in] pbuffer: data buffer, allocate by caller
 \param[in] size: the max expected size, it must be samller than the buffer length
 \param[out] outlen: the really length of data
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen)
{
    HI_S32 s32Ret = HI_FAILURE;

    switch (g_enLoaderType)
    {
    case HI_LOADER_TYPE_IP:
    {
#ifdef HI_LOADER_MODE_IP
        s32Ret = LOADER_DOWNLOAD_IP_Getdata(pbuffer, size, outlen);
#else
        HI_ERR_LOADER("IP Download mode is not select!");
#endif
        break;
    }

    case HI_LOADER_TYPE_USB:
    {
#ifdef HI_LOADER_MODE_USB
        s32Ret = LOADER_DOWNLOAD_USB_Getdata(pbuffer, size, outlen);
#else
        HI_ERR_LOADER("USB Download mode is not select!");
#endif
        break;
    }

    default:
        s32Ret = HI_FAILURE;
        break;
    }

    return s32Ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
