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
File Name     :	pcmdec.h
Version	      :	Initial	Draft
Author	      :	Hisilicon multimedia software group
Created	      :	2007/7/23
Last Modified :
Description   :	API header file for the codec of PCM
Function List :
History	      :
* Version     Date	   Author     DefectNum	      Description
           2008/10/11   y00106256      NULL       Create this file.
*********************************************************************/
#ifndef __AUDSP_COMP_PCMDEC_H__
#define __AUDSP_COMP_PCMDEC_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#include "hi_type.h"


#define HA_PCM_FRAMEUNIT_PRIV_SIZE 100


/************** PCM Decoder params ***************/
typedef enum
{
    COMP_PCMDEC_PARAMTYPE_ATTR = 0,

    COMP_PCMDEC_PARAMTYPE_BUTT,
} COMP_PCMDEC_PARAMTYPE_E;

typedef struct
{
    HI_U16 nChannels;            /* number of channels (i.e. mono, stereo...) */
    HI_U32 nSamplesPerSec;   /* sample rate */
    HI_U16 wBitsPerSample;   /* number of bits per sample of mono data */
    HI_U16 cbSize;                /* number of bytes of wave raw data cbExtWord*/
    HI_U16 cbExtWord[16];       /* extra information (after cbSize).                      */
    /* note: big-endian pcm supprt(microsoft wav file only support little-endian pcm format):
         cbSize = 4;
         cbExtWord[0] = 1;
         cbExtWord[1] ; //reserved
    */
} COMP_PCMDEC_PARAM_ATTR_S;


/****************************************************************************
                            DATA TYPE INFORMATION
****************************************************************************/
typedef struct
{
    HI_U32  u32FrameSize;  /* 帧长度信息 UNIT:BYTE */
    HI_U32  u32ChnNumber;  /* 声道数目 */
    HI_U32  u32BitWidth;   /* 每个采样点的位宽，总bit数 */
    HI_U32  u32SampleRate; /* 采样率设置 */
    HI_BOOL bBigEndian;    /* 大小端存储  */
    HI_BOOL bInterlace;    /* 交织码流标识 */
} COMP_PCMDEC_STORE_SETTING_S;


/****************************************************************************
                            DATA TYPE INFORMATION
****************************************************************************/
typedef struct
{
    /* output */
    HI_U32 u32StreamSampleRate;
    HI_U32 u32StreamChannels;
    HI_U32 u32StreamBitRate;

    HI_U32 u32PcmSampleRate;
    HI_U32 u32LbrSampleRate;
    HI_U32 u32HbrSampleRate;

    HI_U32 u32PcmChannels;
    HI_U32 u32LbrChannels;/* 2 */
    HI_U32 u32HbrChannels;/* 2(DDP) or 8 */

    HI_U32 u32PcmBitDepth;/* 16 or 24 */
    HI_U32 u32LbrBitDepth;/* 16 */
    HI_U32 u32HbrBitDepth;/* 16 */

    HI_U32 u32PcmBytesPerFrame;
    HI_U32 u32LbrBytesPerFrame;
    HI_U32 u32HbrBytesPerFrame;

    HI_BOOL bAckEosFlag;
    HI_BOOL bInterlace;

    HI_U32 u32CurnPtsReadPos; /* for PTS */
} PCM_FRMAE_BUF_S;


#ifdef __cplusplus
#if __cplusplus
}
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#endif  /* __AUDSP_COMP_PCMDEC_H__ */

