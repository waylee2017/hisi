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
#ifndef __UPGRD_CONFIG_H__
#define __UPGRD_CONFIG_H__

//#include "hi_common.h"
#include "loaderdb_info.h"
#include "loader_upgrade.h"
#include "hi_unf_ir.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define DEFAULT_UPDATE_FILE_NAME "usb_update.bin"

#define LOADER_RETRY_TIMES 3

/*sometimes ,upgrade data can't be download for long long time 
with some reason, we consider that it's timeout when any datagram 
has been received OTA_DATA_RECEIVE_TIMES times*/
#define OTA_DATA_RECEIVE_TIMES			(10)

typedef enum hi_eKeyPress
{
    APP_KEY_NUM0 = 0,
    APP_KEY_NUM1,
    APP_KEY_NUM2,
    APP_KEY_NUM3,
    APP_KEY_NUM4,
    APP_KEY_NUM5,
    APP_KEY_NUM6,
    APP_KEY_NUM7,
    APP_KEY_NUM8,
    APP_KEY_NUM9,
    APP_KEY_UP,
    APP_KEY_DOWN,
    APP_KEY_LEFT,
    APP_KEY_RIGHT,
    APP_KEY_MENU,
    APP_KEY_OK,
    APP_KEY_EXIT,
    APP_KEY_UNKNOWN
} eKeyPress;

/*Define OSD UI language.*/
typedef enum tagUILang
{
    HI_LOADER_UI_LANG_CN,
    HI_LOADER_UI_LANG_EN,

    HI_LOADER_UI_LANG_BUTT
} HI_LOADER_UI_LANG_E;

HI_S32				LOADER_KEYLED_Init(HI_VOID);

HI_S32				LOADER_KEYLED_DisplayString(HI_CHAR *fpString);

eKeyPress			LOADER_KEYLED_Key_Convert(HI_U32 RawKey);

eKeyPress			LOADER_IR_Key_Convert(HI_U32 RawKey);

HI_S32				LOADER_GetTunerAttr(HI_UNF_TUNER_ATTR_S *pstTunerAttr);

#ifdef HI_LOADER_TUNER_SAT
HI_S32				LOADER_GetSatAttr(HI_UNF_TUNER_SAT_ATTR_S *pstSatAttr);
#endif

#define SUPPORT_MANUL_FORCE_UI
#ifdef SUPPORT_MANUL_FORCE_UI

HI_S32				LOADER_ManulUpgradeConfigParameter(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, HI_LOADER_TYPE_E *penType,
                                                       HI_VOID **pOutParameter);

HI_S32				LOADER_CheckUpgradeTypePolicy(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, HI_LOADER_TYPE_E *penType);
#endif

HI_VOID				LOADER_UpgrdeDone(HI_S32 s32Ret, HI_LOADER_TYPE_E enType);

HI_S32				LOADER_CheckVersionMatch(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, LOADER_VERSION_INFO_S *pstUpgradeInfo);

HI_S32				LOADER_UpdateVersionInfo(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, LOADER_VERSION_INFO_S *pstUpgradeInfo);

HI_LOADER_UI_LANG_E LOADER_GetLanguage(HI_VOID);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __LOADER_CONFIG_H__ */
