/******************************************************************************
*    Copyright (c) 2009-2012 by Hisi.
*    All rights reserved.
* ***
*    Create by Czy. 2012-03-19
*
******************************************************************************/

#include <config.h>

#define readl(_a)        (*(volatile unsigned int *)(_a))
#define writel(_v, _a)   (*(volatile unsigned int *)(_a) = (_v))

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
	/* unclock wdg */
	writel(0x1ACCE551, REG_BASE_WDG + 0x0C00);
	/* wdg load value */
	writel(0x00000100, REG_BASE_WDG + 0x0000);
	/* bit0: int enable bit1: reboot enable */
	writel(0x00000003, REG_BASE_WDG + 0x0008);

	while (1)
		;
}
