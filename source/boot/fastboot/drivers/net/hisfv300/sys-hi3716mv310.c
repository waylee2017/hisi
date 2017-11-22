#ifdef CONFIG_NET_HISFV300_GODBOX
#include <common.h>
#include <asm/arch/platform.h>
#include <ethcfg.h>

#define HI3716MV310_PERI_CRG51                      (REG_BASE_CRG + 0xcc)
#define HI3716MV310_PERI_CRG73                      (REG_BASE_CRG + 0x120)
#define HI3716MV310_PERI_CRG90                      (REG_BASE_CRG + 0x168)

#define HI3716MV310_PERI_LDO_CTRL                   (REG_BASE_PERI_CTRL + 0x11c)

#define HIETH_SYSREG_REG                HI3716MV310_PERI_CRG51

#define HIETHPHY_SYSREG_REG             HI3716MV310_PERI_CRG73
#define HIETH_SF_SRST_REQ_BIT           5
#define HIETH_SF_BUS_SRST_REQ_BIT       4

#define HIETH_FEPHY_LDO_CTRL            HI3716MV310_PERI_LDO_CTRL
#define HIETH_INDEX                     1 /* only for reset external fephy using GPIO. */

/* DEFAULT external phy reset pin */
#define HIETH_FEPHY_RST_BASE            HI3716MV310_PERI_CRG90
#define HIETH_FEPHY_RST_BIT             1

static void hieth_set_regbit(unsigned long addr, int bit, int shift)
{
	unsigned long reg;
	reg = _readl(addr);
	bit = bit ? 1 : 0;
	reg &= ~(1 << shift);
	reg |= bit << shift;
	_writel(reg, addr);
}

static void hieth_reset(int rst)
{
	if (_HI3716M_V330 == get_chipid()) {
		hieth_set_regbit(HIETH_SYSREG_REG, rst, 14);
	} else {
		hieth_set_regbit(HIETH_SYSREG_REG, rst, HIETH_SF_BUS_SRST_REQ_BIT);
		hieth_set_regbit(HIETH_SYSREG_REG, rst, HIETH_SF_SRST_REQ_BIT);
	}
	udelay(100);
}

static inline void hieth_clk_ena(void)
{
	unsigned int val;

	val = _readl(HIETH_SYSREG_REG);
	if (_HI3716M_V330 == get_chipid()) {
		val |= (0x3 << 12);
	} else {
		val |= (3 << 0) || (0xf << 12);
	}
	_writel(val, HIETH_SYSREG_REG);
}

static inline void hieth_clk_dis(void)
{
	unsigned int val;

	val = _readl(HIETH_SYSREG_REG);
	if (_HI3716M_V330 == get_chipid()) {
		val &= ~(0x3 << 12);
	} else {
		val &= ~((3 << 0) || (0xf << 12));
	}
	_writel(val, HIETH_SYSREG_REG);
}

static void hieth_external_phy_reset(void)
{
	u32 gpio_base = 0;
	u32 gpio_bit = 0;
	u32 v = 0;

	/************************************************/
	/* reset external phy with default reset pin */
	v = readl(HIETH_FEPHY_RST_BASE);
	v |= (1 << HIETH_FEPHY_RST_BIT);
	writel(v, HIETH_FEPHY_RST_BASE);

	udelay(1000);

	/* then, cancel reset, and should delay 200ms */
	v &= ~(1 << HIETH_FEPHY_RST_BIT);
	writel(v, HIETH_FEPHY_RST_BASE);

	udelay(1000);
	v |=  1 << HIETH_FEPHY_RST_BIT;
	writel(v, HIETH_FEPHY_RST_BASE);
	udelay(1000);

    /************************************************/
	/* reset external phy with gpio */
#define RESET_DATA	(1)

	if (0 != get_eth_phygpio(HIETH_INDEX, &gpio_base, &gpio_bit)) {
		return;
	}

	/* maybe phygpio=none */
	if (!gpio_base)
		return;

	/* config gpio[x] dir to output */
	v = readb(gpio_base + 0x400);
	v |= (1 << gpio_bit);
	writeb(v, gpio_base + 0x400);

	/* output 1--0--1 */
	writeb(RESET_DATA << gpio_bit,
			gpio_base + (4 << gpio_bit));
	udelay(1000);
	writeb((!RESET_DATA) << gpio_bit,
			gpio_base + (4 << gpio_bit));
	udelay(1000);
	writeb(RESET_DATA << gpio_bit,
			gpio_base + (4 << gpio_bit));
	udelay(1000);
	/************************************************/
}

static void hieth_internal_phy_reset(void)
{
	unsigned int val;

	if (_HI3716M_V330 == get_chipid()) {

		/* FEPHY enable clock */
		val = _readl(HI3716MV310_PERI_CRG51);
		val |= (0x1<<0);
		_writel(val, HI3716MV310_PERI_CRG51);

		/* set FEPHY address */
		val = _readl(HI3716MV310_PERI_FEPHY);
		val &= ~(0x1F);
		val |= (U_PHY_ADDR & 0x1F);
		_writel(val, HI3716MV310_PERI_FEPHY);

		/* FEPHY set reset */
		val = _readl(HI3716MV310_PERI_CRG51);
		val |= (0x1 << 1);
		_writel(val, HI3716MV310_PERI_CRG51);

		udelay(10);

		/* FEPHY cancel reset */
		val = _readl(HI3716MV310_PERI_CRG51);
		val &= ~(0x1 << 1);
		_writel(val, HI3716MV310_PERI_CRG51);
	} else {
		/* LDO output 1.2V */
		_writel(0xf, HIETH_FEPHY_LDO_CTRL);

		/* FEPHY enable clock */
		val = _readl(HI3716MV310_PERI_CRG73);
		val |= (1);
		_writel(val, HIETHPHY_SYSREG_REG);

		/* set FEPHY address */
		val = _readl(HI3716MV310_PERI_FEPHY);
		val &= ~(0x1F);
		val |= (U_PHY_ADDR & 0x1F);
		_writel(val, HI3716MV310_PERI_FEPHY);

		/* FEPHY set reset */
		val = _readl(HIETHPHY_SYSREG_REG);
		val |= (1 << 4);
		_writel(val, HIETHPHY_SYSREG_REG);

		udelay(10);

		/* FEPHY cancel reset */
		val = _readl(HIETHPHY_SYSREG_REG);
		val &= ~(1 << 4);
		_writel(val, HIETHPHY_SYSREG_REG);
	}

	udelay(20000);
}

static void hieth_phy_reset(void)
{
	if (_HI3716M_V330 != get_chipid()) 
		hieth_external_phy_reset();

	hieth_internal_phy_reset();
}

static void hieth_funsel_config(void)
{
}

static void hieth_funsel_restore(void)
{
}

#endif /*CONFIG_NET_HISFV300_GODBOX */
