#ifdef CONFIG_ARCH_HI3716MV310

#include <mach/cpu-info.h>
#include "hieth.h"
#include "mdio.h"
#include "mac.h"
#include "ctrl.h"
#include "glb.h"

#define HIETH_SYSREG_BASE               ((void __iomem *)IO_ADDRESS(0x101F5000))
#define HIETH_SYSREG_REG                0x00CC
#define HIETHPHY_SYSREG_REG             0x0120
#define HIETH_SF_SRST_REQ_BIT           5
#define HIETH_SF_BUS_SRST_REQ_BIT       4

#define INTERNAL_FEPHY_ADDR             ((void __iomem *)IO_ADDRESS(0x10200118))
#define HIETH_FEPHY_LDO_CTRL            ((void __iomem *)IO_ADDRESS(0x1020011c))

/* DEFAULT external phy reset pin */
#define HIETH_FEPHY_RST_BASE            ((void __iomem *)IO_ADDRESS(0x101F5168))
#define HIETH_FEPHY_RST_BIT             1

extern long long get_chipid(void);

extern struct hisf_gpio  hisf_gpio_up;
extern struct hisf_gpio  hisf_gpio_down;

static void hieth_set_regbit(void __iomem * addr, int bit, int shift)
{
	unsigned long reg;
	reg = readl(addr);
	bit = bit ? 1 : 0;
	reg &= ~(1<<shift);
	reg |= bit<<shift;
	writel(reg, addr);
}

static void hieth_reset(int rst)
{
	long long chipid = get_chipid();

	if (_HI3716M_V330 == chipid) {
		hieth_set_regbit(HIETH_SYSREG_BASE + HIETH_SYSREG_REG, rst, 14);
	} else {
		hieth_set_regbit(HIETH_SYSREG_BASE + HIETH_SYSREG_REG, rst, HIETH_SF_BUS_SRST_REQ_BIT);
		hieth_set_regbit(HIETH_SYSREG_BASE + HIETH_SYSREG_REG, rst, HIETH_SF_SRST_REQ_BIT);
	}
	udelay(100);
}

static inline void hieth_clk_ena(void)
{
	unsigned int val;
	long long chipid = get_chipid();

	/* SF */
	val = readl(HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
	if (_HI3716M_V330 == chipid) {
		val |= (0x3 << 12);
	} else {
		val |= (3 << 0);
		val |= (0xF << 12);
	}
	writel(val, HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
}

static inline void hieth_clk_dis(void)
{
	unsigned int val;
	long long chipid = get_chipid();

	/* SF */
	val = readl(HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
	if (_HI3716M_V330 == chipid) {
		val &= ~(0x3 << 12);
	} else {
		val &= ~(3 << 0);
		val &= ~(0xF << 12);
	}
	writel(val, HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
}

static void hieth_internal_phy_reset(void)
{
	unsigned int val;
	long long chipid = get_chipid();

	if (_HI3716M_V330 == chipid) {
		//writel(0xf, HIETH_FEPHY_LDO_CTRL);/* LDO output 1.2V */

		/* FEPHY enable clock */
		val = readl(HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
		val |= (0x1<<0);
		writel(val, HIETH_SYSREG_BASE + HIETH_SYSREG_REG);	

		/* set FEPHY address */
		val = readl(INTERNAL_FEPHY_ADDR);
		val &= ~(0x1F);
		val |= (hisf_phy_addr_up & 0x1F);
		writel(val, INTERNAL_FEPHY_ADDR);

		/* FEPHY set reset */
		val = readl(HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
		val |= (0x1 << 1);
		writel(val, HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
	
		udelay(10);

		/* FEPHY cancel reset */
		val = readl(HIETH_SYSREG_BASE + HIETH_SYSREG_REG);
		val &= ~(0x1 << 1);
		writel(val, HIETH_SYSREG_BASE + HIETH_SYSREG_REG);

	} else {
		writel(0xf, HIETH_FEPHY_LDO_CTRL);/* LDO output 1.2V */

		/* FEPHY enable clock */
		val = readl(HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);
		val |= (1);
		writel(val, HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);	

		/* set FEPHY address */
		val = readl(INTERNAL_FEPHY_ADDR);
		val &= ~(0x1F);
		val |= (hisf_phy_addr_up & 0x1F);
		writel(val, INTERNAL_FEPHY_ADDR);

		/* FEPHY set reset */
		val = readl(HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);
		val |= (1 << 4);
		writel(val, HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);
	
		udelay(10);

		/* FEPHY cancel reset */
		val = readl(HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);
		val &= ~(1 << 4);
		writel(val, HIETH_SYSREG_BASE + HIETHPHY_SYSREG_REG);
	}

	msleep(20); /* delay at least 15ms for MDIO operation */
}

void hieth_gpio_reset(void __iomem * gpio_base, u32 gpio_bit)
{
	u32 v;

#define RESET_DATA      (1)

	if (!gpio_base)
		return;

	gpio_base = (void __iomem *)IO_ADDRESS((unsigned int)gpio_base);

	/* config gpio[x] dir to output */
	v = readb(gpio_base + 0x400);
	v |= (1 << gpio_bit);
	writeb(v, gpio_base + 0x400);

	/* output 1--0--1 */
	writeb(RESET_DATA << gpio_bit,
			gpio_base + (4 << gpio_bit));
	msleep(10);
	writeb((!RESET_DATA) << gpio_bit,
			gpio_base + (4 << gpio_bit));
	msleep(10);
	writeb(RESET_DATA << gpio_bit,
			gpio_base + (4 << gpio_bit));
	msleep(10);
}

static void hieth_external_phy_reset(void)
{
	unsigned int val;

	/************************************************/
	/* reset external phy with default reset pin */
	val = readl(HIETH_FEPHY_RST_BASE);
	val |= (1 << HIETH_FEPHY_RST_BIT);
	writel(val, HIETH_FEPHY_RST_BASE);

	msleep(20);

	/* then, cancel reset, and should delay 200ms */
	val &= ~(1 << HIETH_FEPHY_RST_BIT);
	writel(val, HIETH_FEPHY_RST_BASE);

	msleep(20);
	val |=  1 << HIETH_FEPHY_RST_BIT;
	writel(val, HIETH_FEPHY_RST_BASE);

	/************************************************/
	/* reset external phy with gpio */
	hieth_gpio_reset(hisf_gpio_down.gpio_base,hisf_gpio_down.gpio_bit);

	/************************************************/

	/* add some delay in case mdio cann't access now! */
	msleep(30);

}

static void hieth_phy_suspend(void)
{
	/* FIXME: phy power down */
}

static void hieth_phy_resume(void)
{
	long long chipid = get_chipid();

	/* FIXME: phy power up */
	hieth_internal_phy_reset();

	if (_HI3716M_V330 != chipid) {
		hieth_external_phy_reset();
	}
}

static void hieth_funsel_config(void)
{
}

static void hieth_funsel_restore(void)
{
}

int hieth_port_reset(struct hieth_netdev_local *ld, int port)
{
	long long chipid = get_chipid();

	hieth_assert(port == ld->port);

	/*soft reset */
	if (chipid == _HI3712_V100) {
		hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
				  HI3712_BITS_ETH_SOFT_RESET);
		msleep(1);
		hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
				  HI3712_BITS_ETH_SOFT_RESET);
		msleep(1);
		hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
				  HI3712_BITS_ETH_SOFT_RESET);
		msleep(1);
		hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
				  HI3712_BITS_ETH_SOFT_RESET);
	} else {
		if (ld->port == UP_PORT) {
			/* Note: sf ip need reset twice */
			hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_UP);
			msleep(1);
			hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_UP);
			msleep(1);
			hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_UP);
			msleep(1);
			hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_UP);
		} else if (ld->port == DOWN_PORT) {

			/* Note: sf ip need reset twice */
			hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_DOWN);
			msleep(1);
			hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_DOWN);
			msleep(1);
			hieth_writel_bits(ld, 1, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_DOWN);
			msleep(1);
			hieth_writel_bits(ld, 0, GLB_SOFT_RESET,
					  BITS_ETH_SOFT_RESET_DOWN);
		} else
			BUG();
	}

	return 0;
}

#endif /*CONFIG_ARCH_HI3716MV310 */

/* vim: set ts=8 sw=8 tw=78: */
