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

#ifndef __DRV_CIPHER_SHA__
#define __DRV_CIPHER_SHA__

#include "hi_debug.h"
#include "hi_common.h"
#include "hal_cipher.h"
#include "drv_reg_ext.h"
#include "hi_reg_common.h"
#include "hi_drv_cipher.h"

#ifdef __cplusplus
extern "C" {
#endif

HI_S32 HI_DRV_CIPHER_GetRandomNumber(CIPHER_RNG_S *pstRNG);

#ifdef __cplusplus
}
#endif

#endif /* sha2.h */
