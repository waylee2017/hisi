#include <linux/init.h>
#include <linux/device.h>
#include <linux/dma-mapping.h>
#include <linux/platform_device.h>
#include <linux/interrupt.h>
#include <linux/amba/bus.h>
#include <linux/amba/clcd.h>
#include <linux/clocksource.h>
#include <linux/clockchips.h>
#include <linux/cnt32_to_63.h>
#include <linux/io.h>
#include <linux/clkdev.h>
#include <asm/system.h>
#include <asm/irq.h>
#include <asm/hardware/arm_timer.h>
#include <asm/mach-types.h>

#include <asm/mach/arch.h>
#include <asm/mach/flash.h>
#include <asm/mach/irq.h>
#include <asm/mach/time.h>
#include <asm/mach/map.h>
#include <asm/sched_clock.h>
#include <mach/hardware.h>
#include <mach/early-debug.h>
#include <mach/irqs.h>
#include <linux/irqchip/arm-gic.h>
#include "mach/clock.h"

#include <linux/bootmem.h>
#include <mach/cpu-info.h>
#include <mach/system.h>
#include <linux/delay.h>
#include <asm/smp_twd.h>
#include <linux/memblock.h>
#include <linux/tags.h>
#include <mach/cpu.h>
extern int hisi_declare_heap_memory(void);

void __iomem *hi3716mv310_gic_cpu_base_addr = IOMEM(CFG_GIC_CPU_BASE);

/*****************************************************************************/

void __init hi3716mv310_gic_init_irq(void)
{
	edb_trace();
	gic_init(0, HISI_GIC_IRQ_START,
		(void __iomem *) CFG_GIC_DIST_BASE,
		(void __iomem *) CFG_GIC_CPU_BASE);
}
/*****************************************************************************/

static struct map_desc hi3716mv310_io_desc[] __initdata = {
	/* HI3716MV310_IOCH0 */
	{
		.virtual	= HI3716MV310_IOCH0_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH0_PHYS),
		.length		= HI3716MV310_IOCH0_SIZE,
		.type		= MT_DEVICE
	},

	/* HI3716MV310_IOCH1 */
	{
		.virtual	= HI3716MV310_IOCH1_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH1_PHYS),
		.length		= HI3716MV310_IOCH1_SIZE,
		.type		= MT_DEVICE
	},
	/* HI3716MV310_IOCH2 */
	{
		.virtual	= HI3716MV310_IOCH2_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH2_PHYS),
		.length		= HI3716MV310_IOCH2_SIZE,
		.type		= MT_DEVICE
	},
	/* HI3716MV310_IOCH3 */
	{
		.virtual	= HI3716MV310_IOCH3_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH3_PHYS),
		.length		= HI3716MV310_IOCH3_SIZE,
		.type		= MT_DEVICE
	},
	/* HI3716MV310_IOCH4 */
	{
		.virtual	= HI3716MV310_IOCH4_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH4_PHYS),
		.length		= HI3716MV310_IOCH4_SIZE,
		.type		= MT_DEVICE
	},
	/* HI3716MV310_IOCH5 L2 cache area */
	{
		.virtual	= HI3716MV310_IOCH5_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH5_PHYS),
		.length		= HI3716MV310_IOCH5_SIZE,
		.type		= MT_DEVICE // TODO: XXX
	},
	/* HI3716MV310_IOCH6 */
	{
		.virtual	= HI3716MV310_IOCH6_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH6_PHYS),
		.length		= HI3716MV310_IOCH6_SIZE,
		.type		= MT_DEVICE
	},
	/* HI3716MV310_IOCH7 */
	{
		.virtual	= HI3716MV310_IOCH7_VIRT,
		.pfn		= __phys_to_pfn(HI3716MV310_IOCH7_PHYS),
		.length		= HI3716MV310_IOCH7_SIZE,
		.type		= MT_DEVICE
	}
};
/*****************************************************************************/

int pdm_read_item(char *str, char **name, char *param[], int nr_param)
{
	int ix;

	*name = str;
	while (*str && *str != '=')
		str++;
	if (*str != '=')
		return -1;
	*str++ = '\0';

	if (!*str)
		return 0;

	for (ix = 0; ix < nr_param; ix++) {
		param[ix] = str;
		while (*str && *str != ',')
			str++;
		if (!*str)
			return ix+1;
		*str++ = '\0';
	}

	return -2;
}
/*
 * pdm_tag format:
 * version=1.0.0.0 baseparam=0x86000000,0x1000,nosnapshot logdata=0x870000000,0x2000
 */
void __init pdm_reserve_mem(void)
{
	char pdm_tag[512];
	int  taglen;
	char *phead, *ptail;
	unsigned int phyaddr = 0;
	unsigned int addrlen = 0;
	int ret = -EINVAL;
	char *name;
	char *param[3];
	int snapshot;

	memset(pdm_tag, 0x0, sizeof(pdm_tag));
	taglen = get_param_data("pdm_tag", pdm_tag, sizeof(pdm_tag));
	if (taglen <= 0)
		return;

	if (taglen >= sizeof(pdm_tag))
		goto error;

	for (phead = pdm_tag; phead < pdm_tag + taglen; phead = ptail + 1) {
		ptail = phead;
		while (ptail < (pdm_tag + taglen) && *ptail != ' ' && *ptail != '\0')
			ptail++;
		if (!*ptail)
			ptail = pdm_tag + taglen;
		else
			*ptail = '\0';

		ret = pdm_read_item(phead, &name, param, 3);
		if (ret <= 0)
			goto error;

		if (ret >= 2) {
			phyaddr = simple_strtoul(param[0], NULL, 16);
			addrlen = simple_strtoul(param[1], NULL, 16);
		}

		snapshot = 1;
		if (ret >= 3) {
			if (!strncmp(param[2], "nosnapshot", 10))
				snapshot = 0;
		}

		printk(KERN_DEBUG "name:%s, phyaddr:0x%08x, addrlen:0x%08x, snapshot:%d\n",
		       name, phyaddr, addrlen, snapshot);

		if (!strncmp(name, "version", 7))
			continue;

		if (ret < 2)
			goto error;

		if (phyaddr & (SZ_4K - 1))
			goto error;

		if (addrlen & (SZ_4K - 1))
			goto error;

		ret = memblock_reserve(phyaddr, addrlen);
		if (ret)
			goto error;
	}

	return;
error:
	printk(KERN_ERR "Invalid PDM tag, errno:%d\n", ret);
}

/*release reserve memory*/
int pdm_free_reserve_mem(u32 phyaddr, u32 size)
{
	u32  pfn_start;
	u32  pfn_end;
	u32  pages = 0;

	pfn_start = __phys_to_pfn(phyaddr);
	pfn_end   = __phys_to_pfn(phyaddr + size);

	for (; pfn_start < pfn_end; pfn_start++) {
		struct page *page = pfn_to_page(pfn_start);
		ClearPageReserved(page);
		init_page_count(page);
		__free_page(page);
		pages++;
	}

	totalram_pages += pages;

	return 0;
}
EXPORT_SYMBOL(pdm_free_reserve_mem);
/*****************************************************************************/

void __init hi3716mv310_map_io(void)
{
	int i;

	iotable_init(hi3716mv310_io_desc, ARRAY_SIZE(hi3716mv310_io_desc));

	for (i = 0; i < ARRAY_SIZE(hi3716mv310_io_desc); i++) {
		edb_putstr(" V: ");	edb_puthex(hi3716mv310_io_desc[i].virtual);
		edb_putstr(" P: ");	edb_puthex(hi3716mv310_io_desc[i].pfn);
		edb_putstr(" S: ");	edb_puthex(hi3716mv310_io_desc[i].length);
		edb_putstr(" T: ");	edb_putul(hi3716mv310_io_desc[i].type);
		edb_putstr("\n");
	}

	edb_trace();
}
/*****************************************************************************/

#define HIL_AMBADEV_NAME(name) hil_ambadevice_##name

#define HIL_AMBA_DEVICE(name, busid, base, platdata)		\
static struct amba_device HIL_AMBADEV_NAME(name) =		\
{								\
	.dev		= {					\
		.coherent_dma_mask = ~0,			\
		.init_name = busid,				\
		.platform_data = platdata,			\
	},							\
	.res		= {					\
		.start	= REG_BASE_##base,			\
		.end	= REG_BASE_##base + 0x1000 - 1,		\
		.flags	= IORESOURCE_IO,			\
	},							\
	.dma_mask	= ~0,					\
	.irq		= { INTNR_##base, INTNR_##base }	\
}

HIL_AMBA_DEVICE(uart0, "uart:0",  UART0,    NULL);
HIL_AMBA_DEVICE(uart1, "uart:1",  UART1,    NULL);

static struct amba_device *amba_devs[] __initdata = {
	&HIL_AMBADEV_NAME(uart0),
	&HIL_AMBADEV_NAME(uart1),
};

/*
 * These are fixed clocks.
 */

static struct clk sp804_clk = {
	.rate	= 24000000, /* TODO: XXX */
};

static struct clk_lookup lookups[] = {
	{ /* SP804 timers */
		.dev_id		= "sp804",
		.clk		= &sp804_clk,
	},
};
/*****************************************************************************/

static void __init hi3716mv310_reserve(void)
{
	/* Reserve memory for PDM modoule*/
	pdm_reserve_mem();

	hisi_declare_heap_memory();
}
/*****************************************************************************/

void __init hi3716mv310_init(void)
{
	unsigned long i;

	edb_trace();
	for (i = 0; i < ARRAY_SIZE(amba_devs); i++) {
		edb_trace();
		amba_device_register(amba_devs[i], &iomem_resource);
	}

}
/*****************************************************************************/

static void hi3716mv310_init_early(void)
{
	clkdev_add_table(lookups, ARRAY_SIZE(lookups));

	arch_cpu_init();

	edb_trace();
}
/*****************************************************************************/

void hi3716mv310_restart(char mode, const char *cmd)
{
	unsigned int val;

	printk(KERN_INFO "CPU will restart.");

	mdelay(200);

	local_irq_disable();
	/* enable the wdg0 crg clock */
	val = readl(__io_address(REG_BASE_CRG + REG_PERI_CRG94));
	val &= ~(1<<4);
	val |= 1;
	writel(val, __io_address(REG_BASE_CRG + REG_PERI_CRG94));
	udelay(1);

	/* unclock wdg */
	writel(0x1ACCE551,  __io_address(REG_BASE_WDG0 + 0xc00));
	/* wdg load value */
	writel(0x00000100,  __io_address(REG_BASE_WDG0 + 0x0));
	/* bit0: int enable bit1: reboot enable */
	writel(0x00000003,  __io_address(REG_BASE_WDG0 + 0x8));

	while (1);

	BUG();
}
/*****************************************************************************/
extern void __init hi3716mv310_timer_init(void);

MACHINE_START(HI3716MV310, "hi3716mv310")
	.atag_offset    = 0x100,
	.map_io         = hi3716mv310_map_io,
	.init_early     = hi3716mv310_init_early,
	.init_irq       = hi3716mv310_gic_init_irq,
	.init_time      = hi3716mv310_timer_init,
	.init_machine   = hi3716mv310_init,
	.reserve        = hi3716mv310_reserve,
	.restart        = hi3716mv310_restart,
MACHINE_END
