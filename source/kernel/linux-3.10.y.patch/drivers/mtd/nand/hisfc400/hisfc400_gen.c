/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-08-15
 *
******************************************************************************/

#include <linux/match.h>
#include "hisfc400_gen.h"

/*****************************************************************************/

static struct match_t hisfc400_pagesize[] = {
	MATCH_SET_TYPE_REG(SZ_2K,  hisfc400_pagesize_2K),
	MATCH_SET_TYPE_REG(SZ_4K,  hisfc400_pagesize_4K),
};

int hisfc400_get_pagesize(struct hisfc_host *host)
{
	u32 regval = (host->NFC_CFG & HISFC400_CFG_PAGEISZE_MASK) >> HISFC400_CFG_PAGEISZE_SHIFT;

	return match_reg_to_type(hisfc400_pagesize,
		ARRAY_SIZE(hisfc400_pagesize), regval, SZ_2K);
}

void hisfc400_set_pagesize(struct hisfc_host *host, int pagesize)
{
	u32 mask = ~HISFC400_CFG_PAGEISZE_MASK;
	u32 regval = match_type_to_reg(hisfc400_pagesize,
		ARRAY_SIZE(hisfc400_pagesize), pagesize, hisfc400_pagesize_2K);

	host->NFC_CFG &=  mask;
	host->NFC_CFG |=  regval;
}
/*****************************************************************************/

static struct match_t hisfc400_ecc[] = {
	MATCH_SET_TYPE_REG(NAND_ECC_NONE,  hisfc400_ecc_none),
	MATCH_SET_TYPE_REG(NAND_ECC_8BIT,  hisfc400_ecc_8bit),
	MATCH_SET_TYPE_REG(NAND_ECC_24BIT, hisfc400_ecc_24bit),
};

int hisfc400_get_ecctype(struct hisfc_host *host)
{
	u32 regval = (host->NFC_CFG & HISFC400_CFG_ECCTYPE_MASK) >> HISFC400_CFG_ECCTYPE_SHIFT;

	return match_reg_to_type(hisfc400_ecc, ARRAY_SIZE(hisfc400_ecc),
		regval, NAND_ECC_8BIT);
}

void hisfc400_set_ecctype(struct hisfc_host *host, int ecctype)
{
	u32 regval = match_type_to_reg(hisfc400_ecc, ARRAY_SIZE(hisfc400_ecc),
		ecctype, hisfc400_ecc_8bit);

	host->NFC_CFG &= ~HISFC400_CFG_ECCTYPE_MASK;
	host->NFC_CFG |= regval << HISFC400_CFG_ECCTYPE_SHIFT;
}
