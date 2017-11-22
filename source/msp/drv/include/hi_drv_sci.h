/*    
 *
 *
 * This file declares functions for user.
 *
 * History:
 *     2013-01-07 create this file
 *
 */

#ifndef __HI_DRV_SCI_H__
#define __HI_DRV_SCI_H__

#include "hi_debug.h"

#if    defined (CHIP_TYPE_hi3716h)  \
    || defined (CHIP_TYPE_hi3716c)  \
    || defined (CHIP_TYPE_hi3716cv2)    \
    || defined (CHIP_TYPE_hi3716m) \
    || defined (CHIP_TYPE_hi3716mv330)
 #define HI_SCI_PORT_NUM (2)
#elif defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)
 #define HI_SCI_PORT_NUM (1)
#else
 #error YOU MUST DEFINE  CHIP_TYPE!
#endif

#define HI_FATAL_SCI(fmt...) \
    HI_FATAL_PRINT(HI_ID_SCI, fmt)

#define HI_ERR_SCI(fmt...) \
    HI_ERR_PRINT(HI_ID_SCI, fmt)

#define HI_WARN_SCI(fmt...) \
    HI_WARN_PRINT(HI_ID_SCI, fmt)

#define HI_INFO_SCI(fmt...) \
    HI_INFO_PRINT(HI_ID_SCI, fmt)
    
#endif
