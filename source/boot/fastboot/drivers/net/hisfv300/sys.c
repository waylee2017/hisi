#include <config.h>
#include "hieth.h"
#include "mdio.h"
#include "mac.h"
#include "ctrl.h"
#include "glb.h"
#include "sys.h"

#ifdef CONFIG_ARCH_GODBOX
#  include "sys-godbox.c"
#endif

#ifdef CONFIG_ARCH_HI3716MV310
#  include "sys-hi3716mv310.c"
#endif

#ifdef CONFIG_ARCH_S40
#  include "sys-s40.c"
#endif

#ifdef CONFIG_ARCH_HI3798MX
#  include "sys-hi3798mx.c"
#endif

/**************************************************/
void hieth_sys_startup(void)
{
	hieth_clk_ena();
	/* undo reset */
	hieth_reset(0);
}

void hieth_sys_allstop(void)
{
}

void hieth_sys_init(void)
{
	hieth_funsel_config();
	hieth_sys_allstop();
	hieth_reset(0);
	hieth_clk_ena();
	udelay(10000);
	hieth_phy_reset();
}

void hieth_sys_exit(void)
{
	hieth_funsel_restore();
	hieth_sys_allstop();
}
