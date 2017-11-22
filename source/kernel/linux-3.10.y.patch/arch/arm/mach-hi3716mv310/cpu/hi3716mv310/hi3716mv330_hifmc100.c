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
#include <mach/clock.h>
#include <asm/setup.h>
#include <mach/hardware.h>
#include <asm/delay.h>

/*****************************************************************************/
#define HI3716MV330_HIFMC100_PERI_CRG_REG_BASE __io_address(REG_BASE_CRG)
#define HIFMC100_CRG23				(HI3716MV330_HIFMC100_PERI_CRG_REG_BASE + 0x5C)

#define HIFMC100_CRG23_SPI_NAND_CLK_EN          (1 << 0)
#define HIFMC100_CRG23_SPI_NAND_SOFT_RST_REQ    (1 << 4)
#define HIFMC100_CRG23_SPI_NAND_CLK_OFFSET      5

#define HIFMC100_SPI_NAND_CLK_SEL_MASK          (0x7 << HIFMC100_CRG23_SPI_NAND_CLK_OFFSET)
#define HIFMC100_SPI_NAND_CLK_SEL_12M           0x80
#define HIFMC100_SPI_NAND_CLK_SEL_41dot5M       0xa0
#define HIFMC100_SPI_NAND_CLK_SEL_75M           0x60
#define HIFMC100_SPI_NAND_CLK_SEL_100M          0x40
#define HIFMC100_SPI_NAND_CLK_SEL_125M          0x20
#define HIFMC100_SPI_NAND_CLK_SEL_200M          0x00

/******************************************************************************/
static int hi3716mv330_hifmc100_enable(struct clk *clk)
{
	unsigned long reg_val;

	/* first disable CRG. */
	reg_val = readl(HIFMC100_CRG23);
	reg_val &= ~HIFMC100_CRG23_SPI_NAND_CLK_EN;
	writel(reg_val, HIFMC100_CRG23);
	udelay(2);

	/* then change clk. */
	reg_val &= ~HIFMC100_SPI_NAND_CLK_SEL_MASK;
	reg_val |= HIFMC100_SPI_NAND_CLK_SEL_200M;
	writel(reg_val, HIFMC100_CRG23);

	/* last enable CRG. */
	reg_val |= HIFMC100_CRG23_SPI_NAND_CLK_EN; 
	writel(reg_val, HIFMC100_CRG23);

	return 0;
}
/*****************************************************************************/

static void hi3716mv330_hifmc100_disable(struct clk *clk)
{
	unsigned long reg_val;

	reg_val = readl(HIFMC100_CRG23);

	reg_val &= ~HIFMC100_CRG23_SPI_NAND_CLK_EN;

	writel(reg_val, HIFMC100_CRG23);
}
/*****************************************************************************/

static int hi3716mv330_hifmc100_set_rate(struct clk *clk, unsigned rate)
{
	unsigned long regval;
	int ix, clock;

	unsigned int sysclk[] = {
		12,  HIFMC100_SPI_NAND_CLK_SEL_12M,
		42,  HIFMC100_SPI_NAND_CLK_SEL_41dot5M,
		75,  HIFMC100_SPI_NAND_CLK_SEL_75M,
		100, HIFMC100_SPI_NAND_CLK_SEL_100M,
		125, HIFMC100_SPI_NAND_CLK_SEL_125M,
		200, HIFMC100_SPI_NAND_CLK_SEL_200M,

		0,0,
	};

	rate /= 1000000;
	if (rate <= 12) {
		clock = HIFMC100_SPI_NAND_CLK_SEL_12M;
		goto set_clock;
	} else if (rate >= 200) {
		clock = HIFMC100_SPI_NAND_CLK_SEL_200M;
		goto set_clock;
	}

	clock = HIFMC100_SPI_NAND_CLK_SEL_12M;

	for (ix = 0; sysclk[ix] != 0; ix += 2) {
		if (rate < sysclk[ix]) {
			clock = sysclk[ix - 1];
			break;
		}
	}

set_clock:
	/* first disable CRG. */
	regval = readl(HIFMC100_CRG23);
	regval &= ~HIFMC100_CRG23_SPI_NAND_CLK_EN;
	writel(regval, HIFMC100_CRG23);
	udelay(2);

	/* then change CRG clk */
	regval &= ~HIFMC100_SPI_NAND_CLK_SEL_MASK;
	regval |= clock;
	writel(regval, HIFMC100_CRG23);

	/* last enable CRG. */
	regval |= HIFMC100_CRG23_SPI_NAND_CLK_EN;
	writel(regval, HIFMC100_CRG23);

	return 0;
}
/*****************************************************************************/

static struct clk_ops hi3716mv330_hifmc100_clk_ops = {
	.enable = hi3716mv330_hifmc100_enable,
	.disable = hi3716mv330_hifmc100_disable,
	.set_rate = hi3716mv330_hifmc100_set_rate,
	.get_rate = NULL,
	.round_rate = NULL,
};
/*****************************************************************************/

struct clk hi3716mv330_hifmc100_clk = {
	.ops  = &hi3716mv330_hifmc100_clk_ops,
};
/*****************************************************************************/

static struct resource hi3716mv330_hifmc100_resources[] = {
	{
		.name   = "base",
		.start  = 0x60050000,
		.end    = 0x60050000 + 0x100,
		.flags  = IORESOURCE_MEM,
	}, {
		.name   = "buffer",
		.start  = 0x60200000,
		.end    = 0x60200000 + 2048 + 128,
		.flags  = IORESOURCE_MEM,
	}, {
		.name   = "irq",
		.start  = 121,
		.end    = 121,
		.flags  = IORESOURCE_IRQ,
	}
};
/*****************************************************************************/

struct device_resource hi3716mv330_hifmc100_device_resource = {
	.name           = "hifmc100",
	.resource       = hi3716mv330_hifmc100_resources,
	.num_resources  = ARRAY_SIZE(hi3716mv330_hifmc100_resources),
};
/*****************************************************************************/
