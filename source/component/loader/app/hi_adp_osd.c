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
#include "hi_adp_osd.h"
#include "upgrd_common.h"
#include "hi_adp_boardcfg.h"


#ifdef HI_ADVCA_FUNCTION_RELEASE
#include "ca_ssd.h"
#endif

#if defined(HI_LOADER_APPLOADER) && !defined(CHIP_TYPE_hi3110ev500)
typedef struct hiHDMI_ARGS_S
{
    HI_UNF_HDMI_ID_E     enHdmi;
    HI_UNF_ENC_FMT_E     enWantFmt;
    HI_UNF_SAMPLE_RATE_E AudioFreq;
    HI_U32               AduioBitPerSample;
    HI_U32               AudioChannelNum;
    HI_UNF_SND_INTERFACE_E AudioInputType;
    HI_U32               ForceHDMIFlag;
} HDMI_ARGS_S;

static HDMI_ARGS_S g_stHdmiArgs;

#if defined(CONFIG_SUPPORT_CA_DEBUG) || defined(CONFIG_SUPPORT_CA_RELEASE)
static HI_U32 g_HDCPFlag         = HI_TRUE;
#else
static HI_U32 g_HDCPFlag         = HI_FALSE;
#endif

static HI_U32 g_HDMIUserCallbackFlag = HI_FALSE;
static HI_U32 g_HDMIForceMode    = HI_UNF_HDMI_FORCE_HDMI;
static HI_UNF_HDMI_CallBack g_stCallbackFunc;

typedef void (*User_HDMI_CallBack)(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData);

static User_HDMI_CallBack pfnHdmiUserCallback = NULL;

static void HDMI_HotPlug_Proc(HI_VOID *pPrivateData)
{
    HI_S32 ret = HI_SUCCESS;
    HDMI_ARGS_S     *pArgs = (HDMI_ARGS_S*)pPrivateData;
    HI_UNF_HDMI_ID_E hHdmi = pArgs->enHdmi;
    HI_UNF_HDMI_ATTR_S stHdmiAttr;
    HI_UNF_HDMI_INFOFRAME_S stInfoFrame;
    HI_UNF_HDMI_SINK_CAPABILITY_S stSinkCap;
    HI_UNF_ENC_FMT_E enTargetFmt;

#ifdef HI_HDCP_SUPPORT
        static HI_U8 u8FirstTimeSetting = HI_TRUE;
#endif

    HI_DBG_LOADER("\n --- Get HDMI event: HOTPLUG. --- \n");
    
    HI_UNF_HDMI_GetAttr(hHdmi, &stHdmiAttr);
    ret = HI_UNF_HDMI_GetSinkCapability(hHdmi, &stSinkCap); 

    if (HI_FALSE == stSinkCap.bConnected)
    {
        HI_ERR_LOADER("No Connect\n");
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
            //read real edid ok && sink not support hdmi,then we run in dvi mode
            stHdmiAttr.bEnableHdmi = HI_FALSE;
        }
    }
    else
    {
        //when get capability fail,use default mode 
        if(g_HDMIForceMode == HI_UNF_HDMI_FORCE_HDMI)
            stHdmiAttr.bEnableHdmi = HI_TRUE;
        else 
            stHdmiAttr.bEnableHdmi = HI_FALSE;
    }

	if(HI_TRUE == stHdmiAttr.bEnableHdmi)
	{
		stHdmiAttr.bEnableAudio = HI_FALSE;
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
	
	HI_UNF_HDMI_SetAttr(hHdmi, &stHdmiAttr);

	/* HI_UNF_HDMI_SetAttr must before HI_UNF_HDMI_Start! */
	HI_UNF_HDMI_Start(hHdmi);

    return;
}

HI_VOID HDMI_UnPlug_Proc(HI_VOID *pPrivateData)
{
    HDMI_ARGS_S     *pArgs = (HDMI_ARGS_S*)pPrivateData;
    HI_UNF_HDMI_ID_E hHdmi = pArgs->enHdmi;

    HI_UNF_HDMI_Stop(hHdmi);

    return;
}

#ifdef HI_HDCP_SUPPORT
static HI_U32 HDCPFailCount = 0;
static HI_VOID HDMI_HdcpFail_Proc(HI_VOID *pPrivateData)
{
    HI_DBG_LOADER("\n --- Get HDMI event: HDCP_FAIL. --- \n");

    HDCPFailCount ++ ;
    if(HDCPFailCount >= 50)
    {
        HDCPFailCount = 0;
        HI_DBG_LOADER("\nWarrning:Customer need to deal with HDCP Fail!!!!!!\n");
    }
    return;
}

static HI_VOID HDMI_HdcpSuccess_Proc(HI_VOID *pPrivateData)
{
    HI_DBG_LOADER("\n --- Get HDMI event: HDCP_SUCCESS. --- \n");
    return;
}
#endif
static HI_VOID HDMI_Event_Proc(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    switch (event)
    {
    case HI_UNF_HDMI_EVENT_HOTPLUG:
        HDMI_HotPlug_Proc(pPrivateData);
        break;
    case HI_UNF_HDMI_EVENT_NO_PLUG:
        HDMI_UnPlug_Proc(pPrivateData);
        break;
    case HI_UNF_HDMI_EVENT_EDID_FAIL:
        break;
#ifdef HI_HDCP_SUPPORT
    case HI_UNF_HDMI_EVENT_HDCP_FAIL:
        HDMI_HdcpFail_Proc(pPrivateData);
        break;
    case HI_UNF_HDMI_EVENT_HDCP_SUCCESS:
        HDMI_HdcpSuccess_Proc(pPrivateData);
        break;
#endif
    case HI_UNF_HDMI_EVENT_RSEN_CONNECT:
        break;
    case HI_UNF_HDMI_EVENT_RSEN_DISCONNECT:
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
static HI_S32 HIADP_HDMI_SetHDCPKey(HI_UNF_HDMI_ID_E enHDMIId)
{
	HI_UNF_HDMI_LOAD_KEY_S stLoadKey;
	FILE *pBinFile;
	HI_U32 u32Len;
	HI_S32 s32Ret;
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_U8 *pu8TmpBuf = NULL;

    hFlash = HI_Flash_OpenByName("privatedata");
    if(hFlash == HI_INVALID_HANDLE)
    {
        HI_ERR_LOADER("Open flash failed!\r\n");
        return HI_FAILURE;
    }
    
    s32Ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
    if(s32Ret != HI_SUCCESS)
    {
        HI_ERR_LOADER("Get flash info failed!\r\n");
        HI_Flash_Close(hFlash);
        return HI_FAILURE;
    }

    pu8TmpBuf = (HI_U8*)malloc(stFlashInfo.PageSize);
    if(pu8TmpBuf == NULL)
    {
        HI_ERR_LOADER("Malloc memory failed!\r\n");
        HI_Flash_Close(hFlash);
        return HI_FAILURE;
    }

    s32Ret = HI_Flash_Read(hFlash, 0, pu8TmpBuf, stFlashInfo.PageSize, HI_FLASH_RW_FLAG_RAW);
    if(s32Ret < 0)
    {
        HI_ERR_LOADER("Read flash failed!\r\n");
        HI_Flash_Close(hFlash);
        return HI_FAILURE;
    }

    memset(&stLoadKey, 0, sizeof(HI_UNF_HDMI_LOAD_KEY_S));
    stLoadKey.u32KeyLength = 332;

#ifdef HI_ADVCA_FUNCTION_RELEASE
	CA_SSD_DecryptImage(pu8TmpBuf, 336, HI_CA_KEY_GROUP_1);	
#else
	if(pu8TmpBuf[2] != 'H' || pu8TmpBuf[3] != 'I')
    {
		HI_INFO_LOADER("HDCP key invalided!\n");
    }
#endif
	stLoadKey.pu8InputEncryptedKey = pu8TmpBuf;

	s32Ret = HI_UNF_HDMI_LoadHDCPKey(enHDMIId,&stLoadKey);

	if(pu8TmpBuf != NULL)
	{
		free(pu8TmpBuf);
	}
	HI_Flash_Close(hFlash);
	return s32Ret;
}
#endif

HI_S32 HIADP_HDMI_Init(HI_UNF_HDMI_ID_E enHDMIId, HI_UNF_ENC_FMT_E enWantFmt)
{
    HI_S32 Ret = HI_FAILURE;
    HI_UNF_HDMI_INIT_PARA_S stHdmiInitParam;

    g_stHdmiArgs.enHdmi = enHDMIId;
    g_stHdmiArgs.enWantFmt = enWantFmt;
    g_stHdmiArgs.AudioFreq = HI_UNF_SAMPLE_RATE_48K;
    g_stHdmiArgs.AduioBitPerSample = 16;
    g_stHdmiArgs.AudioChannelNum = 2;
    g_stHdmiArgs.AudioInputType    = HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_I2S;//HI_UNF_SND_INTERFACE_SPDIF;
    g_stHdmiArgs.ForceHDMIFlag = HI_FALSE;


#ifdef HI_HDCP_SUPPORT
    Ret = HIADP_HDMI_SetHDCPKey(HI_UNF_HDMI_ID_0);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_LOADER("Set hdcp erro:%#x\n",Ret);
    }
#endif

    stHdmiInitParam.pfnHdmiEventCallback = HDMI_Event_Proc;
    stHdmiInitParam.pCallBackArgs        = &g_stHdmiArgs;
    stHdmiInitParam.enForceMode          = g_HDMIForceMode;//HI_UNF_HDMI_FORCE_NULL;
    HI_DBG_LOADER("HDMI Init Mode:%d\n", stHdmiInitParam.enForceMode);
    Ret = HI_UNF_HDMI_Init(&stHdmiInitParam);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_LOADER("HI_UNF_HDMI_Init failed:%#x\n", Ret);
        return HI_FAILURE;
    }

    Ret = HI_UNF_HDMI_Open(enHDMIId);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_LOADER("HI_UNF_HDMI_Open failed:%#x\n", Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_UNF_HDMI_Stop(enHDMIId);

    HI_UNF_HDMI_Close(enHDMIId);

    HI_UNF_HDMI_UnRegCallbackFunc(enHDMIId, &g_stCallbackFunc);

    HI_UNF_HDMI_DeInit();

    return HI_SUCCESS;
}
#endif

/** tarslate pdm base param*/
static int base_InfoTransParam(HI_STANDARD_BASE_INFO_S *info, HI_LOADER_BASE_PARAM_S *param)
{
	int i;
	if(info->checkflag != DEF_CHECK_FLAG)
	{
		HI_ERR_LOADER("info->checkflag(0x%08x) err \n", info->checkflag);
		return -1;
	}

	param->hdIntf = info->hdIntf;
	param->sdIntf = info->sdIntf;
	param->hdFmt = info->hdFmt;
	param->sdFmt = info->sdFmt;

	if(info->scart)
	{
		param->DacMode.bScartEnable = HI_TRUE;
	}else
	{
		param->DacMode.bScartEnable = HI_FALSE;
	}
	
	if(info->Bt1120)
	{
		param->DacMode.bBt1120Enable = HI_TRUE;
	}
	else
	{
		param->DacMode.bBt1120Enable = HI_FALSE;
	}
	
	if(info->Bt656)
	{
		param->DacMode.bBt656Enable = HI_TRUE;
	}
	else
	{
		param->DacMode.bBt656Enable = HI_FALSE;
	}
	
	for(i = 0; i < MAX_DAC_NUM; i++)
	{
		param->DacMode.enDacMode[i] = info->dac[i];
	}
	param->inrectwidth = info->inrectwidth  ;
	param->inrectheight = info->inrectheight;
	param->layerformat = info->layerformat;
	param->u32Top = info->u32Top;
	param->u32Left = info->u32Left;
	param->u32HuePlus = info->u32HuePlus;
	param->u32Saturation = info->u32Saturation;
	param->u32Contrast = info->u32Contrast;
	param->u32Brightness = info->u32Brightness;
       param->enBgcolor.u8Blue = info->enBgcolor.u8Blue;
       param->enBgcolor.u8Green = info->enBgcolor.u8Green;
       param->enBgcolor.u8Red = info->enBgcolor.u8Red ;
       param->enAspectRatio = info->enAspectRatio;
       param->enAspectCvrs = info->enAspectCvrs;
       param->enDispMacrsn = info->enDispMacrsn;
	return 0;
}

/* Get the base to init the display*/
HI_S32 HI_LOADER_GetBaseParam(HI_LOADER_BASE_PARAM_S *baseParam)
{
	HI_S32 ret;
	HI_HANDLE fd = INVALID_FD;
       HI_U32 baseParaOffset = 0;
       HI_S8 *baseName = "baseparam";
       HI_STANDARD_BASE_INFO_S baseInfo;

	if(baseParam == NULL)
	{
		HI_ERR_LOADER("baseParam null \n");
		return HI_ERR_PDM_PTR_NULL;
	}

	fd = HI_Flash_Open(HI_FLASH_TYPE_BUTT, baseName, 0, 0);
	if (INVALID_FD == fd)
	{    
		HI_ERR_LOADER("LOADER_Flash_Open err \n");
		return HI_ERR_PDM_MTD_OPEN;
	}
	ret = HI_Flash_Read(fd, baseParaOffset, (HI_U8*)(&baseInfo), sizeof(HI_STANDARD_BASE_INFO_S), HI_FLASH_RW_FLAG_RAW);
	if (sizeof(HI_STANDARD_BASE_INFO_S) != ret)
	{
		HI_ERR_LOADER("LOADER_Flash_PRead baseInfo err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_PDM_MTD_READ;
	}
	ret = base_InfoTransParam(&baseInfo, baseParam);
	if(ret)
	{
		HI_ERR_LOADER("base_InfoTransParam err!\n");
		HI_Flash_Close(fd);
		return HI_ERR_PDM_MTD_READ;
	}
	ret = HI_Flash_Close(fd);
    if (HI_SUCCESS != ret)
    {
		HI_ERR_LOADER("LOADER_Flash_Close err!\n");
		return HI_ERR_PDM_MTD_CLOSE;
	}
	return HI_SUCCESS;
}

static HI_VOID GetDefDispParam(HI_LOADER_BASE_PARAM_S *pstDispParam)
{
	if(pstDispParam == NULL)
	{
		HI_ERR_LOADER("pstDispParam err\n");	
		return;
	}
	
	pstDispParam->hdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstDispParam->sdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstDispParam->hdFmt = HI_UNF_ENC_FMT_720P_60;
	pstDispParam->sdFmt = HI_UNF_ENC_FMT_PAL ;
	pstDispParam->DacMode.bScartEnable = 0;
	pstDispParam->DacMode.bBt1120Enable = 0;
	pstDispParam->DacMode.bBt656Enable = 0;
	pstDispParam->DacMode.enDacMode[0] = HI_UNF_DISP_DAC_MODE_HD_PR;
	pstDispParam->DacMode.enDacMode[1] = HI_UNF_DISP_DAC_MODE_HD_PB;
	pstDispParam->DacMode.enDacMode[2] = HI_UNF_DISP_DAC_MODE_HD_Y;
	pstDispParam->DacMode.enDacMode[3] = HI_UNF_DISP_DAC_MODE_CVBS;
	pstDispParam->DacMode.enDacMode[4] = HI_UNF_DISP_DAC_MODE_SVIDEO_C;
	pstDispParam->DacMode.enDacMode[5] = HI_UNF_DISP_DAC_MODE_SVIDEO_Y;
		
	pstDispParam->layerformat = 9;
	pstDispParam->inrectwidth = 1280;
	pstDispParam->inrectheight = 720;
	
	pstDispParam->u32HuePlus = 50;
    pstDispParam->u32Saturation = 50;
    pstDispParam->u32Contrast   = 50;
    pstDispParam->u32Brightness = 50;

	pstDispParam->enBgcolor.u8Red   = 0x00;
    pstDispParam->enBgcolor.u8Green = 0x00;
    pstDispParam->enBgcolor.u8Blue  = 0xFF;
	return;
}

HI_S32 HI_ADP_DispInit(HI_LOADER_BASE_PARAM_S *pstDispParam)
{
	HI_S32 Ret;
#if !defined(CHIP_TYPE_hi3110ev500)
    HI_UNF_HDMI_ID_E enHDMIId = HI_UNF_HDMI_ID_0;
#endif
	Ret = HI_UNF_DISP_Init();
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_UNF_DISP_Init err! Ret = %x\n", Ret);
		goto ERR0;
	}

#if !defined(CHIP_TYPE_hi3110ev500)
	Ret  = HI_UNF_DISP_SetBgColor(HI_UNF_DISP_HD0, &(pstDispParam->enBgcolor));
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
		goto ERR1;
	}
#endif

	Ret |= HI_UNF_DISP_SetBgColor(HI_UNF_DISP_SD0, &(pstDispParam->enBgcolor));
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
		goto ERR1;
	}

#if !defined(CHIP_TYPE_hi3110ev500)
	/*same source: get hd and sd format*/
	Ret |= HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, pstDispParam->hdFmt);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
#endif

	Ret |= HI_UNF_DISP_SetFormat(HI_UNF_DISP_SD0, pstDispParam->sdFmt);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}

#if !defined(CHIP_TYPE_hi3110ev500)
	Ret |= HI_UNF_DISP_SetBrightness(HI_UNF_DISP_HD0, pstDispParam->u32Brightness);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetContrast(HI_UNF_DISP_HD0, pstDispParam->u32Contrast);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetSaturation(HI_UNF_DISP_HD0, pstDispParam->u32Saturation);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_HD0, pstDispParam->u32HuePlus);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
#endif

	Ret |= HI_UNF_DISP_SetBrightness(HI_UNF_DISP_SD0, pstDispParam->u32Brightness);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetContrast(HI_UNF_DISP_SD0, pstDispParam->u32Contrast);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetSaturation(HI_UNF_DISP_SD0, pstDispParam->u32Saturation);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
	Ret |= HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_SD0, pstDispParam->u32HuePlus);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x line is %d\n", Ret, __LINE__);
	}
     
    Ret |= HI_UNF_DISP_SetDacMode(&(pstDispParam->DacMode));
    if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("set disp attr err! Ret = %x\n", Ret);
		goto ERR1;
	}

#if !defined(CHIP_TYPE_hi3110ev500)   
	Ret = HI_UNF_DISP_Attach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_UNF_DISP_Attach err! Ret = %x\n", Ret);
		goto ERR1;
	}

	Ret = HI_UNF_DISP_Open(HI_UNF_DISP_HD0);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_UNF_DISP_Open err! Ret = %x\n", Ret);
		goto ERR2;
	}
#endif
	Ret = HI_UNF_DISP_Open(HI_UNF_DISP_SD0);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_UNF_DISP_Open err! Ret = %x\n", Ret);
		goto ERR3;
	}

#if defined(HI_LOADER_APPLOADER) && !defined(CHIP_TYPE_hi3110ev500)
	Ret = HIADP_HDMI_Init(HI_UNF_HDMI_ID_0, pstDispParam->hdFmt);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HIADP_HDMI_Init err! Ret = %x\n", Ret);
		goto ERR4;
	}
#endif

	return Ret;

#if defined(HI_LOADER_APPLOADER) && !defined(CHIP_TYPE_hi3110ev500)
ERR4:
	HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_0);
#endif
ERR3:
#if !defined(CHIP_TYPE_hi3110ev500)
	HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
ERR2:
	HI_UNF_DISP_Detach(HI_UNF_DISP_SD0, HI_UNF_DISP_HD0);
#endif
ERR1:
	HI_UNF_DISP_DeInit();
ERR0:
	return Ret;
}

HI_S32 HI_ADP_GrcCreate(HI_LOADER_BASE_PARAM_S *pstGrcParam, HI_HANDLE *phLayer, HI_HANDLE *phSurface)
{
	HI_S32 Ret;
	HIGO_LAYER_INFO_S stLayerInfo;
	HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;

	if (HI_NULL == pstGrcParam)
	{
		HI_ERR_LOADER("invalid input parameter.\n");
		return HI_FAILURE;
	}

	Ret = HI_GO_Init();
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_GO_Init err! Ret = %x\n", Ret);
		return Ret;
	}

	Ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);

    stLayerInfo.PixelFormat = pstGrcParam->layerformat;

    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;

	Ret = HI_GO_CreateLayer(&stLayerInfo, phLayer);
	if (HI_SUCCESS != Ret)
	{
		HI_ERR_LOADER("HI_GO_CreateLayer err! Ret = %x\n", Ret);
		HI_GO_Deinit();
		return Ret;
	}

    Ret = HI_GO_SetLayerPos(*phLayer, pstGrcParam->u32Left, pstGrcParam->u32Top);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_LOADER("HI_GO_SetLayerPos err! Ret = %x\n", Ret);
        HI_GO_DestroyLayer(*phLayer);
        HI_GO_Deinit();
        return Ret;
    }

    /*use single buffer, need not blit*/
    Ret = HI_GO_GetLayerSurface(*phLayer, phSurface);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_LOADER("HI_GO_GetLayerSurface err! Ret = %x\n", Ret);
        HI_GO_DestroyLayer(*phLayer);
        HI_GO_Deinit();
        return Ret;
    }

	return Ret;
}

HI_S32 Disp_Graphic_Init(HI_HANDLE *phLayer, HI_HANDLE *phSurface)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_LOADER_BASE_PARAM_S stDispParam;

	if ((HI_NULL == phLayer) || (HI_NULL == phSurface))
		return HI_FAILURE;

	memset(&stDispParam, 0, sizeof(stDispParam));
    
	s32Ret = HI_LOADER_GetBaseParam(&stDispParam);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_LOADER("no found valid display parameter(0x%x), using default value!\n", s32Ret);
		GetDefDispParam(&stDispParam);
	}

	s32Ret = HI_ADP_DispInit(&stDispParam);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_LOADER("HI_ADP_DispInit failed, s32Ret = 0x%x\n", s32Ret);
		goto out;
	}

	s32Ret = HI_ADP_GrcCreate(&stDispParam, phLayer, phSurface);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_LOADER("HI_ADP_GrcCreate failed, s32Ret = 0x%x\n", s32Ret);
		goto out;
	}

out:
	return s32Ret;
}
