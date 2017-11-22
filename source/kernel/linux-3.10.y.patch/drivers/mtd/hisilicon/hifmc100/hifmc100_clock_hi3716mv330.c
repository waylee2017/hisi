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

#include <hiflash.h>
#include <linux/hisilicon/freq.h>
/******************************************************************************/

struct nand_chip_clock hifmc100_nand_rwlatch[] = {
	/* id_len == 0, means default clock, don't remove. */
	{ .id     = {0x00}, .id_len = 0, .value  = 0x457, }
};
/******************************************************************************/

struct spinand_chip_xfer hifmc100_spinand_chip_xfer[] = {
	{"AFS4GQ4UAGWC4",            {0xc2, 0xd4}, 2, 4, _24MHz},
	{"AFS2GQ4UADWC2",            {0xc1, 0x52}, 2, 4, _50MHz},
	{"AFS1GQ4UACWC2",            {0xc1, 0x51}, 2, 4, _50MHz},
	{"AFS1GQ4UAAWC2",            {0xc8, 0x31}, 2, 4, _50MHz},
	{"GD5F2GQ4UAYIG",            {0xC8, 0xF2}, 2, 4, _50MHz},
	{"GD5F1GQ4UBYIG",            {0xC8, 0xD1}, 2, 4, _75MHz},
	{"GD5F2GQ4UBYIG",            {0xC8, 0xD2}, 2, 4, _75MHz},
	{"F50L1G41A/PSU1GS20BN",     {0xC8, 0x21}, 2, 4, _75MHz},
	{"HYF1GQ4UAACAE",            {0xC9, 0x51}, 2, 4, _75MHz},
	{"HYF2GQ4UAACAE",            {0xC9, 0x52}, 2, 4, _75MHz},
	{"ATO25D1GA",                {0x9B, 0x12}, 2, 4, _24MHz},
	{"MX35LF1GE4AB-Z2I",         {0xC2, 0x12}, 2, 4, _50MHz},
	{"W25N01GV",                 {0xEF, 0xAA, 0x21}, 3, 4, _50MHz},
	{"FM25G01A/PN26G01A",        {0xA1, 0xE1}, 2, 4, _75MHz},
	{"PN26G02AWSIUG",            {0xA1, 0xE2}, 2, 4, _75MHz},
	{"TC58CVG0S3HRAIF",          {0x98, 0xC2}, 2, 1, _50MHz},
	{"HYF1GQ4UAACA6-C",          {0xC9, 0x31}, 2, 4, _24MHz},
	{"MT29F1G01ABAFDWB",         {0x2C, 0x14}, 2, 4, _75MHz},
	/* id_len == 0, means default value, don't remove. */
	{NULL, {0x00}, 0, 4, _100MHz},
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
		.read = SPIFLASH_XFER(SPINOR_OP_READ_QUAD, 1, 0, 80),
		.write =  SPIFLASH_XFER(SPINOR_OP_PP_QUAD, 0, 256, 80),},

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
