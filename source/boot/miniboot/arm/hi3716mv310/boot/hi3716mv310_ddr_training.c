#include <config.h>
#include <asm/io.h>

#include "ddr_dataeye_training.h"

extern int ddrphy_train_route(void);
extern void ddr_training_print(int type, int num);
extern void ddr_training_info(int value);
extern void reset_cpu(unsigned long addr);

int hi3716mv310_ddr_training(void)
{
	unsigned int regval;
	unsigned int ret = 0;

	regval = readl(REG_BASE_SCTL + REG_SC_GEN20);
	if (!(regval & 0x1)) {
		ret = ddrphy_train_route();
		if (ret) {
			ddr_training_print(ret & 0xffff, ret >> 16);
			ddr_training_info(ret);
			reset_cpu(0);
		}
	}

//#ifdef CONFIG_DDR_DATAEYE_TRAINING_STARTUP
	if (!(regval & (0x1 << 16))) {
		ret = ddr_dataeye_training(0);
		if (ret) {
			ddr_training_info(ret);
			if (!(readl(REG_BASE_SCTL + REG_SC_GEN20) & (0x1 << 31)))
				reset_cpu(0);
		}
	}
//#endif /* CONFIG_DDR_DATAEYE_TRAINING_STARTUP */

	/*do sf read dqs gating*/
	if((!(regval & 0x1)) && (regval & 0x100)) {
		writel(0x10, REG_BASE_SCTL + REG_SC_GEN20);

		if (ddrphy_train_route())
			reset_cpu(0);

		writel(ret, REG_BASE_SCTL + REG_SC_GEN20);
	}

	return ret;
}
