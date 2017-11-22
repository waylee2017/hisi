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
//#include "hi_type.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>

#include "hi_error_mpi.h"
#include "hi_unf_sound.h"
//#include "hi_mpi_avplay.h"

#include "hi_mpi_ao.h"

#include "hi_drv_ao.h"
#include "hi_mpi_avplay.h"


/***************************** Macro Definition ******************************/
#define HI_UNF_SND_PORT_MAST  (0)
#define HI_UNF_SND_PORT_SLAVE (1)
#define MAX_AO_VOLUME 100 /* 32 */
#define HI_UNF_SND_FADE_IN_TIME 2000
#define HI_UNF_SND_FADE_OUT_TIME 500
#define HI_UNF_SND_DEFATTR_FADEINMS 32
#define HI_UNF_SND_DEFATTR_FADEOUTMS 8

#define CHECK_AO_VOLUME(volume) \
    do                                                  \
    {                                                   \
        if (volume > MAX_AO_VOLUME)                    \
        {                                               \
            HI_WARN_AO("invalid AO Volume(%d), max volume(%d)\n", volume,MAX_AO_VOLUME);   \
            return HI_ERR_HIAO_INVALID_PARA;               \
        }                                               \
    } while (0)

#define API_SND_CheckNULLPtr(ptr) do{\
        if (NULL == ptr)\
        {\
            HI_ERR_AO("PTR is NULL!\n");\
            return HI_ERR_HIAO_NULL_PTR;\
        }\
    }while(0)

#define API_SND_CheckId(u32SndId) do{\
        if (HI_UNF_SND_0 != u32SndId)\
        {\
            HI_ERR_AO("Sound ID(%#x) is Invalid!\n", u32SndId);\
            return HI_ERR_SND_INVALID_ID;\
        }\
    }while(0)

#define API_SND_CheckInterface(enInterface) do{\
        if (enInterface >= HI_UNF_SND_INTERFACE_BUTT) \
       { \
          HI_ERR_AO("intf(%d) is invalid\n", enInterface); \
            return HI_ERR_SND_INVALID_PARA; \
       }\
    }while(0)

/*************************** Structure Definition ****************************/
typedef struct hiAPI_SND_COMM_S
{
    HI_BOOL              bCreate;
} API_SND_COMM_S;

/***************************Gloal Structure ****************************/
static HI_UNF_SND_ATTR_S g_stSndOpenAttr;
static HI_UNF_SND_HDMI_MODE_E g_enHdmiPassThrough = HI_UNF_SND_HDMI_MODE_LPCM;
static HI_UNF_SAMPLE_RATE_E g_stSampleRate = HI_UNF_SAMPLE_RATE_48K;
static HI_BOOL g_bAutoResample = HI_FALSE;
static HI_U32 g_u32TrackFadeInTimes = HI_UNF_SND_DEFATTR_FADEINMS;
static HI_U32 g_u32TrackFadeOutTimes = HI_UNF_SND_DEFATTR_FADEOUTMS;


//static HI_U32  g_u32TrackFadeInTimeMs[AO_MAX_TOTAL_TRACK_NUM];
//static HI_U32  g_u32TrackFadeOutTimeMs[AO_MAX_TOTAL_TRACK_NUM];
/******************************* API declaration *****************************/
HI_S32 HI_UNF_SND_Init(HI_VOID)
{
    HI_S32 s32Ret;
    HI_UNF_SND_E enSound = HI_UNF_SND_0 ;
    HI_UNF_SND_ATTR_S stAttr;

    s32Ret = HI_MPI_AO_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("HI_UNF_SND_Init Failed:%#x.\n", s32Ret);
        return HI_ERR_HIAO_CREATE_FAIL;
    }

    s32Ret = HI_MPI_AO_SND_GetDefaultOpenAttr(enSound, &stAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("HI_UNF_SND_Init GetDefault parma Failed:%#x.\n", s32Ret);
        return s32Ret;
    }
    memcpy(&g_stSndOpenAttr, &stAttr, sizeof(HI_UNF_SND_ATTR_S));

    return s32Ret;
}

HI_S32 HI_UNF_SND_DeInit(HI_VOID)
{
    return HI_MPI_AO_DeInit();
}

HI_S32   HI_UNF_SND_Mixer_Open(HI_UNF_SND_E enSound, HI_HANDLE *phMixer, HI_UNF_MIXER_ATTR_S *pstMixerAttr)
{
    HI_S32 s32Ret;
    HI_UNF_AUDIOTRACK_ATTR_S stTrackAttr;
    HI_UNF_SND_GAIN_ATTR_S   stTrackGain;
    HI_UNF_SND_TRACK_TYPE_E enTrackType;

    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(pstMixerAttr);

    enTrackType = HI_UNF_SND_TRACK_TYPE_SLAVE;
    s32Ret = HI_MPI_AO_Track_GetDefaultOpenAttr(enTrackType, &stTrackAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("HI_MPI_AO_Track_GetDefaultOpenAttr failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    stTrackAttr.enTrackType = enTrackType;
    //DO not consider Other Mixer Attr!

    s32Ret = HI_MPI_AO_Track_Create(enSound, &stTrackAttr, phMixer);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Create Track failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
        return s32Ret;
    }

    stTrackGain.bLinearMode = HI_TRUE;
    stTrackGain.s32Gain = pstMixerAttr->u32MixerWeight;

    s32Ret = HI_MPI_AO_Track_SetWeight(*phMixer, &stTrackGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("SetTrackWeight failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_Close(HI_HANDLE hTrack)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AO_Track_Destroy(hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Destroy Track failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_Start(HI_HANDLE hMixer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AO_Track_Start(hMixer);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Track Start failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_Stop(HI_HANDLE hMixer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AO_Track_Stop(hMixer);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Track Start failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_Pause(HI_HANDLE hMixer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AO_Track_Pause(hMixer);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Track Start failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_Flush(HI_HANDLE hMixer)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AO_Track_Flush(hMixer);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Track Start failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_Mixer_GetStatus(HI_HANDLE hMixer, HI_UNF_MIXER_STATUSINFO_S *pstStatus)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_BOOL bBufEmpty = HI_FALSE;
    HI_U32 u32DelayMs = 0;
    HI_U32 u32MixerStatus = 0;
    HI_UNF_AUDIOTRACK_ATTR_S stTrackAttr;

    API_SND_CheckNULLPtr(pstStatus);

    Ret = HI_MPI_AO_Track_GetAttr(hMixer, &stTrackAttr);
    if (HI_SUCCESS != Ret )
    {
        HI_ERR_AO("Get Track Attr failed, ERR:%#x\n", Ret);
        return Ret;
    }

    Ret = HI_MPI_AO_Track_GetDelayMs(hMixer, &u32DelayMs);
    if(HI_SUCCESS == Ret)
    {
        pstStatus->u32BufDurationMs = u32DelayMs;
    }

    Ret |= HI_MPI_AO_Track_IsBufEmpty(hMixer, &bBufEmpty);
    if(HI_SUCCESS == Ret)
    {
        pstStatus->bDataNotEnough = bBufEmpty;
    }

    Ret |= HI_MPI_AO_Track_GetStatus(hMixer, &u32MixerStatus);
    if(HI_SUCCESS == Ret)
    {
        pstStatus->u32Working = u32MixerStatus;
    }

    pstStatus->u32MixerID = hMixer&AO_TRACK_CHNID_MASK;
    pstStatus->u32BufferSize = stTrackAttr.u32OutputBufSize;
    pstStatus->u32BufferByteLeft = stTrackAttr.u32OutputBufSize - u32DelayMs;

    if(HI_ERR_AO_SOUND_NOT_OPEN == Ret)
    {
        HI_INFO_AO("Get Mixer Status Fail!\n");
        Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
    }

    return Ret;
}

HI_S32   HI_UNF_SND_Mixer_SendData(HI_HANDLE hTrack, const HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    HI_S32 Ret;

    API_SND_CheckNULLPtr(pstAOFrame);

    Ret = HI_MPI_AO_Track_Start(hTrack);
    if (HI_SUCCESS != Ret)
    {
        if(HI_ERR_AO_SOUND_NOT_OPEN == Ret)
        {
            Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
        return Ret;
    }

    Ret = HI_MPI_AO_Track_SendData(hTrack, pstAOFrame);
    if(HI_ERR_AO_OUT_BUF_FULL == Ret)
    {
        return HI_ERR_HIAO_OUT_BUF_FULL;
    }
    else if (HI_SUCCESS != Ret)
    {
        return HI_ERR_HIAO_INVALID_PARA;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_GetOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_GetDefaultOpenAttr(enSound, pstAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_AO("HI_UNF_SND_GetOpenAttr Failed:%#x.\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_SetOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr)
{
    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(pstAttr);

    memcpy(&g_stSndOpenAttr, pstAttr, sizeof(HI_UNF_SND_ATTR_S));

    return HI_SUCCESS;
}


HI_S32 HI_UNF_SND_Open(HI_UNF_SND_E enSound)
{
    HI_S32 s32Ret;
    HI_UNF_SND_ATTR_S stAttr;

    API_SND_CheckId(enSound);

    memcpy(&stAttr, &g_stSndOpenAttr, sizeof(HI_UNF_SND_ATTR_S));

    s32Ret = HI_MPI_AO_SND_Open(enSound, &stAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_AO("AO_OPEN Failed:%#x.\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_Close(HI_UNF_SND_E enSound)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_Close(enSound);
    if (HI_SUCCESS != s32Ret)
    {
        HI_WARN_AO("AO_OPEN Failed:%#x.\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_SetInterface(HI_UNF_SND_E enSound, const HI_UNF_SND_INTERFACE_S *pInterface)
{
    HI_S32 s32Ret;
    HI_BOOL  bMute;

    API_SND_CheckNULLPtr(pInterface);
    API_SND_CheckId(enSound);
    API_SND_CheckInterface(pInterface->enInterface);

    HI_INFO_AO("Set Interface %d,bEnable %d\n",pInterface->enInterface,pInterface->bEnable);

    bMute = (HI_TRUE == pInterface->bEnable) ? HI_FALSE : HI_TRUE;
    if (HI_UNF_SND_INTERFACE_I2S == pInterface->enInterface)
    {
        s32Ret = HI_MPI_AO_SND_SetMute(enSound, HI_UNF_SND_OUTPUTPORT_DAC0, bMute);
    }
    else
    {
        s32Ret = HI_MPI_AO_SND_SetMute(enSound, HI_UNF_SND_OUTPUTPORT_SPDIF0, bMute);
    }

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO '%s' to %d failed, ERR:%#x\n",
                  (HI_UNF_SND_INTERFACE_I2S == pInterface->enInterface) ? "DAC0" : "SPDIF",
                   bMute, s32Ret);
    }

    return s32Ret;
}


HI_S32 HI_UNF_SND_GetInterface(HI_UNF_SND_E enSound, HI_UNF_SND_INTERFACE_S *pInterface)
{
    HI_S32 s32Ret;
    HI_BOOL  bMute;

    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(pInterface);
    API_SND_CheckInterface(pInterface->enInterface);

    HI_INFO_AO("Get Interface %d\n",pInterface->enInterface);

    if (HI_UNF_SND_INTERFACE_I2S == pInterface->enInterface)
    {
        s32Ret = HI_MPI_AO_SND_GetMute(enSound, HI_UNF_SND_OUTPUTPORT_DAC0, &bMute);
    }
    else
    {
        s32Ret = HI_MPI_AO_SND_GetMute(enSound, HI_UNF_SND_OUTPUTPORT_SPDIF0, &bMute);
    }

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("get AO '%s' Mute State failed, ERR:%#x\n",
                  (HI_UNF_SND_INTERFACE_I2S == pInterface->enInterface) ? "DAC0" : "SPDIF",
                   s32Ret);
        return s32Ret;
    }
    pInterface->bEnable = (HI_TRUE == bMute) ? HI_FALSE : HI_TRUE;

    return HI_SUCCESS;
}


HI_S32 HI_UNF_SND_SetAnalogMute(HI_UNF_SND_E enSound, HI_BOOL bMute)
{
    API_SND_CheckId(enSound);

    HI_INFO_AO("Set Analog Mute %d\n",bMute);
    return HI_MPI_AO_SND_SetMute(enSound, HI_UNF_SND_OUTPUTPORT_ALL, bMute);
}

HI_S32 HI_UNF_SND_GetAnalogMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute)
{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_GetMute(enSound, HI_UNF_SND_OUTPUTPORT_ALL, pbMute);
}

HI_S32 HI_UNF_SND_SetDigitalMute(HI_UNF_SND_E enSound, HI_BOOL bMute)
{
    API_SND_CheckId(enSound);

    HI_INFO_AO("Set Digital Mute %d\n",bMute);
    return HI_MPI_AO_SND_SetMute(enSound, HI_UNF_SND_OUTPUTPORT_ALL, bMute);
}

HI_S32 HI_UNF_SND_GetDigitalMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute)
{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_GetMute(enSound, HI_UNF_SND_OUTPUTPORT_ALL, pbMute);
}


HI_S32 HI_UNF_SND_SetADACMute(HI_UNF_SND_E enSound, HI_BOOL bMute)
{
    API_SND_CheckId(enSound);

    HI_INFO_AO("Set ADAC Mute %d\n",bMute);
    return HI_MPI_AO_SND_SetMute(enSound, HI_UNF_SND_OUTPUTPORT_DAC0, bMute);
}

HI_S32 HI_UNF_SND_GetADACMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute)
{
    API_SND_CheckId(enSound);

    return HI_MPI_AO_SND_GetMute(enSound, HI_UNF_SND_OUTPUTPORT_DAC0, pbMute);
}

HI_S32 HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_E enSound, HI_BOOL bEnable)
{
    HI_UNF_SND_SPDIF_MODE_E enMode;

    enMode = (HI_TRUE == bEnable)?HI_UNF_SND_SPDIF_MODE_RAW : HI_UNF_SND_SPDIF_MODE_LPCM;
    HI_INFO_AO("Set SPDIF Mode %d\n",enMode);

    return HI_MPI_AO_SND_SetSpdifMode(enSound, HI_UNF_SND_OUTPUTPORT_SPDIF0, enMode);
}

HI_S32 HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_E enSound, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    HI_UNF_SND_HDMI_MODE_E enMode;

    enMode = (HI_TRUE == bEnable)? HI_UNF_SND_HDMI_MODE_RAW : HI_UNF_SND_HDMI_MODE_LPCM;
    HI_INFO_AO("Set HDMI Mode %d\n",enMode);

    s32Ret = HI_MPI_AO_SND_SetHdmiMode(enSound, HI_UNF_SND_OUTPUTPORT_HDMI0, enMode);
    if(HI_SUCCESS == s32Ret)
    {
        g_enHdmiPassThrough = enMode;
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_SetHdmiEdidAutoMode(HI_UNF_SND_E enSound, HI_BOOL bEnable)
{
    if(HI_TRUE == bEnable)
    {
        HI_INFO_AO("Set HDMI Mode To Auto\n");
        return HI_MPI_AO_SND_SetHdmiMode(enSound, HI_UNF_SND_OUTPUTPORT_HDMI0, HI_UNF_SND_HDMI_MODE_AUTO);
    }
    else
    {
        HI_UNF_SND_HDMI_MODE_E enMode;
        enMode = g_enHdmiPassThrough;
        HI_INFO_AO("Set HDMI Mode To %d\n",enMode);

        return HI_MPI_AO_SND_SetHdmiMode(enSound, HI_UNF_SND_OUTPUTPORT_HDMI0, enMode);
    }
}

HI_S32   HI_UNF_SND_SetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                           HI_UNF_SND_HDMI_MODE_E enHdmiMode)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);
    HI_INFO_AO("Set HDMI Mode %d\n",enHdmiMode);

    s32Ret = HI_MPI_AO_SND_SetHdmiMode(enSound, enOutPort, enHdmiMode);
    if(HI_SUCCESS == s32Ret)
    {
        g_enHdmiPassThrough = enHdmiMode;
    }

    return s32Ret;
}

HI_S32  HI_UNF_SND_SetMute(HI_UNF_SND_E enSound, HI_BOOL bMute)
{
    HI_S32 s32Ret;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;

    API_SND_CheckId(enSound);
    HI_INFO_AO("Set Mute %d\n",bMute);

    s32Ret = HI_MPI_AO_SND_SetMute(enSound, enOutPort, bMute);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO mute failed, ERR:%#x\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_GetMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute)
{
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;

    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetMute(enSound, enOutPort, pbMute);
}

HI_S32   HI_UNF_SND_SetPortMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);
    HI_INFO_AO("Set PortMute %d\n",bMute);

    s32Ret = HI_MPI_AO_SND_SetMute(enSound, enOutPort, bMute);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO mute failed, ERR:%#x\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_GetPortMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute)
{
    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetMute(enSound, enOutPort, pbMute);
}

HI_S32 HI_UNF_SND_SetVolume(HI_UNF_SND_E enSound,HI_U32 u32Volume)
{
    HI_S32 s32Ret;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;
    HI_UNF_SND_GAIN_ATTR_S stGain;

    API_SND_CheckId(enSound);
    CHECK_AO_VOLUME(u32Volume);

    HI_INFO_AO("Set Volume  %d\n", u32Volume);

    stGain.bLinearMode = HI_TRUE;
    stGain.s32Gain = u32Volume;
    s32Ret = HI_MPI_AO_SND_SetVolume(enSound, enOutPort, &stGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO volume failed, ERR:%#x\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_GetVolume(HI_UNF_SND_E enSound, HI_U32 *pu32Volume)
{
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;
    HI_UNF_SND_GAIN_ATTR_S stGain;
    HI_S32 s32Ret;

    API_SND_CheckNULLPtr(pu32Volume);
    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_GetVolume(enSound, enOutPort, &stGain);
    if(HI_SUCCESS == s32Ret)
    {
       *pu32Volume = stGain.s32Gain;
    }

    return  s32Ret;
}

HI_S32 HI_UNF_SND_SetAbsoluteVolume(HI_UNF_SND_E enSound, HI_S32 s32AbsVolume)
{
    HI_S32 s32Ret;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;
    HI_UNF_SND_GAIN_ATTR_S stGain;

    API_SND_CheckId(enSound);

    HI_INFO_AO("Set Abs Volume  %d\n",s32AbsVolume);
    stGain.bLinearMode = HI_FALSE;
    stGain.s32Gain = s32AbsVolume;

    s32Ret = HI_MPI_AO_SND_SetVolume(enSound, enOutPort, &stGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO Abs volume failed, ERR:%#x\n", s32Ret);
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_GetAbsoluteVolume(HI_UNF_SND_E enSound, HI_S32 *ps32AbsVolume)
{
    HI_S32 s32Ret;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;
    HI_UNF_SND_GAIN_ATTR_S stGain;

    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(ps32AbsVolume);

    s32Ret = HI_MPI_AO_SND_GetVolume(enSound, enOutPort, &stGain);
    if(HI_SUCCESS == s32Ret)
    {
       *ps32AbsVolume = stGain.s32Gain;
    }

    return s32Ret;
}


HI_S32 HI_UNF_SND_SetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);
    CHECK_AO_SAMPLERATE(enSampleRate);

    s32Ret = HI_MPI_AO_SND_SetSampleRate(enSound, enSampleRate);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO sampleRate to %d failed, ERR:%#x\n", enSampleRate, s32Ret);
        return s32Ret;
    }

    g_stSampleRate = enSampleRate;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_GetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E *penSampleRate)
{
    HI_S32 s32Ret = HI_SUCCESS;

    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(penSampleRate);

    s32Ret = HI_MPI_AO_SND_GetSampleRate(enSound, penSampleRate);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("HI_MPI_AO_SND_GetSampleRate ERR:%#x\n", s32Ret);
        return s32Ret;
    }
    *penSampleRate = g_stSampleRate;

    return s32Ret;
}


HI_S32 HI_UNF_SND_SetAutoResample(HI_UNF_SND_E enSound, HI_BOOL bAutoResample)
{
    API_SND_CheckId(enSound);

    g_bAutoResample = bAutoResample;
    return HI_SUCCESS ;
}

HI_S32 HI_UNF_SND_GetAutoResample(HI_UNF_SND_E enSound, HI_BOOL *pbAutoResample)
{
    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(pbAutoResample);

    *pbAutoResample = g_bAutoResample;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_SetSmartVolume(HI_UNF_SND_E enSound,HI_BOOL bAvcEanble)
{
#if defined (HI_SND_AVC_SUPPORT)
    return HI_MPI_AO_SetAvcEnable(enSound, bAvcEanble);
#else
    HI_ERR_AO("Do not Support, should enable 'SND AVC Support' at make menuconfig.\n");
    return HI_ERR_AO_NOTSUPPORT;
#endif
}

HI_S32 HI_UNF_SND_GetSmartVolume(HI_UNF_SND_E enSound,HI_BOOL *bAvcEanble)
{
#if defined (HI_SND_AVC_SUPPORT)
    return HI_MPI_AO_GetAvcEnable(enSound, bAvcEanble);
#else
    HI_ERR_AO("Do not Support, should enable 'SND AVC Support' at make menuconfig.\n");
    return HI_ERR_AO_NOTSUPPORT;
#endif
}

HI_S32 HI_UNF_SND_SetTrackMode(HI_UNF_SND_E enSound,HI_UNF_TRACK_MODE_E enMode)
{
    HI_S32 s32Ret;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_SetTrackMode(enSound, enOutPort, enMode);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("set AO TrackMode to %d failed, ERR:%#x\n", enMode, s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_SetAvcAttr(HI_UNF_SND_E enSound, const HI_UNF_SND_AVC_ATTR_S* pstAvcAttr)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_SetAvcAttr(enSound, pstAvcAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("SetAvcAttr failed, ERR:%#x\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_GetAvcAttr(HI_UNF_SND_E enSound, HI_UNF_SND_AVC_ATTR_S* pstAvcAttr)
{
    HI_S32 s32Ret;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AO_SND_GetAvcAttr(enSound, pstAvcAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("GetAvcAttr failed, ERR:%#x\n", s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_GetTrackMode(HI_UNF_SND_E enSound,HI_UNF_TRACK_MODE_E *penMode)
{
     HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;

    API_SND_CheckId(enSound);
    return HI_MPI_AO_SND_GetTrackMode(enSound, enOutPort, penMode);
}

HI_S32 HI_UNF_SND_Attach(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_UNF_SND_MIX_TYPE_E enMixType, HI_U32 u32MixWeight)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack;
    HI_UNF_AUDIOTRACK_ATTR_S stAttr;
    HI_UNF_SND_TRACK_TYPE_E enTrackType = (HI_UNF_SND_TRACK_TYPE_E)enMixType;
    HI_UNF_SND_GAIN_ATTR_S  stTrackGain;
    HI_UNF_AVPLAY_ATTR_S avPlayAttr;

    API_SND_CheckId(enSound);

    if (enMixType >= HI_UNF_SND_MIX_TYPE_BUTT)
    {
        HI_ERR_AO("enMixTyped is Invalid!\n");
        return HI_ERR_SND_INVALID_PARA;
    }

    HI_INFO_AO("Attach mixer Type %d\n",enMixType);

    s32Ret = HI_MPI_AVPLAY_GetAttr(hSource, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &avPlayAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("ERROR: can NOT detect hSource type\n");
        return HI_ERR_SND_INVALID_PARA;
    }

    s32Ret = HI_MPI_AO_Track_GetDefaultOpenAttr(enTrackType, &stAttr);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("call HI_MPI_AO_Track_GetDefaultOpenAttr failed.\n");
        return s32Ret;
    }

    s32Ret = HI_MPI_AO_Track_Create(enSound, &stAttr, &hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Create HI_MPI_AO_Track_Create failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
        return s32Ret;
    }

    s32Ret = HI_MPI_AVPLAY_AttachSnd(hSource, hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_MPI_AO_Track_Destroy(hTrack);
        HI_ERR_AO("call HI_MPI_AVPLAY_AttachSnd failed.\n");
        return s32Ret;
    }

    stTrackGain.bLinearMode = HI_TRUE;
    stTrackGain.s32Gain = u32MixWeight;
    s32Ret = HI_MPI_AO_Track_SetWeight(hTrack, &stTrackGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_MPI_AVPLAY_DetachSnd(hSource,hTrack);
        HI_MPI_AO_Track_Destroy(hTrack);
        HI_ERR_AO("call HI_MPI_AO_Track_SetWeight failed.\n");
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
        return s32Ret;
    }

    s32Ret = HI_MPI_AO_Track_Start(hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_MPI_AVPLAY_DetachSnd(hSource,hTrack);
        HI_MPI_AO_Track_Destroy(hTrack);
        HI_ERR_AO("call HI_MPI_AO_Track_Start failed.\n");
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32 HI_UNF_SND_Detach(HI_UNF_SND_E enSound, HI_HANDLE hSource)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack;
    HI_UNF_AVPLAY_ATTR_S avPlayAttr;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AVPLAY_GetAttr(hSource, HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE, &avPlayAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("ERROR: can NOT detect hSource type\n");
        return HI_ERR_SND_INVALID_PARA;
    }

    s32Ret = HI_MPI_AVPLAY_GetSndHandle(hSource, &hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("ERROR: can NOT get track handle.\n");
        return s32Ret;
    }

    s32Ret = HI_MPI_AVPLAY_DetachSnd(hSource, hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("call HI_MPI_AVPLAY_DetachSnd failed.\n");
        return s32Ret;
    }

    s32Ret = HI_MPI_AO_Track_Stop(hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("call HI_MPI_AO_Track_Stop failed.\n");
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }

        return s32Ret;
    }

    s32Ret = HI_MPI_AO_Track_Destroy(hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Destory HI_MPI_AO_Track_Destroy failed, ERR:%#x\n", s32Ret);
        if(HI_ERR_AO_SOUND_NOT_OPEN == s32Ret)
        {
            s32Ret = HI_ERR_HIAO_DEV_NOT_OPEN;
        }
    }

    return s32Ret;
}

HI_S32	 HI_UNF_SND_SetMixWeight(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 u32MixWeight)//(HI_HANDLE hTrack, const HI_UNF_SND_GAIN_ATTR_S *pstMixWeightGain)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack;
    HI_UNF_SND_GAIN_ATTR_S stMixWeightGain;

    API_SND_CheckId(enSound);

    s32Ret = HI_MPI_AVPLAY_GetSndHandle(hSource, &hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("ERROR: can NOT get track handle.\n");
        return s32Ret;
    }

    stMixWeightGain.bLinearMode = HI_TRUE;
    stMixWeightGain.s32Gain= u32MixWeight;

    s32Ret = HI_MPI_AO_Track_SetWeight(hTrack, &stMixWeightGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Set Track(%d) Weight failed.\n", hTrack);
    }

    return s32Ret;
}

HI_S32   HI_UNF_SND_GetMixWeight(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 *pu32MixWeight)//HI_UNF_SND_GetTrackWeight(HI_HANDLE hTrack, HI_UNF_SND_GAIN_ATTR_S *pstMixWeightGain)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack;
    HI_UNF_SND_GAIN_ATTR_S stMixWeightGain;

    API_SND_CheckNULLPtr(pu32MixWeight);
    API_SND_CheckId(enSound);

    memset(&stMixWeightGain,0,sizeof(HI_UNF_SND_GAIN_ATTR_S));
    s32Ret = HI_MPI_AVPLAY_GetSndHandle(hSource, &hTrack);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("ERROR: can NOT get track handle.\n");
        return s32Ret;
    }

    s32Ret = HI_MPI_AO_Track_GetWeight(hTrack, &stMixWeightGain);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("Get Track(%d) Weight failed.\n", hTrack);
        return s32Ret;
    }

    *pu32MixWeight = stMixWeightGain.s32Gain;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_SetFadeTime(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 u32FadeinMs, HI_U32 u32FadeoutMs)
{
    API_SND_CheckId(enSound);

    if(u32FadeinMs > HI_UNF_SND_FADE_IN_TIME || u32FadeoutMs > HI_UNF_SND_FADE_OUT_TIME)
    {
        return HI_ERR_SND_INVALID_PARA;
    }

    g_u32TrackFadeInTimes = u32FadeinMs;
    g_u32TrackFadeOutTimes = u32FadeoutMs;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_SND_GetFadeTime(HI_UNF_SND_E enSound, HI_HANDLE hSource, HI_U32 *pu32FadeinMs, HI_U32 *pu32FadeoutMs)
{
    API_SND_CheckId(enSound);
    API_SND_CheckNULLPtr(pu32FadeinMs);
    API_SND_CheckNULLPtr(pu32FadeoutMs);

    *pu32FadeinMs = g_u32TrackFadeInTimes;
    *pu32FadeoutMs = g_u32TrackFadeOutTimes;
    return HI_SUCCESS;
}
