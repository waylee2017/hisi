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
#ifndef __UPGRD_IP_NET_H__
#define __UPGRD_IP_NET_H__

#include "hi_type.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#define EMMC_LOGIC_PART_FLAG (0xFFFFFFF0)
#define EMMC_BOOTARGS_ADDR (0x100000)
#define EMMC_BOOTARGS_SIZE (0x20000)

HI_S32 upgrd_emmc_fdisk_proc(HI_CHAR *pu8Data);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
#endif
