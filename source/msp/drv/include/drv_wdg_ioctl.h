/*
 *	Generic watchdog defines. Derived from..
 *
 * Berkshire PC Watchdog Defines
 * by Ken Hollis <khollis@bitgate.com>
 *
 */

#ifndef __DRV_WDG_IOCTL_H__
#define __DRV_WDG_IOCTL_H__

#include <linux/ioctl.h>
#include <linux/types.h>

#include "hi_unf_wdg.h"
#include "hi_drv_wdg.h"

#define WATCHDOG_IOCTL_BASE 'W'

#define WDIOC_SETOPTIONS _IOR(WATCHDOG_IOCTL_BASE, 4, int)
#define WDIOC_KEEPALIVE _IOR(WATCHDOG_IOCTL_BASE, 5, int)
#define WDIOC_SETTIMEOUT _IOWR(WATCHDOG_IOCTL_BASE, 6, int)
#define WDIOC_GETTIMEOUT _IOR(WATCHDOG_IOCTL_BASE, 7, int)
#define WDIOF_UNKNOWN -1  /* Unknown flag error */
#define WDIOS_UNKNOWN -1  /* Unknown status error */

#define WDIOS_DISABLECARD 0x0001  /* Turn off the watchdog timer */
#define WDIOS_ENABLECARD 0x0002  /* Turn on the watchdog timer */
#define WDIOS_RESET_BOARD 0x0008  /* reset the board */

#endif  /* ifndef __DRV_WDG_IOCTL_H__ */
