/******************************************************************************
 *  Copyright (C) 2015 Cai Zhiyong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Create By Cai Zhiying 2015.7.25
 *
******************************************************************************/

#include <asm/io.h>
#include <common.h>

#include "hifmc100_host.h"
#include "hiflash.h"
/******************************************************************************/

#define HIFMC100_CRG23				0x5C
#define CRG23_SPI_NAND_CLK_SEL(_clk)		(((_clk) & 0x7) << 5)
#define CRG23_SPI_NAND_CLK_EN			(1 << 0)
#define CRG23_SPI_NAND_SOFT_RST_REQ		(1 << 4)

#define HIFMC100_SPI_NAND_CLK_SEL_MASK		(0x7 << 5)
#define HIFMC100_SPI_NAND_CLK_SEL_12M		0x80
#define HIFMC100_SPI_NAND_CLK_SEL_41dot5M	0xa0
#define HIFMC100_SPI_NAND_CLK_SEL_75M		0x60
#define HIFMC100_SPI_NAND_CLK_SEL_100M		0x40
#define HIFMC100_SPI_NAND_CLK_SEL_125M		0x20
#define HIFMC100_SPI_NAND_CLK_SEL_200M		0x00
/******************************************************************************/

struct nand_chip_clock hifmc100_nand_rwlatch[] = {
	/* id_len == 0, means default clock, don't remove. */
	{ .id     = {0x00}, .id_len = 0, .value  = 0x375, }
};
/******************************************************************************/

struct spinand_chip_xfer hifmc100_spinand_chip_xfer[] = {
	{"AFS4GQ4UAGWC4", {0xc2, 0xd4}, 2, 4, 50},
	{"AFS2GQ4UADWC2", {0xc1, 0x52}, 2, 4, 50},
	{"AFS1GQ4UACWC2", {0xc1, 0x51}, 2, 4, 50},
	{"AFS1GQ4UAAWC2", {0xc8, 0x31}, 2, 4, 50},
	{"GD5F1GQ4UBYIG", {0xC8, 0xD1}, 2, 4, 75},
	{"GD5F2GQ4UBYIG", {0xC8, 0xD2}, 2, 4, 75},
	{"GD5F2GQ4UAYIG", {0xC8, 0xF2}, 2, 4, 40},
	{"PSU1GS20BN", {0xC8, 0x21, 0x7f, 0x7f, 0x7f}, 5, 4, 75},
	{"HYF1GQ4UAACAE", {0xC9, 0x51}, 2, 4, 75},
	{"HYF2GQ4UAACAE", {0xC9, 0x52}, 2, 4, 75},
	{"PN26G02AWSIUG", {0xA1, 0xE2}, 2, 4, 75},
	{"FM25G01A/PN26G01A", {0xA1, 0xE1}, 2, 4, 75},
	{"TC58CVG0S3HRAIG/F", {0x98, 0xC2}, 2, 1, 50},
	{"MX35LF1GE4AB-Z2I", {0xC2, 0x12}, 2, 4, 50},
	{"W25N01GV", {0xEF, 0xAA, 0x21}, 3, 4, 50},
	{"F50L1G41A", {0xC8, 0x21, 0x7F, 0X7F, 0X7F}, 5, 4, 75},
	{"MT29F1G01ABAFDWB", {0x2C, 0x14}, 2, 4, 75},

	/* id_len == 0, means default value, don't remove. */
	{NULL, {0x00}, 0, 4, 100},
};
/******************************************************************************/

struct spinor_chip_xfer hifmc100_spinor_chip_xfer[] = {
	{ "MX25L8006E", {0xc2, 0x20, 0x14}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 80), },

	{ "MX25L6433F/KH25L6406E/MX25L6406E", {0xc2, 0x20, 0x17}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_DUAL, 1, 0, 100),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP, 0, 256, 100),},

	{ "MX25L12835F", {0xc2, 0x20, 0x18}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 50),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 50),},

	{ "GD25Q128", {0xC8, 0x40, 0x18}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 50),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 50),},

	{ "GD25Q64", {0xC8, 0x40, 0x17}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_DUAL, 1, 0, 50),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP, 0, 256, 50),},

	{ "GD25Q32", {0xC8, 0x40, 0x16}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 80),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 80),},

	{ "N25Q064", {0x20, 0xba, 0x17}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 50),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 50),},

	{ "W25Q128(J/B/F)V", {0xEF, 0x40, 0x18}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 50),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 50),},

	{ "S25FL127S", {0x01, 0x20, 0x18, 0x4d, 0x01}, 5,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 80),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 80),},

	{ "W25Q64FV", {0xEF, 0x40, 0x17}, 3,
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 80),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 80),},

	/* id_len == 0, means default value, don't remove. */
	{ NULL, {0}, 0, NULL }
};
/*****************************************************************************/

int hifmc100_clock2reg(int value, int _to_reg)
{
	int ix;
	unsigned int sysclk[] = {
		12,  HIFMC100_SPI_NAND_CLK_SEL_12M,
		42,  HIFMC100_SPI_NAND_CLK_SEL_41dot5M,
		75,  HIFMC100_SPI_NAND_CLK_SEL_75M,
		100, HIFMC100_SPI_NAND_CLK_SEL_100M,
		125, HIFMC100_SPI_NAND_CLK_SEL_125M,
		200, HIFMC100_SPI_NAND_CLK_SEL_200M,
	};

	if (_to_reg) {
		if (value <= 12)
			return HIFMC100_SPI_NAND_CLK_SEL_12M;
		else if (value >= 200)
			return HIFMC100_SPI_NAND_CLK_SEL_200M;

		for (ix = 0; ix < ARRAY_SIZE(sysclk); ix += 2)
			if (value < sysclk[ix])
				return sysclk[ix-1];
	} else {
		for (ix = 0; ix < ARRAY_SIZE(sysclk); ix += 2)
			if (sysclk[ix+1] == value)
				return sysclk[ix];
		return HIFMC100_SPI_NAND_CLK_SEL_12M;
	}
}
/******************************************************************************/

int hifmc100_set_system_clock(struct hifmc_host *host, unsigned int clk, int clk_en)
{
	u32 regval = readl(REG_BASE_CRG + HIFMC100_CRG23);

	if (clk_en) {
		u32 value;
		clk /= 1000000;
		value = hifmc100_clock2reg(clk, true);
		if (regval == (value | CRG23_SPI_NAND_CLK_EN))
			return 0;

		/* first disable CRG. */
		regval &= ~CRG23_SPI_NAND_CLK_EN;
		writel(regval, (REG_BASE_CRG + HIFMC100_CRG23));

		/* then change clk rate. */
		regval &= ~HIFMC100_SPI_NAND_CLK_SEL_MASK;
		regval |= value;
		writel(regval, (REG_BASE_CRG + HIFMC100_CRG23));

		udelay(10);
		/* last enable clk. */
		regval |= CRG23_SPI_NAND_CLK_EN;
		writel(regval, (REG_BASE_CRG + HIFMC100_CRG23));
	} else {
		regval &= ~CRG23_SPI_NAND_CLK_EN;
		writel(regval, (REG_BASE_CRG + HIFMC100_CRG23));
	}

	return 0;
}
