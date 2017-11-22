#include <asm/io.h>
#include <common.h>

#define PERI_USB0                 (0x10200000 + 0x28)
#  define WORDINTERFACE           (1 << 0)
#  define ULPI_BYPASS_EN          (1 << 3)
#  define SS_BURST_OK             (1 << 6)
#  define SS_BURST4_EN            (1 << 7)
#  define SS_BURST8_EN            (1 << 8)
#  define SS_BURST16_EN           (1 << 9)
#  define USB_DEVICE_EN           (1 << 28)

#define PERI_USB1               (0x10200000 + 0x2c)
#  define VBUSVLDEXT          (1 << 24)
#  define VBUSVLDEXTSEL          (1 << 25)

#define PERI_CRG36              (0x101F5000 + 0xd0)

#define PERI_USB3               (0x10200000 + 0x34)
#define USBPHY0_CLK_TEST        (1 << 24)
#define USBPHY1_CLK_TEST        (1 << 25)


/*****************************for Hi3716x***************************************/
#  define USB_CKEN                (1 << 8)
#  define USB_CTRL_UTMI1_REG      (1 << 6)
#  define USB_CTRL_UTMI0_REG      (1 << 5)
#  define USB_CTRL_HUB_REG        (1 << 4)
#  define USBPHY_PORT1_TREQ       (1 << 3)
#  define USBPHY_PORT0_TREQ       (1 << 2)
#  define USBPHY_REQ              (1 << 1)
#  define USB_AHB_SRST_REQ        (1 << 0)

extern const int get_cpuver(char **ver);

void udc_start(void)
{
	int reg,i;
	int timeout;

	reg = readl(PERI_USB0);
	reg |= ULPI_BYPASS_EN;
	reg |= USB_DEVICE_EN;
	reg &= ~(WORDINTERFACE);
	reg &= ~(SS_BURST16_EN);
	writel(reg, PERI_USB0);
	udelay(100);

	reg = readl(PERI_USB1);
	reg |= VBUSVLDEXT;
	reg |= VBUSVLDEXTSEL;
	writel(reg, PERI_USB1);
	udelay(100);

	reg = readl(PERI_CRG36);
	reg |= HI3712_USB_BRG_CKEN;
	reg |= HI3712_USB_OTG_CKEN;
	reg |= HI3712_USB_HOST_CKEN;
	reg |= HI3712_USB1_CKEN;
	reg |= HI3712_USB0_CKEN;
	writel(reg, PERI_CRG36);
	udelay(100);

	timeout = 0x10;

	do {
			reg = readl(HI3712_PERI_CRG36);
			reg |= HI3712_USBPHY0_REQ;
			reg |= HI3712_USBPHY1_REQ;
			writel(reg, HI3712_PERI_CRG36);
			udelay(100);
			reg &= ~(HI3712_USBPHY0_REQ);
			reg &= ~(HI3712_USBPHY1_REQ);
			writel(reg, HI3712_PERI_CRG36);
			udelay(100);

			reg = readl(HI3712_PERI_USB3);

			if (reg & HI3712_USBPHY0_CLK_TEST)
					timeout = -1;

	} while (timeout-- > 0);

	if (!timeout) {
			DBG_BUG(("Usb phy initialize timeout.\n"));
	}

	reg = readl(PERI_CRG36);
	reg &= ~(HI3712_USB_BRG_SRST_REQ);
	reg &= ~(HI3712_UTMI1_HOST_REQ);
	reg &= ~(HI3712_UTMI0_HOST_REQ);
	reg &= ~(HI3712_USBPHY1_TREQ);
	reg &= ~(HI3712_USBPHY0_TREQ);
	reg &= ~(HI3712_USB_OTG_REQ);
	reg &= ~(HI3712_USB_HOST_REQ);
	reg &= ~(HI3712_USB_OTG_SRST_REQ);
	reg &= ~(HI3712_USB_HOST_SRST_REQ);
	writel(reg, PERI_CRG36);
	udelay(100);

}

void udc_disconnect(void)
{
	int reg,i;
	int timeout;

	reg = readl(PERI_USB0);
	reg |= ULPI_BYPASS_EN;
	reg &= ~USB_DEVICE_EN;
	reg &= ~(WORDINTERFACE);
	reg &= ~(SS_BURST16_EN);
	writel(reg, PERI_USB0);
	udelay(100);

	reg = readl(PERI_USB1);
	reg &= ~VBUSVLDEXT;
	reg &= ~VBUSVLDEXTSEL;
	writel(reg, PERI_USB1);
	udelay(100);
	
	reg = readl(PERI_CRG36);
	reg |= HI3712_USB_BRG_CKEN;
	reg |= HI3712_USB_OTG_CKEN;
	reg |= HI3712_USB_HOST_CKEN;
	reg |= HI3712_USB1_CKEN;
	reg |= HI3712_USB0_CKEN;
	writel(reg, PERI_CRG36);
	udelay(100);

	timeout = 0x10;

	do {
			reg = readl(HI3712_PERI_CRG36);
			reg |= HI3712_USBPHY0_REQ;
			reg |= HI3712_USBPHY1_REQ;
			writel(reg, HI3712_PERI_CRG36);
			udelay(100);
			reg &= ~(HI3712_USBPHY0_REQ);
			reg &= ~(HI3712_USBPHY1_REQ);
			writel(reg, HI3712_PERI_CRG36);
			udelay(100);

			reg = readl(HI3712_PERI_USB3);
			if (reg & HI3712_USBPHY0_CLK_TEST)
					timeout = -1;

	} while (timeout-- > 0);

	if (!timeout) {
			DBG_BUG(("Usb phy initialize timeout.\n"));
	}

	reg = readl(PERI_CRG36);
	reg &= ~(HI3712_USB_BRG_SRST_REQ);
	reg &= ~(HI3712_UTMI1_HOST_REQ);
	reg &= ~(HI3712_UTMI0_HOST_REQ);
	reg &= ~(HI3712_USBPHY1_TREQ);
	reg &= ~(HI3712_USBPHY0_TREQ);
	reg &= ~(HI3712_USB_OTG_REQ);
	reg &= ~(HI3712_USB_HOST_REQ);
	reg &= ~(HI3712_USB_OTG_SRST_REQ);
	reg &= ~(HI3712_USB_HOST_SRST_REQ);
	writel(reg, PERI_CRG36);
	udelay(100);

}

