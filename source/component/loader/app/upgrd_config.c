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
#include "upgrd_common.h"
#include "hi_unf_ir.h"
#include "hi_loader_info.h"
#include "loader_upgrade.h"
#include "loaderdb_info.h"
#include "download_usb.h"
#include "download_ota.h"
#include "ota_force.h"
#include "hi_unf_keyled.h"
#include "hi_unf_frontend.h"
#include "hi_adp_boardcfg.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

/* function */

/*--------------------------------*
*Function converse press key (Huawei remote control)
*Return definition of button enumerate types for infrared response
*--------------------------------*/
eKeyPress LOADER_IR_Key_Convert(HI_U32 RawKey)
{
    switch (RawKey)
    {
    case 0x7887ff00:
        return APP_KEY_NUM0;
    case 0x6d92ff00:
        return APP_KEY_NUM1;
    case 0x6c93ff00:
        return APP_KEY_NUM2;
    case 0x33ccff00:
        return APP_KEY_NUM3;
    case 0x718eff00:
        return APP_KEY_NUM4;
    case 0x708fff00:
        return APP_KEY_NUM5;
    case 0x37c8ff00:
        return APP_KEY_NUM6;
    case 0x758aff00:
        return APP_KEY_NUM7;
    case 0x748bff00:
        return APP_KEY_NUM8;
    case 0x3bc4ff00:
        return APP_KEY_NUM9;
    case 0x35caff00:
        return APP_KEY_UP;
    case 0x2dd2ff00:
        return APP_KEY_DOWN;
    case 0x6699ff00:
        return APP_KEY_LEFT;
    case 0x3ec1ff00:
        return APP_KEY_RIGHT;
    case 0x629dff00:
        return APP_KEY_MENU;
    case 0x31ceff00:
        return APP_KEY_OK;
    case 0x6f90ff00:
        return APP_KEY_EXIT;    /* IR: EXIT->back */
    default:
        return APP_KEY_UNKNOWN;
    }
}

#ifdef HI_BUILD_WITH_KEYLED

 #define LED_SECT_NUM (4)
 #define KEYLED_TYPE_NUM (HI_UNF_KEYLED_TYPE_BUTT)

static HI_UNF_KEYLED_TYPE_E g_enKeyledType = HI_UNF_KEYLED_TYPE_PT6964;
#endif

HI_S32 LOADER_KEYLED_DisplayString(HI_CHAR *fpString)
{
#ifdef HI_BUILD_WITH_KEYLED
    HI_U8 aaDigitalCode[KEYLED_TYPE_NUM][10] =
    {
        /*std*/
        {0x03, 0x9F, 0x25, 0x0D, 0x99, 0x49, 0x41, 0x1F, 0x01, 0x09},

        /*pt6961*/
        {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f},

        /*ct1642*/
        {0xfc, 0x60, 0xda, 0xf2, 0x66, 0xb6, 0xbe, 0xe0, 0xfe, 0xf6},

        /*pt6964*/
        {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f},

		/*fd650*/
        {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}
    };

    HI_U8 aaCapitalCode[KEYLED_TYPE_NUM][26] =
    {
        /*std*/
        {
            0x11, 0xC1, 0x63, 0x85, 0x61, 0x71, 0x41,
            0x91, 0xDF, 0x8F, 0xFD, 0xE3, 0xFD, 0x13,
            0xC5, 0x31, 0x19, 0xFD, 0x49, 0xE1,
            0x83, 0xC7, 0xFD, 0xFD, 0xFD, 0xFD
        },

        /*pt6961*/
        {
            0x77, 0x7f, 0x39, 0x3f, 0x79, 0x71, 0x00,
            0x76, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00,
            0x3f, 0x73, 0x00, 0x00, 0x6d, 0x00,
            0x3e, 0x00, 0x00, 0x00, 0x00, 0x00
        },

        /*ct1642*/
        {
            0xee, 0xfe, 0x9c, 0xfc, 0x9e, 0x8e, 0x00,
            0x6e, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00,
            0xfc, 0xce, 0x00, 0x00, 0xb6, 0x00,
            0x7c, 0x00, 0x00, 0x00, 0x00, 0x00
        },

        /*pt6964*/
        {
            0x77, 0x7f, 0x39, 0x3f, 0x79, 0x71, 0x00,
            0x76, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00,
            0x3f, 0x73, 0x00, 0x00, 0x6d, 0x00,
            0x3e, 0x00, 0x00, 0x00, 0x00, 0x00
        },

		/*fd650*/
        {
            0x77, 0x7f, 0x39, 0x3f, 0x79, 0x71, 0x00,
            0x76, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00,
            0x3f, 0x73, 0x00, 0x00, 0x6d, 0x00,
            0x3e, 0x00, 0x00, 0x00, 0x00, 0x00
        }
    };

    HI_U8 aaLowercaseCode[KEYLED_TYPE_NUM][26] =
    {
        /*std*/
        {
            0x05, 0xC1, 0xE5, 0x85, 0x21, 0x71, 0x09,
            0xD1, 0xDF, 0x8F, 0xFD, 0x9F, 0xFD, 0x13,
            0xC5, 0x31, 0x19, 0xF5, 0x49, 0xE1,
            0xC7, 0xC7, 0xFD, 0xFD, 0xFD, 0xFD
        },

        /*pt6961*/
        {
            0x00, 0x7c, 0x58, 0x5e, 0x7b, 0x00, 0x6f,
            0x74, 0x04, 0x00, 0x00, 0x06, 0x00, 0x54,
            0x5c, 0x73, 0x67, 0x50, 0x6d, 0x78,
            0x1c, 0x00, 0x00, 0x00, 0x00, 0x00
        },

        /*ct1642*/
        {
            0x00, 0x3e, 0x1a, 0x7a, 0xde, 0x00, 0xf6,
            0x2e, 0x20, 0x00, 0x00, 0x60, 0x00, 0x2a,
            0x3a, 0xce, 0xe6, 0x0a, 0xb6, 0x1e,
            0x38, 0x00, 0x00, 0x00, 0x00, 0x00
        },

        /*pt6964*/
        {
            0x00, 0x7c, 0x58, 0x5e, 0x7b, 0x00, 0x6f,
            0x74, 0x04, 0x00, 0x00, 0x06, 0x00, 0x54,
            0x5c, 0x73, 0x67, 0x50, 0x6d, 0x78,
            0x1c, 0x00, 0x00, 0x00, 0x00, 0x00
        },

		/*fd650*/
        {
            0x00, 0x7c, 0x58, 0x5e, 0x7b, 0x00, 0x6f,
            0x74, 0x04, 0x00, 0x00, 0x06, 0x00, 0x54,
            0x5c, 0x73, 0x67, 0x50, 0x6d, 0x78,
            0x1c, 0x00, 0x00, 0x00, 0x00, 0x00
        }
    };

    /*'-' and '_', ' '*/
    HI_U8 aaOtherCode[KEYLED_TYPE_NUM][3] =
    {
        /*std*/
        {0x02, 0x10, 0xff},

        /*pt6961*/
        {0x40, 0x08, 0x00},

        /*ct1642*/
        {0x02, 0x10, 0x00},

        /*pt6964*/
        {0x40, 0x08, 0x00},

		/*fd650*/
        {0x40, 0x08, 0x00}
    };

    HI_U32 tmpData = 0;
    HI_CHAR DispCode[LED_SECT_NUM] = {0};
    HI_U8 j;

    if (NULL == fpString)
    {
        return HI_FAILURE;
    }

    if (g_enKeyledType >= KEYLED_TYPE_NUM)
    {
        HI_ERR_LOADER("Keyled type (%d) is wrong \n", g_enKeyledType);
        return HI_FAILURE;
    }

    memcpy(DispCode, fpString, sizeof(DispCode));

    for (j = 0; j < LED_SECT_NUM; j++)
    {
        if ((DispCode[j] >= 'A') && (DispCode[j] <= 'Z'))
        {
            DispCode[j] = aaCapitalCode[g_enKeyledType][DispCode[j] - 'A'];
        }
        else if ((DispCode[j] >= 'a') && (DispCode[j] <= 'z'))
        {
            DispCode[j] = aaLowercaseCode[g_enKeyledType][DispCode[j] - 'a'];
        }
        else if ((DispCode[j] >= '0') && (DispCode[j] <= '9'))
        {
            DispCode[j] = aaDigitalCode[g_enKeyledType][DispCode[j] - '0'];
        }
        else if (DispCode[j] == '-')
        {
            DispCode[j] = aaOtherCode[g_enKeyledType][0];
        }
        else if (DispCode[j] == '_')
        {
            DispCode[j] = aaOtherCode[g_enKeyledType][1];
        }
        else  /* FIXME: may be should add symbol ':' and '.' */
        {
            DispCode[j] = aaOtherCode[g_enKeyledType][2];  /* default: not display */
        }
    }

    memcpy((void *)&tmpData, DispCode, LED_SECT_NUM);

    return HI_UNF_LED_Display(tmpData);
#else
    return HI_SUCCESS;
#endif
}

HI_S32 LOADER_KEYLED_Init(HI_VOID)
{
#ifdef HI_BUILD_WITH_KEYLED
    HI_S32 s32Ret = HI_SUCCESS;

    HI_UNF_KEYLED_Init();

 #if defined(HI_KEYLED_74HC164)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_STD;
 #elif defined(HI_KEYLED_PT6961)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_PT6961;
 #elif defined(HI_KEYLED_CT1642)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_CT1642;
 #elif defined(HI_KEYLED_PT6964)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_PT6964;
 #elif defined(HI_KEYLED_FD650)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_FD650;
 #elif defined(HI_KEYLED_GPIOKEY)
    g_enKeyledType = HI_UNF_KEYLED_TYPE_GPIOKEY;
 #endif

    s32Ret = HI_UNF_KEYLED_SelectType(g_enKeyledType);

    s32Ret |= HI_UNF_LED_Open();
    if (HI_SUCCESS != s32Ret)
    {
        goto Error_0;
    }

    s32Ret = HI_UNF_KEY_Open();
    if (HI_SUCCESS != s32Ret)
    {
        goto Error_1;
    }

    s32Ret = HI_UNF_KEY_IsKeyUp(1);
    if (HI_SUCCESS != s32Ret)
    {
        goto Error_2;
    }

    s32Ret = HI_UNF_KEY_IsRepKey(0);
    if (HI_SUCCESS != s32Ret)
    {
        goto Error_2;
    }

    s32Ret = HI_UNF_KEY_SetBlockTime(200);
    if (HI_SUCCESS != s32Ret)
    {
        goto Error_2;
    }

    return HI_SUCCESS;

Error_0:
    HI_UNF_KEYLED_DeInit();
    return HI_FAILURE;

Error_1:
    HI_UNF_LED_Close();
    HI_UNF_KEYLED_DeInit();
    return HI_FAILURE;

Error_2:
    HI_UNF_LED_Close();
    HI_UNF_KEY_Close();
    HI_UNF_KEYLED_DeInit();
    return HI_FAILURE;
#else
    return HI_SUCCESS;
#endif
}

/* function */

/*--------------------------------*
*Function converse press key (Huawei remote control)
*Return definition of button enumerate types for infrared response
*--------------------------------*/
#if defined(HI_BUILD_WITH_KEYLED)
eKeyPress LOADER_KEYLED_Key_Convert(HI_U32 RawKey)
{
#if defined(HI_BOOT_KEYLED_GPIOKEY)||defined(HI_KEYLED_GPIOKEY)
#if defined(CHIP_TYPE_hi3110ev500)
	switch (RawKey)
    {
    case 0x40:
        return APP_KEY_MENU;
    case 0x2:
        return APP_KEY_OK;
    case 0x8:
        return APP_KEY_LEFT;
    case 0x4:
        return APP_KEY_RIGHT;
    case 0x10:
        return APP_KEY_UP;
    case 0x20:
        return APP_KEY_DOWN;
    case 0x1:
        return APP_KEY_EXIT;
    default:
        return APP_KEY_UNKNOWN;
    }
#elif defined(CHIP_TYPE_hi3716mv330) 
    switch (RawKey)
    {
    case 0x40:
        return APP_KEY_MENU;
    case 0x2:
        return APP_KEY_OK;
    case 0x8:
        return APP_KEY_LEFT;
    case 0x4:
        return APP_KEY_RIGHT;
    case 0x10: 
        return APP_KEY_DOWN;
    case 0x20: 
        return APP_KEY_UP;
    case 0x1:
        return APP_KEY_EXIT;
    default:
        return APP_KEY_UNKNOWN;
    }
#endif
#else
	switch (RawKey)
    {
    case 0:
        return APP_KEY_MENU;
    case 1:
        return APP_KEY_OK;
    case 2:
        return APP_KEY_LEFT;
    case 3:
        return APP_KEY_RIGHT;
    case 4:
        return APP_KEY_UP;
    case 5:
        return APP_KEY_DOWN;
    case 6:
        return APP_KEY_EXIT;
    default:
        return APP_KEY_UNKNOWN;
    }
#endif
}
#endif
HI_S32 LOADER_GetTunerAttr(HI_UNF_TUNER_ATTR_S *pstTunerAttr)
{
    HI_UNF_TUNER_ATTR_S stAttr;

    if (HI_NULL == pstTunerAttr)
    {
        return HI_FAILURE;
    }

    GET_TUNER_CONFIG(stAttr);

    memcpy(pstTunerAttr, &stAttr, sizeof(HI_UNF_TUNER_ATTR_S));
    
    return HI_SUCCESS;
}

#ifdef HI_LOADER_TUNER_SAT
HI_S32 LOADER_GetSatAttr(HI_UNF_TUNER_SAT_ATTR_S *pstSatAttr)
{
    HI_UNF_TUNER_SAT_ATTR_S stSatAttr;
    
    if (HI_NULL == pstSatAttr)
    {
        return HI_FAILURE;
    }  

    GET_SAT_TUNER_CONFIG(stSatAttr);

    memcpy(pstSatAttr, &stSatAttr, sizeof(HI_UNF_TUNER_SAT_ATTR_S));
    
    return HI_SUCCESS;
}
#endif

/*
 * explict indicate chinese, otherwise english defaults
 */
HI_LOADER_UI_LANG_E LOADER_GetLanguage(HI_VOID)
{
#ifdef HI_LOADER_OSD_LANG_CN   
    return HI_LOADER_UI_LANG_CN;
#else
    return HI_LOADER_UI_LANG_EN;
#endif
}

static HI_BOOL isEnforceUpgrd(UPGRD_LOADER_INFO_S *pstLoaderDBInfo)
{	
	HI_BOOL bMandatory = HI_FALSE;
	
	if (HI_NULL == pstLoaderDBInfo)
		return HI_FALSE;

	/* Data is destoried.*/
	if (HI_TRUE == pstLoaderDBInfo->stLoaderPrivate.bTagDestroy)
	{
		/* Upgrade type is not set maybe manual force upgrade caused data destoried last upgrade.*/
		if (HI_LOADER_TYPE_BUTT <= pstLoaderDBInfo->stLoaderParam.eUpdateType)
			bMandatory = HI_TRUE;
		else
		{
			/* Upgrade type is set, maybe it's Cable or ip upgrade caused data destoried, and failed count is more than 3 times.*/
			if (LOADER_RETRY_TIMES <= pstLoaderDBInfo->stLoaderPrivate.u32FailedCnt)
				bMandatory = HI_TRUE;
		}
	}

	if (bMandatory || pstLoaderDBInfo->stTagPara.bTagManuForceUpgrd)
		return HI_TRUE;

	return HI_FALSE;
}

#ifdef SUPPORT_MANUL_FORCE_UI

HI_S32 LOADER_CheckNormalUpgradeType(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, HI_LOADER_TYPE_E *penType)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (pstLoaderDBInfo->stTagPara.bTagNeedUpgrd)
    {
        if (pstLoaderDBInfo->stLoaderParam.eUpdateType < HI_LOADER_TYPE_BUTT)
        {
            /*CNcomment: 超过3次,进入手动升级界面后如果按退出键退出,不进行普通升级 */
            /* If more than 3 times, press exit key when enter manual upgrade UI, no ordinary upgrade.*/
            if ((HI_TRUE != pstLoaderDBInfo->stTagPara.bTagManuForceUpgrd)
               && (pstLoaderDBInfo->stLoaderPrivate.u32FailedCnt >= LOADER_RETRY_TIMES))
            {
                Upgrd_ClearRequest(pstLoaderDBInfo);
                HI_DBG_LOADER("UPGRD: Retry time excees 3 times , clear upgrad request \n");
                s32Ret = HI_FAILURE;
            }
            else
            {
                /* Every time enter upgrade, counter add 1. */
                pstLoaderDBInfo->stLoaderPrivate.u32FailedCnt++;

                Upgrd_WriteLoaderDBInfo(pstLoaderDBInfo);

                *penType = pstLoaderDBInfo->stLoaderParam.eUpdateType;

                s32Ret = HI_SUCCESS;
            }
        }
    }
    else
    {
        s32Ret = HI_FAILURE;
    }

    return s32Ret;
}

HI_S32 LOADER_ManulUpgradeConfigParameter(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, HI_LOADER_TYPE_E *penType,
		HI_VOID **ppOutParameter)
{
	HI_S32 s32Ret = HI_SUCCESS;
	GUI_RET_TYPE_E eRetType = GUI_RET_TYPE_OK;

	if ((HI_NULL == penType) || (HI_NULL == pstLoaderDBInfo) || (HI_NULL == ppOutParameter))
		return HI_FAILURE;

#ifdef HI_LOADER_MODE_OTA
	OTA_Force_Init(&(pstLoaderDBInfo->stLoaderPrivate));

	s32Ret = force_passwd_identify(&eRetType);

	s32Ret = HI_SUCCESS;
	if (HI_SUCCESS != s32Ret)
		return HI_FAILURE;

	/*user caneled upgrade on passward identify interface, clean fail-count and need-upgrade tag*/
	if (GUI_RET_TYPE_CANCEL == eRetType)
	{
		pstLoaderDBInfo->stLoaderPrivate.u32FailedCnt = 0;
		pstLoaderDBInfo->stLoaderParam.eUpdateType = HI_LOADER_TYPE_BUTT;

		if (HI_FALSE == pstLoaderDBInfo->stLoaderPrivate.bTagDestroy)
			pstLoaderDBInfo->stTagPara.bTagNeedUpgrd = HI_FALSE;

		Upgrd_WriteLoaderDBInfo(pstLoaderDBInfo);

		return HI_FAILURE;
	}

	/* Upgrade parameter input. */
	s32Ret = OTA_Force_ConfigParam(&eRetType, (DOWNLOAD_OTA_PARAMETER_S **)ppOutParameter);
	if ((HI_SUCCESS == s32Ret) && (GUI_RET_TYPE_OK == eRetType))
	{
		*penType = HI_LOADER_TYPE_OTA;
		return HI_SUCCESS;
	}
#endif

	return HI_FAILURE;
}

HI_S32 LOADER_CheckUpgradeTypePolicy(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, HI_LOADER_TYPE_E *penType)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_VOID * pOutParameter = HI_NULL;

	if ((HI_NULL == pstLoaderDBInfo) || (HI_NULL == penType))
		return HI_FAILURE;

	if (isEnforceUpgrd(pstLoaderDBInfo))
	{
#ifdef HI_LOADER_MODE_USB
		/*Check usb upgrade condition*/
		s32Ret = LOADER_DOWNLOAD_USB_Init(HI_NULL);
		if (HI_SUCCESS == s32Ret)
		{
			HI_DBG_LOADER("enter usb manual force upgrd procedure.\n");
			
			*penType = HI_LOADER_TYPE_USB;
		}
		else
#endif
		{
			HI_DBG_LOADER("enter OTA manual force upgrd procedure.\n");
			
			s32Ret = LOADER_ManulUpgradeConfigParameter(pstLoaderDBInfo, penType, &pOutParameter);
			if (HI_SUCCESS == s32Ret)
			{
				DOWNLOAD_OTA_PARAMETER_S *pstDLOtaParam = (DOWNLOAD_OTA_PARAMETER_S *)pOutParameter;
				HI_LOADER_OTA_PARA_S *pstParam = &(pstLoaderDBInfo->stLoaderParam.stPara.stOTAPara);

				if (HI_NULL == pstDLOtaParam)
					return HI_FAILURE;

				pstParam->eSigType = (HI_UNF_TUNER_SIG_TYPE_E)pstDLOtaParam->u32SignalType;
				if (HI_UNF_TUNER_SIG_TYPE_CAB == pstParam->eSigType)
				{
					pstParam->unConnPara.stCab.u32OtaPid  = pstDLOtaParam->u16TsPID;
					pstParam->unConnPara.stCab.u32OtaFreq = pstDLOtaParam->u32Frequency;
					pstParam->unConnPara.stCab.u32OtaSymbRate   = pstDLOtaParam->u32SymbolRate;
					pstParam->unConnPara.stCab.u32OtaModulation = pstDLOtaParam->enModulation;
				}
                else if (HI_UNF_TUNER_SIG_TYPE_DVB_T == pstParam->eSigType
					  || HI_UNF_TUNER_SIG_TYPE_DVB_T2 == pstParam->eSigType
					  || (HI_UNF_TUNER_SIG_TYPE_DVB_T | HI_UNF_TUNER_SIG_TYPE_DVB_T2) == pstParam->eSigType)
                {
                    pstParam->unConnPara.stTer.u32OtaPid  = pstDLOtaParam->u16TsPID;
                    pstParam->unConnPara.stTer.u32OtaFreq = pstDLOtaParam->u32Frequency;
                    pstParam->unConnPara.stTer.u32OtaBandWidth = pstDLOtaParam->u32BandWidth;
                    pstParam->unConnPara.stTer.u32OtaModulation = pstDLOtaParam->enModulation;
				}
				else if (HI_UNF_TUNER_SIG_TYPE_SAT == pstParam->eSigType)
				{
					pstParam->unConnPara.stSat.u32OtaPid  = pstDLOtaParam->u16TsPID;
					pstParam->unConnPara.stSat.u32OtaFreq = pstDLOtaParam->u32Frequency;
					pstParam->unConnPara.stSat.u32OtaSymbRate = pstDLOtaParam->u32SymbolRate;
					pstParam->unConnPara.stSat.u32Polar  = pstDLOtaParam->u32Polar;
					pstParam->unConnPara.stSat.u32HighLO = pstDLOtaParam->u32HighLO;
					pstParam->unConnPara.stSat.u32LowLO = pstDLOtaParam->u32LowLO;

					pstParam->unConnPara.stSat.st16Port.u32Level = pstDLOtaParam->stSwitch16.u32Level;
					pstParam->unConnPara.stSat.st16Port.u32Port = pstDLOtaParam->stSwitch16.u32Port;

					pstParam->unConnPara.stSat.st4Port.u32Level = pstDLOtaParam->stSwitch4.u32Level;
					pstParam->unConnPara.stSat.st4Port.u32Port   = pstDLOtaParam->stSwitch4.u32Port;
					pstParam->unConnPara.stSat.st4Port.u32Polar  = pstDLOtaParam->stSwitch4.u32Polar;
					pstParam->unConnPara.stSat.st4Port.u32LNB22K = pstDLOtaParam->stSwitch4.u32LNB22K;

					pstParam->unConnPara.stSat.u32Switch22K   = pstDLOtaParam->u32Switch22K;
					//pstParam->unConnPara.stSat.u32Switch0_12V = pstDLOtaParam->u32Switch0_12V;
					//pstParam->unConnPara.stSat.u32ToneBurst = pstDLOtaParam->u32ToneBurst;
				}
			}		
		}
	}
	else
	{
		s32Ret = LOADER_CheckNormalUpgradeType(pstLoaderDBInfo, penType);
	}

	return s32Ret;
}

#endif

/*
 * for different customer, it maybe has different SN definition,
 * for example, using globally unique number or MAC address as SN.
 * so customer need change this implement according to its requirement. 
 */
static HI_S32 LOADER_CheckSNMatch(HI_LOADER_STB_INFO_S *pStbInfo, LOADER_VERSION_INFO_S *pstUpgradeInfo)
{
#define SN_OFFSET_BYTES (9)
	
	char buf[32] = {0};
	HI_U32 u32SN;

	if (HI_NULL == pstUpgradeInfo || HI_NULL == pStbInfo)
                return HI_FAILURE;
	/*
	   AAAA BB CCC DD EE X FFFF FFFF FFFF //Hex binary style
	   AAAA: AREA CODE
	   BB: OUI
	   CCC: HW Batch
	   EE: HW Ver
	   X: Identification Code
	   FFFF FFFFFFFF: Number defined based on the previous digit, now use last 4 bytes indicate SN.
	 */

	snprintf(buf, sizeof(buf), "0x%02x%02x%02x%02x", pStbInfo->au8OutSn[SN_OFFSET_BYTES],
                pStbInfo->au8OutSn[SN_OFFSET_BYTES + 1],
                pStbInfo->au8OutSn[SN_OFFSET_BYTES + 2],
                pStbInfo->au8OutSn[SN_OFFSET_BYTES + 3]);

	u32SN = LOADER_strtoul(buf, HI_NULL, 16);
	HI_DBG_LOADER("local SN:0x%08x .\n", u32SN);

	if (u32SN >= pstUpgradeInfo->u32StartSn && u32SN <= pstUpgradeInfo->u32EndSn)
	{
		return HI_SUCCESS;
	}

	return HI_FAILURE;
}

/* 
 * compare upgrade stream version info with local stb version info.
 * return HI_SUCCESS if meet condition and continue upgrade procedure
 * otherwise return HI_FAILURE and loader will quit upgrade.
 */
HI_S32 LOADER_CheckVersionMatch(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, LOADER_VERSION_INFO_S *pstUpgradeInfo)
{
	HI_S32 s32Ret;
	HI_LOADER_STB_INFO_S stbInfo;

	if (HI_NULL == pstUpgradeInfo || HI_NULL == pstLoaderDBInfo)
		return HI_FAILURE;

	s32Ret = HI_LOADER_ReadSTBInfo(&stbInfo);
	if (HI_SUCCESS != s32Ret)
		return HI_FAILURE;

	HI_DBG_LOADER("******************local stb info *******************\n");
	HI_DBG_LOADER("vendor_ID                    : %d\n", stbInfo.u32OUI);
	HI_DBG_LOADER("hardware_version             : 0x%x\n", stbInfo.u32HWVersion);
	HI_DBG_LOADER("software_version             : 0x%x\n", pstLoaderDBInfo->stLoaderParam.u32CurSoftware);
	HI_DBG_LOADER("************************** end *********************\n");
	
	HI_DBG_LOADER("******************upgrd stream info *******************\n");
	HI_DBG_LOADER("vendor_ID                    : 0x%x\n", pstUpgradeInfo->u32FactoryId);
	HI_DBG_LOADER("hardware_version             : 0x%x\n", pstUpgradeInfo->u32HardwareVer);
	HI_DBG_LOADER("software_version             : 0x%x\n", pstUpgradeInfo->u32Softwarever);
	HI_DBG_LOADER("start_series_num             : 0x%x\n", pstUpgradeInfo->u32StartSn);
	HI_DBG_LOADER("end_series_num               : 0x%x\n", pstUpgradeInfo->u32EndSn);
	HI_DBG_LOADER("************************** end *********************\n");

	/* vendor ID */
	if (pstUpgradeInfo->u32FactoryId != stbInfo.u32OUI)
	{
		HI_ERR_LOADER("upgrade stream vendor ID is not same with local stb info.\n");
		return HI_UPGRD_OUI_NOT_MATCH;
	}

	/* hardware version */
	if (pstUpgradeInfo->u32HardwareVer != stbInfo.u32HWVersion)
	{
		HI_ERR_LOADER("upgrade stream hardware version is not same with local stb info.\n");
		return HI_UPGRD_HARDWARE_NOT_MATCH;
	}

	/* series num */
	if (HI_SUCCESS != LOADER_CheckSNMatch(&stbInfo, pstUpgradeInfo))
	{
		HI_ERR_LOADER("local SN is not match with the upgrade stream.\n");
		return HI_UPGRD_SN_NOT_MATCH;
	}

	/* for normal force upgrade, check software version  */
	if (!isEnforceUpgrd(pstLoaderDBInfo))
	{
             if ( !(pstUpgradeInfo->u32Softwarever > pstLoaderDBInfo->stLoaderParam.u32CurSoftware) )
		{
			HI_ERR_LOADER("upgrade stream software version old than local stb info.\n");
			return HI_UPGRD_SOFTWARE_NOT_MATCH;
		}
	}

	return HI_SUCCESS;
}

/*
 * update software version info in loaderdb
  */
HI_S32 LOADER_UpdateVersionInfo(UPGRD_LOADER_INFO_S *pstLoaderDBInfo, LOADER_VERSION_INFO_S *pstUpgradeInfo)
{
	if (HI_NULL == pstUpgradeInfo || HI_NULL == pstLoaderDBInfo)
		return HI_FAILURE;

	pstLoaderDBInfo->stLoaderParam.u32CurSoftware = pstUpgradeInfo->u32Softwarever;

	return HI_SUCCESS;
}

HI_VOID LOADER_UpgrdeDone(HI_S32 s32Ret, HI_LOADER_TYPE_E enType)
{
	/* waitting to reboot */
#if defined(HI_LOADER_BOOTLOADER)
	setenv("bootcmd", "reset"); 
#elif defined(HI_LOADER_APPLOADER)
	sync();
	reboot(RB_AUTOBOOT);
#else
#error "invalid loader type!"
#endif
}


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
