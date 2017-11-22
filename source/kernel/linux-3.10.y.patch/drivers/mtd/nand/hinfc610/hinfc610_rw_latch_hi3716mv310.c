/******************************************************************************
 *    Copyright (c) 2009-2014 by  Hisilicon Tech. Co., Ltd.
 *    All rights reserved.
 * ***
 *    Create By Czyong
******************************************************************************/

#include "hinfc610_rw_latch.h"
/*****************************************************************************/

struct hinfc_rw_latch hinfc610_rw_latch_hi3716mv310[] = {
	{
		.name   = "general",
		.id     = {0x00},
		.length = 0,
		.rw_latch = 0x375,
	}
};

struct hinfc_rw_latch *hinfc_rw_latch_table = hinfc610_rw_latch_hi3716mv310;

