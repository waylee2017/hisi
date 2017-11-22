/******************************************************************************
*    Copyright (c) 2009-2011 Hisilicon.
*    All rights reserved.
* ***
*    Create by Czyong. 2011-12-02
*
******************************************************************************/

#include <common.h>
#include <nand.h>
#include <asm/io.h>
#include <asm/errno.h>
#include <malloc.h>
#include <linux/mtd/nand.h>
#include <linux/mtd/mtd.h>
#include <hinfc_gen.h>
#include "../hifmc100/hifmc100_reg.h"
#include "hinfc504_gen.h"
#include "hinfc610_gen.h"
#include "hisfc400/hisfc400_gen.h"

/* this follow must be consistent with mkyaffs2image */
struct yaffs2_tag {
	#define YAFFS2_SIGN_MAGIC    "YFSS!V10"
	unsigned char magic[8];
	unsigned int nandip;
	unsigned char yaffs2ver[4];
	unsigned int pagesize;
	unsigned int eccreg; /* it is NAND controll register value */
};

/*
 * v504: 2k1b 2k4b 2k24b 4k1b 4k4b 4k24b 8k24b 8k40b
 * v301: 2k1b            4k1b 4k4b 4k24b 8k24b
 * v300: 2k1b            4k1b 4k4b 4k24b 8k24b
 *
 */

#define HINFC_VER_VER          (0xFFF00000)

#define SET_HINFC_VER(_ver, _pagesize, _ecc) \
	((((_ver) << 20) & HINFC_VER_VER) | \
		(((_pagesize) & 0xFFFF) << 4) | ((_ecc) & 0xF))

#ifdef CONFIG_NAND_FLASH_HINFC504
static unsigned int hinfc300_support_yaffs2[] = {
	SET_HINFC_VER(HINFC_VER_300, _2K, hinfc504_ecc_1bit),

	SET_HINFC_VER(HINFC_VER_300, _4K, hinfc504_ecc_1bit),
	SET_HINFC_VER(HINFC_VER_300, _4K, hinfc504_ecc_4bytes),
	SET_HINFC_VER(HINFC_VER_300, _4K, hinfc504_ecc_24bit1k),

	SET_HINFC_VER(HINFC_VER_300, _8K, hinfc504_ecc_24bit1k),
	0,
};

static unsigned int hinfc301_support_yaffs2[] = {
	SET_HINFC_VER(HINFC_VER_301, _2K, hinfc504_ecc_1bit),

	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_1bit),
	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_4bytes),
	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_24bit1k),

	SET_HINFC_VER(HINFC_VER_301, _8K, hinfc504_ecc_24bit1k),
	0,
};

static unsigned int hinfc504_support_yaffs2[] = {
	SET_HINFC_VER(HINFC_VER_301, _2K, hinfc504_ecc_1bit),
	SET_HINFC_VER(HINFC_VER_504, _2K, hinfc504_ecc_4bit),
	SET_HINFC_VER(HINFC_VER_504, _2K, hinfc504_ecc_24bit1k),

	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_1bit),
	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_4bytes),
	SET_HINFC_VER(HINFC_VER_301, _4K, hinfc504_ecc_24bit1k),

	SET_HINFC_VER(HINFC_VER_301, _8K, hinfc504_ecc_24bit1k),
	SET_HINFC_VER(HINFC_VER_504, _8K, hinfc504_ecc_40bit1k),
	SET_HINFC_VER(HINFC_VER_504, _16K, hinfc504_ecc_40bit1k),
	0,
};

/*****************************************************************************/

static unsigned int *get_support_yaffs2(unsigned int nandip)
{
	switch (nandip) {
		default:
		case HINFC_VER_300:
			return hinfc300_support_yaffs2;
		case HINFC_VER_301:
			return hinfc301_support_yaffs2;
		case HINFC_VER_504:
			return hinfc504_support_yaffs2;
	}
}
/*****************************************************************************/

static unsigned int get_yaffs2_version(unsigned int nandip, int pagesize,
				       int eccreg)
{
	int ix;
	unsigned int *ver = get_support_yaffs2(nandip);
	unsigned int tmp = SET_HINFC_VER(0, pagesize, eccreg);

	for (ix = 0; ver[ix]; ix++) {
		if ((ver[ix] & ~HINFC_VER_VER) == tmp)
			return ver[ix];
	}

	return 0;
}
#endif
/*****************************************************************************/

int yaffs_check(unsigned char *buffer, unsigned int writesize,
		unsigned int length)
{
	unsigned int yaffs2tag_nandip;

	struct yaffs2_tag *yaffs2_tags = (struct yaffs2_tag *)buffer;
	struct mtd_info_ex *host_info = get_nand_info();

	yaffs2tag_nandip = yaffs2_tags->nandip;

	if (length < 512) {
		printf("buffer length is too short.\n");
		return -1;
	}

	if (memcmp(yaffs2_tags->magic, (unsigned char *)YAFFS2_SIGN_MAGIC, 8)) {
		printf("!!! The yaffs2 filesystem image"
		       " has no tag information. \n"
		       "1. Confirm your image is yaffs2 filesystem image.\n"
		       "2. Update your mkyaffs2image tool,"
		       " remake yaffs2 filesystem image.\n");
		return -1;
	}

	if (writesize != yaffs2_tags->pagesize) {
		printf("!!! The yaffs2 filesystem image pagesize(%d) "
			"is NOT consistent with demo board pagesize(%d).\n",
			yaffs2_tags->pagesize, writesize);
		goto fail0;
	}
#ifdef CONFIG_NAND_FLASH_HINFC504
	int host_eccreg = 0;
	unsigned int host_merge_ver;
	unsigned int yaffs2_merge_ver;
	int yaffs2_tag_ecctype = 0;

	if (host_info->hostver == HINFC_VER_300 ||
	    host_info->hostver == HINFC_VER_301 ||
	    host_info->hostver == HINFC_VER_504) {
		host_eccreg = (int)hinfc504_ecc_type2reg(host_info->ecctype);
		yaffs2_tag_ecctype = hinfc504_ecc_reg2type((enum hinfc504_ecc_reg)yaffs2_tags->eccreg);
	} else
#endif /* CONFIG_NAND_FLASH_HINFC504 */
#ifdef CONFIG_NAND_FLASH_HINFC610
	if (host_info->hostver == HINFC_VER_610) {
		if (((host_info->pagesize == _2K)
		     && (host_info->ecctype == NAND_ECC_13BIT))
		    || ((host_info->pagesize == _2K)
		        && (host_info->ecctype == NAND_ECC_32BIT))
		    || ((host_info->pagesize == _4K)
		     && (host_info->ecctype == NAND_ECC_13BIT))) {
			printf("2k13bit 2k32bit 4k13bit DO NOT support yaffs, "
			       "Current demo board config, "
			       "pagesize:%d, ecctype:%s.\n"
			       "Please DO NOT use yaffs,"
			       "use ubifs, cramfs, squashfs... instead.\n",
			       host_info->pagesize,
			       nand_ecc_name(host_info->ecctype));
			return -1;
		}

		if (yaffs2tag_nandip != HINFC_VER_610 
			&& yaffs2tag_nandip != HISFC_VER_400)
			goto fail1;

		return 0;
	} else
#endif /* CONFIG_NAND_FLASH_HINFC610 */

#ifdef CONFIG_NAND_FLASH_HISFC400
	if (host_info->hostver == HISFC_VER_400) {
		if (((host_info->pagesize == _2K)
		     && (host_info->ecctype == NAND_ECC_16BIT))
		    || ((host_info->pagesize == _4K)
		     && (host_info->ecctype == NAND_ECC_16BIT))) {
			printf("2k16bit 4k16bit DO NOT support yaffs, "
			       "Current demo board config, "
			       "pagesize:%d, ecctype:%s.\n"
			       "Please DO NOT use yaffs,"
			       "use ubifs, cramfs, squashfs... instead.\n",
			       host_info->pagesize,
			       nand_ecc_name(host_info->ecctype));
			return -1;
		}

		if (yaffs2tag_nandip != HINFC_VER_610 
			&& yaffs2tag_nandip != HISFC_VER_400)
			goto fail1;

		return 0;
	} else

#endif
#if ((defined CONFIG_HIFMC100_NAND_SUPPORT) || (defined CONFIG_HIFMC100_SPI_NAND_SUPPORT))
	if (host_info->hostver == HIFMC100_VERSION_VALUE) {/*
		extern int hifmc100_nand_ecc_reg2type(enum hifmc100_nand_ecc_reg reg);
		host_eccreg = hifmc100_nand_ecc_none;
		yaffs2_tag_ecctype = hifmc100_nand_ecc_reg2type(yaffs2_tags->eccreg);*/
		return 0;
	} else
#endif /* CONFIG_HIFMC100_NAND_SUPPORT */

	{
		printf("!!!Can't find a valid NAND controller.\n");
		return -1;
	}

#ifdef CONFIG_NAND_FLASH_HINFC504
	if (host_eccreg != yaffs2_tags->eccreg) {
		printf("!!! The yaffs2 filesystem image ecctype(%s) "
			"is NOT consistent with demo board ecctype(%s).\n",
			nand_ecc_name(yaffs2_tag_ecctype),
			nand_ecc_name(host_info->ecctype));
		goto fail0;
	}

	/* 
	 * When write 8k40bit yaffs2 filesystem to hinfc301,
	 * It will print this error, because cpu not support.
	 */
	host_merge_ver = get_yaffs2_version(host_info->hostver,
		writesize, host_eccreg);
	if (!host_merge_ver) {
		printf("!!! The yaffs2 filesystem "
			"or mkyaffs2image for cpu ver(0x%X) "
			"But your demo board cpu ver(0x%X).\n",
			yaffs2tag_nandip, host_info->hostver);
		goto fail1;
	}

	yaffs2_merge_ver = get_yaffs2_version(yaffs2tag_nandip,
		writesize, host_eccreg);
	if (!yaffs2_merge_ver) {
		printf("!!! The yaffs2 filesystem image"
			" has invalid tag information. \n");
		goto fail1;
	}

	if (host_merge_ver != yaffs2_merge_ver) {
		printf("!!! The yaffs2 filesystem "
			"or mkyaffs2image for cpu ver(0x%X) "
			"But your demo board cpu ver(0x%X).\n",
			yaffs2tag_nandip, host_info->hostver);
		goto fail1;
	}

	return 0;

#endif

fail0:
	printf("Please remake yaffs2 filesystem image, "
		"confirm your yaffs2 filesystem image pagesize"
		" and ecctype consistent with demo board config.\n");
	printf("Current demo board config, pagesize:%d, ecctype:%s\n",
		writesize, nand_ecc_name(host_info->ecctype));

	return -1;

fail1:
	printf("1. Confirm your yaffs2 filesystem image version.\n"
		"2. Update your mkyaffs2image tool,"
		" remake yaffs2 filesystem image.\n");

	return -1;
}

