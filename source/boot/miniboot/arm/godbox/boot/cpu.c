/******************************************************************************
 *    Copyright (C) 2014 Hisilicon STB Development Dept
 *    All rights reserved.
 * ***
 *    Create by Cai Zhiyong
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

#include <stddef.h>
#include <cpuinfo.h>
#include <boot.h>

#include <asm/io.h>
#include <platform.h>

/******************************************************************************/

static int hi3716mv300_boot_media(char **media)
{
	int regval;
	int boot_media;
	char *boot_media_str = "Unknown";

	regval = readl(HI3716MV300_CA_BASE + HI3716MV300_CA_BASE_MAILBOX);
	if (get_ca_vendor() == HI3716MV300_CA_BASE_MAILBOX_ENABLE
		&& (regval & HI3716MV300_CA_BASE_BOOT_SEL_CTRL)) {
		/* read from opt */
		boot_media = readl(HI3716MV300_CA_BASE
			+ HI3716MV300_BOOT_MODE_SEL);
		boot_media = (boot_media & HI3716MV300_BOOT_MODE_SEL_MASK);
	} else {
		/* read from pin */
		boot_media = readl(REG_BASE_PERI_CTRL + REG_START_MODE);
		boot_media = ((boot_media >> NORMAL_BOOTMODE_OFFSET)
			& NORMAL_BOOTMODE_MASK);
	}

	switch (boot_media) {
	case 0x0:
		boot_media     = BOOT_MEDIA_SPIFLASH;
		boot_media_str = "SPI Flash";
		break;
	case 0x1:
		boot_media     = BOOT_MEDIA_NAND;
		boot_media_str = "NAND";
		break;
	case 0x3:
		boot_media     = BOOT_MEDIA_EMMC;
		boot_media_str = "eMMC";
		break;
	}
	if (media)
		*media = boot_media_str;

	return boot_media;
}
/******************************************************************************/

static int hi3716x_boot_media(char **media)
{
	unsigned long regval;
	unsigned long boot_media = 0;
	char *boot_media_str = "Unknow";

	switch (get_ca_vendor()) {
	case CA_TYPE_NAGRA:
		regval = readl(REG_BASE_CA);

		if ((regval & CA_SCS_MASK))
			boot_media = (regval >> OTP_BOOTMODE_OFFSET)
				& OTP_BOOTMODE_MASK;
		else {
			boot_media = readl(REG_BASE_PERI_CTRL
				+ REG_START_MODE);
			boot_media = ((boot_media >> PIN_BOOTMODE_OFFSET)
				& PIN_BOOTMODE_MASK);
		}

	break;
	case CA_TYPE_NO_CA:
		boot_media = readl(REG_BASE_PERI_CTRL + REG_START_MODE);
		boot_media = ((boot_media >> NORMAL_BOOTMODE_OFFSET)
			& NORMAL_BOOTMODE_MASK);

	break;
	default:
		boot_media = readl(REG_BASE_CA);
		boot_media = ((boot_media >> CA_BOOTMODE_OFFSET)
			& CA_BOOTMODE_MASK);
	break;
	}

	switch (boot_media) {
	case 0x0:
		boot_media     = BOOT_MEDIA_SPIFLASH;
		boot_media_str = "SPI Flash";
		break;
	case 0x1:
		boot_media     = BOOT_MEDIA_NAND;
		boot_media_str = "NAND";
		break;
	case 0x3:
		boot_media     = BOOT_MEDIA_EMMC;
		boot_media_str = "eMMC";
		break;
	}
	if (media)
		*media = boot_media_str;

	return boot_media;
}
/******************************************************************************/

static unsigned int get_clk_posdiv(unsigned long osc)
{
	unsigned long regbase = REG_BASE_SCTL;
	unsigned long apll_fbdiv;
	unsigned long apll_frac;
	unsigned long apll_refdiv;
	unsigned long apll_postdiv1;
	unsigned long apll_postdiv2;
	unsigned long FOUTVCO;
	unsigned long regval;
	unsigned long FOUTPOSTDIV;

	static unsigned int clk_postdiv = 0;
	if (clk_postdiv)
		return clk_postdiv;

	regval = readl(regbase + REG_SC_APLLFREQCTRL0);
	apll_postdiv2 = ((regval >> 27) & 0x07);
	apll_postdiv1 = ((regval >> 24) & 0x07);
	apll_frac  = (regval & 0xFFFFFF);

	regval = readl(regbase + REG_SC_APLLFREQCTRL1);
	apll_refdiv = ((regval >> 12) & 0x3F);
	apll_fbdiv  = (regval & 0xFFF);

	FOUTVCO = (osc / apll_refdiv) * (apll_fbdiv + (apll_frac >> 24));
	FOUTPOSTDIV = FOUTVCO / (apll_postdiv2 * apll_postdiv1);

	clk_postdiv = FOUTPOSTDIV;

	return clk_postdiv;
}
/*****************************************************************************/

static void get_hi3716x_clock(unsigned int *cpu, unsigned int *timer)
{
	unsigned long regval;
	unsigned long FREF = OSC_FREQ;
	unsigned long regbase = REG_BASE_SCTL;

	static unsigned int clk_cpu = 0;
	static unsigned int clk_axi = 0;
	static unsigned int clk_l2cache = 0;
	static unsigned int clk_ahb = 0;
	static unsigned int clk_apb = 0;

	if (clk_cpu)
		goto exit;

	regval = readl(regbase + REG_SC_CTRL);
	regval = ((regval >> 12) & 0x03);

	if (regval == 0x00) { /* 2:1 */
		clk_cpu = get_clk_posdiv(FREF);
		clk_l2cache = clk_cpu;
		clk_axi = (clk_l2cache >> 1);
	} else if (regval == 0x3) { /* 3:2 */
		clk_cpu = ((get_clk_posdiv(FREF) >> 2) * 3);
		clk_l2cache = (clk_cpu << 1) / 3;
		clk_axi = clk_l2cache;
	} else {
		/* BUG. */
	}

	clk_ahb = (clk_axi >> 1);
	clk_apb = (clk_ahb >> 1);

exit:
	if (cpu)
		(*cpu) = clk_cpu;
	if (timer)
		(*timer) = clk_apb;
}
/*****************************************************************************/

static void get_hi3716mv200_clock(unsigned int *cpu, unsigned int *timer)
{
	unsigned long regval;
	unsigned long FREF = OSC_FREQ;
	unsigned long regbase = REG_BASE_SCTL;

	static unsigned int clk_cpu = 0;
	static unsigned int clk_axi = 0;
	static unsigned int clk_l2cache = 0;
	static unsigned int clk_ahb = 0;
	static unsigned int clk_apb = 0;

	if (clk_cpu)
		goto exit;

	regval = readl(regbase + REG_SC_CTRL);
	regval = ((regval >> 12) & 0x03);

	if (regval == 0x00) { /* 2:1 */
		clk_cpu = get_clk_posdiv(FREF);
		clk_l2cache = clk_cpu;
		clk_axi = (clk_l2cache >> 1);
	} else if (regval == 0x3) { /* 3:2 */
		unsigned int posdiv = get_clk_posdiv(FREF);
		if (posdiv == 800000000) /* logic stipulate */
			posdiv = 1200000000;
		clk_cpu = (posdiv >> 1);
		clk_l2cache = (clk_cpu << 1) / 3;
		clk_axi = clk_l2cache;
	} else {
		/* BUG. */
	}

	clk_ahb = (clk_axi >> 1);
	clk_apb = (clk_ahb >> 1);

exit:
	if (cpu)
		(*cpu) = clk_cpu;
	if (timer)
		(*timer) = clk_apb;
}
/*****************************************************************************/

static void get_hi3716mv300_clock(unsigned int *cpu, unsigned int *timer)
{
	unsigned long FREF = 28800000;

	static unsigned int clk_cpu = 0;
	static unsigned int clk_axi = 0;
	static unsigned int clk_l2cache = 0;
	static unsigned int clk_ahb = 0;
	static unsigned int clk_apb = 0;

	if (clk_cpu)
		goto exit;

	clk_cpu = (get_clk_posdiv(FREF) >> 1);
	clk_l2cache = clk_cpu;
	clk_axi = (clk_l2cache >> 1);
	clk_ahb = (clk_axi << 1) / 3;
	clk_apb = (clk_ahb >> 1);

exit:
	if (cpu)
		(*cpu) = clk_cpu;
	if (timer)
		(*timer) = clk_apb;
}
/*****************************************************************************/

static int hi3712_boot_media(char **media)
{
	int boot_media;
	char *boot_media_str = "Unknow";

	/* read from pin */
	boot_media = readl(REG_BASE_PERI_CTRL + REG_START_MODE);
	boot_media = ((boot_media >> HI3712_BOOTMODE_OFFSET)
		& HI3712_BOOTMODE_MASK);

	switch (boot_media) {
	case 0x0:
		boot_media     = BOOT_MEDIA_SPIFLASH;
		boot_media_str = "SPI Flash";
		break;
	case 0x1:
		boot_media     = BOOT_MEDIA_NAND;
		boot_media_str = "NAND";
		break;
	}

	if (media)
		*media = boot_media_str;
	return boot_media;
}
/*****************************************************************************/

static void get_hi3712_clock(unsigned int *cpu, unsigned int *timer)
{
	/* TODO: These values are not used, don't care */
	if (cpu)
		(*cpu) = 0;
	if (timer)
		(*timer) = OSC_FREQ;
}

/******************************************************************************/

static struct cpu_info_t cpu_info[] = {
	{
		.name   = "Unknown",
		.chipid = 0,
		.chipid_mask = ~0,
		.max_ddr_size = 0,
		.boot_media = NULL,
		.get_clock  = NULL,
	},
	{
		.name   = "Hi3716Mv100",
		.chipid = _HI3716M_V100,
		.chipid_mask = _HI3716X_MASK,
		.max_ddr_size = _1G,
		.boot_media = hi3716x_boot_media,
		.get_clock  = get_hi3716x_clock,
	},
	{
		.name   = "Hi3716Mv200",
		.chipid = _HI3716M_V200,
		.chipid_mask = _HI3716X_MASK,
		.max_ddr_size = _1G,
		.boot_media = hi3716x_boot_media,
		.get_clock  = get_hi3716mv200_clock,
	},
	{
		.name   = "Hi3716Mv300",
		.chipid = _HI3716M_V300,
		.chipid_mask = _HI3716X_MASK,
		.max_ddr_size = _512M,
		.boot_media = hi3716mv300_boot_media,
		.get_clock  = get_hi3716mv300_clock,
	},
	{
		.name   = "Hi3716Cv100",
		.chipid = _HI3716C_V100,
		.chipid_mask = _HI3716X_MASK,
		.max_ddr_size = _1G,
		.boot_media = hi3716x_boot_media,
		.get_clock  = get_hi3716x_clock,
	},
	{
		.name   = "Hi3716Hv100",
		.chipid = _HI3716H_V100,
		.chipid_mask = _HI3716X_MASK,
		.max_ddr_size = _1G,
		.boot_media = hi3716x_boot_media,
		.get_clock  = get_hi3716x_clock,
	},
	{
		.name   = "Hi3712v100",
		.chipid_mask = _HI3712_MASK,
		.chipid = _HI3712_V100,
		.max_ddr_size = _512M,
		.boot_media = hi3712_boot_media,
		.get_clock  = get_hi3712_clock,
	},
	{0},
};
/*****************************************************************************/

struct cpu_info_t *get_cpuinfo(void)
{
	static struct cpu_info_t *info = NULL;
	long long chipid = get_chipid_reg();

	if (info)
		return info;

	for (info = cpu_info; info->name; info++) {
		if ((info->chipid & info->chipid_mask)
			== (chipid & info->chipid_mask))
			return info;
	}
	return cpu_info;
}

/*****************************************************************************/

unsigned int get_timer_clock(void)
{
	unsigned int timer_clk = 0;
	if (get_cpuinfo()->get_clock)
		get_cpuinfo()->get_clock(NULL, &timer_clk);
	return timer_clk;
}

/*****************************************************************************/

int get_cpuno(void)
{
	return 0;
}
