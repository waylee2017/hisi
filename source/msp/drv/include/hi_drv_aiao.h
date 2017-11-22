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
  File Name     : mpi_priv_vi.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/03/26
  Description   :
  History       :
  1.Date        : 2010/03/26
    Author      : j00131665
    Modification: Created file

******************************************************************************/

#ifndef __MPI_PRIV_AIAO_H__
#define __MPI_PRIV_AIAO_H__

#include "hi_unf_sio.h"
#include "hi_module.h"
#include "hi_debug.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define AIO_KERMEM_OPTIMIZE

#define X5HD_ECO_SIO 0  /* SIO0 do eco */

#define AI_MAX_NUM 3
#define AO_MAX_NUM 3

#define ADEC_MAX_CHN_NUM     32

#define UMAP_GET_CHN(f)      ((HI_U32)((f)->private_data))
#define UMAP_SET_CHN(f, chn) (((f)->private_data) = (void*)(chn))


#define HI_DBG_EMERG      HI_LOG_LEVEL_FATAL   /* system is unusable                   */
#define HI_DBG_ALERT      HI_LOG_LEVEL_WARNING   /* action must be taken immediately     */
#define HI_DBG_CRIT       HI_LOG_LEVEL_WARNING   /* critical conditions                  */
#define HI_DBG_ERR        HI_LOG_LEVEL_ERROR   /* error conditions                     */
#define HI_DBG_WARN       HI_LOG_LEVEL_WARNING   /* warning conditions                   */
#define HI_DBG_NOTICE     HI_LOG_LEVEL_INFO   /* normal but significant condition     */
#define HI_DBG_INFO       HI_LOG_LEVEL_INFO   /* informational                        */
#define HI_DBG_DEBUG      HI_LOG_LEVEL_INFO   /* debug-level messages                 */

#define HI_TRACE_SIO(level, fmt...)\
do{ \
        HI_TRACE(level,HI_ID_SIO,fmt);\
}while(0)


/*
#define HI_TRACE_SIO(HI_DBG_EMERG, fmt...)  		HI_FATAL_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_ALERT, fmt...)  		HI_WARN_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_CRIT, fmt...) 		HI_WARN_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_ERR, fmt...)  		HI_ERR_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_WARN, fmt...)		HI_WARN_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_NOTICE, fmt...) 		HI_INFO_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_INFO, fmt...)  		HI_INFO_PRINT(HI_ID_SIO, fmt)
#define HI_TRACE_SIO(HI_DBG_DEBUG, fmt...)  		HI_INFO_PRINT(HI_ID_SIO, fmt)
*/

/*samples per frame for AACLC and aacPlus */
#define AACLC_SAMPLES_PER_FRAME         1024  
#define AACPLUS_SAMPLES_PER_FRAME       2048  

/*max length of AAC stream by bytes */
#define MAX_AAC_MAINBUF_SIZE    768*2


typedef enum hiAMR_MODE_E
{
    AMR_MODE_MR475 = 0,     /* AMR bit rate as  4.75k */
    AMR_MODE_MR515,         /* AMR bit rate as  5.15k */              
    AMR_MODE_MR59,          /* AMR bit rate as  5.90k */
    AMR_MODE_MR67,          /* AMR bit rate as  6.70k (PDC-EFR)*/
    AMR_MODE_MR74,          /* AMR bit rate as  7.40k (IS-641)*/
    AMR_MODE_MR795,         /* AMR bit rate as  7.95k */    
    AMR_MODE_MR102,         /* AMR bit rate as 10.20k */    
    AMR_MODE_MR122,         /* AMR bit rate as 12.20k (GSM-EFR)*/            
    AMR_MODE_BUTT
} AMR_MODE_E;

typedef enum hiAMR_FORMAT_E
{
    AMR_FORMAT_MMS,     /* Using for file saving        */
    AMR_FORMAT_IF1,     /* Using for wireless translate */
    AMR_FORMAT_IF2,     /* Using for wireless translate */
    AMR_FORMAT_BUTT
} AMR_FORMAT_E;

/*
An example of the packing scheme for G726-32 codewords is as shown, and bit A3 is the least significant bit of the first codeword: 
RTP G726-32:
0                   1
0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
|B B B B|A A A A|D D D D|C C C C| ...
|0 1 2 3|0 1 2 3|0 1 2 3|0 1 2 3|
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

MEDIA G726-32:
0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
|A A A A|B B B B|C C C C|D D D D| ...
|3 2 1 0|3 2 1 0|3 2 1 0|3 2 1 0|
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
*/
typedef enum hiG726_BPS_E
{
	G726_16K = 0,       /* G726 16kbps, see RFC3551.txt  4.5.4 G726-16 */ 
	G726_24K,           /* G726 24kbps, see RFC3551.txt  4.5.4 G726-24 */
	G726_32K,           /* G726 32kbps, see RFC3551.txt  4.5.4 G726-32 */
	G726_40K,           /* G726 40kbps, see RFC3551.txt  4.5.4 G726-40 */
	MEDIA_G726_16K,     /* G726 16kbps for ASF ... */ 
	MEDIA_G726_24K,     /* G726 24kbps for ASF ... */
	MEDIA_G726_32K,     /* G726 32kbps for ASF ... */
	MEDIA_G726_40K,     /* G726 40kbps for ASF ... */
	G726_BUTT,
} G726_BPS_E;

typedef enum hiADPCM_TYPE_E
{
    /* see DVI4 diiffers in three respects from the IMA ADPCM at RFC3551.txt 4.5.1 DVI4 */
    
	ADPCM_TYPE_DVI4 = 0,    /* 32kbps ADPCM(DVI4) for RTP */
	ADPCM_TYPE_IMA,         /* 32kbps ADPCM(IMA),NOTICE:point num must be 161/241/321/481 */
	
	ADPCM_TYPE_BUTT,
} ADPCM_TYPE_E;

typedef enum hiAAC_TYPE_E
{
	AAC_TYPE_AACLC      = 0,            /* AAC LC */                 
	AAC_TYPE_EAAC       = 1,            /* eAAC  (HEAAC or AAC+  or aacPlusV1) */                      
	AAC_TYPE_EAACPLUS   = 2,            /* eAAC+ (AAC++ or aacPlusV2) */
	AAC_TYPE_BUTT,
} AAC_TYPE_E;

typedef enum hiAAC_BPS_E
{
    AAC_BPS_16K     = 16000,
    AAC_BPS_22K     = 22000,
    AAC_BPS_24K     = 24000,
    AAC_BPS_32K     = 32000,
    AAC_BPS_48K     = 48000,
    AAC_BPS_64K     = 64000,
    AAC_BPS_96K     = 96000,
    AAC_BPS_128K    = 128000,
    AAC_BPS_BUTT
} AAC_BPS_E;

typedef struct hiAAC_FRAME_INFO
{
    HI_UNF_SAMPLE_RATE_E enSamplerate;   /* sample rate*/
    HI_S32 s32BitRate;                  /* bitrate */
    HI_S32 s32Profile;                  /* profile*/
	HI_S32 S32TnsUsed;                  /* TNS Tools*/
	HI_S32 s32PnsUsed;                  /* PNS Tools*/
} AAC_FRAME_INFO;

typedef struct hiAUDIO_FRAME_S
{ 
    HI_UNF_BIT_DEPTH_E   enBitwidth;     /*audio frame bitwidth*/
    AUDIO_SOUND_MODE_E  enSoundmode;    /*audio frame momo or stereo mode*/
    HI_U8  aData[MAX_AUDIO_FRAME_LEN*2];/*if momo aData store left channel data
                                            if stereo aData store l/r channel data
                                            l/r chnnel data len is u32Len*/
    HI_U64 u64TimeStamp;                /*audio frame timestamp*/
    HI_U32 u32Seq;                      /*audio frame seq*/
    HI_U32 u32Len;                      /*data lenth per channel in frame*/
} AUDIO_FRAME_S; 

typedef struct hiAEC_FRAME_S
{
    AUDIO_FRAME_S 	stRefFrame;	/* AEC reference audio frame */
    HI_BOOL			bValid;   	/* whether frame is valid */
} AEC_FRAME_S;


typedef struct hiAUDIO_FRAME_INFO_S
{
    AUDIO_FRAME_S *pstFrame;/*frame ptr*/
    HI_U32         u32Id;   /*frame id*/
} AUDIO_FRAME_INFO_S;

typedef struct hiAUDIO_STREAM_S 
{ 
    HI_U8 *pStream;         /* the virtual address of stream */ 
    HI_U32 u32PhyAddr;      /* the physics address of stream */
    HI_U32 u32Len;          /* stream lenth, by bytes */
    HI_U64 u64TimeStamp;    /* frame time stamp*/
    HI_U32 u32Seq;          /* frame seq,if stream is not a valid frame,u32Seq is 0*/
} AUDIO_STREAM_S;


typedef enum hiAUDIO_RESAMPLE_TYPE_E
{
    AUDIO_RESAMPLE_1X2 = 0x1,
    AUDIO_RESAMPLE_2X1 = 0x2,
    AUDIO_RESAMPLE_1X4 = 0x3,
    AUDIO_RESAMPLE_4X1 = 0x4,
    AUDIO_RESAMPLE_BUTT
} AUDIO_RESAMPLE_TYPE_E;

typedef struct hiAUDIO_RESAMPLE_ATTR_S
{
    HI_U32                  u32InPointNum;     /* input point number of frame */
    HI_UNF_SAMPLE_RATE_E     enInSampleRate;     /* input sample rate */
    AUDIO_RESAMPLE_TYPE_E   enReSampleType; /* resample type */
} AUDIO_RESAMPLE_ATTR_S;


#define HI_FATAL_AI(fmt...) \
            HI_FATAL_PRINT(HI_ID_SIO_AI, fmt)

#define HI_ERR_AI(fmt...) \
            HI_ERR_PRINT(HI_ID_SIO_AI, fmt)

#define HI_WARN_AI(fmt...) \
            HI_WARN_PRINT(HI_ID_SIO_AI, fmt)

#define HI_INFO_AI(fmt...) \
            HI_INFO_PRINT(HI_ID_SIO_AI, fmt)
            
#define HI_FATAL_AO(fmt...) \
            HI_FATAL_PRINT(HI_ID_SIO_AO, fmt)

#define HI_ERR_AO(fmt...) \
            HI_ERR_PRINT(HI_ID_SIO_AO, fmt)

#define HI_WARN_AO(fmt...) \
            HI_WARN_PRINT(HI_ID_SIO_AO, fmt)

#define HI_INFO_AO(fmt...) \
            HI_INFO_PRINT(HI_ID_SIO_AO, fmt)



#define HI_MPI_AI_CHN           AI_CHN
#define HI_MPI_AO_CHN           AO_CHN

#define HI_MPI_AUDIO_DEV        AUDIO_DEV
#define HI_MPI_AEC_FRAME_S      AEC_FRAME_S
#define HI_MPI_AUDIO_FRAME_S    HI_UNF_AO_FRAMEINFO_S
#define HI_MPI_AIO_ATTR_S       AIO_ATTR_S

#if 1
#define AIO_GET_BITCNT(enBitwidth)  (enBitwidth)
#else
#define AIO_GET_BITCNT(enBitwidth)  (8<<(enBitwidth))
#endif

#define AIO_GET_CHCNT(enSoundmode)  (1<<(enSoundmode))


#if 0

#define AI_BIND_CHANNEL2FD      _IOW(IOC_TYPE_AI, IOC_NR_AI_BINDFD, HI_U32)
#define GET_AI_ATTR             _IOR(IOC_TYPE_AI, IOC_NR_AI_GET_ATTR,AIO_ATTR_S)/* get device attribute */
#define SET_AI_ATTR             _IOW(IOC_TYPE_AI, IOC_NR_AI_SET_ATTR,AIO_ATTR_S)/* set device attribute */
#define ENABLE_AI_TRANS         _IO(IOC_TYPE_AI, IOC_NR_AI_EN_DEV)/* enalbe device */
#define DISABLE_AI_TRANS        _IO(IOC_TYPE_AI, IOC_NR_AI_DIS_DEV)/* disable device */
#define GET_AI_FRAME		    _IOWR(IOC_TYPE_AI, IOC_NR_AI_GET_FRM,AI_FRAME_COMBINE_S)/* get AI frame */
#define AI_ENABLE_AEC			_IOW(IOC_TYPE_AI, IOC_NR_AI_EN_AEC,AI_ENABLE_AEC_S)/* enable echo */
#define AI_DISABLE_AEC			_IO(IOC_TYPE_AI, IOC_NR_AI_DIS_AEC)/* disable echo */
#define ENABLE_AI_CHN           _IO(IOC_TYPE_AI, IOC_NR_AI_EN_CHN)/* enable AI input channel */
#define DISABLE_AI_CHN          _IO(IOC_TYPE_AI, IOC_NR_AI_DIS_CHN)/* disable AI input channel */



#define GET_AO_ATTR             _IOR(IOC_TYPE_AO, IOC_NR_AO_GET_ATTR, AIO_ATTR_S)/* get device attribute */
#define SET_AO_ATTR             _IOW(IOC_TYPE_AO, IOC_NR_AO_SET_ATTR, AIO_ATTR_S)/* set device attribute */
#define ENABLE_AO_TRANS         _IO(IOC_TYPE_AO, IOC_NR_AO_EN_DEV)/* enable device */
#define DISABLE_AO_TRANS        _IO(IOC_TYPE_AO, IOC_NR_AO_DIS_DEV)/* disable device */
#define PUT_AO_FRAME		    _IOW(IOC_TYPE_AO, IOC_NR_AO_PUT_FRM,AIO_FRAME_INFO_S)/* send AO frame */
#define ENABLE_AO_CHN           _IO(IOC_TYPE_AO, IOC_NR_AO_EN_CHN)/* enable AO output channel */
#define DISABLE_AO_CHN          _IO(IOC_TYPE_AO, IOC_NR_AO_DIS_CHN)/* disable AO output channel */
#define AO_BIND_AI_CTRL         _IOW(IOC_TYPE_AO, IOC_NR_AO_BIND_AI, AO_BIND_AI_ARGS_S)
#define AO_UNBIND_AI_CTRL       _IOW(IOC_TYPE_AO, IOC_NR_AO_UNBIND_AI, AO_BIND_AI_ARGS_S)
#endif


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __MPI_PRIV_VI_H__ */


