/******************************************************************************
 *    Copyright (C) 2014 Hisilicon STB Development Dept
 *    All rights reserved.
 * ***
 *    Create by Czyong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
******************************************************************************/

#include <config.h>
#include <cpuinfo.h>

#define readl(_a)        (*(volatile unsigned int *)(_a))
#define writel(_v, _a)   (*(volatile unsigned int *)(_a) = (_v))

/******************************************************************************/

static inline void delay(unsigned int cnt)
{
	while (cnt--)
		__asm__ __volatile__("nop");
}
/******************************************************************************/

long long get_chipid_reg(void)
{
	long long chipid = 0;
	unsigned int subchipid;
	unsigned int regval;

	regval = readl(REG_BASE_SCTL + REG_SC_SYSID0);
	subchipid = (regval & 0xFF);
	regval = readl(REG_BASE_SCTL + REG_SC_SYSID1);
	subchipid |= ((regval & 0xFF) << 8);
	regval = readl(REG_BASE_SCTL + REG_SC_SYSID2);
	subchipid |= ((regval & 0xFF) << 16);
	regval = readl(REG_BASE_SCTL + REG_SC_SYSID3);
	subchipid |= ((regval & 0xFF) << 24);

	regval = readl(REG_BASE_PERI_CTRL + HI3716MV310_PERI_SOC_FUSE_0);
	chipid = (long long)(regval & HI3716MV310_PERI_SOC_FUSE_MASK);
	chipid >>= 19;
	chipid = (chipid << 32) | (long long)subchipid;

	return chipid;
}
/******************************************************************************/

unsigned int get_ca_vendor_reg(void)
{
	unsigned long ca_vendor = 0;

	// TODO: 
	return ca_vendor;
}
/*****************************************************************************/

void reset_cpu(unsigned long addr)
{
	unsigned int val;
	/* enable the wdg0 crg clock */
	val = readl(REG_BASE_CRG + REG_PERI_CRG94);
	val &= ~(1<<4);
	val |= 1;
	writel(val, REG_BASE_CRG + REG_PERI_CRG94);
	delay(1000);

	/* unclock wdg */
	writel(0x1ACCE551, REG_BASE_WDG0 + 0x0C00);
	/* wdg load value */
	writel(0x00000100, REG_BASE_WDG0 + 0x0000);
	/* bit0: int enable bit1: reboot enable */
	writel(0x00000003, REG_BASE_WDG0 + 0x0008);

	while (1)
		;
}
/******************************************************************************/

int get_boot_mode(void)
{
	int regval;
	int boot_media;

	regval = readl(HI3716MV310_CA_BASE + HI3716MV310_CA_BOOTSEL_CTRL);
	regval >>= 16;
	if (regval & HI3716MV310_CA_BOOTSEL_CTRL_MASK) {
		/* read from otp */
		boot_media = readl(HI3716MV310_CA_BASE
			+ HI3716MV310_BOOT_MODE_SEL);
		boot_media = (boot_media & HI3716MV310_BOOT_MODE_SEL_MASK);
	} else {
		/* read from pin */
		boot_media = readl(REG_BASE_PERI_CTRL + REG_START_MODE);
		boot_media = ((boot_media >> NORMAL_BOOTMODE_OFFSET)
			& NORMAL_BOOTMODE_MASK);
	}

	switch (boot_media) {
	case 0x0:
		boot_media     = BOOT_MEDIA_SPIFLASH;
		break;
	case 0x1:
		boot_media     = BOOT_MEDIA_NAND;
		break;
	case 0x2:
		boot_media     = BOOT_MEDIA_SPI_NAND;
		break;
	default:
		boot_media     = BOOT_MEDIA_UNKNOWN;
		break;
	}

	return boot_media;
}

/******************************************************************************/

