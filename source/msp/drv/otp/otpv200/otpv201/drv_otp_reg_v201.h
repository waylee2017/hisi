/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : otp_reg_v201.h
  Version       : Initial Draft
  Author        : 
  Created       : 
  Last Modified :
  Description   : OTP REG DEFINE
  Function List :
  History       :
******************************************************************************/
#ifndef __OTP_REG_V201_H__
#define __OTP_REG_V201_H__

#include "hi_common.h"
#include "hi_type.h"
#include "drv_otp_reg_v200.h"
#include "drv_otp_common.h"

/* CRG Address */
#define OTP_V201_CRG_BASE_OFFSET      0x101f5000
#define OTP_V201_CRG_CA_ADDR          (OTP_V201_CRG_BASE_OFFSET + 0x00B4)

/* CRG29 CA Structure */
typedef union
{
    struct
    {
        HI_U32 ca_ci_srst_req       : 1; 
        HI_U32 ca_efuse_srst_req    : 1; 
        HI_U32 reserved1            : 6; 
        HI_U32 ca_cken              : 1; 
        HI_U32 ca_efuse_cken        : 1;
        HI_U32 reserved2            : 22;
    } bits;
    HI_U32 u32;
} OTP_V201_CRG29_CA_U;

#endif/* __OTP_REG_V201_H__ */
/*--------------------------------------END------------------------------------*/
