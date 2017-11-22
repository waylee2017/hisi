/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-02-27
 *
******************************************************************************/

#include <common.h>
#include <command.h>
#include <asm/system.h>
#include <asm/cache.h>
#include <asm/io.h>
#include <config.h>
#include <asm/sizes.h>
#include <asm/cpu_info.h>
#ifndef CONFIG_L2_OFF
#include <asm/arch/sys_proto.h>
#endif

/******************************************************************************/

int cleanup_before_linux(void)
{
	unsigned int i;

	/*
	 * this function is called just before we call linux
	 * it prepares the processor for linux
	 *
	 * we turn off caches etc ...
	 */
	disable_interrupts();

	/* turn off I/D-cache */
	icache_disable();
	dcache_disable();

	/* invalidate I-cache */
	asm ("mcr p15, 0, %0, c7, c5, 0": :"r" (0));

	i = 0;
	/* mem barrier to sync up things */
	asm("mcr p15, 0, %0, c7, c10, 4": :"r"(i));

	return 0;
}
/******************************************************************************/

static int hi3716mv310_boot_media(char **media)
{
	int regval;
	int boot_media;
	char *boot_media_str = "Unknow";

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
		boot_media_str = "SPI Flash";
		break;
	case 0x1:
		boot_media     = BOOT_MEDIA_NAND;
		boot_media_str = "NAND";
		break;
	case 0x2:
		boot_media     = BOOT_MEDIA_SPI_NAND;
		boot_media_str = "SPI_NAND";
		break;
	default:
		boot_media     = BOOT_MEDIA_UNKNOWN;
		boot_media_str = "UNKNOWN";
		break;
	}
	if (media)
		*media = boot_media_str;

	return boot_media;
}
/*****************************************************************************/

static void get_hi3716mv310_clock(unsigned int *cpu, unsigned int *timer)
{
	unsigned long FREF = 24000000;

	if (cpu)
		(*cpu) = 0;
	if (timer)
		(*timer) = FREF;
}
/******************************************************************************/
/* return CHIPSET_CATYPE_NORMAL - normal, CHIPSET_CATYPE_CA - secure */
static int hi3716mv310_get_ca_type(void)
{
#ifdef HI3716MV310_FPGA
	return CHIPSET_CATYPE_NORMAL;
#else
	unsigned int id_word;

	id_word = readl(HI3716MV310_REG_OTP_ID_WORD);

	if (HI3716MV310_OTP_ID_WORD_VALUE_NORMAL == id_word)
		return CHIPSET_CATYPE_NORMAL;
	else
		return CHIPSET_CATYPE_CA;
#endif
}
/******************************************************************************/

struct cpu_info_t cpu_info[] = {
	{
		.name   = "Unknown",
		.chipid = 0,
		.chipid_mask = _HI3716X_MASK,
		.devs = 0,
		.max_ddr_size = 0,
		.boot_media = NULL,
		.get_clock  = NULL,
		.get_cpu_version = NULL,
		.get_ca_type = NULL,
	},
	{
		.name   = "Hi3716Mv310",
		.chipid = _HI3716M_V310,
		.chipid_mask = _HI3716X_MASK,
		.devs = DEV_HINFC610 | DEV_HISFC350 | DEV_HISFC400,
		.max_ddr_size = SZ_512M,
		.boot_media = hi3716mv310_boot_media,
		.get_clock  = get_hi3716mv310_clock,
		.get_cpu_version = NULL,
		.get_ca_type = hi3716mv310_get_ca_type,
	},
	{
		.name   = "Hi3716Mv320",
		.chipid = _HI3716M_V320,
		.chipid_mask = _HI3716X_MASK,
		.devs = DEV_HINFC610 | DEV_HISFC350 | DEV_HISFC400,
		.max_ddr_size = SZ_512M,
		.boot_media = hi3716mv310_boot_media,
		.get_clock  = get_hi3716mv310_clock,
		.get_cpu_version = NULL,
		.get_ca_type = hi3716mv310_get_ca_type,
	},
	{
		.name   = "Hi3110EV500",
		.chipid = _HI3110E_V500,
		.chipid_mask = _HI3716X_MASK,
		.devs = DEV_HINFC610 | DEV_HISFC350 | DEV_HISFC400,
		.max_ddr_size = SZ_512M,
		.boot_media = hi3716mv310_boot_media,
		.get_clock  = get_hi3716mv310_clock,
		.get_cpu_version = NULL,
		.get_ca_type = hi3716mv310_get_ca_type,
	},
	{
		.name   = "Hi3716Mv330",
		.chipid = _HI3716M_V330,
		.chipid_mask = _HI3716M_V330_MASK,
		.devs = DEV_NOR_HIFMC100 | DEV_HIFMC100,
		.max_ddr_size = SZ_512M,
		.boot_media = hi3716mv310_boot_media,
		.get_clock  = get_hi3716mv310_clock,
		.get_cpu_version = NULL,
		.get_ca_type = hi3716mv310_get_ca_type,
	},
	{0},
};
