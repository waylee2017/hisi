/*
 *	Generic watchdog defines. Derived from..
 *
 * Berkshire PC Watchdog Defines
 * by Ken Hollis <khollis@bitgate.com>
 *
 */

#ifndef _HI_DRV_WDG_H
#define _HI_DRV_WDG_H

#include "hi_debug.h"

#define HI_FATAL_WDG(fmt...) \
    HI_FATAL_PRINT(HI_ID_WDG, fmt)

#define HI_ERR_WDG(fmt...) \
    HI_ERR_PRINT(HI_ID_WDG, fmt)

#define HI_WARN_WDG(fmt...) \
    HI_WARN_PRINT(HI_ID_WDG, fmt)

#define HI_INFO_WDG(fmt...) \
    HI_INFO_PRINT(HI_ID_WDG, fmt)

#if    defined (CHIP_TYPE_hi3716h)  \
    || defined (CHIP_TYPE_hi3716c)  \
    || defined (CHIP_TYPE_hi3716cv2)    \
    || defined (CHIP_TYPE_hi3716m)	\
    || defined(CHIP_TYPE_hi3716mv310) \
    || defined (CHIP_TYPE_hi3716mv330) \
    || defined(CHIP_TYPE_hi3110ev500) \
    || defined (CHIP_TYPE_hi3716mv320)
 #define HI_WDG_NUM (1)
#else
 #error YOU MUST DEFINE  CHIP_TYPE!
#endif

#endif  /* ifndef _HI_DRV_WDG_H */
