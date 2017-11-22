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

#ifndef __DRV_DEMUX_EXT_H__
#define __DRV_DEMUX_EXT_H__

#include "hi_type.h"

#include "hi_drv_demux.h"

typedef HI_S32  (*FN_DEMUX_AcquireEs)(HI_HANDLE, DMX_Stream_S*);
typedef HI_S32  (*FN_DEMUX_ReleaseEs)(HI_HANDLE, DMX_Stream_S*);

typedef struct
{
    FN_DEMUX_AcquireEs      pfnDmxAcquireEs;
    FN_DEMUX_ReleaseEs      pfnDmxReleaseEs;
} DEMUX_EXPORT_FUNC_S;

HI_S32  DMX_DRV_ModInit(HI_VOID);
HI_VOID DMX_DRV_ModExit(HI_VOID);

#endif

