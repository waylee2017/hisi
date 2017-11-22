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
#ifndef __AUDSP_COMP_DTSDEC_XA_H__
#define __AUDSP_COMP_DTSDEC_XA_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#include "hi_type.h"

#define COMP_XADTSDEC_MSGPOOL_SIZE 0x100

#define COMP_XADTSDEC_FRAMEUNIT_PRIV_SIZE (sizeof(COMP_XADTSDEC_PRIVATE_INFO_S))

#define MAX_DTSHD_IEC_OFFSET_SIZE 32768

/* the repetition period between 2 data-burst of DTS, also indicate the out buffer length */
#define DTS_REPETITION_TYPE_I 512
#define DTS_REPETITION_TYPE_II 1024
#define DTS_REPETITION_TYPE_III 2048
#define MAX_DTSCORE_IEC_OFFSET_SIZE (DTS_REPETITION_TYPE_III * 2 * sizeof(HI_U16))


/************** XA DTS Decoder params ***************/
typedef enum
{
    COMP_XADTSDEC_PARAMTYPE_ATTR = 0,
    COMP_XADTSDEC_INPUT_EOSFLAG = 1,
    COMP_XADTSDEC_EXEDONE_FLAG = 2,

    COMP_XADTSDEC_PARAMTYPE_BUTT,
} COMP_XADTSDEC_PARAMTYPE_E;

typedef struct
{
    HI_U32  spkrOut;              /* set as a result of spkrout ,default is 2(Lo/Ro) */
    HI_BOOL enableDownmix; /* default true */
    HI_BOOL coreOnly;       /**< true: core decode only, false: dts hd decode,default value is true */
    HI_BOOL lfeMixedToFrontWhenNoDedicatedLFEOutput;         /**< true: enable lfe,default value is false */    
    HI_U32 outputBitWidth;        /**< 16: 16bit, 24: 24bit, 0,:native, defalut is 24 */
    HI_BOOL enableDialNorm; /* true: enable , default value is true */
    HI_U32  DRCPercent;      /* 0~100 - default is 0 ,no DRC */
    HI_BOOL enableHDPassThrough;       /* true: enable , default value is true */
    HI_U32  PirvateControl;     
} COMP_XADTSDEC_PARAM_ATTR_S;

typedef struct
{
    HI_BOOL bEosFlag;
} COMP_XADTSDEC_INPUT_EOSFLAG_S;

typedef struct
{
    HI_BOOL bExeDone;
} COMP_XADTSDEC_EXEDONE_FLAG_S;

/************** XA DTS Decoder config ***************/
typedef enum
{
#if 0
    COMP_XADTSDEC_CFGTYPE_TODO,
#endif

    COMP_XADTSDEC_CFGTYPE_BUTT,
} COMP_XADTSDEC_CONFIG_TYPE_E;
// config reserved

/************** XA DTS Decoder private info ***************/
typedef struct
{
    HI_U32                u32PcmBitDepth;
    HI_U32                u32PcmChannels;
    HI_U32                u32PcmSampleRate;
    HI_U32                u32StreamBitRate;
    HI_U32                u32PcmBytesPerFrame;
    HI_U32                u32CoreBytesPerFrame;
    HI_U32                u32HdBytesPerFrame;
} COMP_XADTSDEC_PRIVATE_INFO_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#endif  /* __AUDSP_COMP_DTSDEC_XA_H__ */
