#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/pm.h>
#include <linux/suspend.h>
#include <asm/memory.h>
#include <mach/early-debug.h>
#include <linux/delay.h>
#include <linux/suspend.h>
#include <linux/syscalls.h>
#include <asm/mach/time.h>
#include <linux/slab.h>
#include <asm/hardware/arm_timer.h>
#include <linux/kmemleak.h>
#include <linux/device.h>
#include <linux/irqchip/arm-gic.h>
#include <mach/hardware.h>

#include "l2cache.h"

void __iomem *hi_sc_virtbase;
void __iomem *hi_scu_virtbase;

/*ddr address for save cpu context*/
extern unsigned int hi_pm_ddrbase;
extern unsigned int hi_pm_phybase;
#define PM_CTX_BUF_SIZE  (1024) /*size of saved context*/

unsigned long saved_interrupt_mask[128];
unsigned long saved_cpu_target_mask[128];

asmlinkage void hi_pm_sleep(void);

extern void __iomem *hi3716mv310_gic_cpu_base_addr;
static void __iomem *gic_dist_virt_base_addr = IOMEM(CFG_GIC_DIST_BASE);
int (* ca_pm_suspend)(void) = NULL;
EXPORT_SYMBOL(ca_pm_suspend);

void do_ca_pm_suspend(void)
{
	if (ca_pm_suspend)
		ca_pm_suspend();

	// 打印告警信息
}

static int hi_pm_save_gic(void)
{
	unsigned int max_irq, i;
	unsigned int intack;

	/* disable gic dist */
	writel(0, gic_dist_virt_base_addr + GIC_DIST_CTRL);

	/*
	 * Find out how many interrupts are supported.
	 */
	max_irq = readl(gic_dist_virt_base_addr + GIC_DIST_CTR) & 0x1f;
	max_irq = (max_irq + 1) * 32;

	/*
	 * The GIC only supports up to 1020 interrupt sources.
	 * Limit this to either the architected maximum, or the
	 * platform maximum.
	 */
	max_irq = max_t(unsigned int, max_irq, max(1020, NR_IRQS));

	/* save Dist target */
	for (i = 32; i < max_irq; i += 4) {
		saved_cpu_target_mask[i / 4] =
		    readl(gic_dist_virt_base_addr + GIC_DIST_TARGET + i * 4 / 4);
	}

	/* save mask irq */
	for (i = 0; i < max_irq; i += 32) {
		saved_interrupt_mask[i / 32] =
		    readl(gic_dist_virt_base_addr + GIC_DIST_ENABLE_SET +
			  i * 4 / 32);
	}

	/* clear all interrupt */
	for (i = 0; i < max_irq; i += 32) {
		writel(0xffffffff,
		       gic_dist_virt_base_addr + GIC_DIST_ENABLE_CLEAR + i * 4 / 32);
	}

	/* read INT_ACK in CPU interface, until result is 1023 */
	for (i = 0; i < max_irq; i++) {
		intack = readl(hi3716mv310_gic_cpu_base_addr + 0x0c);
		if (1023 == intack) {
			break;
		}
		writel(intack, hi3716mv310_gic_cpu_base_addr + 0x10);
	}

	return 0;
}

static int hi_pm_retore_gic(void)
{
	unsigned int max_irq, i;

	/* PRINT OUT the GIC Status */
	unsigned int irq_status[5];

	for (i = 0; i < 5; i++) {
		irq_status[i] = readl(gic_dist_virt_base_addr + 0xd00 + i * 4);
	}

	writel(0, gic_dist_virt_base_addr + GIC_DIST_CTRL);
	writel(0, hi3716mv310_gic_cpu_base_addr + GIC_CPU_CTRL);

	/*
	 * Find out how many interrupts are supported.
	 */
	max_irq = readl(gic_dist_virt_base_addr + GIC_DIST_CTR) & 0x1f;
	max_irq = (max_irq + 1) * 32;

	/*
	 * The GIC only supports up to 1020 interrupt sources.
	 * Limit this to either the architected maximum, or the
	 * platform maximum.
	 */
	max_irq = max_t(unsigned int, max_irq, max(1020, NR_IRQS));

	/*
	 * Set all global interrupts to be level triggered, active low.
	 */
	for (i = 32; i < max_irq; i += 16) {
		writel(0, gic_dist_virt_base_addr + GIC_DIST_CONFIG + i * 4 / 16);
	}

	/*
	 * Set all global interrupts to this CPU only.
	 */
	for (i = 32; i < max_irq; i += 4) {
		writel(saved_cpu_target_mask[i / 4],
		       gic_dist_virt_base_addr + GIC_DIST_TARGET + i * 4 / 4);
	}

	/*
	 * Set priority on all interrupts.
	 */
	for (i = 0; i < max_irq; i += 4) {
		writel(0xa0a0a0a0,
		       gic_dist_virt_base_addr + GIC_DIST_PRI + i * 4 / 4);
	}

	/*
	 * Disable all interrupts.
	 */
	for (i = 0; i < max_irq; i += 32) {
		writel(0xffffffff,
		       gic_dist_virt_base_addr + GIC_DIST_ENABLE_CLEAR + i * 4 / 32);
	}

	for (i = 0; i < max_irq; i += 32) {
		writel(saved_interrupt_mask[i / 32],
		       gic_dist_virt_base_addr + GIC_DIST_ENABLE_SET + i * 4 / 32);
	}

	writel(1, gic_dist_virt_base_addr + GIC_DIST_CTRL);

	/* set the BASE priority 0xf0 */
	writel(0xf0, hi3716mv310_gic_cpu_base_addr + GIC_CPU_PRIMASK);

	writel(1, hi3716mv310_gic_cpu_base_addr + GIC_CPU_CTRL);

	return 0;
}
/*****************************************************************************/

static int hi_pm_suspend(void)
{
	/* int ret = 0; */
	unsigned long flage = 0;

	/* disable irq */
	local_irq_save(flage);

	/* save gic */
	hi_pm_save_gic();

	hi_pm_disable_l2cache();

	hi_pm_sleep();


	hi_pm_enable_l2cache();

	/* restore gic */
	hi_pm_retore_gic();

	/* enable irq */
	local_irq_restore(flage);

	return 0;
}

static int hi_pm_enter(suspend_state_t state)
{
	int ret = 0;
	switch (state) {
	case PM_SUSPEND_STANDBY:
	case PM_SUSPEND_MEM:
		ret = hi_pm_suspend();
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}

int hi_pm_valid(suspend_state_t state)
{
	return 1;
}

static const struct platform_suspend_ops hi_pm_ops = {
	.enter = hi_pm_enter,
	.valid = hi_pm_valid,
};
/*****************************************************************************/

unsigned long hi3716mv310_io_address(unsigned long x)
{
	return ((x >= HI3716MV310_IOCH6_PHYS) ? ((x) + IO_OFFSET_LOW) : (__IO_ADDRESS(x)));
}
/*****************************************************************************/

extern unsigned long scureg_base;
static int __init hi_pm_init(void)
{
	hi_sc_virtbase = (void __iomem *)IO_ADDRESS(REG_BASE_SCTL);
	scureg_base = IO_ADDRESS(REG_BASE_A9_PERI + REG_A9_PERI_SCU);

	hi_pm_ddrbase =
	    (unsigned int)kzalloc((PM_CTX_BUF_SIZE), GFP_DMA | GFP_KERNEL);
	hi_pm_phybase = __pa(hi_pm_ddrbase);
	/*
	 * Because hi_pm_ddrbase is saved in .text of hi_pm_sleep.S, the kmemleak,
	 * which not check the .text, reports a mem leak here ,
	 * so we suppress kmemleak messages.
	 */
	kmemleak_not_leak((void *)hi_pm_ddrbase);

	suspend_set_ops(&hi_pm_ops);

	return 0;
}

module_init(hi_pm_init);
