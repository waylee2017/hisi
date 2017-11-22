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
#ifndef __HI_ADEC_CORE_H__
#define __HI_ADEC_CORE_H__

#include "hi_type.h"
#include "hi_unf_sound.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */


#define RET_VOID HI_VOID

#define ADEC_PTS_BOUNDARY_SIZE 0x40000000L  /* 0x40000000L */

#define ADEC_BYTES_DISCARD_THD 0x100      /* dicard max when decoder  holding  */

//#define ADEC_MMZ_INBUF_SUPPORT /* Input Buffer use mmz memory */
#define ADEC_MMZ_OUTBUF_SUPPORT /* output Buffer use mmz memory */
#define ADEC_MAX_INPUT_FRAME 0x8000    /* max adec input frame size */
#define ADEC_MIN_INPUT_FRAME 8            /* min  adec input frame size */
#define ADEC_CONTINUE_DISCARDPTS_THD 8     /*continue discard pts threshold  */
#define ADEC_SYS_SLEEP_TIME 10   //for adec pull thread
#define ADEC_MIN_SLEEP_TIME 1    //for adec pull thread 
#define ADEC_PTSMS_DIFF 10 //max differ-times stream bps
#define ADEC_MAXPTSTIME 50000
#define ADEC_MAX_PTS_SCOPE 100

#define ADEC_SCHE_THREADTIME_LIMIT  (ADEC_SYS_SLEEP_TIME*3)
#define ADEC_EXE_THREADTIME_LIMIT    (ADEC_SYS_SLEEP_TIME*3)

#define ADEC_MAX_CODECUNSUPPORT_NUM   100
#define ADEC_MAX_STREAMCORRUPT_NUM    100

/* ADEC_INPUTBUF_PADDING_SIZE description: Buffer allocate additional memory, deal with Buf loop
   mechanism:
 |---- PADDING_SIZE ----|-----------------Buffer_Size --------------------|
    1) Buffer Loop
    2) data not enough when decode
    copy buffer when the two condition come at the same time, change to linear buffer.
    Normal, don't need considering the affection to system, because the data is very little
    Note: must insure that PADDING_SIZE > the MAX Audio Frame Length, otherwise, the space buffer is not big enough to copy.
    (knowing: the MAX Audio Frame Length = 16384 Bytes)
 */
#define ADEC_INPUTBUF_PADDING_SIZE 0x10000   /* DTSHD max frame size is 0x8000, need two frame */
#define PACKET_ADEC_INPUTBUF_PADDING_SIZE (2 * 1024 * 1024)

#if ADEC_INPUTBUF_PADDING_SIZE < ADEC_MAX_INPUT_BLOCK_SIZE
#error "ADEC_INPUTBUF_PADDING_SIZE must bigger than  ADEC_MAX_INPUT_BLOCK_SIZE"
#elif ADEC_INPUTBUF_PADDING_SIZE < ADEC_MAX_INPUT_FRAME
#error "ADEC_INPUTBUF_PADDING_SIZE must bigger than  ADEC_MAX_INPUT_FRAME"
#endif

typedef struct hiADEC_Stream_OutBuf_S
{
    HI_U32           u32OutBufNum;
    HI_U32           u32BufReadIdx;
    HI_U32           u32BufWriteIdx;
    HI_U32*          pu32BaseAddr;
    ADEC_OUTPUTBUF_S outBuf[ADEC_MAX_WORK_BUFFER_NUMBER];
    HI_MMZ_BUF_S     sAdecOutMMzBuf;
} ADEC_STREAM_OUTBUF_S;

typedef struct hiADEC_Info_S
{
    HI_VOID*                             hDecoder;
    HI_HADECODE_OPENPARAM_S              decParam;
    HI_VOID*                             pAudPrivDataBak; /* backup private data */
    HI_U32                               u32AudPrivDataBakDize;
    HI_HA_DECODE_S*                      pHaDecoderDev;
} ADEC_INFO_S;


typedef struct hiADEC_MidState_S
{
    HI_U32               u32ContinueErrNum; /*adec err times, when more than 3, we will reset decoder*/
    HI_U32               u32LastFrameChannels;
    HI_UNF_SAMPLE_RATE_E enLastFrameSmaplerate;
    HI_UNF_STREAM_BUF_S  lastPkt[2];
} ADEC_MIDSTATE_S;

typedef struct hiADEC_PTS_Queue_S
{
    HI_U32   u32LastPtsMs;
    HI_U32   u32LastStorePtsMs;
    HI_U32   u32RecyleStorePtsMs;
    HI_U32   u32RecycleFirstPtsMs;
    HI_U32   u32PtsBeforeRevise;
    HI_U32   ulPTSread;    /* PTS buffer read  ptr */
    HI_U32   ulPTSwrite;    /* PTS buffer write ptr */
    ADEC_PTS tPTSArry[ADEC_MAX_STORED_PTS_NUM];
} ADEC_PTS_QUE_S;

typedef struct hiADEC_PACKET_Queue_S
{
    HI_U32      ulPacketRead;  /* Queue read  offset */
    HI_U32      ulPacketwrite; /* Queue write offset */
    ADEC_PACKET tPacketArry[ADEC_MAX_STORED_PACKET_NUM];
} ADEC_PACKET_QUE_S;


/* Audio frame information structure */
typedef struct hiADEC_FRAME_INFO_S
{      
    HI_BOOL                bFrameInfoChange;
    HI_U32                 u32Channel;
    HI_U32                 enSampleRate;
    HI_UNF_BIT_DEPTH_E     enBitDepth;
} ADEC_FRAME_INFO_S;


typedef struct hiADEC_CHANNEL_S
{
    HI_U32               u32Volume;
    HI_S16               s16VolumeFrac;  /* 1.15 fix-point (u32Volume*0x7fff/ADEC_MAX_VOLUME) */
    HI_U32               u32AdecChID;
    HI_BOOL              beAssigned;
    HI_BOOL              beWork;
    HI_BOOL              bAdecEosFlag; /*eos flag*/
    HI_U32               u32NotEnoughBufCnt; /* counter for not enough data in decoding*/
    HI_U32               u32TotalAdecInByte;
    HI_U32               u32TotalAdecTime;
    HI_U32               u32StartTime;
    HI_U32               u32EndTime;
    pthread_mutex_t      ApiMutex;
    pthread_mutex_t      DataMutex;
    pthread_mutex_t      IOMutex;
    HI_BOOL              AdecThreadRun;
    pthread_t            AdecThreadInst;
    HI_U32               u32CodecID;                 /* decoder u32CodecID                         */
    HI_BOOL              bPacketDecoder;
    HI_BOOL              bHwDecoder;
    HI_S32               AdecDevFd;
    HI_S32               s32BsConsumeBytes;
    ADEC_INFO_S          decAttr;
    ADEC_PTS_QUE_S       PTSQue;
    ADEC_MIDSTATE_S      midState;
    ADEC_STREAM_BUFFER_S InStreamBuf;
    ADEC_STREAM_OUTBUF_S outStreamBuf;
    ADEC_PROC_ITEM_S*    pstAdecInfo;
    ADEC_PACKET_QUE_S*   pstPacketQue;
    ADEC_FRAME_INFO_S    stFrameInfo;
} ADEC_CHAN_S;


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_AENC_H__ */

