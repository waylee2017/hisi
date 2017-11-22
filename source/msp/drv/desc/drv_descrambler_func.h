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

#ifndef __DRV_DESCRAMBLER_FUNC_H__
#define __DRV_DESCRAMBLER_FUNC_H__

#include "hi_unf_descrambler.h"

#include "drv_demux_define.h"

#ifdef __cplusplus
extern "C" {
#endif

HI_VOID DescramblerReset(HI_U32 KeyId, DMX_KeyInfo_S *KeyInfo);
HI_VOID DescInitHardFlag(HI_VOID);
HI_VOID DmxDescramblerResume(HI_VOID);

HI_S32  DMX_OsiDescramblerCreate(HI_U32 *KeyId, const HI_UNF_DMX_DESCRAMBLER_ATTR_S *DescAttr);
HI_S32  DMX_OsiDescramblerDestroy(HI_U32 KeyId);
HI_S32  DMX_OsiDescramblerGetAttr(HI_U32 KeyId, HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstDesramblerAttr);
HI_S32  DMX_OsiDescramblerSetAttr(HI_U32 KeyId, HI_UNF_DMX_DESCRAMBLER_ATTR_S *pstDesramblerAttr);
HI_S32  DMX_OsiDescramblerSetKey(HI_U32 KeyId, HI_U32 KeyType, HI_U8 *Key);
HI_S32  DMX_OsiDescramblerSetIVKey(HI_U32 KeyId, HI_U32 KeyType, HI_U8 *Key);
HI_S32  DMX_OsiDescramblerAttach(HI_U32 KeyId, HI_U32 ChanId);
HI_S32  DMX_OsiDescramblerDetach(HI_U32 KeyId, HI_U32 ChanId);
HI_S32  DMX_OsiDescramblerGetFreeKeyNum(HI_U32 *FreeCount);
HI_S32  DMX_OsiDescramblerGetKeyId(HI_U32 ChanId, HI_U32 *KeyId);

#ifdef HI_DEMUX_PROC_SUPPORT
DMX_KeyInfo_S* DMX_OsiGetKeyProc(HI_U32 KeyId);
#endif

HI_S32 DescGetDevice(DMX_DEV_OSI_S *pDmxDevOsi);

#ifdef CHIP_TYPE_hi3716m
HI_VOID DescGetHi3716MV300Flag(HI_VOID);
#endif


#ifdef __cplusplus
}
#endif

#endif  // __DRV_DESCRAMBLER_FUNC_H__

