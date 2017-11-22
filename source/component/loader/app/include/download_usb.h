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

/**
 * \file
 * \brief USB upgrade UI
 */

#ifndef __UPGRD_USB_H__
#define __UPGRD_USB_H__

/*include header files*/
#include "hi_type.h"
#include "loader_upgrade.h"

/* C++ support */
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus  */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_9 */
/** @{ */  /** <!-- [USB upgrade data structure] */

/**A maximum of 10 arrays are supported for data structure UsbImgMap.*/

#define USB_IMG_MAX_NUM 64

/**A maximum of 3 arrays are supported for data structure UsbManuInfo.*/
#define USB_MANU_MAX_NUM 3

#define UPGRD_USB_DEV "/dev/sda"
#define MAX_USB_PARTITION_NUM 4
#define UPGRD_USB_TRY_TIMES 20

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_11 */
/** @{ */  /** <!-- [USB upgrade UI] */

/**
 \brief initialize USB download mode.
 \attention \n
 \param[in] Para:
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */

// OTA
HI_S32 LOADER_DOWNLOAD_USB_Init(HI_VOID * Para);

/**
 \brief deinitialize USB download mode.
 \attention \n
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_USB_DeInit(HI_VOID);

/**
 \brief Get upgrade data through USB.
 \attention \n
 \param[in] pbuffer: data buffer, allocate by caller
 \param[in] size: the max expected size, it must be samller than the buffer length
 \param[out] outlen: the really length of data
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_USB_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen);

/** @} */  /** <!-- ==== API declaration end ==== */
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
#endif /*__UPGRD_USB_H__*/
