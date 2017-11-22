/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-08-15
 *
******************************************************************************/
#ifndef __HISFC400_GEN_H__
#define __HISFC400_GEN_H__
/******************************************************************************/
#include "../hinfc_gen.h"
#include "hisfc400.h"

enum hisfc400_ecc_reg {
	hisfc400_ecc_none   = 0x00,
	hisfc400_ecc_8bit   = 0x01,
	hisfc400_ecc_16bit  = 0x02,
	hisfc400_ecc_24bit  = 0x03,
};

enum hisfc400_page_reg {
	hisfc400_pagesize_2K    = 0x00,
	hisfc400_pagesize_4K    = 0x01,
};

int hisfc400_get_pagesize(struct hisfc_host *host);

void hisfc400_set_pagesize(struct hisfc_host *host, int pagesize);

int hisfc400_get_ecctype(struct hisfc_host *host);

void hisfc400_set_ecctype(struct hisfc_host *host, int ecctype);

/******************************************************************************/
#endif /* __HISFC400_GEN_H__ */
