/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name     : mpi_priv_adec.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2006/03/10
  Description   :
  History       :
  1.Date        : 2006/03/10
    Author      : f47391
    Modification: Created file

******************************************************************************/

#ifndef __DRV_ADEC_IOCTL_H__
#define __DRV_ADEC_IOCTL_H__

#include "hi_type.h"
#include "hi_unf_sound.h"
#include "hi_module.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

typedef struct hiADEC_PROC_ITEM_S
{
    HI_BOOL        bAdecWorkEnable;
    HI_CHAR        szCodecType[32];
    HI_CHAR        szCodecDescription[32];
    HI_U32           u32CodecID;
    HI_BOOL         enFmt;        
    HI_UNF_SAMPLE_RATE_E enSampleRate;
    HI_UNF_BIT_DEPTH_E   enBitWidth;
    HI_U32          u32PcmSamplesPerFrame;
    HI_U32           u32FramnNm;
    HI_U32           u32ErrFrameNum;
    HI_U32           u32BufSize;
    HI_S32           s32BufRead;
    HI_U32           u32BufWrite;
    HI_U32           u32FrameSize;
    HI_U32           u32FrameRead;
    HI_U32           u32FrameWrite;
    HI_U32           u32PtsLost;
    HI_U32           u32Volume;
    HI_U32           u32DbgGetBufCount_Try;
    HI_U32           u32DbgGetBufCount;
    HI_U32           u32DbgPutBufCount_Try;
    HI_U32           u32DbgPutBufCount;
    HI_U32           u32DbgReceiveFrameCount_Try;
    HI_U32           u32DbgReceiveFrameCount;
    HI_U32           u32DbgSendStraemCount_Try;
    HI_U32           u32DbgSendStraemCount;
    HI_U32           u32DbgTryDecodeCount;
    HI_U32           u32FrameConsumedBytes;
    HI_U32           u32LastCorrectFrameNum;
} ADEC_PROC_ITEM_S;

/* 'IOC_TYPE_ADEC' means ADEC magic macro */
#define     DRV_ADEC_PROC_INIT _IOW(HI_ID_ADEC, 0, ADEC_PROC_ITEM_S *)
#define     DRV_ADEC_PROC_EXIT _IO(HI_ID_ADEC, 1)

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __MPI_PRIV_ADEC_H__ */
