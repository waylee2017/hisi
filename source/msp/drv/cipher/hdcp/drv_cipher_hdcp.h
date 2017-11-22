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

#ifndef __DRV_CIPHER_HDCP__
#define __DRV_CIPHER_HDCP__

#include "hi_debug.h"
#include "hi_common.h"
#include "drv_cipher_define.h"
#include "hal_cipher.h"
#include "drv_cipher.h"
#include "drv_reg_ext.h"
#include "hi_reg_common.h"
#include "hi_drv_cipher.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_mem.h"
#include "hi_drv_mmz.h"



#ifdef __cplusplus
extern "C" {
#endif

HI_S32 DRV_CIPHER_HdcpParamConfig(HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode, HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enRootKeyType, HI_DRV_HDCPKEY_TYPE_E enHDCPKeyType);
HI_S32 DRV_CIPHER_ClearHdcpConfig(HI_VOID);
HI_S32 DRV_CIPHER_CreatMultiPkgTask(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 pkgNum, HI_U32 callBackArg);
HI_VOID DRV_CIPHER_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode);
HI_S32 DRV_CIPHER_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode);
HI_VOID DRV_CIPHER_SetHdcpkeyRxRead(HI_DRV_CIPHER_HDCP_KEY_RX_READ_E enRxReadMode);
HI_VOID DRV_CIPHER_SetHdcpKeyTxRead(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode);
HI_S32 DRV_CIPHER_SetHdcpkeyRxSelect(HI_DRV_CIPHER_HDCP_KEY_RX_SELECT_E enRxSelect);
HI_S32 DRV_CIPHER_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode);
HI_S32 DRV_CIPHER_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode);
HI_S32 DRV_CIPHER_EncryptHDCPKey(CIPHER_HDCP_KEY_TRANSFER_S *pstHdcpKeyTransfer);
HI_S32 DRV_CIPHER_LoadHdcpKey(HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstFlashHdcpKey);

HI_VOID DRV_CIPHER_Hdcp_Resume(HI_VOID);


#ifdef __cplusplus
}
#endif

#endif /* sha2.h */
