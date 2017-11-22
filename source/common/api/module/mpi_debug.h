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
#ifndef __MODULE_DEBUG_H__
#define __MODULE_DEBUG_H__

#ifdef __cplusplus
extern "C"{
#endif

#include <stdio.h>

#define COLOR_START      "\33[32m"
#define COLOR_START_HEAD "\33[35m" /* pink text color*/

#define COLOR_START_RED "\33[31m"  /* red text color */
#define COLOR_END       "\33[0m"

#define THIS_NAME "module_mgr"

#if 0
#define THIS_FATAL_PRINT(fmt, arg...) printf(COLOR_START_RED);printf("[%s:%s:%d]: ", THIS_NAME, __func__, __LINE__);printf(COLOR_END);printf(fmt, ##arg)
#define THIS_ERR_PRINT(  fmt, arg...) printf(COLOR_START_RED);printf("[%s:%s:%d]: ", THIS_NAME, __func__, __LINE__);printf(COLOR_END);printf(fmt, ##arg)
#define THIS_WARN_PRINT( fmt, arg...) printf(COLOR_START_RED);printf("[%s:%s:%d]: ", THIS_NAME, __func__, __LINE__);printf(COLOR_END);printf(fmt, ##arg)
#define THIS_INFO_PRINT( fmt, arg...) printf(COLOR_START_RED);printf("[%s:%s:%d]: ", THIS_NAME, __func__, __LINE__);printf(COLOR_END);printf(fmt, ##arg)
#else
#define THIS_FATAL_PRINT(fmt, arg...)
#define THIS_ERR_PRINT(  fmt, arg...)
#define THIS_WARN_PRINT( fmt, arg...)
#define THIS_INFO_PRINT( fmt, arg...)
#endif


#ifdef __cplusplus
}
#endif

#endif
