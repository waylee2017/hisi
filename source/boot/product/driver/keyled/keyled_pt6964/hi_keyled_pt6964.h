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

#ifndef __KEYLED_H__
#define __KEYLED_H__
#include "hi_type.h"

#define KEY_PRESS             (0x0)           
#define KEY_HOLD              (0x01)          
#define KEY_RELEASE           (0x02)          

#ifdef HI_KEYLED_PT6964_CLOCK_GPIO
#define CLK_PT6964  HI_KEYLED_PT6964_CLOCK_GPIO
#define STB_PT6964  HI_KEYLED_PT6964_STB_GPIO
#define DIN_PT6964  HI_KEYLED_PT6964_DINOUT_GPIO
#define DOUT_PT6964 HI_KEYLED_PT6964_DINOUT_GPIO
#else
#define CLK_PT6964  0x2a
#define STB_PT6964  0x2b
#define DIN_PT6964  0x2c
#define DOUT_PT6964 0x2c
#endif

#define KEY_MACRO_NO (0xff)
#define DISPLAY_REG_NUM     (14)
#define KEY_COL_NUM     10
#define DISPLAY_MODE_NUM 4

#define HI_ERR_KEYLED_NOT_INIT                      (HI_S32)(0x804B0001)
#define HI_ERR_KEYLED_INVALID_PARA                  (HI_S32)(0x804B0002)
#define HI_ERR_KEYLED_NULL_PTR                      (HI_S32)(0x804B0003)
#define HI_ERR_KEYLED_NO_NEW_KEY                    (HI_S32)(0x804B0004)
#define HI_ERR_KEYLED_TIMEOUT                       (HI_S32)(0x804B0005)
#define HI_ERR_KEYLED_FAILED_SETMODE                (HI_S32)(0x804B0006)
#define HI_ERR_KEYLED_FAILED_DISPLAY                (HI_S32)(0x804B0007)

#endif
