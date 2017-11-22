/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-02-06
 *
******************************************************************************/

#include "hisfc350_os.h"
#include "hisfc350.h"

/* periph hisfc CGR23 register for Hi3716MV310*/
#define HI3716MV310_HISFC350_CRG23                              (0x005C)
#define HI3716MV310_HISFC350_CRG23_RST                          (1 << 4)
#define HI3716MV310_HISFC350_CRG23_CLK2X_RST                    (1 << 3)
#define HI3716MV310_HISFC350_CRG23_CLKEN                        (1 << 0)
#define HI3716MV310_HISFC350_CRG23_CLK2X_CLKEN                  (1 << 5)

#define HI3716MV310_HISFC350_CRG23_CLK_12M                      0x000000
#define HI3716MV310_HISFC350_CRG23_CLK_37M                      0x000700
#define HI3716MV310_HISFC350_CRG23_CLK_50M                      0x000600
#define HI3716MV310_HISFC350_CRG23_CLK_75M                      0x000400
#define HI3716MV310_HISFC350_CRG23_CLK_100M                     0x000500
#define HI3716MV310_HISFC350_CFG23_CLK_SRC_OFFSET               8


/* periph hisfc CGR31 register for Hi3712v100*/
#define HI3712_HISFC350_CRG31                                   (0x00BC)
#define HI3712_HISFC350_CRG31_RST                               (1 << 0)
#define HI3712_HISFC350_CRG31_CLKEN                             (1 << 8)

#define HI3712_HISFC350_CRG31_CLK_24M                           0x00000000
#define HI3712_HISFC350_CRG31_CLK_50M                           0x00090000
#define HI3712_HISFC350_CRG31_CLK_99M                           0x00080000
#define HI3712_HISFC350_CRG31_CLK_198M                          0x000a0000
#define HI3712_HISFC350_CRG31_CLK_149M                          0x000c0000
#define HI3712_HISFC350_CFG31_CLK_SRC_OFFSET                    16

/*****************************************************************************/

void hisfc350_set_system_clock(struct hisfc_host *host,
			       struct spi_operation *op, int clk_en)
{
	long long chipid = get_chipid();

	if (chipid == _HI3712_V100) {
		u32 regval = HI3712_HISFC350_CRG31_CLK_24M;
		if (op && op->clock)
			regval = (op->clock & 0xf0000);

		if (clk_en)
			regval |= HI3712_HISFC350_CRG31_CLKEN;

		if (readl(host->sysreg + HI3712_HISFC350_CRG31 ) != regval)
			writel(regval, (host->sysreg + HI3712_HISFC350_CRG31));
	} else {
		u32 regval = HI3716MV310_HISFC350_CRG23_CLK_12M;
		if (op && op->clock)
			regval = (op->clock & 0x700);

		if (clk_en)
			regval |= (HI3716MV310_HISFC350_CRG23_CLKEN 
				   | HI3716MV310_HISFC350_CRG23_CLK2X_CLKEN);

		if (readl(host->sysreg + HI3716MV310_HISFC350_CRG23) != regval)
			writel(regval, (host->sysreg + HI3716MV310_HISFC350_CRG23));
	}
}
/*****************************************************************************/
void hisfc350_get_best_clock(unsigned int * clock)
{
	int ix, clk;
	long long chipid = get_chipid();
	if (chipid == _HI3712_V100) {
		unsigned int sysclk[] = {
			24,  HI3712_HISFC350_CRG31_CLK_24M,
			50,  HI3712_HISFC350_CRG31_CLK_50M,
			99,  HI3712_HISFC350_CRG31_CLK_99M,
			149, HI3712_HISFC350_CRG31_CLK_149M,
			198, HI3712_HISFC350_CRG31_CLK_198M,
			0,0,
		};

		clk = HI3712_HISFC350_CRG31_CLK_24M;
		for (ix = 0; sysclk[ix] != 0; ix += 2) {
			if ((*clock) < sysclk[ix])
				break;
			clk = sysclk[ix+1];
		}

		(*clock) = clk;
	} else {
		unsigned int sysclk[] = {
			12,  HI3716MV310_HISFC350_CRG23_CLK_12M,
			38,  HI3716MV310_HISFC350_CRG23_CLK_37M,
			50,  HI3716MV310_HISFC350_CRG23_CLK_50M,
			75,  HI3716MV310_HISFC350_CRG23_CLK_75M,
			100, HI3716MV310_HISFC350_CRG23_CLK_100M,
			0,0,
		};

		clk = HI3716MV310_HISFC350_CRG23_CLK_12M;
		for (ix = 0; sysclk[ix] != 0; ix += 2) {
			if ((*clock) < sysclk[ix])
				break;
			clk = sysclk[ix+1];
		}

		(*clock) = clk;
	}
}
/*****************************************************************************/
#ifdef CONFIG_HISFC350_SHOW_CYCLE_TIMING
char *hisfc350_get_clock_str(unsigned int clk_reg)
{
	int ix;
	long long chipid = get_chipid();
	static char buffer[40];

	if (chipid == _HI3712_V100) {
		unsigned int clk_str[] = {
			0, 12,
			1, 12,
			2, 12,
			3, 12,
			4, 12,
			5, 12,
			6, 12,
			7, 12,
			8, 45,
			9, 25,
			10, 100,
			11, 100,
			12, 75,
			13, 75,
			14, 75,
			15, 75,
		};

		clk_reg = (clk_reg & 0xf0000)
			>> HI3712_HISFC350_CFG31_CLK_SRC_OFFSET;

		for (ix = 0; clk_str[ix] < 16; ix += 2) {
			if (clk_reg == clk_str[ix]) {
				snprintf(buffer, sizeof(buffer), "%dM",
					clk_str[ix+1]);
				break;
			}
		}
		return buffer;
	} else {
		unsigned int clk_str[] = {
			0, 12,
			1, 12,
			2, 12,
			3, 12,
			4, 75,         /* 0x100 : 75M */
			5, 100,        /* 0x101: 100M */
			6, 50,         /* 0x110 : 50M */
			7, 37,         /* 0x111 : 37M */
		};

		clk_reg = (clk_reg & 0x700) >> HI3716MV310_HISFC350_CFG23_CLK_SRC_OFFSET;

		for (ix = 0; clk_str[ix] < 8; ix += 2) {
			if (clk_reg == clk_str[ix]) {
				snprintf(buffer, sizeof(buffer), "%dM",
					 clk_str[ix+1]);
				break;
			}
		}
		return buffer;
	}
}
#endif /* CONFIG_HISFC350_SHOW_CYCLE_TIMING */
