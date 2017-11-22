/******************************************************************************
 *    COPYRIGHT (C) 2014 Hisilicon
 *    All rights reserved.
 * ***
 *    Create by hisilicon
 *
******************************************************************************/
#include <mach/cpu-info.h>

#include "hisfc400_os.h"
#include "../hisfc_spl_ids.h"
#include "hisfc400.h"

/*****************************************************************************/
#define MAX_MTD_PARTITIONS         (32)

struct partition_entry {
	char name[16];
	unsigned long long start;
	unsigned long long length;
	unsigned int flags;
};

struct partition_info {
	int parts_num;
	struct partition_entry entry[MAX_MTD_PARTITIONS];
	struct mtd_partition parts[MAX_MTD_PARTITIONS];
};

static struct partition_info ptn_info;

/*****************************************************************************/
static int __init parse_nand_partitions(const struct tag *tag)
{
	int i;

	if (tag->hdr.size <= 2) {
		PR_BUG("tag->hdr.size <= 2\n");
		return 0;
	}
	ptn_info.parts_num = (tag->hdr.size - 2)
		/ (sizeof(struct partition_entry)/sizeof(int));
	memcpy(ptn_info.entry,
		&tag->u,
		ptn_info.parts_num * sizeof(struct partition_entry));

	for (i = 0; i < ptn_info.parts_num; i++) {
		ptn_info.parts[i].name   = ptn_info.entry[i].name;
		ptn_info.parts[i].size   = (ptn_info.entry[i].length);
		ptn_info.parts[i].offset = (ptn_info.entry[i].start);
		ptn_info.parts[i].mask_flags = 0;
		ptn_info.parts[i].ecclayout  = 0;
	}

	return 0;
}

/* turn to ascii is "HiNp" */
__tagtable(0x48694E70, parse_nand_partitions);

/*****************************************************************************/
static int hinfc_os_add_paratitions(struct hisfc_host *host)
{
	int ix;
	int nr_parts = 0;
	struct mtd_partition *parts = NULL;
	int ret;

#ifdef CONFIG_MTD_CMDLINE_PARTS
	static const char *part_probes[] = {"cmdlinepart", NULL, };
	nr_parts = parse_mtd_partitions(host->mtd, part_probes, &parts, 0);
#endif

	if (!nr_parts) {
		nr_parts = ptn_info.parts_num;
		parts    = ptn_info.parts;
	}

	if (nr_parts <= 0)
		return 0;

	for (ix = 0; ix < nr_parts; ix++) {
		DBG_MSG("partitions[%d] = {.name = %s, .offset = 0x%.8x," \
			" .size = 0x%08x (%uKiB) }\n",
			ix, parts[ix].name,
			(unsigned int)parts[ix].offset,
			(unsigned int)parts[ix].size,
			(unsigned int)parts[ix].size/1024);
	}

	host->add_partition = 1;

	ret = mtd_device_register(host->mtd, parts, nr_parts);

	kfree(parts);
	parts = NULL;

	return (1 == ret) ? -ENODEV : 0;
}
/*****************************************************************************/

static irqreturn_t hisfc400_irq_handle(int irq, void *dev_id)
{
	unsigned int regval;
	struct hisfc_host *host = (struct hisfc_host *)dev_id;

	regval = hisfc_read(host, HISFC400_INTS);
	if (regval & HISFC400_INTS_OP_DONE) {
		hisfc_write(host,
			    HISFC400_INTCLR, HISFC400_INTS_OP_DONE);
		complete(&host->op_done);
	}

	return IRQ_HANDLED;
}
/*****************************************************************************/
static int hisfc400_os_probe(struct platform_device *pltdev)
{
	int size, ret, result = 0;
	int regval;
	struct hisfc_host *host;
	struct nand_chip *chip;
	struct mtd_info *mtd;
	struct resource *res;

	size = sizeof(struct hisfc_host) + sizeof(struct nand_chip)
		+ sizeof(struct mtd_info);
	host = kmalloc(size, GFP_KERNEL);
	if (!host) {
		PR_BUG("failed to allocate device structure.\n");
		return -ENOMEM;
	}
	memset((char *)host, 0, size);
	platform_set_drvdata(pltdev, host);

	host->dev  = &pltdev->dev;
	host->chip = chip = (struct nand_chip *)&host[1];
	host->mtd  = mtd  = (struct mtd_info *)&chip[1];

	res = platform_get_resource_byname(pltdev, IORESOURCE_MEM, "base");
	if (!res) {
		PR_BUG("Can't get resource.\n");
		return -EBUSY;
	}
	host->regbase = ioremap(res->start, res->end - res->start + 1);
	if (!host->regbase) {
		PR_BUG("ioremap failed\n");
		return -EIO;
	}

	mtd->priv  = chip;
	mtd->owner = THIS_MODULE;
	mtd->name  = (char *)(pltdev->name);

	res = platform_get_resource_byname(pltdev, IORESOURCE_MEM, "buffer");
	if (!res) {
		PR_BUG("Can't get resource.\n");
		return -EBUSY;
	}
	host->iobase = chip->IO_ADDR_R = chip->IO_ADDR_W =
			ioremap_nocache(res->start, res->end - res->start + 1);
	if (!host->iobase) {
		PR_BUG("ioremap failed\n");
		return -EIO;
	}
	memset((char *)host->iobase, 0xff, HISFC400_BUFFER_BASE_ADDRESS_LEN);

	res = platform_get_resource_byname(pltdev, IORESOURCE_MEM, "peri");
	if (!res) {
		PR_BUG("Can't get resource.\n");
		return -EBUSY;
	}
	host->sysreg = ioremap_nocache(res->start, res->end - res->start + 1);
	if (!host->sysreg) {
		PR_BUG("ioremap failed\n");
		return -EIO;
	}

	res = platform_get_resource_byname(pltdev, IORESOURCE_IRQ, "irq");
	if (!res) {
		PR_BUG("Can't get resource.\n");
		return -EIO;
	}

	host->irq = res->start;

	/* disable all interrupt. */
	regval = hisfc_read(host, HISFC400_INTS_EN);
	regval &= ~HISFC400_ALL_INTS_MASK;
	hisfc_write(host, HISFC400_INTS_EN, regval);

	/* clear all interrupt. */
	regval = hisfc_read(host, HISFC400_INTCLR);
	regval |= HISFC400_INTCLR_MASK;
	hisfc_write(host, HISFC400_INTCLR, regval);

	ret = request_irq(host->irq, hisfc400_irq_handle, 0,
			  "hisfc400_irq", host);
	if (ret) {
		pr_err("Unable to allocate IRQ\n");
		return -EIO;
	}

	size = SPI_NAND_MAX_PAGESIZE + SPI_NAND_MAX_OOBSIZE;
	host->buffer = dma_alloc_coherent(host->dev, size, &host->dma_buffer,
					  GFP_KERNEL);
	if (!host->buffer) {
		PR_BUG("Can't malloc memory for SPI nand driver.");
		return -ENOMEM;
	}
	memset(host->buffer, 0xff, size); 

	result = hisfc400_host_init(host);
	if (result)
		return result;

	hisfc400_nand_init(host);

	if (nand_scan(mtd, CONFIG_HISFC400_MAX_CHIP)) {
		result = -ENXIO;
		goto fail;
	}

	result = hinfc_os_add_paratitions(host);
	if (host->add_partition)
		return result;

	if (!add_mtd_device(host->mtd))
		return 0;

	result = -ENODEV;
	nand_release(mtd);

fail:
	if (host->buffer) {
		dma_free_coherent(host->dev, size, host->buffer, 
				  host->dma_buffer);
		host->buffer = NULL;
	}
	iounmap(chip->IO_ADDR_W);
	iounmap(host->iobase);
	kfree(host);
	platform_set_drvdata(pltdev, NULL);

	return result;
}

/*****************************************************************************/
static int hisfc400_os_remove(struct platform_device *pltdev)
{
	struct hisfc_host *host = platform_get_drvdata(pltdev);

	host->set_system_clock(host, NULL, FALSE);

	nand_release(host->mtd);
	dma_free_coherent(host->dev, 
			  (SPI_NAND_MAX_PAGESIZE + SPI_NAND_MAX_OOBSIZE),
			  host->buffer, host->dma_buffer);
	iounmap(host->chip->IO_ADDR_W);
	iounmap(host->iobase);
	kfree(host);
	platform_set_drvdata(pltdev, NULL);

	return 0;
}
/*****************************************************************************/

static void hisfc400_os_driver_shutdown(struct platform_device * pltdev)
{
	struct hisfc_host *host = platform_get_drvdata(pltdev);
	struct hisfc_operation *spi = host->spi;

	spi->driver->wait_ready(spi);

	return;
}
/*****************************************************************************/
static void hisfc400_pltdev_release(struct device *dev)
{
}

/*****************************************************************************/
#ifdef CONFIG_PM
static int hisfc400_os_suspend(struct platform_device *pltdev,
			       pm_message_t state)
{
	struct hisfc_host *host = platform_get_drvdata(pltdev);
	struct hisfc_operation *spi = host->spi;

	spi->driver->wait_ready(spi);
	while ((hisfc_read(host, HISFC400_OP))
		& HISFC400_OP_START)
		_cond_resched();

	while ((hisfc_read(host, HISFC400_OP_CTRL))
		& HISFC400_OP_CTRL_OP_READY)
		_cond_resched();

	host->set_system_clock(host, NULL, FALSE);
	return 0;
}

/*****************************************************************************/
static int hisfc400_os_resume(struct platform_device *pltdev)
{
	struct hisfc_host *host = platform_get_drvdata(pltdev);
	struct hisfc_operation *spi = host->spi;
	unsigned int regval;

	host->set_system_clock(host, NULL, TRUE);

	/* shen resume from fastboot, controler is BOOT mode, need to switch to NORMAL mode. */
	regval = hisfc_read(host, HISFC400_CFG);
	regval |= HISFC400_CFG_OP_MODE(1);
	hisfc_write(host, HISFC400_CFG, regval);

	host->send_cmd_reset(host);

	/* if chip support qe mode, set qe mode. */
	if (spi->driver->quad_enable) {
		spi->driver->wait_ready(spi);
		spi->driver->write_enable(spi);
		spi->driver->quad_enable(spi);
	}
	hisfc400_flash_init(host);

	return 0;
}
#endif /* CONFIG_PM */

/*****************************************************************************/
static struct platform_driver hisfc400_os_pltdrv = {
	.probe    = hisfc400_os_probe,
	.remove   = hisfc400_os_remove,
	.shutdown = hisfc400_os_driver_shutdown,
#ifdef CONFIG_PM
	.suspend  = hisfc400_os_suspend,
	.resume   = hisfc400_os_resume,
#endif /* CONFIG_PM */

	.driver.name   = "hinand",
	.driver.owner = THIS_MODULE,
	.driver.bus   = &platform_bus_type,
};
/*****************************************************************************/

static struct resource hisfc400_resources[] = {
	[0] = {
		.start  = CONFIG_HISFC400_REG_BASE_ADDRESS,
		.end    = CONFIG_HISFC400_REG_BASE_ADDRESS
			+ HISFC400_REG_BASE_ADDRESS_LEN - 1,
		.flags  = IORESOURCE_MEM,
		.name	= "base"
	},

	[1] = {
		.start  = CONFIG_HISFC400_BUFFER_BASE_ADDRESS,
		.end    = CONFIG_HISFC400_BUFFER_BASE_ADDRESS
			+ HISFC400_BUFFER_BASE_ADDRESS_LEN - 1,
		.flags  = IORESOURCE_MEM,
		.name	= "buffer"
	},

	[2] = {
		.start = CONFIG_HISFC400_PERIPHERY_REGBASE,
		.end   = CONFIG_HISFC400_PERIPHERY_REGBASE + 100 - 1,
		.flags = IORESOURCE_MEM,
		.name	= "peri"
	},

	[3] = {
		.start = 115,
		.end   = 115,
		.flags = IORESOURCE_IRQ,
		.name  = "irq"
	},

};

static u64 hinand_dmamask = DMA_BIT_MASK(32);
static struct platform_device hisfc400_os_pltdev = {
	.name           = "hinand",
	.id             = -1,

	.dev.platform_data     = NULL,
	.dev.dma_mask          = &hinand_dmamask,
	.dev.coherent_dma_mask = DMA_BIT_MASK(32),
	.dev.release           = hisfc400_pltdev_release,

	.num_resources  = ARRAY_SIZE(hisfc400_resources),
	.resource       = hisfc400_resources,
};
/*****************************************************************************/

static int hisfc400_os_version_check(void)
{
	void __iomem *regbase;
	unsigned long regval;

	regbase = ioremap_nocache(CONFIG_HISFC400_REG_BASE_ADDRESS,
		HISFC400_REG_BASE_LEN);
	if (!regbase) {
		pr_err("spi-nand base reg ioremap failed.\n");
		return -EIO;
	}
	regval = readl(regbase + HISFC400_VERSION);
	iounmap(regbase);
	return (regval == 0x400);
}
/*****************************************************************************/
static int __init hisfc400_os_module_init(void)
{
	int result = 0;
	unsigned int bootmedia;

	bootmedia = get_bootmedia(NULL);
	if (bootmedia != BOOT_MEDIA_SPI_NAND) {
		/* no 'goto fail', incase shutdown coredump */
		return -ENODEV;
	}
	printk("spiflash: Check Spi-Nand Flash Controller V400. ");
	if (!hisfc400_os_version_check()) {
		printk("\n");
		return -ENODEV;
	}
	printk("Found\n");

	result = platform_driver_register(&hisfc400_os_pltdrv);
	if (result < 0)
		return result;

	result = platform_device_register(&hisfc400_os_pltdev);
	if (result < 0) {
		platform_driver_unregister(&hisfc400_os_pltdrv);
		return result;
	}

	return result;
}

/*****************************************************************************/
static void __exit hisfc400_os_module_exit(void)
{
	platform_driver_unregister(&hisfc400_os_pltdrv);
	platform_device_unregister(&hisfc400_os_pltdev);
}

/*****************************************************************************/
module_init(hisfc400_os_module_init);
module_exit(hisfc400_os_module_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Czyong");
MODULE_DESCRIPTION("Hisfc400 Device Driver, Version 1.30");

