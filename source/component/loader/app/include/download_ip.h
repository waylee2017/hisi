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
#ifndef __UPGRD_IP_H__
#define __UPGRD_IP_H__

/**include header files*/
#include "hi_type.h"
#include "hi_loader_info.h"

/** C++ support */
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /**end of  __cplusplus */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_4 */
/** @{ */  /** <!-- ip upgrade interface */

/**
\brief initialize IP download mode.
\attention \n
\param[in] Para: 
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
// OTA
HI_S32 LOADER_DOWNLOAD_IP_Init(HI_VOID * Para);

/**
\brief deinitialize USB download mode.
\attention \n
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
HI_S32 LOADER_DOWNLOAD_IP_DeInit(HI_VOID);

/**
\brief Get upgrade data through USB.
\attention \n
\param[in] pbuffer: data buffer, allocate by caller
\param[in] size: the max expected size, it must be samller than the buffer length
\param[out] outlen: the really length of data
\retval ::HI_SUCCESS : get data success
\retval ::HI_FAILURE : failed to get data
*/
HI_S32 LOADER_DOWNLOAD_IP_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen);



/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
#if __cplusplus
}
#endif  
#endif  /* __cplusplus */
#endif /*__UPGRD_IP_H__*/




