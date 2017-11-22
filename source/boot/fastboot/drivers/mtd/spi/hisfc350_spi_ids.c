#include <config.h>

#ifdef CONFIG_ARCH_GODBOX
#  include "hisfc350_godbox_spi_ids.c"
#endif

#ifdef CONFIG_ARCH_HI3716MV310
#  include "hisfc350_hi3716mv310_spi_ids.c"
#endif

#if defined(CONFIG_ARCH_S40) || defined(CONFIG_ARCH_S5)
#  include "hisfc350_s40_spi_ids.c"
#endif
