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

#ifndef __DRV_DESC_EXT_H__
#define __DRV_DESC_EXT_H__

#include "hi_type.h"
#include "hi_drv_descrambler.h"

struct hiDMX_KeyInfo_S;
struct hiDMX_DEV_OSI_S;

typedef HI_VOID  	(*fp_DRV_DSC_Void)(HI_VOID);
typedef HI_S32 		(*fp_DRV_DSC_Ioctl)(struct file *file, HI_U32 cmd, HI_VOID *arg);
typedef HI_VOID  	(*fp_DRV_DSC_Reset)(HI_U32 KeyId, struct hiDMX_KeyInfo_S *KeyInfo);
typedef HI_S32  	(*fp_DRV_DSC_Deatch)(HI_U32 KeyId, HI_U32 ChanId);
typedef HI_S32 		(*fp_DRV_DSC_Attach)(HI_U32 KeyId, HI_U32 ChanId);
typedef HI_VOID  	(*fp_DRV_DSC_DestoryAllDsc)(HI_U32 file);
typedef HI_S32   	(*fp_DRV_DSC_GetDevice)(struct hiDMX_DEV_OSI_S *pDmxDevOsi);


/** the callback functions list used for Descrambler module */
typedef struct DSC_RegisterFunctionlist
{
  fp_DRV_DSC_Ioctl            DMXKeyIoctl;
  fp_DRV_DSC_Reset            DescramblerReset;
  fp_DRV_DSC_Void             DescInitHardFlag;
  fp_DRV_DSC_Void             DmxDescramblerResume;
  fp_DRV_DSC_Deatch           DMX_OsiDescramblerDetach;
  fp_DRV_DSC_Attach           DMX_OsiDescramblerAttach;
  fp_DRV_DSC_DestoryAllDsc    DmxDestroyAllDescrambler;
  fp_DRV_DSC_GetDevice        DescGetDevice;
}DSC_RegisterFunctionlist_S;

HI_S32 DSC_DRV_ModInit(HI_VOID);
HI_VOID DSC_DRV_ModExit(HI_VOID);
#endif

