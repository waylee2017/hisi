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

#ifndef __DRV_DESCRAMBLER_H__
#define __DRV_DESCRAMBLER_H__

#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

typedef enum
{
    DMX_KEY_TYPE_EVEN   = 0,
    DMX_KEY_TYPE_ODD    = 1
} DMX_KEY_TYPE_E;

typedef enum
{
    DMX_KEY_CW = 0,
    DMX_KEY_IV = 1
} DMX_CW_TYPE;



HI_S32 	DMXRegisterKey(HI_VOID);
HI_S32  DMXKeyIoctl(struct file *file, HI_U32 cmd, HI_VOID *arg);
HI_VOID DmxDestroyAllDescrambler(HI_U32 file);
#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif  /* __DRV_DESCRAMBLER_H__ */

