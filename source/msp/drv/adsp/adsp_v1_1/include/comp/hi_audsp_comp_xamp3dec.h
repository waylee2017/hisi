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
#ifndef __AUDSP_COMP_MP3DEC_XA_H__
#define __AUDSP_COMP_MP3DEC_XA_H__

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#include "hi_type.h"

#define COMP_XAMP3DEC_MSGPOOL_SIZE 0x100

#define COMP_XAMP3DEC_FRAMEUNIT_PRIV_SIZE (sizeof(COMP_XAMP3DEC_PRIVATE_INFO_S))

/************** XA MP3 Decoder params ***************/
typedef enum
{
    COMP_XAMP3DEC_PARAMTYPE_ATTR = 0,
    COMP_XAMP3DEC_INPUT_EOSFLAG = 1,
    COMP_XAMP3DEC_EXEDONE_FLAG = 2,

    COMP_XAMP3DEC_PARAMTYPE_BUTT,
} COMP_XAMP3DEC_PARAMTYPE_E;

typedef struct
{
    /* PCM Word Size,Only 16 and 24 are valid internal word format word sizes */
    HI_U32 u32BitDepth;

    /* CRC check Enable */
    HI_BOOL bEnableCrc;

    /* MCH Enable */
    HI_BOOL bEnableMultiCh;
} COMP_XAMP3DEC_PARAM_ATTR_S;

typedef struct
{
    HI_BOOL bEosFlag;
} COMP_XAMP3DEC_INPUT_EOSFLAG_S;

typedef struct
{
    HI_BOOL bExeDone;
} COMP_XAMP3DEC_EXEDONE_FLAG_S;

/************** XA MP3 Decoder config ***************/
typedef enum
{
#if 0
    COMP_XAMP3DEC_CFGTYPE_TODO,
#endif

    COMP_XAMP3DEC_CFGTYPE_BUTT,
} COMP_XAMP3DEC_CONFIG_TYPE_E;
// config reserved

/************** XA MP3 Decoder private info ***************/
typedef enum
{
    XAMP3DEC_CHANNEL_MODE_STEREO = 0,
    XAMP3DEC_CHANNEL_MODE_JOINTSTERERO,
    XAMP3DEC_CHANNEL_MODE_DUALSTERERO,
    XAMP3DEC_CHANNEL_MODE_MONO,
} COMP_XAMP3DEC_CHANNEL_MODE;

typedef struct
{
    HI_U32                u32PcmBitDepth;
    HI_U32                u32PcmChannels;
    HI_U32                u32PcmSampleRate;
    HI_U32                u32StreamBitRate;
    HI_U32                u32PcmBytesPerFrame;
    COMP_XAMP3DEC_CHANNEL_MODE enChanMode;
} COMP_XAMP3DEC_PRIVATE_INFO_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif     /* __cpluscplus */
#endif  /* __cpluscplus */

#endif  /* __AUDSP_COMP_MP3DEC_XA_H__ */
