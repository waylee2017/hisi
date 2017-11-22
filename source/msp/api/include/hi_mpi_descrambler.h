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

#ifndef __HI_MPI_DESCRAMBLER_H__
#define __HI_MPI_DESCRAMBLER_H__

#include "hi_type.h"

#include "hi_unf_descrambler.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

HI_S32 HI_MPI_DMX_CreateDescrambler(HI_U32 u32DmxId, const HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstDesramblerAttr, HI_HANDLE *phKey);
HI_S32 HI_MPI_DMX_DestroyDescrambler(HI_HANDLE hKey);
HI_S32 HI_MPI_DMX_SetDescramblerEvenKey(HI_HANDLE hKey, const HI_U8 *pu8EvenKey);
HI_S32 HI_MPI_DMX_SetDescramblerOddKey(HI_HANDLE hKey, const HI_U8 *pu8OddKey);
HI_S32 HI_MPI_DMX_SetDescramblerEvenIVKey(HI_HANDLE hKey, const HI_U8 *pu8IVKey);
HI_S32 HI_MPI_DMX_SetDescramblerOddIVKey(HI_HANDLE hKey, const HI_U8 *pu8IVKey);
HI_S32 HI_MPI_DMX_AttachDescrambler(HI_HANDLE hKey, HI_HANDLE hChannel);
HI_S32 HI_MPI_DMX_DetachDescrambler(HI_HANDLE hKey, HI_HANDLE hChannel);
HI_S32 HI_MPI_DMX_GetDescramblerKeyHandle(HI_HANDLE hChannel, HI_HANDLE *phKey);
HI_S32 HI_MPI_DMX_GetFreeDescramblerKeyCount(HI_U32 u32DmxId, HI_U32 *pu32FreeCount);
HI_S32 HI_MPI_DMX_GetDescramblerAttr(HI_HANDLE hKey, HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstAttr);
HI_S32 HI_MPI_DMX_SetDescramblerAttr(HI_HANDLE hKey, HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstAttr);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif  /* __HI_MPI_DESCRAMBLER_H__ */

