/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#ifndef __UPGRDCOMMON_H__
#define __UPGRDCOMMON_H__
#ifdef HI_LOADER_BOOTLOADER
#include <uboot.h>
#include <hi_boot_common.h>
#else
#include <stdlib.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <sys/sysinfo.h>
#include <fcntl.h>
#include <ctype.h>
#include <sys/reboot.h>
#include "hi_osal.h"
#endif

#include "hi_type.h"
#include "hi_debug.h"
#include "upgrd_config.h"
#include "loader_upgrade.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#define PLUS_MEM_SIZE (32 * 1024)
#define MID_LOADER 0x90

#define MD_LEN 20

#define u_malloc malloc
#define u_memset memset
#define u_memcpy memcpy
#define u_memcmp memcmp
#define u_strncpy HI_OSAL_Strncpy
#define u_strcmp strcmp
#define u_free free

/**Flash reading error*/
#define HI_UPGRD_ERR_MAIN_RDFLASH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x100)

/**  Error input parameter*/
#define HI_UPGRD_ERR_PARA \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x101)

/** Memory allocation error*/
#define HI_UPGRD_ERR_MALLOC \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x102)

/** */
/**upgrdpro.c err definition*/
/**Abnormal signal */
#define HI_UPGRD_ERR_SIGNAL_LOSE \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x103)

/** Flash writing error */
#define HI_UPGRD_UPGRDPRO_WRFLASH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x104)

/**Not enabled */
#define HI_UPGRD_UPGRDPARSE_DLCONTROLHEADERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x105)

/**Partition description downloading error */
#define HI_UPGRD_UPGRDPARSE_DLPARTINFOTABLEIDERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x106)

/**Data CRC downloading error  */
#define HI_UPGRD_UPGRDPARSE_CRC32ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x107)

/**Download data parsing error */
#define HI_UPGRD_UPGRDPARSE_DATAERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x108)

/**software version not match */
#define HI_UPGRD_SOFTWARE_NOT_MATCH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x109)

/**hadrdware version not match */
#define HI_UPGRD_HARDWARE_NOT_MATCH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10a)

/**OUI not match */
#define HI_UPGRD_OUI_NOT_MATCH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10b)

/**serial num dismatch */
#define HI_UPGRD_SN_NOT_MATCH \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10c)

/**Partition CRC error  */
#define HI_UPGRD_CRC_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10d)

/**Partition Data error */
#define HI_UPGRD_DATA_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10E)

/**can't find usb or upgrade file */
#define HI_UPGRD_USB_FILE_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x10F)

/**can't find usb or upgrade file */
#define HI_UPGRD_DMX_TIMEOUT \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x110)

/**connect server failed */
#define HI_UPGRD_CONNECT_FAIL \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x111)

/**network exception */
#define HI_UPGRD_NETWORK_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x112)

/**can't find ip upgrade file */
#define HI_UPGRD_IP_FILE_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x113)

/**ip config failed */
#define HI_UPGRD_SET_IP_ERROR \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x114)

/**network timeout */
#define HI_UPGRD_IP_TIMEOUT \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x115)

/**ca ssd authenticate failed */
#define HI_UPGRD_CA_SSD_AUTH_FAIL \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x116)

/**ca ssd crypt failed */
#define HI_UPGRD_CA_SSD_CRYPT_FAIL \
    UPGRD_DEF_ERR(MID_LOADER, UPGRD_LOG_LEVEL_ERROR, 0x117)

#define SAVE_FREE( p ) \
    do {\
        if (p){\
            free(p); p = NULL;} \
    } while (0)

/* setbox upgrade mode */
typedef enum _UPGRD_MODE_E
{
    E_NONE_UPGRADE_MODE = 0,
    E_NORMAL_CABLE_UPGRADE_MODE,
    E_FORCE_CABLE_UPGRADE_MODE,
    E_SERIAL_UPGRADE_MODE,
    E_UNDIFINED_UPGRADE_MODE
} UPGRD_MODE_E;

typedef enum UpgrdLogLevel_E
{
    UPGRD_LOG_LEVEL_INFO  = 1,
    UPGRD_LOG_LEVEL_WARN  = 2,
    UPGRD_LOG_LEVEL_ERROR = 3,
    UPGRD_LOG_LEVEL_FATEL = 4,
    UPGRD_LOG_LEVEL_BUTT
} UPGRD_LOG_LEVEL_E;

/******************************************************************************
|----------------------------------------------------------------|
| 1 |   APP_ID   |   MOD_ID    | ERR_LEVEL |   ERR_ID            |
|----------------------------------------------------------------|
|<--><--7bits----><----8bits---><--3bits---><------13bits------->|
******************************************************************************/

#define UPGRD_ERR_APPID (0x80UL + 0x20UL)

#define UPGRD_DEF_ERR( mid, level, errid) \
    (HI_S32)(((UPGRD_ERR_APPID) << 24) | ((mid) << 16) | ((level) << 13) | (errid))

#ifdef HI_LOADER_BOOTLOADER
#define HI_FATAL_LOADER(fmt...)     HI_FATAL_PRINT(1, fmt)
#define HI_ERR_LOADER(fmt...)         HI_ERR_PRINT(1, fmt)
#define HI_WARN_LOADER(fmt...)     HI_WARN_PRINT(1, fmt)
#define HI_INFO_LOADER(fmt...)       HI_INFO_PRINT(1, fmt)
#define HI_DBG_LOADER(fmt...)       HI_DBG_PRINT(1, fmt)
#else
#define HI_FATAL_LOADER(fmt...) \
        HI_FATAL_PRINT(HI_ID_LOADER, fmt )

#define HI_ERR_LOADER(fmt...) \
        HI_ERR_PRINT(HI_ID_LOADER, fmt )

#define HI_WARN_LOADER(fmt...) \
        HI_WARN_PRINT(HI_ID_LOADER, fmt )

#define HI_INFO_LOADER(fmt...) \
        HI_INFO_PRINT(HI_ID_LOADER, fmt )

#define HI_DBG_LOADER(fmt...) \
        HI_DBG_PRINT(HI_ID_LOADER, fmt )
#endif

HI_VOID       LOADER_Delayms(HI_U32 u32time);

HI_S32        LOADER_Segmental_CRC32(HI_U32 ulCrc, const HI_U8* pucData, HI_U32 ulLen, HI_U32 *pulResult);

HI_S32        LOADER_Entire_CRC32(const HI_U8* pu8Data, HI_U32 u32Len, HI_U32* pu32Result);

unsigned long LOADER_strtoul(const char *nptr, char **endptr, int base);

HI_U8 * LOADER_GetUsableMemory(HI_U32 u32ExpectSize, HI_U32 *pu32Size);

void LOADER_FreeUsableMemory(HI_U8 * ptr);

#ifdef __cplusplus
 #if __cplusplus
}

 #endif
#endif

#endif /*__UPGRDCOMMON_H__*/
