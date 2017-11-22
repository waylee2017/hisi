#include <string.h>
#include <sys/time.h>

#include "hi_unf_demux.h"
#include "hi_unf_avplay.h"
#include "hi_unf_common.h"
#include "hi_unf_vo.h"
#include "hi_unf_sound.h"
#include "hi_common.h"
#include "hi_unf_ecs.h"
#include "hi_unf_disp.h"
#include "hi_unf_hdmi.h"
#include "hi_audio_codec.h"
//#include "hi_unf_sio.h"

#include "hi_adp_mpi.h"
#include "hi_adp.h"
#include "hi_adp_data.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"

#include "HA.AUDIO.G711.codec.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "HA.AUDIO.AMRWB.codec.h"
//#include "HA.AUDIO.TRUEHDPASSTHROUGH.decode.h"
#include "HA.AUDIO.DTSHD.decode.h"
#if defined (DOLBYPLUS_HACODEC_SUPPORT)
 #include "HA.AUDIO.DOLBYPLUS.decode.h"
#endif
#include "HA.AUDIO.AC3PASSTHROUGH.decode.h"

 #include "HA.AUDIO.DTSPASSTHROUGH.decode.h"
#include "HA.AUDIO.FFMPEG_DECODE.decode.h"
#include "HA.AUDIO.AAC.encode.h"

#define MPI_DEMUX_NUM 5
#define MPI_DEMUX_PLAY 0
#define MPI_DEMUX_REC_0 1
#define MPI_DEMUX_REC_1 2
#define MPI_DEMUX_TIMETHIFT 3
#define MPI_DEMUX_PLAYBACK 4

HI_U8 u8DecOpenBuf[1024];
HI_U8 u8EncOpenBuf[1024];

static HI_CHAR *g_pDispFmtString[HI_UNF_ENC_FMT_BUTT+1] = {
    "1080P_60","1080P_50","1080P_30","1080P_25",
    "1080P_24","1080i_60","1080i_50",        
    "720P_60","720P_50","576P_50","480P_60",         
    "PAL","PAL_N","PAL_Nc",          
    "NTSC","NTSC_J","NTSC_PAL_M",      
    "SECAM_SIN","SECAM_COS",
    "BUTT"};

#if defined (DOLBYPLUS_HACODEC_SUPPORT)

DOLBYPLUS_STREAM_INFO_S g_stDDpStreamInfo;

/*dolby Dual Mono type control*/
HI_U32  g_u32DolbyAcmod = 0;
HI_BOOL g_bDrawChnBar = HI_TRUE;

#endif

/************************************DISPLAY Common Interface*******************************/
HI_S32 HIADP_Disp_StrToFmt(HI_CHAR *pszFmt)
{
    HI_S32 i;
    HI_UNF_ENC_FMT_E fmtReturn = HI_UNF_ENC_FMT_BUTT;

    if (NULL == pszFmt)
    {
        return HI_UNF_ENC_FMT_BUTT;
    }

    for (i = 0; i < HI_UNF_ENC_FMT_BUTT; i++)
    {
        if (strcasestr(pszFmt, g_pDispFmtString[i]))
        {
            fmtReturn = i;        
            break;
        }
    }

    if (i >= HI_UNF_ENC_FMT_BUTT)
    {
        i = HI_UNF_ENC_FMT_720P_50;
        fmtReturn = i;   
        printf("\n!!! Can NOT match format, set format to is '%s'/%d.\n\n", g_pDispFmtString[i], i);
    }
    else
    {
        printf("\n!!! The format is '%s'/%d.\n\n", g_pDispFmtString[i], i);
    }
    
    return fmtReturn;
}


HI_S32 HIADP_Disp_Init(HI_UNF_ENC_FMT_E enFormat)
{
    HI_S32                  Ret;
    HI_UNF_DISP_BG_COLOR_S      BgColor;
    HI_UNF_DISP_INTERFACE_S     DacMode;

    Ret = HI_UNF_DISP_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Init failed.\n");
        return Ret;
    }

    BgColor.u8Red = 0;
    BgColor.u8Green = 0;
    BgColor.u8Blue = 0;
#ifndef CHIP_TYPE_hi3110ev500    
    HI_UNF_DISP_SetBgColor(HI_UNF_DISP_SD0, &BgColor); 
    HI_UNF_DISP_SetBgColor(HI_UNF_DISP_HD0, &BgColor);
    
    HI_UNF_DISP_SetIntfType(HI_UNF_DISP_HD0, HI_UNF_DISP_INTF_TYPE_TV);
    HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, enFormat);  

    if ((HI_UNF_ENC_FMT_1080P_60 == enFormat)
        ||(HI_UNF_ENC_FMT_1080i_60 == enFormat)
        ||(HI_UNF_ENC_FMT_720P_60 == enFormat)
        ||(HI_UNF_ENC_FMT_480P_60 == enFormat))
    {
        Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, HI_UNF_ENC_FMT_NTSC);
        if (HI_SUCCESS != Ret)
        {
            printf("call HI_UNF_DISP_SetFormat failed.\n");
            HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
            HI_UNF_DISP_DeInit();
            return Ret;
        }
    }

    if ((HI_UNF_ENC_FMT_1080P_50 == enFormat)
        ||(HI_UNF_ENC_FMT_1080i_50 == enFormat)
        ||(HI_UNF_ENC_FMT_720P_50 == enFormat)
        ||(HI_UNF_ENC_FMT_576P_50 == enFormat))
    {
        Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, HI_UNF_ENC_FMT_PAL);
        if (HI_SUCCESS != Ret)
        {
            printf("call HI_UNF_DISP_SetFormat failed.\n");
            HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
            HI_UNF_DISP_DeInit();
            return Ret;
        }
    }

    DacMode.bScartEnable = HI_FALSE;
    DacMode.bBt1120Enable = HI_FALSE;
    DacMode.bBt656Enable = HI_FALSE;
#ifdef	HI_DAC_YPBPR_SUPPORT
        DacMode.enDacMode[HI_DAC_YPBPR_Y]  = HI_UNF_DISP_DAC_MODE_HD_Y;
        DacMode.enDacMode[HI_DAC_YPBPR_PB] = HI_UNF_DISP_DAC_MODE_HD_PB;
        DacMode.enDacMode[HI_DAC_YPBPR_PR] = HI_UNF_DISP_DAC_MODE_HD_PR;
        DacMode.enDacMode[HI_DAC_CVBS]     = HI_UNF_DISP_DAC_MODE_CVBS;
#else
        DacMode.enDacMode[HI_DAC_YPBPR_Y]  = HI_UNF_DISP_DAC_MODE_SILENCE;
        DacMode.enDacMode[HI_DAC_YPBPR_PB] = HI_UNF_DISP_DAC_MODE_SILENCE;
        DacMode.enDacMode[HI_DAC_YPBPR_PR] = HI_UNF_DISP_DAC_MODE_SILENCE;
        DacMode.enDacMode[HI_DAC_CVBS]     = HI_UNF_DISP_DAC_MODE_CVBS;
#endif
    HI_UNF_DISP_SetDacMode(&DacMode);

    Ret = HI_UNF_DISP_Attach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Attach failed.\n");
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Open(HI_UNF_DISP_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Open failed.\n");
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Open(HI_UNF_DISP_SD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Open SD failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    /* move video layer to top, this can prevent logo from covering video */
    Ret = HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVETOP);
    if(HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_DISP_SetLayerZorder failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
        HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
        HI_UNF_DISP_DeInit();
    }

    Ret = HIADP_HDMI_Init(HI_UNF_HDMI_ID_0,enFormat);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_DISP_Open SD failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
        HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
        HI_UNF_DISP_DeInit();
        return Ret;
    }
    
#else
    HI_UNF_DISP_SetBgColor(HI_UNF_DISP_SD0, &BgColor);
    HI_UNF_DISP_SetIntfType(HI_UNF_DISP_SD0, HI_UNF_DISP_INTF_TYPE_TV);
    HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, enFormat);

    DacMode.bScartEnable = HI_FALSE;
    DacMode.bBt1120Enable = HI_FALSE;
    DacMode.bBt656Enable = HI_FALSE;
	
 	DacMode.enDacMode[HI_DAC_YPBPR_Y]  = HI_UNF_DISP_DAC_MODE_SILENCE;
    DacMode.enDacMode[HI_DAC_YPBPR_PB] = HI_UNF_DISP_DAC_MODE_SILENCE;
    DacMode.enDacMode[HI_DAC_YPBPR_PR] = HI_UNF_DISP_DAC_MODE_SILENCE;
    DacMode.enDacMode[HI_DAC_CVBS]     = HI_UNF_DISP_DAC_MODE_CVBS;
    HI_UNF_DISP_SetDacMode(&DacMode);

    Ret = HI_UNF_DISP_Open(HI_UNF_DISP_SD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Open SD failed.\n");
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVETOP);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_DISP_SetLayerZorder failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
        HI_UNF_DISP_DeInit();
    }
#endif
    
    /* don't let the video be covered by the start-up logo, usually, you should close osd layer in HiGO or HiFB */
    //HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVETOP);
    //HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVETOP);

    return HI_SUCCESS;
}

HI_S32 HIADP_Disp_DeInit(HI_VOID)
{
    HI_S32                      Ret;

    /* don't let the OSD be covered by the video, when we exit */
    //HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);
    //HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);


    Ret = HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }
    
#ifndef CHIP_TYPE_hi3110ev500 
    Ret = HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_Detach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Detach failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_DeInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_DeInit failed.\n");
        return Ret;
    }
	
    HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_0);
    
#else
    Ret = HI_UNF_DISP_DeInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_DeInit failed.\n");
        return Ret;
    }
#endif
    return HI_SUCCESS;
}

/****************************VO Common Interface********************************************/
HI_S32 HIADP_VO_Init(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    HI_S32             Ret;


    Ret = HI_UNF_VO_Init(enDevMode);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_Init failed.\n");
        return Ret;
    }
    
#ifndef CHIP_TYPE_hi3110ev500 
    Ret = HI_UNF_VO_Open(HI_UNF_VO_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_Open failed.\n");
        HI_UNF_VO_DeInit();
        return Ret;
    }
#else
    Ret = HI_UNF_VO_Open(HI_UNF_VO_SD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_Open failed.\n");
        HI_UNF_VO_DeInit();
        return Ret;
    }
#endif
    return HI_SUCCESS;
}    

HI_S32 HIADP_VO_CreatWin(HI_RECT_S *pstWinRect,HI_HANDLE *phWin)
{
    HI_S32 Ret;
    HI_UNF_WINDOW_ATTR_S   WinAttr;
    
#ifndef CHIP_TYPE_hi3110ev500
    WinAttr.enVo = HI_UNF_VO_HD0;
    WinAttr.stInputRect.s32Width = 1920;
    WinAttr.stInputRect.s32Height = 1080;
#else
    WinAttr.enVo = HI_UNF_VO_SD0;
    WinAttr.stInputRect.s32Width = 720;
    WinAttr.stInputRect.s32Height = 576;
#endif
    WinAttr.bVirtual = HI_FALSE;
    WinAttr.enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    WinAttr.enAspectCvrs = HI_UNF_ASPECT_CVRS_IGNORE;
    WinAttr.stInputRect.s32X = 0;
    WinAttr.stInputRect.s32Y = 0;

    if (HI_NULL == pstWinRect)
    {
        memcpy(&WinAttr.stOutputRect,&WinAttr.stInputRect,sizeof(HI_RECT_S));
    }
    else
    {
        memcpy(&WinAttr.stOutputRect,pstWinRect,sizeof(HI_RECT_S));
    }

    Ret = HI_UNF_VO_CreateWindow(&WinAttr, phWin);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_CreateWindow failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_VO_DeInit()
{
    HI_S32         Ret;
    
#ifndef CHIP_TYPE_hi3110ev500
    Ret = HI_UNF_VO_Close(HI_UNF_VO_HD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_Close failed.\n");
        return Ret;
    }
#else
    Ret = HI_UNF_VO_Close(HI_UNF_VO_SD0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_Close failed.\n");
        return Ret;
    }
#endif

    Ret = HI_UNF_VO_DeInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_VO_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

/*****************************************SOUND Common Interface************************************/
HI_S32 HIADP_Snd_Init(HI_VOID)
{
    HI_S32                  Ret;
    HI_UNF_SND_INTERFACE_S      SndIntf;

    Ret = HI_UNF_SND_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_SND_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_Open(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_SND_Open failed.\n");
        return Ret;
    }

    SndIntf.enInterface = HI_UNF_SND_INTERFACE_I2S;
	SndIntf.bEnable = HI_TRUE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
	if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_SetInterface failed.\n");
        HI_UNF_SND_Close(HI_UNF_SND_0);
        HI_UNF_SND_DeInit();
        return Ret;
    }
    
    SndIntf.enInterface = HI_UNF_SND_INTERFACE_SPDIF;
	SndIntf.bEnable = HI_TRUE;
    Ret = HI_UNF_SND_SetInterface(HI_UNF_SND_0, &SndIntf);
	if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_SetInterface failed.\n");
        HI_UNF_SND_Close(HI_UNF_SND_0);
        HI_UNF_SND_DeInit();
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_Snd_DeInit(HI_VOID)
{
    HI_S32                  Ret;

    Ret = HI_UNF_SND_Close(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_DeInit();
    if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_DeInit failed.\n");
        return Ret;
    }
    
    return HI_SUCCESS;
}



#ifdef TLV320_AUDIO_DEVICE_ENABLE
static int g_fdTLV320AIC31 = -1;
 #define TLV320AIC31_FILE "/dev/tlv320aic31"
 #define     TLV320_SET_I2S_MODE 0x35
typedef struct
{
    unsigned int chip_num      : 3;
    unsigned int audio_in_out  : 2;
    unsigned int if_mute_route : 1;
    unsigned int if_powerup    : 1;
    unsigned int input_level   : 7;
    unsigned int sample        : 4;
    unsigned int data_length   : 2;
    unsigned int ctrl_mode     : 1;
    unsigned int dac_path      : 2;
    unsigned int trans_mode    : 2;
    unsigned int i2s_mode      : 2;
    unsigned int i2s_master    : 1;
    unsigned int reserved      : 3;
} Audio_Ctrl;

static HI_S32 HIADP_TLV320_Open(HI_U32 I2S_Mode)
{
    HI_S32 s32Ret;
    Audio_Ctrl stTlvAic31Codec_Ctrl;

	AudioSlicTlv320RST();
	AudioSPIPinSharedEnable();
    g_fdTLV320AIC31 = open(TLV320AIC31_FILE, O_RDWR);
    if (g_fdTLV320AIC31 < 0)
    {
        printf("can't open AIC31\n");
        return -1;
    }

    if ((I2S_Mode == AIO_MODE_I2S_SLAVE) || (I2S_Mode == AIO_MODE_I2S_MASTER))
    {
        stTlvAic31Codec_Ctrl.i2s_mode = 0;
    }
    else if ((I2S_Mode == AIO_MODE_PCM_SLAVE_STD) || (I2S_Mode == AIO_MODE_PCM_MASTER_STD))
    {
        stTlvAic31Codec_Ctrl.i2s_mode = 1;
    }
    else if ((I2S_Mode == AIO_MODE_PCM_SLAVE_NSTD) || (I2S_Mode == AIO_MODE_PCM_MASTER_NSTD))
    {
        stTlvAic31Codec_Ctrl.i2s_mode = 2;
    }

    if ((I2S_Mode == AIO_MODE_I2S_SLAVE) || (I2S_Mode == AIO_MODE_PCM_SLAVE_STD)
        || (I2S_Mode == AIO_MODE_PCM_SLAVE_NSTD))
    {
        stTlvAic31Codec_Ctrl.i2s_master = 1;
    }
    else
    {
        stTlvAic31Codec_Ctrl.i2s_master = 0;
    }

    s32Ret = ioctl(g_fdTLV320AIC31, TLV320_SET_I2S_MODE, &stTlvAic31Codec_Ctrl);
    if (s32Ret < 0)
    {
        return s32Ret;
    }

    return 0;
}

static HI_VOID HIADP_TLV320_Close(HI_VOID)
{
    if (g_fdTLV320AIC31 > 0)
    {
        close(g_fdTLV320AIC31);
    }
}

#endif

#ifdef SLIC_AUDIO_DEVICE_ENABLE
static int g_fdSlic = -1;
  #define SLIC_FILE "/dev/le89116"
  #define IOCTL_SLAC_INITIAL 201
  #define IOCTL_SET_LINE_STATE 7
  #define IOCTL_GET_LINE_STATE 17

/** Ring control option */
  #define FORCE_SIGNED_ENUM FORCE_STANDARD_C_ENUM_SIZE - 1
  #define FORCE_STANDARD_C_ENUM_SIZE (0x7fff)
typedef enum
{
    VP_LINE_STANDBY,        /**< Low power line feed state */
    VP_LINE_TIP_OPEN,       /**< Tip open circuit state */
    VP_LINE_ACTIVE,         /**< Line Feed w/out VF */
    VP_LINE_ACTIVE_POLREV,  /**< Polarity Reversal Line Feed w/out VF */
    VP_LINE_TALK,           /**< Normal off-hook Active State; Voice Enabled */
    VP_LINE_TALK_POLREV,    /**< Normal Active with reverse polarity;
                             *   Voice Enabled */

    VP_LINE_OHT,            /**< On-Hook tranmission state */
    VP_LINE_OHT_POLREV,     /**< Polarity Reversal On-Hook tranmission state */

    VP_LINE_DISCONNECT,     /**< Denial of service */
    VP_LINE_RINGING,        /**< Ringing state */
    VP_LINE_RINGING_POLREV, /**< Ringing w/Polarity Reversal */

    VP_LINE_FXO_OHT,        /**< FXO Line providing Loop Open w/VF */
    VP_LINE_FXO_LOOP_OPEN,  /**< FXO Line providing Loop Open w/out VF */
    VP_LINE_FXO_LOOP_CLOSE, /**< FXO Line providing Loop Close w/out VF */
    VP_LINE_FXO_TALK,       /**< FXO Line providing Loop Close w/VF */
    VP_LINE_FXO_RING_GND,   /**< FXO Line providing Ring Ground (GS only)*/

    VP_LINE_STANDBY_POLREV, /**< Low power polrev line feed state */
    VP_LINE_PARK,           /**< Park mode */
    VP_LINE_RING_OPEN,      /**< Ring open */
    VP_LINE_HOWLER,         /**< Howler */
    VP_LINE_TESTING,        /**< Testing */
    VP_LINE_DISABLED,       /**< Disabled */
    VP_LINE_NULLFEED,       /**< Null-feed */

    VP_NUM_LINE_STATES,
    VP_LINE_STATE_ENUM_RSVD = FORCE_SIGNED_ENUM,
    VP_LINE_STATE_ENUM_SIZE = FORCE_STANDARD_C_ENUM_SIZE /* Portability Req.*/
} VpLineStateType;

typedef struct VpSetLineState_TYPE
{
    HI_VOID *       pLineCtx;
    VpLineStateType state;
} VpSetLineState_TYPE;

HI_S32 HIADP_SLIC_Open(HI_VOID)
{
    HI_S32 Ret;
	
	AudioSlicTlv320RST();
	AudioSPIPinSharedEnable();

    g_fdSlic = open(SLIC_FILE, O_RDWR);
    if (g_fdSlic < 0)
    {
        printf("can't open SLIC le89116\n");
        return -1;
    }

    Ret = ioctl(g_fdSlic, IOCTL_SLAC_INITIAL, NULL);
    if (Ret < 0)
    {
        return Ret;
    }

    sleep(1);
    return 0;
}

HI_S32 HIADP_SLIC_Close(HI_VOID)
{
    if (g_fdSlic > 0)
    {
        close(g_fdSlic);
        g_fdSlic = -1;
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_SLIC_GetHookOff(HI_BOOL *pbEnable)
{
    VpSetLineState_TYPE stState;
    HI_S32 Ret;

    stState.pLineCtx = NULL;
    *pbEnable = HI_FALSE;
    Ret = ioctl(g_fdSlic, IOCTL_GET_LINE_STATE, &stState);
    if (Ret == HI_SUCCESS)
    {
        if (VP_LINE_TALK == stState.state)
        {
            *pbEnable = HI_TRUE;
        }
    }

    return Ret;
}

HI_S32 HIADP_SLIC_GetHookOn(HI_BOOL *pbEnable)
{
    VpSetLineState_TYPE stState;
    HI_S32 Ret;

    stState.pLineCtx = NULL;
    *pbEnable = HI_FALSE;
    Ret = ioctl(g_fdSlic, IOCTL_GET_LINE_STATE, &stState);
    if (Ret == HI_SUCCESS)
    {
        if (VP_LINE_STANDBY == stState.state)
        {
            *pbEnable = HI_TRUE;
        }
    }

    return Ret;
}

HI_S32 HIADP_SLIC_SetRinging(HI_BOOL bEnable)
{
    VpSetLineState_TYPE stState;
    HI_S32 Ret;

    Ret = ioctl(g_fdSlic, IOCTL_GET_LINE_STATE, &stState);
    if (Ret == HI_SUCCESS)
    {
        if ((VP_LINE_STANDBY == stState.state) && (HI_TRUE == bEnable))
        {
            stState.state = VP_LINE_RINGING;
            Ret = ioctl(g_fdSlic, IOCTL_SET_LINE_STATE, &stState);
        }
        else if ((VP_LINE_RINGING == stState.state) && (HI_FALSE == bEnable))
        {
            stState.state = VP_LINE_STANDBY;
            Ret = ioctl(g_fdSlic, IOCTL_SET_LINE_STATE, &stState);
        }
    }

    return Ret;
}

 #endif

#ifdef SLIC_AUDIO_DEVICE_ENABLE
#define AIAO_I2S_INTERFACE_MODE AIO_MODE_PCM_MASTER_STD
 #define AIAO_SOUND_MODE AUDIO_SOUND_MODE_MOMO
#else
#define AIAO_I2S_INTERFACE_MODE AIO_MODE_I2S_MASTER
#endif
 #define AIAO_BIT_DEPTH HI_UNF_BIT_DEPTH_16

#ifdef TLV320_AUDIO_DEVICE_ENABLE 
 #define AIAO_SOUND_MODE AUDIO_SOUND_MODE_STEREO
#endif

#if 0
static HI_S32 HIADP_AiAo_Open( HI_UNF_SAMPLE_RATE_E enSamplerate, HI_U32 u32SamplePerFrame)
{
    HI_S32 nRet;
    AIO_ATTR_S stAttr;

    nRet = AudioSIOPinSharedEnable();
	if (HI_SUCCESS != nRet)
    {
        printf("chip not support or GetVersion err:0x%x\n", nRet);
        return nRet;
    }
#ifdef SLIC_AUDIO_DEVICE_ENABLE    
#define ENA_PRIVATE_CLK
#endif
#ifdef  ENA_PRIVATE_CLK
    AIO_PRIVATECLK_ATTR_S stPrivateClkAttr;
    stPrivateClkAttr.enMclkSel = AIO_MCLK_256_FS; /* 8000*512 = 4096000 or 16000*512 =  8192000 */
    stPrivateClkAttr.enBclkSel = AIO_BCLK_2_DIV;   /* 8000*256 = 2048000 or 16000*256 =  4096000 */
    stPrivateClkAttr.bSampleRiseEdge = HI_FALSE;
    stAttr.pstPrivClkAttr = &stPrivateClkAttr;/* use private clock */
#else
    stAttr.pstPrivClkAttr = HI_NULL; /* use default clock */
#endif

    /*--------------------------  AI ---------------------------------------*/
    stAttr.enBitwidth   = AIAO_BIT_DEPTH;/* should equal to ADC*/
    stAttr.enSamplerate = enSamplerate;/* invalid factly when SLAVE mode*/
    stAttr.enSoundmode  = AIAO_SOUND_MODE;
    stAttr.enWorkmode = AIAO_I2S_INTERFACE_MODE;
    stAttr.u32EXFlag = 1;/* should set 1, ext to 16bit */
    stAttr.u32FrmNum = 4;
    stAttr.u32ChnCnt = 2;
    stAttr.u32PtNumPerFrm = u32SamplePerFrame;
    stAttr.u32ClkSel = 0;

    /* set ai public attr*/
    nRet = HI_MPI_AI_SetPubAttr(g_AiaoDevId, &stAttr);
    if (HI_SUCCESS != nRet)
    {
        printf("set ai %d attr err:0x%x\n", g_AiaoDevId, nRet);
        return nRet;
    }

    /* enable ai device*/
    nRet = HI_MPI_AI_Enable(g_AiaoDevId);
    if (HI_SUCCESS != nRet)
    {
        printf("enable ai dev %d err:0x%x\n", g_AiaoDevId, nRet);
        return nRet;
    }

    /* enable ai chnnel*/
    nRet = HI_MPI_AI_EnableChn(g_AiaoDevId, g_AiCh);
    if (HI_SUCCESS != nRet)
    {
        printf("enable ai chn %d err:0x%x\n", g_AiCh, nRet);
        return nRet;
    }

    /*---------------------------AO----------------------------------*/
    stAttr.enBitwidth   = AIAO_BIT_DEPTH;/* should equal to ADC*/
    stAttr.enSamplerate = enSamplerate;/* invalid factly when SLAVE mode*/
    stAttr.enSoundmode  = AIAO_SOUND_MODE;
    stAttr.enWorkmode = AIAO_I2S_INTERFACE_MODE;
    stAttr.u32EXFlag = 1;/* should set 1, ext to 16bit */
    stAttr.u32FrmNum = 4;
    stAttr.u32ChnCnt = 2;
    stAttr.u32PtNumPerFrm = u32SamplePerFrame;
    stAttr.u32ClkSel = 0;

    /* set ao public attr*/
    nRet = HI_MPI_AO_SetPubAttr(g_AiaoDevId, &stAttr);
    if (HI_SUCCESS != nRet)
    {
        printf("set ao %d attr err:0x%x\n", g_AiaoDevId, nRet);
        return nRet;
    }

    /* enable ao device*/
    nRet = HI_MPI_AO_Enable(g_AiaoDevId);
    if (HI_SUCCESS != nRet)
    {
        printf("enable ao dev %d err:0x%x\n", g_AiaoDevId, nRet);
        return nRet;
    }

    /* enable ao chnnel*/
    nRet = HI_MPI_AO_EnableChn(g_AiaoDevId, g_AoCh);
    if (HI_SUCCESS != nRet)
    {
        printf("enable ao chn %d err:0x%x\n", g_AoCh, nRet);
        return nRet;
    }

    return 0;
}

static HI_VOID HIADP_AiAo_Close(HI_VOID)
{
    HI_MPI_AI_DisableChn((AUDIO_DEV)g_AiaoDevId, g_AiCh);
    HI_MPI_AI_Disable((AUDIO_DEV)g_AiaoDevId);
    HI_MPI_AO_DisableChn((AUDIO_DEV)g_AiaoDevId, g_AoCh);
    HI_MPI_AO_Disable((AUDIO_DEV)g_AiaoDevId);
}

HI_S32 HIADP_AIAO_Init(HI_S32 DevId, HI_S32 AI_Ch, HI_S32 AO_Ch, HI_UNF_SAMPLE_RATE_E enSamplerate,
                       HI_U32 u32SamplePerFrame)
{
    HI_S32 Ret;

    g_AiaoDevId = DevId;
    g_AiCh = AI_Ch;
    g_AoCh = AO_Ch;

#if defined (TLV320_AUDIO_DEVICE_ENABLE)
    Ret = HIADP_TLV320_Open(AIAO_I2S_INTERFACE_MODE);
    if (HI_SUCCESS != Ret)
    {
        printf("TLV320 open err:0x%x\n", Ret);
        return Ret;
    }
#endif

    Ret = HIADP_Dma_Open();
    if (HI_SUCCESS != Ret)
    {
        printf("dma open err:0x%x\n", Ret);
        return Ret;
    }

    Ret = HIADP_AiAo_Open(enSamplerate, u32SamplePerFrame);
    if (HI_SUCCESS != Ret)
    {
        printf(" aiao(%d) open err:0x%x\n", g_AiaoDevId, Ret);
        return Ret;
    }

#if defined (SLIC_AUDIO_DEVICE_ENABLE)
    Ret = HIADP_SLIC_Open();
    if (HI_SUCCESS != Ret)
    {
        printf("Le89116 open err:0x%x\n", Ret);
        return Ret;
    }
#endif

    
    printf("HIADP_AIAO_Init OK\n");

    return HI_SUCCESS;
}

HI_S32 HIADP_AIAO_DeInit(HI_VOID)
{
 
#if defined (SLIC_AUDIO_DEVICE_ENABLE)
    HIADP_SLIC_Close();
#endif

    HIADP_AiAo_Close();
    HIADP_Dma_Close();

#if defined (TLV320_AUDIO_DEVICE_ENABLE)
    HIADP_TLV320_Close();
#endif

    return HI_SUCCESS;
}


/* END AIAO_DeInit: */
#endif

HI_S32 HIADP_AVPlay_RegADecLib()
{
    HI_S32 Ret = HI_SUCCESS;


	Ret = HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AMRWB.codec.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.MP3.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.MP2.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AAC.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DRA.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.TRUEHDPASSTHROUGH.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AMRNB.codec.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.WMA.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.COOK.decode.so");
#ifdef DOLBYPLUS_HACODEC_SUPPORT
	Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DOLBYPLUS.decode.so");
#endif
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DTSHD.decode.so");
	Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DTSPASSTHROUGH.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AC3PASSTHROUGH.decode.so");
    Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.PCM.decode.so");

    if (Ret != HI_SUCCESS)
    {
        printf("\n\n!!! some audio codec NOT found. you may NOT able to decode some audio type.\n\n");
    }
    
    return HI_SUCCESS;
}

HI_S32 HIADP_AVPlay_Init()
{
    HI_S32 Ret;
    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    return Ret;
}

HI_S32 HIADP_AVPlay_Create(HI_HANDLE *avplay,
                                 HI_U32 u32DemuxId,
                                 HI_UNF_AVPLAY_STREAM_TYPE_E streamtype,
                                 HI_UNF_VCODEC_CAP_LEVEL_E vdeccap,
                                 HI_U32 channelflag)
{
    HI_UNF_AVPLAY_ATTR_S attr;
    HI_HANDLE avhandle;
    HI_UNF_AVPLAY_OPEN_OPT_S maxCapbility;

    if(avplay == HI_NULL)
    	return HI_FAILURE;
    
    if ((u32DemuxId != MPI_DEMUX_PLAY) && (u32DemuxId != MPI_DEMUX_PLAYBACK))
    {
        printf("%d is not a play demux , please select play demux \n", u32DemuxId);
        return HI_FAILURE;
    }

    if(streamtype >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    	return HI_FAILURE;

    if(vdeccap >= HI_UNF_VCODEC_CAP_LEVEL_BUTT)
    	return HI_FAILURE;

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetDefaultConfig(&attr, streamtype));

    attr.u32DemuxId = u32DemuxId;

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_Create(&attr, &avhandle));
    maxCapbility.enDecType = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
	maxCapbility.enCapLevel = vdeccap;
	maxCapbility.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
		
    if(channelflag&HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnOpen(avhandle, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL));

    if(channelflag&HI_UNF_AVPLAY_MEDIA_CHAN_VID)
        HIAPI_RUN_RETURN(HI_UNF_AVPLAY_ChnOpen(avhandle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &maxCapbility));

    *avplay = avhandle;

    printf("demux %d create avplay 0x%x  \n", u32DemuxId, avhandle);

    return HI_SUCCESS;
}

#if 0
HI_S32 HIADP_AVPlay_SetVdecAdvAttr(HI_HANDLE hAvplay,HI_UNF_VCODEC_TYPE_E enType,HI_UNF_VCODEC_MODE_E enMode, HI_BOOL bOrderOutput)
{
    HI_S32 Ret;
    HI_UNF_VCODEC_ADV_ATTR_S        VdecAttr;
    
    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC_ADV, &VdecAttr);
    if (HI_SUCCESS != Ret)
    {
        printf("HI_UNF_AVPLAY_GetAttr failed:%#x\n",Ret);        
        return Ret;
    }

    VdecAttr.enType = enType;
    VdecAttr.enMode = enMode;
    VdecAttr.u32ErrCover = 100;
    VdecAttr.u32Priority = 3;
    VdecAttr.bOrderOutput = bOrderOutput;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC_ADV, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        return Ret;
    }

    return Ret;
}
#endif

HI_S32 HIADP_AVPlay_SetVdecAttr(HI_HANDLE hAvplay,HI_UNF_VCODEC_TYPE_E enType,HI_UNF_VCODEC_MODE_E enMode)
{
    HI_S32 Ret;
    HI_UNF_VCODEC_ATTR_S        VdecAttr;
    
    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if (HI_SUCCESS != Ret)
    {
        printf("HI_UNF_AVPLAY_GetAttr failed:%#x\n",Ret);        
        return Ret;
    }

    VdecAttr.enType = enType;
    VdecAttr.enMode = enMode;
    VdecAttr.u32ErrCover = 100;
    VdecAttr.u32Priority = 3;

    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        return Ret;
    }

    return Ret;
}

#if defined (DOLBYPLUS_HACODEC_SUPPORT)

static HI_VOID DDPlusCallBack(DOLBYPLUS_EVENT_E Event, HI_VOID *pUserData)
{
    DOLBYPLUS_STREAM_INFO_S *pstInfo = (DOLBYPLUS_STREAM_INFO_S *)pUserData;
#if 0
	printf( "DDPlusCallBack show info:\n \
                s16StreamType          = %d\n \
                s16Acmod               = %d\n \
                s32BitRate             = %d\n \
                s32SampleRateRate      = %d\n \
                Event                  = %d\n", 
                pstInfo->s16StreamType, pstInfo->s16Acmod, pstInfo->s32BitRate, pstInfo->s32SampleRateRate,Event);
#endif                
	g_u32DolbyAcmod = pstInfo->s16Acmod;

	if (HA_DOLBYPLUS_EVENT_SOURCE_CHANGE == Event)
    {
		g_bDrawChnBar = HI_TRUE;
		//printf("DDPlusCallBack enent !\n");
	}
    return;
}

#endif
HI_S32 HIADP_AVPlay_SetAdecAttr(HI_HANDLE hAvplay, HI_U32 enADecType, HI_HA_DECODEMODE_E enMode, HI_S32 isCoreOnly)
{
    HI_UNF_ACODEC_ATTR_S AdecAttr;
    WAV_FORMAT_S stWavFormat;

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &AdecAttr));
    AdecAttr.enType = enADecType;

    if (HA_AUDIO_ID_PCM == AdecAttr.enType)
    {
        HI_BOOL isBigEndian;
        /* set pcm wav format here base on pcm file */
        stWavFormat.nChannels = 1;
        stWavFormat.nSamplesPerSec = 48000;
        stWavFormat.wBitsPerSample = 16;
        /* if big-endian pcm */
        isBigEndian = HI_FALSE;
        if(HI_TRUE == isBigEndian)
        {
        	stWavFormat.cbSize =4;
        	stWavFormat.cbExtWord[0] = 1;
        }
        HA_PCM_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam),&stWavFormat);
        printf("please make sure the attributes of PCM stream is tme same as defined in function of \"HIADP_AVPlay_SetAdecAttr\"? \n");
        printf("(nChannels = 1, wBitsPerSample = 16, nSamplesPerSec = 48000, isBigEndian = HI_FALSE) \n");
    }
#if 0    
    else if (HA_AUDIO_ID_G711 == AdecAttr.enType)
    {
         HA_G711_GetDecDefalutOpenParam(&(AdecAttr.stDecodeParam));
    }
#endif    
    else if (HA_AUDIO_ID_MP2 == AdecAttr.enType)
    {
    	 HA_MP2_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
    }
    else if (HA_AUDIO_ID_AAC == AdecAttr.enType)
    {
    	 HA_AAC_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
    }
    else if (HA_AUDIO_ID_MP3 == AdecAttr.enType)
    {
    	 HA_MP3_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
    }
    else if (HA_AUDIO_ID_AMRNB== AdecAttr.enType)
    {
        AMRNB_DECODE_OPENCONFIG_S *pstConfig = (AMRNB_DECODE_OPENCONFIG_S *)u8DecOpenBuf;        
        HA_AMRNB_GetDecDefalutOpenParam(&(AdecAttr.stDecodeParam), pstConfig);
        pstConfig->enFormat = AMRNB_MIME;		
    }
    else if (HA_AUDIO_ID_AMRWB== AdecAttr.enType)
    {
        AMRWB_DECODE_OPENCONFIG_S *pstConfig = (AMRWB_DECODE_OPENCONFIG_S *)u8DecOpenBuf;
        HA_AMRWB_GetDecDefalutOpenParam(&(AdecAttr.stDecodeParam), pstConfig);
        pstConfig->enFormat = AMRWB_FORMAT_MIME;
    }
    else if (HA_AUDIO_ID_AC3PASSTHROUGH== AdecAttr.enType)
    {
        HA_AC3PASSTHROUGH_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
        AdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_THRU;
    }
    else if(HA_AUDIO_ID_DTSPASSTHROUGH ==  AdecAttr.enType)
    {
    	        HA_DTSPASSTHROUGH_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
       		 AdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_THRU;
    }
#if 0//def HI_AIAO_NO_USED_CODE 
    else if (HA_AUDIO_ID_TRUEHD == AdecAttr.enType)
    {
        HA_TRUEHD_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
        if (HD_DEC_MODE_THRU != enMode)
        {
            printf(" MLP decoder enMode(%d) error (mlp only support hbr Pass-through only).\n", enMode);
            return -1;
        }

        AdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_THRU;        /* truehd just support pass-through */
        printf(" TrueHD decoder(HBR Pass-through only).\n");
    }
#endif
    else if (HA_AUDIO_ID_DTSHD == AdecAttr.enType)
    {
        DTSHD_DECODE_OPENCONFIG_S *pstConfig = (DTSHD_DECODE_OPENCONFIG_S *)u8DecOpenBuf;        
    	HA_DTSHD_DecGetDefalutOpenConfig(pstConfig);
        HA_DTSHD_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam), pstConfig);
		AdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_SIMUL;

    }
#if defined (DOLBYPLUS_HACODEC_SUPPORT)
	else if (HA_AUDIO_ID_DOLBY_PLUS == AdecAttr.enType)
	{
		DOLBYPLUS_DECODE_OPENCONFIG_S *pstConfig = (DOLBYPLUS_DECODE_OPENCONFIG_S *)u8DecOpenBuf;
		HA_DOLBYPLUS_DecGetDefalutOpenConfig(pstConfig);
		pstConfig->pfnEvtCbFunc[HA_DOLBYPLUS_EVENT_SOURCE_CHANGE] = DDPlusCallBack;
		pstConfig->pAppData[HA_DOLBYPLUS_EVENT_SOURCE_CHANGE] = &g_stDDpStreamInfo;
		/* Dolby DVB Broadcast default settings */
		pstConfig->enDrcMode = DOLBYPLUS_DRC_RF; 
		pstConfig->enDmxMode = DOLBYPLUS_DMX_SRND; 
		HA_DOLBYPLUS_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam), pstConfig);
		AdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_SIMUL;
	}
#endif
    else
    {
//	     HA_DRA_DecGetDefalutOpenParam(&(AdecAttr.stDecodeParam));
         HA_DRA_DecGetOpenParam_MultichPcm(&(AdecAttr.stDecodeParam));
    }

    HIAPI_RUN_RETURN(HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &AdecAttr));

    return HI_SUCCESS;
}

HI_S32 HIADP_AENC_GetAttr(HI_UNF_AENC_ATTR_S *pAencAttr, HI_VOID *pstConfig)
{   
    if(NULL == pAencAttr || NULL == pstConfig)
    {
        return HI_ERR_AENC_NULL_PTR;
    }

    if (HA_AUDIO_ID_AAC == pAencAttr->enAencType)
    {       
        HA_AAC_GetEncDefaultOpenParam(&(pAencAttr->sOpenParam), pstConfig);
        printf("u32DesiredSampleRate =%d\n", pAencAttr->sOpenParam.u32DesiredSampleRate);
    }
    else
    {
        return HI_FAILURE;
    }
        
    return HI_SUCCESS;

}


HI_S32 HIADP_AVPlay_PlayProg(HI_HANDLE hAvplay,PMT_COMPACT_TBL *pProgTbl,HI_U32 ProgNum,HI_BOOL bAudPlay)
{
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;
    HI_U32                  VidPid;
    HI_U32                  AudPid;
    HI_U32                  PcrPid;
    HI_UNF_VCODEC_TYPE_E    enVidType;
    HI_U32                  u32AudType;
    HI_S32                  Ret;

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_AVPLAY_Stop failed.\n");
        return Ret;
    }

    ProgNum = ProgNum % pProgTbl->prog_num;
    if (pProgTbl->proginfo[ProgNum].VElementNum > 0 )
    {
        VidPid = pProgTbl->proginfo[ProgNum].VElementPid;
        enVidType = pProgTbl->proginfo[ProgNum].VideoType;
    }
    else
    {
        VidPid = INVALID_TSPID;
        enVidType = HI_UNF_VCODEC_TYPE_BUTT;
    }

    if (pProgTbl->proginfo[ProgNum].AElementNum > 0)
    {
        AudPid  = pProgTbl->proginfo[ProgNum].AElementPid;
        u32AudType = pProgTbl->proginfo[ProgNum].AudioType;
    }
    else
    {
        AudPid = INVALID_TSPID;
        u32AudType = 0xffffffff;
    }
    
    PcrPid = pProgTbl->proginfo[ProgNum].PcrPid;
    if (INVALID_TSPID != PcrPid)
    {
        Ret = HI_UNF_AVPLAY_SetAttr(hAvplay,HI_UNF_AVPLAY_ATTR_ID_PCR_PID,&PcrPid);
        if (HI_SUCCESS != Ret)
        {
            printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
            return Ret;
        }
    }

    if (VidPid != INVALID_TSPID)
    {
        Ret = HIADP_AVPlay_SetVdecAttr(hAvplay,enVidType,HI_UNF_VCODEC_MODE_NORMAL);
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID,&VidPid);
        if (Ret != HI_SUCCESS)
        {
            printf("call HIADP_AVPlay_SetVdecAttr failed.\n");
            return Ret;
        }

        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            printf("call HI_UNF_AVPLAY_Start failed.\n");
            return Ret;
        }
    }

    if (HI_TRUE == bAudPlay && AudPid != INVALID_TSPID)
    {
    	//u32AudType = HA_AUDIO_ID_DTSHD;
		//printf("u32AudType = %#x\n",u32AudType);
        Ret  = HIADP_AVPlay_SetAdecAttr(hAvplay, u32AudType, HD_DEC_MODE_RAWPCM, 1);
		
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &AudPid);
        if (HI_SUCCESS != Ret)
        {
            printf("HIADP_AVPlay_SetAdecAttr failed:%#x\n",Ret);
            return Ret;
        }

        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            printf("call HI_UNF_AVPLAY_Start failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_AVPlay_PlayAud(HI_HANDLE hAvplay,PMT_COMPACT_TBL *pProgTbl,HI_U32 ProgNum)
{
    HI_U32                  AudPid;
    HI_U32                  u32AudType;
    HI_S32                  Ret;

    Ret = HI_UNF_AVPLAY_Stop(hAvplay,HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_AVPLAY_Stop failed.\n");
        return Ret;
    }

    ProgNum = ProgNum % pProgTbl->prog_num;
    if (pProgTbl->proginfo[ProgNum].AElementNum > 0)
    {
        AudPid  = pProgTbl->proginfo[ProgNum].AElementPid;
        u32AudType = pProgTbl->proginfo[ProgNum].AudioType;
    }
    else
    {
        AudPid = INVALID_TSPID;
        u32AudType = 0xffffffff;
    }
    
    if (AudPid != INVALID_TSPID)
    {
        Ret  = HIADP_AVPlay_SetAdecAttr(hAvplay, u32AudType, HD_DEC_MODE_RAWPCM, 1);
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &AudPid);
        if (HI_SUCCESS != Ret)
        {
            printf("HIADP_AVPlay_SetAdecAttr failed:%#x\n",Ret);
            return Ret;
        }

        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            printf("call HI_UNF_AVPLAY_Start failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_AVPlay_SwitchAud(HI_HANDLE hAvplay,HI_U32 AudPid, HI_U32 u32AudType)
{
    HI_S32 Ret = HI_SUCCESS;

    if (AudPid == INVALID_TSPID)
    {
        printf("%s, audio pid is invalid!\n", __func__);
        return HI_FAILURE;
    }

    Ret = HI_UNF_AVPLAY_Stop(hAvplay,HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_AVPLAY_Stop failed.\n");
        return Ret;
    }


    Ret  = HIADP_AVPlay_SetAdecAttr(hAvplay, u32AudType, HD_DEC_MODE_RAWPCM, 1);
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &AudPid);
    if (HI_SUCCESS != Ret)
    {
        printf("HIADP_AVPlay_SetAdecAttr failed:%#x\n",Ret);
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Start failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}


    
