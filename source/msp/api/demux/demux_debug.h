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

#ifndef __DEMUX_DEBUG_H__
#define __DEMUX_DEBUG_H__

#include "hi_debug.h"

#define HI_FATAL_DEMUX(fmt...)      HI_FATAL_PRINT  (HI_ID_DEMUX, fmt)
#define HI_ERR_DEMUX(fmt...)        HI_ERR_PRINT    (HI_ID_DEMUX, fmt)
#define HI_WARN_DEMUX(fmt...)       HI_WARN_PRINT   (HI_ID_DEMUX, fmt)
#define HI_INFO_DEMUX(fmt...)       HI_INFO_PRINT   (HI_ID_DEMUX, fmt)

#endif

