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

#ifndef __PVR_SCD_H__
#define __PVR_SCD_H__

#include "hi_unf_demux.h"
#include "hi_mpi_demux.h"

#include "drv_demux_index.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

/* start code type definition(data from SCD buffer) */
#define DMX_INDEX_SC_TYPE_TS         0x1      /* ts packet header */
#define DMX_INDEX_SC_TYPE_PTS        0x2      /* pes packet header */
#define DMX_INDEX_SC_TYPE_PAUSE      0x3      /* pause flag */
#define DMX_INDEX_SC_TYPE_PIC        0x4      /* the start 00 00 01 of frame data */
#define DMX_INDEX_SC_TYPE_PIC_SHORT  0x5      /* the short head 00 01 of frame data */
#define DMX_INDEX_SC_TYPE_PES_ERR    0xf      /* the header of PES syntax error */

HI_VOID DmxRecUpdateFrameInfo(HI_U32 *Param, FRAME_POS_S *IndexInfo);
HI_S32  DmxScdToVideoIndex(HI_BOOL bUseTimeStamp,const DMX_IDX_DATA_S *ScData, FINDEX_SCD_S *pstFidx);
HI_S32  DmxScdToAudioIndex(HI_UNF_DMX_REC_INDEX_S *LastFrame, const DMX_IDX_DATA_S *ScData);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif

