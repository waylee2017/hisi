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

#ifndef __OTA_FORCE_H__
#define __OTA_FORCE_H__

#include "download_ota.h"
#include "loaderdb_info.h"

#ifdef __cplusplus
extern "C" {
#endif /* end of__cplusplus */

/*************************** Structure Definition ****************************/
/** \addtogroup      H_2_1*/
/** @{ */  /** <!?a[Forced upgrade data structure] */

/**Definition of button types for infrared response*/

typedef enum tagGUI_RET_TYPE_E
{
    GUI_RET_TYPE_OK,
    GUI_RET_TYPE_CANCEL,
    GUI_RET_TYPE_EXIT,
    GUI_RET_TYPE_BUTT
} GUI_RET_TYPE_E;

/** @} */  /** <!-- ==== Structure Definition end ==== */

/******************************* API declaration *****************************/
/** \addtogroup      H_1_1 */
/** @{ */  /** <! [Forced upgrade API] */

HI_S32 OTA_Force_Init(UPGRD_PRIVATE_PARAM_S *pstInfo);

HI_S32 force_passwd_identify(GUI_RET_TYPE_E *penRet);

/**
 \brief Checks the manual, common, or serial port upgrade mode.
 \attention \n
The upgrade mode is determined by the triggering condition.\n
 \param[out] Upgrade mode.
 \retval ::E_NONE_UPGRADE_MODE Not to upgrade
 \retval ::E_NORMAL_CABLE_UPGRADE_MODE  Common upgrade
 \retval ::E_FORCE_CABLE_UPGRADE_MODE Manual upgrade
 \retval ::E_SERIAL_UPGRADE_MODE Serial port upgrade
 \retval ::E_UNDIFINED_UPGRADE_MODE Reserved
 \see ::UPGRD_MODE_E \n
For details, see the definition in UPGRD_MODE_E definition.
 */
HI_S32 OTA_Force_ConfigParam(GUI_RET_TYPE_E *penRet, DOWNLOAD_OTA_PARAMETER_S **pstOutInfo);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__OTA_FORCE_H__*/
