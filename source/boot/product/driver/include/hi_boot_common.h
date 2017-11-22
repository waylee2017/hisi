#ifndef __HI_BOOT_COMMON_H__
#define __HI_BOOT_COMMON_H__

#include "hi_type.h"
#include "hi_module.h"
#include "hi_debug.h"

#ifdef __cplusplus
extern "C" {
#endif

#define KEY_DATA_MEM_ZONE       "KeyZone"

#define HI_MMZ_INFOZONE_SIZE    (8 * 1024)
#define BOOT_ARGS_SIZE          (512)
#define MEM_BASE                (0x80000000)
#define NAND_DEF_PAGESIZE       (8 * 1024)

#define SYS_REG_SYSID0          (0x101e0ee0)
#define SYS_REG_SYSID1          (SYS_REG_SYSID0 + 0x04)
#define SYS_REG_SYSID2          (SYS_REG_SYSID0 + 0x08)
#define SYS_REG_SYSID3          (SYS_REG_SYSID0 + 0x0c)
#define SYS_REG_BASE_ADDR_PHY1  (0x101f5000)
#define SYS_REG_BASE_ADDR_PHY2  (0x10200000)

#define READ_REG(base, offset) \
    (*(volatile HI_U32   *)((HI_U32)(base) + (offset)))

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HI_BOOT_TRACE(level, module_id, fmt...)   \
    do{                                                         \
        HI_LogOut(level, module_id, (HI_U8*)__FUNCTION__,__LINE__,fmt);  \
    }while(0)
#else
#define HI_BOOT_TRACE(level, module_id, fmt...)   \
    do{                                                         \
    }while(0)
#endif
#define HI_FATAL_BOOT(module_id, fmt...) HI_BOOT_TRACE(0, module_id, fmt)
#define HI_ERR_BOOT(module_id, fmt...) HI_BOOT_TRACE(1, module_id, fmt)
#define HI_WARN_BOOT(module_id, fmt...) HI_BOOT_TRACE(2, module_id, fmt)
#define HI_INFO_BOOT(module_id, fmt...) HI_BOOT_TRACE(3, module_id, fmt)

#define HI_ERR_COMMON(format...)     HI_ERR_BOOT(0, format)
#define HI_INFO_COMMON(format...)    HI_INFO_BOOT(0, format)


typedef struct hiMMZ_INFO_S
{
    HI_CHAR         name[32];
    HI_U32          gfp;
    HI_U32          startAddr;
    HI_U32          size;
}MMZ_INFO_S;

typedef struct hiMMZ_BUFFER_S
{
    HI_U32 u32StartVirAddr;
    HI_U32 u32StartPhyAddr;
    HI_U32 u32Size;
}MMZ_BUFFER_S;

/** Define the chip type. */
typedef enum hiCHIP_TYPE_E
{
    HI_CHIP_TYPE_HI3716M,  /**<HI3716M */
    HI_CHIP_TYPE_HI3716H,  /**<HI3716H */
    HI_CHIP_TYPE_HI3716C,  /**<HI3716C */
    HI_CHIP_TYPE_HI3716CES,    /**<HI3716CES */

    HI_CHIP_TYPE_HI3720,  /**<HI3720 */
    HI_CHIP_TYPE_HI3712,  /**<HI3712 */
    HI_CHIP_TYPE_HI3715,  /**<HI3715 */
    HI_CHIP_TYPE_HI3110E, /**<HI3110E */

    HI_CHIP_TYPE_BUTT
}HI_CHIP_TYPE_E;

/** Define the chip version. */
typedef enum hiCHIP_VERSION_E
{
    HI_CHIP_VERSION_V100,  /**< V100  */
    HI_CHIP_VERSION_V101,  /**< V101  */
    HI_CHIP_VERSION_V200,  /**< V200  */
    HI_CHIP_VERSION_V300,  /**< V300  */
    HI_CHIP_VERSION_V310,  /**< V310  */
    HI_CHIP_VERSION_V320,  /**< V320  */
    HI_CHIP_VERSION_V330,  /**< V330  */
    HI_CHIP_VERSION_V500,  /**< V500  */
    HI_CHIP_VERSION_BUTT
}HI_CHIP_VERSION_E;

typedef enum
{
    HI_CHIP_PACKAGE_TYPE_BGA_15_15 = 0,
    HI_CHIP_PACKAGE_TYPE_BGA_19_19,
    HI_CHIP_PACKAGE_TYPE_BGA_23_23,
    HI_CHIP_PACKAGE_TYPE_QFP_216,
    HI_CHIP_PACKAGE_TYPE_BUTT
} HI_CHIP_PACKAGE_TYPE_E;

/********* common: string ************/
char * strtok_2(char * s,const char * ct);
char * strstr_2(const char * s1,const char * s2);
char * strcpy_2(char * dest,const char *src);
char * strncpy_2(char * dest,const char *src, unsigned int count);
unsigned long simple_strtoul_2(const char *cp,char **endp,unsigned int base);

/********* common: memory ************/
HI_S32 HI_MMZ_Init(HI_VOID);
HI_S32 HI_MMZ_DeInit(HI_VOID);
HI_S32 HI_MMZ_GetInfoZoneAddr(MMZ_BUFFER_S *psMBuf);
HI_S32 HI_MMZ_Alloc(const char *bufname, char *zone_name, unsigned int size, int align, MMZ_BUFFER_S *psMBuf);
HI_VOID HI_MMZ_Release(MMZ_BUFFER_S *psMBuf);

/********* common: memory ************/
HI_S32 HI_MEM_Alloc(HI_U32 *pu32PhyAddr, HI_U32 Len);
HI_VOID HI_MEM_Free(HI_VOID *pPhyAddr);

/********* common: log ************/
HI_VOID HI_LOG_Init(HI_VOID);
const HI_CHAR* HI_LOG_GetModuleName(HI_MOD_ID_E enModule);
HI_VOID HI_LOG_SetLevel(HI_MOD_ID_E enModule, HI_U32 u32LogLevel);
HI_VOID HI_LogOut(HI_U32 u32Level, HI_MOD_ID_E enModId, HI_U8 *pFuncName, HI_U32 u32LineNum, const char *format, ...);

/********* common: sys ************/
HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType,HI_CHIP_VERSION_E *penChipVersion);
HI_S32 HI_DRV_SYS_GetChipPackageType(HI_CHIP_PACKAGE_TYPE_E *penPackageType);

/********* common: osal ************/
#include <stdarg.h>
typedef va_list HI_VA_LIST_S;
HI_CHAR* HI_OSAL_Strncpy(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen);
HI_S32 HI_OSAL_Strncmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen);
HI_CHAR* HI_OSAL_Strncat(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen);
HI_S32 HI_OSAL_Snprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, ...);
HI_S32 HI_OSAL_Vsnprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, HI_VA_LIST_S stVAList);

#ifdef __cplusplus
}
#endif

#endif

