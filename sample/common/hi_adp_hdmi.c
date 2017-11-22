#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "hi_unf_hdmi.h"
#include "hi_unf_disp.h"
#include "hi_adp.h"
#include "hi_adp_hdmi.h"

#include "hi_adp_audio.h"

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
HI_U32 g_HDCPFlag         = HI_FALSE;
HI_U32 g_AudioFreq        = HI_UNF_SAMPLE_RATE_48K;
HI_U32 g_AduioBitPerSample= 16;
HI_U32 g_AudioChannelNum  = 2;
HI_U32 g_AudioInputType   = HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_SPDIF;
HI_U32 g_Audiotype        = 0;
HI_U32 g_ForceDVIFlag     = HI_FALSE;
HI_U32 g_HDMI_Bebug       = HI_FALSE;
HI_U32 g_HDMIUserCallbackFlag = HI_FALSE;
HI_U32 g_HDMIForceMode    = HI_UNF_HDMI_FORCE_HDMI;//HI_UNF_HDMI_FORCE_NULL;
HI_U32 g_CompressFlag     = HI_FALSE;

User_HDMI_CallBack pfnHdmiUserCallback = NULL;
#define HI_HDCP_SUPPORT
#ifdef HI_HDCP_SUPPORT
const HI_CHAR * pstencryptedHdcpKey = "EncryptedKey_332bytes.bin";
#endif

HI_VOID HDMI_PrintSinkCap(HI_UNF_HDMI_SINK_CAPABILITY_S *pCapbility)
{
    HI_S32 i;

    if (!pCapbility->bConnected)
    {
        printf("\nHDMI Sink disconnected!\n");
        return;
    }

    
    printf("\nHDMI Sink connected!  Sink type is '%s'!\n", pCapbility->bSupportHdmi ? "HDMI" : "DVI");
    
    printf("\nHDMI Sink video cap :\n");
        
    for (i = 0; i < HI_UNF_ENC_FMT_BUTT; i++)
    {
        printf("%d, ", pCapbility->bVideoFmtSupported[i]);
    }
    printf("---END.\n");
    
    printf("Video native format: %d\n", pCapbility->enNativeVideoFormat);
    
    printf("\nHDMI Sink audio cap :\n");
        
    for (i = 0; i < HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT; i++)
    {
        printf("%d, ", pCapbility->bAudioFmtSupported[i]);
    }
    printf("---END.\n");
    
    printf("Max Audio PCM channels: %d\n", pCapbility->u32MaxPcmChannels);
}

HI_VOID HDMI_SetAudioCompress(HI_U32 CompressFlag)
{
    if(CompressFlag == HI_TRUE)
    {
        g_CompressFlag = HI_TRUE;
        g_stHdmiArgs.AudioInputType = HI_UNF_SND_INTERFACE_SPDIF;
    }
    else
    {
        g_CompressFlag = HI_FALSE;
        g_stHdmiArgs.AudioInputType = HI_UNF_SND_INTERFACE_I2S;
    }
}

static HI_VOID HDMI_PrintAttr(HI_UNF_HDMI_ATTR_S *pstHDMIAttr)
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


#if 0

HI_BOOL g_bHdmiPassThrough = HI_FALSE;
HI_BOOL g_bSpdifPassThrough = HI_FALSE;


static HI_VOID HI_DOLBY_GetPassThrough(HI_BOOL *HdmiPassThrough, HI_BOOL *SpdifPassThrough)
{	
	*HdmiPassThrough = g_bHdmiPassThrough;
	*SpdifPassThrough = g_bSpdifPassThrough;
}


extern HI_S32 HI_MPI_HIAO_SetSpdifCompatible(HI_BOOL bEnable);
static HI_BOOL HdmiPassThrough = HI_FALSE;
static HI_BOOL SpdifPassThrough = HI_FALSE;


#define SetSpdifPassThrough(state) do{\
		HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, state); \
		printf("> %s: [%d] HI_UNF_SND_SetSpdifPassThrough ( state =%d ).\n", __FUNCTION__, __LINE__,state); \
	}while(0)

#define SetHdmiPassThrough(state) do{\
		HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_0, state); \
		printf("> %s: [%d] HI_UNF_SND_SetHdmiPassThrough ( state =%d ).\n", __FUNCTION__, __LINE__,state); \
	}while(0)

#endif

unsigned int g_hotplug_counter = 0;

void HDMI_HotPlug_Proc(HI_VOID *pPrivateData)
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
    HDMI_PrintAttr(&stHdmiAttr);
    g_hotplug_counter ++;

    return;
}

HI_VOID HDMI_UnPlug_Proc(HI_VOID *pPrivateData)
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
static HI_U32 HDCPFailCount = 0;
HI_VOID HDMI_HdcpFail_Proc(HI_VOID *pPrivateData)
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

HI_VOID HDMI_HdcpSuccess_Proc(HI_VOID *pPrivateData)
{
    printf("\n --- Get HDMI event: HDCP_SUCCESS. --- \n");
    return;
}

HI_VOID HDMI_Event_Proc(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    
    switch ( event )
    {
        case HI_UNF_HDMI_EVENT_HOTPLUG:
            HDMI_HotPlug_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_NO_PLUG:
            HDMI_UnPlug_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_EDID_FAIL:
            break;
        case HI_UNF_HDMI_EVENT_HDCP_FAIL:
            HDMI_HdcpFail_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_HDCP_SUCCESS:
            HDMI_HdcpSuccess_Proc(pPrivateData);
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
HI_S32 HIADP_HDMI_SetHDCPKey(HI_UNF_HDMI_ID_E enHDMIId)
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



/*
hotplug:0x10203030 0x2 or 0x10203060 0x3
cec:0x1020303c 0x2 or 0x1020305c 0x3
scl&sda:0x10203044 0x1
*/
HI_VOID HDMI_PinConfig(HI_VOID)
{
     return ;
    //Pilot
    HI_SYS_WriteRegister(0x10203014, 0x2);
    HI_SYS_WriteRegister(0x10203018, 0x2);
    HI_SYS_WriteRegister(0x10203020, 0x1);     
}

HI_S32 HIADP_HDMI_SetAdecAttr(HI_UNF_SND_INTERFACE_E enInterface, HI_UNF_SAMPLE_RATE_E enRate)
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

HI_S32 HIADP_HDMI_Init(HI_UNF_HDMI_ID_E enHDMIId, HI_UNF_ENC_FMT_E enWantFmt)
{
    HI_U32 Ret = HI_FAILURE;
    HI_UNF_HDMI_INIT_PARA_S stHdmiInitParam;
    
    HDMI_PinConfig();
    
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
    
    stHdmiInitParam.pfnHdmiEventCallback = HDMI_Event_Proc;
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
	Ret = HIADP_HDMI_SetHDCPKey(enHDMIId);
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


HI_S32 HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_E enHDMIId)
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
       
    g_hotplug_counter = 0;
    return HI_SUCCESS;
}

