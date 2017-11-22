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

#define LED_BIT_COUNT         4  

#define KEY_PRESS             (0x0)           
#define KEY_HOLD              (0x01)          
#define KEY_RELEASE           (0x02)  

#ifdef HI_KEYLED_CT1642_CLOCK_GPIO
#define CLK_CT1642 HI_KEYLED_CT1642_CLOCK_GPIO
#define DAT_CT1642 HI_KEYLED_CT1642_DAT_GPIO
#define KEY_CT1642 HI_KEYLED_CT1642_KEY_GPIO
#else
#define CLK_CT1642 0x2a
#define DAT_CT1642 0x2c
#define KEY_CT1642 0x2f
#endif

#define KEY_MACRO_NO (0xff)

#define DISPLAY_ON   1
#define DISPLAY_OFF  0
#define KEY_MACRO_NO (0xff)
#define DISPLAY_REG_NUM     (14)
#define DISPLAY_SEG_CURR     (4)
#define KEY_COL_NUM     10
//#define KEY_REAL_NUM     30
#define DISPLAY_MODE_NUM 4
#define DISPLAY_REG_START_ADDR  (0x00)

#define	STB_KEY_MENU	       (11)
#define	STB_KEY_OK 	           (12)
#define	STB_KEY_UP	           (13)
#define	STB_KEY_DOWN	       (14)
#define	STB_KEY_LEFT	       (15)
#define	STB_KEY_RIGHT	       (16)
#define	STB_KEY_EXIT	       (17)
#define	STB_KEY_BUTT           (18)
#define	STB_KEY_NULL	       (0 )
#define STB_KEY_UPGRADE        (STB_KEY_MENU+STB_KEY_OK) 
#define STB_KEY_HOLD           (0x5a)

#define HI_ERR_KEYLED_NOT_INIT                      (HI_S32)(0x804B0001)
#define HI_ERR_KEYLED_INVALID_PARA                  (HI_S32)(0x804B0002)
#define HI_ERR_KEYLED_NULL_PTR                      (HI_S32)(0x804B0003)
#define HI_ERR_KEYLED_NO_NEW_KEY                    (HI_S32)(0x804B0004)
#define HI_ERR_KEYLED_TIMEOUT                       (HI_S32)(0x804B0005)
#define HI_ERR_KEYLED_FAILED_SETMODE                (HI_S32)(0x804B0006)
#define HI_ERR_KEYLED_FAILED_DISPLAY                (HI_S32)(0x804B0007)

#endif
