#include <include/asm/io.h>

#define HIUSBUDC_REG_BASE_ADDRESS_LEN 0x40000
#define CONFIG_HIUSBUDC_IRQ_NUMBER     100

#define PERI_CRG46             (0xF8A22000 + 0xb8)
#define USB2_BUS_CKEN      (1<<0)
#define USB2_OHCI48M_CKEN  (1<<1)
#define USB2_OHCI12M_CKEN  (1<<2)
#define USB2_OTG_UTMI_CKEN      (1<<3)
#define USB2_HST_PHY_CKEN     (1<<4)
#define USB2_UTMI0_CKEN      (1<<5)
#define USB2_UTMI1_CKEN      (1<<6)
#define USB2_UTMI2_CKEN      (1<<7)
#define USB2_ADP_CKEN      (1<<8)
#define USB2_BUS_SRST_REQ      (1<<12)
#define USB2_UTMI0_SRST_REQ      (1<<13)
#define USB2_UTMI1_SRST_REQ     (1<<14)
#define USB2_UTMI2_SRST_REQ     (1<<15)
#define USB2_HST_PHY_SYST_REQ      (1<<16)
#define USB2_OTG_PHY_SRST_REQ     (1<<17)
#define USB2_ADP_SRST_REQ     (1<<18)


#define PERI_CRG47             (0xF8A22000 + 0xbc)
#define USB_PHY0_REF_CKEN		(1 << 0)
#define USB_PHY1_REF_CKEN		(1 << 1)
#define USB_PHY2_REF_CKEN	(1 << 2)
#define USB_PHY0_SRST_REQ	(1 << 8)
#define USB_PHY0_SRST_TREQ	(1 << 9)
#define USB_PHY1_SRST_REQ	(1 << 10)
#define USB_PHY1_SRST_TREQ		(1 << 11)
#define USB_PHY2_SRST_REQ	(1 << 12)
#define USB_PHY2_SRST_TREQ	(1 << 13)
#define USB_PHY0_REFCLK_SEL	(1 << 16)
#define USB_PHY1_REFCLK_SEL	(1 << 17)
#define USB_PHY2_REFCLK_SEL	(1 << 18)


#define PERI_USB0              (0xF8A20000 + 0x120)
#define WORDINTERFACE		(1 << 0)
#define	ULPI_BYPASS_EN_PORT0          (1 << 3)
#define	ULPI_BYPASS_EN_PORT1_2      (1 << 4)
#define	SS_BURST4_EN		(1 << 7)
#define	SS_BURST8_EN		(1 << 8)
#define	SS_BURST16_EN		(1 << 9)
#define	USB_DEVICE_EN		(1 << 28)

void udc_start(void)
{
	int reg;

	reg = readl(PERI_CRG46);
	reg |=(USB2_BUS_SRST_REQ|USB2_UTMI0_SRST_REQ |USB2_UTMI1_SRST_REQ
	|USB2_UTMI2_SRST_REQ |USB2_HST_PHY_SYST_REQ |USB2_OTG_PHY_SRST_REQ);
	writel(reg,PERI_CRG46);
	udelay(200);

	reg = readl(PERI_CRG47);
	reg |=(USB_PHY0_SRST_REQ|USB_PHY1_SRST_REQ|USB_PHY2_SRST_REQ
	|USB_PHY0_SRST_TREQ|USB_PHY1_SRST_TREQ|USB_PHY2_SRST_TREQ);
	writel(reg,PERI_CRG47);
	udelay(200);

#ifdef CONFIG_S40_FPGA 
	reg = readl(PERI_USB0);
	reg |= ULPI_BYPASS_EN_PORT0;
	reg |= (WORDINTERFACE);
	reg &= ~(SS_BURST16_EN);
	reg |=USB_DEVICE_EN;
	writel(reg,PERI_USB0);
	udelay(100);
#else
	reg = readl(PERI_USB0);
	reg |= ULPI_BYPASS_EN_PORT0;
	reg &= ~(WORDINTERFACE);   /* UTMI 8 bit */
	reg &= ~(SS_BURST16_EN);
	reg |= USB_DEVICE_EN;
	writel( reg,PERI_USB0);
	udelay(100);
#endif

	reg = readl(PERI_CRG47);
	reg &=~(USB_PHY0_SRST_REQ|USB_PHY1_SRST_REQ|USB_PHY2_SRST_REQ);
	writel(reg,PERI_CRG47);
	udelay(300);

	reg = readl(PERI_CRG47);
	reg &=~(USB_PHY0_SRST_TREQ|USB_PHY1_SRST_TREQ|USB_PHY2_SRST_TREQ);
	reg |= (USB_PHY0_REFCLK_SEL
		| USB_PHY1_REFCLK_SEL
		| USB_PHY2_REFCLK_SEL
		| USB_PHY0_REF_CKEN
		| USB_PHY1_REF_CKEN
		| USB_PHY2_REF_CKEN);
	writel(reg,PERI_CRG47);
	udelay(300);

	reg = readl(PERI_CRG46);
	reg &=~(USB2_BUS_SRST_REQ|USB2_UTMI0_SRST_REQ |USB2_UTMI1_SRST_REQ
	|USB2_UTMI2_SRST_REQ |USB2_HST_PHY_SYST_REQ |USB2_OTG_PHY_SRST_REQ);
	reg |= (USB2_BUS_CKEN
		| USB2_OHCI48M_CKEN
		| USB2_OHCI12M_CKEN
		| USB2_OTG_UTMI_CKEN
		| USB2_HST_PHY_CKEN
		| USB2_UTMI0_CKEN
		| USB2_UTMI1_CKEN
		| USB2_UTMI2_CKEN
		| USB2_ADP_CKEN);
	writel(reg,PERI_CRG46);
	udelay(200);
}

void udc_disconnect(void)
{
	int reg;

	/* reset all */
	reg = readl(PERI_CRG46);
	reg |=(USB2_BUS_SRST_REQ|USB2_UTMI0_SRST_REQ |USB2_UTMI1_SRST_REQ
	|USB2_UTMI2_SRST_REQ |USB2_HST_PHY_SYST_REQ |USB2_OTG_PHY_SRST_REQ);
	writel(reg,PERI_CRG46);
	udelay(200);

	reg = readl(PERI_CRG47);
	reg |=(USB_PHY0_SRST_REQ|USB_PHY1_SRST_REQ|USB_PHY2_SRST_REQ
	|USB_PHY0_SRST_TREQ|USB_PHY1_SRST_TREQ|USB_PHY2_SRST_TREQ);
	writel(reg,PERI_CRG47);
	udelay(200);

	/* usb_mux goto host */
	reg = readl(PERI_USB0);
	reg &= ~USB_DEVICE_EN;
	writel(reg,PERI_USB0);
	udelay(100);

}
