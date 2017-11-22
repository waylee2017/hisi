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
#ifndef __HI_REG_COMMON_H__
#define __HI_REG_COMMON_H__
#ifdef CHIP_TYPE_hi3716mv330
#include "./hi3716mv330/hi_reg_sys.h"
#include "./hi3716mv330/hi_reg_peri.h"
#include "./hi3716mv330/hi_reg_io.h"
#include "./hi3716mv330/hi_reg_crg.h"
#else
#include "./hi3716mv310/hi_reg_sys.h"
#include "./hi3716mv310/hi_reg_peri.h"
#include "./hi3716mv310/hi_reg_io.h"
#include "./hi3716mv310/hi_reg_crg.h"
#endif


#define HI_SYS_BASE_ADDR        0x101E0000
#define HI_PERI_BASE_ADDR       0x10200000
#define HI_IO_BASE_ADDR         0x10203000 
#define HI_CRG_BASE_ADDR        0x101F5000

typedef S_SYS_CTRL_REGS_TYPE     HI_REG_SYSCTRL_S;
typedef S_PERI_CTRL_REGS_TYPE    HI_REG_PERI_S;
typedef S_IO_REGS_TYPE          HI_REG_IO_S;
typedef S_CRG_REGS_TYPE         HI_REG_CRG_S;

extern volatile HI_REG_SYSCTRL_S    *g_pstRegSysCtrl;
extern volatile HI_REG_PERI_S       *g_pstRegPeri;
extern volatile HI_REG_IO_S         *g_pstRegIO;
extern volatile HI_REG_CRG_S        *g_pstRegCrg;

#endif  // __HI_REG_COMMON_H__

