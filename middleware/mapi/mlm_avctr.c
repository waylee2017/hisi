#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include <sys/time.h>

#include "mapi_inner.h"
#include "mlm_avctr.h"

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

/* Private Variables (static) ------------------------------------------------ */

typedef void (*User_HDMI_CallBack)(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData);

typedef struct hiHDMI_ARGS_S
{
    HI_UNF_HDMI_ID_E  enHdmi;
    HI_UNF_ENC_FMT_E  enWantFmt;
    HI_UNF_SAMPLE_RATE_E AudioFreq;
    HI_U32            AduioBitPerSample;
    HI_U32            AudioChannelNum;
    HI_UNF_SND_INTERFACE_E AudioInputType;
    HI_U32            ForceHDMIFlag;
}HDMI_ARGS_S;

static HDMI_ARGS_S g_stHdmiArgs;
static HI_U32 g_HDCPFlag         = HI_FALSE;
static HI_U32 g_AudioFreq        = HI_UNF_SAMPLE_RATE_48K;
static HI_U32 g_AduioBitPerSample= 16;
static HI_U32 g_AudioChannelNum  = 2;
static HI_U32 g_AudioInputType   = HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_SPDIF;
static HI_U32 g_Audiotype        = 0;
static HI_U32 g_ForceDVIFlag     = HI_FALSE;
static HI_U32 g_HDMI_Bebug       = HI_FALSE;
static HI_U32 g_HDMIUserCallbackFlag = HI_FALSE;
static HI_U32 g_HDMIForceMode    = HI_UNF_HDMI_FORCE_HDMI;//HI_UNF_HDMI_FORCE_NULL;
static HI_U32 g_CompressFlag     = HI_FALSE;
static HI_U32 HDCPFailCount = 0;

static User_HDMI_CallBack pfnHdmiUserCallback = NULL;
//#define HI_HDCP_SUPPORT
#ifdef HI_HDCP_SUPPORT
const HI_CHAR * pstencryptedHdcpKey = "EncryptedKey_332bytes.bin";
#endif

static HI_U8 u8DecOpenBuf[1024];
static HI_U8 u8EncOpenBuf[1024];


static HI_HANDLE ghWin;
static HI_HANDLE ghAvplay;

/**************************** Global  Function ********************/

//static MI_BOOL mlm_VIDEO_GetHandle(MI_U8 pu8DecPath);


/**************************** End Global Function ********************/

#if 0
#define MLAV_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLAV_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLAV_ERR(fmt, args...)  {}
#define MLAV_DEBUG(fmt, args...) {}
#endif

#define mlmm_avctr_MaxStreamType 3

//-------------------------------------------------------------------------------------------------
//  Local Variables
//-------------------------------------------------------------------------------------------------



//-------------------------------------------------------------------------------------------------
//  Local Functions
//-------------------------------------------------------------------------------------------------

static HI_VOID _MLMF_AV_HDMI_PrintAttr(HI_UNF_HDMI_ATTR_S *pstHDMIAttr)
{
    if (HI_TRUE != g_HDMI_Bebug)
    {
        return;
    }
    
    printf("=====HI_UNF_HDMI_SetAttr=====\n"
           "bEnableHdmi:%d\n"
           "bEnableVideo:%d\n"
           "enVideoFmt:%d\n\n"
           "enVidOutMode:%d\n"
           "enDeepColorMode:%d\n"
           "bxvYCCMode:%d\n\n"     
           "bEnableAudio:%d\n"   
           "eSoundIntf;%d\n"    
           "bIsMultiChannel:%d\n"
           "enSampleRate:%d\n\n"
           "enBitDepth:%d\n"
           "u8I2SCtlVbit:%d\n\n"
           "bEnableAviInfoFrame:%d\n"
           "bEnableAudInfoFrame:%d\n"
           "bEnableSpdInfoFrame:%d\n"
           "bEnableMpegInfoFrame:%d\n\n"
           "bDebugFlag:%d\n"
           "==============================\n",
           pstHDMIAttr->bEnableHdmi,
           pstHDMIAttr->bEnableVideo,pstHDMIAttr->enVideoFmt,
           pstHDMIAttr->enVidOutMode,pstHDMIAttr->enDeepColorMode,pstHDMIAttr->bxvYCCMode,
           pstHDMIAttr->bEnableAudio,pstHDMIAttr->enSoundIntf,pstHDMIAttr->bIsMultiChannel,pstHDMIAttr->enSampleRate,
           pstHDMIAttr->enBitDepth,pstHDMIAttr->u8I2SCtlVbit,
           pstHDMIAttr->bEnableAudInfoFrame,pstHDMIAttr->bEnableAudInfoFrame,
           pstHDMIAttr->bEnableSpdInfoFrame,pstHDMIAttr->bEnableMpegInfoFrame,
           pstHDMIAttr->bDebugFlag);
    return;
}

static void _MLMF_AV_HDMI_HotPlug_Proc(HI_VOID *pPrivateData)
{
    HI_S32          ret = HI_SUCCESS;
    HDMI_ARGS_S     *pArgs  = (HDMI_ARGS_S*)pPrivateData;
    HI_UNF_HDMI_ID_E       hHdmi   =  pArgs->enHdmi;
    HI_UNF_HDMI_ATTR_S             stHdmiAttr;
    //HI_UNF_HDMI_INFOFRAME_S        stInfoFrame;
    HI_UNF_HDMI_SINK_CAPABILITY_S   stSinkCap;
    
#ifdef HI_HDCP_SUPPORT
    static HI_U8 u8FirstTimeSetting = HI_TRUE;
#endif

    printf("\n --- Get HDMI event: HOTPLUG. --- \n");     

    HI_UNF_HDMI_GetAttr(hHdmi, &stHdmiAttr);
    ret = HI_UNF_HDMI_GetSinkCapability(hHdmi, &stSinkCap);    
    if (HI_FALSE == stSinkCap.bConnected)
    {
       printf("No Connect\n");
       return;
    }  

    if(ret == HI_SUCCESS)
    {
        //stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_YCBCR444;
        if(HI_TRUE == stSinkCap.bSupportHdmi)
        {
            stHdmiAttr.bEnableHdmi = HI_TRUE;
            if(HI_TRUE != stSinkCap.bSupportYCbCr)
            {
                stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            }
        }
        else
        {
            stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            //读取到了edid，并且不支持hdmi则进入dvi模式
            //read real edid ok && sink not support hdmi,then we run in dvi mode
            stHdmiAttr.bEnableHdmi = HI_FALSE;
        }
    }
    else
    {
        //when get capability fail,use default mode
        if(g_HDMIForceMode != HI_UNF_HDMI_FORCE_DVI)
            stHdmiAttr.bEnableHdmi = HI_TRUE;
        else
            stHdmiAttr.bEnableHdmi = HI_FALSE;
    }
    
    if(HI_TRUE == stHdmiAttr.bEnableHdmi)
    {
        stHdmiAttr.bEnableAudio = HI_TRUE;
        stHdmiAttr.bEnableVideo = HI_TRUE;
        stHdmiAttr.bEnableAudInfoFrame = HI_TRUE;
        stHdmiAttr.bEnableAviInfoFrame = HI_TRUE;
    }
    else
    {
        stHdmiAttr.bEnableAudio = HI_FALSE;
        stHdmiAttr.bEnableVideo = HI_TRUE;
        stHdmiAttr.bEnableAudInfoFrame = HI_FALSE;
        stHdmiAttr.bEnableAviInfoFrame = HI_FALSE;
        stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
    }
    
#ifdef HI_HDCP_SUPPORT
    if (u8FirstTimeSetting == HI_TRUE)
    {
        u8FirstTimeSetting = HI_FALSE;
        if (g_HDCPFlag == HI_TRUE)
        {
            stHdmiAttr.bHDCPEnable = HI_TRUE;//Enable HDCP
        }
        else
        {
            stHdmiAttr.bHDCPEnable= HI_FALSE;
        }
    }
    else
    {
        //HDCP Enable use default setting!!
    }
#endif

    ret = HI_UNF_HDMI_SetAttr(hHdmi, &stHdmiAttr);

    /* HI_UNF_HDMI_SetAttr must before HI_UNF_HDMI_Start! */
    ret = HI_UNF_HDMI_Start(hHdmi);
    _MLMF_AV_HDMI_PrintAttr(&stHdmiAttr);

    return;
}

static HI_VOID _MLMF_AV_HDMI_UnPlug_Proc(HI_VOID *pPrivateData)
{
    HDMI_ARGS_S     *pArgs  = (HDMI_ARGS_S*)pPrivateData;
    HI_HANDLE       hHdmi   =  pArgs->enHdmi;
    
    printf("\n --- Get HDMI event: UnPlug. --- \n");
    HI_UNF_HDMI_Stop(hHdmi);
#if 0
	HI_DOLBY_GetPassThrough(&HdmiPassThrough, &SpdifPassThrough);
    if (SpdifPassThrough||HdmiPassThrough) 
    {
//	     HI_MPI_HIAO_SetSpdifCompatible(HI_TRUE);//force hdmi to dd
         SetSpdifPassThrough(HI_TRUE); //none->dd
	  	 SetHdmiPassThrough(HI_TRUE);
	}  
	else if ((!SpdifPassThrough) && (!HdmiPassThrough)) //pcm pcm
	{
        SetSpdifPassThrough(HI_FALSE); 
		SetHdmiPassThrough(HI_FALSE);
	}
#endif

    
    return;
}

static HI_VOID _MLMF_AV_HDMI_HdcpFail_Proc(HI_VOID *pPrivateData)
{
    printf("\n --- Get HDMI event: HDCP_FAIL. --- \n");
    
    HDCPFailCount ++ ;
    if(HDCPFailCount >= 50)
    {
        HDCPFailCount = 0;
        printf("\nWarrning:Customer need to deal with HDCP Fail!!!!!!\n");
    }
    return;
}

static HI_VOID _MLMF_AV_HDMI_HdcpSuccess_Proc(HI_VOID *pPrivateData)
{
    printf("\n --- Get HDMI event: HDCP_SUCCESS. --- \n");
    return;
}

static HI_VOID _MLMF_AV_HDMI_Event_Proc(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    
    switch ( event )
    {
        case HI_UNF_HDMI_EVENT_HOTPLUG:
            _MLMF_AV_HDMI_HotPlug_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_NO_PLUG:
            _MLMF_AV_HDMI_UnPlug_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_EDID_FAIL:
            break;
        case HI_UNF_HDMI_EVENT_HDCP_FAIL:
            _MLMF_AV_HDMI_HdcpFail_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_HDCP_SUCCESS:
            _MLMF_AV_HDMI_HdcpSuccess_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_RSEN_CONNECT:
            //printf("HI_UNF_HDMI_EVENT_RSEN_CONNECT**********\n");
            break;
        case HI_UNF_HDMI_EVENT_RSEN_DISCONNECT:
            //printf("HI_UNF_HDMI_EVENT_RSEN_DISCONNECT**********\n");
            break;
        default:
            break;
    }
    /* Private Usage */
    if ((g_HDMIUserCallbackFlag == HI_TRUE) && (pfnHdmiUserCallback != NULL))
    {
        pfnHdmiUserCallback(event, NULL);
    }
    
    return;
}

#ifdef HI_HDCP_SUPPORT
static HI_S32 _MLMF_AV_HDMI_SetHDCPKey(HI_UNF_HDMI_ID_E enHDMIId)
{
	HI_UNF_HDMI_LOAD_KEY_S stLoadKey;
	FILE *pBinFile;
	HI_U32 u32Len;
	HI_U32 u32Ret;

	pBinFile = fopen(pstencryptedHdcpKey, "rb");
	if(HI_NULL == pBinFile)
	{
		printf("can't find key file\n");
		return HI_FAILURE;
	}
	fseek(pBinFile, 0, SEEK_END);
	u32Len = ftell(pBinFile);
	fseek(pBinFile, 0, SEEK_SET);

	stLoadKey.u32KeyLength = u32Len; //332
	stLoadKey.pu8InputEncryptedKey  = (HI_U8*)malloc(u32Len);
	if(HI_NULL == stLoadKey.pu8InputEncryptedKey)
	{
		printf("malloc erro!\n");
		fclose(pBinFile);
		return HI_FAILURE;
	}
	if (u32Len != fread(stLoadKey.pu8InputEncryptedKey, 1, u32Len, pBinFile))
	{
		printf("read file %d!\n", __LINE__);
		fclose(pBinFile);
		free(stLoadKey.pu8InputEncryptedKey);
		return HI_FAILURE;
	}

	u32Ret = HI_UNF_HDMI_LoadHDCPKey(enHDMIId,&stLoadKey);
	free(stLoadKey.pu8InputEncryptedKey);
	fclose(pBinFile);

	return u32Ret;
}
#endif

static HI_VOID _MLMF_AV_HDMI_PinConfig(HI_VOID)
{
     return ;
    //Pilot
    HI_SYS_WriteRegister(0x10203014, 0x2);
    HI_SYS_WriteRegister(0x10203018, 0x2);
    HI_SYS_WriteRegister(0x10203020, 0x1);     
}

static HI_S32 _MLMF_AV_HDMI_SetAdecAttr(HI_UNF_SND_INTERFACE_E enInterface, HI_UNF_SAMPLE_RATE_E enRate)
{
    if (enRate)
    {
        g_AudioFreq = enRate;
    }

    if (enInterface)
    {
        g_AudioInputType = enInterface;
    }
    return 0;
}


static HI_S32 _MLMF_AV_HDMI_Init(HI_UNF_HDMI_ID_E enHDMIId, HI_UNF_ENC_FMT_E enWantFmt)
{
    HI_U32 Ret = HI_FAILURE;
    HI_UNF_HDMI_INIT_PARA_S stHdmiInitParam;
    
    _MLMF_AV_HDMI_PinConfig();
    
    g_stHdmiArgs.enHdmi       = enHDMIId;
    g_stHdmiArgs.enWantFmt    = enWantFmt;
    if(g_AudioFreq == HI_UNF_SAMPLE_RATE_UNKNOWN)
    {
        g_stHdmiArgs.AudioFreq         = HI_UNF_SAMPLE_RATE_48K;
        g_stHdmiArgs.AduioBitPerSample = 16;
        g_stHdmiArgs.AudioChannelNum   = 2;
        g_stHdmiArgs.AudioInputType    = HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_SPDIF;
        g_stHdmiArgs.ForceHDMIFlag     = HI_FALSE;
    }
    else
    {
        g_stHdmiArgs.AudioFreq         = g_AudioFreq;
        g_stHdmiArgs.AduioBitPerSample = g_AduioBitPerSample;
        g_stHdmiArgs.AudioChannelNum   = g_AudioChannelNum;
        g_stHdmiArgs.AudioInputType    = g_AudioInputType;
        g_stHdmiArgs.ForceHDMIFlag     = HI_FALSE;
    }
    
    stHdmiInitParam.pfnHdmiEventCallback = _MLMF_AV_HDMI_Event_Proc;
    stHdmiInitParam.pCallBackArgs        = &g_stHdmiArgs;
    stHdmiInitParam.enForceMode          = g_HDMIForceMode;//HI_UNF_HDMI_FORCE_NULL;
    printf("HDMI Init Mode:%d\n", stHdmiInitParam.enForceMode);
    Ret = HI_UNF_HDMI_Init(&stHdmiInitParam);
    if (HI_SUCCESS != Ret)
    {
        printf("HI_UNF_HDMI_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }
    
#ifdef HI_HDCP_SUPPORT
	Ret = _MLMF_AV_HDMI_SetHDCPKey(enHDMIId);
	if (HI_SUCCESS != Ret)
    {
        printf("Set hdcp erro:%#x\n",Ret);
		//return HI_FAILURE;
    }
#endif

    Ret = HI_UNF_HDMI_Open(enHDMIId);
    if (Ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_Open failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}


static HI_S32 _MLMF_AV_HDMI_DeInit(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_U32 Ret = HI_FAILURE;

    Ret =  HI_UNF_HDMI_Stop(enHDMIId);
    if (Ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_Stop failed:%#x\n",Ret);
    }
    
    Ret = HI_UNF_HDMI_Close(enHDMIId);
    if (Ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_Close failed:%#x\n",Ret);
    }
    Ret = HI_UNF_HDMI_DeInit(); 
    if (Ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_DeInit failed:%#x\n",Ret);
    }
       
    return HI_SUCCESS;
}


static HI_S32 _MLMF_AV_Disp_Init(HI_UNF_ENC_FMT_E enFormat)
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

    Ret = _MLMF_AV_HDMI_Init(HI_UNF_HDMI_ID_0,enFormat);
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



static HI_S32 _MLMF_AV_VO_Init(HI_UNF_VO_DEV_MODE_E enDevMode)
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


static HI_S32 _MLMF_AV_VO_CreatWin(HI_RECT_S *pstWinRect,HI_HANDLE *phWin)
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


static HI_S32 _MLMF_AV_Snd_Init(HI_VOID)
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

static HI_S32 _MLMF_AV_AVPlay_RegADecLib()
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

HI_S32 _MLMF_AV_SetAdecAttr(HI_HANDLE hAvplay, HI_U32 enADecType, HI_HA_DECODEMODE_E enMode, HI_S32 isCoreOnly)
{
    HI_UNF_ACODEC_ATTR_S AdecAttr;
    WAV_FORMAT_S stWavFormat;

    HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &AdecAttr);
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

    HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &AdecAttr);

    return HI_SUCCESS;
}

static HA_CODEC_ID_E mlm_GetAudioPlayType(MMT_AV_StreamType_E  Type)
{
    HA_CODEC_ID_E stRet = HA_AUDIO_ID_MP2;
    MLAV_DEBUG("--->Get audio type = %d",Type);
    switch(Type)
    {
        case MM_STREAMTYPE_INVALID:
            stRet = HA_AUDIO_ID_MP2;
            break;
            
        case MM_STREAMTYPE_MP1A:
            /* Audio    : MPEG 1 Layer I                       */
            stRet = HA_AUDIO_ID_MP2;
            break;
            
        case MM_STREAMTYPE_MP2A:
            /* Audio    : MPEG 1 Layer II                      */
            stRet = HA_AUDIO_ID_MP2;
            break;
            
        case MM_STREAMTYPE_MP4A :
            /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
            stRet = HA_AUDIO_ID_AAC;
            break;
            
        case MM_STREAMTYPE_AC3:
            /* Audio    : AC3                                  */
            stRet = HA_AUDIO_ID_DOLBY_PLUS;
            break;
            
        case MM_STREAMTYPE_AAC:
            /* Audio    : Decode ADTS - AAC                    */
            stRet = HA_AUDIO_ID_AAC;
            break;
            
        case MM_STREAMTYPE_DDPLUS:
            /* Audio    : DD+ Dolby digital                    */
            stRet = HA_AUDIO_ID_DOLBY_PLUS;
            break;
            
        case MM_STREAMTYPE_DTS:
            /* Audio    : DTS                                  */
            stRet = HA_AUDIO_ID_DTSHD;
            break;
            
        default:
            stRet = HA_AUDIO_ID_MP2;
            break;
    }
    return stRet;
}

static HI_UNF_VCODEC_TYPE_E mlm_GetVideoPlayType(MMT_AV_StreamType_E  Type)
{
    HI_UNF_VCODEC_TYPE_E stRet = HI_UNF_VCODEC_TYPE_MPEG2;
    MLAV_DEBUG("--->Get video type = %d",Type);
    switch(Type)
    {
        case MM_STREAMTYPE_INVALID:
            stRet = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
            
        case MM_STREAMTYPE_MP1V:
        case MM_STREAMTYPE_MP2V:
            /* Video    : MPEG1 , MPEG2                         */
            stRet = HI_UNF_VCODEC_TYPE_MPEG2;
            break;

        case MM_STREAMTYPE_H264:
            /* Video    : H264                                 */
            stRet = HI_UNF_VCODEC_TYPE_H264;
            break;
            
        case MM_STREAMTYPE_MPEG4P2:
            /* Video    : MPEG4 Part II                        */
            stRet = HI_UNF_VCODEC_TYPE_MPEG4;
            break;
            
        case MM_STREAMTYPE_VC1:
            /* Video    : Decode Simple/Main/Advanced profile  */
            stRet = HI_UNF_VCODEC_TYPE_VC1;
            break;

        case MM_STREAMTYPE_AVS:
            /* Video    : AVS Video format                     */
            stRet = HI_UNF_VCODEC_TYPE_AVS;
            break;
            
        case MM_STREAMTYPE_OTHER:
            stRet = HI_UNF_VCODEC_TYPE_MPEG2;
            break;

        default:
            stRet = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
    }
    return stRet;
}

/**************************** End Local Function ********************/



/*
*视音频播放接口
*/
/*
*视音视播放模块用于视音频播放的启动停止及PID更新。
*任何接口都可能被重入，底层必须实现视音视播放模块各接口的互斥访问，
*不能存在两个接口同时被执行的情况。
*/

/*
*说明：播放音视频。
*输入参数：
*			u32PidNumber: pstPidList中包含的PID 个数。
*			pstPidList: 要播放的PID列表，每个PID有对应的媒体类型。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_Start(MBT_U32 u32PidNumber,MST_AV_StreamData_T *pstPidList,MBT_BOOL bAudioOpen,MBT_VOID (*GetFram)(MMT_AV_Event_e eEvent))
{
	int ret = 0;
	unsigned int _Vidtype = 0,_Audtype = 0;  //default mepg2
	unsigned int _PcrPid = MM_PTI_INVALIDPID,_VidPid = MM_PTI_INVALIDPID,_AudPid = MM_PTI_INVALIDPID;
	
	HI_UNF_AVPLAY_STATUS_INFO_S _avstatus;
	HI_UNF_VCODEC_ATTR_S        VdecAttr;
	
	if(pstPidList==NULL) 
	{
		MLAV_ERR("Pid list is null!!!");
		return MM_ERROR_BAD_PARAMETER;
	}

	ret = HI_UNF_AVPLAY_GetStatusInfo(ghAvplay,&_avstatus);

	if (HI_UNF_AVPLAY_STATUS_STOP != _avstatus.enRunStatus)
	{
		MLMF_AV_Stop();
		//DxVidStop(DecoderID,gsAvSwitchFrameMod);
	}

	_VidPid = pstPidList[0].Pid;
	_PcrPid = pstPidList[2].Pid;
	_AudPid = pstPidList[1].Pid;

	if(u32PidNumber > mlmm_avctr_MaxStreamType)
	{
		u32PidNumber = mlmm_avctr_MaxStreamType;
	}
	_Vidtype = mlm_GetVideoPlayType(pstPidList[0].Type);
	_Audtype = mlm_GetAudioPlayType(pstPidList[1].Type);

	if(_PcrPid != MM_PTI_INVALIDPID)
	{
		ret |= HI_UNF_AVPLAY_SetAttr(ghAvplay,HI_UNF_AVPLAY_ATTR_ID_PCR_PID,&_PcrPid);
	}

	if(_VidPid != MM_PTI_INVALIDPID)
	{
		ret |= HI_UNF_AVPLAY_GetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
		VdecAttr.enType = _Vidtype;
		VdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
		VdecAttr.u32ErrCover = 100;
		VdecAttr.u32Priority = 3;
		ret |= HI_UNF_AVPLAY_SetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);

		ret |= HI_UNF_AVPLAY_SetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID,&_VidPid);
		ret |= HI_UNF_AVPLAY_Start(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
	}
    
	if(_AudPid != MM_PTI_INVALIDPID)
	{
		ret |= _MLMF_AV_SetAdecAttr(ghAvplay, _Audtype, HD_DEC_MODE_RAWPCM, 1);
		ret |= HI_UNF_AVPLAY_SetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &_AudPid);
		ret |= HI_UNF_AVPLAY_Start(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	}

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;

}


/*
*说明：停止正在播放的AV。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_Stop(MBT_VOID)
{
	HI_S32 ret = HI_SUCCESS;
	HI_UNF_AVPLAY_STOP_OPT_S StopAttr;

	StopAttr.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
	StopAttr.u32TimeoutMs = 0;

	ret = HI_UNF_AVPLAY_Stop(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &StopAttr);
	ret |= HI_UNF_AVPLAY_Stop(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：设置视频的位置大小。还原视频是恢复到当前全屏的状态。
*输入参数：
*Port_X：显示在图层的x 坐标。
*Port_Y：显示在图层的y 坐标。
*Width：显示的视频区域宽,若其值为0则表示恢复全屏。
*Height：显示的视频区域高,若其值为0则表示恢复全屏。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetVideoWindow(MBT_S32 Port_X,
																MBT_S32 Port_Y,
																MBT_U32 Width,
																MBT_U32 Height)
{
	HI_S32 ret = HI_SUCCESS;
	HI_UNF_WINDOW_ATTR_S   WinAttr;
	HI_UNF_VO_GetWindowAttr(ghWin,&WinAttr);

	if(0 == Width|| 0 == Height)
	{
		Width = 1280;
		Height = 720;
	}

	WinAttr.stOutputRect.s32X = Port_X*WinAttr.stInputRect.s32Width/1280;
	WinAttr.stOutputRect.s32Y = Port_Y*WinAttr.stInputRect.s32Height/720;
	WinAttr.stOutputRect.s32Width = Width*WinAttr.stInputRect.s32Width/1280;
	WinAttr.stOutputRect.s32Height = Height*WinAttr.stInputRect.s32Height/720;

	HI_UNF_VO_SetWindowAttr(ghWin,&WinAttr);

	return MM_NO_ERROR;
}

/*
*说明：打开视频播放窗口。可能存在重复打开的情况，底层需要考察当前状态，如果已经打开则直接返回正确。
*输入参数：
*无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_OpenVideoWindow (MBT_VOID)
{
	HI_UNF_VO_SetWindowEnable(ghWin,HI_TRUE);
	return MM_NO_ERROR;
}


/*
*说明：关闭视频播放窗口。可能存在重复关闭的情况，底层需要考察当前状态，如果已经关闭则直接返回正确。
*输入参数：
*无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_CloseVideoWindow (MBT_VOID)
{
	HI_UNF_VO_SetWindowEnable(ghWin,HI_FALSE);
	return MM_NO_ERROR;
}


/*
*说明：设置高清输出接口的显示模式（分辨率）,高清机顶盒专用，标清可把此函数放空。
*输入参数：
*			eResolution: 显示模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetHDOutVideoMode(MMT_AV_HDResolution_E eResolution)
{
	HI_UNF_ENC_FMT_E enFormat;
	HI_UNF_ENC_FMT_E eGetTVSys;
	HI_BOOL b_switch = HI_FALSE;
	HI_S32                  Ret = 0;
	
	MLF_OSD_SetCurVideoMode(eResolution);
	
	switch(eResolution)
	{
	    case MM_AV_RESOLUTION_AUTO:
	        break;	
	    case MM_AV_RESOLUTION_AUTO_N:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_SD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_NTSC)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_NTSC;
	        }
	        break;
	        
	    case MM_AV_RESOLUTION_AUTO_P:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_SD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_PAL)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_PAL;
	        }
	        break;

	    case MM_AV_RESOLUTION_1080i_A:
	    case MM_AV_RESOLUTION_1080i_P:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_1080i_50)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_1080i_50;
	        }
	        break;
	        
	    case MM_AV_RESOLUTION_1080i_N:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_1080i_60)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_1080i_60;
	        }
	        break; 

	    case MM_AV_RESOLUTION_1080p_A:
	    case MM_AV_RESOLUTION_1080p_P:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_1080P_50)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_1080P_50;
	        }
	        break; 
	        
	    case MM_AV_RESOLUTION_1080p_N:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_1080P_60)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_1080P_60;
	        }
	        break;  
	        
	    case MM_AV_RESOLUTION_720p_A:
	    case MM_AV_RESOLUTION_720p_N:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_720P_60)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_720P_60;
	        }
	        break;
	        
	    case MM_AV_RESOLUTION_720p_P:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_720P_50)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_720P_50;
	        }
	        break;
	    case MM_AV_RESOLUTION_576i_P:		
	    case MM_AV_RESOLUTION_576p_P:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_576P_50)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_576P_50;
	        }
	        break;
	    case MM_AV_RESOLUTION_480i_N:    
	    case MM_AV_RESOLUTION_480p_N:
	        HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_480P_60)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_480P_60;
	        }
	        break;
	            
	    default:
		HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,&eGetTVSys);
	        if(eGetTVSys != HI_UNF_ENC_FMT_1080i_50)
	        {
	            b_switch = HI_TRUE;
	            enFormat = HI_UNF_ENC_FMT_1080i_50;
	        }	
	        break;
	}

	if (b_switch)
	{
		Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, enFormat);  

		if ((HI_UNF_ENC_FMT_1080P_60 == enFormat)
		||(HI_UNF_ENC_FMT_1080i_60 == enFormat)
		||(HI_UNF_ENC_FMT_720P_60 == enFormat)
		||(HI_UNF_ENC_FMT_480P_60 == enFormat))
		{
			Ret |= HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, HI_UNF_ENC_FMT_NTSC);
		}

		if ((HI_UNF_ENC_FMT_1080P_50 == enFormat)
		||(HI_UNF_ENC_FMT_1080i_50 == enFormat)
		||(HI_UNF_ENC_FMT_720P_50 == enFormat)
		||(HI_UNF_ENC_FMT_576P_50 == enFormat))
		{
			Ret |= HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, HI_UNF_ENC_FMT_PAL);
		}
	}

	if(0 != Ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：设置音频的声道。
*输入参数：
*			mode: 输入参数，声道模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/

MMT_STB_ErrorCode_E MLMF_AV_SetAudioMode(MMT_AV_StereoMode_E mode)
{
	HI_S32 ret = HI_SUCCESS;
	HI_UNF_TRACK_MODE_E trackMode =HI_UNF_TRACK_MODE_DOUBLE_LEFT;

	switch(mode)
	{
	    case MM_AUD_MONO_LEFT:
	        trackMode = HI_UNF_TRACK_MODE_DOUBLE_LEFT;
	        break;

	    case MM_AUD_MONO_RIGHT:
	        trackMode = HI_UNF_TRACK_MODE_DOUBLE_RIGHT;
	        break;
	        
	    case MM_AUD_DUAL_STEREO:
	        trackMode = HI_UNF_TRACK_MODE_STEREO;
	        break;
	    default:
	        trackMode = HI_UNF_TRACK_MODE_STEREO;
	        break;
	}

	ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, trackMode);

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：设置音频静音状态。
*输入参数：
*			Flag：输入参数， =1，静音，=0，恢复音量。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功
*			错误号：失败
*/

MMT_STB_ErrorCode_E MLMF_AV_SetMute(MBT_BOOL bMute)
{
	HI_S32 ret = HI_SUCCESS;

	if (bMute)
	{
		ret = HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_TRUE);	
	}
	else
	{
		ret = HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_FALSE);
	}

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}



/*
*说明：设置视频的比例模式，16:9或者4：3。
*输入参数：
*			Mode: 设置的比例模式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetAspectRatio(MMT_AV_VideoAspectRatio_E mode)
{
	HI_S32 ret = HI_SUCCESS;
	HI_UNF_WINDOW_ATTR_S   WinAttr;
	HI_UNF_ASPECT_CVRS_E eAR;
    	HI_UNF_ASPECT_RATIO_E eTVAR;

	switch(mode)
	{
	    case MM_VIDEO_ASPECT_RATIO_AUTO:
	        eAR = HI_UNF_ASPECT_CVRS_IGNORE;
	        eTVAR = HI_UNF_ASPECT_RATIO_16TO9;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_16_9_PILLAR:
	        eAR = HI_UNF_ASPECT_CVRS_LETTERBOX;
	        eTVAR = HI_UNF_ASPECT_RATIO_16TO9;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_16_9_PAN:
	        eAR = HI_UNF_ASPECT_CVRS_PANANDSCAN;
	        eTVAR = HI_UNF_ASPECT_RATIO_16TO9;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_4_3_LETTER:
	        eAR = HI_UNF_ASPECT_CVRS_LETTERBOX;
	        eTVAR = HI_UNF_ASPECT_RATIO_4TO3;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_4_3_PAN:
	        eAR = HI_UNF_ASPECT_CVRS_PANANDSCAN;
	        eTVAR = HI_UNF_ASPECT_RATIO_4TO3;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_4_3_FULL:
	        eAR = HI_UNF_ASPECT_CVRS_IGNORE;
	        eTVAR = HI_UNF_ASPECT_RATIO_4TO3;
	        break;
	    case MM_VIDEO_ASPECT_RATIO_16_9_WIDE:
	        eAR = HI_UNF_ASPECT_CVRS_IGNORE;
	        eTVAR = HI_UNF_ASPECT_RATIO_16TO9;
	        break;
	    default:    
	        eAR = HI_UNF_ASPECT_CVRS_IGNORE;
	        eTVAR = HI_UNF_ASPECT_RATIO_16TO9;
	        break;
	}
	
	ret = HI_UNF_VO_GetWindowAttr(ghWin,&WinAttr);
	WinAttr.enAspectRatio = eTVAR;
	WinAttr.enAspectCvrs = eAR;
	ret |= HI_UNF_VO_SetWindowAttr(ghWin,&WinAttr);

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：设置音量大小。
*输入参数：
*			Volume: 输入参数，音量大小（0-100）。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetVolume(MBT_U32 volume)
{
	HI_S32 ret = HI_SUCCESS;
	
	ret = HI_UNF_SND_SetVolume(HI_UNF_SND_0, volume);

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：设置图像的亮度。
*输入参数：
*			Brightness: 要设置的亮度值(0~255)。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetBrightness(MBT_U8 Brightness)
{
	return MM_NO_ERROR;
	HI_UNF_DISP_SetBrightness(HI_UNF_DISP_HD0,((Brightness*100)/255));
	HI_UNF_DISP_SetBrightness(HI_UNF_DISP_SD0,((Brightness*100)/255));

	return MM_NO_ERROR;
}


/*
*说明：设置图像的对比度(0~255)。
*输入参数：
*           Contrast: 图像的对比度。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetContrast(MBT_U8 Contrast)
{
	return MM_NO_ERROR;
	HI_UNF_DISP_SetContrast(HI_UNF_DISP_HD0,((Contrast*100)/255));
	HI_UNF_DISP_SetContrast(HI_UNF_DISP_SD0,((Contrast*100)/255));

	return MM_NO_ERROR;
}

    
/*
*说明：设置图像的饱和度(0~255)。
*输入参数：
*           Saturation: 图像的饱和度。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetSaturation(MBT_U8 Saturation)
{
	return MM_NO_ERROR;
	HI_UNF_DISP_SetSaturation(HI_UNF_DISP_HD0,((Saturation*100)/255));
	HI_UNF_DISP_SetSaturation(HI_UNF_DISP_SD0,((Saturation*100)/255));

	return MM_NO_ERROR;
}


/*
*说明：设置图像的明锐度(0~235)。
*输入参数：
*           Sharpness: 图像的明锐度。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetSharpness(MBT_U8 Sharpness)
{
	return MM_NO_ERROR;
}


/*
*说明：设置图像的色调(0~235)。
*输入参数：
*           Hue: 图像的色调。
*输出参数:
*           无。
*       返回：
*       MM_NO_ERROR:成功。
*           错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetHue(MBT_U8 Hue)
{
	HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_HD0,((Hue*100)/235));
	HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_SD0,((Hue*100)/235));

	return MM_NO_ERROR;
}


/*
*说明：注册视频状态改变回调函函数。当视频流的制式或宽高比改变时调用此回调函数来通知上层。
*输入参数：
*videoModeChangeCall：当节目流的制式或宽高比发生变化时调用此回调通知上层。
*输出参数:
*			无。
*		返回：
*		         无。
*/
MBT_VOID MLMF_AV_VideoModeNotify(MBT_VOID (*videoModeChangeCall)(MMT_AV_SDVideoMode_E stVideoMode,MMT_AV_VideoAspectRatio_E stVideoAspect))
{
	
}


/*
*说明：清除视频framebuffer。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_VideoClear(MBT_VOID)
{
	HI_S32 ret = HI_SUCCESS;
	ret = HI_UNF_VO_ResetWindow(ghWin,HI_UNF_WINDOW_FREEZE_MODE_BLACK);

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


/*
*说明：往视频缓冲区里注入数据，播放注入的数据。
*输入参数：
*			Data: 注入的数据。
*			Len: Data长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_VideoInjectFrame(MBT_U8 *data, MBT_U32 len)
{
	
}


/*
*说明：停止视频数据注入。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_VideoInjectStop(MBT_VOID)
{
	
}


/*
*说明：播放一段内存音频数据。
*输入参数：
*			MediaType: 播放媒体数据的类型，具体请看MMT_AV_AudioMediaTpye_E。
*			Data: 媒体数据。
*			Len: 数据长度。
*Param: 播放的相关参数，如果是PCM，则参数是MST_AV_MediaPcm_T结构，否则为MBT_ NULL。
*AudioPlayCompleteCall :音频数据播放完调用此函数通知上层
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_AudioPlayData(
                                                            MMT_AV_AudioMediaTpye_E MediaType,
                                                            MBT_U8* data,
                                                            MBT_U32 len,
                                                            MBT_VOID *param,
                                                            MBT_VOID (*AudioPlayCompleteCall)(MBT_U8* data )
                                                            )
{
    //not use
    return MM_NO_ERROR;
}

/*
*说明：停止播放一段内存音频数据。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataStop(MBT_VOID)
{
    //not use
    return MM_NO_ERROR;
}

/*
*说明：暂停播放一段内存音频数据。与MLMF_AV_AudioPlayDataResume成对调用。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataPause(MBT_VOID)
{
    //not use
    return MM_NO_ERROR;
}

/*
*说明：重新开始播放一段内存音频数据。与MLMF_AV_AudioPlayDataPause成对调用。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_AudioPlayDataResume(MBT_VOID)
{
    //not use
    return MM_NO_ERROR;
}

/*
*说明：在不改变VIDEO PIDS的情况下，改变AUDIO PIDS，适用于多语言伴音的情况。
*输入参数：
*			PidsNum：PID的个数。
*			PLAYREC_StreamData：AUDIO 的PID。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_PlayChangeAudioPids(MBT_U32 PidsNum,MST_AV_StreamData_T *PLAYREC_StreamData)
{
	int ret = 0;
	unsigned int _Audtype = 0;  //default mepg2
	unsigned int _AudPid = MM_PTI_INVALIDPID;
	
	HI_UNF_AVPLAY_STATUS_INFO_S _avstatus;

	
	if(PLAYREC_StreamData==NULL) 
	{
		MLAV_ERR("Pid list is null!!!");
		return MM_ERROR_BAD_PARAMETER;
	}

	ret = HI_UNF_AVPLAY_GetStatusInfo(ghAvplay,&_avstatus);

	if (HI_UNF_AVPLAY_STATUS_STOP != _avstatus.enRunStatus)
	{
		HI_UNF_AVPLAY_Stop(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
	}

	_AudPid = PLAYREC_StreamData[1].Pid;

	_Audtype = mlm_GetAudioPlayType(PLAYREC_StreamData[1].Type);
    
	if(_AudPid != MM_PTI_INVALIDPID)
	{
		ret |= _MLMF_AV_SetAdecAttr(ghAvplay, _Audtype, HD_DEC_MODE_RAWPCM, 1);
		ret |= HI_UNF_AVPLAY_SetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &_AudPid);
		ret |= HI_UNF_AVPLAY_Start(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	}

	if(0 != ret) 
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;

}


/*
*视频图像接口
*/
/*
*说明：设置视频的电视制式。
*输入参数：
*			Mode: 电视制式。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_AV_SetVideoMode(MMT_AV_SDVideoMode_E mode)
{
	
}


/*
*说明：设置第二输出模式。有的CPU YUV输出跟S-video输出共用脚，
*所以需要在软件上切换，如果不重需要切则可以放空。
*输入参数：
*			stVoutMode:输出类型。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败
*/
MMT_STB_ErrorCode_E MLMF_AV_SetAuxVoutMode(MMT_AV_VOutMode_E stVoutMode)
{
    //not use
    return MM_NO_ERROR;
}


/*
*说明：获取音视频解码器的状态。如果音频解码器，视频解码器都没在工作，返回0；如果其中一个解码器在工作，则返回1；
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*			解码器状态：1表示有解码器在工作；0表示解码器都没在工作状态。
*/


MBT_U8 MLMF_AV_GetAVState(MBT_VOID)
{
	int ret = 0;
	HI_UNF_AVPLAY_STATUS_INFO_S _avstatus;
	
	ret = HI_UNF_AVPLAY_GetStatusInfo(ghAvplay,&_avstatus);

	if (HI_UNF_AVPLAY_STATUS_STOP != _avstatus.enRunStatus)
	{
		return 1;
	}

	return 0;
}


MMT_STB_ErrorCode_E MLMF_AV_Init(MBT_VOID)
{
	HI_S32 Ret;
	HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
	HI_UNF_SYNC_ATTR_S          SyncAttr;
	
	Ret = _MLMF_AV_Snd_Init();

	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = _MLMF_AV_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
	Ret |= _MLMF_AV_VO_CreatWin(HI_NULL,&ghWin);
	
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = _MLMF_AV_AVPlay_RegADecLib();
	Ret |= HI_UNF_AVPLAY_Init();
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
	Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &ghAvplay);
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = HI_UNF_AVPLAY_ChnOpen(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
	Ret |= HI_UNF_AVPLAY_ChnOpen(ghAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = HI_UNF_VO_AttachWindow(ghWin, ghAvplay);
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}
	Ret = HI_UNF_VO_SetWindowEnable(ghWin, HI_TRUE);
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, ghAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);

	Ret = HI_UNF_AVPLAY_GetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
	SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
	SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
	SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
	SyncAttr.bQuickOutput = HI_FALSE;
	Ret = HI_UNF_AVPLAY_SetAttr(ghAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}

	return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MLMF_AV_Disp_Init(MBT_VOID)
{
	HI_S32                  Ret;
	
	Ret = _MLMF_AV_Disp_Init(HI_UNF_ENC_FMT_1080i_50);
	
	if (HI_SUCCESS != Ret)
	{
		return MM_ERROR_UNKNOW;
	}
	 
	return MM_NO_ERROR;
}


MBT_VOID MLF_AV_EnableFastZap(MBT_VOID)
{
	
}


MBT_VOID MLF_AV_DisableFastZap(MBT_VOID)
{
	
}



//码流000 (2).ts
void MLF_AV_TestAudio(void)
{
	
}


/*
extern void MLF_AV_TestAudio(void);
MLMF_Print("---> Begin to lock!!!\n");
MLMF_Tuner_Lock(0,306,6875,2,NULL);//lock freq
MI_OS_DelayTask(10000);
MLF_AV_TestAudio();
*/


