/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-02-07
 *
******************************************************************************/

#include <linux/err.h>
#include <linux/completion.h>
#include <linux/kernel.h>
#include <asm/mach/resource.h>
#include <asm/system.h>
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <mach/clock.h>
#include <mach/io.h>
#include <mach/cpu.h>

extern struct device_resource hi3716mv310_hinfc610_device_resource;
extern struct device_resource hi3716mv330_hifmc100_device_resource;

/*****************************************************************************/

static struct device_resource *hi3716mv310_device_resource[] = {
	&hi3716mv310_hinfc610_device_resource,
	NULL,
};
/*****************************************************************************/

static struct device_resource *hi3716mv330_device_resource[] = {
	&hi3716mv330_hifmc100_device_resource,
	NULL,
};
/*****************************************************************************/
extern struct clk hi3716mv310_hinfc610_clk;
extern struct clk hi3716mv330_hifmc100_clk;

static struct clk hi3716mv310_uart_clk = {
#ifdef CONFIG_HI3716MV310_FPGA 
	.rate = 54000000,
#else
	.rate = 85714285,
#endif
};
/*****************************************************************************/

static struct clk_lookup hi3716mv310_lookups[] = {
	{
		.dev_id = "hinfc610",
		.clk    = &hi3716mv310_hinfc610_clk,
	}, { /* UART0 */
		.dev_id		= "uart:0",
		.clk		= &hi3716mv310_uart_clk,
	}, { /* UART1 */
		.dev_id		= "uart:1",
		.clk		= &hi3716mv310_uart_clk,
	}
};
/*****************************************************************************/

static struct clk_lookup hi3716mv330_lookups[] = {
	{
		.dev_id = "hifmc100",
		.clk    = &hi3716mv330_hifmc100_clk,
	}, { /* UART0 */
		.dev_id		= "uart:0",
		.clk		= &hi3716mv310_uart_clk,
	}, { /* UART1 */
		.dev_id		= "uart:1",
		.clk		= &hi3716mv310_uart_clk,
	}
};
/*****************************************************************************/

static void hi3716mv310_cpu_init(struct cpu_info *info)
{
	info->clk_cpu    = 800000000;
	info->clk_timer  = 24000000;
	info->cpuversion = "";

	clkdev_add_table(hi3716mv310_lookups,
		ARRAY_SIZE(hi3716mv310_lookups));
}

static void hi3716mv330_cpu_init(struct cpu_info *info)
{
	info->clk_cpu    = 800000000;
	info->clk_timer  = 24000000;
	info->cpuversion = "";

	clkdev_add_table(hi3716mv330_lookups,
		ARRAY_SIZE(hi3716mv330_lookups));
}

static unsigned int hi3716mv310_get_bootmedia(char **media)
{
	int regval;
	u32 boot_media;
	char *boot_media_str = "Unknow";

	regval = readl(__io_address(HI3716MV310_CA_BASE + HI3716MV310_CA_BOOTSEL_CTRL));
	regval >>= 16;
	if (regval & HI3716MV310_CA_BOOTSEL_CTRL_MASK) {
		/* read from otp */
		boot_media = readl(__io_address(HI3716MV310_CA_BASE
			+ HI3716MV310_BOOT_MODE_SEL));
		boot_media = (boot_media & HI3716MV310_BOOT_MODE_SEL_MASK);
	} else {
		/* read from pin */
		boot_media = readl(__io_address(REG_BASE_PERI_CTRL + REG_START_MODE));
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

struct cpu_info hi3716mv310_cpu_info =
{
	.name = "Hi3716Mv310",
	.chipid = _HI3716M_V310,
	.chipid_mask = _HI3716X_MASK,
	.resource = hi3716mv310_device_resource,
	.init = hi3716mv310_cpu_init,
	.get_bootmedia = hi3716mv310_get_bootmedia,
};

struct cpu_info hi3716mv320_cpu_info =
{
	.name = "Hi3716Mv320",
	.chipid = _HI3716M_V320,
	.chipid_mask = _HI3716X_MASK,
	.resource = hi3716mv310_device_resource,
	.init = hi3716mv310_cpu_init,
	.get_bootmedia = hi3716mv310_get_bootmedia,
};

struct cpu_info hi3716mv330_cpu_info =
{
	.name = "Hi3716Mv330",
	.chipid = _HI3716M_V330,
	.chipid_mask = _HI3716M_V330_MASK,
	.resource = hi3716mv330_device_resource,
	.init = hi3716mv330_cpu_init,
	.get_bootmedia = hi3716mv310_get_bootmedia,
};

struct cpu_info hi3110ev500_cpu_info =
{
	.name = "Hi3110Ev500",
	.chipid = _HI3110E_V500,
	.chipid_mask = _HI3716X_MASK,
	.resource = hi3716mv310_device_resource,
	.init = hi3716mv310_cpu_init,
	.get_bootmedia = hi3716mv310_get_bootmedia,
};

