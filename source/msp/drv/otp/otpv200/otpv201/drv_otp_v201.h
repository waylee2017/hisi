/******************************************************************************

  Copyright (C), 2011-2021, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_otp_v201.h
  Version       : Initial Draft
  Author        : 
  Created       : 
  Last Modified :
  Description   : OTP REG DEFINE
  Function List :
  History       :
******************************************************************************/
#ifndef __OTP_DRV_V201_H__
#define __OTP_DRV_V201_H__

#include "hi_common.h"
#include "hi_type.h"
#include "drv_otp_common.h"

HI_S32 OTP_V201_SetHdcpRootKey(HI_U8 *pu8Key);
HI_S32 OTP_V201_GetHdcpRootKey(HI_U8 *pu8Key);
HI_S32 OTP_V201_SetHdcpRootKeyLock(HI_VOID);
HI_S32 OTP_V201_GetHdcpRootKeyLock(HI_BOOL *pBLock);
HI_S32 OTP_V201_SetSTBRootKey(HI_U8 u8Key[16]);
HI_S32 OTP_V201_GetSTBRootKey(HI_U8 u8Key[16]);
HI_S32 OTP_V201_LockSTBRootKey(HI_VOID);
HI_S32 OTP_V201_GetSTBRootKeyLockFlag(HI_BOOL *pBLock);
HI_S32 OTP_V201_Get_DDPLUS_Flag(HI_BOOL *pu32DDPlusFlag);
HI_S32 OTP_V201_Get_DTS_Flag(HI_BOOL *pu32DTSFlag);
HI_S32 OTP_V201_SoftReset(HI_VOID);


#endif /* __OTP_DRV_V201_H__ */
