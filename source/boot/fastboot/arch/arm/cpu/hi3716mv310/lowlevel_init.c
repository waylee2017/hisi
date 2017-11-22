/******************************************************************************
*    Copyright (c) 2009-2012 by Hisi.
*    All rights reserved.
* ***
*
******************************************************************************/

#include <asm/arch/platform.h>
#include <config.h>
#include <common.h>

#define	W_WHETHER_WRITE		(1<<0)
#define	W_WHETHER_PM		(1<<1)
#define	W_WHETHER_BOOT_NORMAL	(1<<2)
#define	W_BIT_OFFSET		(3)
#define	W_BIT_MASK		(0x1f<<W_BIT_OFFSET)
#define W_REG_BIT_OFFSET	(11)
#define W_REG_BIT_MASK		(0x1f<<W_REG_BIT_OFFSET)

#define	R_WHETHER_READ		(W_WHETHER_WRITE<<16)
#define	R_WHETHER_PM		(W_WHETHER_PM<<16)
#define	R_WHETHER_BOOT_NORMAL	(W_WHETHER_BOOT_NORMAL<<16)
#define	R_BIT_OFFSET		(W_BIT_OFFSET+16)
#define	R_BIT_MASK		(W_BIT_MASK<<16)
#define R_REG_BIT_OFFSET	(W_REG_BIT_OFFSET+16)
#define R_REG_BIT_MASK		(W_REG_BIT_MASK<<16)

extern int hi3716mv310_ddr_training(void);

struct regentry {
	unsigned int reg_addr;
	unsigned int value;
	unsigned int delay;
	unsigned int attr;
};

struct reg_hdr {
	unsigned char ver[16];
	unsigned int item1;
	unsigned int item2;
	unsigned int resverd[2];
};

static inline void DWB(void) /* drain write buffer */
{
}

static inline unsigned int readl(unsigned addr)
{
	unsigned int val;
	val = (*(volatile unsigned int *)(addr));
	return val;
}

static inline void writel(unsigned val, unsigned addr)
{
	DWB();
	(*(volatile unsigned *) (addr)) = (val);
	DWB();
}

static inline void delay(void)
{
	__asm__ __volatile__("nop");
}

static int hi3716mv310_bootmedia(void)
{
	int regval;
	int boot_media;

	regval = readl(HI3716MV310_CA_BASE + HI3716MV310_CA_BOOTSEL_CTRL);
	regval >>= 16;
	if (regval & HI3716MV310_CA_BOOTSEL_CTRL_MASK) {
		/* read from otp */
		boot_media = readl(HI3716MV310_CA_BASE
				+ HI3716MV310_BOOT_MODE_SEL);
		boot_media = (boot_media & HI3716MV310_BOOT_MODE_SEL_MASK);
	} else {
		/* read from pin */
		boot_media = readl(REG_BASE_PERI_CTRL + REG_START_MODE);
		boot_media = ((boot_media >> NORMAL_BOOTMODE_OFFSET)
				& NORMAL_BOOTMODE_MASK);
	}

	return boot_media;
}

static inline void reg_read(struct regentry *reg, unsigned int *ret)
{
	unsigned int reg_val_r;
	unsigned int bit_start_r;
	unsigned int bit_num_r;

	bit_start_r = ((reg->attr&R_REG_BIT_MASK)>>R_REG_BIT_OFFSET);
	bit_num_r = ((reg->attr&R_BIT_MASK)>>R_BIT_OFFSET)+1;
	reg_val_r = (*(volatile unsigned *) (reg->reg_addr));

	if (32 != bit_num_r) {
		reg_val_r >>= bit_start_r;
		reg_val_r &= ((1<<bit_num_r)-1);
	}

	*ret = ((reg_val_r == reg->value)?0:1);
}

static inline void reg_write(struct regentry *reg)
{
	unsigned int reg_val_w;
	unsigned int delay_2;
	unsigned int bit_start_w;
	unsigned int bit_num_w;
	unsigned int eco_reg;
	unsigned int eco_val;

	delay_2 = reg->delay;
	bit_start_w = ((reg->attr&W_REG_BIT_MASK)>>W_REG_BIT_OFFSET);
	bit_num_w = ((reg->attr&W_BIT_MASK)>>W_BIT_OFFSET)+1;
	reg_val_w = (*(volatile unsigned *) (reg->reg_addr));

	if (32 == bit_num_w) {
		reg_val_w = reg->value;
	} else {
		reg_val_w &= (~(((1<<bit_num_w)-1)<<bit_start_w));
		reg_val_w |= (reg->value)<<bit_start_w;
	}

	if (HI3716MV300_DDRPHY_REG81_REG == reg->reg_addr) {
		eco_reg = HI3716MV300_ECO_VERSION;
		eco_val = *(volatile unsigned *) eco_reg;
		eco_val = eco_val >> HI3716MV300_ECO_VERSION_OFFSET;
		if ((eco_val & HI3716MV300_ECO_VERSION_MASK) != 1) {
			writel(HI3716MV300_DDRPHY_REGCA_VAL, HI3716MV300_DDRPHY_REGCA_REG);
			reg_val_w = HI3716MV300_DDRPHY_REG81_VAL;
		}
	}

	writel(reg_val_w,reg->reg_addr);

	while (delay_2--)
		delay();
}

static inline void read_write(struct regentry *reg, unsigned int pm)
{
	unsigned int ret;
	unsigned int delay_1;

	ret = 0;
	delay_1 = reg->delay;

	if(pm) {
		if(reg->attr&W_WHETHER_PM) {
			reg_write(reg);
		} else if(reg->attr&R_WHETHER_PM) {
			do {
				reg_read(reg,&ret);
				delay();
			} while(ret);

			while (delay_1--)
				delay();
		} else {
			while(delay_1--)
				delay();
		}
	} else {
		if (reg->attr&W_WHETHER_BOOT_NORMAL) {
			reg_write(reg);
		} else if (reg->attr&R_WHETHER_BOOT_NORMAL) {
			do {
				reg_read(reg,&ret);
				delay();
			} while(ret);

			while(delay_1--)
				delay();
		} else {
			while(delay_1--)
				delay();
		}
	}
}

static inline void part_read_write(unsigned int base, struct regentry *reg_table, unsigned int pm)
{
	unsigned int i;
	int bootmedia = -1;
	int skip = 0;
	int io_config = 0;
	struct reg_hdr *hdr = (struct reg_hdr *)base;

	bootmedia = hi3716mv310_bootmedia();

	for (i=0; ; i++) {
		if ((!reg_table[i].reg_addr) && (!reg_table[i].value)
			&& (!reg_table[i].delay) && (!reg_table[i].attr))
			goto main_end;
#ifndef HI3716MV310_FPGA
		if ((*(int *)hdr->ver == 0x352E3176)
			&& (*(int *)&hdr->ver[4] == 0x0000302E)) {

#define HI3716MV310_IO_CONFIG_NUM	14
			if (!skip && (bootmedia == BOOT_FROM_NAND)
					&& (reg_table[i].reg_addr == REG_BASE_IO_CONFIG)) {
				i += HI3716MV310_IO_CONFIG_NUM - 1;
				skip = 1;
				continue;
			} else if (!skip && io_config && (reg_table[i].reg_addr == 
						REG_BASE_IO_CONFIG)) {
				i += HI3716MV310_IO_CONFIG_NUM - 1;
				continue;
			}

			if (!io_config && (reg_table[i].reg_addr == REG_BASE_IO_CONFIG))
				io_config = 1;

		}
#endif
		read_write(&reg_table[i],pm);
	}

main_end:
	delay();
}

static void reg_v110_init(unsigned int base, unsigned int pm,
	unsigned int which)
{
	struct reg_hdr *hdr = (struct reg_hdr *)base;
	struct regentry *reg_table;
	unsigned int item1_addr, item2_addr;

	step(3);

	item1_addr = hdr->item1 + base;
	item2_addr = hdr->item2 + base;

	if (which & INIT_REG_ITEM1) {
		reg_table = (struct regentry *)item1_addr;
		step(4);
		part_read_write(base, reg_table, pm);
		step(5);
#ifndef HI3716MV310_FPGA
		if (!pm)
			hi3716mv310_ddr_training();
#endif
		if (readl(REG_BASE_SCTL + REG_SC_GEN29) & 0x2) {
			writel(0xA,REG_KLD_DDRSCRAMBLE_EN);
		}

#if (CONFIG_CHIP_TYPE == hi3716mv330)
		/* Enable MDDRC Auto-Lowpower mode */
		writel(0x401, REG_DDR_DMC0_LPCTRL);
#endif
	}

	if (which & INIT_REG_ITEM2) {
		step(25);
		reg_table = (struct regentry *)item2_addr;
		part_read_write(base, reg_table, pm);
		step(26);
	}
	step(27);
}

/*
 * base - reg base address
 * pm   - is suspend
 *      0 normal
 *      1 pm
 * which - init which item
 *         INIT_REG_ITEM1, INIT_REG_ITEM2
 */
void init_registers(unsigned int base, unsigned int pm, unsigned int which)
{
	char *ver = (char *)base;

	step(1);
	/*
	 * init reg table v1.1.0
	 * 0x312E3176 and 0x0000302E ansi code is "v1.1.0\0\0"
	 */
	if (((*(int *)ver == 0x312E3176) && (*(int *)&ver[4] == 0x0000312E))
	    || ((*(int *)ver == 0x352E3176) && (*(int *)&ver[4] == 0x0000302E))) {
		reg_v110_init(base, pm, which);
	} else {
		step(2);
		/* the old table, only init when init item1 */
		if (which & INIT_REG_ITEM1)
			part_read_write(base, (struct regentry *)base, pm);
	}
	step(29);
}
#ifdef CONFIG_SHOW_REG_INFO
extern int display_regv110_info(unsigned int base);
extern int display_regunknow_info(unsigned int base);

int display_register_info(unsigned int base)
{
	struct reg_hdr *hdr = (struct reg_hdr *)base;

	if (((*(int *)hdr->ver == 0x312E3176)
	    && (*(int *)&hdr->ver[4] == 0x0000312E))
	    || ((*(int *)hdr->ver == 0x352E3176)
		&& (*(int *)&hdr->ver[4] >= 0x0000302E))) {
		display_regv110_info(base);
	} else {
		display_regunknow_info(base);
	}
	return base;
}
#endif /* CONFIG_SHOW_REG_INFO */
