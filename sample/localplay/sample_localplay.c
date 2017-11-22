#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>
#include <errno.h>
#include <dirent.h>
#include <pthread.h>

#include "hi_audio_codec.h"
#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_demux.h"
#include "hi_unf_so.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_subt.h"
#include "hi_go.h"
#include "hi_adp_audio.h"
#include "hi_adp_mpi.h"
#include "hi_adp.h"
#include "hi_svr_player.h"
#include "hi_svr_format.h"
#include "hi_svr_metadata.h"
#include "hi_svr_assa.h"
#if defined (DRM_SUPPORT)
#include "localplay_drm.h"
#endif

#if defined (CHARSET_SUPPORT)
#include "hi_svr_charset.h"
#include "hi_svr_charset_norm.h"
#endif

#include "test_protocol_args.h"
//Gaplessplay include
#include "play_m3u9.h"

#define CMD_LEN            (512)
#define ASTREAM_FILE       "./astream.file"
#define ASTREAM_IDX_FILE   "./astream_idx.file"
#define VSTREAM_FILE       "./vstream.file"
#define VSTREAM_IDX_FILE   "./vstream_idx.file"
#ifndef DBG_PRINTF
#define DBG_PRINTF
#endif
#define sample_printf printf
#define PRINTF printf
#ifdef CHIP_TYPE_hi3110ev500
#define USE_EXTERNAL_AVPLAY  1
#else
#define USE_EXTERNAL_AVPLAY  0
#endif
#define HELP_INFO  \
" ------------- help info ----------------------------------  \n\n " \
"    h     : help info                                          \n " \
"    play  : play                                               \n " \
"    pause : pause                                              \n " \
"    seek  : seek ms, example: seek 90000                       \n " \
"    metadata : print metadata, example: metadata               \n " \
"    posseek  : seek bytes, example: posseek 90000              \n " \
"    stop  : stop                                               \n " \
"    resume: resume                                             \n " \
"    bw    : backward 2/4/8/16/32/64, example: bw 2             \n " \
"    ff    : forward 2/4/8/16/32/64, example: ff 4              \n " \
"    info  : info of player                                     \n " \
"    set   : example:                                           \n " \
"            set mute 1/0                                       \n " \
"            set sync v_pts_offset a_pts_offset s_pts_offset    \n " \
"            set vol 50                                         \n " \
"            set track 0/1/2/...                                \n " \
"            set pos 20 20 300 300                              \n " \
"            set id prgid vid aid sid, example set id 0 0 1 0   \n " \
"    get   : get bandwidth                                      \n " \
"            get bufferconfig size/time                         \n " \
"            get bufferstatus                                   \n " \
"            ......                                             \n " \
"    open  : open new file, example: open /mnt/1.avi            \n " \
"    dbg   : enable dgb, example: dgb 1/0                       \n " \
"    q     : quite                                              \n " \
"    drm   : GetAllSupportInfo                                  \n " \
"            GetConstraints                                     \n " \
"            GetMetadata                                        \n " \
"            GetDrmObjectType                                   \n " \
"    sethls: sethls track 0/1/2...                              \n " \
"                                                               \n " \
" ----------------------------------------------------------- \n\n " \

static HI_HANDLE s_hLayer = HIGO_INVALID_HANDLE;
static HI_HANDLE s_hLayerSurface = HIGO_INVALID_HANDLE;
static HI_HANDLE s_hFont  = HIGO_INVALID_HANDLE;
static HI_SO_SUBTITLE_ASS_PARSE_S *s_pstParseHand = NULL;

static HI_S32 s_s32ThreadExit = HI_FAILURE;
static HI_S32 s_s32ThreadEnd = HI_SUCCESS;
static HI_CHAR  s_aszUrl[HI_FORMAT_MAX_URL_LEN];
static pthread_t s_hThread = {0};
static HI_S64 s_s64CurPgsClearTime = -1;
static HI_BOOL s_bPgs = HI_FALSE;
#ifdef CHIP_TYPE_hi3110ev500
static HI_SVR_PLAYER_PARAM_S s_stParam = {
        4,
        HI_UNF_DMX_PORT_3_RAM,
        0,
        0,
        720,
        576,
        100,
        0,
        0,
        0
};
#else
static HI_SVR_PLAYER_PARAM_S s_stParam = {
        4,
        HI_UNF_DMX_PORT_3_RAM,
        0,
        0,
        1920,
        1080,
        100,
        0,
        0,
        0
};
#endif

static HI_HANDLE s_hWindow = HI_SVR_PLAYER_INVALID_HDL;
static HI_S32 subOndraw(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg);
static HI_S32 subOnclear(HI_U32 u32UserData, HI_VOID *pArg);
static HI_S32 outFileInfo(HI_FORMAT_FILE_INFO_S *pstFileInfo);
static HI_S32 CheckPlayerStatus(HI_HANDLE hPlayer, HI_U32 u32Status, HI_U32 u32TimeOutMs);

static HI_CHAR *getVidFormatStr(HI_U32 u32Format)
{
    switch (u32Format)
    {
    case HI_UNF_VCODEC_TYPE_MPEG2:
        return "MPEG2";
        break;

    case HI_UNF_VCODEC_TYPE_MPEG4:
        return "MPEG4";
        break;

    case HI_UNF_VCODEC_TYPE_AVS:
        return "AVS";
        break;

    case HI_UNF_VCODEC_TYPE_H263:
        return "H263";
        break;

    case HI_UNF_VCODEC_TYPE_H264:
        return "H264";
        break;

    case HI_UNF_VCODEC_TYPE_REAL8:
        return "REAL8";
        break;

    case HI_UNF_VCODEC_TYPE_REAL9:
        return "REAL9";
        break;

    case HI_UNF_VCODEC_TYPE_VC1:
        return "VC1";
        break;

    case HI_UNF_VCODEC_TYPE_VP6:
        return "VP6";
        break;

    case HI_UNF_VCODEC_TYPE_DIVX3:
        return "DIVX3";
        break;

    case HI_UNF_VCODEC_TYPE_RAW:
        return "RAW";
        break;

    case HI_UNF_VCODEC_TYPE_JPEG:
        return "JPEG";
        break;

    case HI_UNF_VCODEC_TYPE_MJPEG:
        return "MJPEG";
        break;

    case HI_UNF_VCODEC_TYPE_SORENSON:
        return "SORENSON";
        break;

    case HI_UNF_VCODEC_TYPE_VP6F:
        return "VP6F";
        break;

    case HI_UNF_VCODEC_TYPE_VP6A:
        return "VP6A";
        break;

    case HI_UNF_VCODEC_TYPE_VP8:
        return "VP8";
        break;

    default:
        return "UN-KNOWN";
        break;
    }

    return "UN-KNOWN";
}

static HI_CHAR *getAudFormatStr(HI_U32 u32Format)
{
    switch (u32Format)
    {
    case FORMAT_MP2:
        return "MPEG2";
        break;
    case FORMAT_MP3:
        return "MPEG3";
        break;
    case FORMAT_AAC:
        return "AAC";
        break;
    case FORMAT_AC3:
        return "AC3";
        break;
    case FORMAT_DTS:
        return "DTS";
        break;
    case FORMAT_VORBIS:
        return "VORBIS";
        break;
    case FORMAT_DVAUDIO:
        return "DVAUDIO";
        break;
    case FORMAT_WMAV1:
        return "WMAV1";
        break;
    case FORMAT_WMAV2:
        return "WMAV2";
        break;
    case FORMAT_MACE3:
        return "MACE3";
        break;
    case FORMAT_MACE6:
        return "MACE6";
        break;
    case FORMAT_VMDAUDIO:
        return "VMDAUDIO";
        break;
    case FORMAT_SONIC:
        return "SONIC";
        break;
    case FORMAT_SONIC_LS:
        return "SONIC_LS";
        break;
    case FORMAT_FLAC:
        return "FLAC";
        break;
    case FORMAT_MP3ADU:
        return "MP3ADU";
        break;
    case FORMAT_MP3ON4:
        return "MP3ON4";
        break;
    case FORMAT_SHORTEN:
        return "SHORTEN";
        break;
    case FORMAT_ALAC:
        return "ALAC";
        break;
    case FORMAT_WESTWOOD_SND1:
        return "WESTWOOD_SND1";
        break;
    case FORMAT_GSM:
        return "GSM";
        break;
    case FORMAT_QDM2:
        return "QDM2";
        break;
    case FORMAT_COOK:
        return "COOK";
        break;
    case FORMAT_TRUESPEECH:
        return "TRUESPEECH";
        break;
    case FORMAT_TTA:
        return "TTA";
        break;
    case FORMAT_SMACKAUDIO:
        return "SMACKAUDIO";
        break;
    case FORMAT_QCELP:
        return "QCELP";
        break;
    case FORMAT_WAVPACK:
        return "WAVPACK";
        break;
    case FORMAT_DSICINAUDIO:
        return "DSICINAUDIO";
        break;
    case FORMAT_IMC:
        return "IMC";
        break;
    case FORMAT_MUSEPACK7:
        return "MUSEPACK7";
        break;
    case FORMAT_MLP:
        return "MLP";
        break;
    case FORMAT_GSM_MS:
        return "GSM_MS";
        break;
    case FORMAT_ATRAC3:
        return "ATRAC3";
        break;
    case FORMAT_VOXWARE:
        return "VOXWARE";
        break;
    case FORMAT_APE:
        return "APE";
        break;
    case FORMAT_NELLYMOSER:
        return "NELLYMOSER";
        break;
    case FORMAT_MUSEPACK8:
        return "MUSEPACK8";
        break;
    case FORMAT_SPEEX:
        return "SPEEX";
        break;
    case FORMAT_WMAVOICE:
        return "WMAVOICE";
        break;
    case FORMAT_WMAPRO:
        return "WMAPRO";
        break;
    case FORMAT_WMALOSSLESS:
        return "WMALOSSLESS";
        break;
    case FORMAT_ATRAC3P:
        return "ATRAC3P";
        break;
    case FORMAT_EAC3:
        return "EAC3";
        break;
    case FORMAT_SIPR:
        return "SIPR";
        break;
    case FORMAT_MP1:
        return "MP1";
        break;
    case FORMAT_TWINVQ:
        return "TWINVQ";
        break;
    case FORMAT_TRUEHD:
        return "TRUEHD";
        break;
    case FORMAT_MP4ALS:
        return "MP4ALS";
        break;
    case FORMAT_ATRAC1:
        return "ATRAC1";
        break;
    case FORMAT_BINKAUDIO_RDFT:
        return "BINKAUDIO_RDFT";
        break;
    case FORMAT_BINKAUDIO_DCT:
        return "BINKAUDIO_DCT";
        break;
    case FORMAT_DRA:
        return "DRA";
        break;

    case FORMAT_PCM: /* various PCM "codecs" */
        return "PCM";
        break;

    case FORMAT_ADPCM: /* various ADPCM codecs */
        return "ADPCM";
        break;

    case FORMAT_AMR_NB: /* AMR */
        return "AMR_NB";
        break;
    case FORMAT_AMR_WB:
        return "AMR_WB";
        break;
    case FORMAT_AMR_AWB:
        return "AMR_AWB";
        break;

    case FORMAT_RA_144: /* RealAudio codecs*/
        return "RA_144";
        break;
    case FORMAT_RA_288:
        return "RA_288";
        break;

    case FORMAT_DPCM: /* various DPCM codecs */
        return "DPCM";
        break;

    case FORMAT_G711:  /* various G.7xx codecs */
        return "G711";
        break;
    case FORMAT_G722:
        return "G722";
        break;
    case FORMAT_G7231:
        return "G7231";
        break;
    case FORMAT_G726:
        return "G726";
        break;
    case FORMAT_G728:
        return "G728";
        break;
    case FORMAT_G729AB:
        return "G729AB";
        break;
    case FORMAT_PCM_BLURAY:
        return "PCM_BLURAY";
        break;
    default:
        break;
    }

    return "UN-KNOWN";
}

static HI_CHAR *getSubFormatStr(HI_U32 u32Format)
{
    switch (u32Format)
    {
    case HI_FORMAT_SUBTITLE_DATA_TEXT:
        return "TEXT";
        break;

    case HI_FORMAT_SUBTITLE_DATA_BMP:
        return "BMP";
        break;

    case HI_FORMAT_SUBTITLE_DATA_ASS:
        return "ASS";
        break;

    case HI_FORMAT_SUBTITLE_DATA_HDMV_PGS:
        return "HDMV_PGS";
        break;

    case HI_FORMAT_SUBTITLE_DATA_BMP_SUB:
        return "IDX_SUB_BMP";
        break;

    default:
        return "UN-KNOWN";
        break;
    }

    return "UN-KNOWN";
}

static HI_S32 deviceInit(HI_VOID)
{
    HI_S32 s32Ret = 0;

    HI_SYS_Init();
  //  HI_SYS_PreAV(NULL);
#ifdef CHIP_TYPE_hi3110ev500
    s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_PAL);
#else
	s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_720P_50);
#endif
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call DispInit failed.\n");
        return HI_FAILURE;
    }

    s32Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);

    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call VoInit failed.\n");
        return HI_FAILURE;
    }

    s32Ret = HIADP_Snd_Init();

    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call SndInit failed.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.BLURAYLPCM.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.FFMPEG_ADEC.decode.so");
    s32Ret |= HIADP_AVPlay_RegADecLib();

    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_RegisterAcodecLib failed.\n");
    }

    s32Ret = HI_UNF_DMX_Init();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_UNF_DMX_Init init fail.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_AVPLAY_Init();

    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_AVPLAY_RegisterVcodecLib("libHV.VIDEO.FFMPEG_VDEC.decode.so");
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_RegisterVcodecLib ret %#x\n", s32Ret);
    }
    else
    {
        sample_printf("call HI_UNF_AVPLAY_RegisterVcodecLib success.\n");
    }

    s32Ret = HI_UNF_SO_Init();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_UNF_SO_Init init fail.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_SUBT_Init();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_UNF_SUBT_Init init fail.\n");
        return HI_FAILURE;
    }

    usleep(3000 * 1000);

    return HI_SUCCESS;
}

static HI_VOID deviceDeinit(HI_VOID)
{
    (HI_VOID)HI_UNF_AVPLAY_DeInit();
    (HI_VOID)HI_UNF_DMX_DeInit();
    (HI_VOID)HI_UNF_SO_DeInit();

    (HI_VOID)HIADP_Snd_DeInit();
    (HI_VOID)HIADP_VO_DeInit();
    (HI_VOID)HIADP_Disp_DeInit();
    (HI_VOID)HI_SYS_DeInit();
    (HI_VOID)HI_UNF_SUBT_DeInit();
    return;
}

static HI_S32 setMedia(HI_HANDLE hPlayer, const HI_CHAR * pszUrl)
{
    HI_S32 s32Ret;
    HI_SVR_PLAYER_MEDIA_S stMedia;
    HI_HANDLE hSo = (HI_HANDLE)NULL;
    HI_HANDLE hAVPlay = HI_SVR_PLAYER_INVALID_HDL;

    memset(&stMedia, 0, sizeof(HI_SVR_PLAYER_MEDIA_S));
    sprintf(stMedia.aszUrl, "%s", pszUrl);
    stMedia.u32SubTitileNum= 0;

    PRINTF("### open media file is %s \n", stMedia.aszUrl);
    s32Ret = HI_SVR_PLAYER_SetMedia(hPlayer, HI_SVR_PLAYER_MEDIA_STREAMFILE, &stMedia);
    if (HI_SUCCESS != s32Ret)
    {
        PRINTF("\e[31m ERR: HI_SVR_PLAYER_SetMedia err, ret = 0x%x! \e[0m\n", s32Ret);
        return s32Ret;
    }
    else
    {
        PRINTF("\e[31m ERR: HI_SVR_PLAYER_SetMedia su, ret = 0x%x! \e[0m\n", s32Ret);
    }

    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_SO_HDL, &hSo);
    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_AVPLAYER_HDL, &hAVPlay);
    s32Ret |= HI_UNF_SO_RegOnDrawCb(hSo, subOndraw, subOnclear, hAVPlay);

    if (HI_SUCCESS != s32Ret)
    {
        PRINTF("\e[31m ERR: set subtitle draw function fail! \e[0m\n");
    }

    return s32Ret;
}


static HI_S32 TestCallBack(TEST_EVENT_S *pstEvent)
{
    if (NULL == pstEvent)
    {
        sample_printf("TestCallBack args is null\n");
    }
    switch (pstEvent->type)
    {
        case 1:
            sample_printf("TestCallBack read bytes is: %d\n", *((HI_S32*)pstEvent->Args));
            break;
        default:
            sample_printf("unknow event TestCallBack \n");
            break;
    }
    return 0;
}


static HI_S32 clearSubtitle()
{
    HI_RECT rc = {160, 550, 760, 100};
    HI_CHAR TextClear[] = "";

    sample_printf("CLEAR Subtitle! \n");
    (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);

    if (s_hFont)
    {
        (HI_VOID)HI_GO_TextOutEx(s_hFont, s_hLayerSurface, TextClear, &rc,
            HIGO_LAYOUT_WRAP | HIGO_LAYOUT_HCENTER | HIGO_LAYOUT_BOTTOM);
    }

    if (s_hLayer)
    {
        (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);
    }

    return HI_SUCCESS;
}

static HI_VOID* reconnect(HI_VOID *pArg)
{
    //pthread_t tid =  pthread_self();
    //sample_printf("reconnect tid is %lu",tid);
    HI_S32  s32Ret = HI_FAILURE;
    HI_S64 s64LastPts = HI_FORMAT_NO_PTS;
    HI_HANDLE hSo = (HI_HANDLE)NULL, hAVPlay = HI_SVR_PLAYER_INVALID_HDL;
    HI_HANDLE hPlayer = (HI_HANDLE)pArg;
    HI_FORMAT_FILE_INFO_S stFileInfo;
    HI_SVR_PLAYER_MEDIA_S stMedia;
    HI_SVR_PLAYER_INFO_S stPlayerInfo;

    memset(&stFileInfo,0,sizeof(HI_FORMAT_FILE_INFO_S));
    memset(&stMedia, 0, sizeof(HI_SVR_PLAYER_MEDIA_S));
    memset(&stPlayerInfo, 0, sizeof(HI_SVR_PLAYER_INFO_S));

    s_s32ThreadEnd = HI_FAILURE;
    snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", s_aszUrl);
    stMedia.u32SubTitileNum = 0;
    sample_printf("### open media file is %s \n", stMedia.aszUrl);

    (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);
    (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);

    clearSubtitle();
    s32Ret = HI_SVR_PLAYER_GetPlayerInfo(hPlayer, &stPlayerInfo);
    if (HI_SUCCESS == s32Ret)
    {
        s64LastPts = stPlayerInfo.u64TimePlayed;
        s32Ret = HI_FAILURE;
    }

    (HI_VOID)HI_SVR_PLAYER_Stop(hPlayer);
    CheckPlayerStatus(hPlayer, HI_SVR_PLAYER_STATE_STOP, 100);

    while ((s32Ret == HI_FAILURE) && (s_s32ThreadExit == HI_FAILURE))
    {
        s32Ret = HI_SVR_PLAYER_SetMedia(hPlayer, HI_SVR_PLAYER_MEDIA_STREAMFILE, &stMedia);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("\e[31m ERR: HI_SVR_PLAYER_SetMedia err, ret = 0x%x! \e[0m\n", s32Ret);
            continue;
        }
        else
        {
            sample_printf("\e[31m ERR: HI_SVR_PLAYER_SetMedia su, ret = 0x%x! \e[0m\n", s32Ret);
        }
    }
    s32Ret = HI_SVR_PLAYER_GetFileInfo(hPlayer, &stFileInfo);

    if (HI_SUCCESS == s32Ret)
    {
        outFileInfo(&stFileInfo);
    }
    else
    {
        sample_printf("\e[31m ERR: get file info fail! \e[0m\n");
    }

    /* CNComment:setmedia后需重新设置字幕回调函数 */

    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_SO_HDL, &hSo);
    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_AVPLAYER_HDL, &hAVPlay);
    s32Ret |= HI_UNF_SO_RegOnDrawCb(hSo, subOndraw, subOnclear, hAVPlay);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: set subtitle draw function fail! \e[0m\n");
    }

    (HI_VOID)HI_SVR_PLAYER_Seek(hPlayer, s64LastPts);
    (HI_VOID)HI_SVR_PLAYER_Play(hPlayer);

    s_s32ThreadEnd = HI_SUCCESS;
    return NULL;
}

static HI_S32 eventCallBack(HI_HANDLE hPlayer, HI_SVR_PLAYER_EVENT_S *pstruEvent)
{
    HI_SVR_PLAYER_STATE_E eEventBk = HI_SVR_PLAYER_STATE_BUTT;
    HI_SVR_PLAYER_STREAMID_S *pstSreamId = NULL;
    HI_HANDLE hWindow = (HI_HANDLE)NULL;
    HI_FORMAT_FILE_INFO_S stFileInfo;

    if (0 == hPlayer || NULL == pstruEvent)
    {
        return HI_SUCCESS;
    }

    if (HI_SVR_PLAYER_EVENT_STATE == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        eEventBk = (HI_SVR_PLAYER_STATE_E)*pstruEvent->pu8Data;

        sample_printf("Status change to %d \n", eEventBk);

        if (eEventBk == HI_SVR_PLAYER_STATE_STOP)
        {
            HI_SVR_PLAYER_Seek(hPlayer, 0);
            HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_WINDOW_HDL, &hWindow);
            HI_UNF_VO_ResetWindow(hWindow ? hWindow: s_hWindow, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
        }
    }
    else if (HI_SVR_PLAYER_EVENT_SOF == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        sample_printf("File position is start of file! \n");
        /* CNComment:快退到头重新启动播放 */
        eEventBk = (HI_SVR_PLAYER_STATE_E)*pstruEvent->pu8Data;

        if (HI_SVR_PLAYER_STATE_BACKWARD == eEventBk)
        {
            sample_printf("backward to start of file, start play! \n");
            HI_SVR_PLAYER_Play(hPlayer);
        }
    }
    else if (HI_SVR_PLAYER_EVENT_EOF == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        sample_printf("File postion is end of file, clear last frame and replay! \n");
        HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_WINDOW_HDL, &hWindow);
        HI_UNF_VO_ResetWindow(hWindow ? hWindow: s_hWindow, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
        clearSubtitle();
        /*rtsp/mms/rtmp need to redo setting media when stop->play/replay*/
        if (strstr(s_aszUrl, "rtsp") ||
            strstr(s_aszUrl, "mms")  ||
            strstr(s_aszUrl, "rtmp"))
        {
            if (HI_SUCCESS != setMedia(hPlayer, s_aszUrl))
            {
                return HI_FAILURE;
            }
        }
        HI_SVR_PLAYER_Play(hPlayer);
    }
    else if (HI_SVR_PLAYER_EVENT_STREAMID_CHG == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        pstSreamId = (HI_SVR_PLAYER_STREAMID_S*)pstruEvent->pu8Data;

        if (NULL != pstSreamId)
        {
            sample_printf("Stream id change to: ProgramId %d, vid %d, aid %d, sid %d \n",
                pstSreamId->u32ProgramId,
                pstSreamId->u32VStreamId,
                pstSreamId->u32AStreamId,
                pstSreamId->u32SubTitleId);
        }
    }
    else if (HI_SVR_PLAYER_EVENT_PROGRESS == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_SVR_PLAYER_PROGRESS_S stProgress;
        memcpy(&stProgress, pstruEvent->pu8Data, pstruEvent->u32Len);
        PRINTF("Current progress is %d, Duration:%lld ms,Buffer size:%lld bytes\n",
            stProgress.u32Progress, stProgress.s64Duration,stProgress.s64BufSize);
    }
    else if (HI_SVR_PLAYER_EVENT_ERROR == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_S32 s32SysError = (HI_S32)*pstruEvent->pu8Data;

        if (HI_SVR_PLAYER_ERROR_VID_PLAY_FAIL == s32SysError)
        {
            sample_printf("\e[31m ERR: Vid start fail! \e[0m \n");
        }
        else if (HI_SVR_PLAYER_ERROR_AUD_PLAY_FAIL == s32SysError)
        {
            sample_printf("\e[31m ERR: Aud start fail! \e[0m \n");
        }
        else if (HI_SVR_PLAYER_ERROR_PLAY_FAIL == s32SysError)
        {
            sample_printf("\e[31m ERR: Play fail! \e[0m \n");
        }
        else if (HI_SVR_PLAYER_ERROR_NOT_SUPPORT == s32SysError)
        {
            sample_printf("\e[31m ERR: Not support! \e[0m \n");
        }
        else if (HI_SVR_PLAYER_ERROR_TIMEOUT == s32SysError)
        {
            sample_printf("\e[31m ERR: Time Out! \e[0m \n");
        }
        else
        {
            sample_printf("unknow Error = 0x%x \n", s32SysError);
        }
    }
    else if (HI_SVR_PLAYER_EVNET_NETWORK == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_FORMAT_NET_STATUS_S *pstNetStat = (HI_FORMAT_NET_STATUS_S*)pstruEvent->pu8Data;
        PRINTF("HI_SVR_PLAYER_EVNET_NETWORK: type:%d, code:%d, str:%s\n",
            pstNetStat->eType, pstNetStat->s32ErrorCode, pstNetStat->cProtocals);

        if (pstNetStat->eType == HI_FORMAT_MSG_NETWORK_ERROR_DISCONNECT)
        {
            HI_S32 s32Ret = HI_FAILURE;
            s32Ret = pthread_create(&s_hThread, HI_NULL, reconnect, (HI_VOID*)hPlayer);
            if (s32Ret == HI_SUCCESS)
            {
                sample_printf("create thread:reconnect successfully\n");
            }
            else
            {
                sample_printf("ERR:failed to create thread:reconnect\n");
            }
        }
    }
    else if (HI_SVR_PLAYER_EVENT_FIRST_FRAME_TIME == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_U32 u32Time = *((HI_U32*)pstruEvent->pu8Data);
        sample_printf("the first frame time is %d ms\n",u32Time);
    }
    else if (HI_SVR_PLAYER_EVENT_DOWNLOAD_PROGRESS == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_SVR_PLAYER_PROGRESS_S stDown;
        HI_S64 s64BandWidth = 0;
        (HI_VOID)HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_BANDWIDTH, &s64BandWidth);

        memcpy(&stDown, pstruEvent->pu8Data, pstruEvent->u32Len);
        PRINTF("download progress:%d, duration:%lld ms, buffer size:%lld bytes, bandwidth = %lld\n",
            stDown.u32Progress, stDown.s64Duration, stDown.s64BufSize, s64BandWidth);
    }
    else if (HI_SVR_PLAYER_EVENT_BUFFER == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        HI_SVR_PLAYER_BUFFER_S *pstBufStat = (HI_SVR_PLAYER_BUFFER_S*)pstruEvent->pu8Data;
        PRINTF("HI_SVR_PLAYER_EVENT_BUFFER type:%d, duration:%lld ms, size:%lld bytes\n",pstBufStat->eType,
            pstBufStat->stBufStat.s64Duration,
            pstBufStat->stBufStat.s64Size);

        HI_SVR_PLAYER_INFO_S stPlayerInfo;
        memset(&stPlayerInfo, 0, sizeof(HI_SVR_PLAYER_INFO_S));
        HI_SVR_PLAYER_GetPlayerInfo(hPlayer, &stPlayerInfo);
        // do not deal with buffer event in ff/bw mode,or the ff/bw could be interrupted by
        // resume operation
        if (HI_SVR_PLAYER_STATE_FORWARD == stPlayerInfo.eStatus ||
            HI_SVR_PLAYER_STATE_BACKWARD == stPlayerInfo.eStatus)
        {
            PRINTF("do not deal with buffer event in ff/bw mode");
            return HI_SUCCESS;
        }
        HI_SVR_PLAYER_GetFileInfo(hPlayer, &stFileInfo);

        if (pstBufStat->eType == HI_SVR_PLAYER_DOWNLOAD_FIN)
        {
            sample_printf("### HI_SVR_PLAYER_EVENT_BUFFER type:HI_SVR_PLAYER_DOWNLOAD_FIN, duration:%lld ms, size:%lld bytes\n",
                pstBufStat->stBufStat.s64Duration,
                pstBufStat->stBufStat.s64Size);
            if (HI_FORMAT_STREAM_ES != stFileInfo.eStreamType && HI_FORMAT_STREAM_TS != stFileInfo.eStreamType )
                HI_SVR_PLAYER_Resume(hPlayer);
        }
        else if (pstBufStat->eType == HI_SVR_PLAYER_BUFFER_EMPTY)
        {
            sample_printf("### HI_SVR_PLAYER_EVENT_BUFFER type:HI_SVR_PLAYER_BUFFER_EMPTY, duration:%lld ms, size:%lld bytes\n",
                pstBufStat->stBufStat.s64Duration,
                pstBufStat->stBufStat.s64Size);
            if (HI_FORMAT_STREAM_ES != stFileInfo.eStreamType && HI_FORMAT_STREAM_TS != stFileInfo.eStreamType )
                HI_SVR_PLAYER_Pause(hPlayer);
        }
        else if (pstBufStat->eType == HI_SVR_PLAYER_BUFFER_START)
        {
            sample_printf("### HI_SVR_PLAYER_EVENT_BUFFER type:HI_SVR_PLAYER_BUFFER_START, duration:%lld ms, size:%lld bytes\n",
                pstBufStat->stBufStat.s64Duration,
                pstBufStat->stBufStat.s64Size);
            if (HI_FORMAT_STREAM_ES != stFileInfo.eStreamType && HI_FORMAT_STREAM_TS != stFileInfo.eStreamType)
                HI_SVR_PLAYER_Pause(hPlayer);
        }
        else if (pstBufStat->eType == HI_SVR_PLAYER_BUFFER_ENOUGH)
        {
            sample_printf("### HI_SVR_PLAYER_EVENT_BUFFER type:HI_SVR_PLAYER_BUFFER_ENOUGH, duration:%lld ms, size:%lld bytes\n",
                pstBufStat->stBufStat.s64Duration,
                pstBufStat->stBufStat.s64Size);
            if (HI_FORMAT_STREAM_ES != stFileInfo.eStreamType && HI_FORMAT_STREAM_TS != stFileInfo.eStreamType )
                HI_SVR_PLAYER_Resume(hPlayer);
        }
        else if (pstBufStat->eType == HI_SVR_PLAYER_BUFFER_FULL)
        {
            sample_printf("### HI_SVR_PLAYER_EVENT_BUFFER type:HI_SVR_PLAYER_BUFFER_FULL, duration:%lld ms, size:%lld bytes\n",
                pstBufStat->stBufStat.s64Duration,
                pstBufStat->stBufStat.s64Size);
            if (HI_FORMAT_STREAM_ES != stFileInfo.eStreamType && HI_FORMAT_STREAM_TS != stFileInfo.eStreamType )
                HI_SVR_PLAYER_Resume(hPlayer);
        }
    }
    else if (HI_SVR_PLAYER_EVENT_SEEK_FIN == (HI_SVR_PLAYER_EVENT_E)pstruEvent->eEvent)
    {
        sample_printf("seek finish! \n");
    }
    else
    {
        sample_printf("unknow event type is %d\n",pstruEvent->eEvent);
    }

    return HI_SUCCESS;
}

static HI_S32 outputText(const HI_CHAR* pszText, HI_RECT *pstRect)
{
    if (HIGO_INVALID_HANDLE != s_hFont && HIGO_INVALID_HANDLE != s_hLayer)
    {
        (HI_VOID)HI_GO_TextOutEx(s_hFont, s_hLayerSurface, pszText, pstRect,
            HIGO_LAYOUT_WRAP | HIGO_LAYOUT_HCENTER | HIGO_LAYOUT_BOTTOM);
        (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);
    }
    else
    {
        printf("handle invalid, s_hFont=%#x, s_hLayer=%#x\n", s_hFont, s_hLayer);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 subOndraw(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg)
{
    HI_RECT rc = {260, 450, 760, 200};//{260, 550, 760, 100};
    HI_S32 s32Ret = HI_FAILURE;
    HI_CHAR *pszOutHand = NULL;
    HI_SO_SUBTITLE_ASS_DIALOG_S *pstDialog = NULL;
    HI_PIXELDATA pData;
    HI_S32 s32AssLen = 0;
    HI_U32 u32DisplayWidth = 1280, u32DisplayHeight = 720;

    if (HI_UNF_SUBTITLE_ASS != pstInfo->eType)
    {
        if (NULL != s_pstParseHand)
        {
            HI_SO_SUBTITLE_ASS_DeinitParseHand(s_pstParseHand);
            s_pstParseHand = NULL;
        }
    }

    switch (pstInfo->eType)
    {
    case HI_UNF_SUBTITLE_BITMAP:
        clearSubtitle();
        sample_printf("sub title bitmap! \n");
        {
            HI_U32 i = 0, j = 0;
            HI_U32 u32PaletteIdx = 0;
            HI_U8 *pu8Surface = NULL;
            HI_S32 x = 100 ,y= 100;
            HI_S32 s32GfxX, s32GfxY;
            HI_S32 s32SurfaceW = 0, s32SurfaceH = 0;
            HI_S32 s32SurfaceX, s32SurfaceY, s32SurfaceYOff = 0;
            HI_S32 s32DrawH, s32DrawW;
            HI_BOOL bScale = 0;

            HI_GO_LockSurface(s_hLayerSurface, pData, HI_TRUE);
            HI_GO_GetSurfaceSize(s_hLayerSurface, &s32SurfaceW, &s32SurfaceH);

            pu8Surface = (HI_U8*)pData[0].pData;

            if (NULL == pu8Surface || NULL == pstInfo->unSubtitleParam.stGfx.stPalette)
            {
                HI_GO_UnlockSurface(s_hLayerSurface);
                return HI_SUCCESS;
            }

            if (s32SurfaceW * s32SurfaceH * pData[0].Bpp < pstInfo->unSubtitleParam.stGfx.h * pstInfo->unSubtitleParam.stGfx.w * 4)
            {
                HI_GO_UnlockSurface(s_hLayerSurface);
                return HI_SUCCESS;
            }

            /*l00192899,if the len==0, should not get u32PaletteIdx from pu8PixData, it will make a segment fault*/
            if( (pstInfo->unSubtitleParam.stGfx.w <=0) || (pstInfo->unSubtitleParam.stGfx.h <=0) || (pstInfo->unSubtitleParam.stGfx.pu8PixData ==NULL) || (pstInfo->unSubtitleParam.stGfx.u32Len <=0))
            {
                break;
            }

            //if (HI_SUCCESS == HI_UNF_DISP_GetVirtualScreen(HI_UNF_DISPLAY1, &u32DisplayWidth, &u32DisplayHeight))
            {
                if (pstInfo->unSubtitleParam.stGfx.w <= u32DisplayWidth && pstInfo->unSubtitleParam.stGfx.h <= u32DisplayHeight)
                {
                    x = (u32DisplayWidth - pstInfo->unSubtitleParam.stGfx.w)/2;
                    y = u32DisplayHeight - pstInfo->unSubtitleParam.stGfx.h - 100;
                }
                else
                {
                    /*scale it*/
                    bScale = 1;
                    x = 0;
                    y = 0;
                }
            }

            s32SurfaceX = x;
            s32SurfaceY = y;
            if (bScale)
            {
                s32DrawW = s32SurfaceW;
                s32DrawH = pstInfo->unSubtitleParam.stGfx.h * s32SurfaceW/pstInfo->unSubtitleParam.stGfx.w;
                s32SurfaceY = s32SurfaceH - s32DrawH - 50;
                if (s32SurfaceY <= 0)
                {
                    s32SurfaceY = 20;
                }
                s32SurfaceYOff  = 0;
                for (i = 0; i < s32DrawH; i++)
                {
                    s32GfxY = s32SurfaceYOff * pstInfo->unSubtitleParam.stGfx.w/s32SurfaceW;
                    for (j = 0; j < s32DrawW; j++)
                    {
                        s32GfxX = s32SurfaceX * pstInfo->unSubtitleParam.stGfx.w/s32SurfaceW;
                        if (s32GfxY * pstInfo->unSubtitleParam.stGfx.w + s32GfxX >= pstInfo->unSubtitleParam.stGfx.u32Len)
                        {
                            sample_printf("error\n");
                            break;
                        }
                        u32PaletteIdx = pstInfo->unSubtitleParam.stGfx.pu8PixData[s32GfxY * pstInfo->unSubtitleParam.stGfx.w + s32GfxX];

                        if (u32PaletteIdx >= HI_UNF_SO_PALETTE_ENTRY)
                        {
                            break;
                        }


                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 2]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Red;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 1]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Green;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 0]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Blue;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 3]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Alpha;
                        s32SurfaceX++;
                    }
                    s32SurfaceX = x;
                    s32SurfaceY ++;
                    s32SurfaceYOff ++;
                }
            }
            else
            {
                for (i = 0; i < pstInfo->unSubtitleParam.stGfx.h; i++)
                {
                    for (j = 0; j < pstInfo->unSubtitleParam.stGfx.w; j++)
                    {
                        u32PaletteIdx = pstInfo->unSubtitleParam.stGfx.pu8PixData[i * pstInfo->unSubtitleParam.stGfx.w + j];

                        if (u32PaletteIdx >= HI_UNF_SO_PALETTE_ENTRY)
                        {
                            break;
                        }

                        if (i * pstInfo->unSubtitleParam.stGfx.w + j > pstInfo->unSubtitleParam.stGfx.u32Len)
                        {
                            break;
                        }

                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 2]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Red;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 1]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Green;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 0]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Blue;
                        pu8Surface[s32SurfaceY * pData[0].Pitch + 4 * s32SurfaceX + 3]
                            = pstInfo->unSubtitleParam.stGfx.stPalette[u32PaletteIdx].u8Alpha;
                        s32SurfaceX++;
                    }
                    s32SurfaceX = x;
                    s32SurfaceY++;
                }
            }
            HI_GO_UnlockSurface(s_hLayerSurface);
            // HI_GO_SetLayerPos(s_hLayer, x, y);
            HI_GO_SetLayerPos(s_hLayer, 0,0);
            (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);
            // update the current pgs clear time
            if (s_bPgs)
            {
                s_s64CurPgsClearTime = pstInfo->unSubtitleParam.stGfx.s64Pts + pstInfo->unSubtitleParam.stGfx.u32Duration;
            }
        }
        break;

    case HI_UNF_SUBTITLE_TEXT:
        clearSubtitle();
        HI_GO_SetLayerPos(s_hLayer, 0, 0);
        if (NULL == pstInfo->unSubtitleParam.stText.pu8Data)
        {
            return HI_FAILURE;
        }

        sample_printf("OUTPUT: %s ", pstInfo->unSubtitleParam.stText.pu8Data);
        (HI_VOID)outputText((const HI_CHAR*)pstInfo->unSubtitleParam.stText.pu8Data, &rc);

        break;

    case HI_UNF_SUBTITLE_ASS:
        clearSubtitle();
        HI_GO_SetLayerPos(s_hLayer, 0, 0);
        if ( NULL == s_pstParseHand )
        {
            s32Ret = HI_SO_SUBTITLE_ASS_InitParseHand(&s_pstParseHand);

            if ( s32Ret != HI_SUCCESS )
            {
                return HI_FAILURE;
            }
        }

        s32Ret = HI_SO_SUBTITLE_ASS_StartParse(pstInfo, &pstDialog, s_pstParseHand);

        if (s32Ret == HI_SUCCESS)
        {
            s32Ret = HI_SO_SUBTITLE_ASS_GetDialogText(pstDialog, &pszOutHand, &s32AssLen);

            if ( s32Ret != HI_SUCCESS || NULL == pszOutHand )
            {
                sample_printf("##########can't parse this Dialog!#########\n");
            }
            else
            {
                (HI_VOID)outputText(pszOutHand, &rc);
                sample_printf("OUTPUT: %s \n", pszOutHand);
            }
        }
        else
        {
            sample_printf("##########can't parse this ass file!#########\n");
        }

        free(pszOutHand);
        pszOutHand = NULL;
        HI_SO_SUBTITLE_ASS_FreeDialog(&pstDialog);
        break;

    default:
        break;
    }

    return HI_SUCCESS;
}

static HI_S32 subOnclear(HI_U32 u32UserData, HI_VOID *pArg)
{
   // HI_RECT rc = {160, 550, 760, 100};
   // HI_CHAR TextClear[] = "";
    HI_UNF_SO_CLEAR_PARAM_S *pstClearParam = NULL;

    if (pArg)
    {
        pstClearParam = (HI_UNF_SO_CLEAR_PARAM_S *)pArg;

        // l00192899 if clear operation time is earlier than s_s64CurPgsClearTime,current clear operation is out of date */
        // the clear operation must come from previous pgs subtitle.
        if(-1 != s_s64CurPgsClearTime)
        {
            if (pstClearParam->s64ClearTime < s_s64CurPgsClearTime)
            {
                sample_printf("s64Cleartime=%lld s_s64CurPgsClearTime=%lld is not time!\n", pstClearParam->s64ClearTime,s_s64CurPgsClearTime);
                return HI_SUCCESS;
            }
        }
    }

    (HI_VOID)clearSubtitle();

    return HI_SUCCESS;
}

static HI_S32 outFileInfo(HI_FORMAT_FILE_INFO_S *pstFileInfo)
{
    HI_S32 i = 0, j = 0;

    sample_printf("\n\n*************************************************\n");

    sample_printf("File name:   %s \n", pstFileInfo->aszFileName);

    if (HI_FORMAT_STREAM_TS == pstFileInfo->eStreamType)
        sample_printf("Stream type: %s \n", "TS");
    else if (HI_FORMAT_STREAM_NET == pstFileInfo->eStreamType)
        sample_printf("Stream type: %s \n", "NETWORK");
    else
        sample_printf("Stream type: %s \n", "ES");

    sample_printf("File size:   %lld bytes \n", pstFileInfo->s64FileSize);
    sample_printf("Start time:  %lld:%lld:%lld \n",
        pstFileInfo->s64StartTime / (1000 * 3600),
        (pstFileInfo->s64StartTime % (1000 * 3600)) / (1000 * 60),
        ((pstFileInfo->s64StartTime % (1000 * 3600)) % (1000 * 60)) / 1000);
    sample_printf("Duration:    %lld:%lld:%lld \n",
        pstFileInfo->s64Duration / (1000 * 3600),
        (pstFileInfo->s64Duration % (1000 * 3600)) / (1000 * 60),
        ((pstFileInfo->s64Duration % (1000 * 3600)) % (1000 * 60)) / 1000);
    sample_printf("bps:         %d bits/s \n", pstFileInfo->u32Bps);
    sample_printf("Album:       %s \n", pstFileInfo->aszAlbum);
    sample_printf("Title:       %s \n", pstFileInfo->aszTitle);
    sample_printf("Artist:      %s \n", pstFileInfo->aszArtist);
    sample_printf("Genre:       %s \n", pstFileInfo->aszGenre);
    sample_printf("Comments:    %s \n", pstFileInfo->aszComments);
    sample_printf("Create time: %s \n", pstFileInfo->aszTime);

    for (i = 0; i < pstFileInfo->u32ProgramNum; i++)
    {
        sample_printf("\nProgram %d: \n", i);
        sample_printf("   video info: \n");

        if (HI_FORMAT_INVALID_STREAM_ID != pstFileInfo->astProgramInfo[i].stVidStream.s32StreamIndex)
        {
            sample_printf("     stream idx:   %d \n", pstFileInfo->astProgramInfo[i].stVidStream.s32StreamIndex);
            sample_printf("     format:       %s \n", getVidFormatStr(pstFileInfo->astProgramInfo[i].stVidStream.u32Format));
            sample_printf("     w * h:        %d * %d \n",
                pstFileInfo->astProgramInfo[i].stVidStream.u16Width,
                pstFileInfo->astProgramInfo[i].stVidStream.u16Height);
            sample_printf("     fps:          %d.%d \n",
                pstFileInfo->astProgramInfo[i].stVidStream.u16FpsInteger,
                pstFileInfo->astProgramInfo[i].stVidStream.u16FpsDecimal);
            sample_printf("     bps:          %d bits/s \n", pstFileInfo->astProgramInfo[i].stVidStream.u32Bps);
        }
        else
        {
            sample_printf("     video stream is null. \n");
        }

        for (j = 0; j < pstFileInfo->astProgramInfo[i].u32AudStreamNum; j++)
        {
            sample_printf("   audio %d info: \n", j);
            sample_printf("     stream idx:   %d \n", pstFileInfo->astProgramInfo[i].astAudStream[j].s32StreamIndex);
            sample_printf("     format:       %s \n", getAudFormatStr(pstFileInfo->astProgramInfo[i].astAudStream[j].u32Format));
            sample_printf("     version:      0x%x \n", pstFileInfo->astProgramInfo[i].astAudStream[j].u32Version);
            sample_printf("     samplerate:   %d Hz \n", pstFileInfo->astProgramInfo[i].astAudStream[j].u32SampleRate);
            sample_printf("     bitpersample: %d \n", pstFileInfo->astProgramInfo[i].astAudStream[j].u16BitPerSample);
            sample_printf("     channels:     %d \n", pstFileInfo->astProgramInfo[i].astAudStream[j].u16Channels);
            sample_printf("     bps:          %d bits/s \n", pstFileInfo->astProgramInfo[i].astAudStream[j].u32Bps);
            sample_printf("     lang:         %s \n", pstFileInfo->astProgramInfo[i].astAudStream[j].aszAudLang);
        }

        for (j = 0; j < pstFileInfo->astProgramInfo[i].u32SubTitleNum; j++)
        {
            sample_printf("   subtitle %d info: \n", j);
            sample_printf("     stream idx:     %d \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].s32StreamIndex);
            sample_printf("     sub data type:       %s \n", getSubFormatStr(pstFileInfo->astProgramInfo[i].astSubTitle[j].eSubtitileType));
            sample_printf("     be ext sub:     %d \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].bExtSubTitle);
            sample_printf("     sub  type:     %s \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].aszSubtType);
            sample_printf("     sub lang:       %s \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].aszSubTitleName);
            sample_printf("     original width: %d \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].u16OriginalFrameWidth);
            sample_printf("     original height:%d \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].u16OriginalFrameHeight);
            sample_printf("     sub code type:%d \n", pstFileInfo->astProgramInfo[i].astSubTitle[j].u32SubTitleCodeType);
        }
    }

    sample_printf("\n*************************************************\n\n");

    return HI_SUCCESS;
}

static HI_S32 parserSubFile(HI_CHAR *pargv, HI_SVR_PLAYER_MEDIA_S *pstMedia)
{
    HI_CHAR *p = NULL, *q = NULL;

    /* CNComment:解析外挂字幕 */
    p = pargv;

    while (NULL != p)
    {
        q = strchr(p, ',');

        if (NULL == q)
        {
            snprintf(pstMedia->aszSubTitle[pstMedia->u32SubTitileNum],
                    sizeof(pstMedia->aszSubTitle[pstMedia->u32SubTitileNum]),
                    "%s", p);
            pstMedia->u32SubTitileNum++;
            break;
        }
        else
        {
            memcpy(pstMedia->aszSubTitle[pstMedia->u32SubTitileNum], p, q - p);
            pstMedia->u32SubTitileNum++;
        }

        if (HI_FORMAT_MAX_LANG_NUM <= pstMedia->u32SubTitileNum)
        {
            break;
        }

        p = q + 1;
    }

    return HI_SUCCESS;
}

HI_S32 setAttr(HI_HANDLE hPlayer, HI_CHAR *pszCmd)
{
    HI_S32 s32Ret = 0;
    HI_HANDLE hdl= 0;
    HI_U32 u32Tmp = 0;
    HI_SVR_PLAYER_SYNC_ATTR_S stSyncAttr;
    HI_UNF_WINDOW_ATTR_S stWinAttr;
    HI_SVR_PLAYER_STREAMID_S stStreamId;

    if (NULL == pszCmd)
        return HI_FAILURE;

    if (0 == strncmp("sync", pszCmd, 4))
    {
        if (3 != sscanf(pszCmd, "sync %d %d %d",
            &stSyncAttr.s32VFrameOffset, &stSyncAttr.s32AFrameOffset, &stSyncAttr.s32SubTitleOffset))
        {
            sample_printf("ERR: input err, example: set sync vidptsadjust audptsadjust, subptsadjust! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_SVR_PLAYER_SetParam(hPlayer, HI_SVR_PLAYER_ATTR_SYNC, (HI_VOID*)&stSyncAttr);
    }
    else if (0 == strncmp("vol", pszCmd, 3))
    {
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_AVPLAYER_HDL, &hdl);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("ERR: get avplay hdl fail! \n");
            return HI_FAILURE;
        }

        if (1 != sscanf(pszCmd, "vol %d", &u32Tmp))
        {
            sample_printf("ERR: not input volume! \n");
            return HI_FAILURE;
        }

        //s32Ret = HI_UNF_SND_SetVolume(HI_UNF_SND_0, u32Tmp);
        s32Ret = HI_UNF_SND_SetMixWeight(HI_UNF_SND_0, hdl, u32Tmp);
    }
    else if (0 == strncmp("track", pszCmd, 5))
    {
        if (1 != sscanf(pszCmd, "track %d", &u32Tmp))
        {
            sample_printf("ERR: not input track mode! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, u32Tmp);
    }
    else if (0 == strncmp("mute", pszCmd, 4))
    {
        if (1 != sscanf(pszCmd, "mute %d", &u32Tmp))
        {
            sample_printf("ERR: not input mute val! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_UNF_SND_SetMute(HI_UNF_SND_0, u32Tmp);
    }
    else if (0 == strncmp("pos", pszCmd, 3))
    {
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_WINDOW_HDL, &hdl);
        s32Ret |= HI_UNF_VO_GetWindowAttr(hdl, &stWinAttr);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("ERR: get win attr fail! \n");
            return HI_FAILURE;
        }

        if (4 != sscanf(pszCmd, "pos %d %d %d %d",
            &stWinAttr.stOutputRect.s32X,
            &stWinAttr.stOutputRect.s32Y,
            &stWinAttr.stOutputRect.s32Width,
            &stWinAttr.stOutputRect.s32Height))
        {
            sample_printf("ERR: input err, example: set pos x y width height! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_UNF_VO_SetWindowAttr(hdl, &stWinAttr);
    }
    else if (0 == strncmp("aspect", pszCmd, 6))
    {
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_WINDOW_HDL, &hdl);
        s32Ret |= HI_UNF_VO_GetWindowAttr(hdl, &stWinAttr);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("ERR: get win attr fail! \n");
            return HI_FAILURE;
        }

        if (1 != sscanf(pszCmd, "aspect %d", &u32Tmp))
        {
            sample_printf("ERR: not input aspectration val! \n");
            return HI_FAILURE;
        }

        stWinAttr.enAspectRatio = (HI_UNF_ASPECT_RATIO_E)u32Tmp;
        s32Ret = HI_UNF_VO_SetWindowAttr(hdl, &stWinAttr);
    }
    else if (0 == strncmp("zorder", pszCmd, 6))
    {
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_WINDOW_HDL, &hdl);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("ERR: get win hdl fail! \n");
            return HI_FAILURE;
        }

        if (1 != sscanf(pszCmd, "zorder %d", &u32Tmp))
        {
            sample_printf("ERR: not input zorder val! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_UNF_VO_SetWindowZorder(hdl, u32Tmp);
    }
    else if (0 == strncmp("id", pszCmd, 2))
    {
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_STREAMID, (HI_VOID*)&stStreamId);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("ERR: get current stream id fail! \n");
            return HI_FAILURE;
        }

        if (4 != sscanf(pszCmd, "id %d %d %d %d",
            &stStreamId.u32ProgramId,
            &stStreamId.u32VStreamId,
            &stStreamId.u32AStreamId,
            &stStreamId.u32SubTitleId))
        {
            sample_printf("ERR: input err, example: set id 0 0 1 0, set id prgid videoid audioid subtitleid! \n");
            return HI_FAILURE;
        }

        s32Ret = HI_SVR_PLAYER_SetParam(hPlayer, HI_SVR_PLAYER_ATTR_STREAMID, (HI_VOID*)&stStreamId);

        HI_FORMAT_FILE_INFO_S stFileInfo = {0};
        s32Ret = HI_SVR_PLAYER_GetFileInfo(hPlayer, &stFileInfo);

        if (HI_SUCCESS == s32Ret)
        {
            if (stFileInfo.astProgramInfo[stStreamId.u32ProgramId].astSubTitle[stStreamId.u32SubTitleId].eSubtitileType ==
                HI_FORMAT_SUBTITLE_DATA_HDMV_PGS)
            {
                s_bPgs = HI_TRUE;
            }
            else
            {
                s_s64CurPgsClearTime = -1;
                s_bPgs = HI_FALSE;
            }
        }
    }
    else
    {
        sample_printf("ERR: not support commond! \n");
    }

    return HI_SUCCESS;
}

HI_S32 getAttr(HI_HANDLE hPlayer, HI_CHAR *pszCmd)
{
    HI_S32 s32Ret = 0;
    HI_S64 s64Tmp = 0;
    HI_CHAR cTmp[512];
    HI_FORMAT_BUFFER_CONFIG_S stBufConfig;
    HI_FORMAT_BUFFER_STATUS_S stBufStatus;

    if (NULL == pszCmd)
        return HI_FAILURE;

    if (0 == strncmp("bandwidth", pszCmd, 9))
    {
        s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_BANDWIDTH, (HI_VOID*)&s64Tmp);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("get bandwidth fail! \n");
            return HI_FAILURE;
        }

        sample_printf("get bandwidth is %lld bps\n", s64Tmp);
        sample_printf("get bandwidth is %lld K bps\n", s64Tmp/1024);
        sample_printf("get bandwidth is %lld KBps\n", s64Tmp/8192);
    }
    else if (0 == strncmp("bufferconfig", pszCmd, 12))
    {
        memset(&stBufConfig, 0, sizeof(HI_FORMAT_BUFFER_CONFIG_S));

        if (1 != sscanf(pszCmd, "bufferconfig %4s", cTmp))
        {
            sample_printf("ERR: not input bufferconfig type! \n");
            return HI_FAILURE;
        }

        if (0 == strncmp(cTmp, "size", 4))
        {
            stBufConfig.eType = HI_FORMAT_BUFFER_CONFIG_SIZE;
        }
        else if (0 == strncmp(cTmp, "time", 4))
        {
            stBufConfig.eType = HI_FORMAT_BUFFER_CONFIG_TIME;
        }
        else
        {
            sample_printf("ERR: do not know bufferconfig type(%s)! \n",cTmp);
            return HI_FAILURE;
        }

        s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_BUFFER_GETCONFIG, (HI_VOID*)&stBufConfig);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("get bufferconfig fail! \n");
            return HI_FAILURE;
        }
        sample_printf("BufferConfig:type(%d):%s\n",stBufConfig.eType, cTmp);
        sample_printf("s64EventStart:%lld\n", stBufConfig.s64EventStart);
        sample_printf("s64EventEnough:%lld\n", stBufConfig.s64EventEnough);
        sample_printf("s64Total:%lld\n", stBufConfig.s64Total);
        sample_printf("s64TimeOut:%lld\n", stBufConfig.s64TimeOut);
    }
    else if (0 == strncmp("bufferstatus", pszCmd, 12))
    {
        s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_BUFFER_STATUS, (HI_VOID*)&stBufStatus);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("get Buffer status fail! \n");
            return HI_FAILURE;
        }
        sample_printf("BufferStatus:\n");
        sample_printf("s64Duration:%lld ms\n", stBufStatus.s64Duration);
        sample_printf("s64Size:%lld bytes\n", stBufStatus.s64Size);
    }
    else
    {
        sample_printf("ERR: not support command! \n");
    }

    return HI_SUCCESS;
}

HI_S32 higoInit()
{
    HI_S32 s32Ret = 0;

    HIGO_LAYER_INFO_S stLayerInfo = {0};
	#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
	#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
	#endif
    s32Ret = HI_GO_Init();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("ERR: failed to init higo! ret = 0x%x !\n", s32Ret);
        return HI_FAILURE;
    }

    
	(HI_VOID)HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
#ifdef CHIP_TYPE_hi3110ev500
    stLayerInfo.CanvasWidth = 720;
	stLayerInfo.CanvasHeight = 576;
	stLayerInfo.DisplayWidth = 720;
	stLayerInfo.DisplayHeight = 576;
	stLayerInfo.ScreenWidth = 720;
	stLayerInfo.ScreenHeight = 576;
	stLayerInfo.PixelFormat = HIGO_PF_1555;
	stLayerInfo.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfo.LayerID = HIGO_LAYER_SD_0;
#else
	stLayerInfo.CanvasWidth = 1280;
    stLayerInfo.CanvasHeight = 720;
    stLayerInfo.DisplayWidth = 1280;
    stLayerInfo.DisplayHeight = 720;
    stLayerInfo.ScreenWidth = 1280;
    stLayerInfo.ScreenHeight = 720;
    stLayerInfo.PixelFormat = HIGO_PF_8888;

    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfo.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfo.LayerID = HIGO_LAYER_HD_0;
#endif
    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &s_hLayer);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("ERR: failed to create the layer sd 0, ret = 0x%x !\n", s32Ret);
        goto RET;
    }

    s32Ret =  HI_GO_GetLayerSurface(s_hLayer, &s_hLayerSurface);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("ERR: failed to get layer surface! s32Ret = 0x%x \n", s32Ret);
        goto RET;
    }

    (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);
    s32Ret = HI_GO_CreateText("./higo_gb2312.ubf", NULL,  &s_hFont);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("ERR: failed to create the font:./higo_gb2312.ubf !\n");
        goto RET;
    }

    s32Ret = HI_GO_SetInputCharSet(s_hFont,HIGO_CHARSET_UTF8);

    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("ERR: set charset to utf8 ret %#x\n", s32Ret);
    }

    (HI_VOID)HI_GO_SetTextColor(s_hFont, 0xffffffff);

    return HI_SUCCESS;

RET:
    return HI_FAILURE;
}

#include <sys/times.h>

#define SLEEP_TIME (10 * 1000)

static HI_S32 CheckPlayerStatus(HI_HANDLE hPlayer, HI_U32 u32Status, HI_U32 u32TimeOutMs)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_U32 u32Time = (HI_U32)times(NULL) * 10;
    HI_SVR_PLAYER_INFO_S stPlayerInfo;

    if (HI_SVR_PLAYER_STATE_BUTT <= u32Status)
    {
        return HI_FAILURE;
    }

    while (1)
    {
        s32Ret = HI_SVR_PLAYER_GetPlayerInfo(hPlayer, &stPlayerInfo);

        if (HI_SUCCESS == s32Ret && (HI_U32)stPlayerInfo.eStatus == u32Status)
        {
            return HI_SUCCESS;
        }

        if ((((HI_U32)times(NULL) * 10) - u32Time) >= u32TimeOutMs)
        {
            break;
        }

        usleep(SLEEP_TIME);
    }

    return HI_FAILURE;
}

static HI_S32 isSystemSuccessful(pid_t status)
{

    if (-1 == status)
    {
        sample_printf("\n---system error!!---");
        return -1;
    }

    sample_printf("\n---exit status value = [0x%x]---",status);

    if (WIFEXITED(status))
    {
        if (0 == WEXITSTATUS(status))
        {
            sample_printf("\n---run shell script successfully!!---");
            return 0;

        }
        else
        {
            sample_printf("\n---run shell script fail, script exit code: %d---",WEXITSTATUS(status));
            return -1;
        }
    }
    else
    {
        sample_printf("\n---exit status = [%d]---",WEXITSTATUS(status));
        return -1;
    }
}
static HI_S32 do_mountiso(HI_CHAR *arg)
{
    pid_t status;

    static HI_U32 loopNum = 0;

    const HI_CHAR * path = arg;
//    const HI_CHAR * fuser = "fuser -km /mnt/iso/";
    const HI_CHAR * umount = "umount -f /mnt/iso/";
    const HI_CHAR * mount = "mount -o loop";

    HI_CHAR buff[512] = {0};

    if (loopNum < 64)
    {
        HI_CHAR mknod[512]={0};

        snprintf(mknod, sizeof(mknod), "mknod /dev/loop%d b 7 %d",loopNum,loopNum);

        loopNum++;
        status = system(mknod);

        if (1 == loopNum)
        {
            snprintf(mknod, sizeof(mknod), "mknod /dev/loop%d b 7 %d",loopNum,loopNum);
            loopNum++;
            status = system(mknod);
        }

        if (isSystemSuccessful(status) != 0)
        {
            sample_printf("\n----mknod error! -----");
        }
    }
    /*
    status = system(fuser);
    if (isSystemSuccessful(status) != 0)
    {
        sample_printf("----fuser /mnt/iso error! -----");
    }
    sleep(1);*/
    status = system(umount);

    if (isSystemSuccessful(status) != 0)
    {
        sample_printf("----umount iso error! -----");
    }

    memset(buff,0,sizeof(buff));
    snprintf(buff, sizeof(buff), "%s %s %s", mount, path, "/mnt/iso");

    sample_printf("\n----mountiso buf -----=%s ",buff);

    status = system(buff);

    if (isSystemSuccessful(status) != 0)
    {
        sample_printf("\n----mount iso error! -----");
        return -errno;
    }

    return 0;
}

HI_VOID SetHlsInfo(HI_HANDLE hPlayer, HI_CHAR *pszCmd)
{
    if (NULL == pszCmd)
        return;
    if (0 == strncmp("track", pszCmd, 5))
    {
//        HI_SVR_HLS_STREAM_INFO_S stStreamInfo;
        HI_S32 s32HlsStreamNum = 0;
        (HI_VOID)HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_HLS_STREAM_NUM, &s32HlsStreamNum);

        HI_S32 s32Track = -1;
        if (1 != sscanf(pszCmd, "track %d",
             &s32Track))
        {
            sample_printf("ERR: input err, example: set hls track 0 \n");
            return;
        }
        if (s32Track >= s32HlsStreamNum || s32Track < -1)
        {
            sample_printf("ERR: track id must from -1 and to streamnum %d !\n", s32HlsStreamNum);
            return;
        }
        HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_HLS_STREAM, (HI_VOID*)s32Track);
    }
    else
    {
        sample_printf("ERR: not support commond1! \n");
    }
}

HI_S32 main(HI_S32 argc, HI_CHAR **argv)
{
    HI_S32 s32Ret = 0;
    HI_HANDLE hPlayer = (HI_HANDLE)NULL, hSo = (HI_HANDLE)NULL, hAVPlay = HI_SVR_PLAYER_INVALID_HDL;
    HI_FORMAT_FILE_INFO_S stFileInfo;
    HI_SVR_PLAYER_INFO_S stPlayerInfo;
    HI_SVR_PLAYER_STREAMID_S stStreamId;
    HI_SVR_PLAYER_MEDIA_S stMedia;
    HI_CHAR aszInputCmd[CMD_LEN];
    HI_FORMAT_BUFFER_CONFIG_S stBufConfig;

#if (USE_EXTERNAL_AVPLAY == 1)
    HI_UNF_AVPLAY_ATTR_S stAVPlayAttr;
    HI_UNF_WINDOW_ATTR_S stWinAttr;
    HI_HANDLE hWindow = HI_SVR_PLAYER_INVALID_HDL;
#endif

    HI_S32 i = 0;

    if (argc < 2)
    {
        sample_printf("Usage: sample_localplay file                               \n"
               "                                                           \n"
               "          ------- select operation -------                 \n"
               "                                                           \n"
               "  -s subtitlefile1,subtitlefile2,... : input subtitle file \n"
               "  --drm trans=1 mimetype=xx DrmPath=./pdrd,LocalStore=data.localstore\n"
               "  --drm InstallDrmEngine file.so \n"
               "  --hls_fast_start"
               "\n");
        return HI_FAILURE;
    }

    memset(&stMedia, 0, sizeof(stMedia));

    snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", argv[1]);
    HI_U32 uHlsStartMode = 0;
    for (i = 2; i < argc; i++)
    {
        if (!strcasecmp(argv[i], "-s"))
        {
            /* CNComment:指定外挂字幕 */
            parserSubFile(argv[i + 1], &stMedia);
            i += 1;
        }
#if defined (DRM_SUPPORT)
        else if (!strcasecmp(argv[i], "--drm"))
        {
            /*Perform DRM operation before play*/
            drm_get_handle();//initialize drm handle
            int j = i + 1;
            char buf[2048];
            int tmppos = 0;
            int tmpcatlen = 0;
            memset(buf, 0, 2048);
            for (; j < argc && j < i + 5; j++)
            {
                tmpcatlen = strlen(argv[j]);
                tmppos += tmpcatlen + 1;
                if (tmppos >= (2048 - 1))
                    break;
                strncat(buf, argv[j], tmpcatlen);
                strncat(buf, " ", 1);
            }
            drm_cmd(buf);
            i += 1;
        }
#endif
        else if (!strncasecmp(argv[i], "--hls_fast_start",
                strlen(argv[i]) > strlen("--hls_fast_start") ?
                strlen(argv[i]) : strlen("--hls_fast_start")))
        {
            uHlsStartMode = 1;
            sample_printf("hls start mode is %d", uHlsStartMode);
        }
    }

    // Gaplessplay function add code
    HI_S32 ifsuccess = 0;
    s32Ret = playM3U9Main(argv[1]);

    if (HI_SUCCESS == s32Ret)
    {
        memset(&(stMedia.aszUrl), 0, sizeof(stMedia.aszUrl));
        snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", "/data/01.m3u9");
        ifsuccess++;
    }
    else
    {
        memset(&stMedia, 0, sizeof(stMedia));
        snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", argv[1]);
        snprintf(s_aszUrl, sizeof(s_aszUrl), "%s", argv[1]);
    }

    if (!ifsuccess)
    {
        HI_CHAR *p = strrchr(stMedia.aszUrl,'.');

        if (NULL != p && !strcasecmp(strrchr(stMedia.aszUrl,'.'),".ISO"))
        {
            s32Ret = do_mountiso(stMedia.aszUrl);

            if (HI_SUCCESS != s32Ret)
            {
                return HI_FAILURE;
            }

            HI_CHAR *dir = "/mnt/iso/";
            s32Ret = playM3U9Main(dir);

            if (HI_SUCCESS == s32Ret)
            {
                memset(&(stMedia.aszUrl), 0, sizeof(stMedia.aszUrl));
                snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", "/data/01.m3u9");
                ifsuccess++;
            }

//            HI_CHAR tmp[HI_FORMAT_MAX_URL_LEN];

            if (HI_SUCCESS != s32Ret)    /*if get file dir doesn't success,change back to origin URL*/
            {
                memset(&(stMedia.aszUrl), 0, sizeof(stMedia.aszUrl));
                snprintf(stMedia.aszUrl, sizeof(stMedia.aszUrl), "%s", argv[1]);
            }
        }
    }

    ifsuccess = 0;

    /* CNComment:HiPlayer内部会将SO当做设备使用，device初始化时要将SO初始化，调用HI_UNF_SO_Init */
    s32Ret = deviceInit();
    higoInit();
	#ifdef CHIP_TYPE_hi3110ev500
    HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);
	#else
	HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);
	#endif
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("ERR: local file play, device init fail! \n");
        goto LEAVE;
    }

#if defined (CHARSET_SUPPORT)
    s32Ret = HI_CHARSET_Init();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: charset init failed \e[0m \n");
    }

    s32Ret = HI_CHARSET_RegisterDynamic("libhi_charset.so");

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: register charset libcharset.so fail, ret = 0x%x \e[0m \n", s32Ret);
    }
#endif

    /* CNComment:该段代码用于模拟从dvb ts播放模式切换到HiPlayer播放，将外部创建的avplay句柄传递给
       HiPlayer，HiPlayer内部不再创建新的avplay句柄。关闭该段代码，s_stParam.hAVPlayer
       属性值设置为HI_SVR_PLAYER_INVALID_HDL，HiPlayer内部自己创建avplay */

#if (USE_EXTERNAL_AVPLAY == 1)
    /* 使用外部创建的avplay句柄，该avplay必须已经绑定好window, sound设备，且需将window位置、大小设置好，
       sound音量大小设置好，HiPlayer内部对window,sound不做任何操作。
       1、dvb -> HiPlayer: 停止avplay，将avplay句柄付给s_stParam.hAVPlayer，调用HI_SVR_PLAYER_Create创建HiPlayer，
          HiPlayer会将avplay模式切换到想要的模式，并且会重新开关音视频通道；

       2、HiPlayer -> dvb: 调用HI_SVR_PLAYER_Destroy接口销毁HiPlayer，HiPlayer会关闭掉音视频通道，dvb需重新调用
          HI_UNF_AVPLAY_ChnOpen接口开启音视频通道；
    */

    s32Ret = HI_UNF_AVPLAY_GetDefaultConfig(&stAVPlayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    s32Ret |= HI_UNF_AVPLAY_Create(&stAVPlayAttr, &hAVPlay);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("create avplay fail! \n");
        hAVPlay = HI_SVR_PLAYER_INVALID_HDL;
    }
    else
    {
        s32Ret = HI_UNF_AVPLAY_ChnOpen(hAVPlay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        s32Ret |= HI_UNF_SND_Attach(HI_UNF_SND_0, hAVPlay, HI_UNF_SND_MIX_TYPE_MASTER, 100);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("attach sound device fail! \n");
        }
#ifdef CHIP_TYPE_hi3110ev500
		stWinAttr.enVo = HI_UNF_VO_SD0;
		stWinAttr.bVirtual = HI_FALSE;
		stWinAttr.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
		stWinAttr.enAspectCvrs	= HI_UNF_ASPECT_CVRS_IGNORE;
		stWinAttr.stInputRect.s32X = 0;
		stWinAttr.stInputRect.s32Y = 0;
		stWinAttr.stInputRect.s32Width	= 720;
		stWinAttr.stInputRect.s32Height = 576;
		stWinAttr.stOutputRect.s32X = 0;
		stWinAttr.stOutputRect.s32Y = 0;
		stWinAttr.stOutputRect.s32Width  = 720;
		stWinAttr.stOutputRect.s32Height = 576;
#else
		stWinAttr.enVo = HI_UNF_VO_HD0;
		stWinAttr.bVirtual = HI_FALSE;
		stWinAttr.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
		stWinAttr.enAspectCvrs	= HI_UNF_ASPECT_CVRS_IGNORE;
		stWinAttr.stInputRect.s32X = 0;
		stWinAttr.stInputRect.s32Y = 0;
		stWinAttr.stInputRect.s32Width	= 1920;
		stWinAttr.stInputRect.s32Height = 1080;
		stWinAttr.stOutputRect.s32X = 0;
		stWinAttr.stOutputRect.s32Y = 0;
		stWinAttr.stOutputRect.s32Width  = 1920;
		stWinAttr.stOutputRect.s32Height = 1080;
#endif
        s32Ret = HI_UNF_VO_CreateWindow(&stWinAttr, &hWindow);
        s_hWindow = hWindow;

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("create window fail! \n");
        }

        s32Ret = HI_UNF_AVPLAY_ChnOpen(hAVPlay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("open vid channel failed.\n");
        }

        s32Ret = HI_UNF_VO_AttachWindow(hWindow, hAVPlay);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("attach window failed.\n");
        }

        s32Ret = HI_UNF_VO_SetWindowEnable(hWindow, HI_TRUE);

        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("enable window failed.\n");
        }
    }

#else
    /* CNComment:不使用外部创建的avplay句柄，HiPlayer负责创建avplay */

    hAVPlay = HI_SVR_PLAYER_INVALID_HDL;
#endif

    s32Ret = HI_SVR_PLAYER_Init();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: player init fail, ret = 0x%x \e[0m \n", s32Ret);
        goto LEAVE;
    }

    HI_SVR_PLAYER_EnableDbg(HI_TRUE);
    /* CNComment:注册私有协议 */
    s32Ret = HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libprivateprotocol.so");

    if (HI_SUCCESS != s32Ret)
    {
       // sample_printf("\e[31m ERR: register file parser libprivateprotocol.so fail, ret = 0x%x \e[0m \n", s32Ret);
    }

    /* CNComment:注册文件解析器 */
    s32Ret = HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libformat.so");
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: register file parser libformat.so fail, ret = 0x%x \e[0m \n", s32Ret);
    }
#if 0
    HI_SYS_VERSION_S attr;
    memset(&attr, 0, sizeof(HI_SYS_VERSION_S));
    HI_CHIP_TYPE_E board_type = HI_CHIP_TYPE_HI3716C;
    if(HI_SUCCESS == HI_SYS_GetVersion(&attr))
    {
        board_type = attr.enChipTypeSoft;
    }
    sample_printf("board_type is , %d\n", board_type);
    /* CNComment:libbdformat.so which dmx bluray by hardware is special for 3716M */
    if (HI_CHIP_TYPE_HI3716M == board_type)
    {
        s32Ret = HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libbdformat.so");
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("\e[31m ERR: register file parser libbdformat.so fail, ret = 0x%x \e[0m \n", s32Ret);
        }
    }
#endif

    (HI_VOID)HI_SVR_PLAYER_RegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, "libffmpegformat.so");

    /* CNComment:创建一个播放器实例 */

    s_stParam.hAVPlayer = hAVPlay;
    s_stParam.hDRMClient = 0;
#if defined (DRM_SUPPORT)
    s_stParam.hDRMClient = (HI_HANDLE)drm_get_handle();
    sample_printf("drm handle created!\n");
#endif

    s32Ret = HI_SVR_PLAYER_Create(&s_stParam, &hPlayer);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: player open fail, ret = 0x%x \e[0m \n", s32Ret);
        goto LEAVE;
    }
#if defined(CHIP_TYPE_hi3716mv330)
    HI_BOOL bUseLittleESBuffer = HI_FALSE;
#else
    HI_BOOL bUseLittleESBuffer = HI_FALSE;
#endif
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_LITTLE_VIDES_BUFFER, &bUseLittleESBuffer);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_FORMAT_INVOKE_SET_LITTLE_VIDES_BUFFER failed\e[0m \n");
    }
    
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_LOG_LEVEL, (HI_VOID*)HI_FORMAT_LOG_QUITE);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_FORMAT_INVOKE_SET_LOG_LEVEL failed\e[0m \n");
    }
    
#if defined (CHARSET_SUPPORT)
    HI_S32 s32CodeType = HI_CHARSET_CODETYPE_UTF8;
    extern HI_CHARSET_FUN_S g_stCharsetMgr_s;

    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_CHARSETMGR_FUNC, &g_stCharsetMgr_s);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: \e[31m HI_SVR_PLAYER_Invoke set charsetMgr failed \e[0m \n");
    }

    /* CNComment:将字幕转换成utf8编码，subOndraw输出必须使用utf8字符集 */
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_DEST_CODETYPE, &s32CodeType);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke Send Dest CodeType failed \e[0m \n");
    }
#endif

    HI_U32 u32TplayMode = HI_SVR_PLAYER_TPLAY_MODE_SMOOTH;
    sample_printf("\e[31m ERR: setting tplay mode :%d \e[0m \n", u32TplayMode);
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_TPLAY_MODE, &u32TplayMode);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke set Tplay mode failed \e[0m \n");
    }

    s32Ret = HI_SVR_PLAYER_RegCallback(hPlayer, eventCallBack);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: register event callback function fail, ret = 0x%x \e[0m \n", s32Ret);
    }

#if 1
    /* CNComment:配置缓冲最大峰值，当音视频文件，只收到视频帧时，如果超出该值，将会继续播放,可不配置,默认为:10M bytes */
    HI_S64 s64MaxSize = 10*1024*1024;  /* 10M bytes */

    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_BUFFER_SET_MAX_SIZE, &s64MaxSize);

    if (HI_SUCCESS != s32Ret)
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke set buffer peak size fail, ret = 0x%x \e[0m \n", s32Ret);
    else
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke set buffer peak size success! \e[0m \n");
#endif

#if 1
    /* CNComment:初始化缓冲buffer配置 */
    stBufConfig.eType = HI_FORMAT_BUFFER_CONFIG_TIME;
    stBufConfig.s64EventEnough = 3000;   /* 3 sec */
    stBufConfig.s64EventStart  = 500;      /* 500ms */
    stBufConfig.s64TimeOut     = 10000;         /* 10 sec */
    stBufConfig.s64Total       = 12000;   /* 12 sec */
#else
    stBufConfig.eType = HI_FORMAT_BUFFER_CONFIG_TIME;
    stBufConfig.s64EventEnough = 30*1000;   /* 50 sec */
    stBufConfig.s64EventStart  = 200;      /* 200 ms */
    stBufConfig.s64TimeOut     = 10000;         /* 10 sec */
    stBufConfig.s64Total       = 40*1000;   /* 60 sec */
#endif

    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_BUFFER_SETCONFIG, &stBufConfig);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke setBuffer Config function fail, ret = 0x%x \e[0m \n", s32Ret);
    }
    // fast start hls
    if (1 == uHlsStartMode)
        HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_HLS_START_MODE, (HI_VOID*)HI_FORMAT_HLS_MODE_FAST);

    stMedia.u32UserData = 0;
    /* CNComment:设置播放模式 HI_SVR_PLAYER_PLAYMODE_NORMAL, HI_SVR_PLAYER_PLAYMODE_PRELOAD*/
    stMedia.s32PlayMode = HI_SVR_PLAYER_PLAYMODE_PRELOAD;

    s32Ret = HI_SVR_PLAYER_SetMedia(hPlayer, HI_SVR_PLAYER_MEDIA_STREAMFILE, &stMedia);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: open file fail, ret = 0x%x! \e[0m \n", s32Ret);
        goto LEAVE;
    }
    /* Begin: get hls stream info */

    HI_S32 s32HlsStreamNum = 0;
    HI_SVR_HLS_STREAM_INFO_S stStreamInfo;
//    HI_S32 s32SelectStreamNum = 0;
//    HI_S64 s64SelectBandWidth = -1;

    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_HLS_STREAM_NUM, &s32HlsStreamNum);

    if (HI_SUCCESS != s32Ret)
        sample_printf("\e[31m ERR: get hls stream num fail, ret = 0x%x! \e[0m \n", s32Ret);
    else
        sample_printf("\e[31m get hls stream num = %d \e[0m \n", s32HlsStreamNum);

    for (i = 0; i < s32HlsStreamNum; i++)
    {
        stStreamInfo.stream_nb = i;
        s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_HLS_STREAM_INFO, &stStreamInfo);

        if (HI_SUCCESS != s32Ret)
            sample_printf("\e[31m ERR: get %d hls stream info fail, ret = 0x%x! \e[0m \n", i, s32Ret);

        #if 0
        if (-1 == s64SelectBandWidth)
        {
            s64SelectBandWidth = stStreamInfo.bandwidth;
            s32SelectStreamNum = i;
        }
        else
        {
            /* select min bandwidth stream */
            if (stStreamInfo.bandwidth < s64SelectBandWidth)
            {
                s64SelectBandWidth = stStreamInfo.bandwidth;
                s32SelectStreamNum = i;
            }
        }
        #endif
        sample_printf("\nHls stream number is: %d \n", stStreamInfo.stream_nb);
        sample_printf("URL: %s \n", stStreamInfo.url);
        sample_printf("BandWidth: %lld \n", stStreamInfo.bandwidth);
        sample_printf("SegMentNum: %d \n", stStreamInfo.hls_segment_nb);
    }

    #if 0
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_HLS_STREAM, s32SelectStreamNum);

    if (HI_SUCCESS != s32Ret)
        sample_printf("\e[31m ERR: select stream num fail, ret = 0x%x! \e[0m \n", s32Ret);
    else
        sample_printf("\e[31m select hls stream num success \e[0m \n");

    /* set hls stream end */
    #endif
    HI_SVR_PLAYER_METADATA_S stMetaData;

    memset(&stMetaData, 0, sizeof(HI_SVR_PLAYER_METADATA_S));

    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_METADATA, &stMetaData);

    if (HI_SUCCESS != s32Ret)
        sample_printf("\e[31m ERR: get metadata fail! \e[0m \n");
    else
        sample_printf("\e[31m get metadata success! \e[0m \n");

    /*Check drm status*/
#if defined (DRM_SUPPORT)
    HI_CHAR* pszDrmMimeType = NULL;
    for (i = 0; i < stMetaData.u32KvpUsedNum; i++)
    {
        if (!strcasecmp(stMetaData.pstKvp[i].pszKey, "DRM_MIME_TYPE"))
        {
            pszDrmMimeType = (HI_CHAR*)stMetaData.pstKvp[i].unValue.pszValue;
            break;
        }
    }
    if (pszDrmMimeType)
    {
        /*DRM opened, check DRM right status*/
        s32Ret = drm_check_right_status(stMedia.aszUrl, pszDrmMimeType);
        while (s32Ret > 0)
        {
            s32Ret = drm_acquire_right_progress(pszDrmMimeType);
            if (s32Ret == 100)
            {
                sample_printf("acquiring right done\n");
                break;
            }
            sample_printf("acquiring right progress:%d%%\n", s32Ret);
            sleep(1);
        }
        if (s32Ret < 0)
        {
            sample_printf("DRM right invalid, can't play this file, exit now!\n");
            exit(0);
        }
    }
#endif

    /* CNComment:获取缓冲配置 */
    memset(&stBufConfig, 0, sizeof(HI_FORMAT_BUFFER_CONFIG_S));
    stBufConfig.eType = HI_FORMAT_BUFFER_CONFIG_SIZE;
    s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_BUFFER_GETCONFIG, &stBufConfig);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: HI_SVR_PLAYER_Invoke function fail, ret = 0x%x \e[0m \n", s32Ret);
    }

    sample_printf("BufferConfig:type(%d)\n",stBufConfig.eType);
    sample_printf("s64EventStart:%lld\n", stBufConfig.s64EventStart);
    sample_printf("s64EventEnough:%lld\n", stBufConfig.s64EventEnough);
    sample_printf("s64Total:%lld\n", stBufConfig.s64Total);
    sample_printf("s64TimeOut:%lld\n", stBufConfig.s64TimeOut);

    memset(&stFileInfo, 0, sizeof(stFileInfo));
    s32Ret = HI_SVR_PLAYER_GetFileInfo(hPlayer, &stFileInfo);

    if (HI_SUCCESS == s32Ret)
    {
        outFileInfo(&stFileInfo);
        HI_SVR_PLAYER_STREAMID_S stStreamId = {0};
        s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_STREAMID, (HI_VOID*)&stStreamId);

        if (HI_SUCCESS == s32Ret && stStreamId.u32ProgramId < HI_FORMAT_MAX_PROGRAM_NUM && stStreamId.u32SubTitleId < HI_FORMAT_MAX_LANG_NUM)
        {
            if (stFileInfo.astProgramInfo[stStreamId.u32ProgramId].astSubTitle[stStreamId.u32SubTitleId].eSubtitileType ==
                HI_FORMAT_SUBTITLE_DATA_HDMV_PGS)
            {
                s_bPgs = HI_TRUE;
            }
            else
            {
                s_s64CurPgsClearTime = -1;
                s_bPgs = HI_FALSE;
            }
        }
    }
    else
    {
        sample_printf("\e[31m ERR: get file info fail! \e[0m \n");
    }

    /*test invoke */
    TEST_PROTOCOL_ARGS stArgs;
//    HI_S32 filesize= 100;
    stArgs.s32Cmd = TEST_CMD_TYPE_CALLBACK;
    stArgs.args = 0;
    stArgs.pfnCallback = TestCallBack;

    s32Ret |= HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_PROTOCOL_USER, &stArgs);

    /* CNComment:setmedia后需重新设置字幕回调函数 */
    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_SO_HDL, &hSo);
    s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_AVPLAYER_HDL, &hAVPlay);
    s32Ret |= HI_UNF_SO_RegOnDrawCb(hSo, subOndraw, subOnclear, hAVPlay);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("\e[31m ERR: set subtitle draw function fail! \e[0m \n");
    }

    //sample_printf(HELP_INFO);

    //for hls test,comment the auto play
    s32Ret = HI_SVR_PLAYER_Play(hPlayer);

    //if (HI_SUCCESS != s32Ret)
    //    sample_printf("\e[31m ERR: play fail, ret = 0x%x \e[0m \n", s32Ret);
    while (1)
    {
        memset(aszInputCmd, 0, CMD_LEN);
        fgets(aszInputCmd, CMD_LEN, stdin);

        sample_printf(">>> [input cmd] %s \n", aszInputCmd);

        if ('h' == aszInputCmd[0])
        {
            sample_printf(HELP_INFO);
        }
        else if (0 == strncmp("play", aszInputCmd, 4))
        {
            s32Ret = HI_SVR_PLAYER_Play(hPlayer);

            #if 0
            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: play fail, ret = 0x%x \e[0m \n", s32Ret);

            if (0 != s32HlsStreamNum)
            {
                usleep(500 * 1000);

                /* resume auto select bandwidth */
                s32SelectStreamNum = -1;
                s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_HLS_STREAM, s32SelectStreamNum);

                if (HI_SUCCESS != s32Ret)
                    sample_printf("\e[31m ERR: set auto select hls stream fail, ret = 0x%x \e[0m \n", s32Ret);
            }
            #endif
        }
        else if (0 == strncmp("pause", aszInputCmd, 5))
        {
            s32Ret = HI_SVR_PLAYER_Pause(hPlayer);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: pause fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else if (0 == strncmp("seek", aszInputCmd, 4))
        {
            HI_U32 u32SeekTime = 0;

            if (1 != sscanf(aszInputCmd, "seek %d", &u32SeekTime))
            {
                sample_printf("\e[31m ERR: not input seek time, example: seek 8000! \e[0m \n");
                continue;
            }
            clearSubtitle();
            s32Ret = HI_SVR_PLAYER_Seek(hPlayer, u32SeekTime);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: seek fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else if(0 == strncmp("posseek",aszInputCmd,7))
        {
            HI_S64 s64SeekPos = 0;
            if (1 != sscanf(aszInputCmd, "posseek %lld", &s64SeekPos))
            {
                sample_printf("\e[31m ERR: not input seek position, example: pos 8000! \e[0m \n");
                continue;
            }

            s32Ret = HI_SVR_PLAYER_SeekPos(hPlayer, s64SeekPos);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: seek pos fail, ret = 0x%x \e[0m \n", s32Ret);


        }
        else if (0 == strncmp("metadata", aszInputCmd, 8))
        {
            HI_SVR_PLAYER_METADATA_S *pstMetadata = NULL;

            pstMetadata = HI_SVR_META_Create();

            s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_GET_METADATA, pstMetadata);

            if (HI_FAILURE == s32Ret)
            {
                sample_printf("Get Metadata fail!\n");
                continue;
            }

            HI_SVR_META_PRINT(pstMetadata);
            HI_SVR_META_Free(&pstMetadata);
        }
        else if (0 == strncmp("stop", aszInputCmd, 4))
        {
            s32Ret = HI_SVR_PLAYER_Stop(hPlayer);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: stop fail, ret = 0x%x \e[0m \n", s32Ret);
            else
                clearSubtitle();
        }
        else if (0 == strncmp("resume", aszInputCmd, 6))
        {
            s32Ret = HI_SVR_PLAYER_Resume(hPlayer);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: resume fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else if (0 == strncmp("bw", aszInputCmd, 2))
        {
            HI_S32 s32Speed = 0;

            if (1 != sscanf(aszInputCmd, "bw %d", &s32Speed))
            {
                sample_printf("\e[31m ERR: not input tplay speed, example: bw 2! \e[0m \n");
                continue;
            }

            s32Speed *= HI_SVR_PLAYER_PLAY_SPEED_NORMAL;

            if (s32Speed > HI_SVR_PLAYER_PLAY_SPEED_64X_FAST_FORWARD)
            {
                sample_printf("\e[31m ERR: not support tplay speed! \e[0m \n");
                continue;
            }

            s32Speed = 0 - s32Speed;

            sample_printf("backward speed = %d \n", s32Speed);

            s32Ret = HI_SVR_PLAYER_TPlay(hPlayer, s32Speed);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: tplay fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else if (0 == strncmp("ff", aszInputCmd, 2))
        {
            HI_S32 s32Speed = 0;

            if (1 != sscanf(aszInputCmd, "ff %d", &s32Speed))
            {
                sample_printf("\e[31m ERR: not input tplay speed, example: ff 4! \e[0m \n");
                continue;
            }

            s32Speed *= HI_SVR_PLAYER_PLAY_SPEED_NORMAL;

            if (s32Speed > HI_SVR_PLAYER_PLAY_SPEED_64X_FAST_FORWARD)
            {
                sample_printf("\e[31m ERR: not support tplay speed! \e[0m  \n");
                continue;
            }

            sample_printf("forward speed = %d \n", s32Speed);

            s32Ret = HI_SVR_PLAYER_TPlay(hPlayer, s32Speed);

            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: tplay fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else if (0 == strncmp("info", aszInputCmd, 4))
        {
            /* CNComment:查看播放信息 */

            s32Ret = HI_SVR_PLAYER_GetPlayerInfo(hPlayer, &stPlayerInfo);

            if (HI_SUCCESS != s32Ret)
            {
                sample_printf("\e[31m ERR: HI_SVR_PLAYER_GetPlayerInfo fail! \e[0m\n");
                continue;
            }

            sample_printf("PLAYER INFO: \n");
            sample_printf("  Cur progress:   %d \n", stPlayerInfo.u32Progress);
            sample_printf("  Time played:  %lld:%lld:%lld, Total time: %lld:%lld:%lld \n",
                stPlayerInfo.u64TimePlayed / (1000 * 3600),
                (stPlayerInfo.u64TimePlayed % (1000 * 3600)) / (1000 * 60),
                ((stPlayerInfo.u64TimePlayed % (1000 * 3600)) % (1000 * 60)) / 1000,
                stFileInfo.s64Duration / (1000 * 3600),
                (stFileInfo.s64Duration % (1000 * 3600)) / (1000 * 60),
                ((stFileInfo.s64Duration % (1000 * 3600)) % (1000 * 60)) / 1000);
            sample_printf("  Speed:          %d \n", stPlayerInfo.s32Speed);
            sample_printf("  Status:         %d \n", stPlayerInfo.eStatus);

            s32Ret = HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_STREAMID, (HI_VOID*)&stStreamId);
            sample_printf("  StreamId: program id(%d), video id(%d), audio id(%d), subtitle id(%d) \n",
                stStreamId.u32ProgramId, stStreamId.u32VStreamId, stStreamId.u32AStreamId, stStreamId.u32SubTitleId);
        }
        else if (0 == strncmp("set ", aszInputCmd, 4))
        {
            /* CNComment:设置HiPlayer属性 */

            setAttr(hPlayer, aszInputCmd + 4);
        }
        else if (0 == strncmp("get ", aszInputCmd, 4))
        {
            /* CNComment:设置HiPlayer属性 */

            getAttr(hPlayer, aszInputCmd + 4);
        }
        else if (0 == strncmp("dbg", aszInputCmd, 3))
        {
            /* CNComment:开启HiPlayer内部打印日志 */

            HI_S32 s32Dbg = 0;

            if (1 != sscanf(aszInputCmd, "dbg %d", &s32Dbg))
            {
                sample_printf("\e[31m ERR: not dbg enable balue, example: dbg 1! \e[0m\n");
                continue;
            }

            HI_SVR_PLAYER_EnableDbg(s32Dbg);
        }
        else if (0 == strncmp("open", aszInputCmd, 4))
        {
            /* CNComment:重新打开一个文件播放 */

            s32Ret = HI_SUCCESS;
            (HI_VOID)HI_GO_FillRect(s_hLayerSurface, NULL, 0x00000000, HIGO_COMPOPT_NONE);
            (HI_VOID)HI_GO_RefreshLayer(s_hLayer, NULL);

            memset(&stMedia, 0, sizeof(stMedia));
            memcpy(stMedia.aszUrl, aszInputCmd + 5, strlen(aszInputCmd + 5) - 1);
            stMedia.u32SubTitileNum = 0;

            sample_printf("### open media file is %s \n", stMedia.aszUrl);

            s32Ret = HI_SVR_PLAYER_SetMedia(hPlayer, HI_SVR_PLAYER_MEDIA_STREAMFILE, &stMedia);

            if (HI_SUCCESS != s32Ret)
            {
                sample_printf("\e[31m ERR: HI_SVR_PLAYER_SetMedia err, ret = 0x%x! \e[0m\n", s32Ret);
                continue;
            }

            memset(&stFileInfo, 0, sizeof(stFileInfo));
            s32Ret = HI_SVR_PLAYER_GetFileInfo(hPlayer, &stFileInfo);

            if (HI_SUCCESS == s32Ret)
            {
                outFileInfo(&stFileInfo);
            }
            else
            {
                sample_printf("\e[31m ERR: get file info fail! \e[0m\n");
            }

            /* CNComment:setmedia后需重新设置字幕回调函数 */

            s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_SO_HDL, &hSo);
            s32Ret |= HI_SVR_PLAYER_GetParam(hPlayer, HI_SVR_PLAYER_ATTR_AVPLAYER_HDL, &hAVPlay);
            s32Ret |= HI_UNF_SO_RegOnDrawCb(hSo, subOndraw, subOnclear, hAVPlay);

            if (HI_SUCCESS != s32Ret)
            {
                sample_printf("\e[31m ERR: set subtitle draw function fail! \e[0m\n");
            }
        }
        else if (0 == strncmp("q", aszInputCmd, 1))
        {
            if (s_s32ThreadEnd == HI_FAILURE)
            {
                s_s32ThreadExit = HI_SUCCESS;
                HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_PRE_CLOSE_FILE, NULL);
                pthread_join(s_hThread, NULL);
            }
            break;
        }
        else if (0 == strncmp("sethls ", aszInputCmd, 7))
        {
            SetHlsInfo(hPlayer, aszInputCmd + 7);
        }

#if defined (DRM_SUPPORT)
        else if (0 == strncmp("drm", aszInputCmd, 3))
        {
            drm_cmd(aszInputCmd + 4);
        }
#endif
        else if (0 == strncmp("setloglevel", aszInputCmd, 6))
        {
            HI_U32 u32LogLevel = HI_FORMAT_LOG_QUITE;

            if (1 != sscanf(aszInputCmd, "setloglevel %d", &u32LogLevel))
            {
                sample_printf("\e[31m ERR: not input log level, example: setloglevel 2! (0:quiet, 1:fatal, 2:error, 3:warning, 4:info, 5:debug) \e[0m \n");
                continue;
            }

            s32Ret = HI_SVR_PLAYER_Invoke(hPlayer, HI_FORMAT_INVOKE_SET_LOG_LEVEL, (HI_VOID*)u32LogLevel);
            if (HI_SUCCESS != s32Ret)
                sample_printf("\e[31m ERR: setloglevel fail, ret = 0x%x \e[0m \n", s32Ret);
        }
        else
        {
            sample_printf("\e[31m ERR: not support operation! \e[0m\n");
        }
    }

LEAVE:
    s32Ret = HI_SVR_PLAYER_Destroy(hPlayer);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_SVR_PLAYER_Destroy err! \n");
    }

    s32Ret = HI_SVR_PLAYER_UnRegisterDynamic(HI_SVR_PLAYER_DLL_PARSER, NULL);

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_SVR_PLAYER_UnRegisterDynamic err! \n");
    }

    /* CNComment:调用deinit前，必须先调用HI_SVR_PLAYER_Destroy释放掉播放器资源 */

    s32Ret = HI_SVR_PLAYER_Deinit();

    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("### HI_SVR_PLAYER_Deinit err! \n");
    }

    if (NULL != s_pstParseHand)
    {
        HI_SO_SUBTITLE_ASS_DeinitParseHand(s_pstParseHand);
        s_pstParseHand = NULL;
    }

#if defined (CHARSET_SUPPORT)
    HI_CHARSET_Deinit();
#endif

    if (HI_SVR_PLAYER_INVALID_HDL != hAVPlay)
    {
        /* CNComment:HiPlayer -> dvb，重新开启音视频通道 */

        s32Ret = HI_UNF_AVPLAY_ChnOpen(hAVPlay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        s32Ret = HI_UNF_AVPLAY_ChnOpen(hAVPlay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    }

    if (HIGO_INVALID_HANDLE != s_hLayer)
    {
        HI_GO_DestroyLayer(s_hLayer);
        s_hLayer = HIGO_INVALID_HANDLE;
    }

    if (HIGO_INVALID_HANDLE != s_hFont)
    {
        HI_GO_DestroyText(s_hFont);
        s_hFont = HIGO_INVALID_HANDLE;
    }

    s_hLayerSurface = HIGO_INVALID_HANDLE;

    (HI_VOID)HI_GO_Deinit();
    deviceDeinit();

#if defined (DRM_SUPPORT)
    drm_clear_handle();
#endif
    return HI_SUCCESS;
}

