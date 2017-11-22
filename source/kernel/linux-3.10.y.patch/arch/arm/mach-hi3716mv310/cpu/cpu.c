/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-02-07
 *
******************************************************************************/

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/device.h>
#include <linux/string.h>
#include <linux/io.h>
#include <asm/bug.h>
#include <mach/hardware.h>
#include <mach/cpu.h>

/*****************************************************************************/

#ifdef CONFIG_HI3716MV310
extern struct cpu_info hi3716mv310_cpu_info;
extern struct cpu_info hi3716mv320_cpu_info;
extern struct cpu_info hi3716mv330_cpu_info;
extern struct cpu_info hi3110ev500_cpu_info;
#endif

static struct cpu_info *support_cpu_info[] = {
#ifdef CONFIG_HI3716MV310
	&hi3716mv310_cpu_info,
	&hi3716mv320_cpu_info,
	&hi3716mv330_cpu_info,
	&hi3110ev500_cpu_info,
#endif
	NULL,
};

static struct cpu_info *current_cpu_info = NULL;
/******************************************************************************/

static long long get_chipid_reg(void)
{
	long long subchipid = 0;
	unsigned int regval;

	regval = readl(__io_address(REG_BASE_SCTL + REG_SC_SYSID0));
	subchipid = (regval & 0xFF);
	regval = readl(__io_address(REG_BASE_SCTL + REG_SC_SYSID1));
	subchipid |= ((regval & 0xFF) << 8);
	regval = readl(__io_address(REG_BASE_SCTL + REG_SC_SYSID2));
	subchipid |= ((regval & 0xFF) << 16);
	regval = readl(__io_address(REG_BASE_SCTL + REG_SC_SYSID3));
	subchipid |= ((regval & 0xFF) << 24);

	regval = readl(__io_address(REG_BASE_PERI_CTRL + HI3716MV310_PERI_SOC_FUSE_0));
	regval = (regval & HI3716MV310_PERI_SOC_FUSE_MASK) >> 16;

	switch (regval) {
	case 0x10:
	case 0x11:
		subchipid |= 0x200000000LL;
		break;
	case 0x18:
	case 0x19:
		subchipid |= 0x300000000LL;
		break;
	default:
		break;
	}

	return subchipid;
}
/*****************************************************************************/

void __init arch_cpu_init(void)
{
	struct cpu_info **info;
	unsigned long long chipid = get_chipid_reg();

	if (current_cpu_info) {
		printk("CPU repeat initialized\n");
		BUG();
		return;
	}

	for (info = support_cpu_info; (*info); info++) {
		if (((*info)->chipid & (*info)->chipid_mask)
		    == (chipid & (*info)->chipid_mask)) {
			current_cpu_info = (*info);
			break;
		}
	}

	if (!current_cpu_info) {
		printk("Can't find CPU information.\n");
		BUG();
		return;
	}

	current_cpu_info->init(current_cpu_info);

	pr_notice("CPU: %s %s\n",
		current_cpu_info->name,
		current_cpu_info->cpuversion);
}
/*****************************************************************************/

long long get_chipid(void)
{
	return  (current_cpu_info->chipid & current_cpu_info->chipid_mask);
}
EXPORT_SYMBOL(get_chipid);
/*****************************************************************************/

void get_clock(unsigned int *cpu, unsigned int *timer)
{
	if (cpu)
		(*cpu) = current_cpu_info->clk_cpu;
	if (timer)
		(*timer) = current_cpu_info->clk_timer;
}
EXPORT_SYMBOL(get_clock);
/*****************************************************************************/

const char *get_cpu_name(void)
{
	return current_cpu_info->name;
}
EXPORT_SYMBOL(get_cpu_name);
/*****************************************************************************/

unsigned int get_bootmedia(char **media)
{
	return current_cpu_info->get_bootmedia(media);
}
EXPORT_SYMBOL(get_bootmedia);
/******************************************************************************/

const char * get_cpu_version(void)
{
	return current_cpu_info->cpuversion;
}
EXPORT_SYMBOL(get_cpu_version);
/******************************************************************************/

int find_cpu_resource(const char *name, struct resource **resource,
		      int *num_resources)
{
	struct cpu_info *info = current_cpu_info;
	struct device_resource **res = info->resource;

	for (; *res; res++) {
		if (!strcmp((*res)->name, name)) {
			if (resource)
				(*resource) = (*res)->resource;
			if (num_resources)
				(*num_resources) = (*res)->num_resources;
			return 0;
		}
	}
	return -ENODEV;
}
EXPORT_SYMBOL(find_cpu_resource);
