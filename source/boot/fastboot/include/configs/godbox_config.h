#define hi3712             1
#define hi3715             2
#define hi3716c            3
#define hi3716h            4
#define hi3716m            5
#define hi3716mv310        6
#define hi3716mv320        7
#define hi3110ev500        8

/* chip type:hi3716c/h/m/hi3712/hi3715 */
#define CONFIG_CHIP_TYPE	hi3716mv310

/* SPI flash support */
#define CONFIG_SPIFLASH_SUPPORT

/* NAND flash support */
#define CONFIG_NAND_SUPPORT

/* NET support */
#define CONFIG_NET_SUPPORT

/* Not define usb */
#undef CONFIG_USB_SUPPORT

/* eth upport phy address */
#define HISFV_PHY_U		2

/* eth downport phy address */
#define HISFV_PHY_D		1

/* enviorenment variables start address */
#define CFG_ENV_ADDR		0x80000

/* enviorenment variables size */
#define CFG_ENV_SIZE		0x2000

/* enviorenment variables range */
#define CFG_ENV_RANGE		0x20000

/* Bakup enviorenment variables support */
#define CONFIG_ENV_BACKUP

/* Bakup enviorenment variables start address */
#define CFG_ENV_BACKUP_ADDR	CFG_ENV_ADDR + CFG_ENV_SIZE

/* boot reg file name */
#define CONFIG_BOOT_REG_NAME	hi3716mv310_fpga.reg
