#include <linux/init.h>
#include <linux/timer.h>
#include <linux/ktime.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <asm/byteorder.h>
#include <linux/io.h>
#include <asm/system.h>
#include <asm/unaligned.h>
#include <mach/cpu-info.h>
#include <mach/hardware.h>

#define PERI_CRG46                      __io_address(0x101F5000 + 0xb8)
#define USB2_BUS_CKEN                   (1<<0)
#define USB2_OHCI48M_CKEN               (1<<1)
#define USB2_OHCI12M_CKEN               (1<<2)
#define USB2_HST_PHY_CKEN               (1<<4)
#define USB2_UTMI0_CKEN                 (1<<5)
#define USB2_UTMI1_CKEN                 (1<<6)
#define USB2_OTG_UTMI_CKEN              (1<<7)
#define USB2_ADP_CKEN                   (1<<8)
#define USB2_BUS_SRST_REQ               (1<<12)
#define USB2_UTMI0_SRST_REQ             (1<<13)
#define USB2_UTMI1_SRST_REQ             (1<<14)
#define USB2_OTG_PHY_SRST_REQ           (1<<15)
#define USB2_HST_PHY_SYST_REQ           (1<<16)
#define USB2_ADP_SRST_REQ               (1<<18)


#define PERI_CRG47                      __io_address(0x101F5000 + 0xbc)
#define USB_PHY0_REF_CKEN               (1 << 0)
#define USB_PHY1_REF_CKEN               (1 << 1)
#define USB_PHY0_SRST_REQ               (1 << 8)
#define USB_PHY0_SRST_TREQ              (1 << 9)
#define USB_PHY_12M_SELECT             (1 << 10)
#define USB_PHY1_SRST_TREQ              (1 << 11)
#define USB_PHY0_REFCLK_SEL             (1 << 16)
#define USB_PHY1_REFCLK_SEL             (1 << 17)


#define PERI_USB0                       __io_address(0x10200000 + 0x120)
#define WORDINTERFACE                   (1 << 0)
#define ULPI_BYPASS_EN_PORT0            (1 << 3)
#define ULPI_BYPASS_EN_PORT1_2          (1 << 4)
#define SS_BURST4_EN                    (1 << 7)
#define SS_BURST8_EN                    (1 << 8)
#define SS_BURST16_EN                   (1 << 9)
#define DWC_OTG_EN                      (1 << 28)

#define PERI_USB1                       __io_address(0x10200000 + 0x124)
#define PHY0_SIDDQ_MASK                 ~(0x1 << 22)
#define PHY0_SIDDQ_VALUE                (0x1 << 22)
#define PERI_USB2                       __io_address(0x10200000 + 0x128)
#define PHY3_SIDDQ_MASK                 ~(0x1 << 22)
#define PHY3_SIDDQ_VALUE                (0x1 << 22)
#define PERI_USB4                       __io_address(0x10200000 + 0x130)

extern long long get_chipid(void);

static atomic_t dev_open_cnt = {
	.counter = 0,
};

void hiusb_start_hcd_hi3716mv310(void)
{
	long long chipid = get_chipid();

	if (atomic_add_return(1, &dev_open_cnt) == 1) {

		int reg;

		/* reset enable */
		reg = readl(PERI_CRG46);
		reg |= (USB2_BUS_SRST_REQ
			| USB2_UTMI0_SRST_REQ
			| USB2_UTMI1_SRST_REQ
			| USB2_HST_PHY_SYST_REQ
			| USB2_OTG_PHY_SRST_REQ);

		writel(reg, PERI_CRG46);
		udelay(200);

		reg = readl(PERI_CRG47);
		reg |= (USB_PHY0_SRST_REQ
			| USB_PHY_12M_SELECT
			| USB_PHY0_SRST_TREQ
			| USB_PHY1_SRST_TREQ);
		writel(reg, PERI_CRG47);
		udelay(200);

#ifdef  CONFIG_HI3716MV310_FPGA
		reg = readl(PERI_USB0);
		reg |= ULPI_BYPASS_EN_PORT0;     /* port0:UTMI 16bit */
		reg |= (WORDINTERFACE);          /*  port0 : 16bit*/
		reg &= ~(SS_BURST16_EN);
		writel(reg, PERI_USB0);
		udelay(100);
#else 
		reg = readl(PERI_USB0);
		reg |= ULPI_BYPASS_EN_PORT0;  /* 3 ports utmi */
		reg &= ~(WORDINTERFACE);      /* 8bit */
		reg &= ~(SS_BURST16_EN);      /* 16 bit burst disable */
		writel(reg, PERI_USB0);
		udelay(100);
#endif

		/* open phy ref clock */
		reg = readl(PERI_CRG47);
		reg |= (USB_PHY0_REF_CKEN | USB_PHY1_REF_CKEN);

		writel(reg, PERI_CRG47);
		udelay(300);

		/* cancel power on reset */
		reg = readl(PERI_CRG47);
		reg &= ~(USB_PHY0_SRST_REQ);
		writel(reg , PERI_CRG47);
		udelay(300);

		if (_HI3716M_V330 == chipid) {
			/* config phy clock */
			writel(0xA00604, PERI_USB1);
			writel(0xE00604, PERI_USB1);
			writel(0xA00604, PERI_USB1);
			mdelay(3);
			/* config comp mode 0,port0 0x1e[2:0]=3'b100 */
			writel(0xA01E06, PERI_USB1);
			writel(0xE01E06, PERI_USB1);
			writel(0xA01E06, PERI_USB1);
			udelay(20);
			/* config EMI port0 and port1 0x11[6:5]=2'b10 */
			writel(0xA01141, PERI_USB1);
			writel(0xE01141, PERI_USB1);
			writel(0xA01141, PERI_USB1);
			udelay(20);
			writel(0xA11141, PERI_USB1);
			writel(0xE11141, PERI_USB1);
			writel(0xA11141, PERI_USB1);
			udelay(20);
			/* config EOP pre-emphasis off, Non-Chirp pre-emphasis on, 0x0[2:0]=3'b100 */
			writel(0xA0001c, PERI_USB1);
			writel(0xE0001c, PERI_USB1);
			writel(0xA0001c, PERI_USB1);
			udelay(20);
			writel(0xA1001c, PERI_USB1);
			writel(0xE1001c, PERI_USB1);
			writel(0xA1001c, PERI_USB1);
			udelay(20);
			/* weaken pre-emphasis strength, 0x9[5:3]=3'b000 */
			writel(0xA00904, PERI_USB1);
			writel(0xE00904, PERI_USB1);
			writel(0xA00904, PERI_USB1);
			udelay(20);
			writel(0xA10904, PERI_USB1);
			writel(0xE10904, PERI_USB1);
			writel(0xA10904, PERI_USB1);
			mdelay(1);
		} else {
			/* config phy clock */
			writel(0xa60c, PERI_USB1);
			writel(0xe60c, PERI_USB1);
			writel(0xa60c, PERI_USB1);
			mdelay(5);

			/* improve eye diagram & disconnect param for MV310/MV320/3110EV500 -ludeng */
			/* EOP closed and disconnect  threshold value 625mv */
			writel(0xA018, PERI_USB1);
			writel(0xE018, PERI_USB1);
			writel(0xA018, PERI_USB1);
			udelay(5);
			writel(0xB018, PERI_USB1);
			writel(0xF018, PERI_USB1);
			writel(0xB018, PERI_USB1);
			udelay(5);
			writel(0xA16e, PERI_USB1);
			writel(0xE16e, PERI_USB1);
			writel(0xA16e, PERI_USB1);
			udelay(5);
			writel(0xB16e, PERI_USB1);
			writel(0xF16e, PERI_USB1);
			writel(0xB16e, PERI_USB1);
			udelay(5);
			writel(0xA532, PERI_USB1);
			writel(0xE532, PERI_USB1);
			writel(0xA532, PERI_USB1);
			udelay(5);
			writel(0xB532, PERI_USB1);
			writel(0xF532, PERI_USB1);
			writel(0xB532, PERI_USB1);
			udelay(5);
			writel(0xA60f, PERI_USB1);
			writel(0xE60f, PERI_USB1);
			writel(0xA60f, PERI_USB1);
			udelay(5);
			writel(0xB60f, PERI_USB1);
			writel(0xF60f, PERI_USB1);
			writel(0xB60f, PERI_USB1);
			udelay(5);
			writel(0xA703, PERI_USB1);
			writel(0xE703, PERI_USB1);
			writel(0xA703, PERI_USB1);
			udelay(5);
			writel(0xB703, PERI_USB1);
			writel(0xF703, PERI_USB1);
			writel(0xB703, PERI_USB1);
			udelay(5);
			writel(0xA94C, PERI_USB1);
			writel(0xE94C, PERI_USB1);
			writel(0xA94C, PERI_USB1);
			udelay(5);
			writel(0xB94C, PERI_USB1);
			writel(0xF94C, PERI_USB1);
			writel(0xB94C, PERI_USB1);
			udelay(5);
			writel(0xAAD3, PERI_USB1);
			writel(0xEAD3, PERI_USB1);
			writel(0xAAD3, PERI_USB1);
			udelay(5);
			writel(0xBAD3, PERI_USB1);
			writel(0xFAD3, PERI_USB1);
			writel(0xBAD3, PERI_USB1);
			udelay(300);
		}
		/* cancel port reset */
		reg = readl(PERI_CRG47);
		reg &= ~USB_PHY1_SRST_TREQ;

		if (_HI3110E_V500 != chipid)
			reg &= ~USB_PHY0_SRST_TREQ;

		writel(reg, PERI_CRG47);
		udelay(300);

		/* cancel control reset */
		reg = readl(PERI_CRG46);
		reg &=~(USB2_BUS_SRST_REQ
			| USB2_UTMI1_SRST_REQ
			| USB2_HST_PHY_SYST_REQ
			| USB2_OTG_PHY_SRST_REQ);

		reg |= (USB2_BUS_CKEN
			| USB2_OHCI48M_CKEN
			| USB2_OHCI12M_CKEN
			| USB2_OTG_UTMI_CKEN
			| USB2_HST_PHY_CKEN
			| USB2_UTMI1_CKEN
			| USB2_ADP_CKEN);

		if (_HI3110E_V500 != chipid) {
			reg &= ~USB2_UTMI0_SRST_REQ;
			reg |= USB2_UTMI0_CKEN;
		}

		writel(reg, PERI_CRG46);
		udelay(200);
	}

	return;
}

void hiusb_stop_hcd_hi3716mv310(void)
{
	if (atomic_sub_return(1, &dev_open_cnt) == 0) {

		int reg;

		/* reset enable */
		reg = readl(PERI_CRG46);
		reg |= (USB2_BUS_SRST_REQ
			| USB2_UTMI0_SRST_REQ
			| USB2_UTMI1_SRST_REQ
			| USB2_HST_PHY_SYST_REQ
			| USB2_OTG_PHY_SRST_REQ);

		writel(reg, PERI_CRG46);
		udelay(200);

		reg = readl(PERI_CRG47);
		reg |=(USB_PHY0_SRST_REQ
			| USB_PHY0_SRST_TREQ
			| USB_PHY1_SRST_TREQ);
		writel(reg, PERI_CRG47);
		udelay(100);

		/* shutdown phy clock when suspend, modified by z00220289 */
		reg = readl(PERI_CRG46);
		reg &= ~(USB2_OHCI48M_CKEN
			| USB2_OHCI12M_CKEN
			| USB2_HST_PHY_CKEN
			| USB2_UTMI0_CKEN
			| USB2_OTG_UTMI_CKEN
			| USB2_UTMI1_CKEN);

		writel(reg, PERI_CRG46);
		udelay(200);
	}

}
