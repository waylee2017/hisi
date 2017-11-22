/******************************************************************************
Copyright (C), 2001-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : nocs_check.h
Version       : Initial Draft
Author        : Hisilicon hisecurity group
Created       : 2013/12/26
Last Modified :
Description   : Header file of nocs_check.c
Function List :
History       :
******************************************************************************/

#ifndef NOCS1X_CHECK_H
#define NOCS1X_CHECK_H

#include "nocs_bsd.h"
#include "nocs_bsd_impl.h"

#define UNIQUEDATA_SPACE_LEN   0x800
#define UNIQUEDATA_LEN         0x400

TBsdStatus nagra_BootCodeCheck(HI_VOID);

#endif
