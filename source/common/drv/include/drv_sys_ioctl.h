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
#ifndef  __DRV_SYS_IOCTL_H__
#define  __DRV_SYS_IOCTL_H__

#ifdef __cplusplus
extern "C"{
#endif /* End of #ifdef __cplusplus */

#include "hi_debug.h"

#define HI_ADVCA_REG    0x10180128
#define HI_CHIP_NON_ADVCA   (0x2a13c812)
#define HI_CHIP_ADVCA            (0x6edbe953)

typedef enum hiIOC_NR_SYS_E
{
    IOC_NR_SYS_INIT = 0,
    IOC_NR_SYS_EXIT,
    IOC_NR_SYS_SETCONFIG,
    IOC_NR_SYS_GETCONFIG,
    IOC_NR_SYS_GETVERSION,
    IOC_NR_SYS_GETTIMESTAMPMS,
    IOC_NR_SYS_GETDOLBYSUPPORT,
    IOC_NR_SYS_GETDTSSUPPORT,
    IOC_NR_SYS_GETADVCASUPPORT,
    IOC_NR_SYS_GETMACROVISIONSUPPORT,
    IOC_NR_SYS_GETDDRCONFIG,
    IOC_NR_SYS_GETDIEID
} IOC_NR_SYS_E;


#define SYS_INIT_CTRL         _IO (HI_ID_SYS, IOC_NR_SYS_INIT)
#define SYS_EXIT_CTRL         _IO (HI_ID_SYS, IOC_NR_SYS_EXIT)
#define SYS_SET_CONFIG_CTRL   _IOW(HI_ID_SYS, IOC_NR_SYS_SETCONFIG, HI_SYS_CONF_S)
#define SYS_GET_CONFIG_CTRL   _IOR(HI_ID_SYS, IOC_NR_SYS_GETCONFIG, HI_SYS_CONF_S)
#define SYS_GET_SYS_VERSION   _IOR(HI_ID_SYS, IOC_NR_SYS_GETVERSION, HI_SYS_VERSION_S)
#define SYS_GET_TIMESTAMPMS   _IOR(HI_ID_SYS, IOC_NR_SYS_GETTIMESTAMPMS, HI_U32)
#define SYS_GET_DOLBYSUPPORT   _IOR(HI_ID_SYS, IOC_NR_SYS_GETDOLBYSUPPORT, HI_U32)
#define SYS_GET_DTSSUPPORT       _IOR(HI_ID_SYS, IOC_NR_SYS_GETDTSSUPPORT, HI_U32)
#define SYS_GET_ADVCASUPPORT   _IOR(HI_ID_SYS, IOC_NR_SYS_GETADVCASUPPORT, HI_U32)
#define SYS_GET_MACROVISIONSUPPORT   _IOR(HI_ID_SYS, IOC_NR_SYS_GETMACROVISIONSUPPORT, HI_U32)
#define SYS_GET_DDRCONFIG         _IOR(HI_ID_SYS, IOC_NR_SYS_GETDDRCONFIG, HI_SYS_MEM_CONFIG_S)
#define SYS_GET_DIEID             _IOR(HI_ID_SYS, IOC_NR_SYS_GETDIEID, HI_U64)

/* Define Debug Level For SYS */
#define HI_FATAL_SYS(fmt...) HI_FATAL_PRINT(HI_ID_SYS, fmt)
#define HI_ERR_SYS(  fmt...) HI_ERR_PRINT(HI_ID_SYS, fmt)
#define HI_WARN_SYS( fmt...) HI_WARN_PRINT(HI_ID_SYS, fmt)
#define HI_INFO_SYS( fmt...) HI_INFO_PRINT(HI_ID_SYS, fmt)


#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __DRV_SYS_IOCTL_H__ */

