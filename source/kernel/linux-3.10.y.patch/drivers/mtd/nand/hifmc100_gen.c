/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-08-15
 *
******************************************************************************/

#include <linux/match.h>
#include <linux/sizes.h>

#include "hifmc100_gen.h"
#include "hinfc_gen.h"

/*****************************************************************************/

static struct match_t hifmc100_pagesize[] = {
	MATCH_SET_TYPE_REG(SZ_2K,  hifmc100_pagesize_2K),
	MATCH_SET_TYPE_REG(SZ_4K,  hifmc100_pagesize_4K),
	MATCH_SET_TYPE_REG(SZ_8K,  hifmc100_pagesize_8K),
	MATCH_SET_TYPE_REG(SZ_16K, hifmc100_pagesize_16K),
};
/*****************************************************************************/

static struct match_t hifmc100_ecc[] = {
	MATCH_SET_TYPE_REG(NAND_ECC_NONE,  hifmc100_ecc_none),
	MATCH_SET_TYPE_REG(NAND_ECC_8BIT,  hifmc100_ecc_8bit),
	MATCH_SET_TYPE_REG(NAND_ECC_16BIT, hifmc100_ecc_16bit),
	MATCH_SET_TYPE_REG(NAND_ECC_24BIT, hifmc100_ecc_24bit),
	MATCH_SET_TYPE_REG(NAND_ECC_28BIT, hifmc100_ecc_28bit),
	MATCH_SET_TYPE_REG(NAND_ECC_40BIT, hifmc100_ecc_40bit),
	MATCH_SET_TYPE_REG(NAND_ECC_64BIT, hifmc100_ecc_64bit),
};
/*****************************************************************************/

int hifmc100_page_reg2type(enum hifmc100_page_reg reg)
{
	return match_reg_to_type(hifmc100_pagesize,
		ARRAY_SIZE(hifmc100_pagesize), reg, SZ_2K);
}
/*****************************************************************************/

enum hifmc100_page_reg hifmc100_page_type2reg(int type)
{
	return match_type_to_reg(hifmc100_pagesize, 
				 ARRAY_SIZE(hifmc100_pagesize), type, 0);
}
/*****************************************************************************/

enum hifmc100_ecc_reg hifmc100_ecc_type2reg(int type)
{
	return match_type_to_reg(hifmc100_ecc, 
				 ARRAY_SIZE(hifmc100_ecc), type, 0);
}
/*****************************************************************************/

int hifmc100_ecc_reg2type(enum hifmc100_ecc_reg reg)
{
	return match_reg_to_type(hifmc100_ecc, ARRAY_SIZE(hifmc100_ecc), reg, 0);
}
