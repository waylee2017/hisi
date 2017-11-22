/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-08-15
 *
******************************************************************************/
#ifndef HIFMC100_GENH
#define HIFMC100_GENH

/******************************************************************************/

enum hifmc100_ecc_reg {
	hifmc100_ecc_none   = 0x00,
	hifmc100_ecc_8bit   = 0x01,
	hifmc100_ecc_16bit  = 0x02,
	hifmc100_ecc_24bit  = 0x03,
	hifmc100_ecc_28bit  = 0x04,
	hifmc100_ecc_40bit  = 0x05,
	hifmc100_ecc_64bit  = 0x06,
};

enum hifmc100_page_reg {
	hifmc100_pagesize_2K    = 0x00,
	hifmc100_pagesize_4K    = 0x01,
	hifmc100_pagesize_8K    = 0x02,
	hifmc100_pagesize_16K   = 0x03,
};
/******************************************************************************/

int hifmc100_page_reg2type(enum hifmc100_page_reg reg);

enum hifmc100_page_reg hifmc100_page_type2reg(int type);

enum hifmc100_ecc_reg hifmc100_ecc_type2reg(int type);

int hifmc100_ecc_reg2type(enum hifmc100_ecc_reg reg);

#endif /* HIFMC100_GENH */
