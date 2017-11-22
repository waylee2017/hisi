#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mount.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <pthread.h>

#include "hi_unf_sound.h"
#include "hi_unf_avplay.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_pvr.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"

#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
 #include "HA.AUDIO.DOLBYPLUS.decode.h"

#include "hi_adp.h"
#include "hi_adp_demux.h"
#include "hi_adp_tuner.h"
#include "hi_adp_search.h"
#include "hi_adp_data.h"
#include "hi_adp_mpi.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_pvr.h"



/* Macro, global variable and struct  declare */

#define INVAILD_HANDLE_VALUE 0xffffffff
#define PVR_MAGIC_NUMBER 0x33313130

#define FILESYSTEM_NTFS 0
#define FILESYSTEM_FAT 1
#define FILESYSTEM_TMPFS 2

#define PVR_DEMUX_NUM 5
#define PVR_DEMUX_PLAY 0
#define PVR_DEMUX_REC_0 1
#define PVR_DEMUX_REC_1 2
#define PVR_DEMUX_TIMETHIFT 3
#define PVR_DEMUX_PLAYBACK 4

#define PORT_NUM 7
#define TSBUFF_PORT_NUM 4
#define DVB_PORT_0 0
#define DVB_PORT_1 1
#define DVB_PORT_2 2
#define IP_PORT_0 3
#define IP_PORT_1 4
#define IP_PORT_2 5
#define IP_PORT_3 6

#define PLAYBACK_PORT IP_PORT_3

HI_HANDLE gs_WinMainHandle;
HI_HANDLE gs_WinSlaveHandle;

HI_U32 u32SignalSource = 0;  //0 --- tuner ; 1 --- file ; 2 --- ip

HI_U32 u32TunerPort = DVB_PORT_0;
HI_U32 u32TunerFrequency = 610;   /* UNIT:MHZ */
HI_U32 u32ThirdParam = 64;
HI_U32 u32TunerSym = 6875;

HI_CHAR g_FilePlayPath[512];
HI_CHAR g_IpAddr[20];
HI_HANDLE g_hSoundTrack = 0;


static struct timeval g_tv0, g_tv1;
static struct timezone g_tz0;

//#define DMX_TOTALPORT_CNT   7

extern HI_HANDLE g_PortTsBuf[DMX_TOTALPORT_CNT];


typedef struct hiPort_Info
{
    HI_HANDLE hTsHandle;
    HI_BOOL   fDemuxAttach[PVR_DEMUX_NUM];
} PORT_INFO;

typedef struct hiPvr_Info
{
    HI_BOOL   useflag;
    HI_HANDLE avHandle;
    HI_U32    DemuxID;
    HI_U32    PortID;
    HI_U32    audiochannelID;
    HI_U32    videochannelID;
    HI_U32    recchannelID;
    HI_U32    playchannelID;
    HI_U8     filename[PVR_MAX_FILENAME_LEN];
} HIPVR_INFO;

typedef struct hiPVR_USERDATA_INFO_S
{
    HI_U32  u32MagicNumber;
    HI_BOOL scrambled;          //scrambled ts or not
    HI_BOOL cipher;             //ciphered or not

    HI_U32               PcrPid; /*program PCR PID*/
    HI_UNF_VCODEC_TYPE_E VideoType;
    HI_U16               VElementNum;        /* video stream number */
    HI_U16               VElementPid;        /* the first video stream PID*/
    HI_U32               AudioType;
    HI_U16               AElementNum;        /* audio stream number */
    HI_U16               AElementPid;        /* the first audio stream PID*/
} PVR_USERDATA_S;

HIPVR_INFO pvrinfo[PVR_DEMUX_NUM];
PORT_INFO portinfo[PORT_NUM];

/* get the state of channel */
static HI_S32 getPlayChnState(int chn, int type)
{
    HI_UNF_PVR_PLAY_STATUS_S status;

    /* get the player state */
    HIAPI_RUN_RETURN(HI_UNF_PVR_PlayGetStatus(chn, &status));

    PVR_SAMPLE_Printf("PVR state:%d, speed:%d\n", status.enState, status.enSpeed);
    PVR_SAMPLE_Printf("pos:\n frame/PES:%u, time:%ums, size:%lluByte.\n",
                  status.u32CurPlayFrame, status.u32CurPlayTimeInMs,
                  status.u64CurPlayPos);

    return HI_SUCCESS;
}

static void PVR_EventCB_recDiskFull(HI_U32 chn, HI_UNF_PVR_EVENT_E type, HI_S32 value, void *args)
{
    PVR_SAMPLE_Printf("----------Disk Full while recording!- arg:%p---------\n", args);
}

static void PVR_EventCB_recError(HI_U32 chn, HI_UNF_PVR_EVENT_E type, HI_S32 value, void *args)
{
    PVR_SAMPLE_Printf("----------Error occurred while recording!--arg:%p--------\n", args);
}

static void PVR_EventCB_playEndOfFile(HI_U32 chn, HI_UNF_PVR_EVENT_E type, HI_S32 value, void *args)
{
    gettimeofday(&g_tv1, &g_tz0);
    getPlayChnState(0, 2);
    PVR_SAMPLE_Printf("----- time use: %d -----\n", (int)((g_tv1.tv_sec - g_tv0.tv_sec) * 1000000 + (g_tv1.tv_usec - g_tv0.tv_usec)));
    PVR_SAMPLE_Printf("----------End of file while playing!---arg:%p-------\n", args);
}

static void PVR_EventCB_playStartOfFile(HI_U32 chn, HI_UNF_PVR_EVENT_E type, HI_S32 value, void *args)
{
    gettimeofday(&g_tv1, &g_tz0);
    getPlayChnState(0, 2);
    PVR_SAMPLE_Printf("----- time use: %d -----\n", (int)((g_tv1.tv_sec - g_tv0.tv_sec) * 1000000 + (g_tv1.tv_usec - g_tv0.tv_usec)));
    PVR_SAMPLE_Printf("----------Start of File while playing!----args:%p------\n", args);
}

static void PVR_EventCB_playError(HI_U32 chn, HI_UNF_PVR_EVENT_E type, HI_S32 value, void *args)
{
    getPlayChnState(0, 2);
    PVR_SAMPLE_Printf("-----XXXXXXX-----Error occurred while playing!-----XXXXX:%#x, arg:%p-----\n", value, args);
}

HI_S32 PVR_Detect_FileExist(HI_CHAR *filepathname)
{
    struct stat buf;

    if (filepathname == 0)
    {
        return HI_FAILURE;
    }

    if (stat(filepathname, &buf) < 0)
    {
        if (errno == ENOENT)
        {
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

HI_S32 PVR_Dmx_GetProgram(HI_S32 prognum, PVR_USERDATA_S *puserinfo)
{
    DB_PROGRAM_S sprog;

    if (puserinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf("point zero error\n");
        return HI_FAILURE;
    }

    if (prognum >= DB_GetProgTotalCount())
    {
        return HI_FAILURE;
    }

    if (HI_FAILURE == DB_GetDVBProgInfo(prognum, &sprog))
    {
        return HI_FAILURE;
    }

    puserinfo->AElementPid = sprog.AudioEX[0].u16audiopid;
    if(puserinfo->AElementPid == 0)
    {
        puserinfo->AElementNum = 0;
    }
    else
    {
        puserinfo->AElementNum = 1;
    }

    puserinfo->VElementPid = sprog.VideoEX.u16VideoPid;
    if(puserinfo->VElementPid == 0)
    {
        puserinfo->VElementNum = 0;
    }
    else
    {
        puserinfo->VElementNum = 1;
    }

    puserinfo->AudioType = sprog.AudioEX[0].u32AudioEncType;
    puserinfo->VideoType = sprog.VideoEX.u32VideoEncType;
    puserinfo->PcrPid = sprog.u16PcrPid;

    PVR_SAMPLE_Printf( " GetProgram Audio Stream PID = 0x%x[%d]", puserinfo->AElementPid, puserinfo->AElementPid);

    switch (puserinfo->AudioType)
    {
    case HA_AUDIO_ID_MP3:
        PVR_SAMPLE_Printf(" Stream Type MP3\n");
        break;
    case HA_AUDIO_ID_AAC:
        PVR_SAMPLE_Printf(" Stream Type AAC\n");
        break;
    case HA_AUDIO_ID_DOLBY_PLUS:
        PVR_SAMPLE_Printf(" Stream Type AC3\n");
        break;
    default:
        PVR_SAMPLE_Printf(" Stream Type Unknow\n");
    }

    PVR_SAMPLE_Printf(" GetProgram Video Stream PID = 0x%x[%d] ", puserinfo->VElementPid, puserinfo->VElementPid);
    switch (puserinfo->VideoType)
    {
    case HI_UNF_VCODEC_TYPE_H264:
        PVR_SAMPLE_Printf(" Stream Type H264\n");
        break;
    case HI_UNF_VCODEC_TYPE_MPEG2:
        PVR_SAMPLE_Printf(" Stream Type MPEG2\n");
        break;
    case HI_UNF_VCODEC_TYPE_MPEG4:
        PVR_SAMPLE_Printf(" Stream Type MPEG2\n");
        break;
    default:
        PVR_SAMPLE_Printf(" Stream Type Unknow\n");
    }

    return HI_SUCCESS;
}

HI_S32 PVR_Dmx_AddPid(HI_U32 u32DmxId, int pid, HI_UNF_DMX_CHAN_TYPE_E chnType)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hChannelHandle;

    if ((PVR_DEMUX_PLAY == u32DmxId) || (PVR_DEMUX_PLAYBACK == u32DmxId))
    {
        if (chnType == HI_UNF_DMX_CHAN_TYPE_AUD)
        {
            HIAPI_RUN(HI_UNF_DMX_GetChannelHandle(u32DmxId, pid, &hChannelHandle), s32Ret);
            if (s32Ret == HI_SUCCESS)
            {
                HI_UNF_DMX_CloseChannel(hChannelHandle);
                HI_UNF_DMX_DestroyChannel(hChannelHandle);
                PVR_SAMPLE_Printf("AUDIO PID USE BY DEMUX %d CHANNEL %x\n", u32DmxId, hChannelHandle);
            }

            /* set and open the audio channel */
            HIAPI_RUN_RETURN(HI_UNF_DMX_SetChannelPID(pvrinfo[u32DmxId].audiochannelID, pid));
            HIAPI_RUN_RETURN(HI_UNF_DMX_OpenChannel(pvrinfo[u32DmxId].audiochannelID));
        }

        if (chnType == HI_UNF_DMX_CHAN_TYPE_VID)
        {
            HIAPI_RUN(HI_UNF_DMX_GetChannelHandle(u32DmxId, pid, &hChannelHandle), s32Ret);
            if (s32Ret == HI_SUCCESS)
            {
                HI_UNF_DMX_CloseChannel(hChannelHandle);
                HI_UNF_DMX_DestroyChannel(hChannelHandle);
                PVR_SAMPLE_Printf("VIDEO PID USE BY DEMUX %d CHANNEL %x\n", u32DmxId, hChannelHandle);
            }

            /* set and open the video channel */
            HIAPI_RUN_RETURN(HI_UNF_DMX_SetChannelPID(pvrinfo[u32DmxId].videochannelID, pid));
            HIAPI_RUN_RETURN(HI_UNF_DMX_OpenChannel(pvrinfo[u32DmxId].videochannelID));
        }
    }
    else
    {
        HI_UNF_DMX_CHAN_ATTR_S stChnAttr;

        s32Ret = HI_UNF_DMX_GetChannelHandle(u32DmxId, pid, &hChannelHandle);
        if (HI_SUCCESS == s32Ret)
        {
            HIAPI_RUN_RETURN(HI_UNF_DMX_GetChannelAttr(hChannelHandle, &stChnAttr));

            if (stChnAttr.enOutputMode != HI_UNF_DMX_CHAN_OUTPUT_MODE_REC)
            {
                PVR_SAMPLE_Printf("(%d):Pid %d already open for PLAY, can NOT recorde\n", __LINE__, pid);
            }
        }

        /* set dmx and open the rec channel */
        HIAPI_RUN_RETURN(HI_UNF_DMX_GetChannelDefaultAttr(&stChnAttr));

        stChnAttr.enChannelType = chnType;
        stChnAttr.enCRCMode    = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
        stChnAttr.u32BufSize   = 32 * 1024; //KB
        stChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_REC;

        HIAPI_RUN_RETURN(HI_UNF_DMX_CreateChannel(u32DmxId, &stChnAttr, &hChannelHandle));
        HIAPI_RUN_RETURN(HI_UNF_DMX_SetChannelPID(hChannelHandle, pid));
        HIAPI_RUN_RETURN(HI_UNF_DMX_OpenChannel(hChannelHandle));
        if (chnType == HI_UNF_DMX_CHAN_TYPE_AUD)
        {
            pvrinfo[u32DmxId].audiochannelID = hChannelHandle;
        }
        else
        {
            pvrinfo[u32DmxId].videochannelID = hChannelHandle;
        }
    }

    return HI_SUCCESS;
}

/* close channel */
HI_S32 PVR_Dmx_RemoveAllPid(HI_U32 u32DmxId)
{
    if ((PVR_DEMUX_PLAY == u32DmxId) || (PVR_DEMUX_PLAYBACK == u32DmxId))
    {
        /* close the audio and video channel */
        HIAPI_RUN_RETURN(HI_UNF_DMX_CloseChannel(pvrinfo[u32DmxId].audiochannelID));
        HIAPI_RUN_RETURN(HI_UNF_DMX_CloseChannel(pvrinfo[u32DmxId].videochannelID));
    }
    else
    {
        /* close the rec channel */
        if (pvrinfo[u32DmxId].audiochannelID != INVAILD_HANDLE_VALUE)
        {
            HIAPI_RUN_RETURN(HI_UNF_DMX_CloseChannel(pvrinfo[u32DmxId].audiochannelID));
            HIAPI_RUN_RETURN(HI_UNF_DMX_DestroyChannel(pvrinfo[u32DmxId].audiochannelID));
            pvrinfo[u32DmxId].audiochannelID = INVAILD_HANDLE_VALUE;
        }

        if (pvrinfo[u32DmxId].videochannelID != INVAILD_HANDLE_VALUE)
        {
            HIAPI_RUN_RETURN(HI_UNF_DMX_CloseChannel(pvrinfo[u32DmxId].videochannelID));
            HIAPI_RUN_RETURN(HI_UNF_DMX_DestroyChannel(pvrinfo[u32DmxId].videochannelID));
            pvrinfo[u32DmxId].videochannelID = INVAILD_HANDLE_VALUE;
        }
    }

    return HI_SUCCESS;
}

HI_S32 PVR_Dmx_AttachPort(HI_U32 u32DmxId, HI_U32 u32Port , HI_U32 u32BufSize)
{
    if ((u32DmxId >= PVR_DEMUX_NUM) || (u32Port > IP_PORT_3))
    {
        PVR_SAMPLE_Printf(" PVR_Dmx_AttachPort input parameter u32DmxId = %d u32Port = %d error \n", u32DmxId, u32Port);
        return HI_FAILURE;
    }

    DMX_Prepare(u32DmxId,u32Port,u32BufSize);

    pvrinfo[u32DmxId].PortID = u32Port;
    portinfo[u32Port].fDemuxAttach[u32DmxId] = HI_TRUE;
    portinfo[u32Port].hTsHandle = g_PortTsBuf[u32Port];

    PVR_SAMPLE_Printf(" +++ demux %d attach to port %d +++ \n", u32DmxId, u32Port);

    return HI_SUCCESS;
}


HI_S32 PVR_AvPlay_Create(HI_U32 u32DemuxId)
{
    HI_UNF_AVPLAY_ATTR_S attr;
    HI_HANDLE avhandle;
    HI_HANDLE videochannelid;
    HI_HANDLE audiochannelid;

    if ((u32DemuxId != PVR_DEMUX_PLAY) && (u32DemuxId != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("%d is not a play demux , please select play demux \n", u32DemuxId);
        return HI_FAILURE;
    }

    //prevent the player from being more one created
    if (pvrinfo[u32DemuxId].avHandle != INVAILD_HANDLE_VALUE)
    {
        return HI_SUCCESS;
    }

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetDefaultConfig(&attr, HI_UNF_AVPLAY_STREAM_TYPE_TS));

    attr.u32DemuxId = u32DemuxId;
    attr.stStreamAttr.u32VidBufSize = 0x300000;
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_Create(&attr, &avhandle));
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnOpen(avhandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL));
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnOpen(avhandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL));
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetDmxVidChnHandle(avhandle, &videochannelid));
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetDmxAudChnHandle(avhandle, &audiochannelid));

    pvrinfo[u32DemuxId].avHandle = avhandle;
    pvrinfo[u32DemuxId].audiochannelID = audiochannelid;
    pvrinfo[u32DemuxId].videochannelID = videochannelid;

    PVR_SAMPLE_Printf("demux %d create avplay %d video channelid 0x%x , audio channelid 0x%x \n", u32DemuxId, avhandle,
           videochannelid, audiochannelid);

    return HI_SUCCESS;
}

static HI_S32 PVR_AvPlay_Destroy(HI_U32 u32DemuxId)
{
    if (pvrinfo[u32DemuxId].useflag == HI_TRUE)
    {
        PVR_SAMPLE_Printf("AVPLAY is used by demux %d\n", u32DemuxId);
        return HI_FAILURE;
    }

    if (pvrinfo[u32DemuxId].avHandle == INVAILD_HANDLE_VALUE)
    {
        return HI_SUCCESS;
    }

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnClose(pvrinfo[u32DemuxId].avHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD));
    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnClose(pvrinfo[u32DemuxId].avHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID));

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_Destroy(pvrinfo[u32DemuxId].avHandle));

    PVR_SAMPLE_Printf("destroy pvr avplay %d\n", pvrinfo[u32DemuxId].avHandle);

    pvrinfo[u32DemuxId].avHandle = INVAILD_HANDLE_VALUE;
    pvrinfo[u32DemuxId].audiochannelID = INVAILD_HANDLE_VALUE;
    pvrinfo[u32DemuxId].videochannelID = INVAILD_HANDLE_VALUE;
    pvrinfo[u32DemuxId].useflag = HI_FALSE;
    return HI_SUCCESS;
}

static HI_S32 PVR_Pvr_WriteUserDate(const HI_CHAR *pszFileName, HI_U8 *pInfo, HI_U32 u32UsrDataLen)
{
    PVR_USERDATA_S userData;

    if (pInfo == HI_NULL)
    {
        return HI_FAILURE;
    }

    if (u32UsrDataLen != sizeof(PVR_USERDATA_S))
    {
        PVR_SAMPLE_Printf(" write user data len error \n");
        return HI_FAILURE;
    }

    memcpy(&(userData), pInfo, u32UsrDataLen);
    userData.u32MagicNumber = PVR_MAGIC_NUMBER;
    HIAPI_RUN_RETURN(HI_UNF_PVR_SetUsrDataInfoByFileName(pszFileName, (HI_U8*)&userData, sizeof(PVR_USERDATA_S)));
    return HI_SUCCESS;
}

static HI_S32 PVR_Pvr_ReadUserDate(const HI_CHAR *pszFileName, HI_U8 *pInfo, HI_U32 u32UsrDataLen)
{
    HI_U32 UsrDataLen;
    PVR_USERDATA_S userData;

    if ((pInfo == HI_NULL) || (pszFileName == HI_NULL))
    {
        return HI_FAILURE;
    }

    if (u32UsrDataLen != sizeof(PVR_USERDATA_S))
    {
        PVR_SAMPLE_Printf(" read user data len error \n");
        return HI_FAILURE;
    }

    HIAPI_RUN_RETURN(HI_UNF_PVR_GetUsrDataInfoByFileName(pszFileName, (HI_U8*)&userData, sizeof(PVR_USERDATA_S),
                                                         &UsrDataLen));

    if (UsrDataLen == sizeof(PVR_USERDATA_S) && (userData.u32MagicNumber == PVR_MAGIC_NUMBER))
    {
        memcpy(pInfo, &(userData), u32UsrDataLen);
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 PVR_Pvr_SetPlayAttr(HI_UNF_PVR_PLAY_ATTR_S *pattr,
                                  const HI_CHAR *         pszFileName,
                                  HI_BOOL                 scrambled,
                                  HI_BOOL                 cipher)
{
    HI_U32 filenamelen;

    if (pattr == HI_NULL)
    {
        return HI_FAILURE;
    }

    if (pszFileName == HI_NULL)
    {
        return HI_FAILURE;
    }

    filenamelen = strlen(pszFileName);
    if (PVR_MAX_FILENAME_LEN <= filenamelen)
    {
        PVR_SAMPLE_Printf("FileName len is longer than standard \n");
        return HI_FAILURE;
    }

    memcpy(pattr->szFileName, pszFileName, filenamelen + 1);
    pattr->u32FileNameLen = filenamelen;

    pattr->enStreamType = HI_UNF_PVR_STREAM_TYPE_TS;
    if (HI_FALSE == scrambled)
    {
        pattr->bIsClearStream = HI_TRUE;
    }
    else
    {
        pattr->bIsClearStream = HI_FALSE;
    }

    if (HI_TRUE == cipher)
    {
        pattr->stDecryptCfg.bDoCipher = HI_TRUE;
        pattr->stDecryptCfg.enType = HI_UNF_CIPHER_ALG_AES;
        pattr->stDecryptCfg.u32KeyLen = 16;
        memset(pattr->stDecryptCfg.au8Key, 0, 16);/*128 = sizeof(PVR_CIPHER_KEY)*/
        memcpy(pattr->stDecryptCfg.au8Key, PVR_CIPHER_KEY, strlen(PVR_CIPHER_KEY));
    }
    else
    {
        pattr->stDecryptCfg.bDoCipher = HI_FALSE;
    }

    return HI_SUCCESS;
}

static HI_S32 PVR_Pvr_SetRecAttr(HI_UNF_PVR_REC_ATTR_S *pattr,
                                 const HI_CHAR *        pszFileName,
                                 HI_U32                 DemuxID,
                                 HI_BOOL                scrambled,
                                 HI_BOOL                cipher,
                                 HI_BOOL                bRewind,
                                 HI_U64                 maxfilesize,
                                 HI_U32                 usrDataSize)
{
    HI_U32 filenamelen;

    if (pattr == HI_NULL)
    {
        return HI_FAILURE;
    }

    if (pszFileName == HI_NULL)
    {
        return HI_FAILURE;
    }

    filenamelen = strlen(pszFileName);
    if (PVR_MAX_FILENAME_LEN <= filenamelen)
    {
        PVR_SAMPLE_Printf("FileName len is longer than standard \n");
        return HI_FAILURE;
    }

    memcpy(pattr->szFileName, pszFileName, filenamelen + 1);
    pattr->u32FileNameLen = strlen(pszFileName);
    pattr->u32DemuxID = DemuxID;
    pattr->u32ScdBufSize = PVR_STUB_SC_BUF_SZIE;
    pattr->u32DavBufSize = PVR_STUB_TSDATA_SIZE;
    pattr->enStreamType = HI_UNF_PVR_STREAM_TYPE_TS;
    pattr->u32UsrDataInfoSize = usrDataSize;/* aligned by 40 bytes in index file */

    if (bRewind == HI_TRUE)
    {
        pattr->bRewind = HI_TRUE;
        pattr->u64MaxFileSize = maxfilesize;
    }
    else
    {
        pattr->bRewind = HI_FALSE;
        pattr->u64MaxFileSize = 0; //no limit
    }

    PVR_SAMPLE_Printf("bRewind:%d\n", pattr->bRewind);
    PVR_SAMPLE_Printf("maxsize:%llu\n", pattr->u64MaxFileSize);

    if (HI_FALSE == scrambled)
    {
        pattr->bIsClearStream = HI_TRUE;
    }
    else
    {
        pattr->bIsClearStream = HI_FALSE;
    }

    if (HI_TRUE == cipher)
    {
        pattr->stEncryptCfg.bDoCipher = HI_TRUE;
        pattr->stEncryptCfg.enType = HI_UNF_CIPHER_ALG_AES;
        pattr->stEncryptCfg.u32KeyLen = 16;          /*strlen(PVR_CIPHER_KEY)*/
        memset(pattr->stEncryptCfg.au8Key, 0, 16);/*128 = sizeof(PVR_CIPHER_KEY)*/
        memcpy(pattr->stEncryptCfg.au8Key, PVR_CIPHER_KEY, strlen(PVR_CIPHER_KEY));
    }
    else
    {
        pattr->stEncryptCfg.bDoCipher = HI_FALSE;
    }

    return HI_SUCCESS;
}

static HI_S32 PVR_Pvr_GetInfo(HI_S32 demuxId, HIPVR_INFO **ppvrinfo)
{
    if (demuxId >= PVR_DEMUX_NUM)
    {
        PVR_SAMPLE_Printf("demux id error %d \n", demuxId);
        return HI_FAILURE;
    }

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf("point zero error\n");
        return HI_FAILURE;
    }

    *ppvrinfo = &(pvrinfo[demuxId]);

    return HI_SUCCESS;
}

static HI_S32 PVR_Pvr_Init(HI_VOID)
{
    HI_U32 i;

    memset(pvrinfo, 0xff, PVR_DEMUX_NUM * sizeof(HIPVR_INFO));
    for (i = 0; i < PVR_DEMUX_NUM; i++)
    {
        pvrinfo[i].useflag = HI_FALSE;
        pvrinfo[i].DemuxID = i;
    }

    memset(portinfo, 0, sizeof(portinfo));

    for (i = 0; i < PORT_NUM; i++)
    {
        portinfo[i].hTsHandle = INVAILD_HANDLE_VALUE;
    }

    HIAPI_RUN_RETURN(HI_UNF_PVR_RecInit());
    HIAPI_RUN_RETURN(HI_UNF_PVR_PlayInit());

    HIAPI_RUN_RETURN(HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_DISKFULL, PVR_EventCB_recDiskFull, (void*)1));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_ERROR, PVR_EventCB_recError, (void*)2));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_EOF, PVR_EventCB_playEndOfFile, (void*)3));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_SOF, PVR_EventCB_playStartOfFile, (void*)4));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_ERROR, PVR_EventCB_playError, (void*)5));
    //  HI_UNF_PVR_ConfigDebugInfo(1);

    return HI_SUCCESS;
}

HI_S32 PVR_Pvr_DeInit(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

    HIAPI_RUN(HI_UNF_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_REC_DISKFULL),s32Ret);
    HIAPI_RUN(HI_UNF_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_REC_ERROR),s32Ret);
    HIAPI_RUN(HI_UNF_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_PLAY_EOF),s32Ret);
    HIAPI_RUN(HI_UNF_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_PLAY_SOF),s32Ret);
    HIAPI_RUN(HI_UNF_PVR_UnRegisterEvent(HI_UNF_PVR_EVENT_PLAY_ERROR),s32Ret);
    HIAPI_RUN(HI_UNF_PVR_PlayDeInit(), s32Ret);
    HIAPI_RUN(HI_UNF_PVR_RecDeInit(), s32Ret);

    return HI_SUCCESS;
}

HI_S32  PVR_Comm_Init(void)
{
    HI_S32 s32Ret;

    HI_SYS_Init();
//    HIADP_MCE_Exit();
    s32Ret = HIADP_Snd_Init();
    if (s32Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call SndInit failed.\n");
        HIADP_Snd_DeInit();
        return s32Ret;
    }

    s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_1080i_50);
    if (s32Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call DispInit failed.\n");
        HIADP_Snd_DeInit();
        return s32Ret;
    }

    s32Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (s32Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        return s32Ret;
    }

    s32Ret = HIADP_AVPlay_Init();
    if (s32Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call MPI_AVPlayInit failed.\n");
        HI_UNF_AVPLAY_DeInit();
        return s32Ret;
    }

    s32Ret = DMX_Init();

    s32Ret = HIADP_Tuner_Init();

    return HI_SUCCESS;
}

HI_S32  PVR_Comm_DeInit(void)
{
    HIADP_Tuner_DeInit();
    DMX_DeInit();
    HI_UNF_AVPLAY_DeInit();
    HIADP_VO_DeInit();
    HIADP_Disp_DeInit();
    HIADP_Snd_DeInit();
    HI_SYS_DeInit();

    return HI_SUCCESS;
}

HI_CHAR srcaddr[512];
HI_CHAR dstaddr[512];

/*
    force
    HI_TRUE: force to create file path
 */
HI_S32  PVR_USB_MountPathCheck( HI_CHAR *filepathname, HI_BOOL force)
{
    HI_CHAR cmd[256] = {0};

    if (filepathname == HI_NULL)
    {
        return HI_FAILURE;
    }

    if (HI_SUCCESS == PVR_Detect_FileExist(filepathname))
    {
        return HI_SUCCESS;
    }

    if (force == HI_TRUE)
    {
        memset(cmd, 0, sizeof(cmd));
        snprintf(cmd,sizeof(cmd), "mkdir %s", filepathname);
        system(cmd);

        if (HI_SUCCESS == PVR_Detect_FileExist(filepathname))
        {
            return HI_SUCCESS;
        }
    }

    return HI_FAILURE;
}

/*
    FileSystemType:
        0:  NTFS
        1:  FAT
 */

static HI_S32 PVR_USB_Mount(HI_CHAR *devicepathname, HI_CHAR *filepathname, HI_U32 FileSystemType)
{
    HI_CHAR cmd[256] = {0};

    HI_S32 sRet = HI_FAILURE;

    HIAPI_RUN_RETURN(PVR_USB_MountPathCheck(filepathname, HI_TRUE));

	switch(FileSystemType)
	{
		case FILESYSTEM_NTFS:
		{
			sample_printf("mount usb file system is NTFS \n");
			
			HIAPI_RUN_RETURN(PVR_Detect_FileExist(devicepathname));

        	sample_printf("mount %s %s \n", devicepathname, filepathname);

        	HIAPI_RUN_RETURN(mount(devicepathname, filepathname, "NTFS", 0, NULL));

			sRet = HI_SUCCESS;
		}
		break;

		case FILESYSTEM_FAT:
		{
			sample_printf("mount usb file system is FAT \n");
			
			HIAPI_RUN_RETURN(PVR_Detect_FileExist(devicepathname));

        	sample_printf("mount %s %s \n", devicepathname, filepathname);

       		HIAPI_RUN_RETURN(mount(devicepathname, filepathname, "vfat", 0, NULL));

			sRet = HI_SUCCESS;
		}
		break;

		case FILESYSTEM_TMPFS:
		{
			sample_printf("mount usb file system is TMPFS \n");
			
	        memset(cmd, 0, sizeof(cmd));
	        sprintf(cmd, "mount -t tmpfs tmpfs %s -o size=64m", filepathname);
	        PVR_SAMPLE_Printf("PVR_USB_Mount %s\n", cmd);

	        //system("mount -t tmpfs tmpfs /tmpfs  -o size=64m");
	        system(cmd);

			sRet = HI_SUCCESS;
    	}
		break;

		default:
		{
			sample_printf("mount usb file system type is %d not supported!\n", FileSystemType);
			sRet = HI_FAILURE;
		}
		break;
	}    

	if (HI_SUCCESS == sRet)
	{
    	sample_printf("mount success \n");
	}
	else
	{
		sample_printf("mount failure!\n");
	}
	
    return sRet;
}

static HI_S32 PVR_USB_UnMount(HI_CHAR *filepathname)
{
    HIAPI_RUN_RETURN(PVR_Detect_FileExist(filepathname));

    //HIAPI_RUN_RETURN(hios_umount(filepathname));
    umount(filepathname);

    return HI_SUCCESS;
}

/* stop the player */
HI_VOID PVR_Operate_StopPlay(HIPVR_INFO *ppvrinfo)
{
    HI_U32 s32Ret = HI_SUCCESS;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf("point zero error \n");
        return;
    }

    if (ppvrinfo->useflag == HI_FALSE)
    {
        PVR_SAMPLE_Printf("play demux is not use \n");
        return;
    }

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HIAPI_RUN(HI_UNF_AVPLAY_Stop(ppvrinfo->avHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD,
                                 &Stop), s32Ret);

    /* detach the sound device */
    HIAPI_RUN(HI_UNF_SND_Detach(HI_UNF_SND_0, ppvrinfo->avHandle), s32Ret);

    /* detach the video out */
    HIAPI_RUN(HI_UNF_VO_DetachWindow(gs_WinMainHandle, ppvrinfo->avHandle), s32Ret);

    //	PVR_Dmx_ChannelClose(PVR_DEMUX_PLAY);

    ppvrinfo->useflag = HI_FALSE;
}

/* set the pids of audio and video, and play it */
HI_S32 PVR_Operate_StartPlay(PVR_USERDATA_S *puserinfo, HIPVR_INFO *ppvrinfo)
{
    HI_UNF_SYNC_ATTR_S synctype;
    HI_U32 u32Pid;

    if ((puserinfo == HI_NULL) || (ppvrinfo == HI_NULL))
    {
        PVR_SAMPLE_Printf("not acquirepmt , please <search> program first\n");
        return HI_FAILURE;
    }

    PVR_Operate_StopPlay(ppvrinfo);

    HIAPI_RUN_RETURN(HI_UNF_SND_Attach(HI_UNF_SND_0, ppvrinfo->avHandle, HI_UNF_SND_MIX_TYPE_MASTER, 100));
    HIAPI_RUN_RETURN(HI_UNF_VO_AttachWindow(gs_WinMainHandle, ppvrinfo->avHandle));
    HIAPI_RUN_RETURN(HI_UNF_VO_SetWindowEnable(gs_WinMainHandle, HI_TRUE));
    PVR_SAMPLE_Printf("puserinfo->VElementNum = %d, puserinfo->AElementNum=%d\n", puserinfo->VElementNum, puserinfo->AElementNum);

    if (puserinfo->VElementNum > 0)
    {
        u32Pid = puserinfo->VElementPid;
        HIAPI_RUN_RETURN(HIADP_AVPlay_SetVdecAttr(ppvrinfo->avHandle,puserinfo->VideoType,HI_UNF_VCODEC_MODE_NORMAL));
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(ppvrinfo->avHandle,HI_UNF_AVPLAY_ATTR_ID_VID_PID,&u32Pid));
        if (puserinfo->PcrPid != 0)
        {
            HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetAttr(ppvrinfo->avHandle, HI_UNF_AVPLAY_ATTR_ID_SYNC, &synctype));

            synctype.enSyncRef = HI_UNF_SYNC_REF_NONE;

            HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(ppvrinfo->avHandle, HI_UNF_AVPLAY_ATTR_ID_SYNC, &synctype));

            HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(ppvrinfo->avHandle, HI_UNF_AVPLAY_ATTR_ID_PCR_PID,
                                                   &puserinfo->PcrPid));
        }

        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_Start(ppvrinfo->avHandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL));
    }

    if (puserinfo->AElementNum > 0)
    {
        u32Pid = puserinfo->AElementPid;
        HIAPI_RUN_RETURN(HIADP_AVPlay_SetAdecAttr(ppvrinfo->avHandle,puserinfo->AudioType,HD_DEC_MODE_RAWPCM,1));
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(ppvrinfo->avHandle,HI_UNF_AVPLAY_ATTR_ID_AUD_PID,&u32Pid));
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_Start(ppvrinfo->avHandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL));
    }

    ppvrinfo->useflag = HI_TRUE;
    PVR_SAMPLE_Printf(" +++ PVR_Operate_StartPlay +++\n");
    return HI_SUCCESS;
}

/* start record */
static HI_S32 PVR_Operate_StartRec(PVR_USERDATA_S *puserinfo,
                                   HIPVR_INFO *    ppvrinfo,
                                   const HI_CHAR * pszFileName)
{
    HI_U64 maxfilesize = 8 * 1024 * 1024;
    HI_S32 bRewind = 0;
    HI_U32 recChn;
    HI_UNF_PVR_REC_ATTR_S attr;

    if ((puserinfo == HI_NULL) || (ppvrinfo == HI_NULL) || (pszFileName == HI_NULL))
    {
        PVR_SAMPLE_Printf("not acquirepmt , please <search> program first\n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag == HI_TRUE)
    {
        PVR_SAMPLE_Printf(" demux %d is working \n", ppvrinfo->DemuxID);
        return HI_SUCCESS;
    }

    if (puserinfo->AElementNum > 0)
    {
        HIAPI_RUN_RETURN(PVR_Dmx_AddPid(ppvrinfo->DemuxID, puserinfo->AElementPid, HI_UNF_DMX_CHAN_TYPE_AUD));
    }

    if (puserinfo->VElementNum > 0)
    {
        HIAPI_RUN_RETURN(PVR_Dmx_AddPid(ppvrinfo->DemuxID, puserinfo->VElementPid, HI_UNF_DMX_CHAN_TYPE_VID));
        attr.enIndexVidType = puserinfo->VideoType;
        attr.u32IndexPid = puserinfo->VElementPid;
        attr.enIndexType = HI_UNF_PVR_REC_INDEX_TYPE_VIDEO;
    }
    else
    {
        attr.u32IndexPid = puserinfo->AElementPid;
        attr.enIndexType = HI_UNF_PVR_REC_INDEX_TYPE_AUDIO;
    }

    /* build record channel and to record */
    PVR_Pvr_SetRecAttr(&attr, pszFileName, ppvrinfo->DemuxID, puserinfo->scrambled, puserinfo->cipher, bRewind,
                       maxfilesize, sizeof(PVR_USERDATA_S));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RecCreateChn(&recChn, &attr));
    HIAPI_RUN_RETURN(HI_UNF_PVR_RecStartChn(recChn));

    ppvrinfo->recchannelID = recChn;
    ppvrinfo->useflag = HI_TRUE;
    PVR_SAMPLE_Printf("Rec chn OK:%d\n", recChn);

    return HI_SUCCESS;
}

/* stop record */
HI_S32 PVR_Operate_StopRec(HIPVR_INFO *ppvrinfo)
{
    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf("pvr info error\n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    PVR_Dmx_RemoveAllPid(ppvrinfo->DemuxID);

    /* stop record channel */
    HIAPI_RUN_RETURN(HI_UNF_PVR_RecStopChn(ppvrinfo->recchannelID));

    /*destroy record channel */
    HIAPI_RUN_RETURN(HI_UNF_PVR_RecDestroyChn(ppvrinfo->recchannelID));

    PVR_SAMPLE_Printf("Rec chn Stop OK:%d\n", ppvrinfo->recchannelID);
    ppvrinfo->useflag = HI_FALSE;
    ppvrinfo->recchannelID = INVAILD_HANDLE_VALUE;

    return HI_SUCCESS;
}

/* start to replay */
HI_S32 PVR_Operate_StartRePlay(PVR_USERDATA_S *puserinfo, HIPVR_INFO *ppvrinfo, const HI_CHAR *pszFileName)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 playChn;
    HI_HANDLE hAv;
    HI_UNF_PVR_PLAY_ATTR_S attr;
    HI_U32 u32Pid;

    if ((ppvrinfo == HI_NULL) || (puserinfo == HI_NULL) || (pszFileName == HI_NULL))
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    /*if (ppvrinfo->useflag == HI_TRUE)
    {
        PVR_SAMPLE_Printf(" replay is now working \n");
        return HI_FAILURE;
    }*/

    hAv = ppvrinfo->avHandle;

    HI_UNF_AVPLAY_Stop(hAv, HI_UNF_AVPLAY_MEDIA_CHAN_AUD|HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);

    if (puserinfo->VElementNum > 0)
    {
        PVR_SAMPLE_Printf("====vid pid=0x%x\n", puserinfo->VElementPid);
        u32Pid = puserinfo->VElementPid;
        HIADP_AVPlay_SetVdecAttr(hAv, puserinfo->VideoType , HI_UNF_VCODEC_MODE_NORMAL);
        HI_UNF_AVPLAY_SetAttr(hAv, HI_UNF_AVPLAY_ATTR_ID_VID_PID,&u32Pid);
    }

    if (puserinfo->AElementNum > 0)
    {
        PVR_SAMPLE_Printf("====aus pid=0x%x\n", puserinfo->AElementPid);
        u32Pid = puserinfo->AElementPid;
        HIADP_AVPlay_SetAdecAttr(hAv,puserinfo->AudioType,HD_DEC_MODE_RAWPCM,1);
        HI_UNF_AVPLAY_SetAttr(hAv, HI_UNF_AVPLAY_ATTR_ID_AUD_PID,&u32Pid);
    }

    if (puserinfo->PcrPid != 0)
    {
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(hAv, HI_UNF_AVPLAY_ATTR_ID_PCR_PID, &(puserinfo->PcrPid)));
    }

    HIAPI_RUN_RETURN(HI_UNF_SND_Attach(HI_UNF_SND_0, hAv, HI_UNF_SND_MIX_TYPE_MASTER, 100));
    HIAPI_RUN_RETURN(HI_UNF_VO_AttachWindow(gs_WinMainHandle, hAv));
    HIAPI_RUN_RETURN(HI_UNF_VO_SetWindowEnable(gs_WinMainHandle, HI_TRUE));

    //create pvr replay channel 
    PVR_Pvr_SetPlayAttr(&attr, pszFileName, puserinfo->scrambled, puserinfo->cipher);
    HIAPI_RUN_RETURN(HI_UNF_PVR_PlayCreateChn(&playChn, &attr, hAv, portinfo[ppvrinfo->PortID].hTsHandle));

    //sample_printf("new play chn%d ok\n", playChn);

    /**/

    //HIAPI_RUN(HI_UNF_PVR_PlayGetFileAttr(playChn, &fileAttr),s32Ret);
    //sample_printf("file attr: frame/PES:%u, time:%ums, size:%lluByte.\n",
    //       fileAttr.u32FrameNum, fileAttr.u32PlayTimeInMs, fileAttr.u64ValidSizeInByte);

    /**/

    //HIAPI_RUN(HI_UNF_PVR_PlayGetFileAttr(playChn, &fileAttr),s32Ret);
    //sample_printf("play size:%llu \n", fileAttr.u64ValidSizeInByte);

    /* start to play channel */
    HIAPI_RUN(HI_UNF_PVR_PlayStartChn(playChn), s32Ret);
    PVR_SAMPLE_Printf("start play chn%d ok\n", playChn);
    PVR_SAMPLE_Printf("attr: clr:%d, cipher:%d\n", attr.bIsClearStream, attr.stDecryptCfg.bDoCipher);

    ppvrinfo->playchannelID = playChn;
    ppvrinfo->useflag = HI_TRUE;
    return HI_SUCCESS;
}

/* stop player */
HI_S32 PVR_Operate_StopRePlay(HIPVR_INFO *ppvrinfo)
{
    HI_U32 s32Ret = HI_SUCCESS;
    HI_UNF_AVPLAY_STOP_OPT_S stopOpt;
    HI_UNF_PVR_PLAY_STATUS_S status;

    stopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    stopOpt.u32TimeoutMs = 0;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf("Point Zero\n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    HIAPI_RUN(HI_UNF_PVR_PlayGetStatus(ppvrinfo->playchannelID,&status), s32Ret);
    PVR_SAMPLE_Printf("status = %d\n",status.enState);
    HIAPI_RUN(HI_UNF_PVR_PlayStopChn(ppvrinfo->playchannelID, &stopOpt), s32Ret);

    /* destroy pvr channel */
    HIAPI_RUN(HI_UNF_PVR_PlayDestroyChn(ppvrinfo->playchannelID), s32Ret);

    /* detach sound device */
    HIAPI_RUN(HI_UNF_SND_Detach(HI_UNF_SND_0, ppvrinfo->avHandle), s32Ret);

    /* detach VO */
    HIAPI_RUN(HI_UNF_VO_DetachWindow(gs_WinMainHandle, ppvrinfo->avHandle), s32Ret);

    /* reset PVR parameters */
    ppvrinfo->playchannelID = INVAILD_HANDLE_VALUE;
    ppvrinfo->useflag = HI_FALSE;


    return HI_SUCCESS;
}

HI_S32 PVR_Operate_PlayResumeChn(HIPVR_INFO *ppvrinfo)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag != HI_TRUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not use \n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if ((ppvrinfo->DemuxID != PVR_DEMUX_PLAY) && (ppvrinfo->DemuxID != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("pvr channel not play channel %d\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if (ppvrinfo->playchannelID == INVAILD_HANDLE_VALUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not replay file\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    HIAPI_RUN(HI_UNF_PVR_PlayResumeChn(ppvrinfo->playchannelID), s32Ret);
    return HI_SUCCESS;
}

HI_S32 PVR_Operate_PlayPauseChn(HIPVR_INFO *ppvrinfo)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag != HI_TRUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not use \n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if ((ppvrinfo->DemuxID != PVR_DEMUX_PLAY) && (ppvrinfo->DemuxID != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("pvr channel not play channel %d\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if (ppvrinfo->playchannelID == INVAILD_HANDLE_VALUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not replay file\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    HIAPI_RUN(HI_UNF_PVR_PlayPauseChn(ppvrinfo->playchannelID), s32Ret);
    return HI_SUCCESS;
}

HI_S32 PVR_Operate_PlayStep(HIPVR_INFO *ppvrinfo, HI_S32 s32Direction)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag != HI_TRUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not use \n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if ((ppvrinfo->DemuxID != PVR_DEMUX_PLAY) && (ppvrinfo->DemuxID != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("pvr channel not play channel %d\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if (ppvrinfo->playchannelID == INVAILD_HANDLE_VALUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not replay file\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    HIAPI_RUN(HI_UNF_PVR_PlayStep(ppvrinfo->playchannelID, s32Direction), s32Ret);
    return HI_SUCCESS;
}

/* search the position when playing */
HI_S32 PVR_Operate_PlaySeek(HIPVR_INFO *ppvrinfo, HI_S32 type, HI_S32 offset, HI_S32 whence)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_PVR_PLAY_POSITION_S stCurrentPlayPos;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag != HI_TRUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not use \n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if ((ppvrinfo->DemuxID != PVR_DEMUX_PLAY) && (ppvrinfo->DemuxID != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("pvr channel not play channel %d\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if (ppvrinfo->playchannelID == INVAILD_HANDLE_VALUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not replay file\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    stCurrentPlayPos.enPositionType = type;
    stCurrentPlayPos.s64Offset = offset;
    stCurrentPlayPos.s32Whence = whence;

    PVR_SAMPLE_Printf("-----------------------------begin seek play ------------------------------\n");
    PVR_SAMPLE_Printf("HI_UNF_PVR_PlaySeek ok: whence:%d, offset:%d\n", whence, offset);

    /* find out the playing position */
    HIAPI_RUN(HI_UNF_PVR_PlaySeek(ppvrinfo->playchannelID, &stCurrentPlayPos), s32Ret);
    getPlayChnState(0, 1);
    PVR_SAMPLE_Printf("-----------------------------end seek play ------------------------------\n");
    return HI_SUCCESS;
}

/* set the mode for trick */
HI_S32 PVR_Operate_TrickMode(HIPVR_INFO *ppvrinfo, HI_S32 speed)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_PVR_PLAY_MODE_S mode;
    HI_UNF_PVR_PLAY_STATUS_S status;

    if (ppvrinfo == HI_NULL)
    {
        PVR_SAMPLE_Printf(" point zero \n");
        return HI_FAILURE;
    }

    if (ppvrinfo->useflag != HI_TRUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not use \n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if ((ppvrinfo->DemuxID != PVR_DEMUX_PLAY) && (ppvrinfo->DemuxID != PVR_DEMUX_PLAYBACK))
    {
        PVR_SAMPLE_Printf("pvr channel not play channel %d\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    if (ppvrinfo->playchannelID == INVAILD_HANDLE_VALUE)
    {
        PVR_SAMPLE_Printf("pvr channel %d not replay file\n", ppvrinfo->DemuxID);
        return HI_FAILURE;
    }

    PVR_SAMPLE_Printf("-----------------------------begin modify tick ------------------------------\n");

    /* get the player state */
    HIAPI_RUN(HI_UNF_PVR_PlayGetStatus(ppvrinfo->playchannelID, &status), s32Ret);
    PVR_SAMPLE_Printf("now play status %d , speed %d \n", status.enState, status.enSpeed);

    mode.enSpeed = speed;
    PVR_SAMPLE_Printf("modify to speed %d \n", speed);

    /* to trick play */
    HIAPI_RUN(HI_UNF_PVR_PlayTPlay(ppvrinfo->playchannelID, &mode), s32Ret);
    return HI_SUCCESS;
}

char args[10][255];

/* check the input parameters */
static int AdjustString(char *ptr)
{
    int i;

    while ((*ptr == ' ') && (*ptr++ != '\0'))
    {
        ;
    }

    for (i = strlen(ptr); i > 0; i--)
    {
        if ((*(ptr + i - 1) == 0x0a) || (*(ptr + i - 1) == ' '))
        {
            *(ptr + i - 1) = '\0';
        }
        else
        {
            break;
        }
    }

    for (i = 0; i < 10; i++)
    {
        int j = 0;
        while ((*ptr == ' ') && (*ptr++ != '\0'))
        {
            ;
        }

        while ((*ptr != ' ') && (*ptr != '\0'))
        {
            args[i][j++] = *ptr++;
        }

        args[i][j] = '\0';
        if ('\0' == *ptr)
        {
            i++;
            break;
        }

        args[i][j] = '\0';
    }

    return i;
}

HI_VOID ParseArg_Reset(int argc)
{
    HIPVR_INFO *pvrinfo;

    PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
    PVR_Operate_StopPlay(pvrinfo);

    //PVR_Pvr_GetInfo(PVR_DEMUX_PLAYBACK, &pvrinfo);
    //PVR_Operate_StopRePlay(pvrinfo);

    PVR_Pvr_GetInfo(PVR_DEMUX_TIMETHIFT, &pvrinfo);
    PVR_Operate_StopRec(pvrinfo);

    PVR_Pvr_GetInfo(PVR_DEMUX_REC_0, &pvrinfo);
    PVR_Operate_StopRec(pvrinfo);

    PVR_Pvr_GetInfo(PVR_DEMUX_REC_1, &pvrinfo);
    PVR_Operate_StopRec(pvrinfo);

    PVR_Pvr_DeInit();
    PVR_Pvr_Init();
}

HI_S32 ParseArg_Rec(HI_S32 argc, HI_BOOL bStartStop)
{
    PVR_USERDATA_S userdata;
    HIPVR_INFO *pvrinfo;
    HI_S32 demuxid;
    HI_S32 program;

    if (bStartStop == HI_TRUE)
    {
        if (argc < 4)
        {
            puts("Usage:");
            printf("\trec  [demuxId] [program] [file] {scrambled} {cipher}: start record\n");
            printf("\t      [demuxId]: demux used 2 or 3\n");
            printf("\t      [program]: search get program list\n");
            printf("\t      [file]:     file name as string\n");
            printf("\t      [cipher]:   (option) 0:no cipher,    1:encrypt with cipher\n");
            printf("\t      *default     cipher(0)\n");
            return HI_FAILURE;
        }

        demuxid = strtol(args[1], 0, 0);
        program = strtol(args[2], 0, 0);
        switch (argc)
        {
        case 5:
            userdata.scrambled = strtol(args[4], 0, 0);
            break;
        case 6:
            userdata.scrambled = strtol(args[4], 0, 0);
            userdata.cipher = strtol(args[5], 0, 0);
            break;
        }

        if ((demuxid != PVR_DEMUX_REC_0) && (demuxid != PVR_DEMUX_REC_1))
        {
            PVR_SAMPLE_Printf("only demux 2 and 3 support to pvr rec ,please modify demux id \n");
            return HI_FAILURE;
        }

        /*start to record */
        PVR_Dmx_GetProgram(program, &userdata);
        PVR_Pvr_GetInfo(demuxid, &pvrinfo);
        HIAPI_RUN_RETURN(PVR_Operate_StartRec(&userdata, pvrinfo, args[3] ));
        HIAPI_RUN_RETURN(PVR_Pvr_WriteUserDate(args[3], (HI_U8 *)&userdata, sizeof(PVR_USERDATA_S)));
    }
    else
    {
        if (argc < 2)
        {
            puts("Usage:");
            printf("\tstoprec  [demuxid]\n");
            printf("\t    sample:stoprec 2(3)\n");
            return HI_FAILURE;
        }

        /* stop the zero record */
        demuxid = strtol(args[1], 0, 0);
        if ((demuxid != PVR_DEMUX_REC_0) && (demuxid != PVR_DEMUX_REC_1))
        {
            PVR_SAMPLE_Printf("only demux 2 and 3 support to pvr rec ,please modify demux id \n");
            return HI_FAILURE;
        }

        PVR_Pvr_GetInfo(demuxid, &pvrinfo);
        PVR_Operate_StopRec(pvrinfo);
    }

    return HI_SUCCESS;
}

HI_S32 ParseArg_Timethift(HI_S32 argc, HI_BOOL bStartStop)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PVR_USERDATA_S userdata;
    HIPVR_INFO *pvrinfo, *pvrinfoplayback;
    HI_S32 program;
    HI_S32 scrambledStream = 0; //scrambled stream
    HI_S32 cipher = 0; //to cipher or not

    if (bStartStop == HI_TRUE)
    {
        if (argc < 3)
        {
            puts("Usage:");
            printf("\tstartthift [prognum] [file] {scrambled} {cipher}: start time thift\n");
            printf("\t      [prognum]: search get program list\n");
            printf("\t      [file]:     file name as string\n");
            printf("\t      {scrambled}:   (option) 0:no scrambled,    1:scrambled stream\n");
            printf("\t      {cipher}:   (option) 0:no cipher,    1:encrypt with cipher\n");
            printf("\t      *default     cipher(0)\n");
            return HI_FAILURE;
        }

        program = strtol(args[1], 0, 0);
        switch (argc)
        {
        case 3:
            break;
        case 4:
            scrambledStream = strtol(args[3], 0, 0);
            break;
        case 5:
            scrambledStream = strtol(args[3], 0, 0);
            cipher = strtol(args[4], 0, 0);
            break;
        default:
            return HI_FAILURE;
        }

        PVR_Dmx_GetProgram(program, &userdata);
        PVR_Pvr_GetInfo(PVR_DEMUX_REC_0, &pvrinfo);
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfoplayback);
        if (pvrinfoplayback->useflag == HI_TRUE)
        {
            PVR_SAMPLE_Printf("playback is used , time thift start failure \n");
            return HI_FAILURE;
        }

        HIAPI_RUN_RETURN(PVR_Operate_StartRec(&userdata, pvrinfo, args[2]));
        HIAPI_RUN_RETURN(PVR_Pvr_WriteUserDate(args[2], (HI_U8 *)&userdata, sizeof(PVR_USERDATA_S)));
        sleep(5);
        PVR_Dmx_AttachPort(PVR_DEMUX_PLAY, PLAYBACK_PORT,0x200000);
        HIAPI_RUN_RETURN(PVR_Operate_StartRePlay(&userdata, pvrinfoplayback, args[2]));
    }
    else
    {
        PVR_Pvr_GetInfo(PVR_DEMUX_REC_0, &pvrinfo);
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfoplayback);
        HIAPI_RUN(PVR_Operate_StopRePlay(pvrinfoplayback), s32Ret);
        HIAPI_RUN(PVR_Operate_StopRec(pvrinfo), s32Ret);
        HIAPI_RUN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAY,PLAYBACK_PORT,0), s32Ret);

    }

    return HI_SUCCESS;
}

HI_S32 ParseArg_RePlay(HI_S32 argc, HI_BOOL bStartStop)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PVR_USERDATA_S usrdata;
    HIPVR_INFO *pvrinfo;
    HI_S32 apid = 0, vpid = 0;
    HI_S32 scrambledStream = 0; //scrambled stream
    HI_S32 cipher = 0; //to cipher or not

    if (bStartStop == HI_TRUE)
    {
        if (argc < 2)
        {
            puts("Usage:");
            printf("\treplay  [file] {scrambled} {cipher} {apid} {vpid} : start replay\n");
            printf("\t      [file]:     file name as string\n");
            printf("\t      [scrambled]:   (option) 0:no scrambled,    1:scrambled stream\n");
            printf("\t      {cipher}:   (option) 0:no cipher,    1:decrypt with cipher\n");
            printf("\t      *default    cipher(0)\n");
            return HI_FAILURE;
        }

        switch (argc)
        {
        case 3:
            scrambledStream = strtol(args[3], 0, 0);
            break;
        case 4:
            scrambledStream = strtol(args[3], 0, 0);
            cipher = strtol(args[4], 0, 0);
            break;
        case 5:
            scrambledStream = strtol(args[3], 0, 0);
            cipher = strtol(args[4], 0, 0);
            apid = strtol(args[5], 0, 0);
            break;
        case 6:
            scrambledStream = strtol(args[3], 0, 0);
            cipher = strtol(args[4], 0, 0);
            apid = strtol(args[5], 0, 0);
            vpid = strtol(args[6], 0, 0);
            break;
        }

        /*start to play*/

        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        HIAPI_RUN_RETURN(PVR_Detect_FileExist(args[1]));
        s32Ret = PVR_Pvr_ReadUserDate(args[1], (HI_U8 *)&usrdata, sizeof(PVR_USERDATA_S));
        if (s32Ret != HI_SUCCESS)
        {
            usrdata.AElementPid = apid;
            usrdata.AudioType   = HA_AUDIO_ID_AAC;
            usrdata.VElementPid = vpid;
            usrdata.VideoType = HI_UNF_VCODEC_TYPE_MPEG2;
            usrdata.PcrPid = 0;
            usrdata.scrambled = scrambledStream;
            usrdata.cipher = cipher;
        }
        else
        {
            PVR_SAMPLE_Printf( " %s Audio Stream PID = 0x%x[%d] ", args[1], usrdata.AElementPid, usrdata.AElementPid);

            switch (usrdata.AudioType)
            {
            case HA_AUDIO_ID_MP3:
                PVR_SAMPLE_Printf(" Stream Type MP3\n");
                break;
            case HA_AUDIO_ID_AAC:
                PVR_SAMPLE_Printf(" Stream Type AAC\n");
                break;
            case HA_AUDIO_ID_DOLBY_PLUS:
                PVR_SAMPLE_Printf(" Stream Type AC3\n");
                break;
            default:
                PVR_SAMPLE_Printf(" Stream Type Unknow\n");
            }

            PVR_SAMPLE_Printf(" %s Video Stream PID = 0x%x[%d] ", args[1], usrdata.VElementPid, usrdata.VElementPid);
            switch (usrdata.VideoType)
            {
            case HI_UNF_VCODEC_TYPE_H264:
                PVR_SAMPLE_Printf(" Stream Type H264\n");
                break;
            case HI_UNF_VCODEC_TYPE_MPEG2:
                PVR_SAMPLE_Printf(" Stream Type MP2\n");
                break;
            case HI_UNF_VCODEC_TYPE_MPEG4:
                PVR_SAMPLE_Printf(" Stream Type MP4\n");
                break;
            default:
                PVR_SAMPLE_Printf(" Stream Type Unknow\n");
            }
        }

        //swith play channel to record port
        PVR_Dmx_AttachPort(PVR_DEMUX_PLAY, PLAYBACK_PORT,0x200000);
        HIAPI_RUN_RETURN(PVR_Operate_StartRePlay(&(usrdata), pvrinfo, args[1]));
    }
    else
    {
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        HIAPI_RUN_RETURN(PVR_Operate_StopRePlay(pvrinfo));
        HIAPI_RUN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAY,PLAYBACK_PORT,0), s32Ret);

    }

    return HI_SUCCESS;
}

HI_VOID ParseArg_Play(int argc, HI_BOOL bStartStop)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PVR_USERDATA_S usrdata;
    HIPVR_INFO *pvrinfo;
    int program;

    if (bStartStop == HI_TRUE)
    {
        if (argc < 2)
        {
            puts("Usage:");
            printf("\tplay  [prognum] {demuxid}\n");
            printf("\t    sample:play 0\n");
            return;
        }

        program = atoi(args[1]);
        PVR_Dmx_GetProgram(program, &usrdata);
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);

        //switch playing channle to play port
        PVR_Dmx_AttachPort(PVR_DEMUX_PLAY, u32TunerPort,0);

        HIAPI_RUN(PVR_Operate_StartPlay(&usrdata, pvrinfo), s32Ret);
    }
    else
    {
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_StopPlay(pvrinfo);
    }
}

/* parse input parameters */
static void ParseArg(int argc)
{
    int i;
    HIPVR_INFO *pvrinfo;

    for (i = 0; i < argc; i++)
    {
        PVR_SAMPLE_Printf("argv[%d]:%s, ", i, args[i]);
    }

    PVR_SAMPLE_Printf("argc:%d\n", argc);

    if (0 == strcmp("reset", args[0]))
    {
        ParseArg_Reset(argc);
    }
    else if (0 == strcmp("rec", args[0]))
    {
        ParseArg_Rec(argc, HI_TRUE);
    }
    else if (0 == strcmp("stoprec", args[0]))
    {
        ParseArg_Rec(argc, HI_FALSE);
    }
    else if (0 == strcmp("startt", args[0]))
    {
        ParseArg_Timethift(argc, HI_TRUE);
    }
    else if (0 == strcmp("stopt", args[0]))
    {
        ParseArg_Timethift(argc, HI_FALSE);
    }
    else if (0 == strcmp("replay", args[0]))
    {
        ParseArg_RePlay(argc, HI_TRUE);
    }
    else if (0 == strcmp("restop", args[0]))
    {
        ParseArg_RePlay(argc, HI_FALSE);
    }
    else if (0 == strcmp("play", args[0]))
    {
        ParseArg_Play(argc, HI_TRUE);
    }
    else if (0 == strcmp("stop", args[0]))
    {
        ParseArg_Play(argc, HI_FALSE);
    }
    else if (0 == strcmp("ff", args[0]) && (0 != strlen(args[1])))         /* operate ff */
    {
        if (0 == strlen(args[1]))
        {
            puts("Usage:");
            printf("\tff speed\n");
            printf("\t    sample:ff 16\n");
            return;
        }

        /* set trick mode */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_TrickMode(pvrinfo, 1024 * atoi(args[1]));
    }
    else if (0 == strcmp("f4", args[0]))                                 /* operate f4 */
    {
        /*set trick mode */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_TrickMode(pvrinfo, HI_UNF_PVR_PLAY_SPEED_4X_FAST_FORWARD);
    }
    else if (0 == strcmp("resum", args[0]))                              /* operate resume */
    {
        /* resume play channel */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_PlayResumeChn(pvrinfo);
    }
    else if (0 == strcmp("pause", args[0]))                          /*operate pause */
    {
        /* pause play channel */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_PlayPauseChn(pvrinfo);
    }
    else if (0 == strcmp("stepb", args[0]))                          /* operate stepb */
    {
        /*rewind by step */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_PlayStep(pvrinfo, -1);
    }
    else if (0 == strcmp("seek", args[0]))/* operate seek */
    {
        if ((0 == strlen(args[1])) || (0 == strlen(args[2])) || (0 == strlen(args[3])))
        {
            puts("Usage:");
            printf("\tseek enPositionType s64Offset s32Whence\n");
            printf("\t    sample:seek 1 0 0\n");
            return;
        }

        /* play to seek position */
        PVR_Pvr_GetInfo(PVR_DEMUX_PLAY, &pvrinfo);
        PVR_Operate_PlaySeek(pvrinfo, atoi(args[1]), atoi(args[2]), atoi(args[3]));
    }
    else
    {
        printf("Please input follow cmd:\n");
        printf("\treset\treset pvr\n");
        printf("\trec\trecord ts stream\n");
        printf("\tstoprec\tstop record\n");
        printf("\tstartt\tstartthift ts stream\n");
        printf("\tstopt\tstopthift ts stream\n");
        printf("\treplay\tts stream replay\n");
        printf("\tplay\tnormal play\n");
        printf("\tstop\tstop play or replay\n");
        printf("\tff\ttrick play\n");
        printf("\tf4\ttrick play 4x fast forward\n");
        printf("\tresum\tresume replay\n");
        printf("\tpause\tpause replay\n");
        printf("\tstepb\tstep back\n");
        printf("\tseek\tseek at play\n");
    }

    return;
}

HI_S32 main_argparse(int argc, char *argv[])
{
    HI_S32 opt;
    HI_BOOL f, m, s, d, i;
    HI_U32 fstype = FILESYSTEM_FAT;
    HI_U32 tmpvalue;
    HI_U32 chnum;
    DB_FRONTEND_S stRFChan;

    HI_S8 help[] = "\nsample_pvr [options] [parameter]\n\n" \
                   "options:\n-f [freq] set tuner frequency (KB)\n" \
                   "-p [0~6] set demux port \n" \
                   "-d [path] usb device path\n" \
                   "-s [path] mount path\n" \
                   "-t [vfat/ntfs/tmpfs] mount type \n" \
                   "-m [path] file play\n" \
                   "-i [ipaddr] ip play\n";

    f = m = s = d = i = HI_FALSE;

    memset(srcaddr, 0, 512);
    memset(dstaddr, 0, 512);
    memset(g_FilePlayPath, 0, 512);
    memset(g_IpAddr, 0, 20);

    while ((opt = getopt(argc, argv, ":?f:p:s:d:t:m:i:")) != -1)
    {
        switch (opt)
        {
        case '?':
            printf("%s", help);
            return HI_FAILURE;
        case 'f':
            tmpvalue = strtol(optarg, 0, 0);
            if ((tmpvalue > 50) && (tmpvalue < 900))
            {
                u32TunerFrequency = tmpvalue;
                f = HI_TRUE;
            }
            else
            {
                printf("input tuner frequency error \n");
            }

            break;
        case 'p':
            u32TunerPort = strtol(optarg, 0, 0);
            break;
        case 's':
            strcpy(srcaddr, optarg);
            s = HI_TRUE;
            break;
        case 'd':
            strcpy(dstaddr, optarg);
            d = HI_TRUE;
            break;
        case 't':
            if (strcmp(optarg, "vfat") == 0)
            {
                fstype = FILESYSTEM_FAT;
            }
            else if (strcmp(optarg, "ntfs") == 0)
            {
                fstype = FILESYSTEM_NTFS;
            }
            else if (strcmp(optarg, "tmpfs") == 0)
            {
                fstype = FILESYSTEM_TMPFS;
            }

            break;
        case 'm':
            strcpy(g_FilePlayPath, optarg);
            m = HI_TRUE;
            break;
        case 'i':
            strcpy(g_IpAddr, optarg);
            i = HI_TRUE;
            break;
        default:
            break;
        }
    }

    if ((s == HI_TRUE) && (d == HI_TRUE))
    {
        HIAPI_RUN_RETURN(PVR_USB_Mount(srcaddr, dstaddr, fstype));
    }

    if (f == HI_TRUE)
    {
        if (u32TunerPort > DVB_PORT_2)
        {
            printf("tuner port select error %d  please input 0~2\n", u32TunerPort);
            return HI_FAILURE;
        }

        //set port
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAY,u32TunerPort,0));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_0,u32TunerPort,0));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_1,u32TunerPort,0));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_TIMETHIFT,u32TunerPort,0));

        //      HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAYBACK, PLAYBACK_PORT));
        HIAPI_RUN_RETURN(HIADP_Tuner_Connect(u32TunerPort,u32TunerFrequency,u32TunerSym,u32ThirdParam));

        stRFChan.unFEtype.sFEParaRf.u32Frequency  = u32TunerFrequency;
        stRFChan.unFEtype.sFEParaRf.u32SymbolRate = u32TunerSym;
        stRFChan.unFEtype.sFEParaRf.u32Modulation = u32ThirdParam;
        stRFChan.unFEtype.sFEParaRf.u32TunerPort = u32TunerPort;
        stRFChan.eFEType = FE_TYPE_RF;

        HIAPI_RUN_RETURN(DVB_SearchStart(PVR_DEMUX_PLAY));

        chnum = DB_AddFEChan(&stRFChan);
        DVB_SaveSearch(chnum);
        DVB_ListProg();
        u32SignalSource = 0;
        return HI_SUCCESS;
    }

    if (m == HI_TRUE)
    {
        if ((u32TunerPort < IP_PORT_0) || (u32TunerPort > IP_PORT_2))
        {
            PVR_SAMPLE_Printf("ip port select error %d  please input 3~4\n", u32TunerPort);
            return HI_FAILURE;
        }

        PVR_SAMPLE_Printf(" ==%s== \n",g_FilePlayPath);

        DB_FRONTEND_S stFEChan;

        strcpy(stFEChan.unFEtype.sFEParaFile.path, g_FilePlayPath);
        stFEChan.eFEType = FE_TYPE_FILE;

        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAY, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_0, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_1, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_TIMETHIFT, u32TunerPort,0x200000));
        //HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAYBACK, PLAYBACK_PORT,0));
        HIAPI_RUN_RETURN(DMX_FileStartInject(g_FilePlayPath, u32TunerPort));
        HIAPI_RUN_RETURN(DVB_SearchStart(PVR_DEMUX_PLAY));
        chnum = DB_AddFEChan(&stFEChan);
        DVB_SaveSearch(chnum);
        DVB_ListProg();
        u32SignalSource = 1;
        return HI_SUCCESS;
    }

    if (i == HI_TRUE)
    {
        if ((u32TunerPort < IP_PORT_0) || (u32TunerPort > IP_PORT_2))
        {
            PVR_SAMPLE_Printf("ip port select error %d  please input 3~4\n", u32TunerPort);
            return HI_FAILURE;
        }
        DB_FRONTEND_S stFEChan;

        strcpy(stFEChan.unFEtype.sFEParaIp.multiIPAddr, g_IpAddr);
        stFEChan.unFEtype.sFEParaIp.port = 1234;
        stFEChan.eFEType = FE_TYPE_IP;

        //set port
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAY, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_0, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_REC_1, u32TunerPort,0x200000));
        HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_TIMETHIFT, u32TunerPort,0x200000));
        //HIAPI_RUN_RETURN(PVR_Dmx_AttachPort(PVR_DEMUX_PLAYBACK, PLAYBACK_PORT,0));
        HIAPI_RUN_RETURN(DMX_IPStartInject(stFEChan.unFEtype.sFEParaIp.multiIPAddr,stFEChan.unFEtype.sFEParaIp.port,u32TunerPort));
        HIAPI_RUN_RETURN(DVB_SearchStart(PVR_DEMUX_PLAY));
        chnum = DB_AddFEChan(&stFEChan);
        DVB_SaveSearch(chnum);
        DVB_ListProg();
        u32SignalSource = 2;
        return HI_SUCCESS;
    }

    return HI_SUCCESS;
}

HI_S32 main_argrelease()
{
    if (u32SignalSource == 1)
    {
        DMX_FileStopInject(u32TunerPort);
    }
    else if (u32SignalSource == 2)
    {
        DMX_IPStopInject(u32TunerPort);
    }

    if (strlen(dstaddr))
    {
        PVR_USB_UnMount(dstaddr);
    }
    return HI_SUCCESS;

}

int main(int argc, char *argv[])
{
    HI_S8 s8szPVRBuf[256] = {0};
    HI_S8 *pszPVRCmd = NULL;
    HI_RECT_S stPVRWinRect = {0};

    PVR_Comm_Init();

    stPVRWinRect.s32X = 0;
    stPVRWinRect.s32Y = 0;
    stPVRWinRect.s32Width = 1920;
    stPVRWinRect.s32Height = 1080;

    HIADP_VO_CreatWin(&stPVRWinRect,&gs_WinMainHandle);

    //MPI_VoCreateWin(&gs_WinSlaveHandle, 0);
    //MPI_WinSetOutSize(gs_WinMainHandle,1920,1080);


    PVR_Pvr_Init();

    HIAPI_RUN_RETURN(main_argparse(argc, argv));

    PVR_AvPlay_Create(PVR_DEMUX_PLAY);
    //PVR_AvPlay_Create(PVR_DEMUX_PLAYBACK);


    for (;;)
    {
        PVR_SAMPLE_Printf("PVR# ");

        //fgetc(stdin); // why to fgetc from stdin?

        pszPVRCmd = (HI_S8*)fgets((char*)s8szPVRBuf, sizeof(s8szPVRBuf), stdin);
        memset(args, 0, sizeof(args));

        /* check the input parameters! */
        argc = AdjustString((char*)pszPVRCmd);
        if (0 == strcmp("q", args[0]) || 0 == strcmp("Q", args[0]))
        {
            break;
        }

        /* parse all the parameters! */
        ParseArg(argc);
    }

    PVR_Operate_StopPlay(&(pvrinfo[PVR_DEMUX_PLAY]));
    //PVR_Operate_StopRePlay(&(pvrinfo[PVR_DEMUX_PLAYBACK]));
    PVR_Operate_StopRec(&(pvrinfo[PVR_DEMUX_TIMETHIFT]));
    PVR_Operate_StopRec(&(pvrinfo[PVR_DEMUX_REC_0]));
    PVR_Operate_StopRec(&(pvrinfo[PVR_DEMUX_REC_1]));

    PVR_AvPlay_Destroy(PVR_DEMUX_PLAY);
    //PVR_AvPlay_Destroy(PVR_DEMUX_PLAYBACK);

    main_argrelease();

    PVR_Pvr_DeInit();
    PVR_Comm_DeInit();

    PVR_SAMPLE_Printf("\nPVR demo exit success!\n");

    return HI_SUCCESS;
}
