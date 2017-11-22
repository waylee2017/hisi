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


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <pthread.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_module.h"
#include "hi_mpi_mem.h"
#include "drv_struct_ext.h"
#include "hi_error_mpi.h"

#include "hi_mpi_ao.h"
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"

static HI_S32 g_s32AOFd = -1;
static const HI_CHAR g_acAODevName[] = "/dev/" UMAP_DEVNAME_AO;


HI_S32 HI_MPI_AO_Init(HI_VOID)
{
    if (g_s32AOFd < 0)
    {
        g_s32AOFd = open(g_acAODevName, O_RDWR, 0);
        if (g_s32AOFd < 0)
        {
            HI_FATAL_AO("OpenAODevice err\n");
            g_s32AOFd = -1;
            return HI_ERR_AO_CREATE_FAIL;
        }
    }
    return HI_SUCCESS;
}

HI_S32   HI_MPI_AO_DeInit(HI_VOID)
{
    if (g_s32AOFd > 0) //verify
    {
        close(g_s32AOFd);
        g_s32AOFd = -1;
    }
    else
    {
        HI_INFO_AO("AO_DeInit g_s32AOFd %d\n", g_s32AOFd);
    }
    return HI_SUCCESS;
}

HI_S32   HI_MPI_AO_SND_GetDefaultOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S* pstAttr)
{
    HI_S32 s32Ret;
    AO_SND_OpenDefault_Param_S  stDefaultParam;

    CHECK_AO_NULL_PTR(pstAttr);
    stDefaultParam.enSound = enSound;
    s32Ret = ioctl(g_s32AOFd, CMD_AO_GETSNDDEFOPENATTR, &stDefaultParam);
    if (HI_SUCCESS == s32Ret)
    {
        memcpy(pstAttr, &stDefaultParam.stAttr, sizeof(HI_UNF_SND_ATTR_S));
    }
    else
    {
        HI_ERR_AO("SND_GetDefaultOpenAttr Fail %d\n", s32Ret);
    }

    return s32Ret;

}

HI_S32   HI_MPI_AO_SND_Open(HI_UNF_SND_E enSound, const HI_UNF_SND_ATTR_S* pstAttr)
{
    AO_SND_Open_Param_S stSnd;

    CHECK_AO_NULL_PTR(pstAttr);
    stSnd.enSound = enSound;
    memcpy(&stSnd.stAttr, pstAttr, sizeof(HI_UNF_SND_ATTR_S));

    return ioctl(g_s32AOFd, CMD_AO_SND_OPEN, &stSnd);
}

HI_S32   HI_MPI_AO_SND_Close(HI_UNF_SND_E enSound)
{
    return ioctl(g_s32AOFd, CMD_AO_SND_CLOSE, &enSound);
}


HI_S32   HI_MPI_AO_SND_SetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute)
{
    AO_SND_Mute_Param_S stMute;

    stMute.enSound = enSound;
    stMute.enOutPort = enOutPort;
    stMute.bMute = bMute;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETMUTE, &stMute);
}

HI_S32   HI_MPI_AO_SND_GetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL* pbMute)
{
    HI_S32 s32Ret;
    AO_SND_Mute_Param_S stMute;

    CHECK_AO_NULL_PTR(pbMute);
    stMute.enSound = enSound;
    stMute.enOutPort = enOutPort;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETMUTE, &stMute);
    if (HI_SUCCESS == s32Ret)
    {
        *pbMute = stMute.bMute;
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_SND_SetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                   HI_UNF_SND_HDMI_MODE_E enHdmiMode)
{
    AO_SND_HdmiMode_Param_S stHdmiMode;

    stHdmiMode.enSound = enSound;
    stHdmiMode.enOutPort = enOutPort;
    stHdmiMode.enMode = enHdmiMode;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETHDMIMODE, &stHdmiMode);
}

HI_S32   HI_MPI_AO_SND_GetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                   HI_UNF_SND_HDMI_MODE_E* penHdmiMode)
{
    HI_S32 s32Ret;
    AO_SND_HdmiMode_Param_S stHdmiMode;

    CHECK_AO_NULL_PTR(penHdmiMode);
    stHdmiMode.enSound = enSound;
    stHdmiMode.enOutPort = enOutPort;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETHDMIMODE, &stHdmiMode);
    if (HI_SUCCESS == s32Ret)
    {
        *penHdmiMode = stHdmiMode.enMode;
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_SND_SetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                    HI_UNF_SND_SPDIF_MODE_E enSpdifMode)
{
    AO_SND_SpdifMode_Param_S stSpdifMode;

    stSpdifMode.enSound = enSound;
    stSpdifMode.enOutPort = enOutPort;
    stSpdifMode.enMode = enSpdifMode;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETSPDIFMODE, &stSpdifMode);
}

HI_S32   HI_MPI_AO_SND_GetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                    HI_UNF_SND_SPDIF_MODE_E* penSpdifMode)
{
    HI_S32 s32Ret;
    AO_SND_SpdifMode_Param_S stSpdifMode;

    CHECK_AO_NULL_PTR(penSpdifMode);
    stSpdifMode.enSound = enSound;
    stSpdifMode.enOutPort = enOutPort;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETSPDIFMODE, &stSpdifMode);
    if (HI_SUCCESS == s32Ret)
    {
        *penSpdifMode = stSpdifMode.enMode;
    }

    return s32Ret;
}


HI_S32   HI_MPI_AO_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                 const HI_UNF_SND_GAIN_ATTR_S* pstGain)
{
    AO_SND_Volume_Param_S stVolume;
    CHECK_AO_NULL_PTR(pstGain);

    stVolume.enSound = enSound;
    stVolume.enOutPort = enOutPort;
    memcpy(&stVolume.stGain, pstGain, sizeof(HI_UNF_SND_GAIN_ATTR_S));

    return ioctl(g_s32AOFd, CMD_AO_SND_SETVOLUME, &stVolume);
}
HI_S32   HI_MPI_AO_SND_GetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                 HI_UNF_SND_GAIN_ATTR_S* pstGain)
{
    HI_S32 s32Ret;
    AO_SND_Volume_Param_S stVolume;

    CHECK_AO_NULL_PTR(pstGain);
    stVolume.enSound = enSound;
    stVolume.enOutPort = enOutPort;
    //stVolume.stGain.bLinearMode = pstGain->bLinearMode;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETVOLUME, &stVolume);
    if (HI_SUCCESS == s32Ret)
    {
        //pstGain->s32Gain = stVolume.stGain.s32Gain;
        memcpy(pstGain, &stVolume.stGain, sizeof(HI_UNF_SND_GAIN_ATTR_S));
    }

    return s32Ret;
}
HI_S32   HI_MPI_AO_SND_SetTrackMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E enMode)
{
    AO_SND_TrackMode_Param_S stTrackMode;

    stTrackMode.enSound = enSound;
    stTrackMode.enOutPort = enOutPort;
    stTrackMode.enMode = enMode;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETTRACKMODE, &stTrackMode);
}

HI_S32   HI_MPI_AO_SND_GetTrackMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                    HI_UNF_TRACK_MODE_E* penMode)
{
    HI_S32 s32Ret;
    AO_SND_TrackMode_Param_S stTrackMode;

    CHECK_AO_NULL_PTR(penMode);
    stTrackMode.enSound = enSound;
    stTrackMode.enOutPort = enOutPort;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETTRACKMODE, &stTrackMode);
    if (HI_SUCCESS == s32Ret)
    {
        *penMode = stTrackMode.enMode;
    }

    return s32Ret;
}
/******************************* MPI Track for UNF_SND*****************************/
HI_S32   HI_MPI_AO_Track_GetDefaultOpenAttr(HI_UNF_SND_TRACK_TYPE_E enTrackType, HI_UNF_AUDIOTRACK_ATTR_S* pstAttr)
{
    CHECK_AO_NULL_PTR(pstAttr);
    pstAttr->enTrackType = enTrackType;

    return ioctl(g_s32AOFd, CMD_AO_TRACK_GETDEFATTR, pstAttr);
}

HI_S32   HI_MPI_AO_Track_GetAttr(HI_HANDLE hTrack, HI_UNF_AUDIOTRACK_ATTR_S* pstAttr)
{
    CHECK_AO_NULL_PTR(pstAttr);
    CHECK_AO_TRACK_ID(hTrack);

    HI_S32 s32Ret;
    AO_Track_Attr_Param_S stTrackAttr;
    stTrackAttr.hTrack = hTrack;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_GETATTR, &stTrackAttr);
    if (HI_SUCCESS == s32Ret)
    {
        memcpy(pstAttr, &stTrackAttr.stAttr, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
    }

    return s32Ret;
}

HI_S32 HI_MPI_AO_SND_SetAvcAttr(HI_UNF_SND_E enSound, const HI_UNF_SND_AVC_ATTR_S* pstAvcAttr)
{
    AO_SND_Avc_Param_S stAvcParam;

    CHECK_AO_NULL_PTR(pstAvcAttr);
    stAvcParam.enSound = enSound;
    memcpy(&stAvcParam.stAvcAttr, pstAvcAttr, sizeof(HI_UNF_SND_AVC_ATTR_S));

    return ioctl(g_s32AOFd, CMD_AO_SND_SETAVCATTR, &stAvcParam);
}

HI_S32 HI_MPI_AO_SND_GetAvcAttr(HI_UNF_SND_E enSound, HI_UNF_SND_AVC_ATTR_S* pstAvcAttr)
{
    HI_S32 s32Ret;
    AO_SND_Avc_Param_S stAvcParam;

    CHECK_AO_NULL_PTR(pstAvcAttr);
    stAvcParam.enSound = enSound;
    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETAVCATTR, &stAvcParam);
    if (HI_SUCCESS == s32Ret)
    {
        memcpy(pstAvcAttr, &stAvcParam.stAvcAttr, sizeof(HI_UNF_SND_AVC_ATTR_S));
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_Track_Create(HI_UNF_SND_E enSound, const HI_UNF_AUDIOTRACK_ATTR_S* pstAttr, HI_HANDLE* phTrack)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack;

    CHECK_AO_NULL_PTR(pstAttr);
    CHECK_AO_NULL_PTR(phTrack);

    AO_Track_Create_Param_S stTrackParam;
    stTrackParam.enSound = enSound;
    memcpy(&stTrackParam.stAttr, pstAttr, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
    //stTrackParam.stBuf  //verify
    stTrackParam.bAlsaTrack = HI_FALSE;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_CREATE, &stTrackParam);
    hTrack = stTrackParam.hTrack;

    if (HI_SUCCESS == s32Ret)
    {
        *phTrack = hTrack;
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_Track_Destroy(HI_HANDLE hTrack)
{
    CHECK_AO_TRACK_ID(hTrack);

    return ioctl(g_s32AOFd, CMD_AO_TRACK_DESTROY, &hTrack);
}


HI_S32   HI_MPI_AO_Track_Start(HI_HANDLE hTrack)
{
    HI_S32 s32Ret;
    CHECK_AO_TRACK_ID(hTrack);

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_START, &hTrack);

    return s32Ret;
}

HI_S32   HI_MPI_AO_Track_Stop(HI_HANDLE hTrack)
{
    CHECK_AO_TRACK_ID(hTrack);

    return ioctl(g_s32AOFd, CMD_AO_TRACK_STOP, &hTrack);
}

HI_S32   HI_MPI_AO_Track_Pause(HI_HANDLE hTrack)
{
    CHECK_AO_TRACK_ID(hTrack);

    return ioctl(g_s32AOFd, CMD_AO_TRACK_PAUSE, &hTrack);
}

HI_S32   HI_MPI_AO_Track_Flush(HI_HANDLE hTrack)
{
    CHECK_AO_TRACK_ID(hTrack);

    return ioctl(g_s32AOFd, CMD_AO_TRACK_FLUSH, &hTrack);
}

HI_S32   HI_MPI_AO_Track_SendData(HI_HANDLE hTrack, const HI_UNF_AO_FRAMEINFO_S* pstAOFrame)
{
    HI_S32 s32Ret;
    CHECK_AO_NULL_PTR(pstAOFrame);
    CHECK_AO_TRACK_ID(hTrack);

    AO_Track_SendData_Param_S stTrackAoFrame;
    stTrackAoFrame.hTrack = hTrack;
    memcpy(&stTrackAoFrame.stAOFrame, pstAOFrame, sizeof(HI_UNF_AO_FRAMEINFO_S));

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_SENDDATA, &stTrackAoFrame);

    return s32Ret;
}

HI_S32   HI_MPI_AO_Track_SetWeight(HI_HANDLE hTrack, const HI_UNF_SND_GAIN_ATTR_S* pstTrackGain)
{
    CHECK_AO_NULL_PTR(pstTrackGain);
    CHECK_AO_TRACK_ID(hTrack);

    AO_Track_Weight_Param_S stWeight;
    stWeight.hTrack = hTrack;
    memcpy(&stWeight.stTrackGain, pstTrackGain, sizeof(HI_UNF_SND_GAIN_ATTR_S));

    return ioctl(g_s32AOFd, CMD_AO_TRACK_SETWEITHT, &stWeight);
}

HI_S32   HI_MPI_AO_Track_GetWeight(HI_HANDLE hTrack, HI_UNF_SND_GAIN_ATTR_S* pstTrackGain)
{
    CHECK_AO_NULL_PTR(pstTrackGain);
    CHECK_AO_TRACK_ID(hTrack);

    HI_S32 s32Ret;
    AO_Track_Weight_Param_S stWeight;

    stWeight.hTrack = hTrack;
    //stWeight.stTrackGain.bLinearMode = pstTrackGain->bLinearMode;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_GETWEITHT, &stWeight);
    if (HI_SUCCESS == s32Ret)
    {
        //pstTrackGain->s32Gain = stWeight.stTrackGain.s32Gain;
        memcpy(pstTrackGain, &stWeight.stTrackGain, sizeof(HI_UNF_SND_GAIN_ATTR_S));
    }

    return s32Ret;
}


/******************************* MPI Track for MPI_AVPlay only **********************/
HI_S32   HI_MPI_AO_Track_SetEosFlag(HI_HANDLE hTrack, HI_BOOL bEosFlag)
{
    CHECK_AO_TRACK_ID(hTrack);
    AO_Track_EosFlag_Param_S stEosFlag;
    stEosFlag.hTrack = hTrack;
    stEosFlag.bEosFlag = bEosFlag;

    return ioctl(g_s32AOFd, CMD_AO_TRACK_SETEOSFLAG, &stEosFlag);
}

HI_S32   HI_MPI_AO_Track_SetSpeedAdjust(HI_HANDLE hTrack, HI_S32 s32Speed, HI_MPI_SND_SPEEDADJUST_TYPE_E enType)
{
    AO_Track_SpeedAdjust_Param_S stSpeedAdjust;

    CHECK_AO_TRACK_ID(hTrack);
    stSpeedAdjust.hTrack = hTrack;
    stSpeedAdjust.enType = (AO_SND_SPEEDADJUST_TYPE_E)enType;
    stSpeedAdjust.s32Speed = s32Speed;

    return ioctl(g_s32AOFd, CMD_AO_TRACK_SETSPEEDADJUST, &stSpeedAdjust);
}

HI_S32   HI_MPI_AO_Track_GetDelayMs(const HI_HANDLE hTrack, HI_U32* pDelayMs)
{
    HI_S32 s32Ret;
    AO_Track_DelayMs_Param_S stDelayMs;

    CHECK_AO_NULL_PTR(pDelayMs);
    CHECK_AO_TRACK_ID(hTrack);
    stDelayMs.hTrack = hTrack;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_GETDELAYMS, &stDelayMs);
    if (HI_SUCCESS == s32Ret)
    {
        *pDelayMs = stDelayMs.u32DelayMs;
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_Track_IsBufEmpty(const HI_HANDLE hTrack, HI_BOOL* pbEmpty)
{
    HI_S32 s32Ret;
    AO_Track_BufEmpty_Param_S stEmpty;

    CHECK_AO_TRACK_ID(hTrack);
    CHECK_AO_NULL_PTR(pbEmpty);
    stEmpty.hTrack = hTrack;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_ISBUFEMPTY, &stEmpty);
    if (HI_SUCCESS == s32Ret)
    {
        *pbEmpty = stEmpty.bEmpty;
    }

    return s32Ret;
}
HI_S32   HI_MPI_AO_Track_GetStatus(HI_HANDLE hTrack, HI_U32* pu32TrackStatus)
{
    HI_S32 s32Ret;
    AO_Track_CurStatus_Param_S stTrackStatus;

    CHECK_AO_NULL_PTR(pu32TrackStatus);
    CHECK_AO_TRACK_ID(hTrack);
    stTrackStatus.hTrack = hTrack;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_GETSTATUS, &stTrackStatus);
    if (HI_SUCCESS == s32Ret)
    {
        *pu32TrackStatus = stTrackStatus.u32TrackStatus;
    }

    return s32Ret;
}

HI_S32  HI_MPI_AO_SND_GetMasterTrackId(HI_UNF_SND_E enSound, HI_HANDLE* hTrack)
{
    HI_S32 s32Ret;
    AO_SND_GetMasterTrack_Param_S stMasterTrackParams;

    stMasterTrackParams.enSound = enSound;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETMASTERTRACKID, &stMasterTrackParams);
    if (HI_SUCCESS == s32Ret)
    {
        *hTrack = stMasterTrackParams.hTrack;
    }

    return s32Ret;
}

HI_S32   HI_MPI_AO_SND_SetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    AO_SND_SampleRate_Param_S stSampleRate;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;

    stSampleRate.enSound = enSound;
    stSampleRate.enOutPort = enOutPort;   //verify
    stSampleRate.enSampleRate = enSampleRate;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETSAMPLERATE, &stSampleRate);
}

HI_S32   HI_MPI_AO_SND_GetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SAMPLE_RATE_E* penSampleRate)
{
    HI_S32 s32Ret;
    AO_SND_SampleRate_Param_S stSampleRate;
    HI_UNF_SND_OUTPUTPORT_E enOutPort = HI_UNF_SND_OUTPUTPORT_ALL;

    CHECK_AO_NULL_PTR(penSampleRate);
    stSampleRate.enSound = enSound;
    stSampleRate.enOutPort = enOutPort;  //verify

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETSAMPLERATE, &stSampleRate);
    if (HI_SUCCESS == s32Ret)
    {
        *penSampleRate = stSampleRate.enSampleRate;
    }

    return s32Ret;
}

HI_S32 HI_MPI_AO_SetAvcEnable(HI_UNF_SND_E enSound, HI_BOOL bEnable)
{
    AO_SND_Avc_Enable_S stAvcEnable;

    stAvcEnable.enSound = enSound;
    stAvcEnable.bAvcEnable = bEnable;

    return ioctl(g_s32AOFd, CMD_AO_SND_SETAVCENABLE, &stAvcEnable);
}

HI_S32 HI_MPI_AO_GetAvcEnable(HI_UNF_SND_E enSound, HI_BOOL* pbEnable)
{
    HI_S32 s32Ret;
    AO_SND_Avc_Enable_S stAvcEnable;

    stAvcEnable.enSound = enSound;
    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETAVCENABLE, &stAvcEnable);
    if (HI_SUCCESS == s32Ret)
    {
        *pbEnable = stAvcEnable.bAvcEnable;
    }

    return s32Ret;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */
